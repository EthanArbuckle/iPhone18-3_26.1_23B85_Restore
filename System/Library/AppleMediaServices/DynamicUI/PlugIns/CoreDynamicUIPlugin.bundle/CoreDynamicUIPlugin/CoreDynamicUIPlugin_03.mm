uint64_t type metadata accessor for PrivacySplashAction()
{
  result = qword_C58C0;
  if (!qword_C58C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_50960(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivacySplashAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_509C4(uint64_t a1)
{
  v2 = type metadata accessor for PrivacySplashAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_50A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_8F0C4();
    v9 = a1 + *(a3 + 28);

    return sub_33C0(v9, a2, v8);
  }
}

uint64_t sub_50AD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_8F0C4();
    v8 = v5 + *(a4 + 28);

    return sub_33E8(v8, a2, a2, v7);
  }

  return result;
}

void sub_50B50()
{
  sub_114C0();
  if (v0 <= 0x3F)
  {
    sub_8F0C4();
    if (v1 <= 0x3F)
    {
      sub_3CAC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_50BFC(uint64_t a1)
{
  result = sub_50C54(&qword_C4B90, type metadata accessor for PrivacySplashAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_50C54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_50CB4()
{

  return sub_8E384();
}

double sub_50CF4()
{
  *(v0 - 112) = 0;
  result = 0.0;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0u;
  return result;
}

uint64_t sub_50D08(uint64_t *a1)
{
  sub_332C(&qword_C3398);
  v3 = sub_8F444();
  if (qword_C2CE0 != -1)
  {
    swift_once();
  }

  v4 = sub_8E304();
  sub_4D6C(v4, qword_D0378);
  sub_332C(&unk_C3920);
  sub_8E2A4();
  *(swift_allocObject() + 16) = xmmword_92310;
  v29 = type metadata accessor for PrivacySplashActionImplementation();
  aBlock[0] = v1;

  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    sub_8F5F4();
  }

  sub_8E284();

  sub_4F30(aBlock);
  sub_8E244();
  sub_8E2E4();

  v7 = a1[3];
  if (v7)
  {
    v8 = a1[2];
    sub_512DC();

    v9 = &selRef_presenterForPrivacySplashWithBundleAtPath_;
    v10 = v8;
    v11 = v7;
  }

  else
  {
    sub_512DC();
    v12 = *a1;
    v13 = a1[1];

    v9 = &selRef_presenterForPrivacySplashWithIdentifier_;
    v10 = v12;
    v11 = v13;
  }

  v14 = sub_51188(v10, v11, v9);
  v15 = v14;
  if (!v14)
  {
    sub_51320();
    swift_allocError();
    *v18 = 1;
    v19 = sub_8F3D4();

    return v19;
  }

  if (a1[5])
  {
    v16 = v14;
    v17 = sub_8F5C4();
    [v16 setDisplayLanguage:v17];
  }

  else
  {
    v20 = v14;
  }

  sub_8E5C4();
  sub_8F174();
  v21 = sub_8F394();
  v22 = (*(*aBlock[0] + 88))(v21);
  if (!v22 || (v23 = v22, v24 = [v22 topViewController], v23, !v24))
  {
    sub_51320();
    swift_allocError();
    *v26 = 0;
    v19 = sub_8F3D4();

    return v19;
  }

  [v15 setPresentingViewController:v24];
  swift_weakInit();
  swift_weakDestroy();
  v30 = sub_51374;
  v31 = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_3FD30;
  v29 = &unk_B9680;
  v25 = _Block_copy(aBlock);

  [v15 setDismissHandler:v25];
  _Block_release(v25);
  [v15 present];

  return v3;
}

id sub_51188(uint64_t a1, uint64_t a2, SEL *a3)
{
  if (a2)
  {
    v4 = sub_8F5C4();
  }

  else
  {
    v4 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() *a3];

  return v5;
}

uint64_t sub_511F8()
{
  memset(v1, 0, sizeof(v1));
  sub_8F414();
  return sub_CDAC(v1);
}

unint64_t sub_51260()
{
  result = qword_C4B90;
  if (!qword_C4B90)
  {
    type metadata accessor for PrivacySplashAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4B90);
  }

  return result;
}

unint64_t sub_512DC()
{
  result = qword_C59C8;
  if (!qword_C59C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C59C8);
  }

  return result;
}

unint64_t sub_51320()
{
  result = qword_C59D0;
  if (!qword_C59D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C59D0);
  }

  return result;
}

uint64_t sub_5137C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_BYTE *storeEnumTagSinglePayload for PrivacySplashActionImplementation.PresentationError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x51460);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_5149C()
{
  result = qword_C59D8;
  if (!qword_C59D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C59D8);
  }

  return result;
}

uint64_t sub_514F0@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_332C(&qword_C40D0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  if (a1 - 2 < 2)
  {
    v10 = [objc_opt_self() settingsURL];
    if (v10)
    {
      v11 = v10;
      sub_8E0D4();

      v12 = sub_8E0F4();
      v13 = 0;
    }

    else
    {
      v12 = sub_8E0F4();
      v13 = 1;
    }

    sub_33E8(v7, v13, 1, v12);
    v20 = v7;
    return sub_51844(v20, a2);
  }

  if (a1)
  {
    v16 = [objc_opt_self() settingsURL];
    if (v16)
    {
      v17 = v16;
      sub_8E0D4();

      v18 = sub_8E0F4();
      v19 = 0;
    }

    else
    {
      v18 = sub_8E0F4();
      v19 = 1;
    }

    sub_33E8(v9, v19, 1, v18);
    v20 = v9;
    return sub_51844(v20, a2);
  }

  v14 = sub_8E0F4();

  return sub_33E8(a2, 1, 1, v14);
}

uint64_t sub_516B4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      v4 = 0xD000000000000013;
      v3 = 0x800000000009FCB0;
      break;
    case 2:
      v4 = 0xD00000000000001ALL;
      v3 = 0x800000000009FC90;
      break;
    case 3:
      v4 = 0xD000000000000017;
      v3 = 0x800000000009FC70;
      break;
    default:
      v3 = 0x800000000009FCD0;
      v4 = 0xD000000000000012;
      break;
  }

  return sub_5177C(v4, v3, a1);
}

uint64_t sub_5177C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [objc_opt_self() wapiCapability];
  type metadata accessor for Localizations();
  if (v6)
  {
    v7 = 1312902231;
  }

  else
  {
    v7 = 1229343063;
  }

  v10 = v7 & 0xFFFF0000FFFFFFFFLL | 0x5F00000000;
  v11._countAndFlagsBits = a1;
  v11._object = a2;
  sub_8F654(v11);
  v8 = sub_4D2D0(v10, 0xE500000000000000, a3);

  return v8;
}

uint64_t sub_51844(uint64_t a1, uint64_t a2)
{
  v4 = sub_332C(&qword_C40D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t *sub_518B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v12 = &_swiftEmptyArrayStorage;
    sub_529C0(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_52FE0(v4, v11);
      v12 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_529C0((v5 > 1), v6 + 1, 1);
        v2 = v12;
      }

      v9 = &type metadata for PluginComponent;
      v10 = sub_528B4();
      *&v8 = swift_allocObject();
      sub_52FE0(v11, v8 + 16);
      v2[2] = v6 + 1;
      sub_3A94(&v8, &v2[5 * v6 + 4]);
      sub_5303C(v11);
      v4 += 88;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_519E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_8F0C4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_51A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v97 = a2;
  v82 = a3;
  v4 = sub_332C(&qword_C2DD0);
  __chkstk_darwin(v4 - 8);
  v89 = &v79 - v5;
  v6 = sub_8EFE4();
  sub_42F8();
  v8 = v7;
  v10 = __chkstk_darwin(v9);
  v86 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v85 = &v79 - v13;
  __chkstk_darwin(v12);
  v15 = &v79 - v14;
  v16 = sub_8F0C4();
  sub_42F8();
  v88 = v17;
  __chkstk_darwin(v18);
  v84 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ReplaceComponentShelfPageAction();
  sub_BBB0();
  v22 = __chkstk_darwin(v21);
  v24 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v22 + 40);
  v91 = v24;
  v26 = &v24[v25];
  sub_8E394();
  *v26 = 0u;
  *(v26 + 16) = 0u;
  v92 = v26;
  *(v26 + 32) = 0;
  inited = swift_initStackObject();
  sub_8EFF4();
  if (sub_8EFB4())
  {
    goto LABEL_4;
  }

  v90 = v20;
  v27 = v89;
  sub_6658();
  if (sub_33C0(v27, 1, v16) == 1)
  {
    sub_6678(v27, &qword_C2DD0);
    v20 = v90;
LABEL_4:
    sub_8F504();
    sub_53374();
    sub_53330(v28, v29);
    swift_allocError();
    strcpy(v30, "actionMetrics");
    *(v30 + 7) = -4864;
    *(v30 + 2) = v20;
    sub_BBB0();
    (*(v31 + 104))();
    swift_willThrow();
    v32 = *(v8 + 8);
    v32(a1, v6);
    v32(v15, v6);
    sub_8F004();
    sub_887C();
    (*(v33 + 8))(v97);
    return sub_6678(v92, &qword_C2DE0);
  }

  v34 = *(v8 + 8);
  v81 = v6;
  v34(v15, v6);
  v35 = *(v88 + 32);
  v36 = v84;
  v35(v84, v27, v16);
  v79 = *(v90 + 36);
  v89 = v16;
  v35(&v91[v79], v36, v16);
  *(&v95 + 1) = &type metadata for PluginComponent;
  v96 = sub_528B4();
  v37 = swift_allocObject();
  *&v94 = v37;
  v38 = v85;
  v39 = sub_53398();
  sub_8EFF4();
  v40 = sub_8EFB4();
  v80 = v34;
  if ((v40 & 1) == 0)
  {
    v41 = v97;
    sub_52550(v38, v97);
    if (*&__src[0])
    {
      v80(v38, v6);
      memcpy((v37 + 16), __src, 0x58uLL);
      v42 = v90;
      v43 = v83;
      v44 = sub_53398();
      goto LABEL_10;
    }

    sub_6678(__src, &qword_C59E8);
    v34 = v80;
    v39 = 0x6E656E6F706D6F63;
  }

  sub_8F504();
  sub_53374();
  sub_53330(v45, v46);
  sub_115E4();
  swift_allocError();
  v47 = v39;
  *v48 = v39;
  v48[1] = 0xE900000000000074;
  v42 = v90;
  v48[2] = v90;
  sub_BBB0();
  (*(v49 + 104))();
  swift_willThrow();
  sub_5338C();
  (v34)();

  sub_52950(&v94);
  v43 = 0;
  v96 = 0;
  v94 = 0u;
  v95 = 0u;
  v41 = v97;
  v44 = v47;
LABEL_10:
  v50 = v95;
  v51 = v91;
  *v91 = v94;
  *(v51 + 1) = v50;
  *(v51 + 4) = v96;
  v52 = __chkstk_darwin(v44);
  *(&v79 - 2) = v41;
  sub_BAFC(v52, 0xEA00000000007374, v42, sub_52EF4, (&v79 - 4), v53, v54, v55);
  if (v43)
  {

    v57 = sub_526F0(&_swiftEmptyArrayStorage);
    v58 = v92;
    if (!v57)
    {
      v60 = 0;
      goto LABEL_16;
    }

    v59 = v57;
  }

  else
  {
    v59 = v56;
    v58 = v92;
  }

  v60 = sub_518B4(v59);

LABEL_16:
  *(v91 + 5) = v60;
  sub_8EFF4();
  if (sub_8EFB4())
  {
    sub_8F504();
    sub_53374();
    sub_53330(v61, v62);
    sub_115E4();
    swift_allocError();
    *v63 = 0x697463417478656ELL;
    v63[1] = 0xEA00000000006E6FLL;
    v75 = v90;
    v63[2] = v90;
    sub_BBB0();
    (*(v64 + 104))();
    swift_willThrow();
    sub_5338C();
    (v80)();

    memset(__src, 0, 40);
  }

  else
  {
    sub_8E384();
    sub_5338C();
    (v80)();
    sub_3A94(&v94, __src);
    v75 = v90;
  }

  sub_66CC(__src, v58);
  v65 = sub_47508();
  v66 = v91;
  v67 = v80;
  v91[48] = v65 & 1;
  *(v66 + 56) = sub_473C0();
  *(v66 + 64) = v68;
  sub_5F68(0x616C50666C656873, 0xEE00746E656D6563, v75, v69, v70, v71, v72, v73);
  v77 = v76;
  sub_5338C();
  v67();
  *(v66 + 72) = v77;
  sub_52F20(v66, v82);
  sub_8F004();
  sub_887C();
  (*(v78 + 8))(v97);
  return sub_52F84(v66);
}

uint64_t sub_52550(uint64_t a1, uint64_t a2)
{
  v4 = sub_8F004();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_8EFE4();
  __chkstk_darwin(v8);
  (*(v10 + 16))(&v12[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
  (*(v5 + 16))(v7, a2, v4);
  return sub_8E464();
}

unint64_t *sub_526F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v11 = &_swiftEmptyArrayStorage;
  sub_529E0(0, v2, 0);
  v3 = &_swiftEmptyArrayStorage;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_20060(v4, v10);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      memcpy(__dst, __src, sizeof(__dst));
      v11 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_529E0((v5 > 1), v6 + 1, 1);
        v3 = v11;
      }

      v3[2] = v6 + 1;
      memcpy(&v3[11 * v6 + 4], __dst, 0x58uLL);
      v4 += 32;
      if (!--v2)
      {
        return v3;
      }
    }

    memset(__src, 0, sizeof(__src));
    sub_6678(__src, &qword_C59E8);
    return 0;
  }

  return v3;
}

uint64_t type metadata accessor for ReplaceComponentShelfPageAction()
{
  result = qword_C5A58;
  if (!qword_C5A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_528B4()
{
  result = qword_C59E0;
  if (!qword_C59E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C59E0);
  }

  return result;
}

uint64_t sub_52908()
{
  sub_4F30(v0 + 32);

  return _swift_deallocObject(v0, 104, 7);
}

void *sub_52950(void *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    return _swift_slowDealloc(*result, *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)), *(v1 + 80) | 7);
  }

  return result;
}

