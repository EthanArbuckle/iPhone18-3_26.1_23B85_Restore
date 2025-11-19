unint64_t sub_1000011CC()
{
  result = qword_100010058;
  if (!qword_100010058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010058);
  }

  return result;
}

unint64_t sub_100001224()
{
  result = qword_100010060;
  if (!qword_100010060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010060);
  }

  return result;
}

uint64_t sub_1000012AC()
{
  v0 = sub_100009B24();
  sub_100005D8C(v0, qword_100010230);
  sub_100005D54(v0, qword_100010230);
  return sub_100009AF4();
}

uint64_t sub_100001310()
{
  sub_1000089C4(0, &qword_100010140, &type metadata accessor for LocalizedStringResource, &type metadata accessor for Optional);
  v1 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v3 = v18 - v2;
  v18[0] = sub_100009B04();
  v4 = *(v18[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_100009B54() - 8) + 64);
  __chkstk_darwin();
  v9 = *(*(sub_100009BB4() - 8) + 64);
  __chkstk_darwin();
  v10 = sub_100009B24();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  sub_1000089C4(0, &qword_1000101C8, &type metadata accessor for IntentDescription, &type metadata accessor for Optional);
  v14 = v13;
  sub_100005D8C(v13, qword_100010248);
  v15 = sub_100005D54(v14, qword_100010248);
  sub_100009BA4();
  sub_100009B44();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v18[0]);
  sub_100009B34();
  (*(v11 + 56))(v3, 1, 1, v10);
  sub_1000099A4();
  v16 = sub_100009994();
  return (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
}

uint64_t sub_100001688@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_100009854();
  *a1 = v5;
  return result;
}

uint64_t sub_1000016C4(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_100009864();
}

void (*sub_1000016FC(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100009844();
  return sub_100001770;
}

void sub_100001770(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_1000017C0()
{
  result = qword_100010068;
  if (!qword_100010068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010068);
  }

  return result;
}

uint64_t sub_100001814(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000891C();
  v5 = sub_100005DF0();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_1000018A4()
{
  result = qword_100010070;
  if (!qword_100010070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010070);
  }

  return result;
}

unint64_t sub_1000018FC()
{
  result = qword_100010078;
  if (!qword_100010078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010078);
  }

  return result;
}

unint64_t sub_100001954()
{
  result = qword_100010080;
  if (!qword_100010080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010080);
  }

  return result;
}

uint64_t sub_100001A4C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100010030 != -1)
  {
    swift_once();
  }

  sub_1000089C4(0, &qword_1000101C8, &type metadata accessor for IntentDescription, &type metadata accessor for Optional);
  v3 = sub_100005D54(v2, qword_100010248);

  return sub_100008A28(v3, a1);
}

uint64_t sub_100001AF4(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000891C();
  v7 = sub_100008970();
  v8 = sub_100005DF0();
  *v5 = v2;
  v5[1] = sub_100001BC0;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_100001BC0()
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

uint64_t sub_100001CC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100005800();
  *a1 = result;
  return result;
}

