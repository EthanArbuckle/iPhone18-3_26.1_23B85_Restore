uint64_t sub_1000B7B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000B7C34;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_1000B7C34()
{
  sub_100032530();
  v3 = v2;
  sub_1000325B0();
  v5 = *(v4 + 16);
  v6 = *v1;
  sub_10003246C();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

unint64_t sub_1000B7D28()
{
  result = qword_100134BC8;
  if (!qword_100134BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134BC8);
  }

  return result;
}

unint64_t sub_1000B7D80()
{
  result = qword_100134BD0;
  if (!qword_100134BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134BD0);
  }

  return result;
}

unint64_t sub_1000B7DD8()
{
  result = qword_100134BD8;
  if (!qword_100134BD8)
  {
    sub_100002ABC(&qword_100134BE0, qword_1000F7B60);
    sub_1000B7D80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134BD8);
  }

  return result;
}

uint64_t sub_1000B7E5C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000B76FC();
  *v6 = v2;
  v6[1] = sub_100031BC4;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_1000B7F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100031BC4;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_1000B7FD0()
{
  result = qword_100134BE8;
  if (!qword_100134BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134BE8);
  }

  return result;
}

uint64_t sub_1000B8024()
{
  v0 = qword_100134B50;

  return v0;
}

unint64_t sub_1000B8060()
{
  result = qword_100134BF0;
  if (!qword_100134BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134BF0);
  }

  return result;
}

unint64_t sub_1000B80B8()
{
  result = qword_100134BF8;
  if (!qword_100134BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134BF8);
  }

  return result;
}

unint64_t sub_1000B8110()
{
  result = qword_100134C00;
  if (!qword_100134C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134C00);
  }

  return result;
}

unint64_t sub_1000B8168()
{
  result = qword_100134C08;
  if (!qword_100134C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134C08);
  }

  return result;
}

uint64_t sub_1000B81C8()
{
  sub_1000B94AC();
  v1 = sub_1000E8184();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1000B8238()
{
  result = qword_100134C10;
  if (!qword_100134C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134C10);
  }

  return result;
}

unint64_t sub_1000B8290()
{
  result = qword_100134C18;
  if (!qword_100134C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134C18);
  }

  return result;
}

unint64_t sub_1000B82E8()
{
  result = qword_100134C20;
  if (!qword_100134C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134C20);
  }

  return result;
}

uint64_t sub_1000B8348@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1000B83D0(uint64_t a1)
{
  v2 = sub_1000B79BC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000B8420()
{
  result = qword_100134C38;
  if (!qword_100134C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134C38);
  }

  return result;
}

uint64_t sub_1000B8478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100032444;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_1000B853C(uint64_t a1)
{
  v2 = sub_1000B82E8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000B858C()
{
  result = qword_100134C40;
  if (!qword_100134C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134C40);
  }

  return result;
}

uint64_t sub_1000B85E4()
{
  v0 = sub_1000E86A4();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_1000E84B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000EBE54();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_1000E84C4();
  sub_10004B338(v9, qword_100145CA8);
  sub_100008CB8(v9, qword_100145CA8);
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    swift_once();
  }

  v10 = sub_100008CB8(v2, qword_100145E08);
  (*(v3 + 16))(v6, v10, v2);
  sub_1000E8644();
  return sub_1000E84D4();
}

uint64_t sub_1000B87F8()
{
  v54 = sub_1000E8174();
  v0 = sub_1000090D4(v54);
  v52 = v1;
  v3 = *(v2 + 64);
  __chkstk_darwin(v0);
  sub_100006A10();
  v53 = v5 - v4;
  v6 = sub_100002A10(&qword_100134C80, &unk_1000F81F0);
  v7 = sub_100009210(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_1000091AC();
  v51[2] = v10 - v11;
  __chkstk_darwin(v12);
  v51[1] = v51 - v13;
  v14 = sub_100002A10(&qword_100134C88, &qword_1000F9FF0);
  sub_100009210(v14);
  v16 = *(v15 + 64);
  sub_100009204();
  __chkstk_darwin(v17);
  v19 = v51 - v18;
  v20 = sub_1000E86A4();
  v21 = sub_100009210(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  sub_100006A10();
  sub_1000B96F8();
  v24 = sub_1000E84B4();
  v25 = sub_1000090D4(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v25);
  sub_100006A10();
  v32 = v31 - v30;
  v33 = sub_1000EBE54();
  v34 = sub_100009210(v33);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  sub_100006A10();
  v37 = sub_1000E84C4();
  sub_1000326A0(v37);
  v39 = *(v38 + 64);
  __chkstk_darwin(v40);
  sub_100006A10();
  v51[0] = sub_100002A10(&qword_100134C90, &unk_1000F8200);
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    sub_1000B9634();
  }

  v41 = sub_100008CB8(v24, qword_100145E08);
  v42 = *(v27 + 16);
  v42(v32, v41, v24);
  sub_1000E8644();
  sub_1000326AC();
  sub_1000B96DC();
  sub_1000EBE44();
  v42(v32, v41, v24);
  sub_1000E8644();
  sub_1000326AC();
  sub_1000B96DC();
  sub_1000028A0(v19, 0, 1, v37);
  v43 = sub_1000E7ED4();
  v56 = 0;
  v57 = 0;
  v55 = 0;
  sub_10000D52C();
  sub_1000028A0(v44, v45, v46, v43);
  sub_10000D52C();
  sub_1000028A0(v47, v48, v49, v43);
  (*(v52 + 104))(v53, enum case for InputConnectionBehavior.default(_:), v54);
  sub_1000B79BC();
  return sub_1000E7F34();
}

uint64_t (*sub_1000B8C04(void *a1))()
{
  v3 = sub_1000B9500(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_1000E7EF4();
  return sub_1000B8C64;
}

void sub_1000B8C68(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_1000B8CB8()
{
  result = qword_100134C48;
  if (!qword_100134C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134C48);
  }

  return result;
}

unint64_t sub_1000B8D10()
{
  result = qword_100134C50;
  if (!qword_100134C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134C50);
  }

  return result;
}

uint64_t sub_1000B8D64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B9404();
  v5 = sub_1000B94AC();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_1000B8DD0()
{
  v0 = qword_100134B60;

  return v0;
}

unint64_t sub_1000B8E10()
{
  result = qword_100134C58;
  if (!qword_100134C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134C58);
  }

  return result;
}

unint64_t sub_1000B8E68()
{
  result = qword_100134C60;
  if (!qword_100134C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134C60);
  }

  return result;
}

uint64_t sub_1000B8F60@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = a2(0);
  sub_100008CB8(v7, a3);
  sub_1000326A0(v7);
  v9 = *(v8 + 16);

  return v9(a4);
}

uint64_t sub_1000B9010(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000B9404();
  v8 = sub_1000B9458();
  v9 = sub_1000B94AC();
  *v6 = v2;
  v6[1] = sub_1000B90E4;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_1000B90E4()
{
  sub_100032530();
  sub_1000325B0();
  v3 = *(v2 + 16);
  v4 = *v1;
  sub_10003246C();
  *v5 = v4;

  if (v0)
  {
    sub_1000324E4();

    return v7();
  }

  return result;
}

uint64_t sub_1000B91D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000B87F8();
  *a1 = result;
  return result;
}

uint64_t sub_1000B9200(uint64_t a1)
{
  v2 = sub_1000B8CB8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

__n128 sub_1000B9254(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000B9268(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000B92A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000B92F4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000B9334(uint64_t result, int a2, int a3)
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

unint64_t sub_1000B9404()
{
  result = qword_100134C98;
  if (!qword_100134C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134C98);
  }

  return result;
}

unint64_t sub_1000B9458()
{
  result = qword_100134CA0;
  if (!qword_100134CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134CA0);
  }

  return result;
}

unint64_t sub_1000B94AC()
{
  result = qword_100134CA8;
  if (!qword_100134CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134CA8);
  }

  return result;
}

void *sub_1000B9500(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

unint64_t sub_1000B9534()
{
  result = qword_100130448;
  if (!qword_100130448)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100130448);
  }

  return result;
}

uint64_t sub_1000B957C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_100134D08, &qword_1000F9920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B9634()
{

  return swift_once();
}

uint64_t sub_1000B9654()
{

  return swift_once();
}

uint64_t sub_1000B9674(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_100006988(a1, a2, a3);
}

uint64_t sub_1000B9698()
{

  return swift_once();
}

uint64_t sub_1000B96DC()
{

  return sub_1000E84D4();
}

uint64_t sub_1000B9708()
{
}

uint64_t sub_1000B9730()
{

  return swift_task_alloc();
}

unint64_t sub_1000B9764()
{
  result = qword_100134D30;
  if (!qword_100134D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134D30);
  }

  return result;
}

uint64_t sub_1000B97FC()
{
  v0 = sub_1000BB820();

  return _EntityURLRepresentation.init(_:)(0xD00000000000004DLL, 0x80000001000FD150, &unk_100128470, v0);
}

uint64_t sub_1000B9858()
{
  v0 = sub_100002A10(&qword_100134C88, &qword_1000F9FF0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v18[-v2];
  v4 = sub_1000E86A4();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_1000E84B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1000EBE54();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_1000E84C4();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v15 = sub_1000E8204();
  sub_10004B338(v15, qword_100145CC0);
  sub_100008CB8(v15, qword_100145CC0);
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    swift_once();
  }

  v16 = sub_100008CB8(v6, qword_100145E08);
  (*(v7 + 16))(v10, v16, v6);
  sub_1000E8644();
  sub_1000E84D4();
  sub_1000028A0(v3, 1, 1, v13);
  return sub_1000E81F4();
}

uint64_t sub_1000B9B30@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = sub_100002A10(&qword_100134CB0, &unk_1000F9870);
  sub_100009210(v1);
  v3 = *(v2 + 64);
  sub_100009204();
  __chkstk_darwin(v4);
  v43 = &v40 - v5;
  v6 = sub_100002A10(&qword_100134C88, &qword_1000F9FF0);
  sub_100009210(v6);
  v8 = *(v7 + 64);
  sub_100009204();
  __chkstk_darwin(v9);
  sub_1000B9748(v10, v40);
  v11 = sub_1000E86A4();
  v12 = sub_100009210(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_100006A10();
  v15 = sub_1000E84B4();
  v16 = sub_1000090D4(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  sub_100006A10();
  v23 = v22 - v21;
  v24 = sub_1000EBE54();
  v25 = sub_100009210(v24);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  sub_100006A10();
  v41 = sub_1000E84C4();
  sub_1000326A0(v41);
  v29 = *(v28 + 64);
  __chkstk_darwin(v30);
  sub_1000091AC();
  __chkstk_darwin(v31);
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    sub_1000B9634();
  }

  v32 = sub_100008CB8(v15, qword_100145E08);
  v33 = *(v18 + 16);
  v33(v23, v32, v15);
  sub_1000E8644();
  sub_1000326AC();
  sub_1000B96DC();
  sub_1000EBE44();
  v33(v23, v32, v15);
  sub_1000E8644();
  v34 = v42;
  sub_1000326AC();
  sub_1000B96DC();
  sub_1000028A0(v34, 0, 1, v41);
  sub_1000E80C4();
  sub_10000D52C();
  sub_1000028A0(v35, v36, v37, v38);
  sub_1000E84A4();
  return sub_1000E80D4();
}

uint64_t sub_1000B9E7C()
{
  v0 = sub_1000E84C4();
  sub_10004B338(v0, qword_100145CD8);
  sub_100008CB8(v0, qword_100145CD8);
  return sub_1000E84A4();
}

uint64_t sub_1000B9EE0()
{
  v0 = sub_100002A10(&qword_100134C88, &qword_1000F9FF0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v10 - v2;
  v4 = sub_1000E84C4();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = sub_100002A10(&qword_100134D08, &qword_1000F9920);
  sub_10004B338(v6, qword_100145CF0);
  v7 = sub_100008CB8(v6, qword_100145CF0);
  sub_1000E84A4();
  sub_1000028A0(v3, 1, 1, v4);
  sub_1000E8044();
  v8 = sub_1000E8034();
  return sub_1000028A0(v7, 0, 1, v8);
}

uint64_t sub_1000BA048()
{
  result = swift_getKeyPath();
  qword_100145D08 = result;
  return result;
}

uint64_t sub_1000BA070()
{
  sub_100032530();
  v0[21] = v1;
  v0[22] = v2;
  v0[20] = v3;
  v4 = sub_100002A10(&qword_100134CD8, &unk_1000F98D0);
  sub_100009210(v4);
  v6 = *(v5 + 64);
  v0[23] = sub_1000B9730();
  v7 = sub_100002A10(&qword_100134CE0, &qword_1000F8250);
  sub_100009210(v7);
  v9 = *(v8 + 64);
  v0[24] = sub_1000B9730();
  v10 = sub_100002A10(&qword_100134E68, &qword_1000F8C18);
  sub_100009210(v10);
  v12 = *(v11 + 64);
  v0[25] = sub_1000B9730();
  v13 = sub_1000E7ED4();
  v0[26] = v13;
  v14 = *(v13 - 8);
  v0[27] = v14;
  v15 = *(v14 + 64);
  v0[28] = sub_1000B9730();
  v16 = sub_100002A10(&qword_100134E70, &qword_1000F8C20);
  v0[29] = v16;
  v17 = *(v16 - 8);
  v0[30] = v17;
  v18 = *(v17 + 64) + 15;
  v0[31] = swift_task_alloc();
  v0[32] = swift_task_alloc();
  sub_1000326AC();

  return _swift_task_switch(v19, v20, v21);
}

uint64_t sub_1000BA21C()
{
  sub_100032530();
  v1 = *(v0 + 168);
  sub_1000E7F04();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1000BB820();
  *v4 = v0;
  v4[1] = sub_1000BA2FC;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1000BCCB8, 0, &unk_100128470, v5);
}

uint64_t sub_1000BA2FC()
{
  sub_100032530();
  sub_1000325B0();
  v2 = *(v1 + 264);
  v3 = *v0;
  sub_10003246C();
  *v4 = v3;

  sub_1000326AC();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000BA3E4()
{
  sub_100032604();
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  sub_1000E7F04();
  *(v0 + 88) = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  *(v0 + 272) = v3;
  *(v0 + 280) = v4;
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  sub_1000E7F04();
  *(v0 + 313) = *(v0 + 312);
  if (qword_10012EB90 != -1)
  {
    sub_1000BCCE4();
  }

  v5 = qword_100145D08;
  *(v0 + 288) = qword_100145D08;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_1000B9674(&qword_100134E58, &qword_100134E60, &qword_1000F8C08);
  *v7 = v0;
  v7[1] = sub_1000BA520;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1000BA520()
{
  sub_100032604();
  sub_1000325B0();
  v3 = v2[37];
  v4 = v2[36];
  v5 = v2[35];
  v6 = v2[34];
  v7 = *v1;
  sub_10003246C();
  *v8 = v7;
  *(v9 + 304) = v0;

  sub_1000326AC();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000BA67C()
{
  v1 = v0[32];
  v3 = v0[29];
  v2 = v0[30];
  v18 = v0[31];
  v19 = v0[28];
  v4 = v0[25];
  v23 = v0[27];
  v24 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[21];
  v20 = v0[20];
  sub_1000E7F04();
  v21 = v0[15];
  v22 = v0[16];
  v0[17] = v0[14];
  v0[18] = v21;
  v0[19] = v22;
  sub_1000E81E4();
  sub_10000D52C();
  sub_1000028A0(v8, v9, v10, v11);
  sub_1000E8214();
  sub_10000D52C();
  sub_1000028A0(v12, v13, v14, v15);
  sub_1000B9764();
  sub_1000BBA34();
  sub_1000E7EA4();
  (*(v2 + 16))(v18, v1, v3);
  sub_1000E7EC4();
  sub_1000E7EE4();
  (*(v23 + 8))(v19, v24);

  (*(v2 + 8))(v1, v3);

  sub_1000324E4();

  return v16();
}

uint64_t sub_1000BA8A4()
{
  v0 = sub_100002A10(&qword_100134E78, &qword_1000F8C28);
  sub_1000090D4(v0);
  v2 = v1;
  v4 = *(v3 + 64);
  sub_100009204();
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  if (qword_10012EB90 != -1)
  {
    sub_1000BCCE4();
  }

  sub_1000E80A4();

  sub_1000BBA34();
  sub_100006988(&qword_100134E80, &qword_100134E78, &qword_1000F8C28);
  sub_1000E8094();
  return (*(v2 + 8))(v7, v0);
}

uint64_t sub_1000BA9F8()
{
  v0 = sub_100002A10(&qword_100134CC8, &qword_1000F8230);
  sub_100009210(v0);
  v2 = *(v1 + 64);
  sub_100009204();
  __chkstk_darwin(v3);
  sub_1000B9748(v4, v48);
  v5 = sub_1000E8174();
  v6 = sub_1000090D4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_100006A10();
  v13 = v12 - v11;
  v14 = sub_100002A10(&qword_100134C80, &unk_1000F81F0);
  v15 = sub_100009210(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_1000091AC();
  __chkstk_darwin(v18);
  v19 = sub_100002A10(&qword_100134C88, &qword_1000F9FF0);
  sub_100009210(v19);
  v21 = *(v20 + 64);
  sub_100009204();
  __chkstk_darwin(v22);
  v51 = sub_1000E84C4();
  sub_1000326A0(v51);
  v24 = *(v23 + 64);
  __chkstk_darwin(v25);
  sub_100006A10();
  sub_100002A10(&qword_100134E38, &unk_1000F8BE0);
  sub_1000E84A4();
  sub_10000D52C();
  sub_1000028A0(v26, v27, v28, v51);
  v29 = sub_1000E7ED4();
  sub_10000D52C();
  sub_1000028A0(v30, v31, v32, v29);
  sub_10000D52C();
  sub_1000028A0(v33, v34, v35, v29);
  v36 = enum case for InputConnectionBehavior.default(_:);
  v50 = *(v8 + 104);
  v50(v13, enum case for InputConnectionBehavior.default(_:), v5);
  sub_1000BB820();
  v49 = sub_1000E7F34();
  sub_100002A10(&qword_100134CD0, &qword_1000F8238);
  sub_1000E84A4();
  sub_10000D52C();
  sub_1000028A0(v37, v38, v39, v51);
  sub_1000EC044();
  sub_10000D52C();
  sub_1000028A0(v40, v41, v42, v43);
  sub_10000D52C();
  sub_1000028A0(v44, v45, v46, v29);
  v50(v13, v36, v5);
  sub_1000E7F44();
  return v49;
}

uint64_t (*sub_1000BAD5C(void *a1))()
{
  v3 = sub_1000B9500(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_1000E7EF4();
  return sub_1000BCCC0;
}

uint64_t (*sub_1000BADBC(void *a1))()
{
  v3 = sub_1000B9500(0x28uLL);
  *a1 = v3;
  v4 = *(v1 + 8);
  v3[4] = sub_1000E7EF4();
  return sub_1000BCCC0;
}

uint64_t sub_1000BAE1C()
{
  if (qword_10012EB90 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000BAE7C()
{
  result = qword_100134D48;
  if (!qword_100134D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134D48);
  }

  return result;
}

unint64_t sub_1000BAED4()
{
  result = qword_100134D50;
  if (!qword_100134D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134D50);
  }

  return result;
}

uint64_t sub_1000BAFAC@<X0>(uint64_t a1@<X8>)
{
  if (qword_10012EB88 != -1)
  {
    swift_once();
  }

  v2 = sub_100002A10(&qword_100134D08, &qword_1000F9920);
  v3 = sub_100008CB8(v2, qword_100145CF0);

  return sub_1000B957C(v3, a1);
}

uint64_t sub_1000BB030()
{
  v3 = *v0;
  v2 = v0[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100032444;

  return sub_1000BA070();
}

uint64_t sub_1000BB0DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000BA9F8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000BB124()
{
  result = qword_100134D58;
  if (!qword_100134D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134D58);
  }

  return result;
}

unint64_t sub_1000BB17C()
{
  result = qword_100134D60;
  if (!qword_100134D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134D60);
  }

  return result;
}

uint64_t sub_1000BB1F0()
{
  sub_100032530();
  if (qword_10012EB00 != -1)
  {
    sub_1000B9698();
  }

  v1 = *(v0 + 16);
  *v1 = sub_100043DE0() & 1;
  sub_1000324E4();

  return v2();
}

uint64_t sub_1000BB2A0()
{
  sub_100032530();
  if (qword_10012EB00 != -1)
  {
    sub_1000B9698();
  }

  v1 = *(v0 + 16);
  sub_100043E8C();
  sub_1000B9534();
  sub_1000EC1D4();
  sub_1000324E4();

  return v2();
}

uint64_t sub_1000BB334()
{
  sub_100032530();
  v1 = sub_1000E84C4();
  sub_100009210(v1);
  v3 = *(v2 + 64);
  *(v0 + 16) = sub_1000B9730();
  sub_1000326AC();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000BB3AC()
{
  sub_100032604();
  v1 = *(v0 + 16);
  sub_100002A10(&qword_100134D40, qword_1000F82A0);
  sub_1000E84A4();
  sub_1000B9674(&qword_100134E58, &qword_100134E60, &qword_1000F8C08);
  v2 = sub_1000E8254();

  v3 = *(v0 + 8);

  return v3(0xD000000000000023, 0x80000001000F8B50, v2);
}

uint64_t sub_1000BB4D4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000B75E0;

  return sub_1000BB334();
}

unint64_t sub_1000BB568()
{
  result = qword_100134D68;
  if (!qword_100134D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134D68);
  }

  return result;
}

uint64_t sub_1000BB5BC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000BBBC8();
  *v5 = v2;
  v5[1] = sub_1000BB66C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

uint64_t sub_1000BB66C()
{
  sub_100032604();
  v3 = v2;
  sub_1000325B0();
  v5 = v4;
  v6 = *(v4 + 24);
  v7 = *v1;
  sub_10003246C();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

unint64_t sub_1000BB770()
{
  result = qword_100134D70;
  if (!qword_100134D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134D70);
  }

  return result;
}

unint64_t sub_1000BB7C8()
{
  result = qword_100134D78;
  if (!qword_100134D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134D78);
  }

  return result;
}

unint64_t sub_1000BB820()
{
  result = qword_100134D80;
  if (!qword_100134D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134D80);
  }

  return result;
}

uint64_t sub_1000BB874(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000BBBC8();
  *v6 = v2;
  v6[1] = sub_1000B9630;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1000BB928(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000BBBC8();
  *v5 = v2;
  v5[1] = sub_1000BCCBC;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1000BB9DC()
{
  result = qword_100134D88;
  if (!qword_100134D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134D88);
  }

  return result;
}

unint64_t sub_1000BBA34()
{
  result = qword_100134D90;
  if (!qword_100134D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134D90);
  }

  return result;
}

unint64_t sub_1000BBA8C()
{
  result = qword_100134D98;
  if (!qword_100134D98)
  {
    sub_100002ABC(&qword_100134DA0, qword_1000F8540);
    sub_1000BBA34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134D98);
  }

  return result;
}

uint64_t sub_1000BBB10(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000BB568();
  *v6 = v2;
  v6[1] = sub_100031BC4;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1000BBBC8()
{
  result = qword_100134DA8;
  if (!qword_100134DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134DA8);
  }

  return result;
}

uint64_t sub_1000BBC1C()
{
  v0 = qword_100134D10;

  return v0;
}

unint64_t sub_1000BBC58()
{
  result = qword_100134DB0;
  if (!qword_100134DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134DB0);
  }

  return result;
}

unint64_t sub_1000BBCB0()
{
  result = qword_100134DB8;
  if (!qword_100134DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134DB8);
  }

  return result;
}

unint64_t sub_1000BBD08()
{
  result = qword_100134DC0;
  if (!qword_100134DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134DC0);
  }

  return result;
}

unint64_t sub_1000BBD60()
{
  result = qword_100134DC8;
  if (!qword_100134DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134DC8);
  }

  return result;
}

uint64_t sub_1000BBDB4()
{
  sub_1000BCC60();
  v1 = sub_1000E8184();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1000BBE24()
{
  result = qword_100134DD0;
  if (!qword_100134DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134DD0);
  }

  return result;
}

unint64_t sub_1000BBE7C()
{
  result = qword_100134DD8;
  if (!qword_100134DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134DD8);
  }

  return result;
}

unint64_t sub_1000BBED4()
{
  result = qword_100134DE0;
  if (!qword_100134DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134DE0);
  }

  return result;
}

uint64_t sub_1000BBFA4(uint64_t a1)
{
  v2 = sub_1000BB820();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000BBFF4()
{
  result = qword_100134DF8;
  if (!qword_100134DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134DF8);
  }

  return result;
}

uint64_t sub_1000BC04C(uint64_t a1)
{
  v2 = sub_1000BBED4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000BC09C()
{
  result = qword_100134E00;
  if (!qword_100134E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134E00);
  }

  return result;
}

uint64_t sub_1000BC0F4()
{
  v0 = sub_1000E86A4();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_1000E84B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000EBE54();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_1000E84C4();
  sub_10004B338(v9, qword_100145D10);
  sub_100008CB8(v9, qword_100145D10);
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    swift_once();
  }

  v10 = sub_100008CB8(v2, qword_100145E08);
  (*(v3 + 16))(v6, v10, v2);
  sub_1000E8644();
  return sub_1000E84D4();
}

