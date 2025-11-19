uint64_t sub_100019FA0(uint64_t a1, uint64_t a2)
{
  result = sub_1000C9730();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_100019FF4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000C9740();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_10001A04C@<X0>(void *a1@<X8>)
{
  result = sub_1000C9750();
  *a1 = v3;
  return result;
}

uint64_t sub_10001A074()
{
  sub_1000CAD00();
  v0 = sub_1000CAE40();

  return v0;
}

uint64_t sub_10001A0B0()
{
  sub_1000CAD00();
  sub_1000CAD90();
}

Swift::Int sub_10001A104()
{
  sub_1000CAD00();
  sub_1000CB5C0();
  sub_1000CAD90();
  v0 = sub_1000CB5F0();

  return v0;
}

void *sub_10001A184@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10001A1AC()
{
  v0 = sub_1000CAD00();
  v2 = v1;
  if (v0 == sub_1000CAD00() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1000CB530();
  }

  return v5 & 1;
}

uint64_t sub_10001A238@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000CAD00();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10001A264()
{
  sub_10001AE50(&qword_10011D8B0, type metadata accessor for URLResourceKey);
  sub_10001AE50(&qword_10011D8B8, type metadata accessor for URLResourceKey);

  return sub_1000CB3E0();
}

uint64_t sub_10001A320()
{
  sub_10001AE50(&qword_10011D8E8, type metadata accessor for AttributeName);
  sub_10001AE50(&qword_10011D8F0, type metadata accessor for AttributeName);

  return sub_1000CB3E0();
}

uint64_t sub_10001A3DC@<X0>(void *a1@<X8>)
{
  v2 = sub_1000CACD0();

  *a1 = v2;
  return result;
}

uint64_t sub_10001A424()
{
  sub_10001AE50(&qword_10011D8D8, type metadata accessor for TraitKey);
  sub_10001AE50(&qword_10011D8E0, type metadata accessor for TraitKey);

  return sub_1000CB3E0();
}

double sub_10001A4E0@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_10001A4EC()
{
  sub_10001AE50(&qword_10011D8C0, type metadata accessor for Weight);
  sub_10001AE50(&qword_10011D8C8, type metadata accessor for Weight);
  sub_10001B168();
  return sub_1000CB3E0();
}

uint64_t sub_10001A5B4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10001A5EC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_10001A650()
{
  result = qword_10011D7C8;
  if (!qword_10011D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011D7C8);
  }

  return result;
}

unint64_t sub_10001A6A4()
{
  result = qword_10011D7D0;
  if (!qword_10011D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011D7D0);
  }

  return result;
}

unint64_t sub_10001A6F8()
{
  result = qword_10011D7F0;
  if (!qword_10011D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011D7F0);
  }

  return result;
}

void sub_10001A754()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_1000CB5E0(*&v1);
}

uint64_t sub_10001A790(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:_:)(a1, *&v2);
}

uint64_t sub_10001A7BC()
{
  sub_100019558(&qword_10011D7F8);
  (__chkstk_darwin)();
  v28 = &v20 - v0;
  v29 = sub_1000C9140();
  v1 = *(v29 - 8);
  (__chkstk_darwin)();
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100019558(&qword_10011D800);
  v4 = (__chkstk_darwin)();
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v20 - v7;
  v9 = sub_100019558(&qword_10011D7C0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_1000C9370();
  v27 = v12;
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v21 = sub_100019558(&qword_10011D808);
  sub_1000C9350();
  v14 = *(v13 + 56);
  v25 = v13 + 56;
  v26 = v14;
  v14(v11, 1, 1, v12);
  v31 = 0;
  v15 = sub_1000C8E70();
  v16 = *(*(v15 - 8) + 56);
  v16(v8, 1, 1, v15);
  v16(v6, 1, 1, v15);
  v24 = enum case for InputConnectionBehavior.default(_:);
  v17 = *(v1 + 104);
  v22 = v1 + 104;
  v23 = v17;
  v17(v3);
  sub_10001991C();
  v21 = sub_1000C8EE0();
  sub_100019558(&qword_10011D810);
  sub_1000C9350();
  v26(v11, 1, 1, v27);
  v30 = 2;
  v18 = sub_1000CAF90();
  (*(*(v18 - 8) + 56))(v28, 1, 1, v18);
  v16(v8, 1, 1, v15);
  v23(v3, v24, v29);
  sub_1000C8F00();
  return v21;
}

unint64_t sub_10001AC20()
{
  result = qword_10011D818;
  if (!qword_10011D818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011D818);
  }

  return result;
}