uint64_t sub_100001CF0(uint64_t a1)
{
  v2 = sub_1000017C0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100001D2C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  sub_1000089C4(0, &qword_100010150, &type metadata accessor for DisplayRepresentation.Image, &type metadata accessor for Optional);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v83 = &v76 - v6;
  sub_1000089C4(0, &qword_100010140, &type metadata accessor for LocalizedStringResource, &type metadata accessor for Optional);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v84 = &v76 - v9;
  v10 = sub_100009B04();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100009B54();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v17 = sub_100009BB4();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v19 = sub_100009B24();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v23 = __chkstk_darwin(v22);
  v81 = v24;
  v82 = a2;
  v79 = &v76 - v25;
  v80 = v23;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      sub_100009BA4();
      sub_100009B44();
      v43 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v44 = *(v11 + 104);
      v78 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v45 = v10;
      v44(v14, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
      sub_100009B34();
      sub_100009BA4();
      sub_100009B44();
      v44(v14, v43, v10);
      v46 = v44;
      v47 = v84;
      sub_100009B34();
      v49 = *(v20 + 56);
      v48 = v20 + 56;
      v49(v47, 0, 1, v80);
      v50 = v83;
      sub_1000099B4();
      v51 = sub_1000099C4();
      (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
      sub_1000089C4(0, &qword_100010158, &type metadata accessor for LocalizedStringResource, &type metadata accessor for _ContiguousArrayStorage);
      v52 = *(v48 + 16);
      v53 = (*(v48 + 24) + 32) & ~*(v48 + 24);
      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_100009FD0;
      sub_100009BA4();
      sub_100009B44();
      v54 = v78;
      v46(v14, v78, v10);
      sub_100009B34();
      sub_100009BA4();
      sub_100009B44();
      v46(v14, v54, v10);
      sub_100009B34();
    }

    else
    {
      if (a1 == 3)
      {
        sub_100009BA4();
        sub_100009B44();
        v26 = enum case for LocalizedStringResource.BundleDescription.main(_:);
        v27 = *(v11 + 104);
        v28 = v10;
        v27(v14, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
        sub_100009B34();
        sub_100009BA4();
        sub_100009B44();
        v29 = v26;
        v27(v14, v26, v28);
        v30 = v84;
        sub_100009B34();
        v32 = *(v20 + 56);
        v31 = v20 + 56;
        v32(v30, 0, 1, v80);
        v33 = v83;
        sub_1000099B4();
        v34 = sub_1000099C4();
        (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
        sub_1000089C4(0, &qword_100010158, &type metadata accessor for LocalizedStringResource, &type metadata accessor for _ContiguousArrayStorage);
        v35 = *(v31 + 16);
        v36 = (*(v31 + 24) + 32) & ~*(v31 + 24);
        v80 = swift_allocObject();
        *(v80 + 16) = xmmword_100009FD0;
        sub_100009BA4();
        sub_100009B44();
        v27(v14, v29, v28);
        sub_100009B34();
        sub_100009BA4();
        sub_100009B44();
        v27(v14, v29, v28);
        sub_100009B34();
        sub_100009BA4();
        sub_100009B44();
        v27(v14, v29, v28);
        goto LABEL_7;
      }

      sub_100009BA4();
      sub_100009B44();
      v55 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v56 = *(v11 + 104);
      v78 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v45 = v10;
      v56(v14, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
      sub_100009B34();
      sub_100009BA4();
      sub_100009B44();
      v56(v14, v55, v10);
      v46 = v56;
      v57 = v84;
      sub_100009B34();
      v59 = *(v20 + 56);
      v58 = v20 + 56;
      v59(v57, 0, 1, v80);
      v60 = v83;
      sub_1000099B4();
      v61 = sub_1000099C4();
      (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
      sub_1000089C4(0, &qword_100010158, &type metadata accessor for LocalizedStringResource, &type metadata accessor for _ContiguousArrayStorage);
      v62 = *(v58 + 16);
      v63 = (*(v58 + 24) + 32) & ~*(v58 + 24);
      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_100009FD0;
      sub_100009BA4();
      sub_100009B44();
      v54 = v78;
      v46(v14, v78, v10);
      sub_100009B34();
      sub_100009BA4();
      sub_100009B44();
      v46(v14, v54, v10);
      sub_100009B34();
    }

    sub_100009BA4();
    sub_100009B44();
    v46(v14, v54, v45);
    goto LABEL_7;
  }

  sub_100009BA4();
  sub_100009B44();
  if (a1)
  {
    v64 = enum case for LocalizedStringResource.BundleDescription.main(_:);
    v65 = *(v11 + 104);
    v78 = enum case for LocalizedStringResource.BundleDescription.main(_:);
    v65(v14, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
    v77 = v65;
    sub_100009B34();
    sub_100009BA4();
    sub_100009B44();
    v65(v14, v64, v10);
    v66 = v84;
    sub_100009B34();
    v68 = *(v20 + 56);
    v67 = v20 + 56;
    v68(v66, 0, 1, v80);
    v69 = v83;
    sub_1000099B4();
    v70 = sub_1000099C4();
    (*(*(v70 - 8) + 56))(v69, 0, 1, v70);
    sub_1000089C4(0, &qword_100010158, &type metadata accessor for LocalizedStringResource, &type metadata accessor for _ContiguousArrayStorage);
    v71 = *(v67 + 16);
    v72 = (*(v67 + 24) + 32) & ~*(v67 + 24);
    *(swift_allocObject() + 16) = xmmword_100009FE0;
    sub_100009BA4();
    sub_100009B44();
    v73 = v78;
    v74 = v77;
    v77(v14, v78, v10);
    sub_100009B34();
    sub_100009BA4();
    sub_100009B44();
    v74(v14, v73, v10);
  }

  else
  {
    v37 = enum case for LocalizedStringResource.BundleDescription.main(_:);
    v38 = *(v11 + 104);
    v39 = v10;
    v38(v14, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
    sub_100009B34();
    sub_100009BA4();
    sub_100009B44();
    v38(v14, v37, v10);
    v40 = v84;
    sub_100009B34();
    (*(v20 + 56))(v40, 0, 1, v80);
    v41 = v83;
    sub_1000099B4();
    v42 = sub_1000099C4();
    (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
    sub_100009BA4();
    sub_100009B44();
    v38(v14, v37, v39);
  }

LABEL_7:
  sub_100009B34();
  return sub_1000099E4();
}

uint64_t sub_100002EF8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100006DE4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100006CBC();
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_100006C70();
    **(*(v4 + 64) + 40) = sub_100009BF4();

    return _swift_continuation_throwingResume(v4);
  }
}

unint64_t sub_100002FD8()
{
  result = qword_100010088;
  if (!qword_100010088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010088);
  }

  return result;
}

uint64_t sub_10000302C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x5F53454352554F53;
    }

    else
    {
      v3 = 1953460082;
    }

    if (v2)
    {
      v5 = 0xEC0000004D455449;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000013;
      v4 = "HEALTH_DETAILS_ITEM";
      goto LABEL_12;
    }

    if (a1 == 3)
    {
      v3 = 0xD000000000000013;
      v4 = "HEALTH_RECORDS_ITEM";
LABEL_12:
      v5 = (v4 - 32) | 0x8000000000000000;
      goto LABEL_14;
    }

    v3 = 0x5F4C41434944454DLL;
    v5 = 0xEF4D4554495F4449;
  }

LABEL_14:
  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0x5F53454352554F53;
    }

    else
    {
      v7 = 1953460082;
    }

    if (a2)
    {
      v8 = 0xEC0000004D455449;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v3 != v7)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (a2 == 2)
  {
    v6 = "HEALTH_DETAILS_ITEM";
LABEL_27:
    v8 = (v6 - 32) | 0x8000000000000000;
    if (v3 != 0xD000000000000013)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (a2 == 3)
  {
    v6 = "HEALTH_RECORDS_ITEM";
    goto LABEL_27;
  }

  v8 = 0xEF4D4554495F4449;
  if (v3 != 0x5F4C41434944454DLL)
  {
LABEL_32:
    v9 = sub_100009C84();
    goto LABEL_33;
  }

LABEL_30:
  if (v5 != v8)
  {
    goto LABEL_32;
  }

  v9 = 1;
LABEL_33:

  return v9 & 1;
}

Swift::Int sub_1000031E0()
{
  v1 = *v0;
  sub_100009CA4();
  sub_100009BD4();

  return sub_100009CB4();
}

uint64_t sub_1000032D8()
{
  *v0;
  *v0;
  *v0;
  sub_100009BD4();
}

Swift::Int sub_1000033BC()
{
  v1 = *v0;
  sub_100009CA4();
  sub_100009BD4();

  return sub_100009CB4();
}

uint64_t sub_1000034B0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100005EAC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1000034E0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1953460082;
  v5 = 0x800000010000A920;
  v6 = 0xD000000000000013;
  v7 = 0x800000010000A940;
  v8 = 0xD000000000000013;
  if (v2 != 3)
  {
    v8 = 0x5F4C41434944454DLL;
    v7 = 0xEF4D4554495F4449;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x5F53454352554F53;
    v3 = 0xEC0000004D455449;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_100003598()
{
  result = qword_100010090;
  if (!qword_100010090)
  {
    sub_100006E28(255, &qword_100010098, &type metadata for SettingsPane, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010090);
  }

  return result;
}

unint64_t sub_100003624()
{
  v1 = *v0;
  v2 = 1953460082;
  v3 = 0xD000000000000013;
  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0x5F4C41434944454DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x5F53454352554F53;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000036D4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_100005EAC(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_100003720()
{
  result = qword_1000100A0;
  if (!qword_1000100A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100A0);
  }

  return result;
}

uint64_t sub_100003774()
{
  sub_1000089C4(0, &qword_100010140, &type metadata accessor for LocalizedStringResource, &type metadata accessor for Optional);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_100009B04();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009B54();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_100009BB4();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_100009B24();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_100009AC4();
  sub_100005D8C(v15, qword_100010260);
  sub_100005D54(v15, qword_100010260);
  sub_100009BA4();
  sub_100009B44();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_100009B34();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_100009AB4();
}

uint64_t sub_100003A80()
{
  sub_100005E44(0, &qword_100010170, sub_100003FEC, &type metadata accessor for EntityURLRepresentation.StringInterpolation.Token);
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v0);
  v5 = &v11 - v4;
  sub_100005E44(0, &qword_100010178, sub_100003FEC, &type metadata accessor for EntityURLRepresentation.StringInterpolation);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  sub_100005E44(0, &qword_100010168, sub_100003FEC, &type metadata accessor for EntityURLRepresentation);
  v9 = v8;
  sub_100005D8C(v8, qword_100010278);
  sub_100005D54(v9, qword_100010278);
  sub_100003FEC();
  sub_100009A74();
  v12._object = 0x800000010000AFF0;
  v12._countAndFlagsBits = 0xD00000000000003FLL;
  sub_100009A64(v12);
  (*(v2 + 104))(v5, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_100009A54();
  (*(v2 + 8))(v5, v1);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_100009A64(v13);
  return sub_100009A84();
}

uint64_t sub_100003CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_100003D84;

  return (sub_100006E78)(a2, a3);
}

uint64_t sub_100003D84(uint64_t a1)
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

uint64_t sub_100003E94(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100008AD0;

  return sub_100005EF8();
}

unint64_t sub_100003F40()
{
  result = qword_1000100A8;
  if (!qword_1000100A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100A8);
  }

  return result;
}

unint64_t sub_100003F98()
{
  result = qword_1000100B0;
  if (!qword_1000100B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100B0);
  }

  return result;
}