uint64_t sub_1000BC308()
{
  v54 = sub_1000E8174();
  v0 = sub_1000090D4(v54);
  v52 = v1;
  v3 = *(v2 + 64);
  __chkstk_darwin(v0);
  sub_100006A10();
  v53 = v5 - v4;
  v6 = sub_100002A10(&qword_100134C80, &unk_1000F81F0);
  v7 = sub_100009210(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_1000091AC();
  v51[2] = v10 - v11;
  __chkstk_darwin(v12);
  v51[1] = v51 - v13;
  v14 = sub_100002A10(&qword_100134C88, &qword_1000F9FF0);
  sub_100009210(v14);
  v16 = *(v15 + 64);
  sub_100009204();
  __chkstk_darwin(v17);
  v19 = v51 - v18;
  v20 = sub_1000E86A4();
  v21 = sub_100009210(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  sub_100006A10();
  v24 = sub_1000E84B4();
  v25 = sub_1000090D4(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v25);
  sub_100006A10();
  v32 = v31 - v30;
  v33 = sub_1000EBE54();
  v34 = sub_100009210(v33);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  sub_100006A10();
  v37 = sub_1000E84C4();
  sub_1000326A0(v37);
  v39 = *(v38 + 64);
  __chkstk_darwin(v40);
  sub_100006A10();
  v51[0] = sub_100002A10(&qword_100134E38, &unk_1000F8BE0);
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    sub_1000B9634();
  }

  v41 = sub_100008CB8(v24, qword_100145E08);
  v42 = *(v27 + 16);
  v42(v32, v41, v24);
  sub_1000E8644();
  sub_1000326AC();
  sub_1000B96DC();
  sub_1000EBE44();
  v42(v32, v41, v24);
  sub_1000E8644();
  sub_1000326AC();
  sub_1000B96DC();
  sub_1000028A0(v19, 0, 1, v37);
  v43 = sub_1000E7ED4();
  v56 = 0;
  v57 = 0;
  v55 = 0;
  sub_10000D52C();
  sub_1000028A0(v44, v45, v46, v43);
  sub_10000D52C();
  sub_1000028A0(v47, v48, v49, v43);
  (*(v52 + 104))(v53, enum case for InputConnectionBehavior.default(_:), v54);
  sub_1000BB820();
  return sub_1000E7F34();
}

uint64_t (*sub_1000BC71C(void *a1))()
{
  v3 = sub_1000B9500(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_1000E7EF4();
  return sub_1000B8C64;
}

unint64_t sub_1000BC780()
{
  result = qword_100134E08;
  if (!qword_100134E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134E08);
  }

  return result;
}

uint64_t sub_1000BC7D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BCBB8();
  v5 = sub_1000BCC60();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_1000BC83C()
{
  v0 = qword_100134D20;

  return v0;
}

unint64_t sub_1000BC878()
{
  result = qword_100134E10;
  if (!qword_100134E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134E10);
  }

  return result;
}

unint64_t sub_1000BC8D0()
{
  result = qword_100134E18;
  if (!qword_100134E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134E18);
  }

  return result;
}

uint64_t sub_1000BC9C8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000BCBB8();
  v8 = sub_1000BCC0C();
  v9 = sub_1000BCC60();
  *v6 = v2;
  v6[1] = sub_1000B90E4;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_1000BCA9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000BC308();
  *a1 = result;
  return result;
}

uint64_t sub_1000BCAC4(uint64_t a1)
{
  v2 = sub_1000BC780();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000BCBB8()
{
  result = qword_100134E40;
  if (!qword_100134E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134E40);
  }

  return result;
}

unint64_t sub_1000BCC0C()
{
  result = qword_100134E48;
  if (!qword_100134E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134E48);
  }

  return result;
}

unint64_t sub_1000BCC60()
{
  result = qword_100134E50;
  if (!qword_100134E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134E50);
  }

  return result;
}

uint64_t sub_1000BCCE4()
{

  return swift_once();
}

unint64_t sub_1000BCD08()
{
  result = qword_100134EA8;
  if (!qword_100134EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134EA8);
  }

  return result;
}

uint64_t sub_1000BCDA0()
{
  sub_1000EA354();
  if (qword_10012EBF8 != -1)
  {
    swift_once();
  }

  v0 = qword_100145E00;
  return sub_1000EA7F4();
}

uint64_t sub_1000BCEBC()
{
  v0 = sub_1000BF0AC();

  return _EntityURLRepresentation.init(_:)(0xD000000000000050, 0x80000001000FD1A0, &type metadata for WeatherTemperatureUnitEntity, v0);
}

void sub_1000BCF24()
{
  sub_100006A58();
  v41 = v1;
  v2 = sub_100002A10(&qword_100134CB0, &unk_1000F9870);
  sub_100009210(v2);
  v4 = *(v3 + 64);
  sub_100009204();
  __chkstk_darwin(v5);
  v40 = &v37 - v6;
  v7 = sub_100002A10(&qword_100134C88, &qword_1000F9FF0);
  sub_100009210(v7);
  v9 = *(v8 + 64);
  sub_100009204();
  __chkstk_darwin(v10);
  v39 = &v37 - v11;
  v12 = sub_1000E86A4();
  v13 = sub_100009210(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_100006A10();
  v16 = sub_1000E84B4();
  v17 = sub_1000090D4(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17);
  sub_100006A10();
  sub_1000C1604();
  v22 = sub_1000EBE54();
  v23 = sub_100009210(v22);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  sub_100006A10();
  v38 = sub_1000E84C4();
  v26 = sub_1000069E4(v38);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  sub_1000091AC();
  __chkstk_darwin(v29);
  sub_1000C15F8();
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    sub_1000B9634();
  }

  v30 = sub_100008CB8(v16, qword_100145E08);
  v31 = *(v19 + 16);
  v31(v0, v30, v16);
  sub_1000E8644();
  sub_1000326AC();
  sub_1000B96DC();
  sub_1000C15EC();
  sub_1000EBE44();
  v31(v0, v30, v16);
  sub_1000E8644();
  v32 = v39;
  sub_1000326AC();
  sub_1000B96DC();
  sub_1000028A0(v32, 0, 1, v38);
  sub_1000E80C4();
  sub_10000D52C();
  sub_1000028A0(v33, v34, v35, v36);
  sub_1000C15F8();
  sub_1000E84A4();
  sub_1000E80D4();
  sub_100006A20();
}

uint64_t sub_1000BD25C()
{
  v0 = sub_1000E84C4();
  sub_10004B338(v0, qword_100145D40);
  sub_100008CB8(v0, qword_100145D40);
  return sub_1000E84A4();
}

uint64_t sub_1000BD2C0()
{
  v0 = sub_100002A10(&qword_100134C88, &qword_1000F9FF0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v20[-v2];
  v4 = sub_1000E86A4();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_1000E84B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1000EBE54();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_1000E84C4();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v15 = sub_100002A10(&qword_100134D08, &qword_1000F9920);
  sub_10004B338(v15, qword_100145D58);
  v16 = sub_100008CB8(v15, qword_100145D58);
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    swift_once();
  }

  v17 = sub_100008CB8(v6, qword_100145E08);
  (*(v7 + 16))(v10, v17, v6);
  sub_1000E8644();
  sub_1000E84D4();
  sub_1000028A0(v3, 1, 1, v13);
  sub_1000E8044();
  v18 = sub_1000E8034();
  return sub_1000028A0(v16, 0, 1, v18);
}

uint64_t sub_1000BD5C8()
{
  result = swift_getKeyPath();
  qword_100145D70 = result;
  return result;
}

uint64_t sub_1000BD5F0()
{
  sub_100032530();
  v0[21] = v1;
  v0[22] = v2;
  v0[20] = v3;
  v4 = sub_100002A10(&qword_100134CD8, &unk_1000F98D0);
  sub_100009210(v4);
  v6 = *(v5 + 64);
  v0[23] = sub_1000B9730();
  v7 = sub_100002A10(&qword_100134CE0, &qword_1000F8250);
  sub_100009210(v7);
  v9 = *(v8 + 64);
  v0[24] = sub_1000B9730();
  v10 = sub_100002A10(&qword_100135058, &qword_1000F98E0);
  sub_100009210(v10);
  v12 = *(v11 + 64);
  v0[25] = sub_1000B9730();
  v13 = sub_1000E7ED4();
  v0[26] = v13;
  sub_100032590(v13);
  v0[27] = v14;
  v16 = *(v15 + 64);
  v0[28] = sub_1000B9730();
  v17 = sub_100002A10(&qword_100135060, &qword_1000F98E8);
  v0[29] = v17;
  sub_100032590(v17);
  v0[30] = v18;
  v20 = *(v19 + 64) + 15;
  v0[31] = swift_task_alloc();
  v0[32] = swift_task_alloc();
  sub_1000326AC();

  return _swift_task_switch(v21, v22, v23);
}

uint64_t sub_1000BD78C()
{
  sub_100032530();
  v1 = *(v0 + 168);
  sub_1000E7F04();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1000BF0AC();
  *v4 = v0;
  v4[1] = sub_1000BD86C;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1000C15A0, 0, &type metadata for WeatherTemperatureUnitEntity, v5);
}

uint64_t sub_1000BD86C()
{
  sub_100032530();
  sub_1000325B0();
  v2 = *(v1 + 264);
  v3 = *v0;
  sub_10003246C();
  *v4 = v3;

  sub_1000326AC();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000BD954()
{
  v1 = v0[21];
  v2 = v0[22];
  sub_1000E7F04();
  v0[11] = v0[8];
  v3 = v0[9];
  v4 = v0[10];
  v0[34] = v3;
  v0[35] = v4;
  v0[12] = v3;
  v0[13] = v4;
  sub_1000E7F04();
  if (qword_10012EBB8 != -1)
  {
    sub_1000C15CC();
  }

  v5 = qword_100145D70;
  v0[36] = qword_100145D70;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[37] = v7;
  v8 = sub_1000B9674(&qword_100135040, &qword_100135048, &qword_1000F98B8);
  *v7 = v0;
  v7[1] = sub_1000BDA8C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v5, &type metadata for TemperatureUnit, v8);
}

uint64_t sub_1000BDA8C()
{
  sub_1000325B0();
  v3 = v2[37];
  v4 = v2[36];
  v5 = v2[35];
  v6 = v2[34];
  v7 = *v1;
  sub_10003246C();
  *v8 = v7;
  *(v9 + 304) = v0;

  sub_1000326AC();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000BDBEC()
{
  v1 = v0[32];
  v3 = v0[29];
  v2 = v0[30];
  v18 = v0[31];
  v19 = v0[28];
  v4 = v0[25];
  v23 = v0[27];
  v24 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[21];
  v20 = v0[20];
  sub_1000E7F04();
  v21 = v0[15];
  v22 = v0[16];
  v0[17] = v0[14];
  v0[18] = v21;
  v0[19] = v22;
  sub_1000E81E4();
  sub_10000D52C();
  sub_1000028A0(v8, v9, v10, v11);
  sub_1000E8214();
  sub_10000D52C();
  sub_1000028A0(v12, v13, v14, v15);
  sub_1000BCD08();
  sub_1000BF2C0();
  sub_1000E7EA4();
  (*(v2 + 16))(v18, v1, v3);
  sub_1000E7EC4();
  sub_1000E7EE4();
  (*(v23 + 8))(v19, v24);

  (*(v2 + 8))(v1, v3);

  sub_1000324E4();

  return v16();
}

uint64_t sub_1000BDE14()
{
  v0 = sub_100002A10(&qword_100135068, &qword_1000F98F0);
  sub_1000090D4(v0);
  v2 = v1;
  v4 = *(v3 + 64);
  sub_100009204();
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  if (qword_10012EBB8 != -1)
  {
    sub_1000C15CC();
  }

  sub_1000E80A4();

  sub_1000BF2C0();
  sub_100006988(&qword_100135070, &qword_100135068, &qword_1000F98F0);
  sub_1000E8094();
  return (*(v2 + 8))(v7, v0);
}

void sub_1000BDF68()
{
  sub_100006A58();
  v0 = sub_1000E8174();
  v1 = sub_1000090D4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_100006A10();
  v8 = v7 - v6;
  v9 = sub_100002A10(&qword_100134C80, &unk_1000F81F0);
  v10 = sub_100009210(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_1000091AC();
  __chkstk_darwin(v13);
  v14 = sub_100002A10(&qword_100134C88, &qword_1000F9FF0);
  sub_100009210(v14);
  v16 = *(v15 + 64);
  sub_100009204();
  __chkstk_darwin(v17);
  v18 = sub_1000E84C4();
  v19 = sub_1000069E4(v18);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  sub_100006A10();
  sub_1000C1604();
  sub_100002A10(&qword_100135020, &qword_1000F9898);
  sub_1000C15EC();
  sub_1000E84A4();
  sub_10000D52C();
  sub_1000028A0(v22, v23, v24, v18);
  v25 = sub_1000E7ED4();
  sub_10000D52C();
  sub_1000028A0(v26, v27, v28, v25);
  sub_10000D52C();
  sub_1000028A0(v29, v30, v31, v25);
  v42 = enum case for InputConnectionBehavior.default(_:);
  v41 = *(v3 + 104);
  v41(v8);
  sub_1000BF0AC();
  sub_1000C1610();
  sub_1000E7F34();
  sub_100002A10(&qword_100135050, &qword_1000F98C0);
  sub_1000E84A4();
  sub_10000D52C();
  sub_1000028A0(v32, v33, v34, v18);
  sub_10000D52C();
  sub_1000028A0(v35, v36, v37, v25);
  sub_10000D52C();
  sub_1000028A0(v38, v39, v40, v25);
  (v41)(v8, v42, v0);
  sub_100084DEC();
  sub_1000C1610();
  sub_1000E7F24();
  sub_100006A20();
}

uint64_t (*sub_1000BE260(void *a1))()
{
  v3 = sub_1000B9500(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_1000E7EF4();
  return sub_1000BCCC0;
}

uint64_t sub_1000BE2C0@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 8);
  result = sub_1000B5E10();
  *a1 = result;
  return result;
}

uint64_t sub_1000BE2EC(unsigned __int8 *a1)
{
  v2 = *(v1 + 8);
  v3 = *a1;
  return sub_1000B5E44();
}

uint64_t (*sub_1000BE2F8(void *a1))()
{
  v3 = sub_1000B9500(0x28uLL);
  *a1 = v3;
  v4 = *(v1 + 8);
  v3[4] = sub_1000E7EF4();
  return sub_1000BCCC0;
}

uint64_t sub_1000BE358()
{
  if (qword_10012EBB8 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000BE3B8()
{
  result = qword_100134EC0;
  if (!qword_100134EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134EC0);
  }

  return result;
}

unint64_t sub_1000BE410()
{
  result = qword_100134EC8;
  if (!qword_100134EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134EC8);
  }

  return result;
}

uint64_t sub_1000BE4FC@<X0>(uint64_t a1@<X8>)
{
  if (qword_10012EBB0 != -1)
  {
    swift_once();
  }

  v2 = sub_100002A10(&qword_100134D08, &qword_1000F9920);
  v3 = sub_100008CB8(v2, qword_100145D58);

  return sub_1000B957C(v3, a1);
}

uint64_t sub_1000BE580()
{
  v3 = *v0;
  v2 = v0[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100032444;

  return sub_1000BD5F0();
}

void sub_1000BE62C(void *a1@<X8>)
{
  sub_1000BDF68();
  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1000BE674()
{
  result = qword_100134ED0;
  if (!qword_100134ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134ED0);
  }

  return result;
}

uint64_t sub_1000BE6EC()
{
  sub_100032530();
  if (qword_10012EB00 != -1)
  {
    sub_1000B9698();
  }

  v1 = qword_100145B90;
  v2 = OBJC_IVAR____TtC13WeatherWidget20WeatherSettingsState_units;
  v0[3] = qword_100145B90;
  v0[4] = v2;
  v3 = *(v1 + v2);
  v0[5] = v3;
  v3;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1000BE7C4;

  return sub_1000D01CC();
}

uint64_t sub_1000BE7C4()
{
  sub_100032530();
  sub_1000325B0();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *v0;
  sub_10003246C();
  *v5 = v4;

  sub_1000326AC();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000BE8C4()
{
  v1 = *(*(v0 + 24) + *(v0 + 32));
  v2 = sub_1000D0888();

  if (v2)
  {
    sub_100031CF8(0, &qword_100131240, NSUnitTemperature_ptr);
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 celsius];
    v6 = sub_1000EC354();

    if (v6)
    {

      v7 = 0;
    }

    else
    {
      v8 = [v3 fahrenheit];
      v9 = sub_1000EC354();

      if (v9)
      {
        v7 = 1;
      }

      else
      {
        v7 = 2;
      }
    }
  }

  else
  {
    v7 = 2;
  }

  **(v0 + 16) = v7;
  sub_1000324E4();

  return v10();
}

uint64_t sub_1000BEA3C()
{
  sub_100032530();
  v1 = sub_1000BEB20(*(v0 + 16));
  if (qword_10012EB00 != -1)
  {
    sub_1000B9698();
  }

  v2 = *(qword_100145B90 + OBJC_IVAR____TtC13WeatherWidget20WeatherSettingsState_units);
  sub_1000D06DC(v1);

  sub_100031CF8(0, &qword_100130448, NSUserDefaults_ptr);
  sub_1000EC1D4();
  sub_1000C15EC();
  sub_1000C15F8();
  sub_1000E9444();

  sub_1000324E4();

  return v3();
}

id sub_1000BEB20(char a1)
{
  if (!a1)
  {
    v1 = &selRef_celsius;
    return [objc_opt_self() *v1];
  }

  if (a1 == 1)
  {
    v1 = &selRef_fahrenheit;
    return [objc_opt_self() *v1];
  }

  return 0;
}

uint64_t sub_1000BEB84()
{
  sub_100032530();
  v1 = sub_1000E86A4();
  sub_100009210(v1);
  v3 = *(v2 + 64);
  v0[2] = sub_1000B9730();
  v4 = sub_1000E84B4();
  v0[3] = v4;
  sub_100032590(v4);
  v0[4] = v5;
  v7 = *(v6 + 64);
  v0[5] = sub_1000B9730();
  v8 = sub_1000EBE54();
  sub_100009210(v8);
  v10 = *(v9 + 64);
  v0[6] = sub_1000B9730();
  v11 = sub_1000E84C4();
  sub_100009210(v11);
  v13 = *(v12 + 64);
  v0[7] = sub_1000B9730();
  sub_1000326AC();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_1000BEC88()
{
  v1 = v0[6];
  sub_100002A10(&qword_100134EB8, qword_1000F8C60);
  sub_1000C15EC();
  sub_1000C15F8();
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    sub_1000B9634();
  }

  v2 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  v7 = sub_100008CB8(v6, qword_100145E08);
  (*(v5 + 16))(v4, v7, v6);
  sub_1000E8644();
  sub_1000326AC();
  sub_1000B96DC();
  sub_1000B9674(&qword_100135040, &qword_100135048, &qword_1000F98B8);
  sub_100084DEC();
  v8 = sub_1000E8244();

  v9 = v0[1];

  return v9(0xD00000000000001CLL, 0x80000001000F97E0, v8);
}

uint64_t sub_1000BEE60(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000B75E0;

  return sub_1000BEB84();
}

unint64_t sub_1000BEEF4()
{
  result = qword_100134ED8;
  if (!qword_100134ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134ED8);
  }

  return result;
}

uint64_t sub_1000BEF48(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000BF454();
  *v5 = v2;
  v5[1] = sub_1000B7800;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1000BEFFC()
{
  result = qword_100134EE0;
  if (!qword_100134EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134EE0);
  }

  return result;
}

unint64_t sub_1000BF054()
{
  result = qword_100134EE8;
  if (!qword_100134EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134EE8);
  }

  return result;
}

unint64_t sub_1000BF0AC()
{
  result = qword_100134EF0;
  if (!qword_100134EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134EF0);
  }

  return result;
}

uint64_t sub_1000BF100(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000BF454();
  *v6 = v2;
  v6[1] = sub_1000B9630;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1000BF1B4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000BF454();
  *v5 = v2;
  v5[1] = sub_1000B9600;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1000BF268()
{
  result = qword_100134EF8;
  if (!qword_100134EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134EF8);
  }

  return result;
}

unint64_t sub_1000BF2C0()
{
  result = qword_100134F00;
  if (!qword_100134F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F00);
  }

  return result;
}

unint64_t sub_1000BF318()
{
  result = qword_100134F08;
  if (!qword_100134F08)
  {
    sub_100002ABC(&qword_100134F10, qword_1000F8F00);
    sub_1000BF2C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F08);
  }

  return result;
}

uint64_t sub_1000BF39C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000BEEF4();
  *v6 = v2;
  v6[1] = sub_100031BC4;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1000BF454()
{
  result = qword_100134F18;
  if (!qword_100134F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F18);
  }

  return result;
}

uint64_t sub_1000BF4A8()
{
  v0 = qword_100134E88;

  return v0;
}

unint64_t sub_1000BF4E4()
{
  result = qword_100134F20;
  if (!qword_100134F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F20);
  }

  return result;
}

unint64_t sub_1000BF53C()
{
  result = qword_100134F28;
  if (!qword_100134F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F28);
  }

  return result;
}

unint64_t sub_1000BF594()
{
  result = qword_100134F30;
  if (!qword_100134F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F30);
  }

  return result;
}

unint64_t sub_1000BF5EC()
{
  result = qword_100134F38;
  if (!qword_100134F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F38);
  }

  return result;
}

uint64_t sub_1000BF640()
{
  sub_1000C1548();
  v1 = sub_1000E8184();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1000BF6B0()
{
  result = qword_100134F40;
  if (!qword_100134F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F40);
  }

  return result;
}

unint64_t sub_1000BF708()
{
  result = qword_100134F48;
  if (!qword_100134F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F48);
  }

  return result;
}

unint64_t sub_1000BF760()
{
  result = qword_100134F50;
  if (!qword_100134F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F50);
  }

  return result;
}

uint64_t sub_1000BF830(uint64_t a1)
{
  v2 = sub_1000BF0AC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000BF880()
{
  result = qword_100134F68;
  if (!qword_100134F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F68);
  }

  return result;
}

uint64_t sub_1000BF8D8(uint64_t a1)
{
  v2 = sub_1000BF760();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000BF928()
{
  result = qword_100134F70;
  if (!qword_100134F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F70);
  }

  return result;
}

uint64_t sub_1000BF980()
{
  v0 = sub_1000E86A4();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_1000E84B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000EBE54();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_1000E84C4();
  sub_10004B338(v9, qword_100145D78);
  sub_100008CB8(v9, qword_100145D78);
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    swift_once();
  }

  v10 = sub_100008CB8(v2, qword_100145E08);
  (*(v3 + 16))(v6, v10, v2);
  sub_1000E8644();
  return sub_1000E84D4();
}

void sub_1000BFB94()
{
  sub_100006A58();
  v53 = sub_1000E8174();
  v0 = sub_1000090D4(v53);
  v51 = v1;
  v3 = *(v2 + 64);
  __chkstk_darwin(v0);
  sub_100006A10();
  v52 = v5 - v4;
  v6 = sub_100002A10(&qword_100134C80, &unk_1000F81F0);
  v7 = sub_100009210(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_1000091AC();
  v50[2] = v10 - v11;
  __chkstk_darwin(v12);
  v50[1] = v50 - v13;
  v14 = sub_100002A10(&qword_100134C88, &qword_1000F9FF0);
  sub_100009210(v14);
  v16 = *(v15 + 64);
  sub_100009204();
  __chkstk_darwin(v17);
  v19 = v50 - v18;
  v20 = sub_1000E86A4();
  v21 = sub_100009210(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  sub_100006A10();
  v24 = sub_1000E84B4();
  v25 = sub_1000090D4(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v25);
  sub_100006A10();
  v32 = v31 - v30;
  v33 = sub_1000EBE54();
  v34 = sub_100009210(v33);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  sub_100006A10();
  v37 = sub_1000E84C4();
  v38 = sub_1000069E4(v37);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  sub_100006A10();
  sub_1000C1604();
  v50[0] = sub_100002A10(&qword_100135020, &qword_1000F9898);
  sub_1000C15EC();
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    sub_1000B9634();
  }

  v41 = sub_100008CB8(v24, qword_100145E08);
  v42 = *(v27 + 16);
  v42(v32, v41, v24);
  sub_1000E8644();
  sub_1000326AC();
  sub_1000B96DC();
  sub_1000EBE44();
  v42(v32, v41, v24);
  sub_1000E8644();
  sub_1000326AC();
  sub_1000B96DC();
  sub_1000028A0(v19, 0, 1, v37);
  v43 = sub_1000E7ED4();
  v55 = 0;
  v56 = 0;
  v54 = 0;
  sub_10000D52C();
  sub_1000028A0(v44, v45, v46, v43);
  sub_10000D52C();
  sub_1000028A0(v47, v48, v49, v43);
  (*(v51 + 104))(v52, enum case for InputConnectionBehavior.default(_:), v53);
  sub_1000BF0AC();
  sub_1000E7F34();
  sub_100006A20();
}

uint64_t (*sub_1000BFF8C(void *a1))()
{
  v3 = sub_1000B9500(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_1000E7EF4();
  return sub_1000B8C64;
}

unint64_t sub_1000BFFF0()
{
  result = qword_100134F78;
  if (!qword_100134F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F78);
  }

  return result;
}

uint64_t sub_1000C0044(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C14A0();
  v5 = sub_1000C1548();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_1000C00AC()
{
  v0 = qword_100134E98;

  return v0;
}

unint64_t sub_1000C00E8()
{
  result = qword_100134F80;
  if (!qword_100134F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F80);
  }

  return result;
}

unint64_t sub_1000C0140()
{
  result = qword_100134F88;
  if (!qword_100134F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F88);
  }

  return result;
}