char *sub_529A0(char *a1, int64_t a2, char a3)
{
  result = sub_52A20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_529C0(char *a1, int64_t a2, char a3)
{
  result = sub_52B20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_529E0(char *a1, int64_t a2, char a3)
{
  result = sub_52C38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_52A00(size_t a1, int64_t a2, char a3)
{
  result = sub_52D40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_52A20(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_332C(&unk_C6840);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_33DCC((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = &_swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_52B20(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_332C(&qword_C4D10);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_33DEC((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = &_swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_332C(&qword_C67E0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_52C38(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_332C(&qword_C59F8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 88);
      if (v5)
      {
LABEL_13:
        sub_33E14((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = &_swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_52D40(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  sub_332C(&qword_C4D00);
  v10 = *(type metadata accessor for Shelf() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Shelf() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_33E3C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_52EF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_A950(a1, *(v2 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_52F20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplaceComponentShelfPageAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_52F84(uint64_t a1)
{
  v2 = type metadata accessor for ReplaceComponentShelfPageAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_530A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_8F0C4();
    v9 = a1 + *(a3 + 36);

    return sub_33C0(v9, a2, v8);
  }
}

uint64_t sub_53140(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v7 = sub_8F0C4();
    v8 = v5 + *(a4 + 36);

    return sub_33E8(v8, a2, a2, v7);
  }

  return result;
}

void sub_531C0()
{
  sub_11510(319, &qword_C5A68, &qword_C67E0);
  if (v0 <= 0x3F)
  {
    sub_11510(319, &qword_C5A70, &unk_C5A78);
    if (v1 <= 0x3F)
    {
      sub_8F0C4();
      if (v2 <= 0x3F)
      {
        sub_11510(319, &qword_C2EC8, &unk_C2ED0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_532D8(uint64_t a1)
{
  result = sub_53330(&qword_C4C98, type metadata accessor for ReplaceComponentShelfPageAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_53330(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_115E4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_533AC(uint64_t a1)
{
  v5 = &_swiftEmptyArrayStorage;
  if (*(a1 + 40))
  {

    sub_317C4(v2);
  }

  sub_53478(a1, &v5);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_78FEC();
    swift_unknownObjectRelease();
  }

  sub_332C(&qword_C3398);
  v3 = sub_8F3E4();

  return v3;
}

uint64_t sub_53478(uint64_t a1, uint64_t *a2)
{
  sub_53610(a1, &v7);
  v4 = v8;
  if (!v8)
  {
    return v4 == 0;
  }

  sub_9520(&v7, v6);
  sub_53504(v6, a2);
  if (!v2)
  {
    sub_4F30(v6);
    return v4 == 0;
  }

  result = sub_4F30(v6);
  __break(1u);
  return result;
}

uint64_t sub_53504(uint64_t a1, uint64_t *a2)
{
  sub_7A754();
  v4 = *(*a2 + 16);
  sub_7A6F4(v4);
  v5 = *a2;
  *(v5 + 16) = v4 + 1;
  return sub_13D04(a1, v5 + 40 * v4 + 32);
}

unint64_t sub_53594()
{
  result = qword_C4C98;
  if (!qword_C4C98)
  {
    type metadata accessor for ReplaceComponentShelfPageAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4C98);
  }

  return result;
}

uint64_t sub_53610(uint64_t a1, uint64_t a2)
{
  v4 = sub_332C(&qword_C59F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_53680(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B6BC0;
  v6._object = a2;
  v4 = sub_8FB14(v3, v6);

  return v4 != 0;
}

BOOL sub_536D8@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_53680(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_53728@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v96 = a2;
  v82 = a3;
  v4 = sub_332C(&qword_C2DD0);
  __chkstk_darwin(v4 - 8);
  v89 = &v79 - v5;
  v92 = sub_8EFE4();
  sub_42F8();
  v7 = v6;
  v9 = __chkstk_darwin(v8);
  v81 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v87 = &v79 - v12;
  __chkstk_darwin(v11);
  v14 = &v79 - v13;
  v15 = sub_8F0C4();
  sub_42F8();
  v88 = v16;
  __chkstk_darwin(v17);
  v86 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ReplaceNavigationBarItemShelfPageAction();
  sub_BBB0();
  v21 = __chkstk_darwin(v20);
  v23 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v21 + 32);
  v90 = v23;
  v25 = &v23[v24];
  sub_8E394();
  *v25 = 0u;
  *(v25 + 16) = 0u;
  v91 = v25;
  *(v25 + 32) = 0;
  inited = swift_initStackObject();
  sub_8EFF4();
  if (sub_8EFB4())
  {
    goto LABEL_4;
  }

  v80 = v19;
  v85 = a1;
  v26 = v89;
  sub_6658();
  if (sub_33C0(v26, 1, v15) == 1)
  {
    sub_6678(v26, &qword_C2DD0);
    a1 = v85;
    v19 = v80;
LABEL_4:
    sub_8F504();
    sub_548C4();
    sub_54824(v27, v28);
    sub_4264();
    strcpy(v29, "actionMetrics");
    *(v29 + 7) = -4864;
    *(v29 + 2) = v19;
    sub_BBB0();
    (*(v30 + 104))();
    swift_willThrow();
    v31 = *(v7 + 8);
    v32 = v92;
    v31(a1, v92);
    v31(v14, v32);
    sub_8F004();
    sub_887C();
    (*(v33 + 8))(v96, v34);
    return sub_6678(v91, &qword_C2DE0);
  }

  v35 = v15;
  v36 = *(v7 + 8);
  v36(v14, v92);
  v37 = *(v88 + 32);
  v38 = v86;
  v37(v86, v26, v35);
  v39 = v80;
  v79 = *(v80 + 28);
  v89 = v35;
  v37(&v90[v79], v38, v35);
  v40 = v87;
  v41 = v85;
  sub_8EFF4();
  v42 = sub_8EFB4();
  v43 = v96;
  if (v42)
  {
    goto LABEL_8;
  }

  v86 = v36;
  sub_6B18();
  if (*(&v93[0] + 1) == 1)
  {
    sub_6678(v93, &qword_C5BA0);
    v41 = v85;
    v36 = v86;
LABEL_8:
    sub_8F504();
    v44 = v43;
    sub_548C4();
    sub_54824(v45, v46);
    sub_4264();
    *v47 = 1835365481;
    v47[1] = 0xE400000000000000;
    v47[2] = v39;
    sub_BBB0();
    (*(v48 + 104))();
    swift_willThrow();
    v49 = v92;
    v36(v41, v92);
    v36(v40, v49);
    sub_8F004();
    sub_887C();
    (*(v50 + 8))(v44);
    v51 = v90;
LABEL_12:
    (*(v88 + 8))(v51 + v79, v89);
    return sub_6678(v91, &qword_C2DE0);
  }

  v52 = v40;
  v53 = v92;
  v54 = v86;
  (v86)(v52, v92);
  sub_54354(v93, v94);
  v51 = v90;
  v55 = sub_54354(v94, v90);
  __chkstk_darwin(v55);
  *(&v79 - 2) = v43;
  v56 = v85;
  v57 = v83;
  sub_BAE4();
  if (v57)
  {
    v54(v56, v53);

    sub_8F004();
    sub_887C();
    (*(v65 + 8))(v96);
    sub_543EC(v51);
    goto LABEL_12;
  }

  *(v51 + 152) = v58;
  *(v51 + 160) = v59 & 1;
  sub_5F9C(0xD000000000000011, 0x800000000009FD60, v39, v60, v61, v62, v63, v64);
  v67 = v81;
  sub_8EFF4();
  v68 = sub_8EFB4();
  v69 = inited;
  if (v68)
  {
    v70 = sub_8F504();
    sub_548C4();
    sub_54824(v71, v72);
    sub_4264();
    *v73 = 0x697463417478656ELL;
    v73[1] = 0xEA00000000006E6FLL;
    v73[2] = v80;
    sub_BBB0();
    (*(v74 + 104))();
    swift_willThrow();

    v75 = sub_548F8();
    MEMORY[0x697463417478656E](v75);
    MEMORY[0x697463417478656E](v67, v70);

    v95 = 0;
    memset(v94, 0, sizeof(v94));
  }

  else
  {
    sub_8E384();

    v78 = sub_548F8();
    MEMORY[0x697463417478656E](v78);
    MEMORY[0x697463417478656E](v67, v69);
    sub_3A94(v93, v94);
  }

  sub_66CC(v94, v91);
  v76 = v90;
  sub_54440(v90, v82);
  sub_8F004();
  sub_887C();
  (*(v77 + 8))(v96);
  return sub_544A4(v76);
}

ValueMetadata *sub_54040(uint64_t a1, uint64_t a2)
{
  v5 = &type metadata for ReplaceNavigationBarItemShelfPageAction.NavigationBarItemPlacement;
  v6 = sub_473C0();
  if (!v2)
  {
    v8 = v6;
    v9 = v7;
    v10 = v6 == 1952867692 && v7 == 0xE400000000000000;
    if (v10 || (sub_548DC() & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v14 = v8 == 0x7468676972 && v9 == 0xE500000000000000;
      if (v14 || (sub_548DC() & 1) != 0)
      {

        v5 = (&def_4BB18 + 1);
      }

      else
      {
        v15 = v8 == 0x726568746FLL && v9 == 0xE500000000000000;
        if (v15 || (sub_548DC() & 1) != 0)
        {

          v5 = sub_478DC();
        }

        else
        {
          sub_8F504();
          sub_548C4();
          sub_54824(v16, v17);
          swift_allocError();
          *v18 = v8;
          v18[1] = v9;
          v18[2] = &type metadata for ReplaceNavigationBarItemShelfPageAction.NavigationBarItemPlacement;
          sub_BBB0();
          (*(v19 + 104))();
          swift_willThrow();
        }
      }
    }
  }

  sub_8F004();
  sub_887C();
  (*(v11 + 8))(a2);
  sub_8EFE4();
  sub_887C();
  (*(v12 + 8))(a1);
  return v5;
}

ValueMetadata *sub_542D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_54040(a1, a2);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6 & 1;
  }

  return result;
}

uint64_t type metadata accessor for ReplaceNavigationBarItemShelfPageAction()
{
  result = qword_C5C00;
  if (!qword_C5C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_543B0(uint64_t a1@<X8>)
{
  sub_69B8();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

uint64_t sub_54440(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplaceNavigationBarItemShelfPageAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_544A4(uint64_t a1)
{
  v2 = type metadata accessor for ReplaceNavigationBarItemShelfPageAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for ReplaceNavigationBarItemShelfPageAction.NavigationBarKind(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x5459CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_545F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_8F0C4();
    v10 = a1 + *(a3 + 28);

    return sub_33C0(v10, a2, v9);
  }
}

uint64_t sub_546A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_8F0C4();
    v8 = v5 + *(a4 + 28);

    return sub_33E8(v8, a2, a2, v7);
  }

  return result;
}

void sub_54720()
{
  sub_8F0C4();
  if (v0 <= 0x3F)
  {
    sub_3CAC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_547CC(uint64_t a1)
{
  result = sub_54824(&qword_C4CA8, type metadata accessor for ReplaceNavigationBarItemShelfPageAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_54824(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_54870()
{
  result = qword_C5C48;
  if (!qword_C5C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C5C48);
  }

  return result;
}

uint64_t sub_548DC()
{

  return sub_8FB54();
}

uint64_t sub_5490C()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_79F5C();
    swift_unknownObjectRelease();
  }

  sub_332C(&qword_C3398);
  return sub_8F3E4();
}

unint64_t sub_549AC()
{
  result = qword_C4CA8;
  if (!qword_C4CA8)
  {
    type metadata accessor for ReplaceNavigationBarItemShelfPageAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4CA8);
  }

  return result;
}

uint64_t sub_54A28@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a2;
  v70 = a3;
  v4 = sub_332C(&qword_C2DD0);
  __chkstk_darwin(v4 - 8);
  v72 = v62 - v5;
  v6 = sub_8EFE4();
  sub_42F8();
  v8 = v7;
  v10 = __chkstk_darwin(v9);
  v69 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v68 = v62 - v13;
  __chkstk_darwin(v12);
  v15 = v62 - v14;
  v16 = sub_8F0C4();
  sub_42F8();
  v67 = v17;
  __chkstk_darwin(v18);
  sub_42BC();
  v66 = v19;
  v20 = type metadata accessor for ResolutionAction();
  sub_BBB0();
  __chkstk_darwin(v21);
  sub_42BC();
  v74 = v22;
  sub_8E394();
  inited = swift_initStackObject();
  sub_8EFF4();
  if (sub_8EFB4())
  {
    goto LABEL_4;
  }

  v65 = v20;
  v73 = v6;
  v23 = a1;
  v24 = v72;
  sub_552A0(v15, v78, v72);
  if (sub_33C0(v24, 1, v16) == 1)
  {
    sub_6678(v24, &qword_C2DD0);
    v6 = v73;
    v20 = v65;
LABEL_4:
    sub_8F504();
    sub_559C4();
    sub_55980(v25, v26);
    sub_115E4();
    sub_559DC();
    strcpy(v27, "actionMetrics");
    *(v27 + 7) = -4864;
    *(v27 + 2) = v20;
    sub_BBB0();
    (*(v28 + 104))();
    swift_willThrow();
    v29 = *(v8 + 8);
    v29(a1, v6);
    v29(v15, v6);
    sub_8F004();
    sub_887C();
    return (*(v30 + 8))(v78);
  }

  v32 = *(v8 + 8);
  v32(v15, v73);
  v33 = *(v67 + 32);
  v34 = v66;
  v33(v66, v24, v16);
  v35 = v65;
  v33(v74 + *(v65 + 20), v34, v16);
  v36 = v68;
  sub_8EFF4();
  v37 = sub_8EFB4();
  v63 = v32;
  v62[1] = v8 + 8;
  if (v37)
  {
    goto LABEL_8;
  }

  v38 = v64;
  sub_8E384();
  if (v38)
  {

    v77 = 0;
    memset(v76, 0, sizeof(v76));
    sub_6678(v76, &qword_C2DE0);
    v35 = v65;
    v32 = v63;
LABEL_8:
    sub_8F504();
    sub_559C4();
    sub_55980(v39, v40);
    sub_559DC();
    *v41 = 0x697463417478656ELL;
    v41[1] = 0xEA00000000006E6FLL;
    v41[2] = v35;
    sub_BBB0();
    (*(v42 + 104))();
    swift_willThrow();
    v32(v36, v73);

    memset(__src, 0, 40);
    v43 = v35;
    goto LABEL_9;
  }

  v63(v36, v73);
  sub_3A94(v76, __src);
  v43 = v65;
LABEL_9:
  v44 = v74 + *(v43 + 24);
  v45 = __src[1];
  *v44 = __src[0];
  *(v44 + 1) = v45;
  *(v44 + 4) = *&__src[2];
  sub_35B0C();
  v46 = sub_559DC();
  v48 = v47;
  v49 = v69;
  sub_8EFF4();
  if ((sub_8EFB4() & 1) == 0)
  {
    v50 = sub_55454(v49, v78, __src);
    if (*(&__src[1] + 1) != 1)
    {
      v58 = v73;
      v59 = v63;
      (v63)(v49, v73, v50);
      memcpy(v48, __src, 0x58uLL);
      v59(v23, v58);
      v56 = 1;
      v57 = v78;
      goto LABEL_14;
    }

    sub_6678(__src, &qword_C5D30);
    v43 = v65;
  }

  sub_8F504();
  sub_559C4();
  sub_55980(v51, v52);
  sub_115E4();
  sub_559DC();
  *v53 = 0x726F727265;
  v53[1] = 0xE500000000000000;
  v53[2] = v43;
  sub_BBB0();
  (*(v54 + 104))();
  swift_willThrow();
  v55 = v73;
  v63(v49, v73);

  swift_deallocError();
  v46 = sub_10AB4(0x746C75736572, 0xE600000000000000, v43);

  v56 = 0;
  v57 = v78;
  v63(v23, v55);
LABEL_14:
  v60 = v74;
  *v74 = v46;
  *(v60 + 8) = v56;
  sub_55660(v60, v70);
  sub_8F004();
  sub_887C();
  return (*(v61 + 8))(v57);
}

uint64_t sub_552A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_8F004();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_8EFE4();
  __chkstk_darwin(v10);
  (*(v12 + 16))(&v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
  (*(v7 + 16))(v9, a2, v6);
  sub_8F0A4();
  v13 = sub_8F0C4();
  return sub_33E8(a3, 0, 1, v13);
}

double sub_55454@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_8F004();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_8EFE4();
  __chkstk_darwin(v10);
  v12 = &v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v13 + 16))(v12, a1);
  (*(v7 + 16))(v9, a2, v6);
  return sub_35684(v12, v9, a3);
}

uint64_t type metadata accessor for ResolutionAction()
{
  result = qword_C5D90;
  if (!qword_C5D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_55660(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolutionAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_556D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_8F0C4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return sub_33C0(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_557AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_8F0C4();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return sub_33E8(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = a2;
  }

  return result;
}

void sub_5585C()
{
  sub_11510(319, &qword_C5DA0, &unk_C5DA8);
  if (v0 <= 0x3F)
  {
    sub_8F0C4();
    if (v1 <= 0x3F)
    {
      sub_11510(319, &qword_C2EC8, &unk_C2ED0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_55928(uint64_t a1)
{
  result = sub_55980(&qword_C4B68, type metadata accessor for ResolutionAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_55980(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_115E4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_559DC()
{

  return swift_allocError();
}

uint64_t sub_559F4(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (v4 == 255)
  {
    sub_20154(a2, &v20, &qword_C3940);
    if (v22 == 255)
    {
      sub_13E24(&v20, &qword_C3940);
    }

    else
    {
      v23 = v20;
      v24 = v21;
      v25 = v22;
      sub_56030(&v23, &v20);
      if (!v22)
      {
        sub_233BC(&v23);
        v6 = 0;
        v5 = v20;
        goto LABEL_29;
      }

      if (v22 == 1)
      {
        v18 = v20;
        v19 = v21;
        sub_20154(&v18, v16, &unk_C3EB0);
        if (v17)
        {
          sub_332C(&qword_C7480);
          if (swift_dynamicCast())
          {
            sub_13E24(&v18, &unk_C3EB0);
            sub_233BC(&v23);
            v6 = v15;
LABEL_28:
            v5 = 0;
            goto LABEL_29;
          }
        }

        else
        {
          sub_13E24(v16, &unk_C3EB0);
        }

        if (qword_C2CE0 != -1)
        {
          sub_13E98();
        }

        v10 = sub_8E304();
        sub_4D6C(v10, qword_D0378);
        sub_332C(&unk_C3920);
        sub_8E2A4();
        *(swift_allocObject() + 16) = xmmword_92300;
        v17 = type metadata accessor for ResolutionActionImplementation();
        v16[0] = v2;

        v11 = AMSLogKey();
        if (v11)
        {
          v12 = v11;
          sub_8F5F4();
        }

        sub_8E284();

        sub_4F30(v16);
        sub_8E244();
        sub_8E264();
        sub_8E2E4();

        sub_13E24(&v18, &unk_C3EB0);
        sub_233BC(&v23);
        v6 = 0;
        goto LABEL_28;
      }

      if (qword_C2CE0 != -1)
      {
        sub_13E98();
      }

      v7 = sub_8E304();
      sub_4D6C(v7, qword_D0378);
      sub_332C(&unk_C3920);
      sub_8E2A4();
      *(swift_allocObject() + 16) = xmmword_92310;
      *(&v19 + 1) = type metadata accessor for ResolutionActionImplementation();
      *&v18 = v2;

      v8 = AMSLogKey();
      if (v8)
      {
        v9 = v8;
        sub_8F5F4();
      }

      sub_8E284();

      sub_4F30(&v18);
      sub_8E244();
      sub_8E2E4();

      sub_233BC(&v23);
    }

    v5 = 0;
    v6 = 0;
    goto LABEL_29;
  }

  if (v4)
  {
    v5 = *a1;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = *a1;
  }

LABEL_29:
  sub_8E524();
  sub_5600C(v3, v4);
  sub_8F174();
  sub_8F394();
  (*(*v23 + 208))(v6, v5);

  sub_332C(&qword_C3398);
  v24 = 0u;
  v23 = 0u;
  v13 = sub_8F3E4();

  return v13;
}

unint64_t sub_55F90()
{
  result = qword_C4B68;
  if (!qword_C4B68)
  {
    type metadata accessor for ResolutionAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4B68);
  }

  return result;
}

uint64_t sub_5600C(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_56024(result, a2 & 1);
  }

  return result;
}

uint64_t sub_56024(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_560A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_332C(&qword_C3598);
    v9 = a1 + *(a3 + 20);

    return sub_33C0(v9, a2, v8);
  }
}

uint64_t sub_56148(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_332C(&qword_C3598);
    v8 = v5 + *(a4 + 20);

    return sub_33E8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SegmentedControl()
{
  result = qword_C5EF8;
  if (!qword_C5EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_56220()
{
  sub_E69C();
  if (v0 <= 0x3F)
  {
    sub_3CAC();
    if (v1 <= 0x3F)
    {
      sub_562D4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_562D4()
{
  if (!qword_C5F08)
  {
    v0 = sub_8F724();
    if (!v1)
    {
      atomic_store(v0, &qword_C5F08);
    }
  }
}

uint64_t sub_56324(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_56364(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_563C0@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a2;
  v5 = sub_8EFE4();
  sub_42F8();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_571E0();
  v11 = (v9 - v10);
  __chkstk_darwin(v12);
  v14 = v30 - v13;
  sub_8EFF4();
  v15 = sub_8EFC4();
  v17 = v16;
  v18 = *(v7 + 8);
  v18(v14, v5);
  if (v17)
  {
    v30[0] = v15;
    sub_8E394();
    swift_initStackObject();
    sub_8EFF4();
    v19 = v30[1];
    sub_8E384();
    if (v19)
    {

      sub_8F004();
      sub_887C();
      (*(v20 + 8))(v34);
      v18(a1, v5);
      v18(v11, v5);
      v33 = 0;
      v31 = 0u;
      v32 = 0u;
    }

    else
    {
      sub_8F004();
      sub_887C();
      (*(v27 + 8))(v34);
      v18(a1, v5);
      v18(v11, v5);
    }

    result = *&v31;
    v28 = v32;
    *a3 = v31;
    *(a3 + 16) = v28;
    v29 = v30[0];
    *(a3 + 32) = v33;
    *(a3 + 40) = v29;
    *(a3 + 48) = v17;
  }

  else
  {
    sub_8F504();
    sub_571C8();
    sub_570C8(v21, v22);
    swift_allocError();
    *v23 = 1954047348;
    v23[1] = 0xE400000000000000;
    v23[2] = &type metadata for SegmentedControl.Item;
    sub_BBB0();
    (*(v24 + 104))();
    swift_willThrow();
    sub_8F004();
    sub_887C();
    (*(v25 + 8))(v34);
    v18(a1, v5);
  }

  return result;
}

uint64_t sub_56710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v98 = a2;
  v92 = a3;
  sub_8F004();
  sub_42F8();
  v96 = v5;
  v97 = v4;
  __chkstk_darwin(v4);
  sub_571E0();
  v90 = v6 - v7;
  __chkstk_darwin(v8);
  v87 = &v80 - v9;
  v10 = sub_332C(&qword_C3598);
  __chkstk_darwin(v10 - 8);
  v91 = &v80 - v11;
  v12 = sub_332C(&qword_C33A8);
  __chkstk_darwin(v12 - 8);
  v14 = &v80 - v13;
  v95 = sub_8F4F4();
  sub_42F8();
  v93 = v15;
  __chkstk_darwin(v16);
  sub_571E0();
  v88 = v17 - v18;
  __chkstk_darwin(v19);
  v94 = &v80 - v20;
  v21 = sub_8EFE4();
  sub_42F8();
  v23 = v22;
  __chkstk_darwin(v24);
  sub_571E0();
  v86 = v25 - v26;
  v28 = __chkstk_darwin(v27);
  v30 = &v80 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v80 - v32;
  __chkstk_darwin(v31);
  v35 = &v80 - v34;
  v101 = a1;
  sub_8EFF4();
  v36 = sub_8EFC4();
  v38 = v37;
  v41 = *(v23 + 8);
  v39 = v23 + 8;
  v40 = v41;
  v41(v35, v21);
  if (v38)
  {
    v85 = v36;
    sub_8EFF4();
    sub_8EF94();
    v40(v33, v21);
    v42 = v95;
    v43 = v40;
    if (sub_33C0(v14, 1, v95) == 1)
    {

      sub_6678(v14, &qword_C33A8);
      sub_8F504();
      sub_571C8();
      sub_570C8(v44, v45);
      sub_BC40();
      v46 = sub_57204();
      *v40 = 0x736D657469;
      *(v40 + 1) = 0xE500000000000000;
      *(v40 + 2) = v46;
      sub_BBB0();
      (*(v47 + 104))(v40);
      swift_willThrow();
      (*(v96 + 8))(v98, v97);
      return v38(v101, v21);
    }

    else
    {
      (*(v93 + 32))(v94, v14, v42);
      v55 = v101;
      sub_8EFF4();
      v56 = sub_8EF64();
      v58 = v57;
      v43(v30, v21);
      v59 = v39;
      v60 = v96;
      if (v58)
      {

        sub_8F504();
        sub_571C8();
        sub_570C8(v61, v62);
        sub_BC40();
        v63 = sub_57204();
        strcpy(v43, "selectedIndex");
        *(v43 + 7) = -4864;
        *(v43 + 2) = v63;
        sub_BBB0();
        (*(v64 + 104))(v43);
        swift_willThrow();
        (*(v60 + 8))(v98, v97);
        v38(v55, v21);
        return (*(v93 + 8))(v94, v95);
      }

      else
      {
        v81 = v56;
        v65 = v95;
        v83 = v21;
        v84 = v59;
        v99 = v85;
        v100 = v38;
        v66 = v92;
        sub_8F9B4();
        sub_8EFF4();
        v85 = *(v60 + 16);
        v85(v87, v98, v97);
        v67 = v89;
        sub_8F1C4();
        v82 = v43;
        if (v67)
        {

          v68 = 1;
        }

        else
        {
          v68 = 0;
        }

        v69 = v93;
        v70 = v94;
        v71 = sub_8F204();
        v72 = v91;
        sub_33E8(v91, v68, 1, v71);
        v73 = type metadata accessor for SegmentedControl();
        v93 = *(v73 + 20);
        sub_11068(v72, v66 + v93);
        v91 = v73;
        v74 = v66 + *(v73 + 24);
        *(v74 + 32) = 0;
        *v74 = 0u;
        *(v74 + 16) = 0u;
        (*(v69 + 16))(v88, v70, v65);
        v85(v90, v98, v97);
        sub_57110();
        v75 = sub_8F704();
        v76 = sub_571F0();
        v77(v76);
        v82(v101, v83);
        result = (*(v69 + 8))(v94, v65);
        v78 = v91;
        v79 = v92;
        *(v92 + *(v91 + 28)) = v75;
        *(v79 + *(v78 + 32)) = v81;
      }
    }
  }

  else
  {
    sub_8F504();
    sub_571C8();
    sub_570C8(v49, v50);
    sub_BC40();
    v52 = v51;
    v53 = type metadata accessor for SegmentedControl();
    *v52 = 25705;
    v52[1] = 0xE200000000000000;
    v52[2] = v53;
    sub_BBB0();
    (*(v54 + 104))(v52);
    swift_willThrow();
    (*(v96 + 8))(v98, v97);
    return (v40)(v101, v21);
  }

  return result;
}

uint64_t sub_570C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_57110()
{
  result = qword_C5F50;
  if (!qword_C5F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C5F50);
  }

  return result;
}

uint64_t sub_57164(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_332C(a3);
  sub_BBB0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_57204()
{

  return type metadata accessor for SegmentedControl();
}

uint64_t sub_57224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_332C(&qword_C5FA0);
  sub_8F044();

  *(v3 + OBJC_IVAR____TtC19CoreDynamicUIPlugin25SegmentedControlComponent_items) = v6;

  sub_5786C();
  swift_getKeyPath();
  sub_8F044();

  *(v3 + OBJC_IVAR____TtC19CoreDynamicUIPlugin25SegmentedControlComponent_selectedIndex) = v6;
  sub_57940();
  *(v3 + OBJC_IVAR____TtC19CoreDynamicUIPlugin25SegmentedControlComponent_objectGraph) = a3;
}

uint64_t sub_57338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for SegmentedControlComponent();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_573A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for SegmentedControlComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_57408(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_5745C()
{
  swift_getWitnessTable();

  return sub_8E3D4();
}

uint64_t sub_574D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_57554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_57660(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_576A8(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC19CoreDynamicUIPlugin25SegmentedControlComponent_items] = &_swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC19CoreDynamicUIPlugin25SegmentedControlComponent_selectedIndex] = 0;
  *&v4[OBJC_IVAR____TtC19CoreDynamicUIPlugin25SegmentedControlComponent_objectGraph] = 0;
  v9 = OBJC_IVAR____TtC19CoreDynamicUIPlugin25SegmentedControlComponent_underlyingSegmentedControl;
  *&v4[v9] = [objc_allocWithZone(UISegmentedControl) init];
  v12.receiver = v4;
  v12.super_class = type metadata accessor for SegmentedControlComponent();
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", a1, a2, a3, a4);
  sub_57A24();

  return v10;
}

void sub_577A0()
{
  *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin25SegmentedControlComponent_items) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin25SegmentedControlComponent_selectedIndex) = 0;
  *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin25SegmentedControlComponent_objectGraph) = 0;
  v1 = OBJC_IVAR____TtC19CoreDynamicUIPlugin25SegmentedControlComponent_underlyingSegmentedControl;
  *(v0 + v1) = [objc_allocWithZone(UISegmentedControl) init];
  sub_8FAA4();
  __break(1u);
}

id sub_5786C()
{
  v1 = *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin25SegmentedControlComponent_underlyingSegmentedControl);
  result = [v1 removeAllSegments];
  v3 = *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin25SegmentedControlComponent_items);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;

    do
    {
      sub_57EF4(v5, v8);
      v6 = v9;
      v7 = v10;

      sub_57F50(v8);
      sub_57E78(v6, v7, [v1 numberOfSegments], 0, v1);
      v5 += 56;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_57964()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SegmentedControlComponent();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  *&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin25SegmentedControlComponent_items] = &_swiftEmptyArrayStorage;

  sub_5786C();
  *&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin25SegmentedControlComponent_selectedIndex] = 0;
  sub_57940();
  *&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin25SegmentedControlComponent_objectGraph] = 0;
}

void sub_57A24()
{
  v1 = *&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin25SegmentedControlComponent_underlyingSegmentedControl];
  [v1 addTarget:v0 action:"segmentedControlAction" forControlEvents:4096];
  v2 = [v0 contentView];
  [v2 addSubview:v1];

  sub_892C0(1);
}

unint64_t sub_57AB8()
{
  v1 = sub_8E5D4();
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_8F264();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin25SegmentedControlComponent_underlyingSegmentedControl) selectedSegmentIndex];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin25SegmentedControlComponent_items);
  if (result >= *(v9 + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  sub_418C(v9 + 56 * result + 32, &v13);
  if (!*(&v14 + 1))
  {
    return sub_13E24(&v13, &qword_C2DE0);
  }

  sub_3A94(&v13, v16);
  v10 = *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin25SegmentedControlComponent_objectGraph);
  if (v10)
  {
    sub_8E5F4();
    sub_8F174();

    sub_8F394();
    v11 = v13;
    sub_8F394();
    (*(v5 + 16))(v3, v7, v4);
    v12 = sub_332C(&unk_C5850);
    sub_33E8(v3, 0, 1, v12);
    v13 = 0u;
    v14 = 0u;
    v15 = -1;
    (*(*v11 + 216))(v16, v3, v10, &v13);

    sub_13E24(&v13, &qword_C3940);
    sub_CE00(v3);
    (*(v5 + 8))(v7, v4);
  }

  return sub_4F30(v16);
}

id sub_57DC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SegmentedControlComponent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_57E78(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v8 = sub_8F5C4();

  [a5 insertSegmentWithTitle:v8 atIndex:a3 animated:a4 & 1];
}

_BYTE *storeEnumTagSinglePayload for Shelf.Placement(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x58070);
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

uint64_t sub_580BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_332C(&qword_C3598);
    v9 = a1 + *(a3 + 20);

    return sub_33C0(v9, a2, v8);
  }
}

uint64_t sub_58164(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_332C(&qword_C3598);
    v8 = v5 + *(a4 + 20);

    return sub_33E8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for Shelf()
{
  result = qword_C6048;
  if (!qword_C6048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_5823C()
{
  sub_E69C();
  if (v0 <= 0x3F)
  {
    sub_582D8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_582D8()
{
  if (!qword_C6058)
  {
    sub_3D10(&qword_C67E0);
    v0 = sub_8F724();
    if (!v1)
    {
      atomic_store(v0, &qword_C6058);
    }
  }
}

__n128 sub_5833C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_58350(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 41))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_583A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_58414()
{
  sub_5A3B0();
  v2._rawValue = &off_B6BF8;
  v4._object = v0;
  sub_8FB14(v2, v4);
  sub_5A398();

  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_58458(char a1)
{
  if (!a1)
  {
    return 0x726564616568;
  }

  if (a1 == 1)
  {
    return 2036625250;
  }

  return 0x7265746F6F66;
}

uint64_t sub_584C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_58414();
  *a1 = result;
  return result;
}

uint64_t sub_584F4()
{
  v1 = sub_5A3D0();
  result = sub_58458(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_5851C()
{
  sub_5A3B0();
  v2._rawValue = &off_B6C60;
  v4._object = v0;
  sub_8FB14(v2, v4);
  sub_5A398();

  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_58560(char a1)
{
  result = 0x6E69616C70;
  switch(a1)
  {
    case 1:
      result = 0x646570756F7267;
      break;
    case 2:
      result = 0x6F72477465736E69;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_585FC()
{
  sub_5A3B0();
  v2._rawValue = &off_B6CE0;
  v5._object = v0;
  sub_8FB14(v2, v5);
  sub_5A398();

  if (v1 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v1)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_58648(char a1)
{
  if (a1)
  {
    return 0x6C61636974726576;
  }

  else
  {
    return 0x746E6F7A69726F68;
  }
}

uint64_t sub_58684()
{
  sub_5A3B0();
  v2._rawValue = &off_B6D30;
  v4._object = v0;
  sub_8FB14(v2, v4);
  sub_5A398();

  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_586C8(char a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 1:
      result = 0x656C676E6973;
      break;
    case 2:
      result = 0x656C7069746C756DLL;
      break;
    case 3:
      result = 0x686374697773;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_58770@<X0>(_BYTE *a1@<X8>)
{
  result = sub_5851C();
  *a1 = result;
  return result;
}

unint64_t sub_587A0()
{
  v1 = sub_5A3D0();
  result = sub_58560(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_587EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_585FC();
  *a1 = result;
  return result;
}

uint64_t sub_5881C()
{
  v1 = sub_5A3D0();
  result = sub_58648(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_58868@<X0>(_BYTE *a1@<X8>)
{
  result = sub_58684();
  *a1 = result;
  return result;
}

uint64_t sub_58898()
{
  v1 = sub_5A3D0();
  result = sub_586C8(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_588C0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v43 = a3;
  v44 = sub_8EFE4();
  sub_42F8();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_571E0();
  v11 = v9 - v10;
  v13 = __chkstk_darwin(v12);
  v15 = &v36 - v14;
  __chkstk_darwin(v13);
  sub_5A3BC();
  __chkstk_darwin(v16);
  v18 = &v36 - v17;
  sub_8EFF4();
  sub_59BA0();
  sub_8EF44();
  if (v3)
  {
    sub_8F004();
    sub_887C();
    (*(v19 + 8))(a2);
    v20 = *(v7 + 8);
    v21 = v44;
    v20(a1, v44);
    return (v20)(v18, v21);
  }

  else
  {
    v41 = v11;
    v42 = a2;
    v23 = *(v7 + 8);
    v24 = v44;
    v23(v18, v44);
    v40 = v48[0];
    sub_8EFF4();
    v25 = sub_8EF84();
    v26 = sub_5A38C();
    (v23)(v26);
    sub_8EFF4();
    sub_59BF4();
    sub_8EF44();
    v23(v15, v24);
    v38 = v48[0];
    sub_5A3DC();
    v37 = sub_8EFC4();
    v39 = v27;
    v28 = sub_5A38C();
    (v23)(v28);
    sub_5A3DC();
    v36 = sub_8EFC4();
    v30 = v29;
    v31 = sub_5A38C();
    (v23)(v31);
    sub_8EFF4();
    sub_59C48();
    sub_8EF44();
    sub_8F004();
    sub_887C();
    (*(v32 + 8))(v42);
    v23(a1, v24);
    v33 = sub_5A38C();
    (v23)(v33);
    LOBYTE(v46) = v25;
    BYTE1(v46) = v40;
    BYTE2(v46) = v38;
    *(&v46 + 3) = v57;
    BYTE7(v46) = v58;
    *(&v46 + 1) = v37;
    *v47 = v39;
    *&v47[8] = v36;
    *&v47[16] = v30;
    v47[24] = v56;
    v48[0] = v25;
    v48[1] = v40;
    v48[2] = v38;
    v50 = v58;
    v49 = v57;
    v51 = v37;
    v52 = v39;
    v53 = v36;
    v54 = v30;
    v55 = v56;
    sub_59C9C(&v46, v45);
    result = sub_59CD4(v48);
    v34 = *v47;
    v35 = v43;
    *v43 = v46;
    v35[1] = v34;
    *(v35 + 25) = *&v47[9];
  }

  return result;
}

double sub_58DB8@<D0>(char *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_588C0(a1, a2, &v7);
  if (!v3)
  {
    v6 = v8[0];
    *a3 = v7;
    a3[1] = v6;
    result = *(v8 + 9);
    *(a3 + 25) = *(v8 + 9);
  }

  return result;
}

double sub_58E08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v99 = a2;
  v96 = a3;
  v98 = sub_8F004();
  sub_42F8();
  v101 = v5;
  __chkstk_darwin(v6);
  sub_571E0();
  v95 = v7 - v8;
  sub_43E04();
  __chkstk_darwin(v9);
  v94 = v82 - v10;
  sub_43E04();
  __chkstk_darwin(v11);
  v90 = v82 - v12;
  v13 = sub_332C(&qword_C3598);
  __chkstk_darwin(v13 - 8);
  v91 = v82 - v14;
  v15 = sub_332C(&qword_C33A8);
  __chkstk_darwin(v15 - 8);
  v17 = v82 - v16;
  v18 = sub_8EFE4();
  sub_42F8();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_571E0();
  v93 = (v22 - v23);
  sub_43E04();
  v25 = __chkstk_darwin(v24);
  v27 = v82 - v26;
  __chkstk_darwin(v25);
  sub_5A3BC();
  __chkstk_darwin(v28);
  v30 = v82 - v29;
  v31 = sub_8F4F4();
  sub_42F8();
  v97 = v32;
  __chkstk_darwin(v33);
  sub_571E0();
  v89 = v34 - v35;
  sub_43E04();
  __chkstk_darwin(v36);
  v100 = v82 - v37;
  v104 = a1;
  sub_8EFF4();
  sub_8EF94();
  v40 = *(v20 + 8);
  v38 = v20 + 8;
  v39 = v40;
  v40(v30, v18);
  if (sub_33C0(v17, 1, v31) == 1)
  {
    sub_6678(v17, &qword_C33A8);
    v41 = sub_8F504();
    sub_5A354();
    sub_59B04(v42, v43);
    swift_allocError();
    v45 = v44;
    v46 = type metadata accessor for Shelf();
    *v45 = 0x6E656E6F706D6F63;
    v45[1] = 0xEA00000000007374;
    v45[2] = v46;
    (*(*(v41 - 8) + 104))(v45, enum case for JSONError.missingProperty(_:), v41);
    swift_willThrow();
    sub_5A3A4();
    v47(v99, v98);
    v39(v104, v18);
  }

  else
  {
    v87 = v27;
    (*(v97 + 32))(v100, v17, v31);
    v49 = v104;
    sub_8EFF4();
    v50 = sub_8EFC4();
    v52 = v51;
    v39(v3, v18);
    if (v52)
    {
      v84 = v38;
      v85 = v39;
      v86 = v18;
      v53 = v96;
      *v96 = v50;
      v53[1] = v52;
      v82[1] = v52;
      sub_8EFF4();
      v54 = v99;
      v55 = v98;
      v83 = *(v101 + 16);
      v83(v90);
      v56 = v91;
      v57 = v92;
      sub_8F1C4();
      v88 = v31;
      if (v57)
      {

        v92 = 0;
        v58 = 1;
        v59 = v100;
      }

      else
      {
        v58 = 0;
        v59 = v100;
        v92 = 0;
      }

      v67 = sub_8F204();
      sub_33E8(v56, v58, 1, v67);
      v68 = type metadata accessor for Shelf();
      v69 = v96;
      v90 = *(v68 + 20);
      sub_11068(v56, &v90[v96]);
      v70 = v97;
      v71 = v89;
      (*(v97 + 16))(v89, v59, v88);
      v72 = v83;
      (v83)(v94, v54, v55);
      sub_59B4C();
      v73 = sub_8F714();
      sub_518B4(v73);
      sub_5A398();

      v94 = v68;
      *(v69 + *(v68 + 24)) = v71;
      v74 = v93;
      sub_8EFF4();
      v75 = v95;
      v72(v95, v54, v55);
      v76 = v92;
      sub_588C0(v74, v75, &v102);
      sub_5A3A4();
      v77(v54, v55);
      v78 = sub_5A36C();
      v79(v78);
      (*(v70 + 8))(v100, v88);
      if (v76)
      {

        sub_6678(&v90[v96], &qword_C3598);
      }

      else
      {
        v80 = (v96 + *(v94 + 7));
        v81 = v103[0];
        *v80 = v102;
        v80[1] = v81;
        result = *(v103 + 9);
        *(v80 + 25) = *(v103 + 9);
      }
    }

    else
    {
      v60 = sub_8F504();
      sub_5A354();
      sub_59B04(v61, v62);
      swift_allocError();
      v64 = v63;
      v65 = type metadata accessor for Shelf();
      *v64 = 25705;
      v64[1] = 0xE200000000000000;
      v64[2] = v65;
      (*(*(v60 - 8) + 104))(v64, enum case for JSONError.missingProperty(_:), v60);
      swift_willThrow();
      sub_5A3A4();
      v66(v99, v98);
      v39(v49, v18);
      (*(v97 + 8))(v100, v31);
    }
  }

  return result;
}

void sub_5965C(uint64_t *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v7 = type metadata accessor for Shelf();
  v8 = *(v3 + v7[6]);
  v24[2] = a1;

  v10 = sub_59914(sub_59D74, v24, v8);
  if ((a2 & 1) == 0)
  {
    if (v9)
    {

      sub_59D94(v3, a3);
      return;
    }

    goto LABEL_14;
  }

  if (v9)
  {
    sub_13D04(a1, &v26);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_343F0(0, *(v8 + 16) + 1, 1, v8);
      v8 = v20;
    }

    v12 = *(v8 + 16);
    v11 = *(v8 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_343F0(v11 > 1, v12 + 1, 1, v8);
      v8 = v21;
    }

    *(v8 + 16) = v12 + 1;
    sub_9520(&v26, v8 + 40 * v12 + 32);
    goto LABEL_18;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_7A8F8(v8);
    v8 = v22;
    if ((v10 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  if (v10 < *(v8 + 16))
  {
LABEL_17:
    sub_59DF8((v8 + 40 * v10 + 32), a1);
LABEL_18:
    v14 = *v3;
    v13 = v3[1];
    sub_59D04(v3 + v7[5], a3 + v7[5]);
    v15 = (v3 + v7[7]);
    *&v27[9] = *(v15 + 25);
    v16 = *&v27[9];
    v18 = *v15;
    v17 = v15[1];
    *a3 = v14;
    a3[1] = v13;
    v26 = v18;
    *v27 = v17;
    *(a3 + v7[6]) = v8;
    v19 = (a3 + v7[7]);
    *(v19 + 25) = v16;
    *v19 = v18;
    v19[1] = v17;

    sub_59C9C(&v26, v25);
    return;
  }

  __break(1u);
LABEL_14:
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v10 & 0x8000000000000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_21:
  sub_7A8F8(v8);
  v8 = v23;
  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_22;
  }

LABEL_16:
  if (v10 < *(v8 + 16))
  {
    goto LABEL_17;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_5986C(void *a1, void *a2)
{
  sub_CD08(a1, a1[3]);
  sub_8F114();
  sub_CD08(a2, a2[3]);
  sub_8F114();
  v3 = sub_8F994();
  sub_17A94(&v5);
  sub_17A94(v6);
  return v3 & 1;
}

uint64_t sub_59914(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  for (i = a3 + 32; ; i += 40)
  {
    if (v6 == v5)
    {
      return 0;
    }

    result = a1(i);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v5;
  }

  return v5;
}

uint64_t sub_59994@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (v2 + *(a1 + 28));
  v4 = v3[1];
  v8 = *v3;
  v9[0] = v4;
  *(v9 + 9) = *(v3 + 25);
  v5 = *(v9 + 9);
  *a2 = v8;
  a2[1] = v4;
  *(a2 + 25) = v5;
  return sub_59C9C(&v8, &v7);
}

uint64_t sub_59A10@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

unint64_t sub_59AB0()
{
  result = qword_C60A0;
  if (!qword_C60A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C60A0);
  }

  return result;
}

uint64_t sub_59B04(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_59B4C()
{
  result = qword_C60A8;
  if (!qword_C60A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C60A8);
  }

  return result;
}

unint64_t sub_59BA0()
{
  result = qword_C60B0;
  if (!qword_C60B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C60B0);
  }

  return result;
}

unint64_t sub_59BF4()
{
  result = qword_C60B8;
  if (!qword_C60B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C60B8);
  }

  return result;
}

unint64_t sub_59C48()
{
  result = qword_C60C0;
  if (!qword_C60C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C60C0);
  }

  return result;
}

uint64_t sub_59D04(uint64_t a1, uint64_t a2)
{
  v4 = sub_332C(&qword_C3598);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_59D94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Shelf();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_59DF8(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result[3];
    v5 = a2[3];
    if (v4 == v5)
    {
      v10 = *(v4 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;

        *v3 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v5;
      result[4] = a2[4];
      v6 = *(v4 - 8);
      v7 = *(v5 - 8);
      v8 = v7;
      v9 = *(v7 + 80);
      if ((*(v6 + 82) & 2) != 0)
      {
        if ((v9 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v7 + 16))(result, a2, v5);
        }
      }

      else
      {
        (*(v6 + 32))(v13, result, v4);
        if ((v9 & 0x20000) != 0)
        {
          *v3 = *a2;
        }

        else
        {
          (*(v8 + 16))(v3, a2, v5);
        }

        return (*(v6 + 8))(v13, v4);
      }
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Shelf.Presentation.Axis(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x5A0F8);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_5A138(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x5A204);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_5A240()
{
  result = qword_C60C8;
  if (!qword_C60C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C60C8);
  }

  return result;
}

unint64_t sub_5A298()
{
  result = qword_C60D0;
  if (!qword_C60D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C60D0);
  }

  return result;
}

unint64_t sub_5A2F0()
{
  result = qword_C60D8;
  if (!qword_C60D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C60D8);
  }

  return result;
}

uint64_t sub_5A3DC()
{

  return sub_8EFF4();
}

_BYTE *_s10descrB6461O13NavigationBarV10AppearanceOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x5A4C8);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_5A500(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return sub_5D8E4(v2);
}

uint64_t sub_5A52C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_5A548(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 707))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 472);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_5A59C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 696) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 706) = 0;
    *(result + 704) = 0;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 707) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 707) = 0;
    }

    if (a2)
    {
      *(result + 472) = a2;
    }
  }

  return result;
}

void sub_5A6C0(void *a1, char a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_332C(&unk_C3EF0);
    swift_willThrowTypedImpl();
    sub_8F3F4();
    v3 = a1;
    v4 = 1;
  }

  else
  {
    v5 = a1;
    sub_8F414();
    v3 = a1;
    v4 = 0;
  }

  sub_5D1D4(v3, v4);
}

uint64_t sub_5A750()
{
  sub_5A3B0();
  v2._rawValue = &off_B6DB0;
  v4._object = v0;
  sub_8FB14(v2, v4);
  sub_5D8EC();
  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_5A790(char a1)
{
  result = 0x6E6564646968;
  switch(a1)
  {
    case 1:
      result = 0x656772616CLL;
      break;
    case 2:
      result = 0x6E69616C70;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0x726170736E617274;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_5A840()
{
  sub_5A3B0();
  v2._rawValue = &off_B6E48;
  v6._object = v0;
  sub_8FB14(v2, v6);
  sub_5D8EC();
  sub_5D904();
  if (v4)
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_5A87C(char a1)
{
  if (!a1)
  {
    return 0x726564616568;
  }

  if (a1 == 1)
  {
    return 0x6E69616C70;
  }

  return 0x6D6574737973;
}

uint64_t sub_5A8C8()
{
  sub_5A3B0();
  v2._rawValue = &off_B6EB0;
  v6._object = v0;
  sub_8FB14(v2, v6);
  sub_5D8EC();
  sub_5D904();
  if (v4)
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_5A904(char a1)
{
  if (!a1)
  {
    return 0x6C65636E6163;
  }

  if (a1 == 1)
  {
    return 0x65736F6C63;
  }

  return 1701736292;
}

uint64_t sub_5A94C()
{
  sub_5A3B0();
  v2._rawValue = &off_B6F18;
  v6._object = v0;
  sub_8FB14(v2, v6);
  sub_5D8EC();
  sub_5D904();
  if (v4)
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_5A988(char a1)
{
  if (!a1)
  {
    return 0x61776C41776F6873;
  }

  if (a1 == 1)
  {
    return 0x63536E4F776F6873;
  }

  return 0x63536E4F65646968;
}

uint64_t sub_5A9F4()
{
  sub_5A3B0();
  v2._rawValue = &off_B6F80;
  v6._object = v0;
  sub_8FB14(v2, v6);
  sub_5D8EC();
  sub_5D904();
  if (v4)
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_5AA30(char a1)
{
  if (!a1)
  {
    return 0x7265746E6563;
  }

  if (a1 == 1)
  {
    return 1952867692;
  }

  return 0x7468676972;
}

uint64_t sub_5AA9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_5A750();
  *a1 = result;
  return result;
}

unint64_t sub_5AACC()
{
  v1 = sub_5A3D0();
  result = sub_5A790(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_5AAF8()
{
  result = qword_C60E0;
  if (!qword_C60E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C60E0);
  }

  return result;
}

uint64_t sub_5AB70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_5A840();
  *a1 = result;
  return result;
}

uint64_t sub_5ABA0()
{
  v1 = sub_5A3D0();
  result = sub_5A87C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_5ABEC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_5A8C8();
  *a1 = result;
  return result;
}

uint64_t sub_5AC1C()
{
  v1 = sub_5A3D0();
  result = sub_5A904(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_5AC68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_5A94C();
  *a1 = result;
  return result;
}

uint64_t sub_5AC98()
{
  v1 = sub_5A3D0();
  result = sub_5A988(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_5ACE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_5A9F4();
  *a1 = result;
  return result;
}

uint64_t sub_5AD14()
{
  v1 = sub_5A3D0();
  result = sub_5AA30(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

void sub_5AD3C()
{
  sub_8948();
  v96 = v0;
  v103 = v1;
  v3 = v2;
  v5 = v4;
  v6 = sub_8EFE4();
  sub_42F8();
  v108 = v7;
  v9 = __chkstk_darwin(v8);
  v11 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v99 = &v96 - v13;
  v14 = __chkstk_darwin(v12);
  v98 = &v96 - v15;
  v16 = __chkstk_darwin(v14);
  v97 = &v96 - v17;
  __chkstk_darwin(v16);
  v19 = &v96 - v18;
  v102 = xmmword_923B0;
  v5[20] = xmmword_923B0;
  bzero(v5 + 21, 0x88uLL);
  v5[30] = v102;
  v101 = v5;
  bzero(v5 + 31, 0x88uLL);
  v105 = v3;
  sub_8EFF4();
  v20 = sub_8EFB4();
  v104 = v6;
  v100 = v11;
  if (v20)
  {
    goto LABEL_4;
  }

  sub_6F3C(v19, v103);
  if (*(&v107[0] + 1) == 2)
  {
    sub_6678(v107, &qword_C60E8);
LABEL_4:
    sub_8F504();
    sub_923C();
    sub_4264();
    *v21 = 0x726F737365636361;
    v21[1] = 0xEF6E6F7474754279;
    v21[2] = &_s10descrB6461O13NavigationBarVN;
    sub_42A0();
    (*(v22 + 104))();
    swift_willThrow();
    v23 = *(v108 + 8);
    (v23)(v19, v104);

    v24 = 0;
    sub_5D844();
    goto LABEL_6;
  }

  v23 = *(v108 + 8);
  (v23)(v19, v104);
  v26 = sub_5D804();
  v24 = v96;
LABEL_6:
  v35 = v101;
  *v101 = v28;
  *(v35 + 16) = v26;
  *(v35 + 32) = v27;
  *(v35 + 48) = v29;
  *(v35 + 64) = v30;
  *(v35 + 80) = v31;
  *(v35 + 96) = v32;
  *(v35 + 112) = v33;
  *(v35 + 128) = v34;
  *(v35 + 144) = v25;
  sub_5D944();
  v36 = v105;
  v37 = sub_6374();
  if (!v24)
  {
    v96 = v23;
    *(v35 + 152) = v37;
    v39 = v97;
    sub_5D96C();
    if ((sub_8EFB4() & 1) == 0)
    {
      sub_6F3C(v39, v103);
      if (*(&v107[0] + 1) != 2)
      {
        sub_4284();
        sub_5D924();
        v44 = v96;
        v96();
        v46 = sub_5D804();
LABEL_13:
        *(v35 + 160) = v48;
        *(v35 + 176) = v46;
        *(v35 + 192) = v47;
        *(v35 + 208) = v49;
        *(v35 + 224) = v50;
        *(v35 + 240) = v51;
        *(v35 + 256) = v52;
        *(v35 + 272) = v53;
        *(v35 + 288) = v54;
        *(v35 + 304) = v45;
        v55 = v98;
        sub_5D96C();
        if ((sub_8EFB4() & 1) == 0)
        {
          sub_6F1C(v55, v103);
          if (v106[1] != 2)
          {
            sub_4284();
            (v44)(v55, &enum case for JSONError.missingProperty(_:));
            memcpy(v107, v106, 0x98uLL);
LABEL_18:
            sub_5D0C8(v107, v35 + 320);
            v60 = sub_47508();
            v61 = v99;
            *(v35 + 312) = v60 & 1;
            __chkstk_darwin(v60);
            sub_5D7F4();
            *(v62 - 16) = v103;
            sub_BAFC(0x747542726568746FLL, 0xEC000000736E6F74, &_s10descrB6461O13NavigationBarVN, sub_5D138, v63, v64, v65, v66);
            *(v35 + 472) = v67;
            sub_8EFF4();
            if ((sub_8EFB4() & 1) == 0)
            {
              sub_6F1C(v61, v103);
              if (v106[1] != 2)
              {
                sub_4284();
                (v44)(v61, v104);
                memcpy(v107, v106, 0x98uLL);
LABEL_23:
                sub_5D0C8(v107, v35 + 480);
                v70 = sub_5D910();
                sub_64F0(v70, v71, v72, v73, v74, v75, v76, v77);
                *(v35 + 632) = v78;
                sub_5D870();
                *(v35 + 640) = sub_473C0();
                *(v35 + 648) = v79;
                v80 = v100;
                sub_8EFF4();
                if ((sub_8EFB4() & 1) == 0)
                {
                  sub_6DE0();
                  if (LOBYTE(v107[3]) != 254)
                  {
                    sub_4284();
                    sub_5D924();
                    v44();
                    v88 = v107[0];
                    v90 = v107[1];
                    v91 = v107[2];
                    v89 = v107[3];
                    goto LABEL_28;
                  }

                  sub_6678(v107, &qword_C6100);
                }

                sub_8F504();
                sub_923C();
                sub_4264();
                *v81 = 0x656956656C746974;
                v81[1] = 0xE900000000000077;
                v81[2] = &_s10descrB6461O13NavigationBarVN;
                sub_42A0();
                (*(v82 + 104))();
                swift_willThrow();
                sub_4284();
                sub_5D924();
                v44();

                v88 = 0uLL;
                v89 = 255;
                v90 = 0uLL;
                v91 = 0uLL;
LABEL_28:
                *(v35 + 656) = v88;
                *(v35 + 672) = v90;
                *(v35 + 688) = v91;
                *(v35 + 704) = v89;
                v92 = v105;
                sub_6524(0x696C41656C746974, 0xEE00746E656D6E67, &_s10descrB6461O13NavigationBarVN, v83, v84, v85, v86, v87);
                v94 = v93;
                sub_4284();
                (v44)(v92, v80);
                sub_8F004();
                sub_887C();
                (*(v95 + 8))(v103);
                *(v35 + 706) = v94;
                goto LABEL_29;
              }

              sub_6678(v106, &qword_C60F8);
            }

            sub_8F504();
            sub_923C();
            sub_4264();
            *v68 = 0x7475427468676972;
            v68[1] = 0xEB000000006E6F74;
            v68[2] = &_s10descrB6461O13NavigationBarVN;
            sub_42A0();
            (*(v69 + 104))();
            swift_willThrow();
            sub_4284();
            (v44)(v61, v104);

            sub_5D880();
            goto LABEL_23;
          }

          sub_6678(v106, &qword_C60F8);
        }

        sub_8F504();
        sub_923C();
        v56 = sub_4264();
        sub_5D8CC(v56, v57);
        *(v58 + 16) = &_s10descrB6461O13NavigationBarVN;
        sub_42A0();
        (*(v59 + 104))();
        swift_willThrow();
        sub_4284();
        (v44)(v55, &enum case for JSONError.missingProperty(_:));

        sub_5D880();
        goto LABEL_18;
      }

      sub_6678(v107, &qword_C60E8);
    }

    sub_8F504();
    sub_923C();
    v40 = sub_4264();
    sub_5D8CC(v40, v41);
    *(v42 + 16) = &_s10descrB6461O13NavigationBarVN;
    sub_42A0();
    (*(v43 + 104))();
    swift_willThrow();
    sub_4284();
    sub_5D924();
    v44 = v96;
    v96();

    sub_5D844();
    goto LABEL_13;
  }

  sub_4284();
  (v23)(v36, v104);
  sub_8F004();
  sub_887C();
  (*(v38 + 8))(v103);
  sub_6678(v35, &qword_C60F0);
  sub_6678(v35 + 320, &qword_C5BA0);
  sub_6678(v35 + 480, &qword_C5BA0);
LABEL_29:
  sub_8960();
}

void sub_5B7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_8948();
  v12 = v11;
  v14 = v13;
  sub_8EFE4();
  sub_42F8();
  __chkstk_darwin(v15);
  sub_8814();
  sub_8E394();
  swift_initStackObject();
  v16 = sub_473C0();
  if (v10)
  {

    v60 = 0;
    v59 = 0;
  }

  else
  {
    v59 = v17;
    v60 = v16;
  }

  v18 = sub_5D944();
  sub_630C(v18, 0xEA00000000006563, v19, v20, v21, v22, v23, v24);
  v58 = v25;
  __chkstk_darwin(v25);
  sub_5D7F4();
  *(v26 - 16) = v12;
  sub_5D958();
  sub_9700();
  v55 = v67;
  v54 = v66;
  v57 = v68;
  v56 = v69;
  __chkstk_darwin(v27);
  sub_5D7F4();
  *(v28 - 16) = v12;
  sub_BB14(0x6B726F77747261, 0xE700000000000000, &_s10descrB6461O13NavigationBarV6ButtonVN, sub_5D09C, v29, v30, v31, v32);
  v61 = v12;
  v53 = v33;
  v34 = sub_47508();
  sub_8EFF4();
  if (sub_8EFB4())
  {
    sub_8F504();
    sub_923C();
    sub_4264();
    *v35 = 0x6575676573;
    v35[1] = 0xE500000000000000;
    v35[2] = &_s10descrB6461O13NavigationBarV6ButtonVN;
    sub_42A0();
    (*(v36 + 104))(v37);
    swift_willThrow();
    v38 = sub_5D824();
    MEMORY[0xE500000000000000](v38);

    v64 = 0;
    v62 = 0u;
    v63 = 0u;
  }

  else
  {
    sub_8E384();
    v47 = sub_5D824();
    MEMORY[0xE500000000000000](v47);
    sub_3A94(v65, &v62);
  }

  *&v65[7] = v62;
  *&v65[23] = v63;
  *&v65[39] = v64;
  sub_6340(0xD000000000000010, 0x800000000009FF90, &_s10descrB6461O13NavigationBarV6ButtonVN, v48, v49, v50, v51, v52);
  v40 = v39;
  sub_5D870();
  v41 = sub_473C0();
  v43 = v42;
  v44 = sub_5D8B4();
  MEMORY[0xE500000000000000](v44);
  *v14 = v60;
  *(v14 + 8) = v59;
  *(v14 + 16) = v58;
  *(v14 + 17) = v62;
  *(v14 + 20) = *(&v62 + 3);
  *(v14 + 24) = v54;
  *(v14 + 40) = v55;
  *(v14 + 56) = v57;
  *(v14 + 64) = v56;
  *(v14 + 72) = v53;
  *(v14 + 80) = v34 & 1;
  v45 = *&v65[16];
  *(v14 + 81) = *v65;
  *(v14 + 97) = v45;
  *(v14 + 112) = *&v65[31];
  *(v14 + 128) = v40;
  *(v14 + 129) = *(&a10 + 1);
  *(v14 + 132) = HIDWORD(a10);
  *(v14 + 136) = v41;
  *(v14 + 144) = v43;
  sub_8F004();
  sub_887C();
  (*(v46 + 8))(v61);
  sub_8960();
}

void sub_5BD78()
{
  sub_8948();
  v36 = v1;
  v3 = v2;
  v4 = sub_8F004();
  sub_42F8();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_8814();
  v10 = v9 - v8;
  v11 = sub_8EFE4();
  sub_42F8();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_8814();
  v17 = v16 - v15;
  v18 = sub_473C0();
  if (v0)
  {
    (*(v6 + 8))(v36, v4);
    (*(v13 + 8))(v3, v11);
  }

  else
  {
    v20 = v19;
    v33 = v10;
    v34 = v6;
    v35 = v4;
    if (v18 == 0x6E6F74747562 && v19 == 0xE600000000000000)
    {

      v23 = v13;
      v24 = v6;
    }

    else
    {
      v22 = v18;
      v23 = v13;
      if ((sub_8FB54() & 1) == 0)
      {
        v31 = sub_8F504();
        sub_923C();
        sub_5D98C();
        *v32 = v22;
        v32[1] = v20;
        v32[2] = &_s10descrB6461O13NavigationBarV4ItemON;
        (*(*(v31 - 8) + 104))(v32, enum case for JSONError.unknownCase(_:), v31);
        swift_willThrow();
        (*(v34 + 8))(v36, v35);
        (*(v13 + 8))(v3, v11);
        goto LABEL_12;
      }

      v24 = v6;
    }

    (*(v23 + 16))(v17, v3, v11);
    (*(v24 + 16))(v33, v36, v35);
    sub_5B7AC(v17, v33, v25, v26, v27, v28, v29, v30, v33, v3);
    (*(v24 + 8))(v36, v35);
    (*(v23 + 8))(v3, v11);
  }

LABEL_12:
  sub_8960();
}

void sub_5C0A4()
{
  sub_8948();
  v42 = v1;
  v43 = v0;
  v3 = v2;
  v4 = sub_8EFE4();
  sub_42F8();
  v6 = v5;
  v8 = __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v38 - v11;
  sub_8EFF4();
  v44 = sub_8EFC4();
  v14 = v13;
  v15 = *(v6 + 8);
  v15(v12, v4);
  sub_8EFF4();
  v16 = sub_8EFC4();
  v40 = v17;
  v41 = v16;
  v15(v12, v4);
  sub_5D870();
  sub_8EFF4();
  v18 = sub_8EFC4();
  v20 = v19;
  v15(v10, v4);
  if (v20)
  {
    sub_8F004();
    sub_887C();
    (*(v21 + 8))(v42);
    v22 = sub_5D8A8();
    (v15)(v22);
  }

  else
  {
    v23 = v42;
    if (v14)
    {
      sub_CE5C(0, &qword_C6108);

      v39 = v14;
      v24 = v43;
      v25 = sub_5C438(v44, v14, 1);
      if (v24)
      {

        sub_8F004();
        sub_887C();
        (*(v26 + 8))(v23);
        v27 = sub_5D8A8();
        (v15)(v27);
        v18 = 0;
        v20 = 0xE000000000000000;
      }

      else
      {
        v30 = v25;
        v43 = 0;
        if (v25)
        {
          v31 = [v25 localizedName];
          v18 = sub_8F5F4();
          v20 = v32;

          sub_8F004();
          sub_887C();
          (*(v33 + 8))(v42);
          v34 = sub_5D8A8();
          (v15)(v34);
        }

        else
        {
          sub_8F004();
          sub_887C();
          (*(v35 + 8))(v23);
          v36 = sub_5D8A8();
          (v15)(v36);
          v18 = 0;
          v20 = 0xE000000000000000;
        }
      }

      v14 = v39;
    }

    else
    {
      sub_8F004();
      sub_887C();
      (*(v28 + 8))(v23);
      v29 = sub_5D8A8();
      (v15)(v29);
      v18 = 0;
      v20 = 0xE000000000000000;
    }
  }

  *v3 = v44;
  v3[1] = v14;
  v37 = v40;
  v3[2] = v41;
  v3[3] = v37;
  v3[4] = v18;
  v3[5] = v20;
  sub_8960();
}

id sub_5C438(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_8F5C4();

  v9 = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:&v9];

  if (v5)
  {
    v6 = v9;
  }

  else
  {
    v7 = v9;
    sub_8E094();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_5C520(double a1, double a2)
{
  v5 = sub_332C(&qword_C40D0);
  __chkstk_darwin(v5 - 8);
  v7 = &aBlock[-v6];
  v8 = sub_8E0F4();
  sub_42F8();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_8814();
  v14 = v13 - v12;
  sub_332C(&qword_C6110);
  v15 = sub_8F444();
  if (*(v2 + 8))
  {
    sub_CE5C(0, &qword_C6118);

    v16 = sub_5C914();
    [objc_opt_self() scale];
    v18 = [objc_allocWithZone(ISImageDescriptor) initWithSize:a1 scale:{a2, v17}];
    sub_5D7D0();
    v31 = 1107296256;
    v32 = sub_5CA70;
    v33 = &unk_B9DB8;
    v19 = _Block_copy(aBlock);

    [v16 getCGImageForImageDescriptor:v18 completion:v19];
    _Block_release(v19);
  }

  else
  {
    if (*(v2 + 24))
    {
      sub_8E0E4();
      if (sub_33C0(v7, 1, v8) != 1)
      {
        (*(v10 + 32))(v14, v7, v8);
        v23 = [objc_opt_self() defaultLoader];
        sub_8E0C4(v24);
        v26 = v25;
        v27 = [v23 fetchImageWithURL:v25];

        sub_5D7D0();
        v31 = 1107296256;
        v32 = sub_1279C;
        v33 = &unk_B9D90;
        v28 = _Block_copy(aBlock);

        [v27 addFinishBlock:v28];
        _Block_release(v28);

        (*(v10 + 8))(v14, v8);
        return v15;
      }

      sub_6678(v7, &qword_C40D0);
    }

    v20 = sub_8F5C4();
    v21 = AMSError();

    v22 = v21;
    sub_5A6C0(v21, 1);
  }

  return v15;
}

id sub_5C914()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_8F5C4();

  v2 = [v0 initWithBundleIdentifier:v1];

  return v2;
}

void sub_5C988(void *a1)
{
  if (a1)
  {
    v2 = objc_allocWithZone(UIImage);
    v6 = a1;
    v3 = [v2 initWithCGImage:?];
    sub_5A6C0(v3, 0);
  }

  else
  {
    v4 = sub_8F5C4();
    v5 = AMSError();

    v3 = v5;
    sub_5A6C0(v5, 1);
    v6 = v3;
  }
}

void sub_5CA70(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_5CADC(void *a1, void *a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_5A6C0(a2, 1);
  }

  else
  {
    sub_5A6C0(a1, 0);
  }
}

double sub_5CB3C@<D0>(_OWORD *a1@<X8>)
{
  sub_5C0A4();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

void sub_5CB80()
{
  sub_8948();
  v46 = v1;
  v3 = v2;
  v5 = v4;
  v6 = sub_8EFE4();
  sub_42F8();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_8814();
  v12 = v11 - v10;
  v13 = sub_473C0();
  if (v0)
  {
    goto LABEL_2;
  }

  v18 = v13;
  v19 = v14;
  v21 = v13 == sub_5D958() && v20 == 0xE700000000000000;
  if (v21 || (sub_8FB54() & 1) != 0)
  {

    __chkstk_darwin(v22);
    sub_5D7F4();
    v17 = v46;
    *(v23 - 16) = v46;
    sub_5D930();
    sub_9844();
    v24 = 0;
    v40 = v43;
    v41 = v44;
    v42 = v45;
    LOBYTE(v38[0]) = 0;
LABEL_10:
    sub_5D910();
    v26 = sub_47508();
    v27 = sub_5D860();
    v28(v27);
    v29 = v41;
    *v5 = v40;
    *(v5 + 16) = v29;
    *(v5 + 32) = v42;
    *(v5 + 48) = v24;
    *(v5 + 49) = v26 & 1;
    goto LABEL_19;
  }

  v25 = v18 == 1954047348 && v19 == 0xE400000000000000;
  if (v25 || (sub_8FB54() & 1) != 0)
  {

    sub_5D930();
    sub_8EFF4();
    if ((sub_8EFB4() & 1) == 0)
    {
      sub_5CFC0();
      if (v37)
      {
        (*(v8 + 8))(v12, v6);
        sub_3A94(&v36, v38);
        v24 = 1;
        v39 = 1;
        v40 = v38[0];
        v41 = v38[1];
        v42 = v38[2];
        v17 = v46;
        goto LABEL_10;
      }

      sub_6678(&v36, &unk_C55C0);
    }

    sub_8F504();
    sub_923C();
    sub_4264();
    *v33 = 2003134838;
    v33[1] = 0xE400000000000000;
    v33[2] = &_s10descrB6461O13NavigationBarV9TitleViewVN;
    sub_42A0();
    (*(v34 + 104))();
    swift_willThrow();
    v35 = *(v8 + 8);
    v35(v3, v6);
    v35(v12, v6);
    goto LABEL_3;
  }

  v31 = sub_8F504();
  sub_923C();
  sub_5D98C();
  *v32 = v18;
  v32[1] = v19;
  v32[2] = &_s10descrB6461O13NavigationBarV9TitleViewVN;
  (*(*(v31 - 8) + 104))(v32, enum case for JSONError.unknownCase(_:), v31);
  swift_willThrow();
LABEL_2:
  v15 = sub_5D860();
  v16(v15);
LABEL_3:
  v17 = v46;
LABEL_19:
  sub_8F004();
  sub_887C();
  (*(v30 + 8))(v17);
  sub_8960();
}

uint64_t sub_5CFC0()
{
  sub_8E544();
  swift_initStackObject();
  return sub_8E534();
}

double sub_5D054@<D0>(_OWORD *a1@<X8>)
{
  sub_6C90();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_5D09C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_6C48(a1, *(v2 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_5D0C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_332C(&qword_C5BA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_5D138@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_AAC8(a1, *(v2 + 16));
  *a2 = result;
  return result;
}

double sub_5D164@<D0>(_OWORD *a1@<X8>)
{
  sub_70F8();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_5D1B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_5D1D4(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

__n128 sub_5D1E0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_5D1FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_5D238(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_5D288(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

__n128 sub_5D308(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_5D324(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 50))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_5D364(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_5D3C8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_5D8E4(-1);
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
      return sub_5D8E4((*a1 | (v4 << 8)) - 3);
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

      return sub_5D8E4((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_5D8E4((*a1 | (v4 << 8)) - 3);
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

  return sub_5D8E4(v8);
}

_BYTE *sub_5D44C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x5D518);
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

uint64_t sub_5D570(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 152))
    {
      return sub_5D8E4(*a1 + 2147483646);
    }

    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return sub_5D8E4(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return sub_5D8E4(v4);
}

uint64_t sub_5D5C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_5D64C()
{
  result = qword_C6120;
  if (!qword_C6120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6120);
  }

  return result;
}

unint64_t sub_5D6A4()
{
  result = qword_C6128;
  if (!qword_C6128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6128);
  }

  return result;
}

unint64_t sub_5D6FC()
{
  result = qword_C6130;
  if (!qword_C6130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6130);
  }

  return result;
}

unint64_t sub_5D754()
{
  result = qword_C6138;
  if (!qword_C6138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6138);
  }

  return result;
}

void sub_5D7D0()
{
  *(v2 - 112) = v0;
  *(v2 - 104) = v1;
  *(v2 - 144) = _NSConcreteStackBlock;
}

void sub_5D880()
{
  v0[15] = v0[3];

  bzero(v0 + 16, 0x88uLL);
}

void *sub_5D8CC(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = v2;
  a2[1] = 0xEA00000000006E6FLL;
  return result;
}

uint64_t sub_5D8EC()
{
}

uint64_t sub_5D96C()
{

  return sub_8EFF4();
}

uint64_t sub_5D98C()
{

  return swift_allocError();
}

uint64_t _s10descrB6461O19PocketConfigurationVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s10descrB6461O19PocketConfigurationVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x5DB10);
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_5DB48(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_B6FE8;
  v7._object = a2;
  v4 = sub_8FB14(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_5DB9C(char a1)
{
  if (a1)
  {
    return 7368564;
  }

  else
  {
    return 0x6D6F74746F62;
  }
}

uint64_t sub_5DBEC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_5DB48(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_5DC1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_5DB9C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_5DC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_6558(1701274725, 0xE400000000000000, &_s10descrB6461O19PocketConfigurationVN, a4, a5, a6, a7, a8);
  if (v8)
  {
    sub_8F004();
    sub_887C();
    (*(v12 + 8))(a2);
    sub_8EFE4();
    sub_887C();
    return (*(v13 + 8))(a1);
  }

  else
  {
    v15 = v11;
    v16 = sub_47508() & 1;
    sub_8F004();
    sub_887C();
    (*(v17 + 8))(a2);
    sub_8EFE4();
    sub_887C();
    (*(v18 + 8))(a1);
    return v15 & 1 | (v16 << 8);
  }
}

uint64_t sub_5DDA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  result = sub_5DC48(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!v9)
  {
    *a9 = result & 1;
    a9[1] = BYTE1(result);
  }

  return result;
}

_BYTE *_s10descrB6461O19PocketConfigurationV10PocketEdgeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x5DEA8);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_5DEE4()
{
  result = qword_C6140;
  if (!qword_C6140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6140);
  }

  return result;
}

_BYTE *sub_5DF58(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x5E024);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_5E060(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 805))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_5E0A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 792) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 804) = 0;
    *(result + 800) = 0;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 805) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 805) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_5E1C8(char a1)
{
  if (a1)
  {
    return 0x646570756F7267;
  }

  else
  {
    return 0x6E69616C70;
  }
}

uint64_t sub_5E1FC(uint64_t a1, void *a2, Swift::OpaquePointer a3)
{
  v8._countAndFlagsBits = a1;
  v8._object = a2;
  v5 = sub_8FB14(a3, v8);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_5E24C(char a1)
{
  if (a1)
  {
    return 1685217640;
  }

  else
  {
    return 1952870259;
  }
}

BOOL sub_5E26C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B70D8;
  v6._object = a2;
  v4 = sub_8FB14(v3, v6);

  return v4 != 0;
}

uint64_t sub_5E2D8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3._rawValue = &off_B7038;
  result = sub_5E1FC(*a1, *(a1 + 8), v3);
  *a2 = result;
  return result;
}

uint64_t sub_5E310@<X0>(uint64_t *a1@<X8>)
{
  result = sub_5E1C8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_5E360@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3._rawValue = &off_B7088;
  result = sub_5E1FC(*a1, *(a1 + 8), v3);
  *a2 = result;
  return result;
}

uint64_t sub_5E398@<X0>(uint64_t *a1@<X8>)
{
  result = sub_5E24C(*v1);
  *a1 = result;
  a1[1] = 0xE400000000000000;
  return result;
}

unint64_t sub_5E3CC()
{
  result = qword_C6148;
  if (!qword_C6148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6148);
  }

  return result;
}

unint64_t sub_5E424()
{
  result = qword_C6150;
  if (!qword_C6150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6150);
  }

  return result;
}

BOOL sub_5E484@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_5E26C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_5E4DC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v91 = a2;
  v81 = a3;
  v5 = sub_8EFE4();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v72 - v10;
  sub_8E414();
  v12 = swift_allocObject();
  sub_658C(0x6E61726165707061, 0xEA00000000006563, &unk_BA5A0, v13, v14, v15, v16, v17);
  if (v3)
  {
    (*(v6 + 8))(a1, v5);

    sub_8F004();
    sub_887C();
    return (*(v19 + 8))(v91);
  }

  v77 = v9;
  v78 = v11;
  v79 = v12;
  v80 = v5;
  v84[0] = v18 & 1;
  __chkstk_darwin(v18);
  *(&v72 - 2) = v91;
  sub_BB14(v21 - 3, v22 | 0x8000000000000000, &unk_BA5A0, sub_5EE58, (&v72 - 4), v23, v24, v25);
  v26 = a1;
  v74 = v27;
  v85 = v27;
  __chkstk_darwin(v27);
  *(&v72 - 2) = v91;
  sub_BAFC(0x756F72676B636162, 0xEF726F6C6F43646ELL, &unk_BA5A0, sub_17A8C, (&v72 - 4), v28, v29, v30);
  v31 = 0x74756F79616CLL;
  v73 = v32;
  v86 = v32;
  sub_8EFF4();
  v33 = sub_8EFB4();
  v76 = v6;
  if (v33)
  {
    v34 = sub_8F504();
    sub_923C();
    sub_4264();
    *v35 = 0x74756F79616CLL;
    v35[1] = 0xE600000000000000;
    v35[2] = &unk_BA5A0;
    (*(*(v34 - 8) + 104))(v35, enum case for JSONError.missingProperty(_:), v34);
    swift_willThrow();
    v36 = sub_5F05C();
    v37(v36);

    *&v82[24] = &type metadata for DefaultLayoutModel;
    *&v82[32] = &protocol witness table for DefaultLayoutModel;
  }

  else
  {
    sub_8E404();
    v62 = sub_5F05C();
    v63(v62);
    sub_3A94(v82, v83);
    sub_3A94(v83, v82);
  }

  sub_3A94(v82, v87);
  v38 = sub_473C0();
  v78 = v26;
  v39 = v77;
  v40 = v26;
  v87[5] = v38;
  v87[6] = v41;
  sub_8EFF4();
  if (sub_8EFB4())
  {
    goto LABEL_9;
  }

  v42 = v91;
  sub_73C4();
  if (*&v82[472] == 1)
  {
    sub_6678(v82, &qword_C6160);
    v31 = v80;
    v40 = v78;
LABEL_9:
    v43 = sub_8F504();
    sub_923C();
    sub_4264();
    strcpy(v44, "navigationBar");
    *(v44 + 7) = -4864;
    *(v44 + 2) = &unk_BA5A0;
    (*(*(v43 - 8) + 104))(v44, enum case for JSONError.missingProperty(_:), v43);
    swift_willThrow();

    v45 = v40;
    v46 = v75;
    v75(v45, v31);
    v46(v39, v31);
    sub_8F004();
    sub_887C();
    (*(v47 + 8))(v91);

    sub_4F30(v87);
  }

  v48 = v75;
  v75(v39, v80);
  v49 = memcpy(v90, v82, 0x2C3uLL);
  __chkstk_darwin(v49);
  *(&v72 - 2) = v42;
  v51 = v78;
  sub_BAFC(0xD000000000000014, v50 | 0x8000000000000000, &unk_BA5A0, sub_5EE84, (&v72 - 4), v52, v53, v54);
  v55 = v81;
  v89 = v56;
  sub_65C0(0xD000000000000014, 0x80000000000A00C0, &unk_BA5A0, v57, v58, v59, v60, v61);
  v88 = v64 & 1;
  __chkstk_darwin(v64);
  *(&v72 - 2) = v42;
  sub_9988(0x686542666C656873, 0xED0000726F697661, &unk_BA5A0, sub_5EEB0, (&v72 - 4), v65, v66, v67, v72, v73, SWORD2(v73), SBYTE6(v73));
  v69 = v68;
  v70 = (v68 >> 8) & 1;
  v48(v51, v80);

  v90[707] = v69;
  v90[708] = v70;
  sub_5EEB8(v84, v55);
  sub_8F004();
  sub_887C();
  (*(v71 + 8))(v91);
  return sub_5EEF0(v84);
}

BOOL sub_5ED28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_614C(0xD000000000000017, 0x80000000000A00E0, &unk_BA490, a4, a5, a6, a7, a8);
  if (v8)
  {
  }

  sub_8F004();
  sub_887C();
  (*(v11 + 8))(a2);
  sub_8EFE4();
  sub_887C();
  (*(v12 + 8))(a1);
  return v8 != 0;
}

BOOL sub_5EDF8@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  result = sub_5ED28(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

uint64_t sub_5EE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_7238(a1, a2);
  *a3 = result;
  *(a3 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_5EE58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_74FC(a1, *(v2 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_5EE84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_AAE8(a1, *(v2 + 16));
  *a2 = result;
  return result;
}

_BYTE *sub_5EF20(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x5EFBCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_5EFF4()
{
  result = qword_C6168;
  if (!qword_C6168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6168);
  }

  return result;
}

uint64_t sub_5F05C()
{
  result = v1;
  *(v0 + 24) = *(v2 + 8);
  return result;
}

uint64_t sub_5F074(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for Shelf();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = &_swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v21 = &_swiftEmptyArrayStorage;
  sub_52A00(0, v10, 0);
  v11 = v21;
  v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = a3 + v18;
  v13 = *(v7 + 72);
  while (1)
  {
    v19(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = v11[2];
    v14 = v11[3];
    if (v15 >= v14 >> 1)
    {
      sub_52A00(v14 > 1, v15 + 1, 1);
      v11 = v21;
    }

    v11[2] = v15 + 1;
    sub_5F588(v9, v11 + v18 + v15 * v13);
    v12 += v13;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_5F208(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_332C(&qword_C6170);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for Shelf();
  v12 = __chkstk_darwin(v11);
  v14 = (&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v16 = &v18 - v15;
  sub_5F390(a2, a3, a4, v10);
  if (sub_33C0(v10, 1, v11) == 1)
  {
    return sub_5F5EC(v10);
  }

  sub_5F588(v10, v16);
  sub_5965C(a1, 1, v14);
  sub_5F654(v14, a4);
  sub_5F52C(v14);
  return sub_5F52C(v16);
}

uint64_t sub_5F390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for Shelf();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a3)
  {
    v13 = v4 + 1;
    if (a3 == 1)
    {
      v13 = v4;
    }
  }

  else
  {
    v13 = v4 + 2;
  }

  v14 = *v13;
  v15 = *(*v13 + 16);

  for (i = 0; ; ++i)
  {
    if (v15 == i)
    {

      v19 = 1;
      return sub_33E8(a4, v19, 1, v9);
    }

    if (i >= *(v14 + 16))
    {
      break;
    }

    sub_59D94(v14 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * i, v12);
    v18 = *v12 == a1 && v12[1] == a2;
    if (v18 || (sub_8FB54() & 1) != 0)
    {

      sub_5F588(v12, a4);
      v19 = 0;
      return sub_33E8(a4, v19, 1, v9);
    }

    result = sub_5F52C(v12);
  }

  __break(1u);
  return result;
}

uint64_t sub_5F52C(uint64_t a1)
{
  v2 = type metadata accessor for Shelf();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5F588(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Shelf();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_5F5EC(uint64_t a1)
{
  v2 = sub_332C(&qword_C6170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5F654(uint64_t a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      __chkstk_darwin(a1);
      sub_5F80C();
      v5 = sub_5F820(v3, v4);

      *v2 = v5;
    }

    else
    {
      __chkstk_darwin(a1);
      sub_5F80C();
      v12 = sub_5F820(v10, v11);

      v2[1] = v12;
    }
  }

  else
  {
    __chkstk_darwin(a1);
    sub_5F80C();
    v9 = sub_5F820(v7, v8);

    v2[2] = v9;
  }

  return result;
}

uint64_t sub_5F768@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_8FB54() & 1) == 0)
  {
    v3 = a1;
  }

  return sub_59D94(v3, a3);
}

uint64_t sub_5F820(uint64_t a1, uint64_t a2)
{

  return sub_5F074(v2, a2, v3);
}

uint64_t sub_5F850(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_8F034();
    v9 = a1 + *(a3 + 36);

    return sub_33C0(v9, a2, v8);
  }
}

void *sub_5F8EC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_8F034();
    v8 = v5 + *(a4 + 36);

    return sub_33E8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ShelfPage()
{
  result = qword_C61D0;
  if (!qword_C61D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_5F9B8()
{
  sub_5FA58();
  if (v0 <= 0x3F)
  {
    sub_8F034();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_5FA58()
{
  if (!qword_C61E0)
  {
    type metadata accessor for Shelf();
    v0 = sub_8F724();
    if (!v1)
    {
      atomic_store(v0, &qword_C61E0);
    }
  }
}

uint64_t sub_5FAB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_8F034();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void *sub_5FB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = sub_332C(&qword_C6220);
  __chkstk_darwin(v7 - 8);
  v74 = v68 - v8;
  v84 = sub_8EFE4();
  sub_42F8();
  v10 = v9;
  v12 = __chkstk_darwin(v11);
  v72 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v76 = v68 - v14;
  v77 = sub_8F034();
  sub_42F8();
  v75 = v15;
  __chkstk_darwin(v16);
  v71 = v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ShelfPage();
  v19 = a2;
  v81[2] = a2;
  sub_BAFC(0x6C65685379646F62, 0xEB00000000736576, v18, sub_602E4, v81, v20, v21, v22);
  v80 = v10;
  if (v3)
  {

    v23 = &_swiftEmptyArrayStorage;
  }

  v79 = v23;
  *a3 = v23;
  __chkstk_darwin(v23);
  sub_60338();
  sub_60314(0x746F6F66u, v24, v25, sub_60310, v26, v27, v28, v29);
  v78 = v30;
  *(a3 + 1) = v30;
  __chkstk_darwin(v30);
  sub_60338();
  sub_60314(0x64616568u, v31, v32, sub_60310, v33, v34, v35, v36);
  v38 = v37;
  *(a3 + 2) = v37;
  v39 = sub_473C0();
  v68[1] = v38;
  v73 = 0;
  *(a3 + 3) = v39;
  *(a3 + 4) = v40;
  v70 = a3;
  v41 = v76;
  sub_8EFF4();
  v42 = sub_8EFB4();
  v43 = v84;
  v69 = a2;
  if (v42)
  {
    goto LABEL_6;
  }

  v44 = v74;
  sub_780C(v41, v19, v74);
  v45 = v77;
  if (sub_33C0(v44, 1, v77) == 1)
  {
    sub_6678(v44, &qword_C6220);
    v43 = v84;
LABEL_6:
    v46 = sub_8F504();
    sub_923C();
    v47 = sub_4264();
    *v48 = 0x7274654D65676170;
    v48[1] = 0xEB00000000736369;
    v48[2] = v18;
    (*(*(v46 - 8) + 104))(v48, enum case for JSONError.missingProperty(_:), v46);
    v73 = v47;
    swift_willThrow();
    v49 = *(v80 + 8);
    v49(a1, v43);
    v49(v41, v43);
    sub_8F004();
    sub_887C();
    (*(v50 + 8))(v69);

    v51 = 0;
    v52 = v70;
    v53 = v77;
    goto LABEL_7;
  }

  v68[0] = *(v80 + 8);
  v80 += 8;
  (v68[0])(v41, v84);
  v55 = *(v75 + 32);
  v56 = v71;
  v55(v71, v44, v45);
  v55(&v70[*(v18 + 36)], v56, v45);
  v57 = v72;
  sub_8EFF4();
  if ((sub_8EFB4() & 1) == 0)
  {
    v58 = v68[0];
    v59 = v69;
    sub_76E8();
    if (v82[2])
    {
      v60 = v84;
      v58(a1, v84);
      v58(v57, v60);
      memcpy(v83, v82, sizeof(v83));
      sub_8F004();
      sub_887C();
      (*(v61 + 8))(v59);
      return memcpy(v70 + 40, v83, 0x325uLL);
    }

    sub_6678(v82, &qword_C6228);
  }

  v62 = sub_8F504();
  sub_923C();
  v63 = sub_4264();
  strcpy(v64, "presentation");
  v64[13] = 0;
  *(v64 + 7) = -5120;
  *(v64 + 2) = v18;
  (*(*(v62 - 8) + 104))(v64, enum case for JSONError.missingProperty(_:), v62);
  v73 = v63;
  swift_willThrow();
  v65 = v84;
  v66 = v68[0];
  (v68[0])(a1, v84);
  v66(v57, v65);
  sub_8F004();
  sub_887C();
  (*(v67 + 8))(v69);

  v51 = 1;
  v53 = v77;
  v52 = v70;
LABEL_7:

  if (v51)
  {
    return (*(v75 + 8))(&v52[*(v18 + 36)], v53);
  }

  return result;
}

uint64_t sub_602E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_AB08(a1, *(v2 + 16));
  *a2 = result;
  return result;
}

void sub_60314(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a1 | 0x6853726500000000;

  sub_BAFC(v11, v9, v8, a4, a5, a6, a7, a8);
}

id sub_6034C()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ShelfPageBodyCollectionView();
  v1 = objc_msgSendSuper2(&v3, "init");
  [v1 setClipsToBounds:0];
  return v1;
}

id sub_603C4(void *a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ShelfPageBodyCollectionView();
  v3 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    [v5 setClipsToBounds:0];
  }

  return v4;
}

id sub_60464(void *a1, double a2, double a3, double a4, double a5)
{
  v13.receiver = v5;
  v13.super_class = type metadata accessor for ShelfPageBodyCollectionView();
  v11 = objc_msgSendSuper2(&v13, "initWithFrame:collectionViewLayout:", a1, a2, a3, a4, a5);
  [v11 setClipsToBounds:0];

  return v11;
}

id sub_60554()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShelfPageBodyCollectionView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_605AC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = &_swiftEmptySetSingleton;
  return v2;
}

uint64_t sub_605C4(uint64_t a1, Class isa, void *a3)
{
  v6 = sub_332C(&unk_C67D0);
  sub_42F8();
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  sub_332C(&qword_C6340);
  sub_8F064();
  sub_332C(&qword_C67E0);
  if (!swift_dynamicCast())
  {
    memset(__src, 0, 88);
    sub_60F68(__src);
    sub_618D0();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
    return isa;
  }

  v32 = a3;
  memcpy(__dst, __src, sizeof(__dst));
  sub_60E8C(__dst);
  v33 = v3;
  v14 = *(v3 + 16);
  v15 = sub_8F5C4();

  isa = sub_8E144().super.isa;
  v16 = [v14 dequeueReusableCellWithReuseIdentifier:v15 forIndexPath:isa];

  swift_getObjectType();
  v17 = sub_61924(v16);
  if (!v17)
  {

    sub_618D0();
    swift_allocError();
    *v23 = 1;
    swift_willThrow();
    sub_5303C(__dst);
    return isa;
  }

  isa = v17;
  v37 = v18;
  v19 = v16;
  sub_8E474();
  sub_8F9A4();
  sub_17A94(__src);
  if (swift_dynamicCast())
  {
    v20 = aBlock[6];
    v21 = aBlock[7];
  }

  else
  {
    v21 = 0x80000000000A01D0;
    v20 = 0xD000000000000013;
  }

  v24 = v32;
  sub_6EFF8(v20, v21, isa);

  v32 = objc_opt_self();
  sub_52FE0(__dst, __src);
  (*(v8 + 16))(v13, v24, v6);
  v25 = (*(v8 + 80) + 120) & ~*(v8 + 80);
  v26 = swift_allocObject();
  v27 = v37;
  *(v26 + 2) = isa;
  *(v26 + 3) = v27;
  memcpy(v26 + 32, __src, 0x58uLL);
  (*(v8 + 32))(&v26[v25], v13, v6);
  *&v26[(v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8] = v33;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_61A58;
  *(v28 + 24) = v26;
  aBlock[4] = sub_61B08;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_67E0C;
  aBlock[3] = &unk_BA6B8;
  v29 = _Block_copy(aBlock);
  v30 = v19;

  [v32 performWithoutAnimation:v29];
  _Block_release(v29);
  sub_5303C(__dst);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if ((v25 & 1) == 0)
  {
    return isa;
  }

  __break(1u);
  return result;
}

id sub_60A98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_332C(&qword_C6340);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17[-v12 - 8];
  ObjectType = swift_getObjectType();
  [a1 setNeedsLayout];
  sub_13D04(a3 + 16, v17);
  sub_8F074();
  (*(a2 + 16))(v13, a4, *(a5 + 24), ObjectType, a2);
  (*(v11 + 8))(v13, v10);
  return [a1 layoutIfNeeded];
}

uint64_t sub_60BF4()
{
  v1 = v0;
  sub_332C(&qword_C6340);
  sub_8F064();
  sub_332C(&qword_C67E0);
  if (swift_dynamicCast())
  {
    memcpy(__dst, __src, sizeof(__dst));
    v2 = sub_60E8C(__dst);
    v4 = v3;
    swift_beginAccess();
    v5 = *(v0 + 32);

    v6 = sub_60DA0(v2, v4, v5);

    if (v6)
    {
      sub_5303C(__dst);
    }

    else
    {
      swift_beginAccess();

      sub_61034(&v11, v2, v4);
      swift_endAccess();

      v8 = *(v1 + 16);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v10 = sub_8F5C4();

      [v8 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v10];

      return sub_5303C(__dst);
    }
  }

  else
  {
    memset(__src, 0, 88);
    return sub_60F68(__src);
  }
}

BOOL sub_60DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_8FC04();
  sub_8F644();
  v6 = sub_8FC24();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_8FB54();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

uint64_t sub_60E8C(uint64_t a1)
{
  v3 = *(a1 + 56);

  v4._countAndFlagsBits = 46;
  v4._object = 0xE100000000000000;
  sub_8F654(v4);
  sub_8F654(*(a1 + 72));
  return v3;
}

uint64_t sub_60EE0()
{

  return v0;
}

uint64_t sub_60F10()
{
  sub_60EE0();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_60F68(uint64_t a1)
{
  v2 = sub_332C(&qword_C59E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_60FD0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_923B0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL sub_61034(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  sub_8FC04();
  sub_8F644();
  v8 = sub_8FC24();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_8FB54() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_613DC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_61180()
{
  v1 = v0;
  v2 = *v0;
  sub_332C(&qword_C6348);
  result = sub_8F9D4();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      sub_60FD0(0, (v27 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = (*(v2 + 48) + 16 * (v12 | (v5 << 6)));
    v16 = *v15;
    v17 = v15[1];
    sub_8FC04();
    sub_8F644();
    result = sub_8FC24();
    v18 = -1 << *(v4 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = (*(v4 + 48) + 16 * v21);
    *v26 = v16;
    v26[1] = v17;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v11 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

Swift::Int sub_613DC(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_61180();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_6169C();
LABEL_10:
      v15 = *v4;
      sub_8FC04();
      sub_8F644();
      result = sub_8FC24();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_8FB54() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_61544();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_8FB74();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_61544()
{
  v1 = v0;
  sub_332C(&qword_C6348);
  v2 = *v0;
  v3 = sub_8F9C4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_6169C()
{
  v1 = v0;
  v2 = *v0;
  sub_332C(&qword_C6348);
  result = sub_8F9D4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = (*(v2 + 48) + 16 * (v11 | (v5 << 6)));
        v15 = *v14;
        v16 = v14[1];
        sub_8FC04();

        sub_8F644();
        result = sub_8FC24();
        v17 = -1 << *(v4 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = (*(v4 + 48) + 16 * v20);
        *v25 = v15;
        v25[1] = v16;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v10 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_618D0()
{
  result = qword_C6350;
  if (!qword_C6350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6350);
  }

  return result;
}

uint64_t sub_61924(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_61968()
{
  v1 = sub_332C(&unk_C67D0);
  sub_42F8();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 120) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_4F30(v0 + 48);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v7 + 8, v4 | 7);
}

id sub_61A58()
{
  v1 = *(sub_332C(&unk_C67D0) - 8);
  v2 = (*(v1 + 80) + 120) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  return sub_60A98(v4, v5, v0 + 32, v0 + v2, v3);
}

uint64_t sub_61B10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_BYTE *storeEnumTagSinglePayload for ShelfPageCollectionCellProvider.DequeueError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x61BF4);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_61C30()
{
  result = qword_C6358;
  if (!qword_C6358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6358);
  }

  return result;
}

uint64_t sub_61C84(uint64_t a1, uint64_t a2)
{
  v4 = sub_332C(&unk_C6410);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-v6 - 8];
  sub_332C(&qword_C6790);
  swift_allocObject();
  v8 = sub_8EEF4();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a1;
  v9[4] = a2;
  sub_2F934(&qword_C6420, &qword_C6428);

  sub_8F084();
  sub_8F094();

  sub_4F30(v12);
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_61E80(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  a3(v4);
  sub_8EEE4();
  return sub_4F30(v4);
}

uint64_t sub_61ECC()
{
  v0 = sub_8E324();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_8E314(), result = (*(v1 + 8))(v3, v0), v6 = 5.0, (v5 & 1) == 0))
  {
    v6 = 0.0;
  }

  qword_C6360 = *&v6;
  return result;
}

uint64_t sub_61FD0()
{
  v0 = sub_8E324();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (result && ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_8E314(), result = (*(v1 + 8))(v3, v0), (v5 & 1) != 0))
  {
    v6 = 38.0;
  }

  else
  {
    v6 = 10.0;
  }

  qword_C6368 = *&v6;
  return result;
}

void sub_620DC()
{
  v1 = *&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_contentView];
  if (v1)
  {
    v2 = v1;
    [v2 setAccessibilityElementsHidden:1];
    v3 = [v0 view];
    [v3 addSubview:v2];
  }

  v4 = [v0 view];
  [v4 setNeedsLayout];
}

void sub_6219C(void *a1)
{
  v3 = OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_contentView;
  v4 = *(v1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_contentView);
  if (v4)
  {
    [v4 removeFromSuperview];
    v3 = OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_contentView;
    v5 = *(v1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_contentView);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v3) = a1;
  v6 = a1;

  sub_620DC();
}

uint64_t sub_62220()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  sub_8F5F4();
  sub_2ED9C();
  v2 = sub_8F934();

  return v2 & 1;
}

char *sub_622F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_332C(&qword_C6400);
  sub_41B68();
  __chkstk_darwin(v6);
  v65 = (&v64 - v7);
  v8 = OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_artworkFetchSubject;
  sub_332C(&qword_C6408);
  swift_allocObject();
  *&v2[v8] = sub_8EB84();
  *&v2[OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_artworkFetchSubscription] = 0;
  v9 = &v2[OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_artworkFetcher];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v2[OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_contentView] = 0;
  v2[OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_adjustmentsScrollViewInsets] = 1;
  v10 = OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_footerBackgroundView;
  *&v3[v10] = [objc_allocWithZone(AMSUICommonVisualEffectView) init];
  *&v3[OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_objectGraph] = a2;
  *&v3[OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_presenter] = a1;
  v67 = a2;

  v68 = sub_61C84(sub_62958, 0);

  v66 = sub_61C84(sub_629B0, 0);

  v11 = *(a1 + 32);
  *&v3[OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_backgroundArtwork] = v11[2];
  v12 = v11[3];
  v64 = v3;
  *&v3[OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_backgroundColor] = v12;
  v13 = v11[4];
  swift_beginAccess();
  sub_13D04((v11 + 7), v75);
  v15 = v76;
  v14 = v77;
  sub_CD08(v75, v76);
  v16 = *(v14 + 8);

  v17 = v12;
  v18 = v13;
  v19 = a1;

  v16(v74, v15, v14);
  sub_CD08(v74, v74[3]);
  v20 = sub_655F4();
  v21(v20);
  v22 = OBJC_IVAR____TtC19CoreDynamicUIPlugin18ShelfPagePresenter_destination;
  v23 = a1 + *(type metadata accessor for ShelfPageDestination() + 24) + v22;
  v24 = v65;
  sub_6524C(v23, v65);
  v25 = type metadata accessor for ShelfPage();
  if (sub_33C0(v24, 1, v25) == 1)
  {
    sub_13E24(v24, &qword_C6400);
    v26 = 0;
    v27 = 1;
  }

  else
  {
    sub_5EEB8(v24 + 40, v69);
    sub_65340(v24);
    v26 = v70;
    v27 = v71;
    sub_5EEF0(v69);
  }

  v65 = type metadata accessor for ShelfPageCollectionViewController();
  v28 = objc_allocWithZone(v65);
  v29 = v67;

  v30 = v68;

  sub_67E34(v18, 1, v29, v73, v30, 2, v26 | (v27 << 8));
  v32 = v31;
  sub_4F30(v74);
  sub_4F30(v75);
  v33 = v64;
  *&v64[OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_bodyCollectionViewController] = v32;
  v34 = *(v19 + 32);
  v35 = *(v34 + 40);
  swift_beginAccess();
  sub_13D04(v34 + 56, v69);
  v36 = v69[4];
  sub_CD08(v69, v69[3]);
  v37 = *(v36 + 8);

  v38 = sub_655F4();
  v37(v38);
  sub_CD08(v75, v76);
  v39 = sub_655F4();
  v40(v39);
  LOBYTE(v34) = *(*(v19 + 32) + 120);
  v41 = objc_allocWithZone(v65);
  v42 = v66;

  sub_67E34(v35, 2, v29, v74, v42, v34, 256);
  v44 = v43;
  sub_4F30(v75);
  sub_4F30(v69);
  *&v33[OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_footerCollectionViewController] = v44;
  *&v33[OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_pocketConfigurations] = *(*(v19 + 32) + 112);
  v45 = type metadata accessor for ShelfPageCollectionLayoutViewController();
  v72.receiver = v33;
  v72.super_class = v45;

  v46 = objc_msgSendSuper2(&v72, "initWithNibName:bundle:", 0, 0);

  v47 = OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_footerCollectionViewController;
  v48 = *&v46[OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_footerCollectionViewController];
  sub_13EC8();
  v49 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v50 = &v48[OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController__viewDidLayoutSubviews];
  v51 = *&v48[OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController__viewDidLayoutSubviews];
  *v50 = sub_652F0;
  v50[1] = v49;
  v52 = v46;
  v53 = v48;

  sub_13CA0(v51);

  v54 = *&v52[OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_bodyCollectionViewController];
  sub_13EC8();
  v55 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_13EC8();
  v56 = swift_allocObject();
  v57 = *&v46[v47];
  v58 = v54;
  v59 = v57;

  swift_unknownObjectWeakInit();
  v60 = swift_allocObject();
  *(v60 + 16) = v55;
  *(v60 + 24) = v56;
  v61 = &v58[OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_visibleBoundsCalculator];
  *v61 = sub_65338;
  v61[1] = v60;

  v62 = sub_655F4();
  sub_13CA0(v62);

  return v52;
}

uint64_t sub_62958(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  sub_CD08(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_629B0(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  sub_CD08(a1, v1);
  return (*(v2 + 16))(v1, v2);
}

void sub_62A08()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_64C34(0);
  }
}

double sub_62A60()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = 0.0;
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong view];

    if (v3)
    {
      swift_beginAccess();
      v4 = swift_unknownObjectWeakLoadStrong();
      if (v4 && (v5 = v4, v6 = [v4 view], v5, v6))
      {
        [v3 bounds];
        [v6 frame];
        CGRectGetHeight(v9);
        sub_8F874();
        v1 = v7;
      }

      else
      {
      }
    }
  }

  return v1;
}

void sub_62BC0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_artworkFetchSubject;
  sub_332C(&qword_C6408);
  swift_allocObject();
  *(v0 + v2) = sub_8EB84();
  *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_artworkFetchSubscription) = 0;
  v3 = (v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_artworkFetcher);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_contentView) = 0;
  *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_adjustmentsScrollViewInsets) = 1;
  v4 = OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_footerBackgroundView;
  *(v1 + v4) = [objc_allocWithZone(AMSUICommonVisualEffectView) init];
  sub_8FAA4();
  __break(1u);
}

void sub_62CD4()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ShelfPageCollectionLayoutViewController();
  objc_msgSendSuper2(&v3, "loadView");
  v1 = [v0 view];
  [v1 setBackgroundColor:*&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_backgroundColor]];

  v2 = [v0 view];
  [v2 setClipsToBounds:1];
}

void sub_62DC4()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for ShelfPageCollectionLayoutViewController();
  objc_msgSendSuper2(&v1, "viewDidLoad");
  sub_633A0();
}

void sub_62EA0(char a1, SEL *a2)
{
  v5.receiver = v2;
  v5.super_class = type metadata accessor for ShelfPageCollectionLayoutViewController();
  objc_msgSendSuper2(&v5, *a2, a1 & 1);
  sub_64C34(0);
}

uint64_t sub_62F50()
{
  v3 = v0;
  v4 = sub_8E324();
  sub_42F8();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_655CC();
  v50.receiver = v0;
  v50.super_class = type metadata accessor for ShelfPageCollectionLayoutViewController();
  objc_msgSendSuper2(&v50, "viewDidLayoutSubviews");
  if (_UISolariumEnabled() && (v8 = sub_65648(), v9(v8), v10 = sub_8E314(), (*(v6 + 8))(v0, v4), (v10 & 1) != 0))
  {
    v11 = *&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_footerCollectionViewController];
    v12 = [v11 view];
    v49[3] = sub_8E8D4();
    v49[4] = &protocol witness table for _GlassGroup;
    sub_4ED0(v49);
    sub_8E8C4();
    sub_8F8A4();
  }

  else
  {
    v13 = sub_65630();
    sub_48838();

    [sub_65630() bounds];
    sub_656BC();
    v51.origin.x = sub_65690();
    v51.size.width = v1;
    v51.size.height = v2;
    Height = CGRectGetHeight(v51);
    v11 = *&v3[OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_footerCollectionViewController];
    v15 = [v11 view];
    [v15 frame];
    v17 = v16;

    v18 = Height - v17 + 10.0;
    v19 = *&v3[OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_footerBackgroundView];
    v20 = sub_65630();
    [v20 bounds];
    sub_6567C();

    v52.origin.x = sub_65668();
    v21 = CGRectGetHeight(v52) - v18;
    v22 = sub_65630();
    [v22 bounds];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v53.origin.x = v24;
    v53.origin.y = v26;
    v53.size.width = v28;
    v53.size.height = v30;
    [v19 setFrame:{0.0, v21, CGRectGetWidth(v53), v18}];
  }

  v31 = *&v3[OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_contentView];
  if (v31)
  {
    v32 = v31;
    [sub_65630() frame];
    sub_656BC();
    v33 = sub_65690();
    [v34 v35];

    v36 = sub_65630();
    [v36 frame];

    v37 = sub_65690();
    sub_64134(v38, v37, v39);
  }

  v40 = *&v3[OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_presenter];
  if (*(v40 + 16) != 2)
  {
    v41 = *&v3[OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_bodyCollectionViewController];
    v42 = OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_collectionView;
    [*(v41 + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_collectionView) contentSize];
    v44 = v43;
    v45 = [v11 view];
    [v45 frame];
    sub_6567C();

    v54.origin.x = sub_65668();
    MinY = CGRectGetMinY(v54);
    if ((sub_62220() & 1) != 0 && MinY < v44 || (sub_62220() & 1) != 0 && ([*(v41 + v42) contentSize], v47 == 0.0))
    {
      if (*(v40 + 16))
      {
        goto LABEL_15;
      }
    }

    else if (*(v40 + 16) != 1)
    {
LABEL_15:
      sub_75AB8();
    }
  }

  sub_64C34(0);
  return sub_64770();
}

void sub_633A0()
{
  v1 = sub_8E324();
  sub_42F8();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_8814();
  v7 = v6 - v5;
  if (*&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_backgroundArtwork])
  {

    v8 = [v0 view];
    [v8 frame];

    sub_65690();
    sub_63C20(v9, v10);
  }

  sub_63550();
  if (!_UISolariumEnabled() || (v11 = sub_655E4(), v12(v11), v13 = sub_8E314(), (*(v3 + 8))(v7, v1), (v13 & 1) == 0))
  {
    sub_636AC();
  }

  sub_63710();
  sub_63990();
}

void sub_63550()
{
  v1 = sub_8E324();
  sub_42F8();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_655CC();
  v5 = *&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_bodyCollectionViewController];
  swift_unknownObjectWeakAssign();
  [v0 setChildViewController:v5];
  v6 = [v5 view];
  if (_UISolariumEnabled())
  {
    v7 = sub_65648();
    v8(v7);
    v9 = sub_8E314();
    (*(v3 + 8))(v0, v1);
    v10 = v9 ^ 1;
  }

  else
  {
    v10 = 1;
  }

  sub_892C0(v10 & 1);
}

void sub_636AC()
{
  v1 = [v0 view];
  [v1 addSubview:*&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_footerBackgroundView]];
}

void sub_63710()
{
  v1 = sub_8E324();
  sub_42F8();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_655CC();
  v5 = *&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_footerCollectionViewController];
  [v0 setChildViewController:v5];
  if (_UISolariumEnabled() && (v6 = sub_65648(), v7(v6), v8 = sub_8E314(), (*(v3 + 8))(v0, v1), (v8 & 1) != 0))
  {
    v9 = [objc_opt_self() currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if (v10 || ![objc_opt_self() isTouchIDSupported])
    {
      if (qword_C2CF8 != -1)
      {
        sub_655AC();
      }
    }

    else if (qword_C2CF0 != -1)
    {
      sub_6558C();
    }

    v13 = [v5 view];
    sub_65600();
    sub_895CC();
  }

  else
  {
    v9 = [v0 view];
    v11 = sub_48838();

    if (v11)
    {
      if (qword_C2CF8 != -1)
      {
        sub_655AC();
      }
    }

    else if (qword_C2CF0 != -1)
    {
      sub_6558C();
    }

    v12 = [v5 view];
    sub_65600();
    sub_897C4();
  }
}

void sub_63990()
{
  v1 = *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_pocketConfigurations);
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = 0;
      v4 = (v1 + 33);
      do
      {
        v5 = *(v4 - 1);
        v7 = *v4;
        v4 += 2;
        v6 = v7;
        if (v5)
        {
          v8 = v3 | 1;
        }

        else
        {
          v8 = v3 | 4;
        }

        if ((v6 & 1) == 0)
        {
          v8 = v3;
        }

        if (v6 != 2)
        {
          v3 = v8;
        }

        --v2;
      }

      while (v2);
    }

    else
    {
      v3 = 0;
    }

    [*(*(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_bodyCollectionViewController) + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_collectionView) _setHiddenPocketEdges:v3];
  }

  sub_63A34();
}

void sub_63A34()
{
  v1 = *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_bodyCollectionViewController);
  v2 = OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_collectionView;
  if (([*(v1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_collectionView) _hiddenPocketEdges] & 4) != 0)
  {
    return;
  }

  v3 = *(*(*(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_presenter) + 32) + 120);
  if (v3 == 2)
  {
    goto LABEL_3;
  }

  if (v3)
  {

LABEL_8:
    [*(v1 + v2) _setPocketStyle:1 forEdge:4];
    v5 = [objc_allocWithZone(_UIScrollPocketContainerInteraction) initWithScrollView:*(v1 + v2) edge:4];
    v6 = *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_footerCollectionViewController);
    v7 = [v6 view];
    [v7 addInteraction:v5];

    v8 = [objc_allocWithZone(_UIScrollPocketInteraction) initWithStyle:0];
    [*&v6[OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_collectionView] addInteraction:?];

    goto LABEL_9;
  }

  v4 = sub_8FB54();

  if (v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  v8 = [objc_allocWithZone(_UIScrollPocketContainerInteraction) initWithScrollView:*(v1 + v2) edge:4];
  [*(*(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_footerCollectionViewController) + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_collectionView) addInteraction:?];
LABEL_9:
}

void sub_63C20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(sub_8E4B4());
  v7 = sub_8E4A4();
  v15 = v7;
  sub_6219C(v7);
  sub_13EC8();
  v8 = swift_allocObject();
  swift_weakInit();
  sub_13EC8();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 2) = v8;
  *(v10 + 3) = v9;
  *(v10 + 4) = v3;
  *(v10 + 5) = a1;
  *(v10 + 6) = a2;
  v11 = &v3[OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_artworkFetcher];
  *v11 = sub_65574;
  v11[1] = v10;

  v3;

  v12 = sub_655F4();
  sub_13CA0(v12);

  v13 = *v11;
  if (*v11)
  {

    (v13)(v14);
    sub_13CA0(v13);
  }

  sub_6425C();
}

void sub_63DC8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      if ((*(&stru_68.offset + (swift_isaMask & *v10)))() == CGSizeZero.width && v12 == CGSizeZero.height)
      {

        return;
      }

      if (qword_C2CE0 != -1)
      {
        swift_once();
      }

      v14 = sub_8E304();
      sub_4D6C(v14, qword_D0378);
      sub_332C(&unk_C3920);
      sub_8E2A4();
      *(swift_allocObject() + 16) = xmmword_92300;
      v20 = type metadata accessor for ShelfPageCollectionLayoutViewController();
      v19[0] = a3;
      v15 = a3;
      v16 = AMSLogKey();
      if (v16)
      {
        v17 = v16;
        sub_8F5F4();
      }

      sub_8E284();

      sub_4F30(v19);
      sub_8E244();
      v20 = sub_8E644();
      v19[0] = a4;

      sub_8E264();
      sub_13E24(v19, &unk_C3EB0);
      sub_8E2E4();

      if (a5)
      {
        v18 = *(&stru_108.size + (swift_isaMask & *v11));

        v18(a4, a5, v9);
      }

      else
      {
        (*&stru_108.segname[(swift_isaMask & *v11) + 16])(a4, v9);
      }
    }
  }
}

void sub_64134(void *a1, double a2, double a3)
{
  if (((*(&stru_68.reserved2 + (swift_isaMask & *a1)))() & 1) == 0 || ((sub_65654(), (*(v5 + 152))() == a2) ? (v7 = v6 == a3) : (v7 = 0), !v7))
  {
    sub_65654();
    (*(v8 + 160))(a2, a3);
    sub_332C(&qword_C6408);
    sub_2F934(&qword_C6470, &qword_C6408);
    sub_8EB94();
  }
}

uint64_t sub_6425C()
{
  sub_332C(&qword_C6430);
  sub_41B68();
  __chkstk_darwin(v1);
  v3 = v26 - v2;
  sub_8F904();
  sub_42F8();
  v30 = v5;
  v31 = v4;
  __chkstk_darwin(v4);
  sub_8814();
  v8 = v7 - v6;
  sub_332C(&qword_C6438);
  sub_42F8();
  v33 = v9;
  v34 = v10;
  sub_41B68();
  __chkstk_darwin(v11);
  v13 = v26 - v12;
  sub_332C(&qword_C6440);
  sub_42F8();
  v35 = v14;
  v36 = v15;
  sub_41B68();
  __chkstk_darwin(v16);
  v29 = v26 - v17;
  v38 = *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_artworkFetchSubject);

  sub_8F8F4();
  v28 = objc_opt_self();
  v18 = [v28 mainRunLoop];
  v37 = v18;
  v27 = sub_8F8E4();
  sub_33E8(v3, 1, 1, v27);
  sub_332C(&qword_C6408);
  v26[1] = sub_65444();
  sub_2F934(&qword_C6450, &qword_C6408);
  sub_65488();
  sub_8EBB4();
  sub_13E24(v3, &qword_C6430);

  (*(v30 + 8))(v8, v31);

  v19 = [v28 mainRunLoop];
  v38 = v19;
  sub_33E8(v3, 1, 1, v27);
  sub_2F934(&qword_C6460, &qword_C6438);
  v20 = v29;
  v21 = v33;
  sub_8EBA4();
  sub_13E24(v3, &qword_C6430);

  (*(v34 + 8))(v13, v21);
  sub_13EC8();
  swift_allocObject();
  v22 = v32;
  swift_unknownObjectWeakInit();
  sub_2F934(&qword_C6468, &qword_C6440);
  v23 = v35;
  v24 = sub_8EBC4();

  (*(v36 + 8))(v20, v23);
  *(v22 + OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_artworkFetchSubscription) = v24;
}

void sub_646E4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_artworkFetcher);
    sub_13C90(v2);

    if (v2)
    {
      v2();
      sub_13CA0(v2);
    }
  }
}

uint64_t sub_64770()
{
  v1 = v0;
  v2 = sub_8E324();
  sub_42F8();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_8814();
  v8 = v7 - v6;
  if (_UISolariumEnabled() && (v9 = sub_655E4(), v10(v9), sub_8E314(), v11 = sub_65618(), v12(v11), (v8 & 1) != 0))
  {
    v13 = [objc_opt_self() currentDevice];
    v14 = [v13 userInterfaceIdiom];

    if (v14 || ![objc_opt_self() isTouchIDSupported])
    {
      if (qword_C2CF8 != -1)
      {
        sub_655AC();
      }

      v15 = &qword_C6368;
    }

    else
    {
      if (qword_C2CF0 != -1)
      {
        sub_6558C();
      }

      v15 = &qword_C6360;
    }

    v19 = *v15;
    v22 = [*&v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_footerCollectionViewController] view];
    [v22 bounds];
    v21 = v23;
  }

  else
  {
    v16 = [v0 view];
    v17 = sub_48838();

    if (v17)
    {
      if (qword_C2CF8 != -1)
      {
        sub_655AC();
      }

      v18 = &qword_C6368;
    }

    else
    {
      if (qword_C2CF0 != -1)
      {
        sub_6558C();
      }

      v18 = &qword_C6360;
    }

    v19 = *v18;
    [*(*&v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_footerCollectionViewController] + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_collectionView) bounds];
    v21 = v20;
  }

  v24 = *&v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_bodyCollectionViewController];
  v25 = v19 + v21;
  v26 = OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_collectionView;
  [*(v24 + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_collectionView) verticalScrollIndicatorInsets];
  if (!_UISolariumEnabled() || (v27 = sub_655E4(), v28(v27), sub_8E314(), v29 = sub_65618(), v30(v29), (v8 & 1) == 0))
  {
    if ((v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_adjustmentsScrollViewInsets] & 1) == 0)
    {
      v31 = [v1 navigationController];
      if (v31)
      {
        v32 = v31;
        v33 = [v31 navigationBar];

        [v33 frame];
      }
    }
  }

  v34 = OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_adjustmentsScrollViewInsets;
  if (v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_adjustmentsScrollViewInsets])
  {
    v35 = 0;
  }

  else
  {
    v35 = 2;
  }

  [*(v24 + v26) setContentInsetAdjustmentBehavior:v35];
  sub_6569C(*(v24 + v26), "setVerticalScrollIndicatorInsets:");
  [*(v24 + v26) contentInset];
  if (!_UISolariumEnabled() || (v36 = sub_655E4(), v37(v36), v38 = sub_8E314(), (*(v4 + 8))(v8, v2), (v38 & 1) == 0))
  {
    if ((v1[v34] & 1) == 0)
    {
      v39 = [v1 navigationController];
      if (v39)
      {
        v40 = v39;
        v41 = [v39 navigationBar];

        [v41 frame];
      }
    }
  }

  sub_6569C(*(v24 + v26), "setContentInset:");
  v42 = v24 + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_impressionsCalculatorInsets;
  *v42 = 0;
  *(v42 + 8) = 0;
  *(v42 + 16) = v25;
  *(v42 + 24) = 0;
  return sub_686B4();
}