unint64_t sub_100003FEC()
{
  result = qword_1000100B8;
  if (!qword_1000100B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100B8);
  }

  return result;
}

uint64_t sub_100004044(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008AF4;

  return sub_100007DDC(a1);
}

uint64_t sub_1000040EC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100008AD0;

  return sub_1000060F4();
}

uint64_t sub_100004190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100004250;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100004250(uint64_t a1)
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

unint64_t sub_100004354()
{
  result = qword_1000100C0;
  if (!qword_1000100C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100C0);
  }

  return result;
}

unint64_t sub_1000043A8()
{
  result = qword_1000100C8;
  if (!qword_1000100C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100C8);
  }

  return result;
}

unint64_t sub_100004400()
{
  result = qword_1000100D0;
  if (!qword_1000100D0)
  {
    sub_100006E28(255, &qword_1000100D8, &type metadata for HealthSettingsDeepLink, &type metadata accessor for Array);
    sub_1000043A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100D0);
  }

  return result;
}

uint64_t sub_10000449C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100003720();
  *v6 = v2;
  v6[1] = sub_100004550;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100004550()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_10000468C()
{
  result = qword_1000100E0;
  if (!qword_1000100E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100E0);
  }

  return result;
}

uint64_t sub_1000046E0@<X0>(uint64_t a1@<X8>)
{
  if (qword_100010040 != -1)
  {
    swift_once();
  }

  sub_100005E44(0, &qword_100010168, sub_100003FEC, &type metadata accessor for EntityURLRepresentation);
  v3 = v2;
  v4 = sub_100005D54(v2, qword_100010278);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

unint64_t sub_1000047BC()
{
  result = qword_1000100E8;
  if (!qword_1000100E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100E8);
  }

  return result;
}

unint64_t sub_100004814()
{
  result = qword_1000100F0;
  if (!qword_1000100F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100F0);
  }

  return result;
}

unint64_t sub_10000486C()
{
  result = qword_1000100F8;
  if (!qword_1000100F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100F8);
  }

  return result;
}

uint64_t sub_1000048C0()
{
  sub_100005DF0();
  v1 = sub_100009A24();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100004930()
{
  result = qword_100010100;
  if (!qword_100010100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010100);
  }

  return result;
}

unint64_t sub_100004988()
{
  result = qword_100010108;
  if (!qword_100010108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010108);
  }

  return result;
}

unint64_t sub_1000049E4()
{
  result = qword_100010110;
  if (!qword_100010110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010110);
  }

  return result;
}

unint64_t sub_100004A3C()
{
  result = qword_100010118;
  if (!qword_100010118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010118);
  }

  return result;
}

uint64_t sub_100004AD8@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_100005D54(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

unint64_t sub_100004B84()
{
  result = qword_100010120;
  if (!qword_100010120)
  {
    sub_100005E44(255, &qword_100010128, sub_1000043A8, &type metadata accessor for EmptyResolverSpecification);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010120);
  }

  return result;
}

uint64_t sub_100004C0C(uint64_t a1)
{
  v2 = sub_100003FEC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100004C5C()
{
  result = qword_100010130;
  if (!qword_100010130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010130);
  }

  return result;
}