uint64_t sub_1000C01F8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000C14A0();
  v8 = sub_1000C14F4();
  v9 = sub_1000C1548();
  *v6 = v2;
  v6[1] = sub_1000B90E4;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_1000C02F4(uint64_t a1)
{
  v2 = sub_1000BFFF0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

void sub_1000C033C()
{
  sub_100006A58();
  v1 = v0;
  v2 = sub_100002A10(&qword_100134C88, &qword_1000F9FF0);
  sub_100009210(v2);
  v4 = *(v3 + 64);
  sub_100009204();
  __chkstk_darwin(v5);
  v6 = sub_1000E86A4();
  v7 = sub_100009210(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_100006A10();
  v10 = sub_1000E84B4();
  v11 = sub_1000090D4(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_100006A10();
  v18 = v17 - v16;
  v19 = sub_1000EBE54();
  v20 = sub_100009210(v19);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  sub_100006A10();
  sub_1000C1604();
  v23 = sub_1000E84C4();
  v24 = sub_1000069E4(v23);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  sub_100006A10();
  v27 = sub_1000E8204();
  sub_10004B338(v27, v1);
  sub_100008CB8(v27, v1);
  sub_1000C15EC();
  sub_1000C15F8();
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    sub_1000B9634();
  }

  v28 = sub_100008CB8(v10, qword_100145E08);
  (*(v13 + 16))(v18, v28, v10);
  sub_1000E8644();
  sub_1000326AC();
  sub_1000B96DC();
  sub_10000D52C();
  sub_1000028A0(v29, v30, v31, v23);
  sub_1000E81F4();
  sub_100006A20();
}

uint64_t sub_1000C058C()
{
  v0 = sub_100002A10(&qword_100134CB0, &unk_1000F9870);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v37 = v29 - v2;
  v3 = sub_100002A10(&qword_100134C88, &qword_1000F9FF0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v29 - v5;
  v7 = sub_1000E86A4();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_1000E84B4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000EBE54();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v38 = sub_1000E84C4();
  v16 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  sub_100002A10(&qword_100135010, &qword_1000F9880);
  v17 = sub_100002A10(&qword_100135018, &unk_1000F9888);
  v18 = (*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80);
  v31 = *(*(v17 - 8) + 72);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000F7210;
  v32 = v19;
  v20 = (v19 + v18);
  v36 = v17;
  v21 = *(v17 + 48);
  *v20 = 0;
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    swift_once();
  }

  v22 = sub_100008CB8(v9, qword_100145E08);
  v34 = *(v10 + 16);
  v35 = v22;
  v34(v13, v22, v9);
  sub_1000E8644();
  sub_1000E84D4();
  sub_1000028A0(v6, 1, 1, v38);
  v33 = sub_1000E80C4();
  sub_1000028A0(v37, 1, 1, v33);
  sub_1000E80E4();
  v23 = v9;
  v30 = v9;
  v24 = v31;
  v29[1] = *(v36 + 48);
  v20[v31] = 1;
  sub_1000EBE44();
  v34(v13, v35, v23);
  sub_1000E8644();
  sub_1000E84D4();
  v25 = v6;
  sub_1000028A0(v6, 1, 1, v38);
  v26 = v37;
  sub_1000028A0(v37, 1, 1, v33);
  sub_1000E80E4();
  v27 = *(v36 + 48);
  v20[2 * v24] = 2;
  sub_1000EBE44();
  v34(v13, v35, v30);
  sub_1000E8644();
  sub_1000E84D4();
  sub_1000028A0(v25, 1, 1, v38);
  sub_1000028A0(v26, 1, 1, v33);
  sub_1000E80E4();
  sub_1000E80F4();
  sub_1000C0DC8();
  result = sub_1000EBDE4();
  qword_100145DA8 = result;
  return result;
}

uint64_t sub_1000C0B2C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1001250D0;
  v6._object = a2;
  v4 = sub_1000EC494(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000C0B78(char a1)
{
  if (!a1)
  {
    return 0x737569736C6563;
  }

  if (a1 == 1)
  {
    return 0x65686E6572686166;
  }

  return 0x7953726F7272696DLL;
}

unint64_t sub_1000C0BEC()
{
  result = qword_100134F90;
  if (!qword_100134F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F90);
  }

  return result;
}

uint64_t sub_1000C0C58@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C0B2C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1000C0C88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000C0B78(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000C0CB8()
{
  result = qword_100134F98;
  if (!qword_100134F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F98);
  }

  return result;
}

unint64_t sub_1000C0D10()
{
  result = qword_100134FA0;
  if (!qword_100134FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134FA0);
  }

  return result;
}

unint64_t sub_1000C0D68()
{
  result = qword_100134FA8;
  if (!qword_100134FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134FA8);
  }

  return result;
}

unint64_t sub_1000C0DC8()
{
  result = qword_100134FB0;
  if (!qword_100134FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134FB0);
  }

  return result;
}

unint64_t sub_1000C0E2C()
{
  result = qword_100134FB8;
  if (!qword_100134FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134FB8);
  }

  return result;
}

unint64_t sub_1000C0E84()
{
  result = qword_100134FC0;
  if (!qword_100134FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134FC0);
  }

  return result;
}

unint64_t sub_1000C0EDC()
{
  result = qword_100134FC8;
  if (!qword_100134FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134FC8);
  }

  return result;
}

unint64_t sub_1000C0F34()
{
  result = qword_100134FD0;
  if (!qword_100134FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134FD0);
  }

  return result;
}

uint64_t sub_1000C0FC0@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = a2(0);
  v8 = sub_100008CB8(v7, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1000C10D8(uint64_t a1)
{
  v2 = sub_100084DEC();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000C1128()
{
  result = qword_100134FD8;
  if (!qword_100134FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134FD8);
  }

  return result;
}

unint64_t sub_1000C1180()
{
  result = qword_100134FE0;
  if (!qword_100134FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134FE0);
  }

  return result;
}

uint64_t sub_1000C11D8()
{
  if (qword_10012EBD0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1000C1234(uint64_t a1)
{
  v2 = sub_1000C0F34();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

_BYTE *storeEnumTagSinglePayload for TemperatureUnit(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000C13C0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000C14A0()
{
  result = qword_100135028;
  if (!qword_100135028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135028);
  }

  return result;
}

unint64_t sub_1000C14F4()
{
  result = qword_100135030;
  if (!qword_100135030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135030);
  }

  return result;
}

unint64_t sub_1000C1548()
{
  result = qword_100135038;
  if (!qword_100135038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135038);
  }

  return result;
}

uint64_t sub_1000C15CC()
{

  return swift_once();
}

uint64_t sub_1000C1624(__int128 *a1)
{
  type metadata accessor for EventManager();
  *(v1 + 16) = swift_allocObject();
  v3 = sub_1000EADF4();
  sub_1000A8350(v3);
  *(v1 + 64) = sub_1000EADE4();
  sub_10004E7EC(a1, v1 + 24);
  return v1;
}

void sub_1000C1690()
{
  sub_1000C27DC();
  v97 = v1;
  v98 = v2;
  v4 = v3;
  v89 = v5;
  v6 = sub_1000EB094();
  v7 = sub_1000090D4(v6);
  v107 = v8;
  v108 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  sub_10004B3F0();
  v105 = v11;
  sub_10000921C();
  v12 = sub_1000EAF24();
  v13 = sub_100009210(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_10004B3F0();
  v94 = v16;
  sub_10000921C();
  v17 = sub_1000EADA4();
  v18 = sub_1000090D4(v17);
  v92 = v19;
  v93 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  sub_10004B3F0();
  v91 = v22;
  sub_10000921C();
  v23 = sub_1000EBBC4();
  v24 = sub_100009210(v23);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  sub_10004B3F0();
  v90 = v27;
  sub_10000921C();
  v28 = sub_1000E8C34();
  v29 = sub_100009210(v28);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  sub_100006A10();
  v87[1] = v33 - v32;
  v34 = sub_1000EAFC4();
  v35 = sub_1000090D4(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  v40 = __chkstk_darwin(v35);
  v42 = v87 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v44 = v87 - v43;
  v106 = sub_1000EADC4();
  v45 = sub_1000090D4(v106);
  v104 = v46;
  v48 = *(v47 + 64);
  __chkstk_darwin(v45);
  sub_10004B3F0();
  v88 = v49;
  v50 = sub_10000921C();
  v51 = type metadata accessor for AggregateWeatherViewModel(v50);
  v52 = *(v4 + *(v51 + 44));
  v53 = *(v0 + 16);
  v54 = sub_10009B330(v52);
  v55 = sub_10009B858(v54, v52);
  v101 = v56;
  v102 = v55;
  v57 = sub_10009BBDC(v54, v52);
  v99 = v58;
  v100 = v57;
  v103 = v54;
  v59 = sub_10009BD30(v54, v52);
  v95 = v60;
  v96 = v59;
  v61 = *(v51 + 24);
  sub_1000EB664();
  sub_1000EAF64();
  v62 = *(v37 + 8);
  v62(v44, v34);
  v63 = v97;
  sub_1000EAE74();
  sub_1000EB664();
  sub_1000EAFB4();
  v62(v42, v34);
  (*(v92 + 104))(v91, enum case for WeatherConditionGradientModel.PresentationContext.widget(_:), v93);
  sub_1000EB5A4();
  v64 = v88;
  sub_1000EB654();
  sub_1000EAD84();
  v65 = sub_1000EADF4();
  sub_1000A8350(v65);
  sub_1000EADE4();
  v66 = v105;
  sub_1000EADD4();
  v98 = sub_1000EB084();
  (*(v107 + 8))(v66, v108);
  sub_1000E9A34();
  v67 = sub_1000E9984();
  v69 = v68;
  v70 = 1;
  if (v67 != sub_1000E9984() || v69 != v71)
  {
    v70 = sub_1000EC5D4();
  }

  v73 = v103;
  v74 = v103 >> 8;
  v75 = type metadata accessor for WidgetLocation();
  v76 = *(v63 + *(v75 + 20)) == 3;
  v77 = *(v63 + *(v75 + 24));
  v78 = type metadata accessor for WidgetContext();
  v79 = sub_1000C27F8(v78);
  v80 = v89;
  sub_1000C2780(v79, v81, v82, v79);
  sub_1000EADB4();

  (*(v104 + 8))(v64, v106);
  v83 = v101;
  *v80 = v102;
  *(v80 + 8) = v83;
  v84 = v99;
  *(v80 + 16) = v100;
  *(v80 + 24) = v84;
  v85 = v95;
  *(v80 + 32) = v96;
  *(v80 + 40) = v85;
  *(v80 + 48) = v73;
  *(v80 + 49) = v74;
  *(v80 + 50) = v70 & 1;
  *(v80 + 51) = v76;
  *(v80 + 52) = v77;
  v86 = (v80 + *(v78 + 48));
  *v86 = v98;
  sub_1000C279C(v86);
  sub_1000C27C0();
}

void sub_1000C1BD4()
{
  sub_1000C27DC();
  v80 = v0;
  v2 = v1;
  v82 = v3;
  v69 = v4;
  v5 = sub_1000EB094();
  v6 = sub_1000090D4(v5);
  v84 = v7;
  v85 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  sub_10004B3F0();
  v83 = v10;
  sub_10000921C();
  v11 = sub_1000EAF24();
  v12 = sub_100009210(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_10004B3F0();
  v81 = v15;
  sub_10000921C();
  v78 = sub_1000EADA4();
  v16 = sub_1000090D4(v78);
  v76 = v17;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16);
  sub_10004B3F0();
  v79 = v20;
  sub_10000921C();
  v21 = sub_1000EBBC4();
  v22 = sub_100009210(v21);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  sub_10004B3F0();
  v74 = v25;
  sub_10000921C();
  v26 = sub_1000E8C34();
  v27 = sub_100009210(v26);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  sub_10004B3F0();
  sub_10000921C();
  v70 = sub_1000EAFC4();
  v30 = sub_1000090D4(v70);
  v32 = v31;
  v34 = *(v33 + 64);
  v35 = __chkstk_darwin(v30);
  v37 = &v66 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v39 = &v66 - v38;
  v77 = sub_1000EADC4();
  v40 = sub_1000090D4(v77);
  v75 = v41;
  v43 = *(v42 + 64);
  __chkstk_darwin(v40);
  sub_10004B3F0();
  v73 = v44;
  sub_1000E9A34();
  v45 = sub_1000E9984();
  v47 = v46;
  v48 = 1;
  if (v45 != sub_1000E9984() || v47 != v49)
  {
    v48 = sub_1000EC5D4();
  }

  v71 = v48;

  v68 = type metadata accessor for WidgetLocation();
  v72 = *(v2 + *(v68 + 20)) == 3;
  v51 = type metadata accessor for InstantWeatherViewModel();
  v67 = v2;
  v52 = *(v51 + 24);
  sub_1000EB664();
  sub_1000EAF64();
  v53 = *(v32 + 8);
  v54 = v70;
  v53(v39, v70);
  sub_1000EAE74();
  sub_1000EB664();
  sub_1000EAFB4();
  v53(v37, v54);
  (*(v76 + 104))(v79, enum case for WeatherConditionGradientModel.PresentationContext.widget(_:), v78);
  sub_1000EB5A4();
  sub_1000EB654();
  v55 = v73;
  sub_1000EAD84();
  v56 = sub_1000EADF4();
  sub_1000A8350(v56);
  sub_1000EADE4();
  v57 = v83;
  sub_1000EADD4();
  v58 = sub_1000EB084();
  (*(v84 + 8))(v57, v85);
  v59 = *(v67 + *(v68 + 24));
  v60 = type metadata accessor for WidgetContext();
  v61 = sub_1000C27F8(v60);
  v62 = v69;
  sub_1000C2780(v61, v63, v64, v61);
  sub_1000EADB4();

  (*(v75 + 8))(v55, v77);
  sub_1000C27AC();
  *(v62 + 48) = 257;
  *(v62 + 50) = v71 & 1;
  *(v62 + 51) = v72;
  *(v62 + 52) = v59;
  v65 = (v62 + *(v60 + 48));
  *v65 = v58;
  sub_1000C279C(v65);
  sub_1000C27C0();
}

void sub_1000C20B4()
{
  sub_1000C27DC();
  v78 = v1;
  v3 = v2;
  v83 = v4;
  v75 = v5;
  v7 = v6;
  v8 = sub_1000EB094();
  v9 = sub_1000090D4(v8);
  v88 = v10;
  v89 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_10004B3F0();
  v85 = v13;
  sub_10000921C();
  v14 = sub_1000EAF24();
  v15 = sub_1000090D4(v14);
  v73 = v16;
  v74 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  sub_10004B3F0();
  v72 = v19;
  sub_10000921C();
  v71 = sub_1000EADA4();
  v20 = sub_1000090D4(v71);
  v22 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v20);
  sub_10004B3F0();
  v70 = v25;
  sub_10000921C();
  v26 = sub_1000EBBC4();
  v27 = sub_100009210(v26);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  sub_100006A10();
  v30 = sub_1000E8C34();
  v31 = sub_1000090D4(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  __chkstk_darwin(v31);
  sub_100006A10();
  v38 = v37 - v36;
  v39 = sub_1000EADC4();
  v40 = sub_1000090D4(v39);
  v86 = v41;
  v87 = v40;
  v43 = *(v42 + 64);
  __chkstk_darwin(v40);
  sub_100006A10();
  v46 = v45 - v44;
  v47 = *(v0 + 16);
  v48 = sub_10009B330(v3);
  v49 = sub_10009B858(v48, v3);
  v81 = v50;
  v82 = v49;
  v51 = sub_10009BBDC(v48, v3);
  v79 = v52;
  v80 = v51;
  v53 = sub_10009BD30(v48, v3);
  v76 = v54;
  v77 = v53;
  (*(v33 + 16))(v38, v75, v30);
  sub_1000EAE74();
  (*(v22 + 104))(v70, enum case for WeatherConditionGradientModel.PresentationContext.widget(_:), v71);
  (*(v73 + 16))(v72, v83, v74);
  sub_1000EAD84();
  v55 = sub_1000EADF4();
  sub_1000A8350(v55);
  sub_1000EADE4();
  sub_1000EADD4();
  v84 = sub_1000EB084();
  (*(v88 + 8))(v85, v89);
  sub_1000E9A34();
  v56 = sub_1000E9984();
  v58 = v57;
  v59 = 1;
  if (v56 != sub_1000E9984() || v58 != v60)
  {
    v59 = sub_1000EC5D4();
  }

  v62 = type metadata accessor for WidgetLocation();
  v63 = *(v78 + *(v62 + 20)) == 3;
  v64 = *(v78 + *(v62 + 24));
  v65 = type metadata accessor for WidgetContext();
  v66 = sub_1000C27F8(v65);
  sub_1000C2780(v66, v67, v68, v66);
  sub_1000EADB4();

  (*(v86 + 8))(v46, v87);
  *v7 = v82;
  *(v7 + 8) = v81;
  *(v7 + 16) = v80;
  *(v7 + 24) = v79;
  *(v7 + 32) = v77;
  *(v7 + 40) = v76;
  *(v7 + 48) = v48;
  *(v7 + 50) = v59 & 1;
  *(v7 + 51) = v63;
  *(v7 + 52) = v64;
  v69 = (v7 + *(v65 + 48));
  *v69 = v84;
  sub_1000C279C(v69);
  sub_1000C27C0();
}

double sub_1000C254C@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1000EB094();
  v4 = sub_1000090D4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100006A10();
  v11 = v10 - v9;
  v12 = sub_1000EADC4();
  v13 = sub_1000090D4(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  sub_100006A10();
  v20 = v19 - v18;
  sub_1000EAD94();
  v21 = *(v1 + 64);
  sub_1000EADD4();
  v22 = sub_1000EB084();
  (*(v6 + 8))(v11, v3);
  v23 = type metadata accessor for WidgetContext();
  v24 = sub_1000C27F8(v23);
  sub_1000C2780(v24, v25, v26, v24);
  LOBYTE(v21) = sub_1000EADB4();
  (*(v15 + 8))(v20, v12);
  sub_1000C27AC();
  *&result = 65793;
  *(a1 + 48) = 65793;
  *(a1 + 52) = 0;
  v28 = a1 + *(v23 + 48);
  *v28 = v22;
  *(v28 + 8) = v21 & 1;
  return result;
}

void *sub_1000C26F8()
{
  v1 = v0[2];

  sub_100009068(v0 + 3);
  v2 = v0[8];

  return v0;
}

uint64_t sub_1000C2728()
{
  sub_1000C26F8();

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t sub_1000C2780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1000028A0(v4 + v5, 1, 1, a4);
}

void sub_1000C27AC()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
}

uint64_t sub_1000C27F8(uint64_t a1)
{
  v2 = *(a1 + 44);

  return sub_1000E8524();
}

uint64_t sub_1000C2824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002A10(&qword_10012F140, &unk_1000EEF50);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for ForecastEntry(0);
    v8 = a1 + *(a3 + 20);
  }

  return sub_100005B30(v8, a2, v7);
}

uint64_t sub_1000C28E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100002A10(&qword_10012F140, &unk_1000EEF50);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for ForecastEntry(0);
    v10 = a1 + *(a4 + 20);
  }

  return sub_1000028A0(v10, a2, a2, v9);
}

uint64_t type metadata accessor for WindContentView()
{
  result = qword_100135180;
  if (!qword_100135180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C29F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000EA2C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002A10(&qword_10012F230, &qword_1000EEFF0);
  v10 = sub_1000069E4(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v20 - v13);
  sub_10000EBC4(v2, &v20 - v13, &qword_10012F230, &qword_1000EEFF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1000EBC44();
    sub_1000069E4(v15);
    return (*(v16 + 32))(a1, v14);
  }

  else
  {
    v18 = *v14;
    sub_1000EC1A4();
    v19 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1000C2BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v53 = sub_100002A10(&qword_1001351B8, &qword_1000F99C8);
  v3 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v54 = &v47 - v4;
  v61 = sub_100002A10(&qword_1001351C0, &qword_1000F99D0);
  v5 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v57 = &v47 - v6;
  v58 = sub_1000EB0B4();
  v56 = *(v58 - 8);
  v7 = *(v56 + 64);
  __chkstk_darwin(v58);
  v55 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_100002A10(&qword_1001351C8, &qword_1000F99D8);
  v9 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v11 = &v47 - v10;
  v51 = sub_100002A10(&qword_1001351D0, &qword_1000F99E0);
  v12 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v14 = &v47 - v13;
  v59 = sub_100002A10(&qword_1001351D8, &qword_1000F99E8);
  v15 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v17 = &v47 - v16;
  v18 = sub_1000EB514();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000EB314();
  v52 = *(v22 - 8);
  v23 = *(v52 + 64);
  __chkstk_darwin(v22);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000EBC44();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v48 = &v47 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = &v47 - v31;
  sub_1000C29F8(&v47 - v31);
  v49 = v27;
  v50 = v26;
  v33 = (*(v27 + 88))(v32, v26);
  if (v33 == enum case for WidgetFamily.accessoryCircular(_:))
  {
    v34 = a1 + *(type metadata accessor for WindContentView() + 20);
    sub_1000CC878(v21);
    sub_1000EB304();
    v35 = v52;
    (*(v52 + 16))(v14, v25, v22);
    swift_storeEnumTagMultiPayload();
    sub_1000C3578(&qword_1001351F0, &type metadata accessor for WindCircularContentView);
    sub_1000EA4A4();
    sub_10000EBC4(v17, v11, &qword_1001351D8, &qword_1000F99E8);
    swift_storeEnumTagMultiPayload();
    sub_1000C34BC();
    sub_1000C35C0();
    sub_1000EA4A4();
    sub_100008E48(v17, &qword_1001351D8, &qword_1000F99E8);
    return (*(v35 + 8))(v25, v22);
  }

  if (v33 == enum case for WidgetFamily.accessoryRectangular(_:))
  {
    v63 = 0;
    v64 = 0xE000000000000000;
    sub_1000EC3E4(57);
    v65._countAndFlagsBits = 0xD000000000000021;
    v65._object = 0x80000001000FB1A0;
    sub_1000EBF44(v65);
    v43 = v48;
    sub_1000C29F8(v48);
    sub_1000C3578(&qword_10012F208, &type metadata accessor for WidgetFamily);
    v44 = v50;
    v66._countAndFlagsBits = sub_1000EC5B4();
    sub_1000EBF44(v66);

    (*(v49 + 8))(v43, v44);
    v67._object = 0x80000001000FED90;
    v67._countAndFlagsBits = 0xD000000000000016;
    sub_1000EBF44(v67);
LABEL_9:
    result = sub_1000EC464();
    __break(1u);
    return result;
  }

  if (v33 != enum case for WidgetFamily.accessoryInline(_:))
  {
    v63 = 0;
    v64 = 0xE000000000000000;
    sub_1000EC3E4(58);
    v68._countAndFlagsBits = 0xD000000000000022;
    v68._object = 0x80000001000FB150;
    sub_1000EBF44(v68);
    v45 = v48;
    sub_1000C29F8(v48);
    sub_1000C3578(&qword_10012F208, &type metadata accessor for WidgetFamily);
    v46 = v50;
    v69._countAndFlagsBits = sub_1000EC5B4();
    sub_1000EBF44(v69);

    (*(v49 + 8))(v45, v46);
    v70._object = 0x80000001000FED90;
    v70._countAndFlagsBits = 0xD000000000000016;
    sub_1000EBF44(v70);
    goto LABEL_9;
  }

  v37 = v11;
  v38 = a1 + *(type metadata accessor for WindContentView() + 20);
  sub_1000CC878(v21);
  v39 = v55;
  sub_1000EB0A4();
  v40 = v56;
  v41 = v58;
  (*(v56 + 16))(v54, v39, v58);
  swift_storeEnumTagMultiPayload();
  sub_1000C3578(&qword_1001351E0, &type metadata accessor for WindInlineContentView);
  v42 = v57;
  sub_1000EA4A4();
  sub_10000EBC4(v42, v37, &qword_1001351C0, &qword_1000F99D0);
  swift_storeEnumTagMultiPayload();
  sub_1000C34BC();
  sub_1000C35C0();
  sub_1000EA4A4();
  sub_100008E48(v42, &qword_1001351C0, &qword_1000F99D0);
  return (*(v40 + 8))(v39, v41);
}

unint64_t sub_1000C34BC()
{
  result = qword_1001351E8;
  if (!qword_1001351E8)
  {
    sub_100002ABC(&qword_1001351D8, &qword_1000F99E8);
    sub_1000C3578(&qword_1001351F0, &type metadata accessor for WindCircularContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001351E8);
  }

  return result;
}

uint64_t sub_1000C3578(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000C35C0()
{
  result = qword_1001351F8;
  if (!qword_1001351F8)
  {
    sub_100002ABC(&qword_1001351C0, &qword_1000F99D0);
    sub_1000C3578(&qword_1001351E0, &type metadata accessor for WindInlineContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001351F8);
  }

  return result;
}

unint64_t sub_1000C3680()
{
  result = qword_100135200;
  if (!qword_100135200)
  {
    sub_100002ABC(&qword_100135208, &qword_1000F99F0);
    sub_1000C3704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135200);
  }

  return result;
}

unint64_t sub_1000C3704()
{
  result = qword_100135210;
  if (!qword_100135210)
  {
    sub_100002ABC(&qword_100135218, &qword_1000F99F8);
    sub_1000C34BC();
    sub_1000C35C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135210);
  }

  return result;
}

uint64_t sub_1000C3790()
{
  v0 = sub_100002A10(&qword_100134C88, &qword_1000F9FF0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v18[-v2];
  v4 = sub_1000E86A4();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_1000E84B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1000EBE54();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_1000E84C4();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v15 = sub_1000E8204();
  sub_10004B338(v15, qword_100145DB0);
  sub_100008CB8(v15, qword_100145DB0);
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    swift_once();
  }

  v16 = sub_100008CB8(v6, qword_100145E08);
  (*(v7 + 16))(v10, v16, v6);
  sub_1000E8644();
  sub_1000E84D4();
  sub_1000028A0(v3, 1, 1, v13);
  return sub_1000E81F4();
}

uint64_t sub_1000C3A64()
{
  v0 = sub_100002A10(&qword_100134CB0, &unk_1000F9870);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v15 - v2;
  v4 = sub_100002A10(&qword_100134C88, &qword_1000F9FF0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - v6;
  v8 = sub_1000E84C4();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  sub_100002A10(&qword_100135310, &qword_1000FA008);
  v10 = *(sub_100002A10(&qword_100135318, &qword_1000FA010) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  *(swift_allocObject() + 16) = xmmword_1000EFAD0;
  sub_1000E84A4();
  sub_1000E84A4();
  sub_1000028A0(v7, 0, 1, v8);
  sub_1000E80B4();
  v13 = sub_1000E80C4();
  sub_1000028A0(v3, 0, 1, v13);
  sub_1000E80E4();
  sub_1000E80F4();
  sub_1000C44D4();
  result = sub_1000EBDE4();
  qword_100145DC8 = result;
  return result;
}

uint64_t sub_1000C3CD4()
{
  v0 = sub_100002A10(&qword_100135320, &qword_1000FA018);
  sub_10004B338(v0, qword_100145DD0);
  sub_100008CB8(v0, qword_100145DD0);
  sub_100002A10(&qword_100135328, &qword_1000FA020);
  v1 = *(sub_100002A10(&qword_100135330, &qword_1000FA028) - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_1000EFAD0;
  sub_1000C3F40();
  sub_1000E8104();
  sub_100002A10(&qword_100135338, &unk_1000FA030);
  sub_1000C44D4();
  sub_1000EBDE4();
  return sub_1000E8114();
}

BOOL sub_1000C3E48(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100125138;
  v6._object = a2;
  v4 = sub_1000EC494(v3, v6);

  return v4 != 0;
}

unint64_t sub_1000C3E94()
{
  result = qword_100135230;
  if (!qword_100135230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135230);
  }

  return result;
}

BOOL sub_1000C3EF4@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C3E48(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_1000C3F40()
{
  result = qword_100135238;
  if (!qword_100135238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135238);
  }

  return result;
}

unint64_t sub_1000C3F98()
{
  result = qword_100135240;
  if (!qword_100135240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135240);
  }

  return result;
}

uint64_t sub_1000C3FEC@<X0>(uint64_t a1@<X8>)
{
  if (qword_10012EBE8 != -1)
  {
    swift_once();
  }

  v2 = sub_100002A10(&qword_100135320, &qword_1000FA018);
  v3 = sub_100008CB8(v2, qword_100145DD0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1000C40A0()
{
  result = qword_100135248;
  if (!qword_100135248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135248);
  }

  return result;
}

unint64_t sub_1000C40F8()
{
  result = qword_100135250;
  if (!qword_100135250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135250);
  }

  return result;
}

unint64_t sub_1000C4150()
{
  result = qword_100135258;
  if (!qword_100135258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135258);
  }

  return result;
}

uint64_t sub_1000C41A4()
{
  sub_1000C5A54();
  v1 = sub_1000E8084();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1000C4214()
{
  result = qword_100135260;
  if (!qword_100135260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135260);
  }

  return result;
}

unint64_t sub_1000C426C()
{
  result = qword_100135268;
  if (!qword_100135268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135268);
  }

  return result;
}