uint64_t sub_10001AC74(uint64_t a1, uint64_t a2)
{
  v4 = sub_100019558(&qword_10011D820);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10001AD58(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_10001AE50(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10001B168()
{
  result = qword_10011D8D0;
  if (!qword_10011D8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011D8D0);
  }

  return result;
}

uint64_t sub_10001B1BC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000195A0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001B204()
{
  sub_1000195A0(&qword_10011D908);
  sub_1000195A0(&qword_10011D900);
  sub_1000195A0(&qword_10011D8F8);
  sub_10001B1BC(&unk_10011D930, &qword_10011D8F8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001B390(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100019558(&unk_10011E590);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10001B460(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100019558(&unk_10011E590);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for Banner()
{
  result = qword_10011DC38;
  if (!qword_10011DC38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001B55C()
{
  sub_10001B638();
  if (v0 <= 0x3F)
  {
    sub_10001B690(319, &qword_100121430);
    if (v1 <= 0x3F)
    {
      sub_10001B690(319, &unk_10011DC48);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10001B638()
{
  if (!qword_100122A70)
  {
    sub_1000C9480();
    v0 = sub_1000CB170();
    if (!v1)
    {
      atomic_store(v0, &qword_100122A70);
    }
  }
}

void sub_10001B690(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1000CB170();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

__n128 initializeBufferWithCopyOfBuffer for MediaIndicatorDisplayStyle(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10001B6FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10001B744(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10001B7B0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001B800(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10001B854(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_10001B86C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_10001B89C(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v80 = a3;
  v7 = sub_100019558(&unk_10011E590);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v79 - v12;
  __chkstk_darwin(v11);
  v15 = &v79 - v14;
  v16 = [a1 identifier];
  v17 = sub_1000CAD00();
  v19 = v18;

  *a4 = v17;
  a4[1] = v19;
  v20 = [a1 title];
  v21 = sub_1000CAD00();
  v23 = v22;

  a4[2] = v21;
  a4[3] = v23;
  v24 = [a1 body];
  v25 = sub_1000CAD00();
  v27 = v26;

  a4[4] = v25;
  a4[5] = v27;
  v79 = a2;
  sub_10001F8C4(a2, v13);
  v28 = sub_1000C9480();
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  if (v30(v13, 1, v28) == 1)
  {
    v31 = [a1 actionURL];
    if (v31)
    {
      v32 = v31;
      sub_1000C9440();

      v33 = 0;
    }

    else
    {
      v33 = 1;
    }

    (*(v29 + 56))(v10, v33, 1, v28);
    sub_10001E440(v10, v15);
    if (v30(v13, 1, v28) != 1)
    {
      sub_10001E3D8(v13);
    }
  }

  else
  {
    (*(v29 + 32))(v15, v13, v28);
    (*(v29 + 56))(v15, 0, 1, v28);
  }

  v34 = type metadata accessor for Banner();
  sub_10001E440(v15, a4 + v34[7]);
  v35 = [a1 actionButtonText];
  v36 = v80;
  if (v35)
  {
    v37 = v35;
    v38 = sub_1000CAD00();
    v40 = v39;
  }

  else
  {
    v38 = 0;
    v40 = 0;
  }

  v41 = (a4 + v34[8]);
  *v41 = v38;
  v41[1] = v40;
  v42 = [a1 imageMethod];
  if (v42 == 1)
  {
    *(a4 + v34[9]) = 0;
    goto LABEL_17;
  }

  if (v42 == 2)
  {
    if (v36)
    {
      *(a4 + v34[9]) = v36;
      v43 = v36;
      goto LABEL_17;
    }

    if (qword_10011CFD8 == -1)
    {
      goto LABEL_42;
    }

    goto LABEL_64;
  }

  while (1)
  {
    *(a4 + v34[9]) = 1;
LABEL_17:
    p_align = &stru_100118FE8.align;
    v45 = [a1 solidBackgroundColorPair];
    if (v45)
    {
      sub_10001F934(0, &qword_10011DD48);
      v46 = sub_1000CAED0();

      if (v46 >> 62)
      {
        v45 = sub_1000CB3A0();
      }

      else
      {
        v45 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      LODWORD(v45) = v45 > 1;
    }

    v47 = [a1 backgroundMethod];
    if (v47 == 2)
    {
      v64 = [a1 gradientBackgroundPair];
      sub_10001F934(0, &qword_10011DD38);
      v65 = sub_1000CAED0();

      if (v65 >> 62)
      {
        v66 = sub_1000CB3A0();
      }

      else
      {
        v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v66 > 1)
      {
        goto LABEL_48;
      }

LABEL_40:
      v67 = objc_opt_self();
      v61 = [v67 whiteColor];
      v62 = [v67 blackColor];

      v63 = 0;
LABEL_55:

      sub_10001E3D8(v79);
      v78 = a4 + v34[10];
      *v78 = v61;
      *(v78 + 1) = v62;
      v78[16] = v63;
      return;
    }

    if (v47 != 1 || !v45)
    {
      goto LABEL_40;
    }

    v48 = [a1 solidBackgroundColorPair];
    if (!v48)
    {
      sub_10001F934(0, &qword_10011F5F0);
      v72 = sub_1000CB160();
      sub_1000CB040();
      sub_1000C9BE0();
      goto LABEL_47;
    }

    v49 = v48;
    sub_10001F934(0, &qword_10011DD48);
    v50 = sub_1000CAED0();

    if ((v50 & 0xC000000000000001) != 0)
    {
      goto LABEL_62;
    }

    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    __break(1u);
LABEL_64:
    swift_once();
LABEL_42:
    v68 = sub_1000C9C20();
    sub_10001A5B4(v68, static Logger.todayWidgetBanner);
    v69 = sub_1000C9C00();
    v70 = sub_1000CB040();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v69, v70, "Image URL method indicated but no resolved image provided", v71, 2u);
    }
  }

  for (i = *(v50 + 32); ; i = sub_1000CB2A0())
  {
    v52 = i;

    v53 = [v52 hex];

    if (!v53)
    {
      sub_1000CAD00();
      v53 = sub_1000CACD0();
    }

    v54 = [a1 p_align[370]];
    if (v54)
    {
      break;
    }

    sub_10001F934(0, &qword_10011F5F0);
    v72 = sub_1000CB160();
    sub_1000CB040();
    sub_1000C9BE0();
    v36 = v80;
LABEL_47:

LABEL_48:
    v73 = [a1 gradientBackgroundPair];
    sub_10001F934(0, &qword_10011DD38);
    v74 = sub_1000CAED0();

    if ((v74 & 0xC000000000000001) != 0)
    {
      v75 = sub_1000CB2A0();
    }

    else
    {
      if (!*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_61;
      }

      v75 = *(v74 + 32);
    }

    v61 = v75;

    p_align = [a1 gradientBackgroundPair];
    v76 = sub_1000CAED0();

    if ((v76 & 0xC000000000000001) != 0)
    {
      v77 = sub_1000CB2A0();
      goto LABEL_54;
    }

    if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v77 = *(v76 + 40);
LABEL_54:
      v62 = v77;

      v63 = 1;
      goto LABEL_55;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

  v55 = v54;
  v56 = sub_1000CAED0();

  if ((v56 & 0xC000000000000001) != 0)
  {
    v57 = sub_1000CB2A0();
LABEL_34:
    v58 = v57;

    v59 = [v58 hex];

    if (!v59)
    {
      sub_1000CAD00();
      v59 = sub_1000CACD0();
    }

    v60 = objc_opt_self();
    v61 = [v60 colorWithHexString:v53];

    v62 = [v60 colorWithHexString:v59];
    v63 = 0;
    v36 = v80;
    goto LABEL_55;
  }

  if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v57 = *(v56 + 40);
    goto LABEL_34;
  }

  __break(1u);
}

uint64_t sub_10001C214()
{
  if (*v0)
  {
    return 0x664F7265626D756ELL;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_10001C25C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001000E19D0 == a2 || (sub_1000CB530() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x664F7265626D756ELL && a2 == 0xEC00000073706154)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1000CB530();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_10001C360(uint64_t a1)
{
  v2 = sub_10001F97C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001C39C(uint64_t a1)
{
  v2 = sub_10001F97C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001C3D8(void *a1)
{
  v3 = sub_100019558(&qword_10011DD70);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_10001E2E4(a1, a1[3]);
  sub_10001F97C();
  sub_1000CB630();
  v10 = 0;
  sub_1000CB4E0();
  if (!v1)
  {
    v9 = 1;
    sub_1000CB4E0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10001C560@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10001E870(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_10001C5A8()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6567616D69;
  if (v1 != 5)
  {
    v3 = 0x756F72676B636162;
  }

  v4 = 0x52556E6F69746361;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 2036625250;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10001C680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10001EA18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10001C6B4(uint64_t a1)
{
  v2 = sub_10001E328();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001C6F0(uint64_t a1)
{
  v2 = sub_10001E328();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10001C72C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_100019558(&unk_10011E590);
  __chkstk_darwin(v3);
  v5 = &v24 - v4;
  v6 = sub_100019558(&qword_10011DC90);
  v26 = *(v6 - 8);
  v27 = v6;
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  v9 = type metadata accessor for Banner();
  __chkstk_darwin(v9);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v29 = a1;
  sub_10001E2E4(a1, v12);
  sub_10001E328();
  v13 = v28;
  sub_1000CB610();
  if (v13)
  {
    sub_10001E37C(v29);
  }

  else
  {
    v14 = v5;
    v15 = v26;
    LOBYTE(v30) = 0;
    *v11 = sub_1000CB450();
    v11[1] = v16;
    v24 = v16;
    LOBYTE(v30) = 1;
    v11[2] = sub_1000CB450();
    v11[3] = v17;
    LOBYTE(v30) = 2;
    v18 = sub_1000CB450();
    v28 = 0;
    v11[4] = v18;
    v11[5] = v19;
    LOBYTE(v30) = 3;
    sub_10001E690(&qword_10011E6B0, &qword_10011DCA0);
    v21 = v27;
    v20 = v28;
    sub_1000CB480();
    if (v20)
    {
      (*(v15 + 8))(v8, v21);
      sub_10001E37C(v29);
    }

    else
    {
      sub_10001E440(v14, v11 + v9[7]);
      sub_100019558(&unk_100121BF0);
      v32 = 4;
      sub_10001E75C(&qword_100121350);
      sub_1000CB480();
      *(v11 + v9[8]) = v30;
      sub_100019558(&qword_10011DCA8);
      v32 = 5;
      sub_10001E4B0(&qword_10011DCB0, sub_10001E528);
      sub_1000CB480();
      *(v11 + v9[9]) = v30;
      v32 = 6;
      sub_10001E57C();
      sub_1000CB480();
      MEMORY[8](v8, v27);
      v22 = v31;
      v23 = v11 + v9[10];
      *v23 = v30;
      v23[16] = v22;
      sub_10001E5D0(v11, v25);
      sub_10001E37C(v29);
      sub_10001E634(v11);
    }
  }
}

uint64_t sub_10001CD00(void *a1)
{
  v3 = v1;
  v5 = sub_100019558(&qword_10011DCC8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_10001E2E4(a1, a1[3]);
  sub_10001E328();
  sub_1000CB630();
  LOBYTE(v13) = 0;
  sub_1000CB4B0();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1000CB4B0();
    LOBYTE(v13) = 2;
    sub_1000CB4B0();
    v9 = type metadata accessor for Banner();
    LOBYTE(v13) = 3;
    sub_100019558(&unk_10011E590);
    sub_10001E690(&qword_10011E6F0, &qword_100121390);
    sub_1000CB4F0();
    v13 = *(v3 + v9[8]);
    v15 = 4;
    sub_100019558(&unk_100121BF0);
    sub_10001E75C(&qword_1001213A0);
    sub_1000CB4F0();
    *&v13 = *(v3 + v9[9]);
    v15 = 5;
    sub_100019558(&qword_10011DCA8);
    sub_10001E4B0(&qword_10011DCD0, sub_10001E7C8);
    sub_1000CB4F0();
    v10 = (v3 + v9[10]);
    v11 = *(v10 + 16);
    v13 = *v10;
    v14 = v11;
    v15 = 6;
    sub_10001E81C();
    sub_1000CB4F0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10001D0D8()
{
  if (*v0)
  {
    return 0x6172576567616D69;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_10001D114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_1000CB530() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6172576567616D69 && a2 == 0xEC00000072657070)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000CB530();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10001D1F4(uint64_t a1)
{
  v2 = sub_10001EE74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001D230(uint64_t a1)
{
  v2 = sub_10001EE74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001D26C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6567616D69;
  }

  else
  {
    v3 = 0x536D75696D657270;
  }

  if (v2)
  {
    v4 = 0xEB000000006C6165;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6567616D69;
  }

  else
  {
    v5 = 0x536D75696D657270;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xEB000000006C6165;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000CB530();
  }

  return v8 & 1;
}

Swift::Int sub_10001D318()
{
  sub_1000CB5C0();
  sub_1000CAD90();

  return sub_1000CB5F0();
}

uint64_t sub_10001D3A0()
{
  sub_1000CAD90();
}

Swift::Int sub_10001D414()
{
  sub_1000CB5C0();
  sub_1000CAD90();

  return sub_1000CB5F0();
}

void sub_10001D4A4(uint64_t *a1@<X8>)
{
  v2 = 0x536D75696D657270;
  if (*v1)
  {
    v2 = 0x6567616D69;
  }

  v3 = 0xEB000000006C6165;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10001D598(void *a1, void *a2)
{
  v5 = sub_1000C95D0();
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100019558(&qword_10011DD08);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - v10;
  sub_10001E2E4(a1, a1[3]);
  sub_10001EE74();
  sub_1000CB630();
  if (a2)
  {
    LOBYTE(v22) = 1;
    v25 = 0;
    sub_10001EF70();
    sub_1000CB4F0();
    if (!v2)
    {
      v12 = a2;
      sub_1000C95C0();
      v13 = sub_1000C95B0();
      v15 = v14;
      (*(v20 + 8))(v7, v21);
      v22 = v13;
      v23 = v15;
      v26._countAndFlagsBits = 1735290926;
      v26._object = 0xE400000000000000;
      sub_1000CADD0(v26);
      v16 = v22;
      v17 = v23;
      v22 = v12;
      v23 = v16;
      v24 = v17;
      v25 = 1;
      sub_10001EFC4();
      sub_1000CB4F0();
    }
  }

  else
  {
    LOBYTE(v22) = 0;
    v25 = 0;
    sub_10001EF70();
    sub_1000CB4F0();
  }

  return (*(v9 + 8))(v11, v8);
}

void *sub_10001D840@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10001EC78(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

Swift::Int sub_10001D89C()
{
  v1 = *v0;
  sub_1000CB5C0();
  sub_1000CB5D0(v1);
  return sub_1000CB5F0();
}

Swift::Int sub_10001D8E4()
{
  v1 = *v0;
  sub_1000CB5C0();
  sub_1000CB5D0(v1);
  return sub_1000CB5F0();
}

uint64_t sub_10001D928()
{
  v1 = 0x746144746867696CLL;
  if (*v0 != 1)
  {
    v1 = 0x617461446B726164;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_10001D980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10001F018(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10001D9B4(uint64_t a1)
{
  v2 = sub_10001F678();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001D9F0(uint64_t a1)
{
  v2 = sub_10001F678();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001DA2C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746E656964617267;
  }

  else
  {
    v3 = 0x64696C6F73;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x746E656964617267;
  }

  else
  {
    v5 = 0x64696C6F73;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000CB530();
  }

  return v8 & 1;
}

Swift::Int sub_10001DAD0()
{
  sub_1000CB5C0();
  sub_1000CAD90();

  return sub_1000CB5F0();
}

uint64_t sub_10001DB50()
{
  sub_1000CAD90();
}

Swift::Int sub_10001DBBC()
{
  sub_1000CB5C0();
  sub_1000CAD90();

  return sub_1000CB5F0();
}

uint64_t sub_10001DC44@<X0>(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, char *a3@<X8>)
{
  v9._countAndFlagsBits = *a1;
  v4 = a1[1];
  v9._object = v4;
  v6 = sub_1000CB3F0(a2, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

void sub_10001DCA0(uint64_t *a1@<X8>)
{
  v2 = 0x64696C6F73;
  if (*v1)
  {
    v2 = 0x746E656964617267;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10001DD9C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v46 = a3;
  v8 = sub_100019558(&qword_10011DD50);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v43 - v10;
  sub_10001E2E4(a1, a1[3]);
  sub_10001F678();
  sub_1000CB630();
  if (a4)
  {
    *v47 = 256;
    sub_10001F81C();
    sub_1000CB4F0();
    if (!v4)
    {
      v12 = objc_opt_self();
      *&v47[1] = 0;
      v13 = [v12 archivedDataWithRootObject:a2 requiringSecureCoding:1 error:&v47[1]];
      v14 = *&v47[1];
      if (v13)
      {
        v15 = sub_1000C94B0();
        v17 = v16;

        *&v47[1] = v15;
        v48 = v17;
        v47[0] = 1;
        sub_10001F870();
        sub_1000CB4F0();
        *&v47[1] = 0;
        v18 = [v12 archivedDataWithRootObject:v46 requiringSecureCoding:1 error:&v47[1]];
        v19 = *&v47[1];
        if (v18)
        {
          v20 = sub_1000C94B0();
          v45 = v21;
          v46 = v20;

          *&v47[1] = v20;
          v22 = v45;
          v48 = v45;
          v47[0] = 2;
          sub_1000CB4F0();
          (*(v9 + 8))(v11, v8);
          sub_10001F774(v15, v17);
          v23 = v46;
          v24 = v22;
          return sub_10001F774(v23, v24);
        }

        v39 = v19;
        sub_1000C9340();

        swift_willThrow();
        v40 = v15;
        v41 = v17;
LABEL_16:
        sub_10001F774(v40, v41);
        return (*(v9 + 8))(v11, v8);
      }

LABEL_10:
      v31 = v14;
      sub_1000C9340();

      swift_willThrow();
    }
  }

  else
  {
    *v47 = 0;
    sub_10001F81C();
    sub_1000CB4F0();
    if (!v4)
    {
      v25 = objc_opt_self();
      *&v47[1] = 0;
      v26 = [v25 archivedDataWithRootObject:a2 requiringSecureCoding:1 error:&v47[1]];
      v14 = *&v47[1];
      if (v26)
      {
        v27 = sub_1000C94B0();
        v29 = v28;

        *&v47[1] = v27;
        v48 = v29;
        v47[0] = 1;
        sub_10001F870();
        sub_1000CB4F0();
        v44 = v27;
        v45 = v29;
        *&v47[1] = 0;
        v32 = [v25 archivedDataWithRootObject:v46 requiringSecureCoding:1 error:&v47[1]];
        v33 = *&v47[1];
        if (v32)
        {
          v34 = sub_1000C94B0();
          v36 = v35;

          *&v47[1] = v34;
          v48 = v36;
          v47[0] = 2;
          sub_1000CB4F0();
          v38 = v44;
          v37 = v45;
          (*(v9 + 8))(v11, v8);
          sub_10001F774(v38, v37);
          v23 = v34;
          v24 = v36;
          return sub_10001F774(v23, v24);
        }

        v42 = v33;
        sub_1000C9340();

        swift_willThrow();
        v40 = v44;
        v41 = v45;
        goto LABEL_16;
      }

      goto LABEL_10;
    }
  }

  return (*(v9 + 8))(v11, v8);
}

void *sub_10001E290@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10001F138(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

void *sub_10001E2E4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10001E328()
{
  result = qword_10011DC98;
  if (!qword_10011DC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DC98);
  }

  return result;
}

uint64_t sub_10001E37C(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_10001E3C8(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_10001E3D8(uint64_t a1)
{
  v2 = sub_100019558(&unk_10011E590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001E440(uint64_t a1, uint64_t a2)
{
  v4 = sub_100019558(&unk_10011E590);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001E4B0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000195A0(&qword_10011DCA8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001E528()
{
  result = qword_10011DCB8;
  if (!qword_10011DCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DCB8);
  }

  return result;
}

unint64_t sub_10001E57C()
{
  result = qword_10011DCC0;
  if (!qword_10011DCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DCC0);
  }

  return result;
}

uint64_t sub_10001E5D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Banner();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001E634(uint64_t a1)
{
  v2 = type metadata accessor for Banner();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001E690(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000195A0(&unk_10011E590);
    sub_10001E718(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001E718(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000C9480();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001E75C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000195A0(&unk_100121BF0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001E7C8()
{
  result = qword_10011DCD8;
  if (!qword_10011DCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DCD8);
  }

  return result;
}

unint64_t sub_10001E81C()
{
  result = qword_10011DCE0;
  if (!qword_10011DCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DCE0);
  }

  return result;
}

uint64_t sub_10001E870(void *a1)
{
  v2 = sub_100019558(&qword_10011DD60);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8[-v4];
  sub_10001E2E4(a1, a1[3]);
  sub_10001F97C();
  sub_1000CB610();
  v8[15] = 0;
  v6 = sub_1000CB470();
  v8[14] = 1;
  sub_1000CB470();
  (*(v3 + 8))(v5, v2);
  sub_10001E37C(a1);
  return v6;
}

uint64_t sub_10001EA18(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1000CB530() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1000CB530() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_1000CB530() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x52556E6F69746361 && a2 == 0xE90000000000004CLL || (sub_1000CB530() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000E19B0 == a2 || (sub_1000CB530() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000 || (sub_1000CB530() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL)
  {

    return 6;
  }

  else
  {
    v5 = sub_1000CB530();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

void *sub_10001EC78(void *a1)
{
  v3 = sub_100019558(&qword_10011DCE8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_10001E2E4(a1, a1[3]);
  sub_10001EE74();
  sub_1000CB610();
  if (!v1)
  {
    v10 = 0;
    sub_10001EEC8();
    sub_1000CB480();
    if (v9)
    {
      v10 = 1;
      sub_10001EF1C();
      sub_1000CB480();
      (*(v4 + 8))(v6, v3);
      v7 = v9;
    }

    else
    {
      (*(v4 + 8))(v6, v3);
      v7 = 0;
    }
  }

  sub_10001E37C(a1);
  return v7;
}

unint64_t sub_10001EE74()
{
  result = qword_10011DCF0;
  if (!qword_10011DCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DCF0);
  }

  return result;
}

unint64_t sub_10001EEC8()
{
  result = qword_10011DCF8;
  if (!qword_10011DCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DCF8);
  }

  return result;
}

unint64_t sub_10001EF1C()
{
  result = qword_10011DD00;
  if (!qword_10011DD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DD00);
  }

  return result;
}

unint64_t sub_10001EF70()
{
  result = qword_10011DD10;
  if (!qword_10011DD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DD10);
  }

  return result;
}

unint64_t sub_10001EFC4()
{
  result = qword_10011DD18;
  if (!qword_10011DD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DD18);
  }

  return result;
}

uint64_t sub_10001F018(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1000CB530() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746144746867696CLL && a2 == 0xE900000000000061 || (sub_1000CB530() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617461446B726164 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1000CB530();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void *sub_10001F138(void *a1)
{
  v3 = sub_100019558(&qword_10011DD20);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - v5;
  v7 = a1[3];
  sub_10001E2E4(a1, v7);
  sub_10001F678();
  sub_1000CB610();
  if (v1)
  {
    goto LABEL_4;
  }

  v29 = 0;
  sub_10001F6CC();
  sub_1000CB480();
  if (v27)
  {
    v29 = 1;
    v9 = sub_10001F720();
    sub_1000CB480();
    v24 = v9;
    v10 = v28;
    v26 = v27;
    v11 = sub_10001F934(0, &unk_100121BB0);
    sub_10001F934(0, &qword_10011DD38);
    v25 = v10;
    v23 = v11;
    v7 = sub_1000CB070();
    if (v7)
    {
      v29 = 2;
      sub_1000CB480();
      v12 = v27;
      v24 = v28;
      v13 = sub_1000CB070();
      v23 = v12;
      if (!v13)
      {
        sub_10001F7C8();
        swift_allocError();
        *v14 = 1;
LABEL_18:
        swift_willThrow();
        sub_10001F774(v26, v25);
        sub_10001F774(v23, v24);

        goto LABEL_3;
      }

      goto LABEL_16;
    }

    sub_10001F7C8();
    swift_allocError();
    *v18 = 1;
  }

  else
  {
    v29 = 1;
    v15 = sub_10001F720();
    sub_1000CB480();
    v24 = v15;
    v16 = v28;
    v26 = v27;
    v17 = sub_10001F934(0, &unk_100121BB0);
    sub_10001F934(0, &qword_10011DD48);
    v25 = v16;
    v23 = v17;
    v7 = sub_1000CB070();
    if (v7)
    {
      v29 = 2;
      sub_1000CB480();
      v20 = v27;
      v24 = v28;
      v21 = sub_1000CB070();
      v23 = v20;
      if (!v21)
      {
        sub_10001F7C8();
        swift_allocError();
        *v22 = 0;
        goto LABEL_18;
      }

LABEL_16:
      (*(v4 + 8))(v6, v3);
      sub_10001F774(v26, v25);
      sub_10001F774(v23, v24);
      sub_10001E37C(a1);
      return v7;
    }

    sub_10001F7C8();
    swift_allocError();
    *v19 = 0;
  }

  swift_willThrow();
  sub_10001F774(v26, v25);
LABEL_3:
  (*(v4 + 8))(v6, v3);
LABEL_4:
  sub_10001E37C(a1);
  return v7;
}

unint64_t sub_10001F678()
{
  result = qword_10011DD28;
  if (!qword_10011DD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DD28);
  }

  return result;
}

unint64_t sub_10001F6CC()
{
  result = qword_10011DD30;
  if (!qword_10011DD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DD30);
  }

  return result;
}

unint64_t sub_10001F720()
{
  result = qword_10011E680;
  if (!qword_10011E680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E680);
  }

  return result;
}

uint64_t sub_10001F774(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_10001F7C8()
{
  result = qword_10011DD40;
  if (!qword_10011DD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DD40);
  }

  return result;
}

unint64_t sub_10001F81C()
{
  result = qword_10011DD58;
  if (!qword_10011DD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DD58);
  }

  return result;
}

unint64_t sub_10001F870()
{
  result = qword_100121360;
  if (!qword_100121360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121360);
  }

  return result;
}

uint64_t sub_10001F8C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100019558(&unk_10011E590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001F934(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_10001F97C()
{
  result = qword_10011DD68;
  if (!qword_10011DD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DD68);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Banner.Background.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Banner.Background.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for EntryStore.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EntryStore.Errors(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Banner.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Banner.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10001FE34()
{
  result = qword_10011DD78;
  if (!qword_10011DD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DD78);
  }

  return result;
}

unint64_t sub_10001FE8C()
{
  result = qword_10011DD80;
  if (!qword_10011DD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DD80);
  }

  return result;
}

unint64_t sub_10001FEE4()
{
  result = qword_10011DD88;
  if (!qword_10011DD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DD88);
  }

  return result;
}

unint64_t sub_10001FF3C()
{
  result = qword_10011DD90;
  if (!qword_10011DD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DD90);
  }

  return result;
}

unint64_t sub_10001FF94()
{
  result = qword_10011DD98;
  if (!qword_10011DD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DD98);
  }

  return result;
}

unint64_t sub_10001FFEC()
{
  result = qword_10011DDA0;
  if (!qword_10011DDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DDA0);
  }

  return result;
}

unint64_t sub_100020044()
{
  result = qword_10011DDA8;
  if (!qword_10011DDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DDA8);
  }

  return result;
}

unint64_t sub_10002009C()
{
  result = qword_10011DDB0;
  if (!qword_10011DDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DDB0);
  }

  return result;
}

unint64_t sub_1000200F4()
{
  result = qword_10011DDB8;
  if (!qword_10011DDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DDB8);
  }

  return result;
}

unint64_t sub_10002014C()
{
  result = qword_10011DDC0;
  if (!qword_10011DDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DDC0);
  }

  return result;
}

unint64_t sub_1000201A4()
{
  result = qword_10011DDC8;
  if (!qword_10011DDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DDC8);
  }

  return result;
}

unint64_t sub_1000201FC()
{
  result = qword_10011DDD0;
  if (!qword_10011DDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DDD0);
  }

  return result;
}

unint64_t sub_100020254()
{
  result = qword_10011DDD8;
  if (!qword_10011DDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DDD8);
  }

  return result;
}

unint64_t sub_1000202AC()
{
  result = qword_10011DDE0;
  if (!qword_10011DDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DDE0);
  }

  return result;
}

unint64_t sub_100020304()
{
  result = qword_10011DDE8;
  if (!qword_10011DDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DDE8);
  }

  return result;
}

unint64_t sub_100020358()
{
  result = qword_10011DDF0;
  if (!qword_10011DDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DDF0);
  }

  return result;
}

unint64_t sub_1000203AC()
{
  result = qword_10011DDF8;
  if (!qword_10011DDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DDF8);
  }

  return result;
}

void sub_10002042C(id *a1)
{
  v2 = *(v1 + 16);
  v3 = [*a1 promotionCriterion];
  if (v3 == 1 || v3 == 2)
  {
    v4 = [objc_opt_self() mainBundle];
    v5 = [v4 bundleIdentifier];

    if (v5)
    {
      v6 = NSSNewsAppBundleID;
      v7 = sub_1000CACD0();
      v8 = sub_1000CACD0();

      v9 = [objc_allocWithZone(type metadata accessor for TodayIntent()) init];
      v10 = [v2 createSuggestionWithAppBundleIdentifier:v6 widgetBundleIdentifier:v5 widgetKind:v7 criterion:v8 applicableLayouts:24 suggestionIdentifier:0 startDate:0 endDate:0 intent:v9 metadata:0];

      if (v10)
      {
        sub_100019558(&unk_10011F0B0);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_1000D3390;
        *(v11 + 32) = v10;
      }
    }

    else
    {
    }
  }

  sub_10002069C();
  isa = sub_1000CAEC0().super.isa;

  [v2 updateSuggestions:isa];
}

uint64_t sub_100020638()
{

  return swift_deallocClassInstance();
}

unint64_t sub_10002069C()
{
  result = qword_10011DEA8;
  if (!qword_10011DEA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10011DEA8);
  }

  return result;
}

uint64_t sub_1000206E8@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = sub_100019558(&qword_10011DF90);
  __chkstk_darwin(v3 - 8);
  v62 = &v55 - v4;
  v5 = sub_100019558(&qword_10011D7C0);
  __chkstk_darwin(v5 - 8);
  v61 = &v55 - v6;
  v7 = sub_1000C9360();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000C9610();
  __chkstk_darwin(v11 - 8);
  v12 = sub_1000CACC0();
  __chkstk_darwin(v12 - 8);
  v13 = sub_1000C9370();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (v8 + 104);
  v59 = __chkstk_darwin(v15);
  v60 = v17;
  v57 = &v55 - v19;
  if (a1 > 3u)
  {
    if (a1 <= 5u)
    {
      if (a1 == 4)
      {
        v56 = "ownloads setting.";
      }

      else
      {
        v56 = "ownloads setting.";
      }
    }

    else
    {
      if (a1 == 6)
      {
        v56 = "atic Downloads setting.";
        sub_1000CACB0();
        sub_1000C95E0();
        LODWORD(v55) = enum case for LocalizedStringResource.BundleDescription.main(_:);
        v37 = *v18;
        (*v18)(v10);
        sub_1000C9380();
        sub_1000CACB0();
        sub_1000C95E0();
        v38 = v55;
        (v37)(v10, v55, v7);
        v39 = v61;
        sub_1000C9380();
        (*(v14 + 56))(v39, 0, 1, v59);
        v40 = v62;
        sub_1000C9060();
        v41 = sub_1000C9070();
        (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
        sub_1000CACB0();
        sub_1000C95E0();
        (v37)(v10, v38, v7);
        goto LABEL_19;
      }

      if (a1 == 7)
      {
        v56 = "the Optimize Storage setting.";
      }

      else
      {
        v55 = 0xD000000000000010;
        v56 = "NewsBreakingNews";
      }
    }

    sub_1000CACB0();
    sub_1000C95E0();
    v31 = enum case for LocalizedStringResource.BundleDescription.main(_:);
    v32 = *v18;
    (*v18)(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
    sub_1000C9380();
    sub_1000CACB0();
    sub_1000C95E0();
    (v32)(v10, v31, v7);
    v33 = v32;
    v34 = v61;
    sub_1000C9380();
    (*(v14 + 56))(v34, 0, 1, v59);
    v35 = v62;
    sub_1000C9060();
    v36 = sub_1000C9070();
    (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
    sub_1000CACB0();
    sub_1000C95E0();
    (v33)(v10, v31, v7);
LABEL_19:
    sub_1000C9380();
    return sub_1000C9080();
  }

  if (a1 <= 1u)
  {
    if (a1)
    {
      v55 = 0xD000000000000019;
      v56 = "ic Downloads setting.";
      sub_1000CACB0();
      sub_1000C95E0();
      v42 = *v18;
      v43 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      (*v18)(v10);
      sub_1000C9380();
      sub_1000CACB0();
      sub_1000C95E0();
      (v42)(v10, v43, v7);
      v44 = v42;
      v45 = v61;
      sub_1000C9380();
      (*(v14 + 56))(v45, 0, 1, v59);
      v46 = v62;
      sub_1000C9060();
      v47 = sub_1000C9070();
      (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
      sub_1000CACB0();
      sub_1000C95E0();
      (v44)(v10, v43, v7);
    }

    else
    {
      v55 = 0xD000000000000013;
      v56 = "tic Downloads setting.";
      sub_1000CACB0();
      sub_1000C95E0();
      v20 = *v18;
      v21 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      (*v18)(v10);
      sub_1000C9380();
      sub_1000CACB0();
      sub_1000C95E0();
      v22 = v21;
      (v20)(v10, v21, v7);
      v23 = v61;
      sub_1000C9380();
      (*(v14 + 56))(v23, 0, 1, v59);
      v24 = v62;
      sub_1000C9060();
      v25 = sub_1000C9070();
      (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
      sub_1000CACB0();
      sub_1000C95E0();
      (v20)(v10, v22, v7);
    }

    goto LABEL_19;
  }

  if (a1 != 2)
  {
    v56 = "omatic Downloads setting.";
    sub_1000CACB0();
    sub_1000C95E0();
    v48 = enum case for LocalizedStringResource.BundleDescription.main(_:);
    v49 = *v18;
    (*v18)(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
    sub_1000C9380();
    sub_1000CACB0();
    sub_1000C95E0();
    (v49)(v10, v48, v7);
    v50 = v49;
    v51 = v61;
    sub_1000C9380();
    (*(v14 + 56))(v51, 0, 1, v59);
    v52 = v62;
    sub_1000C9060();
    v53 = sub_1000C9070();
    (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
    sub_1000CACB0();
    sub_1000C95E0();
    (v50)(v10, v48, v7);
    goto LABEL_19;
  }

  v56 = "atic Downloads setting.";
  sub_1000CACB0();
  sub_1000C95E0();
  v26 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v27 = *v18;
  (*v18)(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
  sub_1000C9380();
  sub_1000CACB0();
  sub_1000C95E0();
  (v27)(v10, v26, v7);
  v28 = v61;
  sub_1000C9380();
  (*(v14 + 56))(v28, 0, 1, v59);
  v29 = v62;
  sub_1000C9060();
  v30 = sub_1000C9070();
  (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
  sub_1000C9350();
  return sub_1000C9080();
}

uint64_t sub_100021A18(char a1)
{
  if (a1)
  {
    return sub_1000CAD00();
  }

  else
  {
    return 0x746F6F7223;
  }
}

uint64_t sub_100021AD4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100021A18(*a1);
  v5 = v4;
  if (v3 == sub_100021A18(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000CB530();
  }

  return v8 & 1;
}

unint64_t sub_100021B60()
{
  result = qword_10011DEB0;
  if (!qword_10011DEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DEB0);
  }

  return result;
}

Swift::Int sub_100021BB4()
{
  v1 = *v0;
  sub_1000CB5C0();
  sub_100021A18(v1);
  sub_1000CAD90();

  return sub_1000CB5F0();
}

uint64_t sub_100021C18()
{
  sub_100021A18(*v0);
  sub_1000CAD90();
}

Swift::Int sub_100021C6C()
{
  v1 = *v0;
  sub_1000CB5C0();
  sub_100021A18(v1);
  sub_1000CAD90();

  return sub_1000CB5F0();
}

uint64_t sub_100021D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_1000239D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100021D84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000239D0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100021DB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100021A18(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100021DE4()
{
  result = qword_10011DEC8;
  if (!qword_10011DEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DEC8);
  }

  return result;
}

uint64_t sub_100021E38()
{
  v0 = sub_100019558(&qword_10011D7C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1000C9370();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1000C9190();
  sub_10001A5EC(v5, qword_100134248);
  sub_10001A5B4(v5, qword_100134248);
  sub_1000C9350();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1000C9180();
}

uint64_t sub_100021FA8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10002204C;

  return sub_100023E10();
}

uint64_t sub_10002204C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

unint64_t sub_100022164()
{
  result = qword_10011DED0;
  if (!qword_10011DED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DED0);
  }

  return result;
}

unint64_t sub_1000221BC()
{
  result = qword_10011DED8;
  if (!qword_10011DED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DED8);
  }

  return result;
}

unint64_t sub_100022214()
{
  result = qword_10011DEE0;
  if (!qword_10011DEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DEE0);
  }

  return result;
}

uint64_t sub_100022268(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100024D18;

  return sub_100024128(a1);
}

uint64_t sub_100022310(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100024CF4;

  return sub_100023E10();
}

uint64_t sub_1000223B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100022474;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100022474(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_100022578()
{
  result = qword_10011DEE8;
  if (!qword_10011DEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DEE8);
  }

  return result;
}

unint64_t sub_1000225D0()
{
  result = qword_10011DEF0;
  if (!qword_10011DEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DEF0);
  }

  return result;
}

unint64_t sub_100022628()
{
  result = qword_10011DEF8;
  if (!qword_10011DEF8)
  {
    sub_1000195A0(&qword_10011DF00);
    sub_1000225D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DEF8);
  }

  return result;
}

uint64_t sub_1000226AC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100021DE4();
  *v5 = v2;
  v5[1] = sub_10001840C;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100022760(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100022804;

  return sub_100024440();
}

uint64_t sub_100022804(char a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_10002291C()
{
  result = qword_10011DF08;
  if (!qword_10011DF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DF08);
  }

  return result;
}

uint64_t sub_100022970()
{
  v0 = sub_100019558(&qword_10011DFB8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - v2;
  v4 = sub_100019558(&qword_10011DFC0);
  __chkstk_darwin(v4);
  sub_100022214();
  sub_1000C9120();
  v7._object = 0x80000001000E24B0;
  v7._countAndFlagsBits = 0xD000000000000056;
  sub_1000C9110(v7);
  (*(v1 + 104))(v3, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_1000C9100();
  (*(v1 + 8))(v3, v0);
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  sub_1000C9110(v8);
  return sub_1000C9130();
}

unint64_t sub_100022B34()
{
  result = qword_10011DF10;
  if (!qword_10011DF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DF10);
  }

  return result;
}

unint64_t sub_100022B8C()
{
  result = qword_10011DF18;
  if (!qword_10011DF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DF18);
  }

  return result;
}

unint64_t sub_100022BE4()
{
  result = qword_10011DF20;
  if (!qword_10011DF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DF20);
  }

  return result;
}

unint64_t sub_100022C3C()
{
  result = qword_10011DF28;
  if (!qword_10011DF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DF28);
  }

  return result;
}

uint64_t sub_100022C90()
{
  sub_100024BFC();
  v1 = sub_1000C90D0();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100022D00()
{
  result = qword_10011DF30;
  if (!qword_10011DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DF30);
  }

  return result;
}

unint64_t sub_100022D58()
{
  result = qword_10011DF38;
  if (!qword_10011DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DF38);
  }

  return result;
}

unint64_t sub_100022DB0()
{
  result = qword_10011DF40;
  if (!qword_10011DF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DF40);
  }

  return result;
}

unint64_t sub_100022E08()
{
  result = qword_10011DF48;
  if (!qword_10011DF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DF48);
  }

  return result;
}

uint64_t sub_100022EE4(uint64_t a1)
{
  v2 = sub_100022214();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100022F34()
{
  result = qword_10011DF60;
  if (!qword_10011DF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DF60);
  }

  return result;
}

uint64_t sub_100022F90(uint64_t a1)
{
  v2 = sub_100022DB0();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100022FE0()
{
  result = qword_10011DF68;
  if (!qword_10011DF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DF68);
  }

  return result;
}

uint64_t sub_100023038()
{
  v0 = sub_1000C9360();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000C9610();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000CACC0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000C9370();
  sub_10001A5EC(v6, qword_100134260);
  sub_10001A5B4(v6, qword_100134260);
  sub_1000CACB0();
  sub_1000C95E0();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_1000C9380();
}

uint64_t sub_100023218@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000C8EC0();
  *a1 = v3;
  return result;
}

void (*sub_10002328C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1000C8EB0();
  return sub_1000181C4;
}

unint64_t sub_100023300()
{
  result = qword_10011DF70;
  if (!qword_10011DF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DF70);
  }

  return result;
}

uint64_t sub_100023354(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024B54();
  v5 = sub_100024BFC();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_1000233C8()
{
  result = qword_10011DF78;
  if (!qword_10011DF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DF78);
  }

  return result;
}

unint64_t sub_100023420()
{
  result = qword_10011DF80;
  if (!qword_10011DF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DF80);
  }

  return result;
}

unint64_t sub_100023478()
{
  result = qword_10011DF88;
  if (!qword_10011DF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DF88);
  }

  return result;
}

uint64_t sub_100023554@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_10001A5B4(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_100023610(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_100024B54();
  v6 = sub_100024BA8();
  v7 = sub_100024BFC();
  *v4 = v2;
  v4[1] = sub_1000236DC;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_1000236DC()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_1000237E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000246C8();
  *a1 = result;
  return result;
}

uint64_t sub_10002380C(uint64_t a1)
{
  v2 = sub_100023300();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for LayoutContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LayoutContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000239D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746F6F7223 && a2 == 0xE500000000000000;
  if (v4 || (sub_1000CB530() & 1) != 0)
  {

    return 0;
  }

  if (sub_1000CAD00() == a1 && v6 == a2)
  {

LABEL_15:

    return 1;
  }

  v8 = sub_1000CB530();

  if (v8)
  {
    goto LABEL_15;
  }

  if (sub_1000CAD00() == a1 && v9 == a2)
  {

LABEL_23:

    return 2;
  }

  v11 = sub_1000CB530();

  if (v11)
  {
    goto LABEL_23;
  }

  if (sub_1000CAD00() == a1 && v12 == a2)
  {

LABEL_28:

    return 3;
  }

  v13 = sub_1000CB530();

  if (v13)
  {
    goto LABEL_28;
  }

  if (sub_1000CAD00() == a1 && v14 == a2)
  {

LABEL_33:

    return 4;
  }

  v15 = sub_1000CB530();

  if (v15)
  {
    goto LABEL_33;
  }

  if (sub_1000CAD00() == a1 && v16 == a2)
  {

LABEL_38:

    return 5;
  }

  v17 = sub_1000CB530();

  if (v17)
  {
    goto LABEL_38;
  }

  if (sub_1000CAD00() == a1 && v18 == a2)
  {

LABEL_43:

    return 6;
  }

  v19 = sub_1000CB530();

  if (v19)
  {
    goto LABEL_43;
  }

  if (sub_1000CAD00() == a1 && v20 == a2)
  {

LABEL_48:

    return 7;
  }

  v21 = sub_1000CB530();

  if (v21)
  {
    goto LABEL_48;
  }

  if (sub_1000CAD00() == a1 && v22 == a2)
  {
  }

  else
  {
    v23 = sub_1000CB530();

    if ((v23 & 1) == 0)
    {
      sub_1000CB040();
      sub_100019558(&unk_10011E820);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1000D3410;
      *(v24 + 56) = &type metadata for String;
      *(v24 + 64) = sub_100024C50();
      *(v24 + 32) = a1;
      *(v24 + 40) = a2;
      sub_100024CA4();
      v25 = sub_1000CB160();
      sub_1000C9BE0();

      return 0;
    }
  }

  return 8;
}

uint64_t sub_100023E2C()
{
  v0 = 0;
  v1 = FCNewsURLResolutionSubscriptionStatusSharedPreferenceKey;
  v2 = FCOfflineModeFeatureFlagEnabledKey;
  v26 = FCAudioFeatureFlagEnabledKey;
  v25 = FCFoodFeatureFlagEnabledKey;
  v24 = FCPuzzlesFeatureFlagEnabledKey;
  do
  {
    v5 = *(&off_10010C310 + v0 + 32);
    v6 = NewsCoreUserDefaults();
    v7 = [v6 BOOLForKey:v1];

    v8 = NewsCoreUserDefaults();
    v9 = [v8 BOOLForKey:v2];

    if (v7)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      goto LABEL_5;
    }

    if (v5 > 4)
    {
      if (v5 > 6)
      {
        if (v5 != 7)
        {
          goto LABEL_11;
        }

        v13 = NewsCoreUserDefaults();
        v14 = [v13 BOOLForKey:v26];
      }

      else
      {
        if (v5 == 5)
        {
          v11 = NewsCoreUserDefaults();
          v12 = [v11 BOOLForKey:v24];

          if (!v12)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }

        v13 = NewsCoreUserDefaults();
        v14 = [v13 BOOLForKey:v25];
      }

      v15 = v14;

      if ((v15 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

LABEL_11:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100050110(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
    }

    v4 = *(&_swiftEmptyArrayStorage + 2);
    v3 = *(&_swiftEmptyArrayStorage + 3);
    if (v4 >= v3 >> 1)
    {
      sub_100050110((v3 > 1), v4 + 1, 1);
    }

    *(&_swiftEmptyArrayStorage + 2) = v4 + 1;
    *(&_swiftEmptyArrayStorage + v4 + 32) = v5;
LABEL_5:
    ++v0;
  }

  while (v0 != 9);
  v16 = *(&_swiftEmptyArrayStorage + 2);
  if (v16)
  {
    sub_1000500E0(0, v16, 0);
    v17 = *(&_swiftEmptyArrayStorage + 2);
    v18 = 32;
    do
    {
      v19 = *(&_swiftEmptyArrayStorage + v18);
      v20 = *(&_swiftEmptyArrayStorage + 3);
      if (v17 >= v20 >> 1)
      {
        sub_1000500E0((v20 > 1), v17 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v17 + 1;
      *(&_swiftEmptyArrayStorage + v17 + 32) = v19;
      ++v18;
      ++v17;
      --v16;
    }

    while (v16);
  }

  v21 = *(v23 + 8);

  return v21(&_swiftEmptyArrayStorage);
}

uint64_t sub_100024148()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = FCNewsURLResolutionSubscriptionStatusSharedPreferenceKey;
    v5 = FCOfflineModeFeatureFlagEnabledKey;
    v29 = FCAudioFeatureFlagEnabledKey;
    v28 = FCFoodFeatureFlagEnabledKey;
    v27 = FCPuzzlesFeatureFlagEnabledKey;
    do
    {
      v9 = *v3++;
      v8 = v9;
      v10 = NewsCoreUserDefaults();
      v11 = [v10 BOOLForKey:v4];

      v12 = NewsCoreUserDefaults();
      v13 = [v12 BOOLForKey:v5];

      if (v11)
      {
        v14 = v13 == 0;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        goto LABEL_6;
      }

      if (v8 <= 4)
      {
        goto LABEL_12;
      }

      if (v8 > 6)
      {
        if (v8 != 7)
        {
          goto LABEL_12;
        }

        v17 = NewsCoreUserDefaults();
        v18 = [v17 BOOLForKey:{v29, v27}];
      }

      else
      {
        if (v8 == 5)
        {
          v15 = NewsCoreUserDefaults();
          v16 = [v15 BOOLForKey:v27];

          if (v16)
          {
            goto LABEL_12;
          }

          goto LABEL_6;
        }

        v17 = NewsCoreUserDefaults();
        v18 = [v17 BOOLForKey:{v28, v27}];
      }

      v19 = v18;

      if (v19)
      {
LABEL_12:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100050110(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
        }

        v7 = *(&_swiftEmptyArrayStorage + 2);
        v6 = *(&_swiftEmptyArrayStorage + 3);
        if (v7 >= v6 >> 1)
        {
          sub_100050110((v6 > 1), v7 + 1, 1);
        }

        *(&_swiftEmptyArrayStorage + 2) = v7 + 1;
        *(&_swiftEmptyArrayStorage + v7 + 32) = v8;
      }

LABEL_6:
      --v2;
    }

    while (v2);
  }

  v20 = *(&_swiftEmptyArrayStorage + 2);
  if (v20)
  {
    sub_1000500E0(0, v20, 0);
    v21 = *(&_swiftEmptyArrayStorage + 2);
    v22 = 32;
    do
    {
      v23 = *(&_swiftEmptyArrayStorage + v22);
      v24 = *(&_swiftEmptyArrayStorage + 3);
      if (v21 >= v24 >> 1)
      {
        sub_1000500E0((v24 > 1), v21 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v21 + 1;
      *(&_swiftEmptyArrayStorage + v21 + 32) = v23;
      ++v22;
      ++v21;
      --v20;
    }

    while (v20);
  }

  v25 = *(v30 + 8);

  return v25(&_swiftEmptyArrayStorage);
}

uint64_t sub_10002445C()
{
  v0 = 0;
  v1 = FCNewsURLResolutionSubscriptionStatusSharedPreferenceKey;
  v2 = FCOfflineModeFeatureFlagEnabledKey;
  v22 = FCAudioFeatureFlagEnabledKey;
  v21 = FCFoodFeatureFlagEnabledKey;
  v20 = FCPuzzlesFeatureFlagEnabledKey;
  do
  {
    v5 = *(&off_10010C310 + v0 + 32);
    v6 = NewsCoreUserDefaults();
    v7 = [v6 BOOLForKey:v1];

    v8 = NewsCoreUserDefaults();
    v9 = [v8 BOOLForKey:v2];

    if (v7)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      goto LABEL_5;
    }

    if (v5 > 4)
    {
      if (v5 > 6)
      {
        if (v5 != 7)
        {
          goto LABEL_11;
        }

        v13 = NewsCoreUserDefaults();
        v14 = [v13 BOOLForKey:v22];
      }

      else
      {
        if (v5 == 5)
        {
          v11 = NewsCoreUserDefaults();
          v12 = [v11 BOOLForKey:v20];

          if (!v12)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }

        v13 = NewsCoreUserDefaults();
        v14 = [v13 BOOLForKey:v21];
      }

      v15 = v14;

      if ((v15 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

LABEL_11:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100050110(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
    }

    v4 = *(&_swiftEmptyArrayStorage + 2);
    v3 = *(&_swiftEmptyArrayStorage + 3);
    if (v4 >= v3 >> 1)
    {
      sub_100050110((v3 > 1), v4 + 1, 1);
    }

    *(&_swiftEmptyArrayStorage + 2) = v4 + 1;
    *(&_swiftEmptyArrayStorage + v4 + 32) = v5;
LABEL_5:
    ++v0;
  }

  while (v0 != 9);
  if (*(&_swiftEmptyArrayStorage + 2))
  {
    v16 = *(&_swiftEmptyArrayStorage + 32);
  }

  else
  {
    v16 = 9;
  }

  v17 = *(v19 + 8);

  return v17(v16);
}

uint64_t sub_1000246C8()
{
  v0 = sub_1000C9140();
  v24 = *(v0 - 8);
  v25 = v0;
  __chkstk_darwin(v0);
  v23 = v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100019558(&qword_10011D800);
  v3 = __chkstk_darwin(v2 - 8);
  v22 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v21 = v20 - v5;
  v6 = sub_1000C9360();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C9610();
  __chkstk_darwin(v10 - 8);
  v11 = sub_1000CACC0();
  __chkstk_darwin(v11 - 8);
  v12 = sub_100019558(&qword_10011D7C0);
  __chkstk_darwin(v12 - 8);
  v14 = v20 - v13;
  v15 = sub_1000C9370();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v20[1] = sub_100019558(&qword_10011DF98);
  sub_1000C9350();
  sub_1000CACB0();
  sub_1000C95E0();
  (*(v7 + 104))(v9, enum case for LocalizedStringResource.BundleDescription.main(_:), v6);
  sub_1000C9380();
  (*(v16 + 56))(v14, 0, 1, v15);
  v26 = 9;
  v17 = sub_1000C8E70();
  v18 = *(*(v17 - 8) + 56);
  v18(v21, 1, 1, v17);
  v18(v22, 1, 1, v17);
  (*(v24 + 104))(v23, enum case for InputConnectionBehavior.default(_:), v25);
  sub_100022214();
  return sub_1000C8EE0();
}

unint64_t sub_100024B54()
{
  result = qword_10011DFA0;
  if (!qword_10011DFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DFA0);
  }

  return result;
}

unint64_t sub_100024BA8()
{
  result = qword_10011DFA8;
  if (!qword_10011DFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DFA8);
  }

  return result;
}

unint64_t sub_100024BFC()
{
  result = qword_10011DFB0;
  if (!qword_10011DFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DFB0);
  }

  return result;
}

unint64_t sub_100024C50()
{
  result = qword_10011E720;
  if (!qword_10011E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E720);
  }

  return result;
}

unint64_t sub_100024CA4()
{
  result = qword_10011F5F0;
  if (!qword_10011F5F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10011F5F0);
  }

  return result;
}

uint64_t sub_100024D1C()
{
  v0 = sub_100019558(&qword_10011DFD0);

  return TupleWidget.init(_:)(v0, v0);
}

uint64_t sub_100024D6C()
{
  v0 = sub_1000C9A30();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100019558(&qword_10011DFE8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000D3410;
  v5 = sub_1000CA8B0();
  v6 = [objc_allocWithZone(v5) init];
  *(v4 + 56) = v5;
  *(v4 + 64) = sub_1000258A4(&qword_10011DFF0, &type metadata accessor for Assembly);
  *(v4 + 32) = v6;
  sub_100019558(&qword_10011DFF8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000D3C40;
  v8 = type metadata accessor for ProactiveAssembly();
  v9 = swift_allocObject();
  *(v7 + 56) = v8;
  *(v7 + 64) = sub_1000258A4(&qword_10011E000, type metadata accessor for ProactiveAssembly);
  *(v7 + 32) = v9;
  v10 = type metadata accessor for WidgetAnalyticsAssembly();
  v11 = swift_allocObject();
  *(v7 + 96) = v10;
  *(v7 + 104) = sub_1000258A4(&qword_10011E008, type metadata accessor for WidgetAnalyticsAssembly);
  *(v7 + 72) = v11;
  v12 = type metadata accessor for WidgetServiceAssembly();
  v13 = swift_allocObject();
  *(v7 + 136) = v12;
  *(v7 + 144) = sub_1000258A4(&qword_10011E010, type metadata accessor for WidgetServiceAssembly);
  *(v7 + 112) = v13;
  v14 = type metadata accessor for TodayWidgetServiceAssembly();
  v15 = swift_allocObject();
  *(v7 + 176) = v14;
  *(v7 + 184) = sub_1000258A4(&qword_10011E018, type metadata accessor for TodayWidgetServiceAssembly);
  *(v7 + 152) = v15;
  sub_1000C9860();
  swift_allocObject();
  sub_1000C9850();
  (*(v1 + 104))(v3, enum case for Container.Environment.normal(_:), v0);
  sub_1000C9A60();
  swift_allocObject();
  result = sub_1000C9A40();
  qword_100134278 = result;
  return result;
}

uint64_t sub_1000250C8@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v38 = sub_100019558(&qword_10011CFF8);
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v2 = &v35 - v1;
  v3 = sub_100019558(&qword_10011CFF0);
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v37 = &v35 - v4;
  v45 = sub_100019558(&qword_10011CFE8);
  v39 = *(v45 - 8);
  __chkstk_darwin(v45);
  v6 = &v35 - v5;
  v7 = sub_100019558(&qword_10011CFE0);
  v43 = *(v7 - 8);
  v44 = v7;
  __chkstk_darwin(v7);
  v42 = &v35 - v8;
  v47 = sub_1000CAD00();
  v48 = v9;
  v49 = sub_100025708;
  v50 = 0;
  sub_1000CA040();
  if (qword_10011CFA0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = static NSBundle.newsToday2;
  v11 = sub_1000CA400();
  v13 = v12;
  v15 = v14;
  v16 = sub_100019558(&qword_10011D000);
  v17 = sub_10001B1BC(&qword_10011D008, &qword_10011D000);
  sub_1000CA150();
  sub_100025894(v11, v13, v15 & 1);

  v47 = v16;
  v48 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = v37;
  v19 = v38;
  sub_1000CA160();
  (*(v36 + 8))(v2, v19);
  sub_1000CA040();
  v21 = static NSBundle.newsToday2;
  v22 = sub_1000CA400();
  v24 = v23;
  v26 = v25;
  v47 = v19;
  v48 = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = v41;
  sub_1000CA120();
  sub_100025894(v22, v24, v26 & 1);

  (*(v40 + 8))(v20, v28);
  v47 = v28;
  v48 = v27;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = v42;
  v31 = v45;
  sub_1000CA190();
  (*(v39 + 8))(v6, v31);
  v32 = [objc_opt_self() currentDevice];
  [v32 userInterfaceIdiom];

  v47 = v31;
  v48 = v29;
  swift_getOpaqueTypeConformance2();
  v33 = v44;
  sub_1000CA180();
  return (*(v43 + 8))(v30, v33);
}

uint64_t sub_100025708()
{
  if (qword_10011CD40 != -1)
  {
    swift_once();
  }

  return sub_1000C9A50();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000257A4();
  sub_1000C9CB0();
  return 0;
}

unint64_t sub_1000257A4()
{
  result = qword_10011DFC8;
  if (!qword_10011DFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DFC8);
  }

  return result;
}

uint64_t sub_100025894(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000258A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000258EC()
{
  sub_1000195A0(&qword_10011CFE0);
  sub_1000195A0(&qword_10011CFE8);
  sub_1000195A0(&qword_10011CFF0);
  sub_1000195A0(&qword_10011CFF8);
  sub_1000195A0(&qword_10011D000);
  sub_10001B1BC(&qword_10011D008, &qword_10011D000);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100025A84()
{
  sub_10001E37C(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_100025AE8(char *a1)
{
  v4 = sub_100019558(&unk_10011E590);
  __chkstk_darwin(v4 - 8);
  v6 = &v52 - v5;
  v7 = sub_1000C9480();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v59 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v52 - v11;
  v13 = type metadata accessor for NewsTimelineEntry();
  v14 = *(v13 + 20);
  v58 = a1;
  v15 = &a1[v14 + *(type metadata accessor for TodayContent() + 44)];
  v16 = v15[1];
  if (!v16)
  {
    sub_100026060();
    swift_allocError();
    *v32 = 1;
    return swift_willThrow();
  }

  v56 = v13;
  v17 = *v15;
  v18 = v7;
  v54 = *sub_10001E2E4((v1 + 16), *(v1 + 40));
  v55 = v2;

  v60[0] = sub_10002F3DC();
  v60[1] = v19;

  v62._countAndFlagsBits = 45;
  v62._object = 0xE100000000000000;
  sub_1000CADD0(v62);

  v53 = v17;
  v63._countAndFlagsBits = v17;
  v57 = v16;
  v63._object = v16;
  sub_1000CADD0(v63);

  sub_1000C9410();

  sub_1000C9420();
  sub_1000C9260();
  swift_allocObject();
  v20 = sub_1000C9250();
  (*(v8 + 16))(v6, v12, v18);
  v21 = *(v8 + 56);
  v54 = v18;
  v21(v6, 0, 1, v18);
  v22 = sub_1000C9240();
  v24 = v23;
  v61 = *v23;
  swift_bridgeObjectRetain_n();
  sub_1000260B4(v6);
  *v24 = v61;

  v22(v60, 0);
  v25 = v20;

  sub_1000273D4(&qword_10011E0D0);
  v26 = v55;
  v27 = sub_1000C9230();
  if (v26)
  {

    v29 = *(v8 + 8);
    v30 = v54;
    v29(v59, v54);
    return (v29)(v12, v30);
  }

  v33 = v27;
  v34 = v28;
  v56 = v8;
  v58 = v12;
  sub_100019558(&unk_10011E820);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1000D3D20;
  *(v35 + 56) = &type metadata for String;
  result = sub_100024C50();
  v36 = result;
  *(v35 + 64) = result;
  v37 = v57;
  *(v35 + 32) = v53;
  *(v35 + 40) = v37;
  v38 = v34 >> 62;
  v52 = v25;
  v55 = v34;
  if ((v34 >> 62) > 1)
  {
    if (v38 != 2)
    {
      v39 = 0;
      goto LABEL_15;
    }

    v41 = *(v33 + 16);
    v40 = *(v33 + 24);
    v39 = v40 - v41;
    if (!__OFSUB__(v40, v41))
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v38)
  {
    v39 = BYTE6(v34);
LABEL_15:
    v42 = [objc_opt_self() stringFromByteCount:v39 countStyle:{0, v52}];
    v43 = sub_1000CAD00();
    v45 = v44;

    *(v35 + 96) = &type metadata for String;
    *(v35 + 104) = v36;
    *(v35 + 72) = v43;
    *(v35 + 80) = v45;
    sub_100024CA4();
    v46 = sub_1000CB160();
    sub_1000CB060();
    sub_1000C9BE0();

    v47 = v59;
    v48 = v55;
    sub_1000C94C0();

    sub_10001F774(v33, v48);
    v49 = *(v56 + 8);
    v50 = v47;
    v51 = v54;
    v49(v50, v54);
    return (v49)(v58, v51);
  }

  if (!__OFSUB__(HIDWORD(v33), v33))
  {
    v39 = HIDWORD(v33) - v33;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

unint64_t sub_100026060()
{
  result = qword_10011E0C8;
  if (!qword_10011E0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E0C8);
  }

  return result;
}

uint64_t sub_1000260B4(uint64_t a1)
{
  v2 = sub_100019558(&unk_10011E590);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_100019558(&qword_10011E0D8);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_1000CB360();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CB350();
  result = (*(v9 + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    sub_10001F8C4(a1, v4);
    v13 = sub_1000C9480();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v4, 1, v13) == 1)
    {
      sub_10001E3D8(v4);
      v16 = 0u;
      v17 = 0u;
    }

    else
    {
      *(&v17 + 1) = v13;
      v15 = sub_100027370(&v16);
      (*(v14 + 32))(v15, v4, v13);
    }

    sub_100065194(&v16, v11);
    return sub_10001E3D8(a1);
  }

  return result;
}

unint64_t sub_100026320@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v61 = type metadata accessor for NewsTimelineEntry();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100019558(&unk_10011E590);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v54 - v7;
  v9 = sub_1000C9480();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v54 - v14;
  sub_10001E2E4((v1 + 16), *(v1 + 40));
  sub_10002F0E4(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10001E3D8(v8);
    v16 = 1;
    v17 = v60;
    return (*(v59 + 56))(v17, v16, 1, v61);
  }

  (*(v10 + 32))(v15, v8, v9);
  sub_1000C9420();
  v19 = v62;
  v20 = sub_1000C9490();
  if (v19)
  {
    v33 = *(v10 + 8);
    v33(v13, v9);
    return (v33)(v15, v9);
  }

  else
  {
    v22 = v21;
    v57 = v13;
    v62 = v20;
    sub_1000C9220();
    swift_allocObject();
    v23 = sub_1000C9210();
    v24 = *(v10 + 16);
    v56 = v15;
    v24(v6, v15, v9);
    v55 = v10;
    v25 = *(v10 + 56);
    v26 = v9;
    v25(v6, 0, 1, v9);
    v27 = sub_1000C9200();
    v29 = v28;
    v30 = v22;
    v64 = *v28;
    swift_bridgeObjectRetain_n();
    sub_1000260B4(v6);
    *v29 = v64;

    v27(v63, 0);

    sub_1000273D4(&qword_10011E0E0);
    v31 = v58;
    v32 = v61;
    sub_1000C91F0();
    v54[1] = v23;
    sub_100019558(&unk_10011E820);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1000D3D20;
    v35 = *(v32 + 20);
    v36 = (v31 + v35 + *(type metadata accessor for TodayContent() + 44));
    v38 = *v36;
    v37 = v36[1];
    *(v34 + 56) = &type metadata for String;
    result = sub_100024C50();
    v39 = result;
    *(v34 + 64) = result;
    if (v37)
    {
      v40 = v38;
    }

    else
    {
      v40 = 0;
    }

    v41 = 0xE000000000000000;
    if (v37)
    {
      v41 = v37;
    }

    *(v34 + 32) = v40;
    *(v34 + 40) = v41;
    v42 = v22 >> 62;
    if ((v22 >> 62) > 1)
    {
      v43 = 0;
      if (v42 != 2)
      {
        goto LABEL_21;
      }

      v45 = *(v62 + 16);
      v44 = *(v62 + 24);
      v43 = v44 - v45;
      if (!__OFSUB__(v44, v45))
      {
        goto LABEL_21;
      }

      __break(1u);
    }

    else if (!v42)
    {
      v43 = BYTE6(v22);
LABEL_21:
      v46 = objc_opt_self();

      v47 = [v46 stringFromByteCount:v43 countStyle:0];
      v48 = sub_1000CAD00();
      v50 = v49;

      *(v34 + 96) = &type metadata for String;
      *(v34 + 104) = v39;
      *(v34 + 72) = v48;
      *(v34 + 80) = v50;
      sub_100024CA4();
      v51 = sub_1000CB160();
      sub_1000CB060();
      sub_1000C9BE0();

      sub_10001F774(v62, v30);
      v52 = *(v55 + 8);
      v52(v57, v26);
      v52(v56, v26);
      v53 = v60;
      sub_100027418(v58, v60);
      v17 = v53;
      v16 = 0;
      return (*(v59 + 56))(v17, v16, 1, v61);
    }

    if (!__OFSUB__(HIDWORD(v62), v62))
    {
      v43 = HIDWORD(v62) - v62;
      goto LABEL_21;
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_10002691C()
{
  sub_1000CB5C0();
  sub_1000CB5D0(0);
  return sub_1000CB5F0();
}

Swift::Int sub_100026988()
{
  sub_1000CB5C0();
  sub_1000CB5D0(0);
  return sub_1000CB5F0();
}

uint64_t sub_1000269E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656D614E656C6966 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1000CB530();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100026A74(uint64_t a1)
{
  v2 = sub_100027B10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100026AB0(uint64_t a1)
{
  v2 = sub_100027B10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100026AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100019558(&qword_10011E0D8);
  __chkstk_darwin(v4 - 8);
  v6 = &v17[-v5];
  v7 = sub_1000CB360();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000CB350();
  result = (*(v8 + 48))(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    if (*(a1 + 16) && (v12 = sub_10003D858(v10), (v13 & 1) != 0))
    {
      sub_100027BB8(*(a1 + 56) + 32 * v12, v17);
      (*(v8 + 8))(v10, v7);
      v14 = sub_1000C9480();
      v15 = swift_dynamicCast();
      return (*(*(v14 - 8) + 56))(a2, v15 ^ 1u, 1, v14);
    }

    else
    {
      (*(v8 + 8))(v10, v7);
      v16 = sub_1000C9480();
      return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
    }
  }

  return result;
}

uint64_t sub_100026D48(void *a1, UIImage *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v54 = a5;
  v46 = a4;
  v49 = a3;
  v50 = a2;
  v6 = sub_1000C93B0();
  v43 = *(v6 - 8);
  v44 = v6;
  __chkstk_darwin(v6);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100019558(&qword_10011E108);
  v47 = *(v8 - 8);
  v48 = v8;
  __chkstk_darwin(v8);
  v51 = &v40 - v9;
  v10 = sub_100019558(&unk_10011E590);
  __chkstk_darwin(v10 - 8);
  v12 = &v40 - v11;
  v13 = sub_1000C9480();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v40 - v18;
  sub_10001E2E4(a1, a1[3]);
  v20 = sub_1000CB620();
  sub_100026AEC(v20, v12);

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10001E3D8(v12);
    sub_100027ABC();
    v21 = swift_allocError();
    *v22 = 0;
    result = swift_willThrow();
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
    v24 = UIImagePNGRepresentation(v50);
    v25 = v19;
    if (v24)
    {
      v26 = v24;
      v41 = sub_1000C94B0();
      v50 = v27;

      sub_10001E2E4(a1, a1[3]);
      sub_100027B10();
      v28 = v19;
      sub_1000CB630();
      v52 = v49;
      v53 = v46;
      v29 = v42;
      v30 = v43;
      v31 = v44;
      (*(v43 + 104))(v42, enum case for URL.DirectoryHint.notDirectory(_:), v44);
      sub_100027B64();

      sub_1000C9470();
      v32 = v41;
      (*(v30 + 8))(v29, v31);
      v33 = v50;

      v34 = v45;
      sub_1000C94C0();
      v21 = v34;
      if (!v34)
      {
        v45 = v28;
        v37 = v48;
        v38 = v51;
        sub_1000CB4B0();
        sub_10001F774(v32, v33);
        v39 = *(v14 + 8);
        v39(v17, v13);
        (*(v47 + 8))(v38, v37);
        return (v39)(v45, v13);
      }

      sub_10001F774(v32, v33);
      v35 = *(v14 + 8);
      v35(v17, v13);
      (*(v47 + 8))(v51, v48);
      result = (v35)(v28, v13);
    }

    else
    {
      sub_100027ABC();
      v21 = swift_allocError();
      *v36 = 2;
      swift_willThrow();
      result = (*(v14 + 8))(v25, v13);
    }
  }

  *v54 = v21;
  return result;
}

void (*sub_1000272BC@<X0>(void *a1@<X0>, void (**a2)(char *, uint64_t)@<X8>))(char *, uint64_t)
{
  result = sub_100027590(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void sub_1000272EC(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = objc_autoreleasePoolPush();
  sub_100026D48(a1, v3, v4, v5, &v7);
  objc_autoreleasePoolPop(v6);
}

uint64_t *sub_100027370(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000273D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NewsTimelineEntry();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100027418(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsTimelineEntry();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_10002748C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000274A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000274E8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_10002753C()
{
  result = qword_10011E0E8;
  if (!qword_10011E0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E0E8);
  }

  return result;
}

void (*sub_100027590(void *a1))(char *, uint64_t)
{
  v29 = sub_1000C93B0();
  v26 = *(v29 - 1);
  __chkstk_darwin(v29);
  v27 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100019558(&qword_10011E0F0);
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = &v24 - v4;
  v6 = sub_100019558(&unk_10011E590);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_1000C9480();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v28 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v24 - v13;
  sub_10001E2E4(a1, a1[3]);
  v15 = sub_1000CB600();
  sub_100026AEC(v15, v8);

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10001E3D8(v8);
    sub_100027ABC();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();
  }

  else
  {
    (*(v10 + 32))(v14, v8, v9);
    v15 = sub_10001E2E4(a1, a1[3]);
    sub_100027B10();
    v17 = v34;
    sub_1000CB610();
    if (v17)
    {
      (*(v10 + 8))(v14, v9);
    }

    else
    {
      v25 = sub_1000CB450();
      v32 = v25;
      v33 = v19;
      v34 = v19;
      v20 = v26;
      (*(v26 + 104))(v27, enum case for URL.DirectoryHint.notDirectory(_:), v29);
      sub_100027B64();
      sub_1000C9470();
      (*(v20 + 8))(v27, v29);
      sub_1000C9450();
      v29 = objc_allocWithZone(UIImage);
      v21 = sub_1000CACD0();

      v15 = [v29 initWithContentsOfFile:v21];

      if (v15)
      {
        v22 = *(v10 + 8);
        v22(v28, v9);
        (*(v30 + 8))(v5, v31);
        v22(v14, v9);
        sub_10001E37C(a1);
        return v15;
      }

      sub_100027ABC();
      swift_allocError();
      *v23 = 1;
      swift_willThrow();
      v15 = *(v10 + 8);
      v15(v28, v9);
      (*(v30 + 8))(v5, v31);
      v15(v14, v9);
    }
  }

  sub_10001E37C(a1);
  return v15;
}

unint64_t sub_100027ABC()
{
  result = qword_10011E0F8;
  if (!qword_10011E0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E0F8);
  }

  return result;
}

unint64_t sub_100027B10()
{
  result = qword_10011E100;
  if (!qword_10011E100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E100);
  }

  return result;
}

unint64_t sub_100027B64()
{
  result = qword_10011FAF0;
  if (!qword_10011FAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FAF0);
  }

  return result;
}

uint64_t sub_100027BB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for EntryStoreImage.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for EntryStoreImage.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_100027D08()
{
  result = qword_10011E110;
  if (!qword_10011E110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E110);
  }

  return result;
}

unint64_t sub_100027D60()
{
  result = qword_10011E118;
  if (!qword_10011E118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E118);
  }

  return result;
}

unint64_t sub_100027DB8()
{
  result = qword_10011E120;
  if (!qword_10011E120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E120);
  }

  return result;
}

unint64_t sub_100027E10()
{
  result = qword_10011E128;
  if (!qword_10011E128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E128);
  }

  return result;
}

void sub_100027E74()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  v1 = sub_1000CACD0();
  [v0 setDateFormat:v1];

  qword_10011E130 = v0;
}

id sub_100027EF4()
{
  v0 = sub_1000C9480();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = FCURLForWidgetDebugLogs();
  if (result)
  {
    v5 = result;
    sub_1000C9440();

    type metadata accessor for WidgetDebugLogStore();
    v6 = swift_allocObject();
    *(v6 + OBJC_IVAR____TtC10NewsToday219WidgetDebugLogStore_maxCountOnDisk) = 10;
    result = (*(v1 + 32))(v6 + OBJC_IVAR____TtC10NewsToday219WidgetDebugLogStore_logsDirectory, v3, v0);
    qword_100134280 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10002800C(unint64_t a1)
{
  if (FCIsWidgetDebugInspectionEnabled())
  {
    v3 = objc_autoreleasePoolPush();
    sub_1000280B0(v1, a1);

    objc_autoreleasePoolPop(v3);
  }
}

uint64_t sub_1000280B0(uint64_t a1, unint64_t a2)
{
  v46 = a2;
  v3 = sub_1000C9480();
  v44 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C95A0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() defaultManager];
  v45 = a1;
  sub_1000C93F0(&qword_10011E000);
  v12 = v11;
  v49 = 0;
  v13 = [v10 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v49];

  if (!v13)
  {
    v26 = v49;
    v25 = sub_1000C9340();

    swift_willThrow();
    goto LABEL_9;
  }

  v14 = v49;
  sub_1000C9590();
  v49 = 0;
  v50 = 0xE000000000000000;
  sub_1000CB280(37);

  v49 = 0xD000000000000017;
  v50 = 0x80000001000E27A0;
  sub_1000C9560();
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v15 < 9.22337204e18)
  {
    v43 = v3;
    v48 = v15;
    v51._countAndFlagsBits = sub_1000CB520();
    sub_1000CADD0(v51);

    v52._countAndFlagsBits = 45;
    v52._object = 0xE100000000000000;
    sub_1000CADD0(v52);
    if (qword_10011CD48 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  swift_once();
LABEL_6:
  v16 = qword_10011E130;
  isa = sub_1000C94F0().super.isa;
  v18 = [v16 stringFromDate:isa];

  v19 = sub_1000CAD00();
  v21 = v20;

  v53._countAndFlagsBits = v19;
  v53._object = v21;
  sub_1000CADD0(v53);

  v54._countAndFlagsBits = 0x697A2E6E6F736A2ELL;
  v54._object = 0xE900000000000070;
  sub_1000CADD0(v54);
  v22 = v47;
  v23 = sub_1000CA9C0();
  v25 = v22;
  if (v22)
  {
    (*(v7 + 8))(v9, v6);

LABEL_9:
    sub_1000CB040();
    sub_100019558(&unk_10011E820);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1000D3410;
    v49 = 0;
    v50 = 0xE000000000000000;
    v48 = v25;
    sub_100019558(&unk_10011F8D0);
    sub_1000CB340();
    v28 = v49;
    v29 = v50;
    *(v27 + 56) = &type metadata for String;
    *(v27 + 64) = sub_100024C50();
    *(v27 + 32) = v28;
    *(v27 + 40) = v29;
    sub_100024CA4();
    v30 = sub_1000CB160();
    sub_1000C9BE0();
  }

  v46 = v24;
  v47 = v6;
  v42 = v23;
  v32 = sub_1000C94A0().super.isa;
  v33 = [(objc_class *)v32 fc_gzipDeflate];

  if (!v33)
  {

    sub_100028DE0();
    v25 = swift_allocError();
    swift_willThrow();
    sub_10001F774(v42, v46);
    (*(v7 + 8))(v9, v47);
    goto LABEL_9;
  }

  v41 = sub_1000C94B0();
  v35 = v34;

  sub_1000C9420();
  v36 = v35;
  v37 = v41;

  sub_1000C94C0();
  v38 = (v7 + 8);
  v39 = v47;
  (*(v44 + 8))(v5, v43);
  sub_1000286E4();
  sub_10001F774(v42, v46);
  sub_10001F774(v37, v36);
  return (*v38)(v9, v39);
}

uint64_t sub_1000286E4()
{
  v0 = sub_1000C9480();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  v5 = &selRef_defaultConfiguration;
  v6 = [v4 defaultManager];
  sub_1000C93F0(OBJC_IVAR____TtC10NewsToday219WidgetDebugLogStore_logsDirectory);
  v8 = v7;
  v52 = 0;
  v9 = [v6 contentsOfDirectoryAtURL:v7 includingPropertiesForKeys:0 options:4 error:&v52];

  v10 = v52;
  if (v9)
  {
    v11 = sub_1000CAED0();
    v12 = v10;

    v52 = v11;

    v10 = 0;
    sub_100028E34(&v52);

    v13 = v52;
    if (*(v52 + 2) < 0xBuLL)
    {
    }

    else
    {
      v14 = v1 + 32;
      v50 = (v1 + 8);
      v46 = xmmword_1000D3D20;
      v47 = v3;
      do
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v16 = v13[2];
          if (!v16)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v13 = sub_10002AA2C(v13);
          v16 = v13[2];
          if (!v16)
          {
LABEL_11:
            __break(1u);
            goto LABEL_12;
          }
        }

        v17 = v16 - 1;
        v18 = v13 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v17;
        v13[2] = v17;
        (*(v1 + 32))(v3, v18, v0);
        v19 = [v4 v5[195]];
        sub_1000C93F0(v20);
        v22 = v21;
        v52 = 0;
        v23 = [v19 removeItemAtURL:v21 error:&v52];

        if (v23)
        {
          v10 = *v50;
          v15 = v52;
          v10(v3, v0);
        }

        else
        {
          v24 = v52;
          v48 = sub_1000C9340();

          swift_willThrow();
          v49 = sub_1000CB040();
          sub_100019558(&unk_10011E820);
          v25 = swift_allocObject();
          *(v25 + 16) = v46;
          sub_10002AA40();
          v26 = sub_1000CB520();
          v27 = v13;
          v28 = v14;
          v29 = v5;
          v31 = v30;
          *(v25 + 56) = &type metadata for String;
          v32 = v1;
          v33 = v4;
          v34 = v0;
          v35 = sub_100024C50();
          *(v25 + 64) = v35;
          *(v25 + 32) = v26;
          *(v25 + 40) = v31;
          v5 = v29;
          v14 = v28;
          v13 = v27;
          v52 = 0;
          v53 = 0xE000000000000000;
          v10 = v48;
          v51 = v48;
          sub_100019558(&unk_10011F8D0);
          sub_1000CB340();
          v36 = v52;
          v37 = v53;
          *(v25 + 96) = &type metadata for String;
          *(v25 + 104) = v35;
          v0 = v34;
          v4 = v33;
          v1 = v32;
          v3 = v47;
          *(v25 + 72) = v36;
          *(v25 + 80) = v37;
          sub_100024CA4();
          v38 = sub_1000CB160();
          sub_1000C9BE0();

          (*v50)(v3, v0);
        }
      }

      while (v13[2] > 0xAuLL);
    }
  }

  else
  {
LABEL_12:
    v39 = v10;
    v40 = sub_1000C9340();

    swift_willThrow();
    sub_1000CB040();
    sub_100019558(&unk_10011E820);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1000D3410;
    v52 = 0;
    v53 = 0xE000000000000000;
    v51 = v40;
    sub_100019558(&unk_10011F8D0);
    sub_1000CB340();
    v42 = v52;
    v43 = v53;
    *(v41 + 56) = &type metadata for String;
    *(v41 + 64) = sub_100024C50();
    *(v41 + 32) = v42;
    *(v41 + 40) = v43;
    sub_100024CA4();
    v44 = sub_1000CB160();
    sub_1000C9BE0();
  }
}

uint64_t sub_100028C54()
{
  v1 = OBJC_IVAR____TtC10NewsToday219WidgetDebugLogStore_logsDirectory;
  v2 = sub_1000C9480();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WidgetDebugLogStore()
{
  result = qword_10011E170;
  if (!qword_10011E170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100028D44()
{
  result = sub_1000C9480();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_100028DE0()
{
  result = qword_10011E200;
  if (!qword_10011E200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E200);
  }

  return result;
}

Swift::Int sub_100028E34(void **a1)
{
  v2 = *(sub_1000C9480() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10002AAE8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100028EDC(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_100028EDC(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_1000CB510(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000C9480();
        v6 = sub_1000CAF20();
        v6[2] = v5;
      }

      v7 = *(sub_1000C9480() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10002939C(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100029008(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100029008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_100019558(&qword_10011E208);
  __chkstk_darwin(v8 - 8);
  v55 = &v39 - v9;
  v10 = sub_1000C9480();
  v11 = __chkstk_darwin(v10);
  v49 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v54 = &v39 - v14;
  result = __chkstk_darwin(v13);
  v53 = &v39 - v17;
  v41 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v20 = *(v16 + 16);
    v19 = v16 + 16;
    v21 = *(v19 + 56);
    v50 = (v19 - 8);
    v51 = v20;
    v52 = v19;
    v47 = (v19 + 16);
    v48 = v18;
    v22 = v18 + v21 * (a3 - 1);
    v46 = -v21;
    v23 = a1 - a3;
    v40 = v21;
    v24 = v18 + v21 * a3;
    v60 = v10;
LABEL_5:
    v44 = v22;
    v45 = a3;
    v42 = v24;
    v43 = v23;
    v25 = v22;
    while (1)
    {
      v26 = v53;
      v27 = v51;
      v51(v53, v24, v10);
      v28 = v54;
      v27(v54, v25, v60);
      v58 = sub_1000C93E0();
      v59 = v29;
      v56 = sub_1000C93E0();
      v57 = v30;
      v31 = sub_1000C9610();
      v32 = v55;
      (*(*(v31 - 8) + 56))(v55, 1, 1, v31);
      sub_100027B64();
      v33 = sub_1000CB1C0();
      sub_10002AAFC(v32);

      v34 = *v50;
      v35 = v28;
      v10 = v60;
      (*v50)(v35, v60);
      result = v34(v26, v10);
      if (v33 != 1)
      {
LABEL_4:
        a3 = v45 + 1;
        v22 = v44 + v40;
        v23 = v43 - 1;
        v24 = v42 + v40;
        if (v45 + 1 == v41)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v48)
      {
        break;
      }

      v36 = *v47;
      v37 = v49;
      (*v47)(v49, v24, v10);
      swift_arrayInitWithTakeFrontToBack();
      result = (v36)(v25, v37, v10);
      v25 += v46;
      v24 += v46;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10002939C(unint64_t *a1, uint64_t a2, char **a3, unint64_t a4)
{
  v5 = v4;
  v129 = a1;
  v8 = sub_100019558(&qword_10011E208);
  __chkstk_darwin(v8 - 8);
  v150 = &v125 - v9;
  v10 = sub_1000C9480();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v132 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v143 = &v125 - v15;
  v16 = __chkstk_darwin(v14);
  v149 = &v125 - v17;
  result = __chkstk_darwin(v16);
  v151 = &v125 - v19;
  v20 = a3[1];
  if (v20 < 1)
  {
    v23 = a3;
    v22 = &_swiftEmptyArrayStorage;
LABEL_95:
    a4 = *v129;
    if (!*v129)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_127:
      result = sub_10002A814(v22);
      v22 = result;
    }

    v156 = v22;
    v120 = *(v22 + 16);
    if (v120 >= 2)
    {
      while (*v23)
      {
        v121 = *(v22 + 16 * v120);
        v122 = v22;
        v123 = *(v22 + 16 * (v120 - 1) + 32);
        v22 = *(v22 + 16 * (v120 - 1) + 40);
        sub_10002A028(&(*v23)[v11[9] * v121], &(*v23)[v11[9] * v123], &(*v23)[v11[9] * v22], a4);
        if (v5)
        {
        }

        if (v22 < v121)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v122 = sub_10002A814(v122);
        }

        if (v120 - 2 >= *(v122 + 2))
        {
          goto LABEL_121;
        }

        v124 = &v122[16 * v120];
        *v124 = v121;
        *(v124 + 1) = v22;
        v156 = v122;
        result = sub_10002A788(v120 - 1);
        v22 = v156;
        v120 = *(v156 + 16);
        if (v120 <= 1)
        {
        }
      }

      goto LABEL_131;
    }
  }

  v126 = a4;
  v21 = 0;
  v146 = (v11 + 1);
  v147 = v11 + 2;
  v145 = (v11 + 4);
  v22 = &_swiftEmptyArrayStorage;
  v23 = a3;
  v131 = a3;
  v139 = v11;
  v148 = v10;
  while (1)
  {
    if (v21 + 1 >= v20)
    {
      v39 = v21 + 1;
    }

    else
    {
      v140 = v20;
      v127 = v22;
      v128 = v5;
      v24 = v11[9];
      v25 = &(*v23)[v24 * (v21 + 1)];
      v144 = *v23;
      v26 = v144;
      v27 = v11[2];
      a4 = v25;
      (v27)(v151);
      v28 = &v26[v24 * v21];
      v29 = v149;
      v138 = v27;
      (v27)(v149, v28, v10);
      v30 = sub_1000C93E0();
      v130 = v21;
      v154 = v30;
      v155 = v31;
      v152 = sub_1000C93E0();
      v153 = v32;
      v33 = sub_1000C9610();
      v34 = *(v33 - 8);
      v35 = v150;
      v136 = *(v34 + 56);
      v137 = v33;
      v135 = v34 + 56;
      (v136)(v150, 1, 1);
      v134 = sub_100027B64();
      v141 = sub_1000CB1C0();
      sub_10002AAFC(v35);

      v36 = v11[1];
      v36(v29, v10);
      v133 = v36;
      result = (v36)(v151, v10);
      v37 = v130 + 2;
      v142 = v24;
      v38 = &v144[v24 * (v130 + 2)];
      while (1)
      {
        v39 = v140;
        if (v140 == v37)
        {
          break;
        }

        LODWORD(v144) = v141 == 1;
        v40 = v148;
        v41 = v138;
        v138();
        v42 = v149;
        (v41)(v149, a4, v40);
        v154 = sub_1000C93E0();
        v155 = v43;
        v152 = sub_1000C93E0();
        v153 = v44;
        v45 = v150;
        (v136)(v150, 1, 1, v137);
        v46 = sub_1000CB1C0();
        sub_10002AAFC(v45);

        v47 = v133;
        v133(v42, v40);
        result = v47(v151, v40);
        ++v37;
        v38 = &v142[v38];
        a4 += v142;
        if (((v144 ^ (v46 != 1)) & 1) == 0)
        {
          v39 = v37 - 1;
          break;
        }
      }

      v5 = v128;
      v23 = v131;
      v11 = v139;
      v22 = v127;
      v10 = v148;
      v21 = v130;
      if (v141 == 1)
      {
        if (v39 < v130)
        {
          goto LABEL_124;
        }

        if (v130 < v39)
        {
          v48 = v39;
          v49 = v142 * (v39 - 1);
          v50 = v39 * v142;
          v140 = v39;
          v51 = v130;
          v52 = v130 * v142;
          do
          {
            if (v51 != --v48)
            {
              v53 = *v23;
              if (!v53)
              {
                goto LABEL_130;
              }

              a4 = &v53[v52];
              v54 = *v145;
              (*v145)(v132, &v53[v52], v10);
              if (v52 < v49 || a4 >= &v53[v50])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v52 != v49)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v54)(&v53[v49], v132, v10);
              v23 = v131;
              v11 = v139;
            }

            ++v51;
            v49 -= v142;
            v50 -= v142;
            v52 += v142;
          }

          while (v51 < v48);
          v5 = v128;
          v22 = v127;
          v21 = v130;
          v39 = v140;
        }
      }
    }

    v55 = v23[1];
    if (v39 < v55)
    {
      if (__OFSUB__(v39, v21))
      {
        goto LABEL_123;
      }

      if (v39 - v21 < v126)
      {
        if (__OFADD__(v21, v126))
        {
          goto LABEL_125;
        }

        if (v21 + v126 >= v55)
        {
          a4 = v23[1];
        }

        else
        {
          a4 = v21 + v126;
        }

        if (a4 < v21)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (v39 != a4)
        {
          break;
        }
      }
    }

    a4 = v39;
    if (v39 < v21)
    {
      goto LABEL_122;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    v135 = a4;
    if ((result & 1) == 0)
    {
      result = sub_10002A928(0, *(v22 + 16) + 1, 1, v22);
      v22 = result;
    }

    a4 = *(v22 + 16);
    v56 = *(v22 + 24);
    v57 = a4 + 1;
    if (a4 >= v56 >> 1)
    {
      result = sub_10002A928((v56 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 16) = v57;
    v58 = v22 + 16 * a4;
    v59 = v135;
    *(v58 + 32) = v21;
    *(v58 + 40) = v59;
    if (!*v129)
    {
      goto LABEL_132;
    }

    if (a4)
    {
      v11 = *v129;
      while (1)
      {
        a4 = v57 - 1;
        if (v57 >= 4)
        {
          break;
        }

        if (v57 == 3)
        {
          v60 = *(v22 + 32);
          v61 = *(v22 + 40);
          v70 = __OFSUB__(v61, v60);
          v62 = v61 - v60;
          v63 = v70;
LABEL_53:
          if (v63)
          {
            goto LABEL_111;
          }

          v76 = (v22 + 16 * v57);
          v78 = *v76;
          v77 = v76[1];
          v79 = __OFSUB__(v77, v78);
          v80 = v77 - v78;
          v81 = v79;
          if (v79)
          {
            goto LABEL_114;
          }

          v82 = (v22 + 32 + 16 * a4);
          v84 = *v82;
          v83 = v82[1];
          v70 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v70)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v80, v85))
          {
            goto LABEL_118;
          }

          if (v80 + v85 >= v62)
          {
            if (v62 < v85)
            {
              a4 = v57 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v86 = (v22 + 16 * v57);
        v88 = *v86;
        v87 = v86[1];
        v70 = __OFSUB__(v87, v88);
        v80 = v87 - v88;
        v81 = v70;
LABEL_67:
        if (v81)
        {
          goto LABEL_113;
        }

        v89 = v22 + 16 * a4;
        v91 = *(v89 + 32);
        v90 = *(v89 + 40);
        v70 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v70)
        {
          goto LABEL_116;
        }

        if (v92 < v80)
        {
          goto LABEL_3;
        }

LABEL_74:
        v97 = a4 - 1;
        if (a4 - 1 >= v57)
        {
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (!*v23)
        {
          goto LABEL_129;
        }

        v98 = *(v22 + 32 + 16 * v97);
        v99 = *(v22 + 32 + 16 * a4 + 8);
        sub_10002A028(&(*v23)[v139[9] * v98], &(*v23)[v139[9] * *(v22 + 32 + 16 * a4)], &(*v23)[v139[9] * v99], v11);
        if (v5)
        {
        }

        if (v99 < v98)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_10002A814(v22);
        }

        if (v97 >= *(v22 + 16))
        {
          goto LABEL_108;
        }

        v100 = v22 + 16 * v97;
        *(v100 + 32) = v98;
        *(v100 + 40) = v99;
        v156 = v22;
        result = sub_10002A788(a4);
        v22 = v156;
        v57 = *(v156 + 16);
        if (v57 <= 1)
        {
          goto LABEL_3;
        }
      }

      v64 = v22 + 32 + 16 * v57;
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_109;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_110;
      }

      v71 = (v22 + 16 * v57);
      v73 = *v71;
      v72 = v71[1];
      v70 = __OFSUB__(v72, v73);
      v74 = v72 - v73;
      if (v70)
      {
        goto LABEL_112;
      }

      v70 = __OFADD__(v62, v74);
      v75 = v62 + v74;
      if (v70)
      {
        goto LABEL_115;
      }

      if (v75 >= v67)
      {
        v93 = (v22 + 32 + 16 * a4);
        v95 = *v93;
        v94 = v93[1];
        v70 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v70)
        {
          goto LABEL_119;
        }

        if (v62 < v96)
        {
          a4 = v57 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v20 = v23[1];
    v21 = v135;
    v11 = v139;
    if (v135 >= v20)
    {
      goto LABEL_95;
    }
  }

  v127 = v22;
  v128 = v5;
  v101 = *v23;
  v102 = v11[9];
  v144 = v11[2];
  v103 = &v101[v102 * (v39 - 1)];
  v141 = -v102;
  v130 = v21;
  v11 = (v21 - v39);
  v142 = v101;
  v134 = v102;
  v104 = &v101[v39 * v102];
  v135 = a4;
LABEL_86:
  v140 = v39;
  v136 = v104;
  v137 = v11;
  v105 = v104;
  v138 = v103;
  v106 = v103;
  while (1)
  {
    v107 = v151;
    v108 = v144;
    (v144)(v151, v105, v10);
    v109 = v149;
    v108(v149, v106, v10);
    v154 = sub_1000C93E0();
    v155 = v110;
    v152 = sub_1000C93E0();
    v153 = v111;
    v112 = sub_1000C9610();
    v113 = v150;
    (*(*(v112 - 8) + 56))(v150, 1, 1, v112);
    sub_100027B64();
    v114 = sub_1000CB1C0();
    v115 = v113;
    v10 = v148;
    sub_10002AAFC(v115);

    v116 = *v146;
    (*v146)(v109, v10);
    result = v116(v107, v10);
    if (v114 != 1)
    {
LABEL_85:
      v39 = v140 + 1;
      v103 = (v138 + v134);
      v11 = (v137 - 1);
      a4 = v135;
      v104 = &v136[v134];
      if (v140 + 1 != v135)
      {
        goto LABEL_86;
      }

      v5 = v128;
      v23 = v131;
      v22 = v127;
      v21 = v130;
      if (v135 < v130)
      {
        goto LABEL_122;
      }

      goto LABEL_33;
    }

    if (!v142)
    {
      break;
    }

    v117 = *v145;
    v118 = v143;
    (*v145)(v143, v105, v10);
    swift_arrayInitWithTakeFrontToBack();
    v117(v106, v118, v10);
    v106 = (v106 + v141);
    v105 += v141;
    v119 = __CFADD__(v11, 1);
    v11 = (v11 + 1);
    if (v119)
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
  return result;
}

uint64_t sub_10002A028(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_100019558(&qword_10011E208);
  __chkstk_darwin(v8 - 8);
  v65 = &v56 - v9;
  v69 = sub_1000C9480();
  v10 = *(v69 - 8);
  v11 = __chkstk_darwin(v69);
  v64 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v67 = &v56 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v18 = (a2 - a1) / v16;
  v76 = a1;
  v75 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v38 = a4 + v20;
    if (v20 >= 1)
    {
      v39 = -v16;
      v59 = (v10 + 8);
      v60 = (v10 + 16);
      v40 = v38;
      v58 = a4;
      v68 = a1;
      v61 = -v16;
      while (2)
      {
        while (1)
        {
          v56 = v38;
          v41 = a2;
          v42 = a2 + v39;
          v62 = v41;
          v63 = v42;
          while (1)
          {
            if (v41 <= a1)
            {
              v76 = v41;
              v74 = v56;
              goto LABEL_59;
            }

            v44 = a3;
            v57 = v38;
            v66 = a3 + v39;
            v45 = v40 + v39;
            v46 = *v60;
            v47 = v69;
            (*v60)();
            v48 = v64;
            (v46)(v64, v42, v47);
            v72 = sub_1000C93E0();
            v73 = v49;
            v70 = sub_1000C93E0();
            v71 = v50;
            v51 = sub_1000C9610();
            v52 = v65;
            (*(*(v51 - 8) + 56))(v65, 1, 1, v51);
            sub_100027B64();
            v53 = sub_1000CB1C0();
            sub_10002AAFC(v52);

            v54 = *v59;
            (*v59)(v48, v47);
            v54(v67, v47);
            if (v53 == 1)
            {
              break;
            }

            v38 = v45;
            a3 = v66;
            if (v44 < v40 || v66 >= v40)
            {
              swift_arrayInitWithTakeFrontToBack();
              v42 = v63;
              v43 = v58;
              a1 = v68;
              v39 = v61;
            }

            else
            {
              v42 = v63;
              v43 = v58;
              a1 = v68;
              v39 = v61;
              if (v44 != v40)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v40 = v45;
            v41 = v62;
            if (v45 <= v43)
            {
              a2 = v62;
              goto LABEL_58;
            }
          }

          a3 = v66;
          if (v44 < v62 || v66 >= v62)
          {
            break;
          }

          a2 = v63;
          v38 = v57;
          v55 = v58;
          a1 = v68;
          v39 = v61;
          if (v44 != v62)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v40 <= v55)
          {
            goto LABEL_58;
          }
        }

        a2 = v63;
        swift_arrayInitWithTakeFrontToBack();
        v38 = v57;
        a1 = v68;
        v39 = v61;
        if (v40 > v58)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v76 = a2;
    v74 = v38;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = a4 + v19;
    v74 = a4 + v19;
    if (v19 >= 1 && a2 < a3)
    {
      v22 = *(v10 + 16);
      v61 = v16;
      v62 = v10 + 16;
      v59 = (v10 + 8);
      v60 = v22;
      v66 = a3;
      v23 = v64;
      do
      {
        v68 = a1;
        v24 = v67;
        v25 = v69;
        v26 = v60;
        (v60)(v67, a2, v69);
        (v26)(v23, a4, v25);
        v72 = sub_1000C93E0();
        v73 = v27;
        v28 = a2;
        v70 = sub_1000C93E0();
        v71 = v29;
        v30 = sub_1000C9610();
        v31 = v65;
        (*(*(v30 - 8) + 56))(v65, 1, 1, v30);
        sub_100027B64();
        v32 = sub_1000CB1C0();
        sub_10002AAFC(v31);

        v33 = *v59;
        (*v59)(v23, v25);
        v33(v24, v25);
        if (v32 == 1)
        {
          v34 = v61;
          a2 += v61;
          v35 = v68;
          if (v68 < v28 || v68 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v36 = v66;
          }

          else
          {
            v36 = v66;
            if (v68 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        else
        {
          v34 = v61;
          v37 = a4 + v61;
          v35 = v68;
          if (v68 < a4 || v68 >= v37)
          {
            swift_arrayInitWithTakeFrontToBack();
            v36 = v66;
          }

          else
          {
            v36 = v66;
            if (v68 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v75 = v37;
          a4 += v34;
        }

        a1 = v35 + v34;
        v76 = a1;
      }

      while (a4 < v63 && a2 < v36);
    }
  }

LABEL_59:
  sub_10002A840(&v76, &v75, &v74, &type metadata accessor for URL);
  return 1;
}

uint64_t sub_10002A788(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10002A814(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_10002A840(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_10002A928(char *result, int64_t a2, char a3, char *a4)
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
    sub_100019558(&qword_10011E210);
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
    v10 = &_swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

unint64_t sub_10002AA40()
{
  result = qword_10011F080;
  if (!qword_10011F080)
  {
    sub_1000C9480();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F080);
  }

  return result;
}

uint64_t sub_10002AAFC(uint64_t a1)
{
  v2 = sub_100019558(&qword_10011E208);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10002ABB8()
{
  result = qword_10011E218;
  if (!qword_10011E218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E218);
  }

  return result;
}

void *sub_10002AC0C()
{
  type metadata accessor for UpdatableEntitySettingsManager();
  v0 = swift_allocObject();
  result = sub_10002AC48();
  qword_100134288 = v0;
  return result;
}

void *sub_10002AC48()
{
  if (qword_10011CD60 != -1)
  {
    swift_once();
  }

  sub_100019558(&qword_10011E4C8);
  swift_allocObject();

  v0[2] = sub_1000C96A0();
  if (qword_10011CD68 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v0[3] = sub_1000C96A0();
  if (qword_10011CD78 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v0[4] = sub_1000C96A0();
  if (qword_10011CD70 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v0[5] = sub_1000C96A0();
  if (qword_10011CD80 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v0[6] = sub_1000C96A0();
  if (qword_10011CD88 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v0[7] = sub_1000C96A0();
  if (qword_10011CD90 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v0[8] = sub_1000C96A0();
  if (qword_10011CDA0 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v0[9] = sub_1000C96A0();
  if (qword_10011CD98 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v0[10] = sub_1000C96A0();
  if (qword_10011CDB0 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v0[11] = sub_1000C96A0();
  if (qword_10011CDB8 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v0[12] = sub_1000C96A0();
  if (qword_10011CDC0 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v0[13] = sub_1000C96A0();
  if (qword_10011CDA8 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v0[14] = sub_1000C96A0();
  return v0;
}

uint64_t sub_10002B168()
{

  return v0;
}

uint64_t sub_10002B1E8()
{
  sub_10002B168();

  return swift_deallocClassInstance();
}

unint64_t sub_10002B244()
{
  result = qword_10011E4C0;
  if (!qword_10011E4C0)
  {
    type metadata accessor for UpdatableEntitySettingsManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E4C0);
  }

  return result;
}

uint64_t sub_10002B2E4()
{
  v1 = v0;
  v2 = sub_100019558(&qword_10011E578);
  __chkstk_darwin(v2 - 8);
  v4 = &v7[-v3];
  v5 = sub_1000C9C20();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_100019558(&qword_10011E580);
  swift_allocObject();
  *(v1 + 16) = sub_1000C98D0();
  sub_1000C9630();
  sub_10002B990(&qword_10011E570);
  sub_1000C9660();

  if (v7[15] == 1)
  {
    sub_1000C98C0();
    sub_1000C9630();
    v7[13] = 0;
    sub_10002B990(&qword_10011E588);
    sub_1000C96E0();
  }

  sub_1000C9630();
  swift_allocObject();
  swift_weakInit();
  sub_1000C9670();

  return v1;
}

uint64_t sub_10002B54C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000C98C0();
    sub_1000C9630();
    type metadata accessor for TodayBannerStateStore();
    sub_10002B990(&qword_10011E588);
    sub_1000C96E0();

    sub_1000CAAA0();
    sub_1000CAA90();
    sub_1000CAA70();
  }

  return result;
}

uint64_t sub_10002B624(uint64_t a1, uint64_t a2)
{
  sub_1000C98A0();
  if (!v8)
  {
    return 0;
  }

  if (*(v8 + 16) && (v4 = sub_10003D8BC(a1, a2), (v5 & 1) != 0))
  {
    v6 = *(*(v8 + 56) + 16 * v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_10002B6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000C98A0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1000A4550(a3, a4, a1, a2, isUniquelyReferenced_nonNull_native);
  sub_1000C98B0();
}

uint64_t sub_10002B774()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10002B950()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002B990(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TodayBannerStateStore();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002B9E4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100019558(&unk_10011E590);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100019558(&qword_10011E850);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10002BB34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100019558(&unk_10011E590);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100019558(&qword_10011E850);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for Section()
{
  result = qword_10011E5F8;
  if (!qword_10011E5F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002BCBC()
{
  sub_10002BE30();
  if (v0 <= 0x3F)
  {
    sub_10001F934(319, &qword_10011ED50);
    if (v1 <= 0x3F)
    {
      sub_10002BE98(319, &unk_10011E620, type metadata accessor for Item, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_10002BE98(319, &qword_100122A70, &type metadata accessor for URL, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_10002BE98(319, &unk_10011E630, &type metadata accessor for Date, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10002BE30()
{
  if (!qword_10011E608)
  {
    sub_10001F934(255, &unk_10011E610);
    v0 = sub_1000CB170();
    if (!v1)
    {
      atomic_store(v0, &qword_10011E608);
    }
  }
}

void sub_10002BE98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10002BEFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v50 = a2;
  v51 = a5;
  v52 = type metadata accessor for Item(0);
  v9 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for Item.Headline(0);
  __chkstk_darwin(v48);
  v12 = (&v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_100019558(&unk_10011E590);
  __chkstk_darwin(v13 - 8);
  v15 = &v47 - v14;
  sub_100027BB8(a1, v54);
  sub_100019558(&unk_10011E710);
  swift_dynamicCast();
  v16 = v54[6];
  sub_10002DE48(a3, v54);
  v17 = [v16 identifier];
  v18 = sub_1000CAD00();
  v20 = v19;

  if (!*(a4 + 16))
  {

    goto LABEL_5;
  }

  v21 = sub_10003D8BC(v18, v20);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
LABEL_5:
    v26 = 0;
    v25 = 0;
    goto LABEL_6;
  }

  v24 = *(a4 + 56) + 16 * v21;
  v26 = *v24;
  v25 = *(v24 + 8);
  v27 = *v24;
  v28 = v25;
LABEL_6:
  if ([swift_unknownObjectRetain() itemType] || (v53 = &OBJC_PROTOCOL___NTHeadlineProviding, (v30 = swift_dynamicCastObjCProtocolConditional()) == 0))
  {
    swift_unknownObjectRelease();
    sub_10002DEAC(v26, v25);
    swift_unknownObjectRelease();
LABEL_8:
    sub_10001E37C(v54);
    return (*(v9 + 56))(v51, 1, 1, v52);
  }

  v31 = v30;
  v47 = v5;
  swift_unknownObjectRetain();
  v32 = [v31 title];
  if (!v32)
  {
    sub_1000CB050();
    sub_100019558(&unk_10011E820);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1000D3410;
    v42 = [v31 identifier];
    v43 = sub_1000CAD00();
    v45 = v44;

    *(v41 + 56) = &type metadata for String;
    *(v41 + 64) = sub_100024C50();
    *(v41 + 32) = v43;
    *(v41 + 40) = v45;
    sub_10001F934(0, &qword_10011F5F0);
    v46 = sub_1000CB160();
    sub_1000C9BE0();
    swift_unknownObjectRelease_n();
    sub_10002DEAC(v26, v25);
    swift_unknownObjectRelease();

    goto LABEL_8;
  }

  v33 = [objc_allocWithZone(FTHeadlineRowOpenURLEngagementDescriptor) initWithHeadline:v31];
  sub_10001E2E4(v54, v54[3]);
  v34 = v33;
  sub_1000B3180(v34, v15);

  swift_unknownObjectRelease_n();
  *v12 = v31;
  v12[1] = v50;
  v35 = v48;
  sub_10002DB04(v15, v12 + *(v48 + 24), &unk_10011E590);
  v36 = (v12 + *(v35 + 28));
  *v36 = v26;
  v36[1] = v25;
  v37 = v49;
  sub_10002DEEC(v12, v49, type metadata accessor for Item.Headline);
  v38 = v52;
  swift_storeEnumTagMultiPayload();
  v39 = v37;
  v40 = v51;
  sub_10002DEEC(v39, v51, type metadata accessor for Item);
  (*(v9 + 56))(v40, 0, 1, v38);

  return sub_10001E37C(v54);
}

uint64_t sub_10002C400@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000C9480();
  v22 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  v12 = [a1 nameActionURL];
  if (v12)
  {
    v13 = v12;
    sub_1000C9440();

    (*(v22 + 32))(v11, v9, v6);
    v14 = objc_opt_self();
    sub_1000C93F0(v15);
    v17 = v16;
    v18 = [v14 engagementDescriptorWithTargetURL:v16];

    sub_10001E2E4(a2, a2[3]);
    sub_1000B3180(v18, a3);
    swift_unknownObjectRelease();
    return (*(v22 + 8))(v11, v6);
  }

  else
  {
    v20 = *(v22 + 56);

    return v20(a3, 1, 1, v6);
  }
}

uint64_t sub_10002C5EC()
{
  v1 = v0;
  v2 = *(v0 + 8);
  v3 = [v2 nameColorLight];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1000CAD00();
    v7 = v6;

    sub_10001F934(0, &unk_10011E610);
    v8._countAndFlagsBits = v5;
    v8._object = v7;
    v9.super.isa = UIColor.init(hex:)(v8).super.isa;
  }

  else if (*v0)
  {
    v9.super.isa = *v0;
  }

  else
  {
    v9.super.isa = [objc_opt_self() labelColor];
  }

  isa = v9.super.isa;
  v11 = [v2 nameColorDark];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1000CAD00();
    v15 = v14;

    sub_10001F934(0, &unk_10011E610);
    v16._countAndFlagsBits = v13;
    v16._object = v15;
    v17.super.isa = UIColor.init(hex:)(v16).super.isa;
  }

  else if (*v1)
  {
    v17.super.isa = *v1;
  }

  else
  {
    v17.super.isa = [objc_opt_self() labelColor];
  }

  v18 = v17.super.isa;
  v19 = swift_allocObject();
  *(v19 + 16) = isa;
  *(v19 + 24) = v18;
  v20 = objc_allocWithZone(UIColor);
  v26[4] = sub_10002E530;
  v26[5] = v19;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 1107296256;
  v26[2] = sub_1000712A8;
  v26[3] = &unk_10010D6D8;
  v21 = _Block_copy(v26);
  v22 = isa;
  v23 = v18;
  [v20 initWithDynamicProvider:v21];
  _Block_release(v21);

  v24 = sub_1000CA610();

  return v24;
}

id sub_10002C824@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Item(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + 16);
  if (v11[2])
  {

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v12 = v11[2];
      if (v12)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v11 = sub_10002AA98(v11);
      v12 = v11[2];
      if (v12)
      {
LABEL_4:
        v21 = (*(v8 + 80) + 32) & ~*(v8 + 80);
        v8 = *(v8 + 72) * (v12 - 1);
        sub_10002DF54(v11 + v21 + v8, type metadata accessor for Item);
        v11[2] = v12 - 1;
        *v10 = a1;
        v10[1] = a2;
        swift_storeEnumTagMultiPayload();
        a1 = v11[3];

        if (v12 <= a1 >> 1)
        {
LABEL_5:
          v11[2] = v12;
          sub_10002DEEC(v10, v11 + v21 + v8, type metadata accessor for Item);
          v13 = *v3;
          v21 = *(v3 + 8);
          v14 = type metadata accessor for Section();
          sub_10002DFB4(v3 + *(v14 + 32), a3 + *(v14 + 32), &unk_10011E590);
          v15 = *(v3 + 24);
          sub_10002DFB4(v3 + *(v14 + 36), a3 + *(v14 + 36), &qword_10011E850);
          v16 = v21;
          *a3 = v13;
          *(a3 + 8) = v16;
          *(a3 + 16) = v11;
          *(a3 + 24) = v15;
          v17 = v13;
          v18 = v21;

          return v18;
        }

LABEL_13:
        v11 = sub_10006DC84(a1 > 1, v12, 1, v11);
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  return sub_10002DB6C(v3, a3);
}

unint64_t sub_10002CA98()
{
  v1 = *v0;
  v2 = 0x6F6974636553746ELL;
  v3 = 0xD000000000000019;
  v4 = 0x69746341656D616ELL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x736D657469;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10002CB78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002E2DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10002CBAC(uint64_t a1)
{
  v2 = sub_10002D840();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002CBE8(uint64_t a1)
{
  v2 = sub_10002D840();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10002CC24(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v39 = sub_100019558(&qword_10011E850);
  __chkstk_darwin(v39);
  v40 = &v32 - v3;
  v41 = sub_100019558(&unk_10011E590);
  __chkstk_darwin(v41);
  v5 = &v32 - v4;
  v6 = sub_100019558(&qword_10011E670);
  v42 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = type metadata accessor for Section();
  __chkstk_darwin(v9);
  v11 = (&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001E2E4(a1, a1[3]);
  sub_10002D840();
  v12 = v43;
  sub_1000CB610();
  if (v12)
  {
    v15 = a1;
LABEL_4:
    sub_10001E37C(v15);
    return;
  }

  v37 = v5;
  v43 = v9;
  v13 = v11;
  v14 = v42;
  v46 = 0;
  sub_10001F720();
  sub_1000CB440();
  v36 = a1;
  if (v45 >> 60 == 15)
  {
    v16 = 0;
    goto LABEL_7;
  }

  v17 = v44;
  v18 = v45;
  sub_10001F934(0, &unk_100121BB0);
  sub_10001F934(0, &unk_10011E610);
  v19 = sub_1000CB070();
  if (!v19)
  {
    sub_10002D894();
    swift_allocError();
    *v27 = 0;
    swift_willThrow();
    sub_10002DBD0(v17, v18);
    (*(v14 + 8))(v8, v6);
    v15 = v36;
    goto LABEL_4;
  }

  v24 = v19;
  sub_10002DBD0(v17, v18);
  v16 = v24;
LABEL_7:
  v35 = v16;
  *v11 = v16;
  v46 = 1;
  sub_1000CB480();
  v20 = v8;
  v21 = v44;
  v22 = v45;
  sub_10001F934(0, &unk_100121BB0);
  sub_10001F934(0, &qword_10011ED50);
  v23 = sub_1000CB070();
  v33 = v21;
  v34 = v22;
  if (v23)
  {
    *(v13 + 8) = v23;
    sub_100019558(&qword_10011E698);
    v46 = 2;
    sub_10002D8E8();
    v25 = v20;
    sub_1000CB480();
    v26 = v33;
    *(v13 + 16) = v44;
    LOBYTE(v44) = 3;
    v29 = sub_1000CB460();
    v30 = v43;
    *(v13 + 24) = v29 & 1;
    LOBYTE(v44) = 4;
    sub_10002D99C();
    v31 = v37;
    sub_1000CB480();
    sub_10002DB04(v31, v13 + *(v30 + 32), &unk_10011E590);
    LOBYTE(v44) = 5;
    sub_10002DA50();
    sub_1000CB480();
    (*(v14 + 8))(v25, v6);
    sub_10001F774(v26, v34);
    sub_10002DB04(v40, v13 + *(v30 + 36), &qword_10011E850);
    sub_10002DB6C(v13, v38);
    sub_10001E37C(v36);
    sub_10002DF54(v13, type metadata accessor for Section);
  }

  else
  {
    sub_10002D894();
    swift_allocError();
    *v28 = 1;
    swift_willThrow();
    sub_10001F774(v33, v34);
    (*(v14 + 8))(v20, v6);
    sub_10001E37C(v36);
  }
}

uint64_t sub_10002D338(void *a1)
{
  v3 = v1;
  v5 = sub_100019558(&unk_10011E6D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - v7;
  sub_10001E2E4(a1, a1[3]);
  sub_10002D840();
  sub_1000CB630();
  v9 = *v3;
  if (*v3)
  {
    v10 = objc_opt_self();
    v32 = 0;
    v11 = v9;
    v12 = [v10 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v32];
    v13 = v32;
    if (!v12)
    {
      v19 = v13;
      sub_1000C9340();

      swift_willThrow();
      return (*(v6 + 8))(v8, v5);
    }

    v30 = v3;
    v14 = sub_1000C94B0();
    v16 = v15;

    v32 = v14;
    v33 = v16;
    v31 = 0;
    sub_10001F870();
    sub_1000CB4F0();
    if (v2)
    {
      (*(v6 + 8))(v8, v5);

      v17 = v14;
      v18 = v16;
      return sub_10001F774(v17, v18);
    }

    sub_10001F774(v14, v16);
    v3 = v30;
  }

  v20 = objc_opt_self();
  v21 = *(v3 + 8);
  v32 = 0;
  v22 = [v20 archivedDataWithRootObject:v21 requiringSecureCoding:1 error:&v32];
  v23 = v32;
  if (v22)
  {
    v30 = v3;
    v24 = sub_1000C94B0();
    v26 = v25;

    v32 = v24;
    v33 = v26;
    v31 = 1;
    sub_10001F870();
    sub_1000CB4F0();
    if (v2)
    {
      (*(v6 + 8))(v8, v5);
      v17 = v24;
      v18 = v26;
    }

    else
    {
      v32 = v24;
      v33 = v26;
      v31 = 1;
      sub_1000CB4F0();
      v32 = *(v30 + 16);
      v31 = 2;

      sub_100019558(&qword_10011E698);
      sub_10002DBE4();
      sub_1000CB4F0();

      LOBYTE(v32) = 3;
      sub_1000CB4C0();
      v29 = v26;
      type metadata accessor for Section();
      LOBYTE(v32) = 4;
      sub_100019558(&unk_10011E590);
      sub_10002DC98();
      sub_1000CB4F0();
      LOBYTE(v32) = 5;
      sub_100019558(&qword_10011E850);
      sub_10002DD4C();
      sub_1000CB4F0();
      (*(v6 + 8))(v8, v5);
      v17 = v24;
      v18 = v29;
    }

    return sub_10001F774(v17, v18);
  }

  v28 = v23;
  sub_1000C9340();

  swift_willThrow();
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_10002D840()
{
  result = qword_10011E678;
  if (!qword_10011E678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E678);
  }

  return result;
}

unint64_t sub_10002D894()
{
  result = qword_10011E690;
  if (!qword_10011E690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E690);
  }

  return result;
}

unint64_t sub_10002D8E8()
{
  result = qword_10011E6A0;
  if (!qword_10011E6A0)
  {
    sub_1000195A0(&qword_10011E698);
    sub_10002DE00(&qword_10011E6A8, type metadata accessor for Item);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E6A0);
  }

  return result;
}

unint64_t sub_10002D99C()
{
  result = qword_10011E6B0;
  if (!qword_10011E6B0)
  {
    sub_1000195A0(&unk_10011E590);
    sub_10002DE00(&qword_10011DCA0, &type metadata accessor for URL);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E6B0);
  }

  return result;
}

unint64_t sub_10002DA50()
{
  result = qword_10011E6C0;
  if (!qword_10011E6C0)
  {
    sub_1000195A0(&qword_10011E850);
    sub_10002DE00(&unk_100121BA0, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E6C0);
  }

  return result;
}

uint64_t sub_10002DB04(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100019558(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002DB6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Section();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002DBD0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10001F774(a1, a2);
  }

  return a1;
}

unint64_t sub_10002DBE4()
{
  result = qword_10011E6E0;
  if (!qword_10011E6E0)
  {
    sub_1000195A0(&qword_10011E698);
    sub_10002DE00(&qword_10011E6E8, type metadata accessor for Item);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E6E0);
  }

  return result;
}

unint64_t sub_10002DC98()
{
  result = qword_10011E6F0;
  if (!qword_10011E6F0)
  {
    sub_1000195A0(&unk_10011E590);
    sub_10002DE00(&qword_100121390, &type metadata accessor for URL);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E6F0);
  }

  return result;
}

unint64_t sub_10002DD4C()
{
  result = qword_10011E700;
  if (!qword_10011E700)
  {
    sub_1000195A0(&qword_10011E850);
    sub_10002DE00(&qword_10011E708, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E700);
  }

  return result;
}

uint64_t sub_10002DE00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002DE48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_10002DEAC(void *a1, void *a2)
{
  if (a2)
  {
  }
}

uint64_t sub_10002DEEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002DF54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002DFB4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100019558(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for Section.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Section.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10002E180()
{
  result = qword_10011E730;
  if (!qword_10011E730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E730);
  }

  return result;
}

unint64_t sub_10002E1D8()
{
  result = qword_10011E738;
  if (!qword_10011E738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E738);
  }

  return result;
}

unint64_t sub_10002E230()
{
  result = qword_10011E740;
  if (!qword_10011E740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E740);
  }

  return result;
}

unint64_t sub_10002E288()
{
  result = qword_10011E748;
  if (!qword_10011E748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E748);
  }

  return result;
}

uint64_t sub_10002E2DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001000E2AA0 == a2;
  if (v3 || (sub_1000CB530() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6974636553746ELL && a2 == 0xED0000617461446ELL || (sub_1000CB530() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_1000CB530() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001000E2AC0 == a2 || (sub_1000CB530() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69746341656D616ELL && a2 == 0xED00006C72556E6FLL || (sub_1000CB530() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000E13A0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1000CB530();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_10002E4F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002E538(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002E688(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v6 = sub_1000C96B0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1000C96C0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000CAD00();
  *v13 = sub_1000CAD00();
  v13[1] = v14;
  (*(v11 + 104))(v13, enum case for Domain.domain(_:), v10);
  (*(v7 + 104))(v9, enum case for Access.public(_:), v6);
  v16[15] = a3;
  sub_100019558(&unk_10011E750);
  swift_allocObject();
  result = sub_1000C96D0();
  *a4 = result;
  return result;
}

id sub_10002E87C()
{
  v1 = OBJC_IVAR____TtC10NewsToday216WidgetAssetStore____lazy_storage___pruneThrottler;
  v2 = *(v0 + OBJC_IVAR____TtC10NewsToday216WidgetAssetStore____lazy_storage___pruneThrottler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10NewsToday216WidgetAssetStore____lazy_storage___pruneThrottler);
  }

  else
  {
    v4 = [objc_allocWithZone(FCOperationThrottler) initWithDelegate:v0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *sub_10002E8F4()
{
  v0 = sub_1000C9480();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v37 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = [objc_opt_self() defaultManager];
  sub_1000C93F0(v4);
  v6 = v5;
  v39 = 0;
  v7 = [v3 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:0 options:4 error:&v39];

  v8 = v39;
  if (!v7)
  {
    v26 = v39;
    v27 = sub_1000C9340();

    swift_willThrow();
    v28 = PrefetchLog();
    sub_1000CB040();
    sub_100019558(&unk_10011E820);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1000D3410;
    v39 = 0;
    v40 = 0xE000000000000000;
    v38 = v27;
    sub_100019558(&unk_10011F8D0);
    sub_1000CB340();
    v30 = v39;
    v31 = v40;
    *(v29 + 56) = &type metadata for String;
    *(v29 + 64) = sub_100024C50();
    *(v29 + 32) = v30;
    *(v29 + 40) = v31;
    sub_1000C9BE0();

    return &_swiftEmptyArrayStorage;
  }

  v9 = sub_1000CAED0();
  v10 = v8;

  v11 = *(v9 + 16);
  if (!v11)
  {

    return &_swiftEmptyArrayStorage;
  }

  v39 = &_swiftEmptyArrayStorage;
  sub_100050140(0, v11, 0);
  v12 = v39;
  v14 = *(v1 + 16);
  v13 = v1 + 16;
  v15 = *(v13 + 64);
  v33 = v9;
  v16 = v9 + ((v15 + 32) & ~v15);
  v34 = *(v13 + 56);
  v35 = v14;
  v36 = v13;
  v17 = (v13 - 8);
  do
  {
    v18 = v37;
    v35(v37, v16, v0);
    v19 = sub_1000C93E0();
    v21 = v20;
    v22 = v0;
    (*v17)(v18, v0);
    v39 = v12;
    v24 = v12[2];
    v23 = v12[3];
    if (v24 >= v23 >> 1)
    {
      sub_100050140((v23 > 1), v24 + 1, 1);
      v12 = v39;
    }

    v12[2] = v24 + 1;
    v25 = &v12[2 * v24];
    v25[4] = v19;
    v25[5] = v21;
    v16 += v34;
    --v11;
    v0 = v22;
  }

  while (v11);

  return v12;
}

uint64_t sub_10002EC80@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v6 = sub_1000C9480();
  v31 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10002F3DC();
  v33 = v9;

  v34._countAndFlagsBits = 45;
  v34._object = 0xE100000000000000;
  sub_1000CADD0(v34);

  v35._countAndFlagsBits = a1;
  v35._object = a2;
  sub_1000CADD0(v35);

  v11 = v32;
  v10 = v33;
  v29 = v3;
  sub_1000C9410();
  v12 = PrefetchLog();
  sub_1000CB030();
  sub_100019558(&unk_10011E820);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000D3410;
  sub_10002AA40();
  v14 = sub_1000CB520();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100024C50();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  sub_1000C9BE0();

  v17 = [objc_opt_self() defaultManager];
  sub_1000C93F0(v18);
  v20 = v19;
  v32 = 0;
  v21 = [v17 createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:0 error:&v32];

  v23 = v32;
  if (v21)
  {
    v32 = *(v29 + OBJC_IVAR____TtC10NewsToday216WidgetAssetStore_lock);
    __chkstk_darwin(v22);
    *(&v28 - 4) = v24;
    *(&v28 - 3) = v11;
    *(&v28 - 2) = v10;
    *(&v28 - 1) = v8;
    sub_1000C97B0();
    v25 = v23;

    sub_1000C9970();
  }

  else
  {
    v27 = v32;

    sub_1000C9340();

    swift_willThrow();
  }

  return (*(v31 + 8))(v8, v6);
}

uint64_t sub_10002F018@<X0>(Swift::Int a1@<X1>, Swift::Int a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  swift_beginAccess();

  sub_100043C30(&v10, a1, a2);
  swift_endAccess();

  v8 = sub_1000C9480();
  return (*(*(v8 - 8) + 16))(a4, a3, v8);
}

uint64_t sub_10002F0E4@<X0>(uint64_t a1@<X8>)
{
  v13[5] = *&v1[OBJC_IVAR____TtC10NewsToday216WidgetAssetStore_lock];
  sub_1000C97B0();

  sub_100019558(&qword_10011E848);
  sub_1000C9970();

  v3 = *(v13[0] + 2);
  if (v3)
  {
    v12 = a1;
    v4 = sub_10006E3DC(v3, 0);
    v5 = sub_10006F4F0(v13, v4 + 4, v3, v13[0]);
    v6 = v1;

    sub_100031714();
    if (v5 != v3)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    a1 = v12;
  }

  else
  {
    v7 = v1;
    v4 = &_swiftEmptyArrayStorage;
  }

  v13[0] = v4;
  v8 = v1;
  sub_100033518(v13, v8);

  if (*(v13[0] + 2))
  {

    sub_1000C9410();

    v9 = 0;
  }

  else
  {

    v9 = 1;
  }

  v10 = sub_1000C9480();
  return (*(*(v10 - 8) + 56))(a1, v9, 1, v10);
}

uint64_t sub_10002F320@<X0>(__int128 *a1@<X1>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  v9 = *a1;
  v8 = *(a1 + 24);
  sub_100031778(&v9, v7);
  sub_1000317E8(&v8, v7);

  v5 = sub_100031EF4(v4, a1);
  sub_100031844(&v9, &unk_10011E860);
  result = sub_1000318A4(&v8);
  *a2 = v5;
  return result;
}

uint64_t sub_10002F3DC()
{
  v1 = v0;
  sub_100019558(&qword_10011E830);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000D45E0;
  v3 = v0[3];
  v4 = v0[4];
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  if (*v1)
  {
    v5 = v1[1];
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 16);

    v8 = v7(ObjectType, v5);
  }

  else
  {

    v9 = 0xE300000000000000;
    v8 = 7104878;
  }

  *(v2 + 48) = v8;
  *(v2 + 56) = v9;
  v10 = CHSWidgetFamilyDescription();
  v11 = sub_1000CAD00();
  v13 = v12;

  *(v2 + 64) = v11;
  *(v2 + 72) = v13;
  sub_100019558(&qword_10011E838);
  sub_1000307BC();
  v14 = sub_1000CAC50();

  return v14;
}

uint64_t sub_10002F528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v5 = sub_100019558(&qword_10011E850);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_1000C9310();
  v24 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000C9480();
  v11 = *(v25 - 8);
  __chkstk_darwin(v25);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C9410();
  sub_100019558(&qword_10011E858);
  inited = swift_initStackObject();
  v23 = xmmword_1000D3410;
  *(inited + 16) = xmmword_1000D3410;
  *(inited + 32) = NSURLCreationDateKey;
  v15 = NSURLCreationDateKey;
  sub_100045380(inited);
  swift_setDeallocating();
  sub_10003171C(inited + 32);
  sub_1000C93D0();
  v22 = a1;

  sub_1000C9300();
  (*(v24 + 8))(v10, v8);
  v16 = sub_1000C95A0();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v7, 1, v16) == 1)
  {
    sub_100031844(v7, &qword_10011E850);
    v18 = PrefetchLog();
    sub_1000CB040();
    sub_100019558(&unk_10011E820);
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_100024C50();
    *(v19 + 32) = v22;
    *(v19 + 40) = a2;

    sub_1000C9BE0();

    _s10NewsToday216TelemetryManagerC13lastFlushDate33_F9D4AB4E0910E2715C8CD19E0D9BCB9510Foundation0G0Vvpfi_0();
    return (*(v11 + 8))(v13, v25);
  }

  else
  {
    (*(v11 + 8))(v13, v25);
    return (*(v17 + 32))(v26, v7, v16);
  }
}

id WidgetPersonalizationConfigurationManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for WidgetAssetStore()
{
  result = qword_10011E7B0;
  if (!qword_10011E7B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002FB60()
{
  result = sub_1000C9480();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10002FC20()
{
  v0 = PrefetchLog();
  sub_1000CB040();
  sub_100019558(&unk_10011E820);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000D3410;
  v2 = sub_1000CAEE0();
  v4 = v3;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 64) = sub_100024C50();
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  sub_1000C9BE0();

  sub_1000C97B0();

  sub_1000C9970();
}

uint64_t sub_10002FD80(uint64_t a1, char *a2)
{
  v4 = 0;
  v76 = sub_1000C9480();
  *&v73 = *(v76 - 8);
  __chkstk_darwin(v76);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = &_swiftEmptySetSingleton;
  v86 = &_swiftEmptySetSingleton;
  v8 = *(a1 + 16);
  v78 = OBJC_IVAR____TtC10NewsToday216WidgetAssetStore_keysOfInterest;
  swift_beginAccess();
  v77 = a2;
  if (!v8)
  {
LABEL_24:
    v29 = PrefetchLog();
    sub_1000CB040();
    v75 = sub_100019558(&unk_10011E820);
    v30 = swift_allocObject();
    v82 = xmmword_1000D3410;
    *(v30 + 16) = xmmword_1000D3410;
    v31 = sub_1000CAFF0();
    v33 = v32;
    *(v30 + 56) = &type metadata for String;
    v74 = sub_100024C50();
    *(v30 + 64) = v74;
    *(v30 + 32) = v31;
    *(v30 + 40) = v33;
    sub_1000C9BE0();

    v34 = v78;
    swift_beginAccess();
    v35 = *&a2[v34];
    v36 = v7[2];
    v37 = v35[2];
    v72 = v7;
    if (v36 > v37 >> 3)
    {

      v38 = sub_100030C6C(v7, v35);
    }

    else
    {
      v84 = v35;

      sub_100030B40(v7);
      v38 = v84;
    }

    v39 = PrefetchLog();
    sub_1000CB040();
    v40 = swift_allocObject();
    *(v40 + 16) = v82;
    v41 = sub_1000CAFF0();
    v42 = v74;
    *(v40 + 56) = &type metadata for String;
    *(v40 + 64) = v42;
    *(v40 + 32) = v41;
    *(v40 + 40) = v43;
    sub_1000C9BE0();

    v44 = 0;
    *&v82 = v38;
    v45 = v38 + 56;
    v46 = 1 << v38[32];
    v47 = -1;
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    v48 = v47 & *(v38 + 7);
    v81 = OBJC_IVAR____TtC10NewsToday216WidgetAssetStore_directoryUrl;
    v49 = (v46 + 63) >> 6;
    v80 = (v73 + 8);
    v73 = xmmword_1000D3D20;
    if (v48)
    {
      goto LABEL_32;
    }

LABEL_33:
    while (1)
    {
      v62 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v62 >= v49)
      {

        *&a2[v78] = v72;
      }

      v48 = *&v45[8 * v62];
      ++v44;
      if (v48)
      {
        while (1)
        {
          v48 &= v48 - 1;

          sub_1000C9410();

          v63 = [objc_opt_self() defaultManager];
          sub_1000C93F0(v64);
          v66 = v65;
          v84 = 0;
          v67 = [v63 removeItemAtURL:v65 error:&v84];

          if (v67)
          {
            v68 = *v80;
            v69 = v84;
            v68(v6, v76);
            v44 = v62;
            if (!v48)
            {
              goto LABEL_33;
            }
          }

          else
          {
            v50 = v84;
            v51 = sub_1000C9340();

            swift_willThrow();
            v52 = PrefetchLog();
            LODWORD(v79) = sub_1000CB040();
            v53 = swift_allocObject();
            *(v53 + 16) = v73;
            sub_10002AA40();
            v54 = v6;
            v55 = v76;
            v56 = sub_1000CB520();
            v57 = v74;
            *(v53 + 56) = &type metadata for String;
            *(v53 + 64) = v57;
            *(v53 + 32) = v56;
            *(v53 + 40) = v58;
            v84 = 0;
            v85 = 0xE000000000000000;
            v83 = v51;
            sub_100019558(&unk_10011F8D0);
            sub_1000CB340();
            v59 = v84;
            v60 = v85;
            *(v53 + 96) = &type metadata for String;
            *(v53 + 104) = v57;
            *(v53 + 72) = v59;
            *(v53 + 80) = v60;
            sub_1000C9BE0();

            a2 = v77;

            v61 = v55;
            v6 = v54;
            (*v80)(v54, v61);
            v44 = v62;
            if (!v48)
            {
              goto LABEL_33;
            }
          }

LABEL_32:
          v62 = v44;
        }
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
  }

  v75 = v6;
  v9 = (a1 + 64);
  while (1)
  {
    v12 = *v9;
    v13 = *(v9 - 1);
    v88[0] = *(v9 - 2);
    v88[1] = v13;
    v89 = v12;
    v14 = *&v88[0];
    swift_bridgeObjectRetain_n();
    v15 = v14;

    v17 = sub_100031EF4(v16, v88);
    *&v82 = v12;

    v81 = v15;

    v18 = *(v17 + 16);
    if (v18)
    {
      v79 = 0;
      sub_100019558(&qword_10011E830);
      v19 = swift_allocObject();
      v20 = j__malloc_size(v19);
      v21 = v20 - 32;
      if (v20 < 32)
      {
        v21 = v20 - 17;
      }

      v19[2] = v18;
      v19[3] = 2 * (v21 >> 4);
      v80 = sub_10006F4F0(&v87, v19 + 4, v18, v17);
      v22 = a2;

      sub_100031714();
      if (v80 != v18)
      {
        goto LABEL_41;
      }

      a2 = v77;
      v4 = v79;
    }

    else
    {
      v23 = a2;
      v19 = &_swiftEmptyArrayStorage;
    }

    v87 = v19;
    v24 = a2;
    sub_100033518(&v87, v24);
    if (v4)
    {
      break;
    }

    v11 = v87;
    v25 = *(v87 + 2);
    if (v25 >= 2)
    {
      v26 = v25 - 2;
    }

    else
    {
      v26 = 0;
    }

    if (v25 >= 3)
    {
      v27 = v25 - v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v87 = v11;
      if (!isUniquelyReferenced_nonNull_native || v27 > *(v11 + 3) >> 1)
      {
        if (v25 <= v27)
        {
          v10 = v25 - v26;
        }

        else
        {
          v10 = v25;
        }

        v11 = sub_10006DCAC(isUniquelyReferenced_nonNull_native, v10, 1, v11);
        v87 = v11;
      }

      sub_100033620(0, v26, 0);
    }

    sub_1000335B0(v11);

    v9 += 5;
    if (!--v8)
    {
      v7 = v86;
      v6 = v75;
      goto LABEL_24;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100030600()
{
  v0 = PrefetchLog();
  sub_1000CB030();
  sub_100019558(&unk_10011E820);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000D3410;
  sub_100019558(&unk_10011F8D0);
  sub_1000CB340();
  *(v1 + 56) = &type metadata for String;
  *(v1 + 64) = sub_100024C50();
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  sub_1000C9BE0();
}

unint64_t sub_1000307BC()
{
  result = qword_10011E840;
  if (!qword_10011E840)
  {
    sub_1000195A0(&qword_10011E838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E840);
  }

  return result;
}

void *sub_100030828(void *result, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = *a4;
    v11 = *(a4 + 24);
    v12 = v8;
    sub_100031778(&v12, v10);
    sub_1000317E8(&v11, v10);
    v9 = sub_100031C2C(v7, a2, a3, a4);

    sub_100031844(&v12, &unk_10011E860);
    sub_1000318A4(&v11);
    sub_100031844(&v12, &unk_10011E860);
    sub_1000318A4(&v11);
    return v9;
  }

  return result;
}

uint64_t sub_10003091C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100019558(&qword_10011F090);
  result = sub_1000CB260();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1000CB5C0();

    sub_1000CAD90();
    result = sub_1000CB5F0();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}