uint64_t sub_100004CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100004550;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100004D7C(uint64_t a1)
{
  v2 = sub_1000049E4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100004E0C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100004EA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100004F70()
{
  v0 = sub_100009B94();
  sub_100005D8C(v0, qword_100010290);
  sub_100005D54(v0, qword_100010290);
  return sub_100009B84();
}

char *sub_100004FF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006E28(0, &qword_1000101A8, &type metadata for HealthSettingsDeepLink, &type metadata accessor for _ContiguousArrayStorage);
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

uint64_t sub_1000050FC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000051C8(v11, 0, 0, 1, a1, a2);
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
    sub_100006D30(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100006D94(v11);
  return v7;
}

unint64_t sub_1000051C8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000052D4(a5, a6);
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
    result = sub_100009C54();
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

char *sub_1000052D4(uint64_t a1, unint64_t a2)
{
  v4 = sub_100005320(a1, a2);
  sub_100005450(&off_10000CA60);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100005320(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000553C(v5, 0);
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

  result = sub_100009C54();
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
        v10 = sub_100009BE4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000553C(v10, 0);
        result = sub_100009C44();
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

uint64_t sub_100005450(uint64_t result)
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

  result = sub_1000055C8(result, v12, 1, v3);
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

void *sub_10000553C(uint64_t a1, uint64_t a2)
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

  sub_100006E28(0, &qword_1000101A0, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000055C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006E28(0, &qword_1000101A0, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
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

char *sub_1000056D4(char *a1, int64_t a2, char a3)
{
  result = sub_1000056F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000056F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006E28(0, &qword_1000101A8, &type metadata for HealthSettingsDeepLink, &type metadata accessor for _ContiguousArrayStorage);
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

uint64_t sub_100005800()
{
  v0 = sub_100009A94();
  v36 = *(v0 - 8);
  v37 = v0;
  v1 = *(v36 + 64);
  (__chkstk_darwin)();
  v35 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089C4(0, &qword_100010138, &type metadata accessor for IntentDialog, &type metadata accessor for Optional);
  v4 = *(*(v3 - 8) + 64);
  v5 = (__chkstk_darwin)();
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v33 = &v29 - v7;
  sub_1000089C4(0, &qword_100010140, &type metadata accessor for LocalizedStringResource, &type metadata accessor for Optional);
  v9 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8 - 8);
  v32 = &v29 - v10;
  v11 = sub_100009B04();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100009B54();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v18 = sub_100009BB4();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v30 = sub_100009B24();
  v20 = *(v30 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v30);
  sub_100005E44(0, &qword_100010148, sub_1000043A8, &type metadata accessor for IntentParameter);
  v31 = v22;
  sub_100009BA4();
  sub_100009B44();
  v23 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v24 = *(v12 + 104);
  v24(v15, enum case for LocalizedStringResource.BundleDescription.main(_:), v11);
  sub_100009B34();
  sub_100009BA4();
  sub_100009B44();
  v24(v15, v23, v11);
  v25 = v32;
  sub_100009B34();
  (*(v20 + 56))(v25, 0, 1, v30);
  v38 = 5;
  v26 = sub_100009834();
  v27 = *(*(v26 - 8) + 56);
  v27(v33, 1, 1, v26);
  v27(v34, 1, 1, v26);
  (*(v36 + 104))(v35, enum case for InputConnectionBehavior.default(_:), v37);
  sub_100003FEC();
  return sub_100009874();
}

uint64_t sub_100005D54(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100005D8C(uint64_t a1, uint64_t *a2)
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

unint64_t sub_100005DF0()
{
  result = qword_100010160;
  if (!qword_100010160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010160);
  }

  return result;
}

void sub_100005E44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v7 = a3();
    v8 = a4(a1, &type metadata for HealthSettingsDeepLink, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100005EAC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10000CA88;
  v6._object = a2;
  v4 = sub_100009C74(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100005F14()
{
  sub_1000056D4(0, 5, 0);
  v2 = *(&_swiftEmptyArrayStorage + 2);
  v1 = *(&_swiftEmptyArrayStorage + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1000056D4((v1 > 1), v2 + 1, 1);
    v1 = *(&_swiftEmptyArrayStorage + 3);
    v3 = v1 >> 1;
  }

  *(&_swiftEmptyArrayStorage + 2) = v4;
  *(&_swiftEmptyArrayStorage + v2 + 32) = 0;
  v5 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    sub_1000056D4((v1 > 1), v2 + 2, 1);
    v1 = *(&_swiftEmptyArrayStorage + 3);
    v3 = v1 >> 1;
  }

  *(&_swiftEmptyArrayStorage + 2) = v5;
  *(&_swiftEmptyArrayStorage + v4 + 32) = 1;
  v6 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    sub_1000056D4((v1 > 1), v2 + 3, 1);
  }

  *(&_swiftEmptyArrayStorage + 2) = v6;
  *(&_swiftEmptyArrayStorage + v5 + 32) = 2;
  v7 = *(&_swiftEmptyArrayStorage + 3);
  v8 = v7 >> 1;
  v9 = v2 + 4;
  if ((v7 >> 1) < (v2 + 4))
  {
    sub_1000056D4((v7 > 1), v2 + 4, 1);
    v7 = *(&_swiftEmptyArrayStorage + 3);
    v8 = v7 >> 1;
  }

  *(&_swiftEmptyArrayStorage + 2) = v9;
  *(&_swiftEmptyArrayStorage + v6 + 32) = 3;
  if (v8 < (v2 + 5))
  {
    sub_1000056D4((v7 > 1), v2 + 5, 1);
  }

  *(&_swiftEmptyArrayStorage + 2) = v2 + 5;
  *(&_swiftEmptyArrayStorage + v9 + 32) = 4;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100006110()
{
  v1 = 0;
  v2 = &_swiftEmptyArrayStorage;
  while (1)
  {
    *(v0 + 184) = v1;
    *(v0 + 192) = v2;
    v4 = *(&off_10000CB48 + v1 + 32);
    *(v0 + 216) = v4;
    if (v4 < 3)
    {
      goto LABEL_5;
    }

    if (v4 != 4)
    {
      break;
    }

    v8 = v2;
    v9 = [objc_opt_self() shared];
    v10 = [v9 isMedicalIDAvailable];

    v2 = v8;
    if (v10)
    {
      v11 = *(v0 + 192);
LABEL_5:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v2 = *(v0 + 192);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v2 = sub_100004FF0(0, *(v2 + 2) + 1, 1, *(v0 + 192));
      }

      v7 = *(v2 + 2);
      v6 = *(v2 + 3);
      if (v7 >= v6 >> 1)
      {
        v2 = sub_100004FF0((v6 > 1), v7 + 1, 1, v2);
      }

      v3 = *(v0 + 216);
      *(v2 + 2) = v7 + 1;
      v2[v7 + 32] = v3;
    }

    v1 = *(v0 + 184) + 1;
    if (*(v0 + 184) == 4)
    {
      v12 = *(v0 + 8);

      return v12(v2);
    }
  }

  v14 = [objc_allocWithZone(HKHealthStore) init];
  v15 = [objc_allocWithZone(HKHealthRecordsStore) initWithHealthStore:v14];
  *(v0 + 200) = v15;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 168;
  *(v0 + 24) = sub_1000063B0;
  v16 = swift_continuation_init();
  sub_100006BD0();
  *(v0 + 136) = v17;
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100002EF8;
  *(v0 + 104) = &unk_10000CCF0;
  *(v0 + 112) = v16;
  [v15 fetchClinicalConnectedAccountsWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1000063B0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_100006794;
  }

  else
  {
    v3 = sub_1000064C0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000064C0()
{
  v1 = *(v0 + 168);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v4 = *(v0 + 168);
    }

    v2 = sub_100009C64();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    goto LABEL_13;
  }

  v3 = *(v0 + 192);
  while (1)
  {
    v5 = *(v0 + 184) + 1;
    if (*(v0 + 184) == 4)
    {
      break;
    }

    *(v0 + 184) = v5;
    *(v0 + 192) = v3;
    v6 = *(&off_10000CB48 + v5 + 32);
    *(v0 + 216) = v6;
    if (v6 == 4)
    {
      v7 = [objc_opt_self() shared];
      v8 = [v7 isMedicalIDAvailable];

      if (v8)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v6 >= 3)
      {
        v16 = [objc_allocWithZone(HKHealthStore) init];
        v17 = [objc_allocWithZone(HKHealthRecordsStore) initWithHealthStore:v16];
        *(v0 + 200) = v17;

        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 168;
        *(v0 + 24) = sub_1000063B0;
        v18 = swift_continuation_init();
        sub_100006BD0();
        *(v0 + 136) = v19;
        *(v0 + 80) = _NSConcreteStackBlock;
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_100002EF8;
        *(v0 + 104) = &unk_10000CCF0;
        *(v0 + 112) = v18;
        [v17 fetchClinicalConnectedAccountsWithCompletion:v0 + 80];

        return _swift_continuation_await(v0 + 16);
      }

LABEL_13:
      v9 = *(v0 + 192);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v3 = *(v0 + 192);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v3 = sub_100004FF0(0, *(v3 + 2) + 1, 1, *(v0 + 192));
      }

      v12 = *(v3 + 2);
      v11 = *(v3 + 3);
      if (v12 >= v11 >> 1)
      {
        v3 = sub_100004FF0((v11 > 1), v12 + 1, 1, v3);
      }

      v13 = *(v0 + 216);
      *(v3 + 2) = v12 + 1;
      v3[v12 + 32] = v13;
    }
  }

  v14 = *(v0 + 8);

  return v14(v3);
}

uint64_t sub_100006794()
{
  v33 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  swift_willThrow();

  if (qword_100010048 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 208);
  v4 = sub_100009B94();
  sub_100005D54(v4, qword_100010290);
  swift_errorRetain();
  v5 = sub_100009B74();
  v6 = sub_100009C24();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 208);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_1000050FC(0x73676E6974746553, 0xEC000000656E6150, v32);
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v11 = *(v0 + 144);
    v10 = *(v0 + 152);
    v12 = *(v0 + 160);
    v13 = sub_100009C94();
    v15 = sub_1000050FC(v13, v14, v32);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s failed to fetch CHR accounts: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v16 = *(v0 + 192);
  while (1)
  {
    v17 = *(v0 + 184) + 1;
    if (*(v0 + 184) == 4)
    {
      break;
    }

    *(v0 + 184) = v17;
    *(v0 + 192) = v16;
    v18 = *(&off_10000CB48 + v17 + 32);
    *(v0 + 216) = v18;
    if (v18 == 4)
    {
      v19 = [objc_opt_self() shared];
      v20 = [v19 isMedicalIDAvailable];

      if (v20)
      {
        v21 = *(v0 + 192);
        goto LABEL_12;
      }
    }

    else
    {
      if (v18 >= 3)
      {
        v28 = [objc_allocWithZone(HKHealthStore) init];
        v29 = [objc_allocWithZone(HKHealthRecordsStore) initWithHealthStore:v28];
        *(v0 + 200) = v29;

        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 168;
        *(v0 + 24) = sub_1000063B0;
        v30 = swift_continuation_init();
        sub_100006BD0();
        *(v0 + 136) = v31;
        *(v0 + 80) = _NSConcreteStackBlock;
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_100002EF8;
        *(v0 + 104) = &unk_10000CCF0;
        *(v0 + 112) = v30;
        [v29 fetchClinicalConnectedAccountsWithCompletion:v0 + 80];

        return _swift_continuation_await(v0 + 16);
      }

LABEL_12:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *(v0 + 192);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = sub_100004FF0(0, *(v16 + 2) + 1, 1, *(v0 + 192));
      }

      v24 = *(v16 + 2);
      v23 = *(v16 + 3);
      if (v24 >= v23 >> 1)
      {
        v16 = sub_100004FF0((v23 > 1), v24 + 1, 1, v16);
      }

      v25 = *(v0 + 216);
      *(v16 + 2) = v24 + 1;
      v16[v24 + 32] = v25;
    }
  }

  v26 = *(v0 + 8);

  return v26(v16);
}

void sub_100006BD0()
{
  if (!qword_100010180)
  {
    sub_1000089C4(255, &qword_100010188, sub_100006C70, &type metadata accessor for Array);
    sub_100006CBC();
    v0 = sub_100009C14();
    if (!v1)
    {
      atomic_store(v0, &qword_100010180);
    }
  }
}

unint64_t sub_100006C70()
{
  result = qword_100010190;
  if (!qword_100010190)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100010190);
  }

  return result;
}