unint64_t sub_1000C42C4()
{
  result = qword_100135270;
  if (!qword_100135270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135270);
  }

  return result;
}

unint64_t sub_1000C431C()
{
  result = qword_100135278;
  if (!qword_100135278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135278);
  }

  return result;
}

uint64_t sub_1000C43D4(uint64_t a1)
{
  v2 = sub_1000C3F40();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000C4424()
{
  result = qword_100135280;
  if (!qword_100135280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135280);
  }

  return result;
}

unint64_t sub_1000C447C()
{
  result = qword_100135288;
  if (!qword_100135288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135288);
  }

  return result;
}

unint64_t sub_1000C44D4()
{
  result = qword_100135290;
  if (!qword_100135290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135290);
  }

  return result;
}

uint64_t sub_1000C4528()
{
  if (qword_10012EBE0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1000C4584(uint64_t a1)
{
  v2 = sub_1000C431C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000C45D4()
{
  result = qword_100135298;
  if (!qword_100135298)
  {
    sub_100002ABC(&qword_1001352A0, &qword_1000F9CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135298);
  }

  return result;
}

unint64_t sub_1000C464C()
{
  result = qword_1001352A8;
  if (!qword_1001352A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001352A8);
  }

  return result;
}

uint64_t sub_1000C46A4()
{
  v0 = sub_1000E86A4();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_1000E84B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000EBE54();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_1000E84C4();
  sub_10004B338(v9, qword_100145DE8);
  sub_100008CB8(v9, qword_100145DE8);
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    swift_once();
  }

  v10 = sub_100008CB8(v2, qword_100145E08);
  (*(v3 + 16))(v6, v10, v2);
  sub_1000E8644();
  return sub_1000E84D4();
}

uint64_t sub_1000C4900()
{
  v47 = sub_1000E8174();
  v0 = sub_1000090D4(v47);
  v45 = v1;
  v3 = *(v2 + 64);
  __chkstk_darwin(v0);
  sub_100006A10();
  v46 = v5 - v4;
  v6 = sub_100002A10(&qword_100134C80, &unk_1000F81F0);
  v7 = sub_100009210(v6);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v44 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v43 = v42 - v12;
  v13 = sub_100002A10(&qword_100134C88, &qword_1000F9FF0);
  v14 = sub_100009210(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v42 - v17;
  v19 = sub_1000E86A4();
  v20 = sub_100009210(v19);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  sub_100006A10();
  v23 = sub_1000E84B4();
  v24 = sub_1000090D4(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  __chkstk_darwin(v24);
  sub_100006A10();
  v31 = v30 - v29;
  v32 = sub_1000EBE54();
  v33 = sub_100009210(v32);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  sub_100006A10();
  v36 = sub_1000E84C4();
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  sub_100006A10();
  v42[1] = sub_100002A10(&qword_1001352F0, &unk_1000F9FF8);
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    swift_once();
  }

  v38 = sub_100008CB8(v23, qword_100145E08);
  v39 = *(v26 + 16);
  v39(v31, v38, v23);
  sub_1000E8644();
  sub_1000C5AB8();
  sub_1000EBE44();
  v39(v31, v38, v23);
  sub_1000E8644();
  sub_1000C5AB8();
  sub_1000028A0(v18, 0, 1, v36);
  v48 = 1;
  v40 = sub_1000E7ED4();
  sub_1000028A0(v43, 1, 1, v40);
  sub_1000028A0(v44, 1, 1, v40);
  (*(v45 + 104))(v46, enum case for InputConnectionBehavior.default(_:), v47);
  sub_1000C3F40();
  return sub_1000E7F24();
}

void (*sub_1000C4D38(void *a1))(void *a1)
{
  v3 = sub_1000B9500(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_1000E7EF4();
  return sub_1000B8C68;
}

unint64_t sub_1000C4D9C()
{
  result = qword_1001352B0;
  if (!qword_1001352B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001352B0);
  }

  return result;
}

uint64_t sub_1000C4DF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C59AC();
  v5 = sub_1000C5A54();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_1000C4E58()
{
  v0 = qword_100135220;

  return v0;
}

unint64_t sub_1000C4E94()
{
  result = qword_1001352B8;
  if (!qword_1001352B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001352B8);
  }

  return result;
}

unint64_t sub_1000C4EEC()
{
  result = qword_1001352C0;
  if (!qword_1001352C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001352C0);
  }

  return result;
}