void sub_64C34(char a1)
{
  v3 = sub_8E324();
  sub_42F8();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_655CC();
  v7 = *(v1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_footerCollectionViewController);
  v8 = [*&v7[OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_collectionView] numberOfSections] == 0;
  [*(v1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_footerBackgroundView) setHidden:v8];
  v9 = [v7 view];
  [v9 setHidden:v8];

  if (!_UISolariumEnabled() || (v10 = sub_65648(), v11(v10), v12 = sub_8E314(), (*(v5 + 8))(v1, v3), (v12 & 1) == 0))
  {
    v13 = *(v1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_bodyCollectionViewController);
    v14 = OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_collectionView;
    [*(v13 + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_collectionView) contentOffset];
    v16 = v15;
    [*(v13 + v14) contentSize];
    v18 = v17;
    [*(v13 + v14) contentInset];
    v20 = v18 + v19;
    [*(v13 + v14) frame];
    v22 = v20 - v21;
    sub_13EC8();
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = v22 < v16;
    if (a1)
    {
      v25 = objc_opt_self();
      aBlock[4] = sub_65420;
      aBlock[5] = v24;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_3FD30;
      aBlock[3] = &unk_BA838;
      v26 = _Block_copy(aBlock);

      [v25 animateWithDuration:4 delay:v26 options:0 animations:0.3 completion:0.0];

      _Block_release(v26);
    }

    else
    {

      sub_64F44(v27, v22 < v16);
    }
  }
}

void sub_64F44(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_footerBackgroundView);

    if (a2)
    {
      v6 = 0;
    }

    else
    {
      v6 = [objc_opt_self() effectWithStyle:7];
    }

    [v5 setEffect:v6];
  }
}

id sub_6509C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShelfPageCollectionLayoutViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_6524C(uint64_t a1, uint64_t a2)
{
  v4 = sub_332C(&qword_C6400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_652BC()
{
  swift_unknownObjectWeakDestroy();
  sub_13EC8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_652F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_65340(uint64_t a1)
{
  v2 = type metadata accessor for ShelfPage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_6539C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_653E8()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_6542C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}