unint64_t sub_100006CBC()
{
  result = qword_100010198;
  if (!qword_100010198)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100010198);
  }

  return result;
}

uint64_t sub_100006D30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100006D94(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_100006DE4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_100006E28(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100006E78(uint64_t a1, uint64_t a2)
{
  v2[27] = a1;
  v2[28] = a2;
  v3 = *(*(sub_100009B54() - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  v4 = sub_1000099F4();
  v2[30] = v4;
  v5 = *(v4 - 8);
  v2[31] = v5;
  v6 = *(v5 + 64) + 15;
  v2[32] = swift_task_alloc();
  v7 = sub_100009B24();
  v2[33] = v7;
  v8 = *(v7 - 8);
  v2[34] = v8;
  v9 = *(v8 + 64) + 15;
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();

  return _swift_task_switch(sub_100006FCC, 0, 0);
}

uint64_t sub_100006FCC()
{
  v1 = 0;
  v2 = &_swiftEmptyArrayStorage;
  while (1)
  {
    *(v0 + 296) = v1;
    *(v0 + 304) = v2;
    v4 = *(&off_10000CB70 + v1 + 32);
    *(v0 + 328) = v4;
    if (v4 < 3)
    {
      goto LABEL_5;
    }

    if (v4 != 4)
    {
      break;
    }

    v19 = [objc_opt_self() shared];
    v20 = [v19 isMedicalIDAvailable];

    if (v20)
    {
      LOBYTE(v4) = *(v0 + 328);
LABEL_5:
      v6 = *(v0 + 280);
      v5 = *(v0 + 288);
      v7 = *(v0 + 264);
      v8 = *(v0 + 272);
      v10 = *(v0 + 248);
      v9 = *(v0 + 256);
      v12 = *(v0 + 232);
      v11 = *(v0 + 240);
      v13 = *(v0 + 216);
      v31 = *(v0 + 224);
      sub_100001D2C(v4, v9);
      sub_1000099D4();
      (*(v10 + 8))(v9, v11);
      sub_100009B44();
      sub_100009B14();
      (*(v8 + 16))(v6, v5, v7);
      *(v0 + 168) = sub_100009BC4();
      *(v0 + 176) = v14;
      *(v0 + 184) = v13;
      *(v0 + 192) = v31;
      sub_1000088C8();
      LOBYTE(v11) = sub_100009C34();
      (*(v8 + 8))(v5, v7);

      v2 = *(v0 + 304);
      if (v11)
      {
        v15 = *(v0 + 304);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v2 = *(v0 + 304);
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v2 = sub_100004FF0(0, *(v2 + 2) + 1, 1, *(v0 + 304));
        }

        v18 = *(v2 + 2);
        v17 = *(v2 + 3);
        if (v18 >= v17 >> 1)
        {
          v2 = sub_100004FF0((v17 > 1), v18 + 1, 1, v2);
        }

        v3 = *(v0 + 328);
        *(v2 + 2) = v18 + 1;
        v2[v18 + 32] = v3;
      }
    }

    v1 = *(v0 + 296) + 1;
    if (*(v0 + 296) == 4)
    {
      v22 = *(v0 + 280);
      v21 = *(v0 + 288);
      v23 = *(v0 + 256);
      v24 = *(v0 + 232);

      v25 = *(v0 + 8);

      return v25(v2);
    }
  }

  v27 = [objc_allocWithZone(HKHealthStore) init];
  v28 = [objc_allocWithZone(HKHealthRecordsStore) initWithHealthStore:v27];
  *(v0 + 312) = v28;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 200;
  *(v0 + 24) = sub_100007378;
  v29 = swift_continuation_init();
  sub_100006BD0();
  *(v0 + 136) = v30;
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100002EF8;
  *(v0 + 104) = &unk_10000CD40;
  *(v0 + 112) = v29;
  [v28 fetchClinicalConnectedAccountsWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100007378()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 320) = v2;
  if (v2)
  {
    v3 = sub_100007880;
  }

  else
  {
    v3 = sub_100007488;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100007488()
{
  v1 = *(v0 + 200);
  if (v1 >> 62)
  {
    v2 = sub_100009C64();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    goto LABEL_11;
  }

  v3 = *(v0 + 304);
  while (1)
  {
    v4 = *(v0 + 296) + 1;
    if (*(v0 + 296) == 4)
    {
      break;
    }

    *(v0 + 296) = v4;
    *(v0 + 304) = v3;
    v5 = *(&off_10000CB70 + v4 + 32);
    *(v0 + 328) = v5;
    if (v5 == 4)
    {
      v6 = [objc_opt_self() shared];
      v7 = [v6 isMedicalIDAvailable];

      if (v7)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (v5 >= 3)
      {
        v29 = [objc_allocWithZone(HKHealthStore) init];
        v30 = [objc_allocWithZone(HKHealthRecordsStore) initWithHealthStore:v29];
        *(v0 + 312) = v30;

        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 200;
        *(v0 + 24) = sub_100007378;
        v31 = swift_continuation_init();
        sub_100006BD0();
        *(v0 + 136) = v32;
        *(v0 + 80) = _NSConcreteStackBlock;
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_100002EF8;
        *(v0 + 104) = &unk_10000CD40;
        *(v0 + 112) = v31;
        [v30 fetchClinicalConnectedAccountsWithCompletion:v0 + 80];

        return _swift_continuation_await(v0 + 16);
      }

LABEL_11:
      v9 = *(v0 + 280);
      v8 = *(v0 + 288);
      v11 = *(v0 + 264);
      v10 = *(v0 + 272);
      v13 = *(v0 + 248);
      v12 = *(v0 + 256);
      v15 = *(v0 + 232);
      v14 = *(v0 + 240);
      v16 = *(v0 + 216);
      v33 = *(v0 + 224);
      sub_100001D2C(*(v0 + 328), v12);
      sub_1000099D4();
      (*(v13 + 8))(v12, v14);
      sub_100009B44();
      sub_100009B14();
      (*(v10 + 16))(v9, v8, v11);
      *(v0 + 168) = sub_100009BC4();
      *(v0 + 176) = v17;
      *(v0 + 184) = v16;
      *(v0 + 192) = v33;
      sub_1000088C8();
      LOBYTE(v14) = sub_100009C34();
      (*(v10 + 8))(v8, v11);

      v3 = *(v0 + 304);
      if (v14)
      {
        v18 = *(v0 + 304);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v3 = *(v0 + 304);
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v3 = sub_100004FF0(0, *(v3 + 2) + 1, 1, *(v0 + 304));
        }

        v21 = *(v3 + 2);
        v20 = *(v3 + 3);
        if (v21 >= v20 >> 1)
        {
          v3 = sub_100004FF0((v20 > 1), v21 + 1, 1, v3);
        }

        v22 = *(v0 + 328);
        *(v3 + 2) = v21 + 1;
        v3[v21 + 32] = v22;
      }
    }
  }

  v24 = *(v0 + 280);
  v23 = *(v0 + 288);
  v25 = *(v0 + 256);
  v26 = *(v0 + 232);

  v27 = *(v0 + 8);

  return v27(v3);
}

uint64_t sub_100007880()
{
  v52 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  swift_willThrow();

  if (qword_100010048 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 320);
  v4 = sub_100009B94();
  sub_100005D54(v4, qword_100010290);
  swift_errorRetain();
  v5 = sub_100009B74();
  v6 = sub_100009C24();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 320);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v51[0] = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_1000050FC(0x73676E6974746553, 0xEC000000656E6150, v51);
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v11 = *(v0 + 144);
    v10 = *(v0 + 152);
    v12 = *(v0 + 160);
    v13 = sub_100009C94();
    v15 = sub_1000050FC(v13, v14, v51);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s failed to fetch CHR accounts: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v16 = *(v0 + 304);
  v17 = &_s10AppIntents010_AssistantB8ProviderPAAE14uniqueEntitiesSayAA01_C19UniqueEntityExampleVGvgZ_ptr;
  v18 = &selRef_shared;
  v19 = &selRef_shared;
  while (1)
  {
    v20 = *(v0 + 296) + 1;
    if (*(v0 + 296) == 4)
    {
      break;
    }

    *(v0 + 296) = v20;
    *(v0 + 304) = v16;
    v21 = *(&off_10000CB70 + v20 + 32);
    *(v0 + 328) = v21;
    if (v21 == 4)
    {
      v22 = v17[158];
      v23 = [objc_opt_self() *v18];
      v24 = [v23 v19[1]];

      if (v24)
      {
        LOBYTE(v21) = *(v0 + 328);
        goto LABEL_12;
      }
    }

    else
    {
      if (v21 >= 3)
      {
        v46 = [objc_allocWithZone(HKHealthStore) init];
        v47 = [objc_allocWithZone(HKHealthRecordsStore) initWithHealthStore:v46];
        *(v0 + 312) = v47;

        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 200;
        *(v0 + 24) = sub_100007378;
        v48 = swift_continuation_init();
        sub_100006BD0();
        *(v0 + 136) = v49;
        *(v0 + 80) = _NSConcreteStackBlock;
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_100002EF8;
        *(v0 + 104) = &unk_10000CD40;
        *(v0 + 112) = v48;
        [v47 fetchClinicalConnectedAccountsWithCompletion:v0 + 80];

        return _swift_continuation_await(v0 + 16);
      }

LABEL_12:
      v26 = *(v0 + 280);
      v25 = *(v0 + 288);
      v27 = *(v0 + 264);
      v28 = *(v0 + 272);
      v29 = *(v0 + 248);
      v30 = *(v0 + 256);
      v32 = *(v0 + 232);
      v31 = *(v0 + 240);
      v33 = *(v0 + 216);
      v50 = *(v0 + 224);
      sub_100001D2C(v21, v30);
      sub_1000099D4();
      (*(v29 + 8))(v30, v31);
      sub_100009B44();
      sub_100009B14();
      (*(v28 + 16))(v26, v25, v27);
      *(v0 + 168) = sub_100009BC4();
      *(v0 + 176) = v34;
      *(v0 + 184) = v33;
      *(v0 + 192) = v50;
      sub_1000088C8();
      LOBYTE(v31) = sub_100009C34();
      (*(v28 + 8))(v25, v27);

      v16 = *(v0 + 304);
      v17 = &_s10AppIntents010_AssistantB8ProviderPAAE14uniqueEntitiesSayAA01_C19UniqueEntityExampleVGvgZ_ptr;
      v18 = &selRef_shared;
      v19 = &selRef_shared;
      if (v31)
      {
        v35 = *(v0 + 304);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = *(v0 + 304);
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v16 = sub_100004FF0(0, *(v16 + 2) + 1, 1, *(v0 + 304));
        }

        v38 = *(v16 + 2);
        v37 = *(v16 + 3);
        if (v38 >= v37 >> 1)
        {
          v16 = sub_100004FF0((v37 > 1), v38 + 1, 1, v16);
        }

        v39 = *(v0 + 328);
        *(v16 + 2) = v38 + 1;
        v16[v38 + 32] = v39;
      }
    }
  }

  v41 = *(v0 + 280);
  v40 = *(v0 + 288);
  v42 = *(v0 + 256);
  v43 = *(v0 + 232);

  v44 = *(v0 + 8);

  return v44(v16);
}

uint64_t sub_100007DFC()
{
  v1 = *(*(v0 + 184) + 16);
  *(v0 + 192) = v1;
  if (v1)
  {
    v2 = 0;
    v3 = &_swiftEmptyArrayStorage;
    while (1)
    {
      *(v0 + 200) = v2;
      *(v0 + 208) = v3;
      v5 = *(*(v0 + 184) + v2 + 32);
      *(v0 + 232) = v5;
      if (v5 < 3)
      {
        goto LABEL_6;
      }

      if (v5 != 4)
      {
        v15 = [objc_allocWithZone(HKHealthStore) init];
        v16 = [objc_allocWithZone(HKHealthRecordsStore) initWithHealthStore:v15];
        *(v0 + 216) = v16;

        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 168;
        *(v0 + 24) = sub_1000080B0;
        v17 = swift_continuation_init();
        sub_100006BD0();
        *(v0 + 136) = v18;
        *(v0 + 80) = _NSConcreteStackBlock;
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_100002EF8;
        *(v0 + 104) = &unk_10000CD18;
        *(v0 + 112) = v17;
        [v16 fetchClinicalConnectedAccountsWithCompletion:v0 + 80];

        return _swift_continuation_await(v0 + 16);
      }

      v9 = v3;
      v10 = [objc_opt_self() shared];
      v11 = [v10 isMedicalIDAvailable];

      v3 = v9;
      if (v11)
      {
        break;
      }

LABEL_4:
      v2 = *(v0 + 200) + 1;
      if (v2 == *(v0 + 192))
      {
        goto LABEL_14;
      }
    }

    v12 = *(v0 + 208);
LABEL_6:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = *(v0 + 208);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_100004FF0(0, *(v3 + 2) + 1, 1, *(v0 + 208));
    }

    v8 = *(v3 + 2);
    v7 = *(v3 + 3);
    if (v8 >= v7 >> 1)
    {
      v3 = sub_100004FF0((v7 > 1), v8 + 1, 1, v3);
    }

    v4 = *(v0 + 232);
    *(v3 + 2) = v8 + 1;
    v3[v8 + 32] = v4;
    goto LABEL_4;
  }

  v3 = &_swiftEmptyArrayStorage;
LABEL_14:
  v13 = *(v0 + 8);

  return v13(v3);
}

uint64_t sub_1000080B0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_100008490;
  }

  else
  {
    v3 = sub_1000081C0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000081C0()
{
  v1 = *(v0 + 168);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v4 = *(v0 + 168);
    }

    v2 = sub_100009C64();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    goto LABEL_13;
  }

  v3 = *(v0 + 208);
  while (1)
  {
    v5 = *(v0 + 200) + 1;
    if (v5 == *(v0 + 192))
    {
      break;
    }

    *(v0 + 200) = v5;
    *(v0 + 208) = v3;
    v6 = *(*(v0 + 184) + v5 + 32);
    *(v0 + 232) = v6;
    if (v6 == 4)
    {
      v7 = [objc_opt_self() shared];
      v8 = [v7 isMedicalIDAvailable];

      if (v8)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v6 >= 3)
      {
        v16 = [objc_allocWithZone(HKHealthStore) init];
        v17 = [objc_allocWithZone(HKHealthRecordsStore) initWithHealthStore:v16];
        *(v0 + 216) = v17;

        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 168;
        *(v0 + 24) = sub_1000080B0;
        v18 = swift_continuation_init();
        sub_100006BD0();
        *(v0 + 136) = v19;
        *(v0 + 80) = _NSConcreteStackBlock;
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_100002EF8;
        *(v0 + 104) = &unk_10000CD18;
        *(v0 + 112) = v18;
        [v17 fetchClinicalConnectedAccountsWithCompletion:v0 + 80];

        return _swift_continuation_await(v0 + 16);
      }

LABEL_13:
      v9 = *(v0 + 208);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v3 = *(v0 + 208);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v3 = sub_100004FF0(0, *(v3 + 2) + 1, 1, *(v0 + 208));
      }

      v12 = *(v3 + 2);
      v11 = *(v3 + 3);
      if (v12 >= v11 >> 1)
      {
        v3 = sub_100004FF0((v11 > 1), v12 + 1, 1, v3);
      }

      v13 = *(v0 + 232);
      *(v3 + 2) = v12 + 1;
      v3[v12 + 32] = v13;
    }
  }

  v14 = *(v0 + 8);

  return v14(v3);
}