uint64_t sub_1000C4FEC@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = a2(0);
  v8 = sub_100008CB8(v7, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1000C5090(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000C59AC();
  v7 = sub_1000C5A00();
  v8 = sub_1000C5A54();
  *v5 = v2;
  v5[1] = sub_1000C515C;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_1000C515C()
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

uint64_t sub_1000C5264@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000C4900();
  *a1 = result;
  return result;
}

uint64_t sub_1000C528C(uint64_t a1)
{
  v2 = sub_1000C4D9C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000C52C8()
{
  v1 = sub_1000E8014();
  v2 = sub_1000090D4(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_100006A10();
  sub_1000C4900();
  sub_1000C4D9C();
  sub_1000E8024();
  sub_1000E8004();
  v5 = sub_1000C5AE8();
  v6(v5);
  sub_100002A10(&qword_1001352D8, &qword_1000F9FD0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000EFAD0;
  *(v7 + 32) = v0;
  v8 = sub_1000E7FF4();

  return v8;
}

uint64_t sub_1000C540C()
{
  v0 = sub_100002A10(&qword_1001352E0, &qword_1000F9FD8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v14 - v3;
  sub_1000C4D9C();
  sub_1000E7FE4();
  v15 = sub_1000E7FA4();
  v5 = *(v1 + 8);
  v5(v4, v0);
  sub_1000E7FE4();
  v14 = sub_1000E7FA4();
  v5(v4, v0);
  sub_1000E7FE4();
  v6 = sub_1000E7FA4();
  v5(v4, v0);
  sub_1000E7FE4();
  v7 = sub_1000E7FA4();
  v5(v4, v0);
  sub_1000E7FE4();
  v8 = sub_1000E7FA4();
  v5(v4, v0);
  sub_1000E7FE4();
  v9 = sub_1000E7FA4();
  v5(v4, v0);
  sub_100002A10(&qword_1001352E8, &unk_1000F9FE0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000F9A00;
  v11 = v14;
  *(v10 + 32) = v15;
  *(v10 + 40) = v11;
  *(v10 + 48) = v6;
  *(v10 + 56) = v7;
  *(v10 + 64) = v8;
  *(v10 + 72) = v9;
  v12 = sub_1000E7F94();

  return v12;
}

uint64_t sub_1000C5724()
{
  v1 = sub_1000E7F84();
  v2 = sub_1000090D4(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_100006A10();
  sub_1000C4D9C();
  sub_1000E7F74();
  sub_1000E7F64();
  v5 = sub_1000C5AE8();
  v6(v5);
  sub_100002A10(&qword_1001352C8, &qword_1000F9FC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000EFAD0;
  *(v7 + 32) = v0;
  v8 = sub_1000E7F54();

  return v8;
}

uint64_t sub_1000C5844()
{
  v0 = sub_1000E7FC4();
  sub_100002A10(&qword_1001352D0, &qword_1000F9FC8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000EFAD0;
  *(v1 + 32) = v0;
  v2 = sub_1000E7FB4();

  return v2;
}

_BYTE *sub_1000C58DC(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x1000C5978);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000C59AC()
{
  result = qword_1001352F8;
  if (!qword_1001352F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001352F8);
  }

  return result;
}

unint64_t sub_1000C5A00()
{
  result = qword_100135300;
  if (!qword_100135300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135300);
  }

  return result;
}

unint64_t sub_1000C5A54()
{
  result = qword_100135308;
  if (!qword_100135308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135308);
  }

  return result;
}

uint64_t sub_1000C5AB8()
{

  return sub_1000E84D4();
}

uint64_t sub_1000C5AFC(uint64_t a1)
{
  sub_1000EA6E4();
  if (*(v1 + OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_widgetDisplaySize))
  {
    if (sub_1000027EC(*(v1 + OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_widgetDisplaySize)))
    {
      sub_1000EA6E4();

      sub_1000EA6C4();
    }

    else
    {
      sub_1000EA5F4();

      sub_1000EA6F4();
    }

    v3 = &enum case for ContentSizeCategory.extraExtraExtraLarge(_:);
    v4 = &enum case for ContentSizeCategory.extraExtraLarge(_:);
  }

  else
  {
    sub_1000EA6B4();

    sub_1000EA6C4();

    v3 = &enum case for ContentSizeCategory.extraExtraLarge(_:);
    v4 = &enum case for ContentSizeCategory.extraLarge(_:);
  }

  v5 = sub_1000C5D30(v3, v4);
  v6 = *(a1 + *(type metadata accessor for AggregateWeatherViewModel(0) + 28));

  v7 = sub_10009BFCC(v5, v6);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (v12)
  {
    sub_1000EC5F4();
    swift_unknownObjectRetain_n();
    v14 = swift_dynamicCastClass();
    if (!v14)
    {
      swift_unknownObjectRelease();
      v14 = &_swiftEmptyArrayStorage;
    }

    v15 = v14[2];

    if (__OFSUB__(v13 >> 1, v11))
    {
      __break(1u);
    }

    else if (v15 == (v13 >> 1) - v11)
    {
      v16 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v16)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    swift_unknownObjectRelease();
  }

  sub_1000D7DE4(v7, v9, v11, v13);
LABEL_14:
  swift_unknownObjectRelease();
LABEL_15:
  sub_1000C5E84(v1);
  sub_1000EA9C4();
  sub_1000EA9C4();
  sub_1000EB444();
}

uint64_t sub_1000C5D30(unsigned int *a1, unsigned int *a2)
{
  v4 = sub_1000EA3B4();
  v5 = sub_1000090D4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100006A10();
  v12 = v11 - v10;
  v13 = *(v7 + 104);
  v13(v11 - v10, *a1, v4);
  sub_1000CD388();
  LOBYTE(a1) = v14;
  v15 = *(v7 + 8);
  v15(v12, v4);
  if (a1)
  {
    return 4;
  }

  v13(v12, *a2, v4);
  sub_1000CD388();
  v18 = v17;
  v15(v12, v4);
  if (v18)
  {
    return 5;
  }

  else
  {
    return 6;
  }
}

uint64_t sub_1000C5E84(uint64_t a1)
{
  v2 = sub_1000EA3B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000EBC44();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, enum case for WidgetFamily.systemMedium(_:), v7);
  sub_100043230();
  sub_1000EBFB4();
  sub_1000EBFB4();
  (*(v8 + 8))(v11, v7);
  if (v16[1] == v16[0])
  {
    if (*(a1 + OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_widgetDisplaySize) >= 2u)
    {
      v12 = &enum case for ContentSizeCategory.extraExtraExtraLarge(_:);
    }

    else
    {
      v12 = &enum case for ContentSizeCategory.extraExtraLarge(_:);
    }

    (*(v3 + 104))(v6, *v12, v2);
    sub_1000CDAD0();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v14 = 1;
  }

  return v14 & 1;
}

uint64_t sub_1000C60CC(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v8 = sub_1000EA3B4();
  v9 = sub_1000090D4(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_100006A10();
  v16 = (v15 - v14);
  v17 = sub_1000EBC44();
  v18 = sub_1000090D4(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  sub_100006A10();
  v25 = v24 - v23;
  (*(v20 + 16))(v24 - v23, a1, v17);
  (*(v11 + 16))(v16, a2, v8);
  v26 = sub_100026CB4(v25, v16, a3, a4);
  (*(v11 + 8))(a2, v8);
  (*(v20 + 8))(a1, v17);
  return v26;
}

uint64_t type metadata accessor for HourlyBannerViewAttributesFactory()
{
  result = qword_100135368;
  if (!qword_100135368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C62E4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100002A10(&qword_10012F140, &unk_1000EEF50);
  v7 = sub_100006A04(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = sub_100002A10(&qword_100130570, &qword_1000F0D48);
    v12 = sub_100006A04(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      if (a2 == 254)
      {
        v16 = *(a1 + a3[6] + 8);
        if (v16 > 1)
        {
          return (v16 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      v17 = sub_100002A10(&qword_10012FE50, &qword_1000F0720);
      v18 = sub_100006A04(v17);
      if (*(v19 + 84) == a2)
      {
        v9 = v18;
        v14 = a3[7];
      }

      else
      {
        v20 = sub_100002A10(&qword_10012ED98, &unk_1000F2440);
        v21 = sub_100006A04(v20);
        if (*(v22 + 84) == a2)
        {
          v9 = v21;
          v14 = a3[8];
        }

        else
        {
          v9 = type metadata accessor for ForecastEntry(0);
          v14 = a3[11];
        }
      }
    }

    v10 = a1 + v14;
  }

  return sub_100005B30(v10, a2, v9);
}

uint64_t sub_1000C64B0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100002A10(&qword_10012F140, &unk_1000EEF50);
  v9 = sub_100006A04(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_100002A10(&qword_100130570, &qword_1000F0D48);
    result = sub_100006A04(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = result;
      v16 = a4[5];
    }

    else
    {
      if (a3 == 254)
      {
        *(a1 + a4[6] + 8) = -a2;
        return result;
      }

      v17 = sub_100002A10(&qword_10012FE50, &qword_1000F0720);
      v18 = sub_100006A04(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[7];
      }

      else
      {
        v20 = sub_100002A10(&qword_10012ED98, &unk_1000F2440);
        v21 = sub_100006A04(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[8];
        }

        else
        {
          v11 = type metadata accessor for ForecastEntry(0);
          v16 = a4[11];
        }
      }
    }

    v12 = a1 + v16;
  }

  return sub_1000028A0(v12, a2, a2, v11);
}

uint64_t type metadata accessor for SunriseSunsetContentView()
{
  result = qword_100135478;
  if (!qword_100135478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C66B4()
{
  sub_1000609B0(319, &qword_10012F1B0, &type metadata accessor for WidgetFamily);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1000609B0(319, &qword_1001305E0, &type metadata accessor for ContentSizeCategory);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_100005F48();
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_1000609B0(319, &unk_10012FEC0, &type metadata accessor for Font.Context);
        if (v8 > 0x3F)
        {
          return v7;
        }

        sub_1000609B0(319, &qword_10012EE28, &type metadata accessor for WidgetRenderingMode);
        if (v9 > 0x3F)
        {
          return v7;
        }

        else
        {
          v1 = type metadata accessor for ForecastEntry(319);
          if (v10 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

void sub_1000C6854()
{
  sub_100006A58();
  v3 = v0;
  sub_1000C9D68();
  v4 = sub_1000EA2C4();
  v5 = sub_1000090D4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100040480();
  v10 = sub_1000637E4();
  sub_1000069E4(v10);
  v12 = *(v11 + 64);
  sub_100009204();
  __chkstk_darwin(v13);
  sub_100019AE8();
  sub_1000C9A50(v3, v2, &qword_10012F230, &qword_1000EEFF0);
  if (sub_1000637FC() == 1)
  {
    v14 = sub_1000EBC44();
    sub_100026C1C(v14);
    v16 = *(v15 + 32);
    v17 = sub_1000637D8();
    v18(v17);
  }

  else
  {
    v19 = *v2;
    sub_1000EC1A4();
    v20 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();

    (*(v7 + 8))(v1, v4);
  }

  sub_100006A20();
}

void sub_1000C69F0()
{
  sub_100006A58();
  sub_1000C9D68();
  v1 = sub_1000EA2C4();
  v2 = sub_1000090D4(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_100040480();
  v5 = sub_1000637E4();
  sub_1000069E4(v5);
  v7 = *(v6 + 64);
  sub_100009204();
  __chkstk_darwin(v8);
  sub_100019AE8();
  v9 = type metadata accessor for SunriseSunsetContentView();
  sub_1000C9D48(*(v9 + 20));
  if (sub_1000637FC() == 1)
  {
    v10 = sub_1000EA3B4();
    sub_100026C1C(v10);
    v12 = *(v11 + 32);
    v13 = sub_1000637D8();
  }

  else
  {
    v15 = *v0;
    sub_1000EC1A4();
    v16 = sub_1000EA524();
    sub_100040528();

    sub_1000EA2B4();
    sub_100040588();

    v13 = sub_100040568();
  }

  v14(v13);
  sub_100006A20();
}

uint64_t sub_1000C6B60()
{
  v2 = sub_1000EA2C4();
  v3 = sub_1000090D4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100006A10();
  v8 = sub_1000C9D2C();
  sub_1000C9D74(*(v8 + 24));
  if (!v9)
  {

    sub_1000EC1A4();
    v10 = sub_1000EA524();
    sub_1000C9D88();

    sub_1000EA2B4();
    swift_getAtKeyPath();
    sub_100006530(v0, 0);
    (*(v5 + 8))(v1, v2);
    LOBYTE(v0) = v12;
  }

  return v0 & 1;
}

void sub_1000C6C7C()
{
  sub_100006A58();
  sub_1000C9D68();
  v1 = sub_1000EA2C4();
  v2 = sub_1000090D4(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_100040480();
  v5 = sub_1000637E4();
  sub_1000069E4(v5);
  v7 = *(v6 + 64);
  sub_100009204();
  __chkstk_darwin(v8);
  sub_100019AE8();
  v9 = type metadata accessor for SunriseSunsetContentView();
  sub_1000C9D48(*(v9 + 28));
  if (sub_1000637FC() == 1)
  {
    v10 = sub_1000EA694();
    sub_100026C1C(v10);
    v12 = *(v11 + 32);
    v13 = sub_1000637D8();
  }

  else
  {
    v15 = *v0;
    sub_1000EC1A4();
    v16 = sub_1000EA524();
    sub_100040528();

    sub_1000EA2B4();
    sub_100040588();

    v13 = sub_100040568();
  }

  v14(v13);
  sub_100006A20();
}

void sub_1000C6DEC()
{
  sub_100006A58();
  sub_1000C9D68();
  v1 = sub_1000EA2C4();
  v2 = sub_1000090D4(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_100040480();
  v5 = sub_1000637E4();
  sub_1000069E4(v5);
  v7 = *(v6 + 64);
  sub_100009204();
  __chkstk_darwin(v8);
  sub_100019AE8();
  v9 = type metadata accessor for SunriseSunsetContentView();
  sub_1000C9D48(*(v9 + 32));
  if (sub_1000637FC() == 1)
  {
    v10 = sub_1000EBC34();
    sub_100026C1C(v10);
    v12 = *(v11 + 32);
    v13 = sub_1000637D8();
  }

  else
  {
    v15 = *v0;
    sub_1000EC1A4();
    v16 = sub_1000EA524();
    sub_100040528();

    sub_1000EA2B4();
    sub_100040588();

    v13 = sub_100040568();
  }

  v14(v13);
  sub_100006A20();
}

uint64_t sub_1000C6F5C()
{
  v2 = sub_1000EA2C4();
  v3 = sub_1000090D4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100006A10();
  v8 = sub_1000C9D2C();
  sub_1000C9D74(*(v8 + 36));
  if (!v9)
  {

    sub_1000EC1A4();
    v10 = sub_1000EA524();
    sub_1000C9D88();

    sub_1000EA2B4();
    swift_getAtKeyPath();
    sub_100006530(v0, 0);
    (*(v5 + 8))(v1, v2);
    LOBYTE(v0) = v12;
  }

  return v0 & 1;
}

void sub_1000C7078()
{
  sub_100006A58();
  sub_1000C9D68();
  v1 = sub_1000EA2C4();
  v2 = sub_1000090D4(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_100040480();
  v5 = sub_1000637E4();
  sub_1000069E4(v5);
  v7 = *(v6 + 64);
  sub_100009204();
  __chkstk_darwin(v8);
  sub_100019AE8();
  v9 = type metadata accessor for SunriseSunsetContentView();
  sub_1000C9D48(*(v9 + 40));
  if (sub_1000637FC() == 1)
  {
    v10 = sub_1000EBC34();
    sub_100026C1C(v10);
    v12 = *(v11 + 32);
    v13 = sub_1000637D8();
  }

  else
  {
    v15 = *v0;
    sub_1000EC1A4();
    v16 = sub_1000EA524();
    sub_100040528();

    sub_1000EA2B4();
    sub_100040588();

    v13 = sub_100040568();
  }

  v14(v13);
  sub_100006A20();
}

uint64_t sub_1000C71E8()
{
  v0 = sub_1000EBC34();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v13 - v6;
  sub_1000C6DEC();
  sub_1000EBC14();
  v8 = sub_1000EBBF4();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  if (v8 & 1) != 0 || (sub_1000C6DEC(), sub_1000EBC04(), v10 = sub_1000EBBF4(), v9(v5, v0), v9(v7, v0), (v10) || (sub_1000C6F5C() & 1) != 0 || (sub_1000C6B60() & 1) == 0)
  {
    sub_1000EA9C4();
  }

  else
  {
    sub_1000EA9A4();
  }

  v11 = sub_1000EA9D4();

  return v11;
}

uint64_t sub_1000C73AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v131 = a2;
  v129 = sub_100002A10(&qword_1001354D0, &qword_1000FA0E0);
  v3 = *(*(v129 - 8) + 64);
  __chkstk_darwin(v129);
  v130 = &v97 - v4;
  v127 = sub_100002A10(&qword_1001354D8, &qword_1000FA0E8);
  v5 = *(*(v127 - 8) + 64);
  __chkstk_darwin(v127);
  v7 = &v97 - v6;
  v128 = sub_100002A10(&qword_1001354E0, &qword_1000FA0F0);
  v116 = *(v128 - 8);
  v8 = *(v116 + 64);
  __chkstk_darwin(v128);
  v115 = &v97 - v9;
  v125 = sub_100002A10(&qword_1001354E8, &qword_1000FA0F8);
  v10 = *(*(v125 - 8) + 64);
  __chkstk_darwin(v125);
  v126 = &v97 - v11;
  v114 = sub_1000EB6A4();
  v113 = *(v114 - 8);
  v12 = *(v113 + 64);
  __chkstk_darwin(v114);
  v112 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_1000EA504();
  v120 = *(v121 - 8);
  v14 = *(v120 + 64);
  __chkstk_darwin(v121);
  v119 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1000EAF44();
  v100 = *(v101 - 1);
  v16 = *(v100 + 64);
  __chkstk_darwin(v101);
  v99 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_100002A10(&qword_1001354F0, &qword_1000FA100);
  v18 = *(*(v103 - 8) + 64);
  __chkstk_darwin(v103);
  v104 = &v97 - v19;
  v108 = sub_100002A10(&qword_1001354F8, &qword_1000FA108);
  v107 = *(v108 - 8);
  v20 = *(v107 + 64);
  __chkstk_darwin(v108);
  v106 = &v97 - v21;
  v102 = sub_100002A10(&qword_100135500, &qword_1000FA110);
  v22 = *(*(v102 - 8) + 64);
  __chkstk_darwin(v102);
  v105 = &v97 - v23;
  v109 = sub_100002A10(&qword_100135508, &qword_1000FA118);
  v24 = *(*(v109 - 8) + 64);
  __chkstk_darwin(v109);
  v110 = &v97 - v25;
  v124 = sub_100002A10(&qword_100135510, &qword_1000FA120);
  v26 = *(*(v124 - 8) + 64);
  __chkstk_darwin(v124);
  v111 = &v97 - v27;
  v28 = sub_1000EB2B4();
  v118 = *(v28 - 8);
  v29 = v118[8];
  v30 = __chkstk_darwin(v28);
  v32 = &v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v117 = &v97 - v33;
  v34 = sub_1000EB874();
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v37 = &v97 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_100002A10(&qword_100135518, &unk_1000FA128);
  v38 = *(*(v123 - 8) + 64);
  __chkstk_darwin(v123);
  v122 = &v97 - v39;
  v40 = sub_1000EBC44();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  v43 = __chkstk_darwin(v40);
  v45 = &v97 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v47 = &v97 - v46;
  sub_1000C6854();
  if ((*(v41 + 88))(v47, v40) == enum case for WidgetFamily.systemSmall(_:))
  {
    v48 = a1 + *(type metadata accessor for SunriseSunsetContentView() + 44);
    sub_10001AC6C(v37);
    if (sub_100005B30(v37, 2, v28))
    {
      sub_1000C8B1C(__src);
      v49 = v127;
      v50 = &v7[*(v127 + 36)];
      v51 = *(sub_100002A10(&qword_100131FA8, &qword_1000F2FB0) + 28);
      v52 = enum case for ColorScheme.dark(_:);
      v53 = sub_1000E9F84();
      (*(*(v53 - 8) + 104))(v50 + v51, v52, v53);
      *v50 = swift_getKeyPath();
      memcpy(v7, __src, 0x50uLL);
      v54 = v119;
      v55 = sub_1000EA4F4();
      v118 = &v97;
      __chkstk_darwin(v55);
      sub_1000EABC4();
      v56 = type metadata accessor for BackgroundView(0);
      v57 = sub_1000C9148();
      v96 = sub_1000C9CE0(&qword_100130678, type metadata accessor for BackgroundView);
      v58 = v115;
      sub_1000EA904();
      (*(v120 + 8))(v54, v121);
      sub_100008E48(v7, &qword_1001354D8, &qword_1000FA0E8);
      v59 = v116;
      v60 = v128;
      (*(v116 + 16))(v126, v58, v128);
      swift_storeEnumTagMultiPayload();
      sub_1000C9240();
      v132 = v49;
      v133 = v56;
      v134 = v57;
      v135 = v96;
      swift_getOpaqueTypeConformance2();
      v61 = v122;
      sub_1000EA4A4();
      (*(v59 + 8))(v58, v60);
    }

    else
    {
      v62 = v118;
      v63 = v118[4];
      v64 = v117;
      v98 = v28;
      v63(v117, v37, v28);
      (v62[2])(v32, v64, v28);
      v65 = v99;
      sub_1000EAF34();
      v66 = sub_1000EABA4();
      v67 = __chkstk_darwin(v66);
      __chkstk_darwin(v67);
      sub_100002A10(&qword_100135558, &qword_1000FA168);
      sub_100002A10(&qword_100135560, &qword_1000FA170);
      sub_1000C9CE0(&qword_100135568, &type metadata accessor for SunriseSunsetView);
      sub_1000C9640();
      sub_1000C96FC();
      v68 = v104;
      v69 = v101;
      sub_1000EA954();
      (*(v100 + 8))(v65, v69);
      v70 = (v68 + *(v103 + 36));
      v71 = *(sub_100002A10(&qword_100131FA8, &qword_1000F2FB0) + 28);
      v72 = enum case for ColorScheme.dark(_:);
      v73 = sub_1000E9F84();
      (*(*(v73 - 8) + 104))(v70 + v71, v72, v73);
      *v70 = swift_getKeyPath();
      v74 = v119;
      v75 = sub_1000EA4F4();
      v101 = &v97;
      __chkstk_darwin(v75);
      sub_1000EABC4();
      v115 = type metadata accessor for BackgroundView(0);
      sub_1000C94D0();
      v116 = sub_1000C9CE0(&qword_100130678, type metadata accessor for BackgroundView);
      v76 = v106;
      sub_1000EA904();
      (*(v120 + 8))(v74, v121);
      sub_100008E48(v68, &qword_1001354F0, &qword_1000FA100);
      KeyPath = swift_getKeyPath();
      v78 = sub_1000C6B60();
      v79 = v113;
      v80 = &enum case for SunriseSunsetBackgroundStyle.opaque(_:);
      if ((v78 & 1) == 0)
      {
        v80 = &enum case for SunriseSunsetBackgroundStyle.transparent(_:);
      }

      v81 = v112;
      v82 = v114;
      (*(v113 + 104))(v112, *v80, v114);
      v83 = v105;
      v84 = &v105[*(v102 + 36)];
      v85 = sub_100002A10(&qword_100135588, &qword_1000FA178);
      (*(v79 + 32))(v84 + *(v85 + 28), v81, v82);
      *v84 = KeyPath;
      (*(v107 + 32))(v83, v76, v108);
      v86 = swift_getKeyPath();
      v87 = sub_1000C71E8();
      v88 = v110;
      sub_1000C99EC(v83, v110);
      v89 = (v88 + *(v109 + 36));
      *v89 = v86;
      v89[1] = v87;
      sub_100002A10(&qword_100130558, &qword_1000F0D00);
      v90 = swift_allocObject();
      *(v90 + 16) = xmmword_1000EFAD0;
      v91 = v117;
      *(v90 + 32) = sub_1000EB294();
      *(v90 + 40) = v92;
      sub_1000C92FC();
      sub_100005898();
      v93 = v111;
      sub_1000EA924();

      sub_100008E48(v88, &qword_100135508, &qword_1000FA118);
      sub_1000C9A50(v93, v126, &qword_100135510, &qword_1000FA120);
      swift_storeEnumTagMultiPayload();
      sub_1000C9240();
      v94 = sub_1000C9148();
      __src[0] = v127;
      __src[1] = v115;
      __src[2] = v94;
      __src[3] = v116;
      swift_getOpaqueTypeConformance2();
      v61 = v122;
      sub_1000EA4A4();
      sub_100008E48(v93, &qword_100135510, &qword_1000FA120);
      (v118[1])(v91, v98);
    }

    sub_1000C9A50(v61, v130, &qword_100135518, &unk_1000FA128);
    swift_storeEnumTagMultiPayload();
    sub_1000C980C();
    sub_1000EA4A4();
    return sub_100008E48(v61, &qword_100135518, &unk_1000FA128);
  }

  else
  {
    __src[0] = 0;
    __src[1] = 0xE000000000000000;
    sub_1000EC3E4(62);
    v137._countAndFlagsBits = 0xD000000000000022;
    v137._object = 0x80000001000FB150;
    sub_1000EBF44(v137);
    sub_1000C6854();
    sub_1000C9CE0(&qword_10012F208, &type metadata accessor for WidgetFamily);
    v138._countAndFlagsBits = sub_1000EC5B4();
    sub_1000EBF44(v138);

    (*(v41 + 8))(v45, v40);
    v139._object = 0x80000001000FEF10;
    v139._countAndFlagsBits = 0xD00000000000001ALL;
    sub_1000EBF44(v139);
    result = sub_1000EC464();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000C8598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v5 = sub_100002A10(&qword_1001355A8, &unk_1000FA250);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  v30 = sub_100002A10(&qword_100135560, &qword_1000FA170);
  v9 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v29 = &v28 - v10;
  v11 = sub_1000EBC34();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v28 - v17;
  if ((sub_1000C6B60() & 1) == 0)
  {
    goto LABEL_4;
  }

  v28 = a2 + *(type metadata accessor for SunriseSunsetContentView() + 44);
  v19 = *(type metadata accessor for ForecastEntry(0) + 24);
  if (*(v28 + v19 + *(type metadata accessor for WidgetContext() + 48) + 8) != 1)
  {
    goto LABEL_4;
  }

  sub_1000C7078();
  sub_1000EBC14();
  sub_1000C9CE0(&qword_100130698, &type metadata accessor for WidgetRenderingMode);
  v20 = sub_1000EBE24();
  v21 = *(v12 + 8);
  v21(v16, v11);
  v21(v18, v11);
  if ((v20 & 1) == 0)
  {
    sub_1000EA9A4();
    v24 = sub_1000EA9D4();

    v25 = sub_1000EAF44();
    v26 = v29;
    (*(*(v25 - 8) + 16))(v29, a1, v25);
    v27 = v26 + *(v30 + 36);
    *v27 = v24;
    *(v27 + 8) = xmmword_1000F0D30;
    *(v27 + 24) = 0x4000000000000000;
    sub_1000C9A50(v26, v8, &qword_100135560, &qword_1000FA170);
    swift_storeEnumTagMultiPayload();
    sub_1000C96FC();
    sub_1000C9CE0(&qword_100135568, &type metadata accessor for SunriseSunsetView);
    sub_1000EA4A4();
    return sub_100008E48(v26, &qword_100135560, &qword_1000FA170);
  }

  else
  {
LABEL_4:
    v22 = sub_1000EAF44();
    (*(*(v22 - 8) + 16))(v8, a1, v22);
    swift_storeEnumTagMultiPayload();
    sub_1000C96FC();
    sub_1000C9CE0(&qword_100135568, &type metadata accessor for SunriseSunsetView);
    return sub_1000EA4A4();
  }
}

double sub_1000C89E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((sub_1000C6B60() & 1) != 0 && (v6 = a2 + *(type metadata accessor for SunriseSunsetContentView() + 44), v7 = *(type metadata accessor for ForecastEntry(0) + 24), *(v6 + v7 + *(type metadata accessor for WidgetContext() + 48) + 8) == 1))
  {
    sub_1000EA9A4();
    v8 = sub_1000EA9D4();
  }

  else
  {
    v8 = sub_1000EA9B4();
  }

  v9 = sub_1000EAF44();
  (*(*(v9 - 8) + 16))(a3, a1, v9);
  v10 = a3 + *(sub_100002A10(&qword_100135560, &qword_1000FA170) + 36);
  *v10 = v8;
  result = 5.0;
  *(v10 + 8) = xmmword_1000F0D30;
  *(v10 + 24) = 0x4000000000000000;
  return result;
}

uint64_t sub_1000C8AF0(uint64_t *a1)
{
  v1 = *a1;

  return sub_1000EA0C4();
}

void *sub_1000C8B1C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = sub_1000EA694();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000EA3B4();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000EBC44();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ForecastEntry.Model(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SunriseSunsetContentView();
  v21 = v2 + *(v20 + 44);
  v22 = type metadata accessor for ForecastEntry(0);
  sub_1000C9A9C(v21 + *(v22 + 28), v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000C9B08(v19);
    v23 = 2;
  }

  else
  {
    v23 = *v19;
  }

  sub_1000C6854();
  sub_1000C69F0();
  v24 = *(v2 + *(v20 + 48));
  v25 = sub_1000C6B60();
  v26 = type metadata accessor for ErrorViewAttributesFactory();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  sub_10007653C(v15, v11, v24, v25 & 1);
  sub_1000C6C7C();
  sub_10007628C(v23, __src);

  (*(v4 + 8))(v7, v3);
  return memcpy(v31, __src, 0x50uLL);
}

void sub_1000C8DB0()
{
  sub_100006A58();
  v3 = v2;
  v4 = sub_1000C9D68();
  v5 = type metadata accessor for ForecastEntry.Model(v4);
  v6 = sub_1000069E4(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_100006A10();
  v9 = v3 + *(sub_1000C9D2C() + 44);
  v10 = type metadata accessor for ForecastEntry(0);
  v11 = *(v10 + 24);
  v12 = (v9 + v11 + *(type metadata accessor for WidgetContext() + 48));
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = type metadata accessor for BackgroundView(0);
  v16 = v15[5];
  sub_1000C9A9C(v9 + *(v10 + 28), v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10001B014(v1, v0 + v16);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = type metadata accessor for WeatherDataViewModel();
  sub_1000028A0(v0 + v16, v17, 1, v18);
  *v0 = v13;
  *(v0 + 8) = v14;
  v19 = v15[6];
  *(v0 + v19) = swift_getKeyPath();
  sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  swift_storeEnumTagMultiPayload();
  v20 = v0 + v15[7];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;

  sub_100006A20();
}

double sub_1000C8F1C@<D0>(char *a1@<X8>)
{
  memcpy(a1, v1, 0x50uLL);
  v3 = *(type metadata accessor for ErrorView() + 20);
  *&a1[v3] = swift_getKeyPath();
  sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  swift_storeEnumTagMultiPayload();
  sub_1000C9CA4(v1, &v7);
  v4 = sub_1000EA564();
  v5 = &a1[*(sub_100002A10(&qword_100130AA8, &qword_1000F12E0) + 36)];
  *v5 = v4;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  v5[40] = 1;
  return result;
}

uint64_t sub_1000C9050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t))
{
  v9 = a5(0);
  sub_1000090D4(v9);
  v11 = *(v10 + 64);
  sub_100009204();
  __chkstk_darwin(v12);
  sub_100019AE8();
  (*(v13 + 16))(v6, a1);
  return a6(v6);
}

unint64_t sub_1000C9148()
{
  result = qword_100135520;
  if (!qword_100135520)
  {
    sub_100002ABC(&qword_1001354D8, &qword_1000FA0E8);
    sub_1000C91EC();
    sub_1000C97B8(&qword_100135530, &qword_100131FA8, &qword_1000F2FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135520);
  }

  return result;
}

unint64_t sub_1000C91EC()
{
  result = qword_100135528;
  if (!qword_100135528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135528);
  }

  return result;
}

unint64_t sub_1000C9240()
{
  result = qword_100135538;
  if (!qword_100135538)
  {
    sub_100002ABC(&qword_100135510, &qword_1000FA120);
    sub_1000C92FC();
    sub_1000C9CE0(&qword_10012FBE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135538);
  }

  return result;
}

unint64_t sub_1000C92FC()
{
  result = qword_100135540;
  if (!qword_100135540)
  {
    sub_100002ABC(&qword_100135508, &qword_1000FA118);
    sub_1000C93A0();
    sub_1000C97B8(&qword_100135590, &qword_100135598, &qword_1000FA180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135540);
  }

  return result;
}

unint64_t sub_1000C93A0()
{
  result = qword_100135548;
  if (!qword_100135548)
  {
    sub_100002ABC(&qword_100135500, &qword_1000FA110);
    sub_100002ABC(&qword_1001354F0, &qword_1000FA100);
    type metadata accessor for BackgroundView(255);
    sub_1000C94D0();
    sub_1000C9CE0(&qword_100130678, type metadata accessor for BackgroundView);
    swift_getOpaqueTypeConformance2();
    sub_1000C97B8(&qword_100135580, &qword_100135588, &qword_1000FA178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135548);
  }

  return result;
}

unint64_t sub_1000C94D0()
{
  result = qword_100135550;
  if (!qword_100135550)
  {
    sub_100002ABC(&qword_1001354F0, &qword_1000FA100);
    sub_1000EAF44();
    sub_100002ABC(&qword_100135558, &qword_1000FA168);
    sub_100002ABC(&qword_100135560, &qword_1000FA170);
    sub_1000C9CE0(&qword_100135568, &type metadata accessor for SunriseSunsetView);
    sub_1000C9640();
    sub_1000C96FC();
    swift_getOpaqueTypeConformance2();
    sub_1000C97B8(&qword_100135530, &qword_100131FA8, &qword_1000F2FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135550);
  }

  return result;
}

unint64_t sub_1000C9640()
{
  result = qword_100135570;
  if (!qword_100135570)
  {
    sub_100002ABC(&qword_100135558, &qword_1000FA168);
    sub_1000C96FC();
    sub_1000C9CE0(&qword_100135568, &type metadata accessor for SunriseSunsetView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135570);
  }

  return result;
}

unint64_t sub_1000C96FC()
{
  result = qword_100135578;
  if (!qword_100135578)
  {
    sub_100002ABC(&qword_100135560, &qword_1000FA170);
    sub_1000C9CE0(&qword_100135568, &type metadata accessor for SunriseSunsetView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135578);
  }

  return result;
}

uint64_t sub_1000C97B8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002ABC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000C980C()
{
  result = qword_1001355A0;
  if (!qword_1001355A0)
  {
    sub_100002ABC(&qword_100135518, &unk_1000FA128);
    sub_1000C9240();
    sub_100002ABC(&qword_1001354D8, &qword_1000FA0E8);
    type metadata accessor for BackgroundView(255);
    sub_1000C9148();
    sub_1000C9CE0(&qword_100130678, type metadata accessor for BackgroundView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001355A0);
  }

  return result;
}

uint64_t sub_1000C99BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000EA0B4();
  *a1 = result;
  return result;
}

uint64_t sub_1000C99EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_100135500, &qword_1000FA110);
  sub_100026C1C(v4);
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1000C9A50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100006A38(a1, a2, a3, a4);
  sub_100026C1C(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_1000C9A9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForecastEntry.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C9B08(uint64_t a1)
{
  v2 = type metadata accessor for ForecastEntry.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000C9B78()
{
  result = qword_1001355B0;
  if (!qword_1001355B0)
  {
    sub_100002ABC(&qword_1001355B8, &qword_1000FA388);
    sub_1000C9BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001355B0);
  }

  return result;
}

unint64_t sub_1000C9BFC()
{
  result = qword_1001355C0;
  if (!qword_1001355C0)
  {
    sub_100002ABC(&qword_1001355C8, &qword_1000FA390);
    sub_1000C980C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001355C0);
  }

  return result;
}

uint64_t sub_1000C9CE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000C9D2C()
{

  return type metadata accessor for SunriseSunsetContentView();
}

uint64_t sub_1000C9D48@<X0>(uint64_t a1@<X8>)
{

  return sub_1000C9A50(v1 + a1, v2, v3, v4);
}

void sub_1000C9D74(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  v3 = *v2;
  v4 = *(v2 + 8);
}

uint64_t sub_1000C9D88()
{

  return sub_1000E9F14();
}

uint64_t sub_1000C9DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v5 = sub_100002A10(&qword_1001355D0, &qword_1000FA468);
  v6 = sub_1000090D4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v47 - v11;
  v13 = sub_100002A10(&qword_1001355D8, &qword_1000FA470);
  v49 = sub_1000090D4(v13);
  v50 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v49);
  v18 = &v47 - v17;
  v19 = sub_100002A10(&qword_1001355E0, &unk_1000FA478);
  v51 = sub_1000090D4(v19);
  v52 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v51);
  v48 = &v47 - v23;
  type metadata accessor for WeatherTimelineProvider();
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v54 = sub_1000D88B8(5, a1, a2);
  type metadata accessor for SunEventsContentView();
  sub_1000CA3DC(&qword_1001355E8, type metadata accessor for SunEventsContentView);
  sub_1000CA3DC(&qword_10012FAD0, type metadata accessor for WeatherTimelineProvider);
  sub_1000EBCD4();
  sub_1000EA354();
  v24 = sub_100015CA8();
  v26 = v25;
  LOBYTE(a1) = v27;
  v28 = sub_1000CA424();
  sub_1000EA474();
  sub_1000058EC(v24, v26, a1 & 1);

  (*(v8 + 8))(v12, v5);
  sub_1000EA354();
  v29 = sub_100015CA8();
  v31 = v30;
  LOBYTE(v12) = v32;
  v54 = v5;
  v55 = v28;
  sub_100015C78();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v48;
  v34 = v49;
  sub_1000EA444();
  sub_1000058EC(v29, v31, v12 & 1);

  (*(v50 + 8))(v18, v34);
  sub_100002A10(&qword_10012F6D8, &qword_1000F0480);
  v36 = sub_1000EBC44();
  sub_1000090D4(v36);
  v38 = v37;
  v40 = *(v39 + 72);
  v41 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1000F03E0;
  v43 = v42 + v41;
  v44 = *(v38 + 104);
  v44(v43, enum case for WidgetFamily.accessoryCircular(_:), v36);
  v44(v43 + v40, enum case for WidgetFamily.accessoryInline(_:), v36);
  v54 = v34;
  v55 = OpaqueTypeConformance2;
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  v45 = v51;
  sub_1000EA454();

  return (*(v52 + 8))(v35, v45);
}

uint64_t sub_1000CA328@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for SunEventsContentView();
  sub_1000159C8(a1, a2 + *(v4 + 20));
  *a2 = swift_getKeyPath();
  sub_100002A10(&qword_10012F230, &qword_1000EEFF0);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1000CA3A4@<X0>(void *a1@<X8>)
{
  result = sub_1000C9DA8();
  *a1 = 0xD000000000000028;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000CA3DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000CA424()
{
  result = qword_1001355F0;
  if (!qword_1001355F0)
  {
    sub_100002ABC(&qword_1001355D0, &qword_1000FA468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001355F0);
  }

  return result;
}

uint64_t sub_1000CA48C()
{
  sub_100002ABC(&qword_1001355E0, &unk_1000FA478);
  sub_100002ABC(&qword_1001355D8, &qword_1000FA470);
  sub_100002ABC(&qword_1001355D0, &qword_1000FA468);
  sub_1000CA424();
  sub_100015C78();
  swift_getOpaqueTypeConformance2();
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000CA598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v5 = sub_100002A10(&qword_1001355F8, &qword_1000FA540);
  v6 = sub_1000090D4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v47 - v11;
  v13 = sub_100002A10(&qword_100135600, &qword_1000FA548);
  v49 = sub_1000090D4(v13);
  v50 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v49);
  v18 = &v47 - v17;
  v19 = sub_100002A10(&qword_100135608, &unk_1000FA550);
  v51 = sub_1000090D4(v19);
  v52 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v51);
  v48 = &v47 - v23;
  type metadata accessor for WeatherTimelineProvider();
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v54 = sub_1000D88B8(0, a1, a2);
  type metadata accessor for UVIndexContentView();
  sub_1000CAB7C(&qword_100135610, type metadata accessor for UVIndexContentView);
  sub_1000CAB7C(&qword_10012FAD0, type metadata accessor for WeatherTimelineProvider);
  sub_1000EBCD4();
  sub_1000EA354();
  v24 = sub_100015CA8();
  v26 = v25;
  LOBYTE(a1) = v27;
  v28 = sub_1000CABC4();
  sub_1000EA474();
  sub_1000058EC(v24, v26, a1 & 1);

  (*(v8 + 8))(v12, v5);
  sub_1000EA354();
  v29 = sub_100015CA8();
  v31 = v30;
  LOBYTE(v12) = v32;
  v54 = v5;
  v55 = v28;
  sub_100015C78();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v48;
  v34 = v49;
  sub_1000EA444();
  sub_1000058EC(v29, v31, v12 & 1);

  (*(v50 + 8))(v18, v34);
  sub_100002A10(&qword_10012F6D8, &qword_1000F0480);
  v36 = sub_1000EBC44();
  sub_1000090D4(v36);
  v38 = v37;
  v40 = *(v39 + 72);
  v41 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1000F03E0;
  v43 = v42 + v41;
  v44 = *(v38 + 104);
  v44(v43, enum case for WidgetFamily.accessoryCircular(_:), v36);
  v44(v43 + v40, enum case for WidgetFamily.accessoryInline(_:), v36);
  v54 = v34;
  v55 = OpaqueTypeConformance2;
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  v45 = v51;
  sub_1000EA454();

  return (*(v52 + 8))(v35, v45);
}

uint64_t sub_1000CAAC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for UVIndexContentView();
  sub_1000159C8(a1, a2 + *(v4 + 20));
  *a2 = swift_getKeyPath();
  sub_100002A10(&qword_10012F230, &qword_1000EEFF0);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1000CAB44@<X0>(void *a1@<X8>)
{
  result = sub_1000CA550();
  *a1 = 0xD000000000000026;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000CAB7C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000CABC4()
{
  result = qword_100135618;
  if (!qword_100135618)
  {
    sub_100002ABC(&qword_1001355F8, &qword_1000FA540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135618);
  }

  return result;
}

uint64_t sub_1000CAC2C()
{
  sub_100002ABC(&qword_100135608, &unk_1000FA550);
  sub_100002ABC(&qword_100135600, &qword_1000FA548);
  sub_100002ABC(&qword_1001355F8, &qword_1000FA540);
  sub_1000CABC4();
  sub_100015C78();
  swift_getOpaqueTypeConformance2();
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000CACF0@<X0>(uint64_t a1@<X8>)
{
  v129 = a1;
  v2 = type metadata accessor for InstantWeatherViewModel();
  v3 = sub_1000069E4(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_100006A10();
  v8 = v7 - v6;
  v9 = sub_1000EBA94();
  v10 = sub_1000090D4(v9);
  v127 = v11;
  v128 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  sub_100006A10();
  v126 = v15 - v14;
  v16 = sub_1000E9184();
  v17 = sub_1000090D4(v16);
  v124 = v18;
  v125 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  sub_1000091AC();
  v120 = v21 - v22;
  __chkstk_darwin(v23);
  v121 = &v115[-v24];
  v25 = sub_1000E8784();
  v26 = sub_1000090D4(v25);
  v122 = v27;
  v123 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v26);
  sub_1000091AC();
  v118 = v30 - v31;
  __chkstk_darwin(v32);
  v119 = &v115[-v33];
  v34 = type metadata accessor for AggregateWeatherViewModel(0);
  v35 = sub_1000069E4(v34);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  sub_100006A10();
  v40 = v39 - v38;
  v41 = type metadata accessor for WeatherDataViewModel();
  v42 = sub_1000069E4(v41);
  v44 = *(v43 + 64);
  __chkstk_darwin(v42);
  sub_1000091AC();
  v47 = v45 - v46;
  __chkstk_darwin(v48);
  v50 = &v115[-v49];
  v51 = type metadata accessor for ForecastEntry.Model(0);
  v52 = sub_1000069E4(v51);
  v54 = *(v53 + 64);
  __chkstk_darwin(v52);
  sub_100006A10();
  v57 = (v56 - v55);
  v58 = type metadata accessor for ForecastEntry(0);
  sub_10000DA34(v1 + *(v58 + 28), v57, type metadata accessor for ForecastEntry.Model);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v83 = v129;
    if (*v57)
    {
      v84 = 1;
    }

    else
    {
      v84 = 2;
    }

    v85 = v128;
    return sub_1000028A0(v83, v84, 2, v85);
  }

  sub_100032F34(v57, v50, type metadata accessor for WeatherDataViewModel);
  sub_10000DA34(v50, v47, type metadata accessor for WeatherDataViewModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_100032F34(v47, v40, type metadata accessor for AggregateWeatherViewModel);
    if (qword_10012EB38 != -1)
    {
      sub_10000DC3C();
    }

    v117 = v50;
    v86 = sub_1000E9F64();
    sub_100008CB8(v86, qword_100145C10);
    v87 = sub_1000E9F44();
    v88 = sub_1000EC1B4();
    if (sub_100009178(v88))
    {
      *swift_slowAlloc() = 0;
      sub_100009134(&_mh_execute_header, v89, v90, "Making UltraViolet complication view model entry from aggregate weather");
    }

    v91 = *(v34 + 20);
    sub_1000E9A34();
    v92 = sub_1000E9984();
    v94 = v93;
    v95 = 1;
    if (v92 != sub_1000E9984() || v94 != v96)
    {
      v95 = sub_1000EC5D4();
    }

    v116 = v95;

    v98 = v119;
    sub_1000E9A74();
    v73 = v40 + *(v34 + 24);
    v99 = v121;
    sub_1000EB634();
    v100 = sub_1000CB50C();
    v101(v100);
    v103 = v124;
    v102 = v125;
    v104 = sub_1000CB55C(v124);
    v105(v104);
    sub_1000CB52C();
    (*(v103 + 8))(v99, v102);
    (*(v91 + 8))(v98, v34);
    v81 = type metadata accessor for AggregateWeatherViewModel;
    v82 = v40;
    goto LABEL_28;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_100032F34(v47, v8, type metadata accessor for InstantWeatherViewModel);
    if (qword_10012EB38 != -1)
    {
      sub_10000DC3C();
    }

    v117 = v50;
    v60 = sub_1000E9F64();
    v61 = sub_100008CB8(v60, qword_100145C10);
    v62 = sub_1000E9F44();
    v63 = sub_1000EC1B4();
    if (sub_100009178(v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v61, "Making UltraViolet complication view model entry from interpolated instant weather", v64, 2u);
    }

    v65 = *(v2 + 20);
    sub_1000E9A34();
    v66 = sub_1000E9984();
    v68 = v67;
    v69 = 1;
    if (v66 != sub_1000E9984() || v68 != v70)
    {
      v69 = sub_1000EC5D4();
    }

    v116 = v69;

    v72 = v119;
    sub_1000E9A74();
    v73 = v8 + *(v2 + 24);
    v74 = v121;
    sub_1000EB634();
    v75 = sub_1000CB50C();
    v76(v75);
    v78 = v124;
    v77 = v125;
    v79 = sub_1000CB55C(v124);
    v80(v79);
    sub_1000CB52C();
    (*(v78 + 8))(v74, v77);
    (*(v65 + 8))(v72, v66);
    v81 = type metadata accessor for InstantWeatherViewModel;
    v82 = v8;
LABEL_28:
    sub_100032F94(v82, v81);
    sub_100032F94(v117, type metadata accessor for WeatherDataViewModel);
    v106 = v129;
    v107 = v73;
    v108 = v128;
    (*(v127 + 32))(v129, v107, v128);
    v83 = v106;
    v84 = 0;
    v85 = v108;
    return sub_1000028A0(v83, v84, 2, v85);
  }

  if (qword_10012EB38 != -1)
  {
    sub_10000DC3C();
  }

  v110 = sub_1000E9F64();
  sub_100008CB8(v110, qword_100145C10);
  v111 = sub_1000E9F44();
  v112 = sub_1000EC194();
  if (sub_100009178(v112))
  {
    *swift_slowAlloc() = 0;
    sub_100009134(&_mh_execute_header, v113, v114, "Expected aggregate weather or instant but got sunrise/sunset");
  }

  sub_100032F94(v50, type metadata accessor for WeatherDataViewModel);
  sub_1000028A0(v129, 1, 2, v128);
  return sub_100032F94(v47, type metadata accessor for WeatherDataViewModel);
}

uint64_t sub_1000CB50C()
{
  v1 = *(v0 - 136);
  v2 = *(*(v0 - 144) + 16);
  return *(v0 - 176);
}

uint64_t sub_1000CB52C()
{
  v4 = *(v2 - 188) & 1;
  v5 = *(v2 - 112);

  return UltravioletComplicationViewModel.init(localWeather:timeZone:current:daily:hourly:)(v4, v0, v1, 0, 0);
}

uint64_t sub_1000CB574()
{
  v0 = sub_1000E93C4();
  v1 = sub_1000090D4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, enum case for WidgetNames.Forecast(_:), v0);
  v8 = sub_1000E93B4();
  (*(v3 + 8))(v7, v0);
  return v8;
}

uint64_t sub_1000CB690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a3;
  v5 = sub_100002A10(&qword_100135620, &qword_1000FA608);
  v60 = sub_1000090D4(v5);
  v61 = v6;
  v8 = *(v7 + 64);
  sub_100009204();
  __chkstk_darwin(v9);
  v11 = &v60 - v10;
  v64 = sub_100002A10(&qword_100135628, &qword_1000FA610);
  sub_1000090D4(v64);
  v66 = v12;
  v14 = *(v13 + 64);
  sub_100009204();
  __chkstk_darwin(v15);
  v17 = &v60 - v16;
  v18 = sub_100002A10(&qword_100135630, &qword_1000FA618);
  v67 = sub_1000090D4(v18);
  v68 = v19;
  v21 = *(v20 + 64);
  sub_100009204();
  __chkstk_darwin(v22);
  v62 = &v60 - v23;
  v24 = sub_100002A10(&qword_100135638, &qword_1000FA620);
  v69 = sub_1000090D4(v24);
  v70 = v25;
  v27 = *(v26 + 64);
  sub_100009204();
  __chkstk_darwin(v28);
  v65 = &v60 - v29;
  type metadata accessor for WeatherTimelineProvider();
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v30 = sub_1000D88B8(5, a1, a2);
  type metadata accessor for WeatherIntent();
  v72 = v30;
  v63 = v30;
  type metadata accessor for WidgetContentView(0);
  sub_1000CBF18(&qword_100135640, type metadata accessor for WidgetContentView);
  sub_1000CBF18(&qword_10012F6C8, type metadata accessor for WeatherTimelineProvider);

  sub_1000EBCC4();
  sub_1000EA354();
  v31 = sub_100015CA8();
  v33 = v32;
  v35 = v34;
  v36 = sub_1000CBF60();
  v37 = v60;
  sub_1000EA474();
  sub_1000058EC(v31, v33, v35 & 1);

  (*(v61 + 8))(v11, v37);
  sub_100002A10(&qword_10012F6D8, &qword_1000F0480);
  v38 = sub_1000EBC44();
  sub_1000090D4(v38);
  v40 = v39;
  v42 = *(v41 + 72);
  v43 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1000F7210;
  v45 = v44 + v43;
  v46 = *(v40 + 104);
  v46(v45, enum case for WidgetFamily.systemSmall(_:), v38);
  v46(v45 + v42, enum case for WidgetFamily.systemMedium(_:), v38);
  v46(v45 + 2 * v42, enum case for WidgetFamily.systemLarge(_:), v38);
  v72 = v37;
  v73 = v36;
  sub_100015C78();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v48 = v62;
  v49 = v64;
  sub_1000EA454();

  v50 = v49;
  (*(v66 + 8))(v17, v49);
  sub_1000EA354();
  v51 = sub_100015CA8();
  v53 = v52;
  LOBYTE(v40) = v54;
  v72 = v50;
  v73 = OpaqueTypeConformance2;
  sub_100015C48();
  v55 = swift_getOpaqueTypeConformance2();
  v56 = v65;
  v57 = v67;
  sub_1000EA444();
  sub_1000058EC(v51, v53, v40 & 1);

  (*(v68 + 8))(v48, v57);
  v72 = v57;
  v73 = v55;
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  v58 = v69;
  sub_1000EA494();

  return (*(v70 + 8))(v56, v58);
}

uint64_t sub_1000CBCD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for WidgetContentView(0);
  sub_1000159C8(a1, a2 + v4[9]);
  *a2 = swift_getKeyPath();
  sub_100002A10(&qword_10012F230, &qword_1000EEFF0);
  swift_storeEnumTagMultiPayload();
  *(a2 + v4[5]) = swift_getKeyPath();
  sub_100002A10(&qword_10012F6E0, &unk_1000FA260);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  *(a2 + v4[7]) = swift_getKeyPath();
  sub_100002A10(&qword_10012F6E8, &unk_1000F06A0);
  swift_storeEnumTagMultiPayload();
  *(a2 + v4[8]) = swift_getKeyPath();
  sub_100002A10(&qword_10012EEB0, &qword_1000EFC90);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v4[6];
  *v6 = KeyPath;
  v6[8] = 0;
  v7 = (a2 + v4[10]);
  type metadata accessor for CGRect(0);
  v8 = sub_1000EC014();
  *(v8 + 16) = 12;
  bzero((v8 + 32), 0x180uLL);
  sub_100002A10(&unk_10012EE48, qword_1000EED10);
  sub_1000EAA84();
  *v7 = v12;
  v7[1] = v13;
  v9 = v4[11];
  v10 = [objc_opt_self() mainScreen];
  [v10 bounds];

  result = sub_100002750();
  *(a2 + v9) = result;
  return result;
}

uint64_t sub_1000CBEE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000CB574();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000CBF18(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000CBF60()
{
  result = qword_100135648;
  if (!qword_100135648)
  {
    sub_100002ABC(&qword_100135620, &qword_1000FA608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135648);
  }

  return result;
}

uint64_t sub_1000CBFE0()
{
  sub_100002ABC(&qword_100135638, &qword_1000FA620);
  sub_100002ABC(&qword_100135630, &qword_1000FA618);
  sub_100002ABC(&qword_100135628, &qword_1000FA610);
  sub_100002ABC(&qword_100135620, &qword_1000FA608);
  sub_1000CBF60();
  sub_100015C78();
  sub_100015CC8();
  sub_100015C48();
  sub_100015CC8();
  sub_100015C60();
  sub_100015CC8();
  return sub_100015CC8();
}

uint64_t sub_1000CC0DC@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_100002A10(&qword_100135650, &unk_1000FA9D0);
  v2 = sub_1000090D4(v1);
  v26 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v7 = &v25 - v6;
  v8 = sub_100002A10(&qword_100135658, &unk_1000FA780);
  v9 = sub_1000090D4(v8);
  v27 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  v14 = &v25 - v13;
  v15 = sub_100002A10(&qword_100135660, &qword_1000FA9E0);
  v28 = sub_1000090D4(v15);
  v29 = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v28);
  v20 = &v25 - v19;
  swift_getKeyPath();
  sub_1000BB17C();
  sub_1000EBC84();
  sub_1000EA354();
  v21 = sub_1000CC738();
  sub_1000EA464();

  (*(v26 + 8))(v7, v1);
  sub_1000EA354();
  v31 = v1;
  v32 = v21;
  sub_100084FDC();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000EA434();

  (*(v27 + 8))(v14, v8);
  v31 = v8;
  v32 = OpaqueTypeConformance2;
  sub_1000CC860();
  swift_getOpaqueTypeConformance2();
  v23 = v28;
  sub_1000EA484();
  return (*(v29 + 8))(v20, v23);
}

uint64_t sub_1000CC484@<X0>(uint64_t a1@<X8>)
{
  sub_1000EA354();
  if (qword_10012EBF8 != -1)
  {
    swift_once();
  }

  v2 = qword_100145E00;
  result = sub_1000EA7F4();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1000CC564@<X0>(uint64_t a1@<X8>)
{
  sub_1000EA354();
  if (qword_10012EBF8 != -1)
  {
    swift_once();
  }

  v2 = qword_100145E00;
  result = sub_1000EA7F4();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1000CC640@<X0>(uint64_t a1@<X8>)
{
  sub_1000EA354();
  if (qword_10012EBF8 != -1)
  {
    swift_once();
  }

  v2 = qword_100145E00;
  result = sub_1000EA7F4();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

unint64_t sub_1000CC738()
{
  result = qword_100135668;
  if (!qword_100135668)
  {
    sub_100002ABC(&qword_100135650, &unk_1000FA9D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135668);
  }

  return result;
}

uint64_t sub_1000CC79C()
{
  sub_100002ABC(&qword_100135660, &qword_1000FA9E0);
  sub_100002ABC(&qword_100135658, &unk_1000FA780);
  sub_100002ABC(&qword_100135650, &unk_1000FA9D0);
  sub_1000CC738();
  sub_100084FDC();
  swift_getOpaqueTypeConformance2();
  sub_1000CC860();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000CC878@<X0>(uint64_t a1@<X8>)
{
  v146 = a1;
  v127 = type metadata accessor for InstantWeatherViewModel();
  v2 = sub_1000069E4(v127);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_10004B3F0();
  v6 = v5;
  v7 = sub_100002A10(&qword_100135670, &qword_1000FA7B8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v139 = v124 - v9;
  sub_10000921C();
  v145 = sub_1000EB434();
  v10 = sub_1000090D4(v145);
  v140 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  sub_10004B3F0();
  v144 = v14;
  v15 = sub_100002A10(&qword_10012FD70, &qword_1000F06B0);
  v16 = sub_1000090D4(v15);
  v137 = v17;
  v138 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16);
  sub_1000091AC();
  v131 = v20 - v21;
  __chkstk_darwin(v22);
  v134 = v124 - v23;
  v24 = sub_100002A10(&qword_100135678, &unk_1000FA7C0);
  v25 = sub_1000090D4(v24);
  v135 = v26;
  v136 = v25;
  v28 = *(v27 + 64);
  __chkstk_darwin(v25);
  sub_1000091AC();
  v130 = v29 - v30;
  __chkstk_darwin(v31);
  v142 = v124 - v32;
  sub_10000921C();
  v33 = sub_1000E9134();
  v34 = sub_1000090D4(v33);
  v132 = v35;
  v133 = v34;
  v37 = *(v36 + 64);
  __chkstk_darwin(v34);
  sub_10004B3F0();
  v128 = v38;
  sub_10000921C();
  v143 = sub_1000E8784();
  v39 = sub_1000090D4(v143);
  v129 = v40;
  v42 = *(v41 + 64);
  __chkstk_darwin(v39);
  sub_1000091AC();
  v141 = v43 - v44;
  __chkstk_darwin(v45);
  v47 = v124 - v46;
  v48 = type metadata accessor for AggregateWeatherViewModel(0);
  v49 = sub_1000069E4(v48);
  v51 = *(v50 + 64);
  __chkstk_darwin(v49);
  sub_10004B3F0();
  v53 = v52;
  sub_10000921C();
  v54 = type metadata accessor for WeatherDataViewModel();
  v55 = sub_1000069E4(v54);
  v57 = *(v56 + 64);
  __chkstk_darwin(v55);
  sub_1000091AC();
  v60 = v58 - v59;
  __chkstk_darwin(v61);
  v63 = v124 - v62;
  v64 = type metadata accessor for ForecastEntry.Model(0);
  v65 = sub_1000069E4(v64);
  v67 = *(v66 + 64);
  __chkstk_darwin(v65);
  v69 = v124 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for ForecastEntry(0);
  sub_10000DA34(v1 + *(v70 + 28), v69, type metadata accessor for ForecastEntry.Model);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v96 = v146;
    if (*v69)
    {
      v97 = 1;
    }

    else
    {
      v97 = 2;
    }

    v98 = v145;
    return sub_1000028A0(v96, v97, 2, v98);
  }

  sub_100032F34(v69, v63, type metadata accessor for WeatherDataViewModel);
  sub_10000DA34(v63, v60, type metadata accessor for WeatherDataViewModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v126 = v63;
    sub_100032F34(v60, v53, type metadata accessor for AggregateWeatherViewModel);
    if (qword_10012EB38 != -1)
    {
      sub_10000DC3C();
    }

    v99 = sub_1000E9F64();
    sub_100008CB8(v99, qword_100145C10);
    v100 = sub_1000E9F44();
    v101 = sub_1000EC1B4();
    if (os_log_type_enabled(v100, v101))
    {
      *swift_slowAlloc() = 0;
      sub_1000CD368(&_mh_execute_header, v102, v103, "Making Wind complication view model entry from aggregate weather");
    }

    v104 = v53 + *(v48 + 20);
    sub_1000E9A34();
    sub_1000E9984();
    if (v69 != sub_1000CD348() || v104 != v105)
    {
      LODWORD(v100) = sub_1000EC5D4();
    }

    v124[2] = v100;

    sub_1000E9A74();
    v107 = v53 + *(v48 + 24);
    v108 = v128;
    sub_1000EB624();
    v109 = v142;
    sub_1000E9124();
    LODWORD(v127) = sub_1000E9104();
    v110 = v134;
    sub_1000E9114();
    v111 = v129;
    (*(v129 + 16))(v141, v47, v143);
    v112 = sub_1000EADC4();
    sub_1000028A0(v139, 1, 1, v112);
    v113 = v135;
    v114 = *(v135 + 16);
    v125 = v47;
    v115 = v136;
    v114(v130, v109, v136);
    v116 = v137;
    v117 = *(v137 + 16);
    v118 = sub_1000CD334();
    v119 = v138;
    v120(v118);
    sub_1000CD320(&v147);
    sub_1000EB424();
    (*(v116 + 8))(v110, v119);
    (*(v113 + 8))(v142, v115);
    (*(v132 + 8))(v108, v133);
    (*(v111 + 8))(v125, v143);
    v94 = type metadata accessor for AggregateWeatherViewModel;
    v95 = &v148;
    goto LABEL_28;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v126 = v63;
    sub_100032F34(v60, v6, type metadata accessor for InstantWeatherViewModel);
    if (qword_10012EB38 != -1)
    {
      sub_10000DC3C();
    }

    v72 = sub_1000E9F64();
    sub_100008CB8(v72, qword_100145C10);
    v73 = sub_1000E9F44();
    v74 = sub_1000EC1B4();
    if (os_log_type_enabled(v73, v74))
    {
      *swift_slowAlloc() = 0;
      sub_1000CD368(&_mh_execute_header, v75, v76, "Making Wind complication view model entry from interpolated instant weather");
    }

    v77 = v127;
    v78 = v6 + *(v127 + 20);
    sub_1000E9A34();
    sub_1000E9984();
    if (v69 != sub_1000CD348() || v78 != v79)
    {
      LODWORD(v73) = sub_1000EC5D4();
    }

    v124[4] = v73;

    v125 = v47;
    sub_1000E9A74();
    v81 = v6 + *(v77 + 24);
    v82 = v128;
    sub_1000EB624();
    v83 = v142;
    sub_1000E9124();
    LODWORD(v127) = sub_1000E9104();
    v84 = v134;
    sub_1000E9114();
    v85 = v129;
    (*(v129 + 16))(v141, v47, v143);
    v86 = sub_1000EADC4();
    sub_1000028A0(v139, 1, 1, v86);
    v87 = v135;
    v88 = v136;
    (*(v135 + 16))(v130, v83, v136);
    v89 = v137;
    v90 = *(v137 + 16);
    v91 = sub_1000CD334();
    v92 = v138;
    v93(v91);
    sub_1000CD320(&v148);
    sub_1000EB424();
    (*(v89 + 8))(v84, v92);
    (*(v87 + 8))(v142, v88);
    (*(v132 + 8))(v82, v133);
    (*(v85 + 8))(v125, v143);
    v94 = type metadata accessor for InstantWeatherViewModel;
    v95 = &v147;
LABEL_28:
    sub_100032F94(*(v95 - 32), v94);
    sub_100032F94(v126, type metadata accessor for WeatherDataViewModel);
    v122 = v145;
    v121 = v146;
    (*(v140 + 32))(v146, v144, v145);
    v96 = v121;
    v97 = 0;
    v98 = v122;
    return sub_1000028A0(v96, v97, 2, v98);
  }

  sub_100032F94(v63, type metadata accessor for WeatherDataViewModel);
  sub_1000028A0(v146, 1, 2, v145);
  return sub_100032F94(v60, type metadata accessor for WeatherDataViewModel);
}

uint64_t sub_1000CD320@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256) & 1;
  v3 = *(v1 - 112);
  v4 = *(v1 - 136);
  return result;
}

uint64_t sub_1000CD348()
{

  return sub_1000E9984();
}

void sub_1000CD368(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_1000CD388()
{
  sub_100006A58();
  v2 = sub_1000EA3B4();
  v3 = sub_1000090D4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_1000CFFA0();
  v9 = __chkstk_darwin(v8);
  v17 = sub_1000CFF4C(v9, v10, v11, v12, v13, v14, v15, v16, v29);
  v1(v17);
  v18 = sub_1000CFFD0();
  v19 = v0(v18);
  v20 = enum case for ContentSizeCategory.extraSmall(_:);
  if (v19 != enum case for ContentSizeCategory.extraSmall(_:) && v19 != enum case for ContentSizeCategory.small(_:) && v19 != enum case for ContentSizeCategory.medium(_:) && v19 != enum case for ContentSizeCategory.large(_:) && v19 != enum case for ContentSizeCategory.extraLarge(_:) && v19 != enum case for ContentSizeCategory.extraExtraLarge(_:) && v19 != enum case for ContentSizeCategory.extraExtraExtraLarge(_:) && v19 != enum case for ContentSizeCategory.accessibilityMedium(_:) && v19 != enum case for ContentSizeCategory.accessibilityLarge(_:) && v19 != enum case for ContentSizeCategory.accessibilityExtraLarge(_:) && v19 != enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) && v19 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
  {
    v24 = sub_1000CFFE4();
    v25(v24);
  }

  v21 = sub_1000D0004();
  v1(v21);
  v22 = sub_100095764();
  v23 = v0(v22);
  if (v23 != v20 && v23 != enum case for ContentSizeCategory.small(_:) && v23 != enum case for ContentSizeCategory.medium(_:) && v23 != enum case for ContentSizeCategory.large(_:) && v23 != enum case for ContentSizeCategory.extraLarge(_:) && v23 != enum case for ContentSizeCategory.extraExtraLarge(_:) && v23 != enum case for ContentSizeCategory.extraExtraExtraLarge(_:) && v23 != enum case for ContentSizeCategory.accessibilityMedium(_:) && v23 != enum case for ContentSizeCategory.accessibilityLarge(_:) && v23 != enum case for ContentSizeCategory.accessibilityExtraLarge(_:) && v23 != enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) && v23 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
  {
    v26 = *(v5 + 8);
    v27 = sub_100095764();
    v28(v27);
  }

  sub_100006A20();
}

void sub_1000CD72C()
{
  sub_100006A58();
  v2 = sub_1000EA3B4();
  v3 = sub_1000090D4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_1000CFFA0();
  v9 = __chkstk_darwin(v8);
  v17 = sub_1000CFF4C(v9, v10, v11, v12, v13, v14, v15, v16, v29);
  v1(v17);
  v18 = sub_1000CFFD0();
  v19 = v0(v18);
  v20 = enum case for ContentSizeCategory.extraSmall(_:);
  if (v19 != enum case for ContentSizeCategory.extraSmall(_:) && v19 != enum case for ContentSizeCategory.small(_:) && v19 != enum case for ContentSizeCategory.medium(_:) && v19 != enum case for ContentSizeCategory.large(_:) && v19 != enum case for ContentSizeCategory.extraLarge(_:) && v19 != enum case for ContentSizeCategory.extraExtraLarge(_:) && v19 != enum case for ContentSizeCategory.extraExtraExtraLarge(_:) && v19 != enum case for ContentSizeCategory.accessibilityMedium(_:) && v19 != enum case for ContentSizeCategory.accessibilityLarge(_:) && v19 != enum case for ContentSizeCategory.accessibilityExtraLarge(_:) && v19 != enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) && v19 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
  {
    v24 = sub_1000CFFE4();
    v25(v24);
  }

  v21 = sub_1000D0004();
  v1(v21);
  v22 = sub_100095764();
  v23 = v0(v22);
  if (v23 != v20 && v23 != enum case for ContentSizeCategory.small(_:) && v23 != enum case for ContentSizeCategory.medium(_:) && v23 != enum case for ContentSizeCategory.large(_:) && v23 != enum case for ContentSizeCategory.extraLarge(_:) && v23 != enum case for ContentSizeCategory.extraExtraLarge(_:) && v23 != enum case for ContentSizeCategory.extraExtraExtraLarge(_:) && v23 != enum case for ContentSizeCategory.accessibilityMedium(_:) && v23 != enum case for ContentSizeCategory.accessibilityLarge(_:) && v23 != enum case for ContentSizeCategory.accessibilityExtraLarge(_:) && v23 != enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) && v23 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
  {
    v26 = *(v5 + 8);
    v27 = sub_100095764();
    v28(v27);
  }

  sub_100006A20();
}

void sub_1000CDAD0()
{
  sub_100006A58();
  v2 = sub_1000EA3B4();
  v3 = sub_1000090D4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_1000CFFA0();
  v9 = __chkstk_darwin(v8);
  v17 = sub_1000CFF4C(v9, v10, v11, v12, v13, v14, v15, v16, v29);
  v1(v17);
  v18 = sub_1000CFFD0();
  v19 = v0(v18);
  v20 = enum case for ContentSizeCategory.extraSmall(_:);
  if (v19 != enum case for ContentSizeCategory.extraSmall(_:) && v19 != enum case for ContentSizeCategory.small(_:) && v19 != enum case for ContentSizeCategory.medium(_:) && v19 != enum case for ContentSizeCategory.large(_:) && v19 != enum case for ContentSizeCategory.extraLarge(_:) && v19 != enum case for ContentSizeCategory.extraExtraLarge(_:) && v19 != enum case for ContentSizeCategory.extraExtraExtraLarge(_:) && v19 != enum case for ContentSizeCategory.accessibilityMedium(_:) && v19 != enum case for ContentSizeCategory.accessibilityLarge(_:) && v19 != enum case for ContentSizeCategory.accessibilityExtraLarge(_:) && v19 != enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) && v19 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
  {
    v24 = sub_1000CFFE4();
    v25(v24);
  }

  v21 = sub_1000D0004();
  v1(v21);
  v22 = sub_100095764();
  v23 = v0(v22);
  if (v23 != v20 && v23 != enum case for ContentSizeCategory.small(_:) && v23 != enum case for ContentSizeCategory.medium(_:) && v23 != enum case for ContentSizeCategory.large(_:) && v23 != enum case for ContentSizeCategory.extraLarge(_:) && v23 != enum case for ContentSizeCategory.extraExtraLarge(_:) && v23 != enum case for ContentSizeCategory.extraExtraExtraLarge(_:) && v23 != enum case for ContentSizeCategory.accessibilityMedium(_:) && v23 != enum case for ContentSizeCategory.accessibilityLarge(_:) && v23 != enum case for ContentSizeCategory.accessibilityExtraLarge(_:) && v23 != enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) && v23 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
  {
    v26 = *(v5 + 8);
    v27 = sub_100095764();
    v28(v27);
  }

  sub_100006A20();
}

uint64_t sub_1000CDE74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v150 = a3;
  v151 = a1;
  v10 = sub_100002A10(&qword_10012EF30, &unk_1000F14F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  sub_10000D45C();
  v142 = v12;
  sub_10004B6F4();
  __chkstk_darwin(v13);
  v143 = &v128 - v14;
  sub_10004B6F4();
  __chkstk_darwin(v15);
  v140 = &v128 - v16;
  sub_10004B6F4();
  __chkstk_darwin(v17);
  v148 = &v128 - v18;
  v146 = sub_1000EA3B4();
  v19 = sub_1000090D4(v146);
  v135 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  sub_100006A10();
  v144 = v24 - v23;
  v25 = sub_1000EBC44();
  v26 = sub_1000090D4(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v26);
  sub_10000D45C();
  v147 = v31;
  sub_10004B6F4();
  __chkstk_darwin(v32);
  v34 = &v128 - v33;
  v35 = OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_widgetFamily;
  v152 = *(v28 + 104);
  v153 = v28 + 104;
  v152(&v128 - v33, enum case for WidgetFamily.systemMedium(_:), v25);
  sub_100043230();
  v156 = v35;
  sub_1000EBFB4();
  sub_1000CFF80();
  v145 = v28;
  v154 = *(v28 + 8);
  v155 = v28 + 8;
  v154(v34, v25);
  if (v158 == v157)
  {
    v141 = 1;
  }

  else
  {
    sub_1000CD72C();
    v141 = v36;
  }

  sub_1000CFFF8();
  v37();
  sub_1000CFF28();
  sub_1000CFF80();
  v38 = sub_1000CFF70();
  v39(v38);
  sub_100074A7C();
  v40 = !v90 || *(v150 + 48) - 6 < 0xFFFFFFFD;
  v139 = v40;
  sub_1000CFFF8();
  v41();
  sub_1000CFF28();
  sub_1000CFF80();
  v42 = sub_1000CFF70();
  v43(v42);
  v137 = v158;
  v136 = v157;
  v138 = sub_1000CE9B8(v6);
  v44 = *(v6 + OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_widgetDisplaySize);
  v134 = v44;
  v45 = v6;
  if ((v44 - 2) >= 2)
  {
    if (v44)
    {
      v46 = sub_1000CEF54();
    }

    else
    {
      v46 = sub_1000CECDC();
    }
  }

  else
  {
    v46 = sub_1000CF2D0();
  }

  v47 = v46;
  v149 = enum case for WidgetFamily.systemLarge(_:);
  sub_1000CFFF8();
  v48();
  sub_1000CFF28();
  sub_1000CFF80();
  v49 = sub_1000CFF70();
  v50(v49);
  sub_100074A7C();
  if (v90 && *(v150 + 48) - 2 <= 3)
  {
    v51 = __OFSUB__(v47--, 1);
    if (v51)
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }
  }

  v52 = sub_1000CFFBC();
  v53(v52);
  sub_1000CFF28();
  sub_1000CFF80();
  v54 = sub_1000CFF70();
  v55(v54);
  sub_100074A7C();
  v133 = a2;
  if (v90)
  {
    v45 = v6;
    if (sub_1000CF650())
    {
      v51 = __OFSUB__(v47--, 1);
      if (v51)
      {
        goto LABEL_64;
      }
    }
  }

  v132 = a4;
  sub_1000CFFF8();
  v56();
  sub_1000CFF28();
  sub_1000CFF80();
  v57 = sub_1000CFF70();
  v58(v57);
  v60 = v157;
  v59 = v158;
  v61 = *(v151 + *(type metadata accessor for AggregateWeatherViewModel(0) + 32));

  v131 = v47;
  if (v59 != v60)
  {
    v45 = sub_1000D1344(1, v61);
    v70 = v69;
    v72 = v71;
    v74 = v73;
    swift_unknownObjectRetain();
    v76 = sub_10009BF2C(v47, v45, v70, v72, v74);
    a2 = v77;
    a4 = v78;
    if (v78)
    {
      v129 = v75;
      v83 = sub_1000EC5F4();
      swift_unknownObjectRetain_n();
      v130 = v83;
      v84 = swift_dynamicCastClass();
      if (!v84)
      {
        swift_unknownObjectRelease();
        v84 = &_swiftEmptyArrayStorage;
      }

      v85 = v84[2];

      if (__OFSUB__(a4 >> 1, a2))
      {
        goto LABEL_66;
      }

      if (v85 == (a4 >> 1) - a2)
      {
        v79 = swift_dynamicCastClass();
        if (!v79)
        {
          swift_unknownObjectRelease();
          v66 = &_swiftEmptyArrayStorage;
          goto LABEL_37;
        }

LABEL_36:
        v66 = v79;
LABEL_37:
        v67 = v148;
        v68 = v145;
        swift_unknownObjectRelease();
        goto LABEL_38;
      }

      swift_unknownObjectRelease();
      v75 = v129;
    }

    sub_1000D7DB8(v76, v75, a2, a4);
    goto LABEL_36;
  }

  v45 = sub_10009BF00(v47, v61);
  a2 = v63;
  a4 = v64;
  if ((v64 & 1) == 0)
  {
LABEL_22:
    sub_1000D7DB8(v45, v62, a2, a4);
    v66 = v65;
    v67 = v148;
    v68 = v145;
LABEL_38:
    v82 = v146;
    goto LABEL_39;
  }

  v130 = v62;
  sub_1000EC5F4();
  swift_unknownObjectRetain_n();
  v80 = swift_dynamicCastClass();
  if (!v80)
  {
    swift_unknownObjectRelease();
    v80 = &_swiftEmptyArrayStorage;
  }

  v81 = v80[2];

  if (__OFSUB__(a4 >> 1, a2))
  {
    goto LABEL_65;
  }

  if (v81 != (a4 >> 1) - a2)
  {
LABEL_67:
    swift_unknownObjectRelease();
    v62 = v130;
    goto LABEL_22;
  }

  v66 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v67 = v148;
  v68 = v145;
  v82 = v146;
  if (v66)
  {
    goto LABEL_40;
  }

  v66 = &_swiftEmptyArrayStorage;
LABEL_39:
  swift_unknownObjectRelease();
LABEL_40:
  v146 = v66;

  LODWORD(v130) = sub_1000CFBB8();
  v86 = v135;
  v87 = v144;
  (*(v135 + 16))(v144, v6 + OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_sizeCategory, v82);
  v88 = (*(v86 + 88))(v87, v82);
  if (v88 == enum case for ContentSizeCategory.extraLarge(_:))
  {
    v89 = 36;
  }

  else
  {
    v90 = v88 == enum case for ContentSizeCategory.extraExtraLarge(_:) || v88 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:);
    if (v90)
    {
      v89 = 40;
    }

    else
    {
      (*(v86 + 8))(v144, v82);
      v89 = 32;
    }
  }

  v144 = v89;
  v91 = v67;
  v135 = sub_1000EA6E4();
  if (v134)
  {
    v92 = sub_1000EA6F4();
    v93 = sub_1000CFFBC();
    v94(v93);

    sub_1000CFF28();
    sub_1000CFF80();
    v95 = sub_1000CFF70();
    v96(v95);
    sub_100074A7C();
    if (v90)
    {
      v97 = sub_1000EA5F4();
      goto LABEL_55;
    }
  }

  else
  {
    v92 = sub_1000EA6C4();
    v98 = sub_1000CFFBC();
    v99(v98);

    sub_1000CFF28();
    sub_1000CFF80();
    v100 = sub_1000CFF70();
    v101(v100);
    sub_100074A7C();
    if (!v90)
    {
      v97 = sub_1000EA6F4();
      goto LABEL_55;
    }
  }

  v97 = sub_1000EA5C4();
LABEL_55:
  v102 = v97;

  sub_1000EA664();
  v104 = v103;
  (*(v68 + 16))(v147, v6 + v156, v25);
  v105 = *(v150 + 48);
  LODWORD(v156) = *(v150 + 49);
  LODWORD(v155) = sub_1000CF6EC(v146, v6);

  v106 = sub_1000CF8E0();
  v107 = v140;
  sub_100044E7C();
  v108 = v107;
  v109 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  if (sub_100005B30(v108, 1, v109) == 1)
  {
    sub_10007EE48(v108);
    v110 = 1;
  }

  else
  {
    sub_1000E8324();
    (*(*(v109 - 8) + 8))(v108, v109);
    v110 = 0;
  }

  sub_1000028A0(v91, v110, 1, v109);
  v111 = v142;
  sub_100045164();
  if (sub_100005B30(v111, 1, v109) == 1)
  {

    sub_10007EE48(v111);
    v112 = 1;
    v113 = v143;
  }

  else
  {
    v114 = v111;
    v113 = v143;
    sub_1000E8324();

    v115 = v114;
    v68 = v145;
    (*(*(v109 - 8) + 8))(v115, v109);
    v112 = 0;
  }

  sub_1000028A0(v113, v112, 1, v109);
  v116 = v137 == v136;
  (*(v68 + 32))(a5, v147, v25);
  v117 = type metadata accessor for DailyViewAttributes();
  *(a5 + v117[5]) = v146;
  v118 = (a5 + v117[6]);
  *v118 = v105;
  v118[1] = v156;
  sub_1000D0020(v117[7]);
  sub_1000D0014(*(v119 + 32));
  sub_1000D0014(*(v120 + 36));
  *(a5 + v121[10]) = v106 & 1;
  *(a5 + v121[11]) = v144;
  sub_1000D0014(v121[12]);
  *(a5 + v122[13]) = v139;
  *(a5 + v122[14]) = v116;
  sub_1000D0014(v122[15]);
  sub_1000D0020(*(v123 + 64));
  *(a5 + v124[17]) = v92;
  *(a5 + v124[18]) = v102;
  sub_1000D0020(v124[19]);
  *(a5 + *(v125 + 80)) = v104;
  sub_1000D0020(*(v125 + 84));
  sub_1000CFEB8(v148, a5 + *(v126 + 88));
  return sub_1000CFEB8(v113, a5 + v117[23]);
}

uint64_t sub_1000CE9B8(uint64_t a1)
{
  v2 = sub_1000EA3B4();
  v3 = *(v2 - 8);
  v30 = v2;
  v31 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000EBC44();
  v8 = *(v7 - 8);
  v9 = v8[8];
  __chkstk_darwin(v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v8[13];
  v12(v11, enum case for WidgetFamily.systemLarge(_:), v7);
  sub_100043230();
  v32 = a1;
  sub_1000EBFB4();
  sub_1000EBFB4();
  v13 = v8[1];
  v13(v11, v7);
  if (v34 == v33)
  {
    v14 = v30;
    v15 = v31;
    (*(v31 + 104))(v6, enum case for ContentSizeCategory.extraLarge(_:), v30);
    sub_1000CD388();
    v17 = v16;
    (*(v15 + 8))(v6, v14);
    v18 = (v17 & 1) == 0;
    v19 = 24;
    v20 = 16;
  }

  else
  {
    v29 = v6;
    v21 = v31;
    v12(v11, enum case for WidgetFamily.systemSmall(_:), v7);
    sub_1000EBFB4();
    sub_1000EBFB4();
    v13(v11, v7);
    if (v34 == v33)
    {
      return 4;
    }

    v23 = v21;
    v24 = *(v21 + 104);
    v26 = v29;
    v25 = v30;
    v24(v29, enum case for ContentSizeCategory.large(_:), v30);
    sub_1000CD388();
    v28 = v27;
    (*(v23 + 8))(v26, v25);
    v18 = (v28 & 1) == 0;
    v19 = 14;
    v20 = 12;
  }

  if (v18)
  {
    return v19;
  }

  else
  {
    return v20;
  }
}

uint64_t sub_1000CECDC()
{
  v0 = sub_1000EBC44();
  v18 = *(v0 - 8);
  v19 = v0;
  v1 = *(v18 + 64);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000EA3B4();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v5[13];
  v9(v8, enum case for ContentSizeCategory.extraExtraLarge(_:), v4);
  sub_1000CD388();
  v11 = v10;
  v12 = v5[1];
  v12(v8, v4);
  if (v11)
  {
    return 3;
  }

  v9(v8, enum case for ContentSizeCategory.large(_:), v4);
  sub_1000CD388();
  v15 = v14;
  v12(v8, v4);
  if (v15)
  {
    return 4;
  }

  v17 = v18;
  v16 = v19;
  (*(v18 + 104))(v3, enum case for WidgetFamily.systemSmall(_:), v19);
  sub_100043230();
  sub_1000EBFB4();
  sub_1000EBFB4();
  (*(v17 + 8))(v3, v16);
  if (v21 == v20)
  {
    return 4;
  }

  else
  {
    return 5;
  }
}

uint64_t sub_1000CEF54()
{
  v1 = v0;
  v2 = sub_1000EA3B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000EBC44();
  v8 = *(v7 - 8);
  v9 = v8[8];
  __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_widgetFamily;
  v29 = v8[13];
  v30 = v8 + 13;
  v29(v11, enum case for WidgetFamily.systemLarge(_:), v7);
  v13 = sub_100043230();
  v32 = v12;
  sub_1000EBFB4();
  v31 = v13;
  sub_1000EBFB4();
  v15 = v8[1];
  v14 = v8 + 1;
  v28 = v15;
  v15(v11, v7);
  if (v34 == v33)
  {
    v16 = *(v3 + 104);
    v16(v6, enum case for ContentSizeCategory.extraExtraExtraLarge(_:), v2);
    sub_1000CD388();
    v18 = v17;
    (*(v3 + 8))(v6, v2);
    if (v18)
    {
      return 2;
    }

    v26 = v14;
    v16(v6, enum case for ContentSizeCategory.extraExtraLarge(_:), v2);
  }

  else
  {
    v26 = v14;
    v16 = *(v3 + 104);
    v16(v6, enum case for ContentSizeCategory.extraExtraLarge(_:), v2);
  }

  sub_1000CD388();
  v21 = v20;
  v27 = v1;
  v22 = *(v3 + 8);
  v22(v6, v2);
  if (v21)
  {
    return 3;
  }

  v16(v6, enum case for ContentSizeCategory.large(_:), v2);
  sub_1000CD388();
  v24 = v23;
  v22(v6, v2);
  if (v24)
  {
    return 4;
  }

  v29(v11, enum case for WidgetFamily.systemSmall(_:), v7);
  sub_1000EBFB4();
  sub_1000EBFB4();
  v28(v11, v7);
  if (v34 == v33)
  {
    return 4;
  }

  else
  {
    return 5;
  }
}

uint64_t sub_1000CF2D0()
{
  v1 = sub_1000EBC44();
  v2 = *(v1 - 8);
  v3 = v2[8];
  __chkstk_darwin(v1);
  v5 = &v31[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1000EA3B4();
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v10 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_sizeCategory;
  v12 = v7[13];
  v12(v10, enum case for ContentSizeCategory.extraExtraExtraLarge(_:), v6);
  v41 = v11;
  v42 = v0;
  sub_1000CD388();
  v14 = v13;
  v15 = v7[1];
  v15(v10, v6);
  if (v14)
  {
    return 3;
  }

  v17 = OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_widgetFamily;
  v18 = v2[13];
  v35 = enum case for WidgetFamily.systemSmall(_:);
  v36 = v2 + 13;
  v34 = v18;
  v18(v5);
  v19 = sub_100043230();
  v40 = v15;
  v20 = v12;
  v21 = v5;
  v22 = v19;
  v38 = v17;
  sub_1000EBFB4();
  v37 = v22;
  v23 = v21;
  v24 = v20;
  v25 = v40;
  sub_1000EBFB4();
  v26 = v2[1];
  v39 = v2 + 1;
  v33 = v26;
  v26(v23, v1);
  v27 = enum case for ContentSizeCategory.extraLarge(_:);
  if (v44 == v43)
  {
    v24(v10, enum case for ContentSizeCategory.extraLarge(_:), v6);
    sub_1000CD388();
    v32 = v28;
    v25(v10, v6);
    if (v32)
    {
      return 3;
    }
  }

  v24(v10, v27, v6);
  sub_1000CD388();
  v30 = v29;
  v25(v10, v6);
  if (v30)
  {
    return 4;
  }

  v34(v23, v35, v1);
  sub_1000EBFB4();
  sub_1000EBFB4();
  v33(v23, v1);
  if (v44 == v43)
  {
    return 4;
  }

  else
  {
    return 5;
  }
}

BOOL sub_1000CF650()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 nativeScale];
  v3 = v2;

  v4 = [v0 mainScreen];
  [v4 scale];
  v6 = v5;

  return v6 < v3;
}

uint64_t sub_1000CF6EC(uint64_t a1, uint64_t a2)
{
  v18[1] = a2;
  v19 = sub_1000EAFC4();
  v3 = *(v19 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v19);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000EB214();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v20 = a1;
  v13 = *(a1 + 16);
  v14 = (v3 + 8);
  while (v13 != v12)
  {
    (*(v8 + 16))(v11, v20 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v12++, v7);
    sub_1000EB1E4();
    v15 = sub_1000EAF94();
    (*v14)(v6, v19);
    (*(v8 + 8))(v11, v7);
    if (v15)
    {
      v16 = sub_1000CF8E0();
      return v16 & 1;
    }
  }

  v16 = 0;
  return v16 & 1;
}

uint64_t sub_1000CF8E0()
{
  v1 = sub_1000EA3B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000EBC44();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v0 + OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_widgetFamily, v6);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == enum case for WidgetFamily.systemSmall(_:))
  {
    goto LABEL_2;
  }

  if (v11 != enum case for WidgetFamily.systemMedium(_:))
  {
    if (v11 != enum case for WidgetFamily.systemLarge(_:) && v11 != enum case for WidgetFamily.systemExtraLarge(_:))
    {
      result = sub_1000EC464();
      __break(1u);
      return result;
    }

    if (*(v0 + OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_widgetDisplaySize))
    {
      v14 = &enum case for ContentSizeCategory.accessibilityMedium(_:);
    }

    else
    {
      v14 = &enum case for ContentSizeCategory.extraLarge(_:);
    }

    (*(v2 + 104))(v5, *v14, v1);
    goto LABEL_16;
  }

  if (!sub_1000CF650() && *(v0 + OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_widgetDisplaySize))
  {
    (*(v2 + 104))(v5, enum case for ContentSizeCategory.extraExtraLarge(_:), v1);
LABEL_16:
    sub_1000CDAD0();
    v12 = v15;
    (*(v2 + 8))(v5, v1);
    return v12 & 1;
  }

LABEL_2:
  v12 = 0;
  return v12 & 1;
}

uint64_t sub_1000CFBB8()
{
  v0 = sub_1000EA3B4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for ContentSizeCategory.extraExtraExtraLarge(_:), v0);
  sub_1000CDAD0();
  v6 = v5;
  (*(v1 + 8))(v4, v0);
  return v6 & 1;
}

void sub_1000CFCC4()
{
  sub_100006A58();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1000EA3B4();
  v9 = sub_1000090D4(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_100006A10();
  v16 = (v15 - v14);
  v17 = sub_1000EBC44();
  v18 = sub_1000090D4(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  sub_100006A10();
  v25 = v24 - v23;
  (*(v20 + 16))(v24 - v23, v7, v17);
  (*(v11 + 16))(v16, v5, v8);
  sub_100026CB4(v25, v16, v3, v1);
  (*(v11 + 8))(v5, v8);
  (*(v20 + 8))(v7, v17);
  sub_100006A20();
}

uint64_t type metadata accessor for DailyViewAttributesFactory()
{
  result = qword_1001356A8;
  if (!qword_1001356A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000CFEB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_10012EF30, &unk_1000F14F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CFF28()
{
  v3 = v0 + *(v1 - 128);

  return sub_1000EBFB4();
}

uint64_t sub_1000CFF70()
{
  result = v0;
  v4 = *(v1 - 144);
  v3 = *(v1 - 136);
  return result;
}

uint64_t sub_1000CFF80()
{

  return sub_1000EBFB4();
}

uint64_t sub_1000CFFBC()
{
  result = v0;
  v3 = *(v1 - 180);
  v5 = *(v1 - 160);
  v4 = *(v1 - 152);
  return result;
}

uint64_t sub_1000D0004()
{
  result = v0;
  v3 = *(v1 - 88);
  return result;
}

id sub_1000D002C()
{
  v1 = sub_1000E9844();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v11 = v1;
  v12 = &protocol witness table for NanoPreferencesSynchronizer;
  v10 = sub_1000E9834();
  v4 = sub_1000E9544();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1000E9524();
  sub_1000E9514();
  v9.receiver = v0;
  v9.super_class = type metadata accessor for WeatherSettingsUnits();
  v7 = objc_msgSendSuper2(&v9, "init");

  return v7;
}

uint64_t sub_1000D0148()
{
  sub_1000E93A4();
  sub_1000E9394();
  sub_1000E9374();
}

uint64_t sub_1000D01E8()
{
  sub_100032530();
  sub_1000E93A4();
  *(v0 + 16) = sub_1000E9394();
  v1 = async function pointer to UnitManager.refreshUnitsFromStorage()[1];
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1000D028C;

  return UnitManager.refreshUnitsFromStorage()();
}

uint64_t sub_1000D028C()
{
  sub_100032530();
  sub_1000325B0();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_10003246C();
  *v5 = v4;

  sub_1000324E4();

  return v6();
}

uint64_t sub_1000D0404(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  v4 = a2;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1000D04A8;

  return sub_1000D01CC();
}

uint64_t sub_1000D04A8()
{
  sub_100032530();
  sub_1000325B0();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  sub_10003246C();
  *v6 = v5;

  v3[2](v3);
  _Block_release(v3);
  sub_1000324E4();

  return v7();
}

uint64_t sub_1000D05CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_100130510, &qword_1000F0C70);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_1000EC084();
  sub_1000028A0(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_1000FA838;
  v10[5] = v9;
  sub_1000D0E74(0, 0, v7, &unk_1000FA848, v10);
}

uint64_t sub_1000D06DC(void *a1)
{
  v3 = sub_100002A10(&qword_100135788, &qword_1000FA810);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  sub_1000D1330();
  sub_1000E93A4();
  if (a1)
  {
    v5 = a1;
    sub_1000E9394();
    v6 = v5;
    sub_1000E9584();
    sub_1000E9354();
  }

  else
  {
    sub_1000E9394();
    v7 = sub_1000E9574();
    sub_1000028A0(v1, 1, 1, v7);
    sub_1000E9354();
  }

  return sub_10000D3A8(v1, &qword_100135788, &qword_1000FA810);
}

uint64_t sub_1000D0888()
{
  v1 = sub_100002A10(&qword_100135788, &qword_1000FA810);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  sub_1000D1330();
  sub_1000E93A4();
  sub_1000E9394();
  sub_1000E9344();

  v3 = sub_1000E9574();
  if (sub_100005B30(v0, 1, v3) == 1)
  {
    sub_10000D3A8(v0, &qword_100135788, &qword_1000FA810);
    return 0;
  }

  else
  {
    v4 = sub_1000E9564();
    (*(*(v3 - 8) + 8))(v0, v3);
  }

  return v4;
}

id sub_1000D0998()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WeatherSettingsUnits();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000D09F0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000D0A30()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100031BC4;

  return sub_1000D0404(v2, v3);
}

uint64_t sub_1000D0ADC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100032444;

  return v7();
}

uint64_t sub_1000D0BC8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100032444;

  return sub_1000D0ADC(v2, v3, v5);
}

uint64_t sub_1000D0C88(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100031BC4;

  return v8();
}

uint64_t sub_1000D0D70()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000D0DB0(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = sub_1000D1320(v7);
  *v8 = v9;
  v8[1] = sub_100032444;

  return sub_1000D0C88(a1, v3, v4, v6);
}

uint64_t sub_1000D0E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002A10(&qword_100130510, &qword_1000F0C70);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_1000D1140(a3, v25 - v11);
  v13 = sub_1000EC084();
  if (sub_100005B30(v12, 1, v13) == 1)
  {
    sub_10000D3A8(v12, &qword_100130510, &qword_1000F0C70);
  }

  else
  {
    sub_1000EC074();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_1000EC064();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1000EBF04() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10000D3A8(a3, &qword_100130510, &qword_1000F0C70);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000D3A8(a3, &qword_100130510, &qword_1000F0C70);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1000D1140(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_100130510, &qword_1000F0C70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D11B0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000D11E8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1000D1320(v3);
  *v4 = v5;
  v6 = sub_1000325E4(v4);

  return v7(v6);
}

uint64_t sub_1000D1280()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1000D1320(v3);
  *v4 = v5;
  v6 = sub_1000325E4(v4);

  return v7(v6);
}

unint64_t sub_1000D135C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_1000EBF34();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      sub_1000EBF84();
      sub_1000D8200();
      return sub_10009C1C8();
    }
  }

  __break(1u);
  return result;
}

int64_t sub_1000D1410(int64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 16);
    result = sub_10009C164(0, result, v5);
    if (v6)
    {
      result = v5;
    }

    if (v5 >= result)
    {
      sub_1000D7FFC(result, v5, a2, a3);
      sub_1000D8200();
      return sub_10009C1C8();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D1490()
{
  v0 = sub_1000EB254();
  v22 = *(v0 - 8);
  v1 = *(v22 + 64);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000EB054();
  v21 = *(v4 - 8);
  v5 = *(v21 + 64);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000EB384();
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000EB274();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EB264();
  sub_1000EB374();
  sub_1000EB044();
  sub_1000EB244();
  sub_1000E8604();
  sub_1000EB904();
  v17 = sub_1000EAE84();
  (*(v22 + 8))(v3, v0);
  (*(v21 + 8))(v7, v4);
  (*(v20 + 8))(v11, v8);
  (*(v13 + 8))(v16, v12);
  return v17;
}

uint64_t sub_1000D17B4(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_1000E94B4();
  v6 = sub_100009210(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_10004B3F0();
  sub_10000921C();
  v9 = type metadata accessor for AggregateWeatherViewModelFactory();
  v10 = (v9 - 8);
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  sub_100006A10();
  v14 = v13 - v12;
  v15 = sub_1000EB6D4();
  v16 = sub_100009210(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_100006A10();
  sub_1000D819C();
  type metadata accessor for RelevanceProvider();
  *(v2 + 24) = swift_allocObject();
  v19 = v2 + OBJC_IVAR____TtC13WeatherWidget12EntryFactory_eventViewModelFactory;
  sub_1000EB3B4();
  v35 = type metadata accessor for EventViewModelFactory();
  v20 = *(v35 + 20);
  v21 = sub_1000EAE64();
  sub_1000A8350(v21);
  *(v19 + v20) = sub_1000EAE54();
  sub_1000EB3B4();
  v22 = OBJC_IVAR____TtC13WeatherWidget12EntryFactory_sunriseSunsetViewModelFactory;
  v23 = sub_100002A10(&qword_100135898, &qword_1000FA8B8);
  sub_1000A8350(v23);
  sub_1000EAEC4();
  sub_1000EB6C4();
  v24 = sub_1000EB864();
  sub_1000A8350(v24);
  *(v2 + v22) = sub_1000EB854();
  sub_100051D3C(a1, v2 + OBJC_IVAR____TtC13WeatherWidget12EntryFactory_appConfigurationManager);
  sub_100051D3C(a2, &v36);
  type metadata accessor for WidgetContextFactory();
  swift_allocObject();
  *(v2 + 16) = sub_1000C1624(&v36);
  sub_100051D3C(a1, &v36);
  sub_100051D3C(&v36, v14 + v10[13]);
  sub_1000EB3B4();
  sub_100008DA8(&v36, v37);
  sub_1000E9804();
  v25 = v14 + v10[8];
  sub_1000EB734();
  v26 = v14 + v10[12];
  sub_1000EB3B4();
  v27 = *(v35 + 20);
  v28 = *(v21 + 48);
  v29 = *(v21 + 52);
  swift_allocObject();
  *(v26 + v27) = sub_1000EAE54();
  v30 = v14 + v10[9];
  sub_1000EBB34();
  v31 = sub_1000EBB84();
  sub_1000A8350(v31);
  v32 = sub_1000EBB74();
  v33 = (v14 + v10[10]);
  v33[3] = v31;
  v33[4] = &protocol witness table for NextHourPrecipitationChartViewModelFactory;
  *v33 = v32;
  sub_100009068(a2);
  sub_100009068(a1);
  sub_100009068(&v36);
  sub_1000D80A8(v14, v2 + OBJC_IVAR____TtC13WeatherWidget12EntryFactory_aggregateWeatherViewModelFactory, type metadata accessor for AggregateWeatherViewModelFactory);
  return v2;
}

uint64_t sub_1000D1AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a3;
  v51 = a2;
  v53 = a4;
  v6 = sub_100002A10(&qword_1001358C0, &unk_1000FA8D0);
  sub_100009210(v6);
  v8 = *(v7 + 64);
  sub_100009204();
  __chkstk_darwin(v9);
  v11 = &v51 - v10;
  v12 = sub_1000E89B4();
  v13 = sub_1000090D4(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  sub_100006A10();
  v20 = v19 - v18;
  v21 = sub_1000E8CD4();
  v22 = sub_1000090D4(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v22);
  sub_100006A10();
  v27 = sub_1000D819C();
  v28 = type metadata accessor for WeatherDataOperationResult.Data(v27);
  v29 = sub_1000069E4(v28);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  sub_100006A10();
  v34 = (v33 - v32);
  sub_1000D8164();
  sub_1000D7F6C(a1, v34, v35);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v38 = sub_1000D81AC();
    v39(v38);
    v40 = sub_1000D8230();
    sub_1000D1DA0(v40, v41, v42, v43);
LABEL_7:
    (*(v24 + 8))(v4, v21);
LABEL_8:
    v37 = 0;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v44 = sub_1000D81AC();
    v45(v44);
    sub_1000D8230();
    sub_1000D209C(v46, v47, v48);
    goto LABEL_7;
  }

  sub_1000078E0(*v34);

  if (sub_100005B30(v11, 1, v12) != 1)
  {
    (*(v15 + 32))(v20, v11, v12);
    v34 = v53;
    sub_1000D1F20(v20, v51, v52, v53);
    (*(v15 + 8))(v20, v12);
    goto LABEL_8;
  }

  sub_100008E48(v11, &qword_1001358C0, &unk_1000FA8D0);
  v37 = 1;
  v34 = v53;
LABEL_9:
  v49 = type metadata accessor for ForecastEntry(0);
  return sub_1000028A0(v34, v37, 1, v49);
}

uint64_t sub_1000D1DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = type metadata accessor for AggregateWeatherViewModel(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005639C(a1, a3, 0, v13);
  v14 = *(v4 + 16);
  v15 = type metadata accessor for ForecastEntry(0);
  v16 = a4 + v15[6];
  sub_1000C1690();
  v17 = *(v5 + 24);
  sub_100041324(*(v16 + 48), a4 + v15[5]);
  v18 = sub_1000E8604();
  (*(*(v18 - 8) + 16))(a4, a2, v18);
  sub_1000D80A8(v13, a4 + v15[7], type metadata accessor for AggregateWeatherViewModel);
  type metadata accessor for WeatherDataViewModel();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ForecastEntry.Model(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000D1F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = type metadata accessor for InstantWeatherViewModel();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100063988(a1, a3, v13);
  v14 = *(v4 + 16);
  v15 = type metadata accessor for ForecastEntry(0);
  v16 = a4 + v15[6];
  sub_1000C1BD4();
  v17 = *(v5 + 24);
  sub_100041324(*(v16 + 48), a4 + v15[5]);
  v18 = sub_1000E8604();
  (*(*(v18 - 8) + 16))(a4, a2, v18);
  sub_1000D80A8(v13, a4 + v15[7], type metadata accessor for InstantWeatherViewModel);
  type metadata accessor for WeatherDataViewModel();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ForecastEntry.Model(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000D209C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v56 = a1;
  v59 = a2;
  v51 = a3;
  v54 = sub_1000EAF24();
  v52 = *(v54 - 8);
  v3 = *(v52 + 64);
  __chkstk_darwin(v54);
  v48 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000E8C34();
  v49 = *(v5 - 8);
  v50 = v5;
  v6 = *(v49 + 64);
  __chkstk_darwin(v5);
  v45 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1000EB2B4();
  v53 = *(v55 - 8);
  v8 = *(v53 + 64);
  __chkstk_darwin(v55);
  v58 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002A10(&qword_10012F0F0, &unk_1000F3E00);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_1000E88D4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v44 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = v42 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = v42 - v21;
  __chkstk_darwin(v20);
  v24 = v42 - v23;
  v25 = sub_1000EAFF4();
  v46 = *(v25 - 8);
  v47 = v25;
  v26 = *(v46 + 64);
  __chkstk_darwin(v25);
  v28 = v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E8C64();
  sub_1000E8C84();
  v43 = v28;
  sub_1000EAFE4();
  v29 = v57;
  v30 = *(v57 + OBJC_IVAR____TtC13WeatherWidget12EntryFactory_sunriseSunsetViewModelFactory);
  sub_1000EB844();
  v42[1] = *(v29 + 16);
  sub_1000E8C64();
  v31 = v45;
  sub_1000E88C4();
  v32 = *(v13 + 8);
  v32(v24, v12);
  sub_1000E8C64();
  sub_1000E8844();
  v32(v22, v12);
  sub_1000E8C64();
  sub_1000E8834();
  v32(v19, v12);
  v33 = v44;
  sub_1000E8C64();
  v34 = v48;
  sub_1000E8824();
  v32(v33, v12);
  v35 = type metadata accessor for ForecastEntry(0);
  v36 = v51;
  v37 = v51 + v35[6];
  v38 = v56;
  sub_1000C20B4();
  (*(v52 + 8))(v34, v54);
  (*(v49 + 8))(v31, v50);
  v39 = *(v57 + 24);
  sub_100041324(*(v37 + 48), v36 + v35[5]);
  (*(v46 + 8))(v43, v47);
  v40 = sub_1000E8604();
  (*(*(v40 - 8) + 16))(v36, v38, v40);
  (*(v53 + 32))(v36 + v35[7], v58, v55);
  type metadata accessor for WeatherDataViewModel();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ForecastEntry.Model(0);
  return swift_storeEnumTagMultiPayload();
}

void *sub_1000D264C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000E8CD4();
  v7 = sub_1000090D4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_100006A10();
  v14 = v13 - v12;
  v15 = type metadata accessor for WeatherDataOperationResult.Data(0);
  v16 = sub_1000069E4(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_100006A10();
  v21 = (v20 - v19);
  sub_1000D8164();
  sub_1000D7F6C(a1, v21, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v25 = sub_1000D81E8();
    v26(v25);
    v27 = sub_1000D8224();
    v29 = sub_1000D27E0(v27, v28, a3);
LABEL_6:
    v24 = v29;
    (*(v9 + 8))(v14, v6);
    return v24;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v30 = sub_1000D81E8();
    v31(v30);
    v32 = sub_1000D8224();
    v29 = sub_1000D2F60(v32, v33);
    goto LABEL_6;
  }

  v24 = sub_1000D2C74(*v21, a2);

  return v24;
}

uint64_t sub_1000D27E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a2;
  v39 = a3;
  v4 = sub_100002A10(&qword_100132670, &unk_1000F54E0);
  v40 = *(v4 - 8);
  v5 = *(v40 + 64);
  __chkstk_darwin(v4);
  v7 = &v36 - v6;
  v8 = sub_1000EBC44();
  v37 = *(v8 - 8);
  v38 = v8;
  v9 = *(v37 + 64);
  __chkstk_darwin(v8);
  v36 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000E90D4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100002A10(&qword_10012F108, &qword_1000EEF10);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v36 - v18;
  v20 = sub_100002A10(&qword_10012F110, &qword_1000EEF18);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v36 - v23;
  v41 = a1;
  sub_1000E8CB4();
  if (sub_100005B30(v19, 1, v20) == 1)
  {
    sub_100008E48(v19, &qword_10012F108, &qword_1000EEF10);
LABEL_7:
    v31 = v41;
    sub_1000E8CA4();
    sub_1000D4F94();
    sub_1000EC104();
    sub_1000EC124();
    v32 = sub_1000EC114();
    (*(v40 + 8))(v7, v4);
    if (v32 >= 5)
    {
      v33 = 5;
    }

    else
    {
      v33 = v32;
    }

    return sub_1000D43AC(v31, v42, v33);
  }

  (*(v21 + 32))(v24, v19, v20);
  (*(v12 + 104))(v15, enum case for PrecipitationRelevancyWindow.default(_:), v11);
  v25 = sub_1000E91C4();
  (*(v12 + 8))(v15, v11);
  if ((v25 & 1) == 0)
  {
    (*(v21 + 8))(v24, v20);
    goto LABEL_7;
  }

  v27 = v36;
  v26 = v37;
  v28 = v38;
  (*(v37 + 16))(v36, v39, v38);
  if ((*(v26 + 88))(v27, v28) == enum case for WidgetFamily.systemLarge(_:))
  {
    v29 = 3;
    v30 = 7;
  }

  else
  {
    (*(v26 + 8))(v27, v28);
    v29 = 1;
    v30 = 20;
  }

  v34 = sub_1000D3260(v41, v42, v29, v30);
  (*(v21 + 8))(v24, v20);
  return v34;
}

void *sub_1000D2C74(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v26 = sub_1000E8604();
  v3 = *(v26 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v26);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ForecastEntry(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  v15 = *(a1 + 16);
  if (!v15)
  {
    return &_swiftEmptyArrayStorage;
  }

  v16 = *(sub_1000E89B4() - 8);
  v17 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v25 = *(v16 + 72);
  v18 = (v3 + 8);
  v19 = &_swiftEmptyArrayStorage;
  do
  {
    sub_1000E8954();
    sub_1000D1F20(v17, v6, v27, v14);
    (*v18)(v6, v26);
    sub_1000D7F6C(v14, v12, type metadata accessor for ForecastEntry);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = v19[2];
      sub_1000312F4();
      v19 = v22;
    }

    v20 = v19[2];
    if (v20 >= v19[3] >> 1)
    {
      sub_1000312F4();
      v19 = v23;
    }

    sub_1000D8108(v14, type metadata accessor for ForecastEntry);
    v19[2] = v20 + 1;
    sub_1000D80A8(v12, v19 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v20, type metadata accessor for ForecastEntry);
    v17 += v25;
    --v15;
  }

  while (v15);
  return v19;
}

uint64_t sub_1000D2F60(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000E8604();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ForecastEntry(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E85B4();
  sub_1000D209C(v7, a2, v12);
  (*(v4 + 8))(v7, v3);
  sub_100002A10(&qword_1001304D8, &qword_1000FABD0);
  v13 = *(v9 + 72);
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000EFAD0;
  sub_1000D80A8(v12, v15 + v14, type metadata accessor for ForecastEntry);
  return v15;
}

uint64_t sub_1000D313C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = type metadata accessor for ForecastEntry(0);
  v10 = a3 + v9[6];
  sub_1000C1690();
  v11 = *(v4 + 24);
  sub_100041324(*(v10 + 48), a3 + v9[5]);
  v12 = sub_1000E8604();
  (*(*(v12 - 8) + 16))(a3, a2, v12);
  sub_1000D7F6C(a1, a3 + v9[7], type metadata accessor for AggregateWeatherViewModel);
  type metadata accessor for WeatherDataViewModel();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ForecastEntry.Model(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000D3260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v148 = a4;
  v142 = a3;
  v147 = a2;
  v155 = a1;
  v6 = type metadata accessor for ForecastEntry(0);
  v135 = *(v6 - 8);
  v7 = *(v135 + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v160 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v159 = &v117 - v10;
  v134 = sub_1000EBAF4();
  v167 = *(v134 - 8);
  v11 = *(v167 + 64);
  __chkstk_darwin(v134);
  v125 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100002A10(&qword_1001309D8, &qword_1000F10F0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v124 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v149 = &v117 - v18;
  __chkstk_darwin(v17);
  v158 = &v117 - v19;
  v163 = sub_1000EB674();
  v156 = *(v163 - 8);
  v20 = *(v156 + 8);
  __chkstk_darwin(v163);
  v166 = &v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_1000E8734();
  v152 = *(v162 - 8);
  v22 = *(v152 + 8);
  __chkstk_darwin(v162);
  v146 = &v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v140 = &v117 - v26;
  v121 = sub_1000E8754();
  v120 = *(v121 - 8);
  v27 = *(v120 + 64);
  __chkstk_darwin(v121);
  v29 = &v117 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_1000E8784();
  v150 = *(v154 - 8);
  v30 = *(v150 + 8);
  v31 = __chkstk_darwin(v154);
  v151 = &v117 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = &v117 - v33;
  v35 = type metadata accessor for AggregateWeatherViewModel(0);
  v36 = *(*(v35 - 8) + 64);
  v37 = __chkstk_darwin(v35);
  v157 = &v117 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v40 = &v117 - v39;
  v41 = type metadata accessor for CurrentObservationViewModelFactory();
  v42 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41 - 8);
  v44 = &v117 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_1000E8604();
  v45 = *(v145 - 8);
  v46 = *(v45 + 64);
  v47 = __chkstk_darwin(v145);
  v165 = &v117 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __chkstk_darwin(v47);
  v51 = &v117 - v50;
  __chkstk_darwin(v49);
  v53 = &v117 - v52;
  v54 = sub_1000E9A84();
  v55 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v57 = &v117 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = v58;
  v59 = *(v58 + 16);
  v144 = v60;
  v133 = v58 + 16;
  v132 = v59;
  (v59)(v57, v147);
  sub_1000E85B4();
  v126 = v44;
  v61 = v51;
  sub_1000EB3B4();
  v117 = v53;
  sub_1000E85C4();
  v164 = v40;
  sub_10005639C(v155, v57, 0, v40);
  v153 = v57;
  sub_1000E9A74();
  v62 = v29;
  v119 = v34;
  result = sub_1000E86B4();
  if (v148 < 0)
  {
    goto LABEL_32;
  }

  v64 = 0;
  v128 = v5 + OBJC_IVAR____TtC13WeatherWidget12EntryFactory_eventViewModelFactory;
  v141 = enum case for Calendar.Component.minute(_:);
  v161 = (v152 + 104);
  v139 = (v152 + 8);
  v138 = (v45 + 32);
  v137 = enum case for Calendar.Component.hour(_:);
  v152 = v150 + 8;
  v150 = v156 + 16;
  v123 = (v167 + 32);
  v122 = (v167 + 8);
  v127 = (v156 + 8);
  v65 = &_swiftEmptyArrayStorage;
  v143 = (v45 + 8);
  v131 = v5;
  v66 = v146;
  v67 = v145;
  v130 = v62;
  v129 = v61;
  v136 = v35;
  while (1)
  {
    if (v148 == v64)
    {
      (*(v120 + 8))(v62, v121, v162);
      (*v152)(v119, v154);
      sub_1000D8108(v164, type metadata accessor for AggregateWeatherViewModel);
      v115 = *v143;
      (*v143)(v61, v67);
      sub_1000D8108(v126, type metadata accessor for CurrentObservationViewModelFactory);
      v115(v117, v67);
      (*(v118 + 8))(v153, v144);
      return v65;
    }

    if (__OFADD__(v64, 1))
    {
      break;
    }

    v68 = *v161;
    v167 = v64;
    result = v68(v66, v141, v162);
    if ((v142 * v167) >> 64 != (v142 * v167) >> 63)
    {
      goto LABEL_30;
    }

    v156 = v65;
    v69 = v140;
    v70 = v67;
    v71 = v62;
    sub_1000E86E4();
    v72 = v162;
    v73 = v61;
    v74 = *v139;
    (*v139)(v66, v162);
    if (sub_100005B30(v69, 1, v70) == 1)
    {
      (*(v120 + 8))(v71, v121);
      (*v152)(v119, v154);
      sub_1000D8108(v164, type metadata accessor for AggregateWeatherViewModel);
      v116 = *v143;
      (*v143)(v73, v70);
      sub_1000D8108(v126, type metadata accessor for CurrentObservationViewModelFactory);
      v116(v117, v70);
      (*(v118 + 8))(v153, v144);
      sub_100008E48(v69, &qword_10012F048, &qword_1000EEF30);
      return v156;
    }

    (*v138)(v165, v69, v70);
    v68(v66, v137, v72);
    v75 = v72;
    v76 = sub_1000E8704();
    v74(v66, v75);
    if (v76)
    {
      v77 = v136;
      v78 = v164;
      (*v150)(v166, &v164[v136[6]], v163);
      v79 = *(v78 + v77[7]);

      v80 = v149;
      goto LABEL_17;
    }

    v81 = v151;
    sub_1000E9A74();
    sub_100091F30(v155, v81, 1, v166);
    (*v152)(v81, v154);
    v77 = v136;
    v82 = *&v164[v136[7]];

    v83 = sub_1000D1410(1, v82, &type metadata accessor for HourlyForecastBannerViewModel);
    v85 = v84;
    v87 = v86;
    v89 = v88;
    v80 = v149;
    if ((v88 & 1) == 0)
    {
      goto LABEL_10;
    }

    sub_1000EC5F4();
    swift_unknownObjectRetain_n();
    v91 = swift_dynamicCastClass();
    if (!v91)
    {
      swift_unknownObjectRelease();
      v91 = &_swiftEmptyArrayStorage;
    }

    v92 = v91[2];

    if (__OFSUB__(v89 >> 1, v87))
    {
      goto LABEL_31;
    }

    if (v92 != (v89 >> 1) - v87)
    {
      swift_unknownObjectRelease();
      v80 = v149;
LABEL_10:
      sub_1000D7E10(v83, v85, v87, v89, sub_10003159C, &type metadata accessor for HourlyForecastBannerViewModel);
      v79 = v90;
      swift_unknownObjectRelease();
      v78 = v164;
      goto LABEL_17;
    }

    v79 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v80 = v149;
    v78 = v164;
    if (!v79)
    {
      swift_unknownObjectRelease();
      v79 = &_swiftEmptyArrayStorage;
    }

LABEL_17:
    v93 = v77[10];
    v94 = v158;
    sub_10000EBC4(v78 + v93, v158, &qword_1001309D8, &qword_1000F10F0);
    sub_10000EBC4(v78 + v93, v80, &qword_1001309D8, &qword_1000F10F0);
    v95 = v134;
    if (sub_100005B30(v80, 1, v134) == 1)
    {
      sub_100008E48(v80, &qword_1001309D8, &qword_1000F10F0);
      v96 = v167;
    }

    else
    {
      v97 = v125;
      (*v123)(v125, v80, v95);
      v98 = v124;
      v96 = v167;
      sub_1000EBAE4();
      (*v122)(v97, v95);
      sub_100008E48(v94, &qword_1001309D8, &qword_1000F10F0);
      sub_1000028A0(v98, 0, 1, v95);
      sub_1000D7EFC(v98, v94);
    }

    v99 = v151;
    v100 = v153;
    sub_1000E9A74();
    v101 = sub_1000094A0(v155, v99, v96);
    (*v152)(v99, v154);
    v102 = v157;
    sub_1000E8624();
    v132(v102 + v77[5], v100, v144);
    (*v150)(v102 + v77[6], v166, v163);
    v103 = v164;
    v104 = *&v164[v77[8]];
    sub_10000EBC4(&v164[v77[9]], v102 + v77[9], &qword_100130EE0, &qword_1000F1690);
    sub_10000EBC4(v94, v102 + v77[10], &qword_1001309D8, &qword_1000F10F0);
    v105 = v77[13];
    v106 = v103 + v77[12];
    v168 = *v106;
    v169 = *(v106 + 8);
    sub_10000EBC4(v103 + v105, v102 + v105, &qword_100130EC8, &qword_1000F1670);
    v107 = v77[14];
    v108 = type metadata accessor for AggregateWeatherViewModel.SunEvent(0);
    sub_1000028A0(v102 + v107, 1, 1, v108);
    *(v102 + v77[7]) = v79;
    *(v102 + v77[8]) = v104;
    *(v102 + v77[11]) = v101;
    v109 = v102 + v77[12];
    *v109 = v168;
    *(v109 + 8) = v169;

    v110 = v159;
    sub_1000D313C(v102, v165, v159);
    sub_1000D7F6C(v110, v160, type metadata accessor for ForecastEntry);
    v65 = v156;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v112 = *(v65 + 2);
      sub_1000312F4();
      v65 = v113;
    }

    v66 = v146;
    v67 = v145;
    v61 = v129;
    v111 = *(v65 + 2);
    if (v111 >= *(v65 + 3) >> 1)
    {
      sub_1000312F4();
      v65 = v114;
    }

    sub_1000D8108(v159, type metadata accessor for ForecastEntry);
    sub_1000D8108(v157, type metadata accessor for AggregateWeatherViewModel);
    sub_100008E48(v158, &qword_1001309D8, &qword_1000F10F0);
    (*v127)(v166, v163);
    (*v143)(v165, v67);
    *(v65 + 2) = v111 + 1;
    result = sub_1000D80A8(v160, &v65[((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v111], type metadata accessor for ForecastEntry);
    v64 = v167 + 1;
    v62 = v130;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1000D43AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v90 = a1;
  v91 = a3;
  v86 = sub_1000E8734();
  v79 = *(v86 - 8);
  v4 = *(v79 + 64);
  __chkstk_darwin(v86);
  v85 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v70 - v8;
  v10 = type metadata accessor for AggregateWeatherViewModel(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ForecastEntry(0);
  v87 = *(v14 - 8);
  v15 = *(v87 + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v95 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v94 = &v70 - v19;
  v20 = __chkstk_darwin(v18);
  v84 = &v70 - v21;
  __chkstk_darwin(v20);
  v78 = &v70 - v22;
  v76 = sub_1000E8754();
  v75 = *(v76 - 8);
  v23 = *(v75 + 64);
  __chkstk_darwin(v76);
  v92 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1000E8784();
  v25 = *(v83 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v83);
  v28 = &v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1000E9A84();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1000E8604();
  v71 = *(v96 - 8);
  v34 = *(v71 + 64);
  v35 = __chkstk_darwin(v96);
  v93 = &v70 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v39 = &v70 - v38;
  __chkstk_darwin(v37);
  v41 = &v70 - v40;
  sub_1000E85B4();
  v73 = v30;
  v42 = *(v30 + 16);
  v74 = v29;
  v42(v33, a2, v29);
  sub_1000E9A74();
  v88 = v39;
  sub_1000E8534();
  v43 = *(v25 + 8);
  v44 = v83;
  v43(v28, v83);
  v89 = v33;
  sub_1000E9A74();
  sub_1000E86B4();
  v45 = v28;
  v46 = v84;
  v43(v45, v44);
  v48 = v77;
  v47 = v78;
  v72 = v41;
  v82 = a2;
  sub_1000D1DA0(v90, v41, a2, v78);
  sub_1000D7F6C(v47, v46, type metadata accessor for ForecastEntry);
  sub_1000312F4();
  v50 = v49;
  v51 = *(v49 + 16);
  if (v51 >= *(v49 + 24) >> 1)
  {
    sub_1000312F4();
    v50 = v69;
  }

  *(v50 + 16) = v51 + 1;
  v81 = (*(v87 + 80) + 32) & ~*(v87 + 80);
  v80 = *(v87 + 72);
  result = sub_1000D80A8(v46, v50 + v81 + v80 * v51, type metadata accessor for ForecastEntry);
  if (v91 < 1)
  {
    __break(1u);
  }

  else
  {
    v84 = OBJC_IVAR____TtC13WeatherWidget12EntryFactory_aggregateWeatherViewModelFactory;
    v53 = (v79 + 104);
    LODWORD(v83) = enum case for Calendar.Component.hour(_:);
    v54 = (v79 + 8);
    v79 = v71 + 32;
    v87 = v71 + 8;
    for (i = 1; ; ++i)
    {
      if (v91 == i)
      {
        sub_1000D8108(v78, type metadata accessor for ForecastEntry);
        (*(v75 + 8))(v92, v76);
        v66 = *v87;
        v67 = v96;
        (*v87)(v88, v96);
        (*(v73 + 8))(v89, v74);
        v66(v72, v67);
        return v50;
      }

      sub_10005639C(v90, v89, i, v13);
      v56 = v13;
      v57 = v85;
      v58 = v86;
      (*v53)(v85, v83, v86);
      sub_1000E86E4();
      (*v54)(v57, v58);
      v59 = v96;
      if (sub_100005B30(v9, 1, v96) == 1)
      {
        break;
      }

      v60 = v93;
      v61 = v9;
      (*v79)(v93, v9, v59);
      v62 = v94;
      v63 = v48;
      sub_1000D313C(v56, v60, v94);
      sub_1000D7F6C(v62, v95, type metadata accessor for ForecastEntry);
      v64 = *(v50 + 16);
      v13 = v56;
      if (v64 >= *(v50 + 24) >> 1)
      {
        sub_1000312F4();
        v50 = v65;
      }

      sub_1000D8108(v94, type metadata accessor for ForecastEntry);
      (*v87)(v93, v96);
      sub_1000D8108(v56, type metadata accessor for AggregateWeatherViewModel);
      *(v50 + 16) = v64 + 1;
      sub_1000D80A8(v95, v50 + v81 + v64 * v80, type metadata accessor for ForecastEntry);
      v48 = v63;
      v9 = v61;
    }

    sub_1000D8108(v56, type metadata accessor for AggregateWeatherViewModel);
    sub_1000D8108(v78, type metadata accessor for ForecastEntry);
    (*(v75 + 8))(v92, v76);
    v68 = *v87;
    (*v87)(v88, v59);
    (*(v73 + 8))(v89, v74);
    v68(v72, v59);
    sub_100008E48(v9, &qword_10012F048, &qword_1000EEF30);
    return v50;
  }

  return result;
}