uint64_t sub_100008490()
{
  v33 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  swift_willThrow();

  if (qword_100010048 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 224);
  v4 = sub_100009B94();
  sub_100005D54(v4, qword_100010290);
  swift_errorRetain();
  v5 = sub_100009B74();
  v6 = sub_100009C24();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 224);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_1000050FC(0x73676E6974746553, 0xEC000000656E6150, v32);
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v11 = *(v0 + 144);
    v10 = *(v0 + 152);
    v12 = *(v0 + 160);
    v13 = sub_100009C94();
    v15 = sub_1000050FC(v13, v14, v32);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s failed to fetch CHR accounts: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v16 = *(v0 + 208);
  while (1)
  {
    v17 = *(v0 + 200) + 1;
    if (v17 == *(v0 + 192))
    {
      break;
    }

    *(v0 + 200) = v17;
    *(v0 + 208) = v16;
    v18 = *(*(v0 + 184) + v17 + 32);
    *(v0 + 232) = v18;
    if (v18 == 4)
    {
      v19 = [objc_opt_self() shared];
      v20 = [v19 isMedicalIDAvailable];

      if (v20)
      {
        v21 = *(v0 + 208);
        goto LABEL_12;
      }
    }

    else
    {
      if (v18 >= 3)
      {
        v28 = [objc_allocWithZone(HKHealthStore) init];
        v29 = [objc_allocWithZone(HKHealthRecordsStore) initWithHealthStore:v28];
        *(v0 + 216) = v29;

        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 168;
        *(v0 + 24) = sub_1000080B0;
        v30 = swift_continuation_init();
        sub_100006BD0();
        *(v0 + 136) = v31;
        *(v0 + 80) = _NSConcreteStackBlock;
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_100002EF8;
        *(v0 + 104) = &unk_10000CD18;
        *(v0 + 112) = v30;
        [v29 fetchClinicalConnectedAccountsWithCompletion:v0 + 80];

        return _swift_continuation_await(v0 + 16);
      }

LABEL_12:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *(v0 + 208);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = sub_100004FF0(0, *(v16 + 2) + 1, 1, *(v0 + 208));
      }

      v24 = *(v16 + 2);
      v23 = *(v16 + 3);
      if (v24 >= v23 >> 1)
      {
        v16 = sub_100004FF0((v23 > 1), v24 + 1, 1, v16);
      }

      v25 = *(v0 + 232);
      *(v16 + 2) = v24 + 1;
      v16[v24 + 32] = v25;
    }
  }

  v26 = *(v0 + 8);

  return v26(v16);
}

unint64_t sub_1000088C8()
{
  result = qword_1000101B0;
  if (!qword_1000101B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101B0);
  }

  return result;
}

unint64_t sub_10000891C()
{
  result = qword_1000101B8;
  if (!qword_1000101B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101B8);
  }

  return result;
}

unint64_t sub_100008970()
{
  result = qword_1000101C0;
  if (!qword_1000101C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101C0);
  }

  return result;
}

void sub_1000089C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100008A28(uint64_t a1, uint64_t a2)
{
  sub_1000089C4(0, &qword_1000101C8, &type metadata accessor for IntentDescription, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008AF8(uint64_t a1)
{
  v2 = sub_100008C48();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100008BA0();
  sub_100009B64();
  return 0;
}

unint64_t sub_100008BA0()
{
  result = qword_1000101D0;
  if (!qword_1000101D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101D0);
  }

  return result;
}

unint64_t sub_100008C48()
{
  result = qword_1000101D8;
  if (!qword_1000101D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101D8);
  }

  return result;
}

uint64_t sub_100008CAC(uint64_t a1)
{
  v14[1] = a1;
  sub_1000096AC(0, &qword_100010210, &type metadata accessor for _AssistantIntent.Phrase);
  v16 = v1;
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v14 - v4;
  sub_1000096AC(0, &qword_100010218, &type metadata accessor for _AssistantIntent.Phrase.StringInterpolation);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  sub_1000017C0();
  sub_100009934();
  v17._countAndFlagsBits = 0x206E65704FLL;
  v17._object = 0xE500000000000000;
  sub_100009924(v17);
  swift_getKeyPath();
  sub_1000043A8();
  sub_100009884();

  sub_100009914();

  v18._countAndFlagsBits = 0x74746553206E6920;
  v18._object = 0xEC00000073676E69;
  sub_100009924(v18);
  sub_100009944();
  v15 = sub_1000098A4();
  v8 = *(v2 + 8);
  v9 = v16;
  v8(v5, v16);
  sub_100009934();
  v19._countAndFlagsBits = 0x20656D20776F6853;
  v19._object = 0xEB0000000020796DLL;
  sub_100009924(v19);
  swift_getKeyPath();
  sub_100009884();

  sub_100009914();

  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  sub_100009924(v20);
  sub_100009944();
  v10 = sub_1000098A4();
  v8(v5, v9);
  sub_100009550(0, &qword_100010220, sub_100009710, &type metadata accessor for _ContiguousArrayStorage);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100009FD0;
  *(v11 + 32) = v15;
  *(v11 + 40) = v10;
  v12 = sub_100009894();

  return v12;
}

uint64_t sub_100009034()
{
  v0 = sub_100009904();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1000043A8();
  sub_100009884();

  sub_1000017C0();
  sub_1000098F4();
  v5 = sub_1000098E4();
  (*(v1 + 8))(v4, v0);
  sub_100009550(0, &qword_1000101F0, sub_100009628, &type metadata accessor for _ContiguousArrayStorage);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100009FE0;
  *(v6 + 32) = v5;
  v7 = sub_1000098D4();

  return v7;
}

uint64_t sub_1000091C8()
{
  v0 = sub_1000098C4();
  v1 = sub_1000098C4();
  v2 = sub_1000098C4();
  v3 = sub_1000098C4();
  v4 = sub_1000098C4();
  sub_100009550(0, &qword_100010200, sub_10000965C, &type metadata accessor for _ContiguousArrayStorage);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10000A880;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = sub_1000098B4();

  return v6;
}

uint64_t sub_100009324()
{
  v0 = sub_100009974();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = sub_100005800();
  sub_1000017C0();
  sub_100009984();
  v5 = sub_100009964();
  (*(v1 + 8))(v4, v0);
  sub_100009550(0, &qword_1000101E0, sub_10000951C, &type metadata accessor for _ContiguousArrayStorage);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100009FE0;
  *(v6 + 32) = v5;
  v7 = sub_100009954();

  return v7;
}

uint64_t sub_1000094B0()
{
  if (qword_100010050 != -1)
  {
    swift_once();
  }
}

void sub_100009550(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1000095B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_100009854();
  *a2 = v5;
  return result;
}

uint64_t sub_1000095F0(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_100009864();
}

void sub_10000965C()
{
  if (!qword_100010208)
  {
    v0 = sub_100009C04();
    if (!v1)
    {
      atomic_store(v0, &qword_100010208);
    }
  }
}

void sub_1000096AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1000017C0();
    v7 = a3(a1, &type metadata for OpenHealthSettingsIntent, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_100009710()
{
  if (!qword_100010228)
  {
    sub_1000096AC(255, &qword_100010210, &type metadata accessor for _AssistantIntent.Phrase);
    v0 = sub_100009C04();
    if (!v1)
    {
      atomic_store(v0, &qword_100010228);
    }
  }
}