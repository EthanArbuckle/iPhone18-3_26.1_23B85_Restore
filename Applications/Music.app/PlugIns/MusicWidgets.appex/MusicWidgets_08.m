void *sub_1000E0568(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  for (i = (a1 + 48); ; i += 24)
  {
    v4 = *(i - 2);
    v5 = *(i - 1);
    v6 = *i;
    v38 = v4;
    if (v6 <= 1)
    {
      if (*i)
      {
        sub_1000C5FB8();
        v17 = sub_100573C98();
        v36 = v18;
        v37 = v17;

        v14 = 0xE500000000000000;
        v13 = 0x6F54646461;
      }

      else
      {
        sub_1000E1200(v4, v5, 0);

        v14 = 0xE400000000000000;
        v36 = v5;
        v37 = v4;
        v13 = 1684957547;
      }
    }

    else if (v6 == 2)
    {
      sub_1000C5FB8();
      v15 = sub_100573C98();
      v36 = v16;
      v37 = v15;

      v14 = 0xEA00000000006D6FLL;
      v13 = 0x72466574656C6564;
    }

    else if (v6 == 3)
    {
      v7 = 0x7473696C79616C50;
      if (v4 != 2)
      {
        v7 = 0x434174726F706552;
      }

      v8 = 0xE800000000000000;
      if (v4 != 2)
      {
        v8 = 0xEE006E7265636E6FLL;
      }

      v9 = 0x6D75626C41;
      if (v4)
      {
        v9 = 0x747369747241;
      }

      v10 = 0xE500000000000000;
      if (v4)
      {
        v10 = 0xE600000000000000;
      }

      v11 = v4 <= 1u ? v9 : v7;
      v37 = v11;
      v12 = v4 <= 1u ? v10 : v8;
      v36 = v12;
      v13 = 0x657461676976616ELL;
      v14 = 0xEA00000000006F54;
    }

    else
    {
      v14 = 0xE800000000000000;
      v37 = 0x7453657461657263;
      v36 = 0xED00006E6F697461;
      v13 = 0x6570795479616C70;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = sub_1000EB89C(v13, v14);
    v22 = _swiftEmptyDictionarySingleton[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      break;
    }

    v25 = v20;
    if (_swiftEmptyDictionarySingleton[3] >= v24)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v29 = v5;
        v28 = v38;
        if (v20)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1000F084C();
        v29 = v5;
        v28 = v38;
        if (v25)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1000EC6B0(v24, isUniquelyReferenced_nonNull_native);
      v26 = sub_1000EB89C(v13, v14);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_42;
      }

      v21 = v26;
      v29 = v5;
      v28 = v38;
      if (v25)
      {
LABEL_3:

        v3 = (_swiftEmptyDictionarySingleton[7] + 16 * v21);
        *v3 = v37;
        v3[1] = v36;

        sub_1000E11EC(v28, v29, v6);
        goto LABEL_4;
      }
    }

    _swiftEmptyDictionarySingleton[(v21 >> 6) + 8] |= 1 << v21;
    v30 = (_swiftEmptyDictionarySingleton[6] + 16 * v21);
    *v30 = v13;
    v30[1] = v14;
    v31 = (_swiftEmptyDictionarySingleton[7] + 16 * v21);
    *v31 = v37;
    v31[1] = v36;
    sub_1000E11EC(v28, v29, v6);
    v32 = _swiftEmptyDictionarySingleton[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_41;
    }

    _swiftEmptyDictionarySingleton[2] = v34;
LABEL_4:
    if (!--v1)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = sub_100574578();
  __break(1u);
  return result;
}

uint64_t sub_1000E095C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_100572A58();

    return sub_100572B88();
  }

  return result;
}

unint64_t sub_1000E09F8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

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
  result = sub_100572A58();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_100572B88();
}

unint64_t sub_1000E0AA8()
{
  result = qword_1006E6440;
  if (!qword_1006E6440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E6440);
  }

  return result;
}

unint64_t sub_1000E0B00()
{
  result = qword_1006E6450;
  if (!qword_1006E6450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E6450);
  }

  return result;
}

unint64_t sub_1000E0B58()
{
  result = qword_1006E6458;
  if (!qword_1006E6458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E6458);
  }

  return result;
}

unint64_t sub_1000E0BB0()
{
  result = qword_1006E6460;
  if (!qword_1006E6460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E6460);
  }

  return result;
}

uint64_t sub_1000E0C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100009DCC(&qword_1006E6428);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1000E0D08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100009DCC(&qword_1006E6428);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

void sub_1000E0DD4()
{
  sub_100016918(319, &qword_1006E64D0);
  if (v0 <= 0x3F)
  {
    sub_1000E0F08();
    if (v1 <= 0x3F)
    {
      sub_100016918(319, &qword_1006ED410);
      if (v2 <= 0x3F)
      {
        sub_1000E0F60(319, &qword_1006E64E0, &qword_1006E64E8);
        if (v3 <= 0x3F)
        {
          sub_1000E0F60(319, &qword_1006E64F0, &qword_1006E64F8);
          if (v4 <= 0x3F)
          {
            sub_1000E0FB4();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1000E0F08()
{
  if (!qword_1006E64D8)
  {
    type metadata accessor for MetricsEvent.Page(255);
    v0 = sub_100573C28();
    if (!v1)
    {
      atomic_store(v0, &qword_1006E64D8);
    }
  }
}

void sub_1000E0F60(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_100010324(a3);
    v4 = sub_100573C28();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000E0FB4()
{
  if (!qword_1006E6500)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1006E6500);
    }
  }
}

uint64_t sub_1000E101C(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_1000E1038(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000E1080(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1000E10C4(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for MetricsEvent.Page.DisplayType(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MetricsEvent.Page.DisplayType(_WORD *result, int a2, int a3)
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

uint64_t sub_1000E11EC(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_1000E1200(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t View.actionContextMenu(title:menu:excluding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v42 = a4;
  v40 = a1;
  v41 = a2;
  v46 = a7;
  v47 = *(a5 - 8);
  v10 = __chkstk_darwin(a1);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v38 - v13;
  v15 = sub_100010324(&qword_1006E6588);
  v16 = sub_1000E16FC();
  v52 = a5;
  v53 = v15;
  v54 = a6;
  v55 = v16;
  v49 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v18 = *(OpaqueTypeMetadata2 - 8);
  v19 = __chkstk_darwin(OpaqueTypeMetadata2);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v39 = &v38 - v22;
  v23 = sub_10056F5C8();
  v44 = *(v23 - 8);
  v45 = v23;
  v24 = __chkstk_darwin(v23);
  v48 = &v38 - v25;
  if (a3)
  {
    v47 = v15;
    __chkstk_darwin(v24);
    *(&v38 - 8) = a5;
    *(&v38 - 7) = a6;
    *(&v38 - 6) = OpaqueTypeConformance2;
    *(&v38 - 5) = a3;
    v26 = v41;
    *(&v38 - 4) = v40;
    *(&v38 - 3) = v26;
    *(&v38 - 2) = v42;

    v27 = v49;
    sub_100570018();
    v52 = a5;
    v53 = v47;
    v54 = a6;
    v55 = v27;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v28 = *(v18 + 16);
    v29 = v39;
    v28(v39, v21, OpaqueTypeMetadata2);
    v30 = *(v18 + 8);
    v30(v21, OpaqueTypeMetadata2);
    v28(v21, v29, OpaqueTypeMetadata2);
    v15 = v47;
    sub_1000E19B8(v21, OpaqueTypeMetadata2);

    v30(v21, OpaqueTypeMetadata2);
    v30(v29, OpaqueTypeMetadata2);
  }

  else
  {
    v31 = v47;
    v32 = *(v47 + 16);
    v32(v14, OpaqueTypeConformance2, a5);
    v32(v12, v14, a5);
    v52 = a5;
    v53 = v15;
    v54 = a6;
    v55 = v49;
    swift_getOpaqueTypeConformance2();
    sub_1000E1AB0(v12, OpaqueTypeMetadata2, a5);
    v33 = *(v31 + 8);
    v33(v12, a5);
    v33(v14, a5);
  }

  v52 = a5;
  v53 = v15;
  v54 = a6;
  v55 = v49;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = a6;
  v34 = v45;
  swift_getWitnessTable();
  v35 = v44;
  v36 = v48;
  (*(v44 + 16))(v46, v48, v34);
  return (*(v35 + 8))(v36, v34);
}

unint64_t sub_1000E16FC()
{
  result = qword_1006E6590;
  if (!qword_1006E6590)
  {
    sub_100010324(&qword_1006E6588);
    sub_1000E1794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E6590);
  }

  return result;
}

unint64_t sub_1000E1794()
{
  result = qword_1006E6598;
  if (!qword_1006E6598)
  {
    sub_100010324(&qword_1006E65A0);
    sub_1000E6B18(&qword_1006E65A8, type metadata accessor for ActionMenuView);
    sub_100010BC0(&qword_1006E65B0, &qword_1006E65B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E6598);
  }

  return result;
}

uint64_t type metadata accessor for ActionMenuView()
{
  result = qword_1006E66F0;
  if (!qword_1006E66F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E18C8()
{

  sub_100009DCC(&qword_1006E65A0);
  sub_1000E1794();
  sub_1000C5FB8();
  return sub_100570908();
}

uint64_t sub_1000E19B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10056F5A8();
  __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_10056F5B8();
}

uint64_t sub_1000E1AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10056F5A8();
  __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_10056F5B8();
}

uint64_t View.actionContextMenu<A>(title:menu:excluding:preview:previewAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v67 = a7;
  v68 = a8;
  v65 = a5;
  v66 = a6;
  v64 = a4;
  v63 = a2;
  v62 = a1;
  v72 = a9;
  v61 = *(a10 - 8);
  v14 = __chkstk_darwin(a1);
  v16 = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v58 - v17;
  v19 = sub_100010324(&qword_1006E6588);
  v20 = sub_1000E16FC();
  v80 = a10;
  v81 = v19;
  v75 = v19;
  v76 = a11;
  v82 = a11;
  v83 = a12;
  v77 = a12;
  v74 = v20;
  v84 = v20;
  v85 = a13;
  v71 = a13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v22 = *(OpaqueTypeMetadata2 - 8);
  v23 = __chkstk_darwin(OpaqueTypeMetadata2);
  v25 = v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = v58 - v26;
  v28 = sub_10056F5C8();
  v70 = *(v28 - 8);
  v29 = __chkstk_darwin(v28);
  v69 = v58 - v30;
  if (a3)
  {
    v58[2] = v58;
    v31 = __chkstk_darwin(v29);
    v61 = v28;
    v58[1] = &v58[-12];
    v32 = v76;
    v33 = v77;
    v58[-10] = a10;
    v58[-9] = v32;
    v59 = v22;
    v60 = v27;
    v34 = v71;
    v58[-8] = v33;
    v58[-7] = v34;
    v58[-6] = v73;
    v58[-5] = a3;
    v35 = OpaqueTypeMetadata2;
    v58[3] = v36;
    __chkstk_darwin(v31);
    v58[-6] = a10;
    v58[-5] = v32;
    v37 = swift_allocObject();
    v38 = v68;
    *(v37 + 16) = v67;
    *(v37 + 24) = v38;

    v57 = v34;
    v39 = v74;
    v55 = v33;
    v56 = v74;
    v54 = v32;
    v40 = v75;
    sub_100570008();

    v80 = a10;
    v81 = v40;
    v82 = v32;
    v83 = v33;
    v84 = v39;
    v85 = v34;
    swift_getOpaqueTypeConformance2();
    v41 = v59;
    v42 = *(v59 + 16);
    v43 = v60;
    v42(v60, v25, v35);
    v44 = *(v41 + 8);
    v44(v25, v35);
    v42(v25, v43, v35);
    v45 = v69;
    v28 = v61;
    sub_1000E19B8(v25, v35);

    v44(v25, v35);
    v44(v43, v35);
  }

  else
  {
    v46 = v61;
    v47 = *(v61 + 16);
    v47(v18, v73, a10);
    v47(v16, v18, a10);
    v80 = a10;
    v81 = v75;
    v82 = v76;
    v83 = v77;
    v34 = v71;
    v84 = v74;
    v85 = v71;
    swift_getOpaqueTypeConformance2();
    v48 = v69;
    sub_1000E1AB0(v16, OpaqueTypeMetadata2, a10);
    v49 = *(v46 + 8);
    v50 = v16;
    v45 = v48;
    v49(v50, a10);
    v49(v18, a10);
  }

  v80 = a10;
  v81 = v75;
  v51 = v77;
  v82 = v76;
  v83 = v77;
  v84 = v74;
  v85 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v79 = v51;
  swift_getWitnessTable();
  v52 = v70;
  (*(v70 + 16))(v72, v45, v28);
  return (*(v52 + 8))(v45, v28);
}

uint64_t sub_1000E2268@<X0>(uint64_t a1@<X3>, char *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = (__chkstk_darwin)();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v14 - v9;
  v8();
  v11 = *(v4 + 16);
  v11(v10, v7, a1);
  v12 = *(v4 + 8);
  v12(v7, a1);
  v11(a2, v10, a1);
  return (v12)(v10, a1);
}

uint64_t sub_1000E23B8()
{

  return swift_deallocObject();
}

uint64_t sub_1000E2418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = 1;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  type metadata accessor for ActionMenuView.Excluding();
  sub_1000E6B18(&qword_1006E65D0, type metadata accessor for ActionMenuView.Excluding);

  *(a3 + 32) = sub_10056EE68();
  *(a3 + 40) = v5;
  v6 = *(type metadata accessor for ActionMenuView() + 32);
  *(a3 + v6) = swift_getKeyPath();
  sub_100009DCC(&qword_1006E67A8);
  swift_storeEnumTagMultiPayload();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;

  v8 = sub_10056E3F8();
  result = sub_100009DCC(&qword_1006E65A0);
  v10 = (a3 + *(result + 36));
  *v10 = v8;
  v10[1] = v7;
  return result;
}

uint64_t ActionMenu.menuButton<A>(title:excluding:label:onPresentationChanged:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, char *a8@<X8>, uint64_t a9)
{
  v47 = a6;
  v43 = a5;
  v48 = a4;
  v49 = a3;
  v40 = a2;
  v42 = a1;
  v53 = a8;
  v10 = sub_100570AA8();
  v51 = *(v10 - 8);
  v52 = v10;
  __chkstk_darwin(v10);
  v50 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100010324(&qword_1006E65C0);
  v41 = v12;
  v13 = sub_1000E2ABC();
  v59 = a7;
  v60 = v12;
  v61 = a9;
  v62 = v13;
  v14 = sub_10056FCB8();
  v46 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v35 - v15;
  sub_100010324(&qword_1006E65B8);
  v38 = v14;
  v17 = sub_10056ECA8();
  v36 = v17;
  v45 = *(v17 - 8);
  __chkstk_darwin(v17);
  v39 = v35 - v18;
  WitnessTable = swift_getWitnessTable();
  v35[1] = WitnessTable;
  v20 = sub_100010BC0(&qword_1006E65B0, &qword_1006E65B8);
  v57 = WitnessTable;
  v58 = v20;
  v37 = swift_getWitnessTable();
  v59 = v17;
  v60 = v37;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v22 = *(OpaqueTypeMetadata2 - 8);
  v23 = __chkstk_darwin(OpaqueTypeMetadata2);
  v25 = v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = v35 - v26;
  v54 = v42;
  v55 = v40;
  v56 = v44;

  sub_10056FC98();
  type metadata accessor for ActionMenuView.Excluding();
  *(swift_allocObject() + 16) = v49;
  sub_1000E6B18(&qword_1006E65D0, type metadata accessor for ActionMenuView.Excluding);

  v28 = v39;
  v29 = v38;
  sub_100570178();

  (*(v46 + 8))(v16, v29);
  v30 = v50;
  sub_100570A98();
  v31 = v36;
  sub_1005703D8();
  (*(v51 + 8))(v30, v52);
  (*(v45 + 8))(v28, v31);
  v32 = *(v22 + 16);
  v32(v27, v25, OpaqueTypeMetadata2);
  v33 = *(v22 + 8);
  v33(v25, OpaqueTypeMetadata2);
  v32(v53, v27, OpaqueTypeMetadata2);
  return (v33)(v27, OpaqueTypeMetadata2);
}

unint64_t sub_1000E2ABC()
{
  result = qword_1006E65C8;
  if (!qword_1006E65C8)
  {
    sub_100010324(&qword_1006E65C0);
    sub_1000E6B18(&qword_1006E65A8, type metadata accessor for ActionMenuView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E65C8);
  }

  return result;
}

uint64_t sub_1000E2B84()
{
  type metadata accessor for ActionMenuView();
  sub_1000E6B18(&qword_1006E65A8, type metadata accessor for ActionMenuView);
  sub_1000C5FB8();

  return sub_100570908();
}

uint64_t sub_1000E2C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  type metadata accessor for ActionMenuView.Excluding();
  sub_1000E6B18(&qword_1006E65D0, type metadata accessor for ActionMenuView.Excluding);

  *(a2 + 32) = sub_10056EE68();
  *(a2 + 40) = v3;
  v4 = *(type metadata accessor for ActionMenuView() + 32);
  *(a2 + v4) = swift_getKeyPath();
  sub_100009DCC(&qword_1006E67A8);

  return swift_storeEnumTagMultiPayload();
}

uint64_t WeakValuesDictionary.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000E2DB0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ActionMenuView.Excluding();
  result = sub_10056E408();
  *a1 = result;
  return result;
}

uint64_t sub_1000E2DF0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100009DCC(&qword_1006E6750);
  v93 = *(v3 - 8);
  __chkstk_darwin(v3);
  v92 = v78 - v4;
  v104 = sub_100009DCC(&qword_1006E6758);
  __chkstk_darwin(v104);
  v106 = v78 - v5;
  v105 = sub_100009DCC(&qword_1006E6760);
  __chkstk_darwin(v105);
  v100 = v78 - v6;
  v7 = sub_1005708A8();
  v96 = *(v7 - 8);
  v97 = v7;
  __chkstk_darwin(v7);
  v85 = v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100009DCC(&qword_1006E6768);
  v10 = __chkstk_darwin(v9 - 8);
  v98 = v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v99 = v78 - v12;
  v89 = sub_100009DCC(&qword_1006E6770);
  __chkstk_darwin(v89);
  v94 = v78 - v13;
  v91 = sub_10056F678();
  v83 = *(v91 - 8);
  __chkstk_darwin(v91);
  v81 = v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_100009DCC(&qword_1006E6778);
  v80 = *(v88 - 8);
  __chkstk_darwin(v88);
  v79 = v78 - v15;
  v90 = sub_100009DCC(&qword_1006E6780);
  v84 = *(v90 - 8);
  __chkstk_darwin(v90);
  v82 = v78 - v16;
  v17 = sub_100009DCC(&qword_1006E6788);
  v18 = __chkstk_darwin(v17 - 8);
  v95 = v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v102 = v78 - v20;
  v111 = sub_100009DCC(&qword_1006E6790);
  __chkstk_darwin(v111);
  v103 = v78 - v21;
  v22 = type metadata accessor for ActionMenuView();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22 - 8);
  v25 = v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_100009DCC(&qword_1006E6798);
  __chkstk_darwin(v101);
  v107 = v78 - v26;
  v109 = sub_100009DCC(&qword_1006E67A0);
  __chkstk_darwin(v109);
  v110 = v78 - v27;
  if (!v1[4])
  {
    type metadata accessor for ActionMenuView.Excluding();
    sub_1000E6B18(&qword_1006E65D0, type metadata accessor for ActionMenuView.Excluding);
    result = sub_10056EE58();
    __break(1u);
    return result;
  }

  v28 = v1;
  v29 = *v1;

  v31 = ActionMenu.elements(excluding:includeUnsupported:)(v30, 0);
  v108 = v32;
  v34 = v33;

  if (!*(v31 + 16))
  {

    (v108)(v49);
    swift_storeEnumTagMultiPayload();
    sub_1000E638C();
    sub_10056F5B8();
  }

  v86 = v3;
  v87 = a1;
  v112 = v31;
  swift_getKeyPath();
  sub_1000E5DEC(v28, v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v36 = (v24 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  sub_1000E5F9C(v25, v37 + v35);
  *(v37 + v36) = v31;
  swift_bridgeObjectRetain_n();
  sub_100009DCC(&qword_1006E67B0);
  sub_100009DCC(&qword_1006E67B8);
  sub_100010BC0(&qword_1006E67C0, &qword_1006E67B0);
  sub_1000E60AC();
  v38 = v107;
  sub_1005708B8();
  v39 = swift_allocObject();
  *(v39 + 16) = v108;
  *(v39 + 24) = v34;
  v40 = (v38 + *(v101 + 36));
  *v40 = sub_1000E6D8C;
  v40[1] = v39;
  v40[2] = 0;
  v40[3] = 0;
  v41 = *(v29 + 32);

  v42 = v34;
  if ((MenuType.style.getter(v41) & 1) == 0)
  {
    v108 = v28;
    v51 = *(v31 + 16);
    v52 = *(v29 + 32);

    if (MenuType.rawValue.getter(v52) == 0x7463416B63697571 && v53 == 0xEB000000006E6F69)
    {

      if (v51 <= 1)
      {
LABEL_13:
        sub_10000CC8C(v38, v94, &qword_1006E6798);
        swift_storeEnumTagMultiPayload();
        v65 = sub_100010BC0(&qword_1006E6828, &qword_1006E6778);
        v66 = sub_1000E6B18(&qword_1006E6830, &type metadata accessor for MenuControlGroupStyle);
        v112 = v88;
        v113 = v91;
        v114 = v65;
        v115 = v66;
        swift_getOpaqueTypeConformance2();
        sub_1000E627C();
        sub_10056F5B8();
        goto LABEL_14;
      }
    }

    else
    {
      v55 = sub_100574498();

      if ((v55 & 1) == 0 || v51 < 2)
      {
        goto LABEL_13;
      }
    }

    __chkstk_darwin(v54);
    v93 = sub_1000E627C();
    v56 = v79;
    sub_10056E798();
    v57 = v81;
    sub_10056F668();
    v58 = sub_100010BC0(&qword_1006E6828, &qword_1006E6778);
    v59 = sub_1000E6B18(&qword_1006E6830, &type metadata accessor for MenuControlGroupStyle);
    v60 = v82;
    v61 = v88;
    v62 = v91;
    sub_100570168();
    (*(v83 + 8))(v57, v62);
    (*(v80 + 8))(v56, v61);
    v63 = v84;
    v64 = v90;
    (*(v84 + 16))(v94, v60, v90);
    swift_storeEnumTagMultiPayload();
    v112 = v61;
    v113 = v62;
    v114 = v58;
    v115 = v59;
    swift_getOpaqueTypeConformance2();
    sub_10056F5B8();
    (*(v63 + 8))(v60, v64);
LABEL_14:
    v68 = v96;
    v67 = v97;
    v69 = *(v108 + 8) == 1;
    v70 = v99;
    v78[1] = v42;
    if (v69)
    {
      v71 = v85;
      sub_100570898();
      (*(v68 + 32))(v70, v71, v67);
      v72 = 0;
    }

    else
    {
      v72 = 1;
    }

    (*(v68 + 56))(v70, v72, 1, v67);
    v73 = v102;
    v74 = v95;
    sub_10000CC8C(v102, v95, &qword_1006E6788);
    v75 = v98;
    sub_10000CC8C(v70, v98, &qword_1006E6768);
    v76 = v100;
    sub_10000CC8C(v74, v100, &qword_1006E6788);
    v77 = sub_100009DCC(&qword_1006E6838);
    sub_10000CC8C(v75, v76 + *(v77 + 48), &qword_1006E6768);
    sub_10001036C(v75, &qword_1006E6768);
    sub_10001036C(v74, &qword_1006E6788);
    sub_10000CC8C(v76, v106, &qword_1006E6760);
    swift_storeEnumTagMultiPayload();
    sub_100010BC0(&qword_1006E6810, &qword_1006E6760);
    sub_100010BC0(&qword_1006E6818, &qword_1006E6750);
    v48 = v103;
    sub_10056F5B8();
    sub_10001036C(v76, &qword_1006E6760);
    sub_10001036C(v70, &qword_1006E6768);
    sub_10001036C(v73, &qword_1006E6788);
    v38 = v107;
    goto LABEL_18;
  }

  v44 = __chkstk_darwin(v43);
  __chkstk_darwin(v44);
  sub_100009DCC(&qword_1006E67D8);
  sub_1000E61C4();
  sub_1000E627C();
  v45 = v92;
  sub_10056FCA8();
  v46 = v93;
  v47 = v86;
  (*(v93 + 16))(v106, v45, v86);
  swift_storeEnumTagMultiPayload();
  sub_100010BC0(&qword_1006E6810, &qword_1006E6760);
  sub_100010BC0(&qword_1006E6818, &qword_1006E6750);
  v48 = v103;
  sub_10056F5B8();
  (*(v46 + 8))(v45, v47);
LABEL_18:
  sub_10000CC8C(v48, v110, &qword_1006E6790);
  swift_storeEnumTagMultiPayload();
  sub_1000E638C();
  sub_10056F5B8();

  sub_10001036C(v48, &qword_1006E6790);
  return sub_10001036C(v38, &qword_1006E6798);
}

uint64_t sub_1000E3EE8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (v3 < 0)
  {
    v4 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {
    v4 = ActionType.rawValue.getter(v3);
    result = v5;
  }

  *a2 = v4;
  a2[1] = result;
  return result;
}

uint64_t sub_1000E3F30@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v64 = a4;
  v65 = type metadata accessor for ActionMenuView();
  __chkstk_darwin(v65);
  v8 = &v56[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v63 = sub_100009DCC(&qword_1006E6848);
  __chkstk_darwin(v63);
  v10 = &v56[-v9];
  v11 = sub_10056EBD8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v56[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = a1[1];
  v66 = *a1;
  v67 = v15;
  v16 = a1[3];
  v18 = a1[4];
  v17 = a1[5];
  v68 = a1[2];
  v69 = v18;
  v61 = v16;
  v62 = v17;
  v70 = a1[6];
  if (MenuType.rawValue.getter(*(*a2 + 32)) == 0x7463416B63697571 && v19 == 0xEB000000006E6F69)
  {
  }

  else
  {
    v21 = sub_100574498();

    if ((v21 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (*(a3 + 16) >= 2uLL)
  {
    sub_1000E6470(v14);
    v22 = sub_10056EBB8();
    (*(v12 + 8))(v14, v11);
    v23 = v22 ^ 1;
    v24 = v66;
    if ((v66 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_10:
    v25 = a2[2];
    v26 = a2[3];
    *v8 = v24 & 0x7FFFFFFFFFFFFFFFLL;
    v8[8] = 1;
    *(v8 + 2) = v25;
    *(v8 + 3) = v26;
    sub_1000E66D8(v24);
    sub_1000E672C(v25);
    type metadata accessor for ActionMenuView.Excluding();
    sub_1000E6B18(&qword_1006E65D0, type metadata accessor for ActionMenuView.Excluding);
    *(v8 + 4) = sub_10056EE68();
    *(v8 + 5) = v27;
    v28 = *(v65 + 32);
    *&v8[v28] = swift_getKeyPath();
    sub_100009DCC(&qword_1006E67A8);
    swift_storeEnumTagMultiPayload();
    sub_1000E5DEC(v8, v10);
    swift_storeEnumTagMultiPayload();
    sub_1000E6168();
    sub_1000E6B18(&qword_1006E65A8, type metadata accessor for ActionMenuView);
    sub_10056F5B8();
    return sub_1000E6764(v8);
  }

LABEL_11:
  v23 = 0;
  v24 = v66;
  if (v66 < 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  v59 = (v23 & 1) != 0 && *(a3 + 16) > 2uLL;
  v30 = a2[2];
  v31 = a2[3];
  v60 = v30;
  sub_1000E672C(v30);

  v67(v89, v32);
  v33 = v90;
  v34 = v91;
  sub_10000C8CC(v89, v90);
  v87 = (*(v34 + 8))(v33, v34);
  v88[0] = v35;
  v36 = v90;
  v37 = v91;
  sub_10000C8CC(v89, v90);
  v38 = (*(v37 + 24))(v36, v37);
  v39 = 0;
  v88[1] = v38;
  v88[2] = v40;
  v41 = _swiftEmptyArrayStorage;
LABEL_16:
  v42 = &v88[2 * v39];
  while (++v39 != 3)
  {
    v43 = v42 + 2;
    v44 = *v42;
    v42 += 2;
    if (v44)
    {
      v58 = v10;
      v57 = v23;
      v45 = *(v43 - 3);

      v46 = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_1000CF25C(0, *(v41 + 2) + 1, 1, v41);
      }

      v48 = *(v41 + 2);
      v47 = *(v41 + 3);
      if (v48 >= v47 >> 1)
      {
        v41 = sub_1000CF25C((v47 > 1), v48 + 1, 1, v41);
      }

      *(v41 + 2) = v48 + 1;
      v49 = &v41[16 * v48];
      *(v49 + 4) = v45;
      *(v49 + 5) = v44;
      v31 = v46;
      v23 = v57;
      v10 = v58;
      goto LABEL_16;
    }
  }

  sub_100009DCC(&unk_1006EB090);
  swift_arrayDestroy();
  v78[0] = v41;
  sub_100009DCC(&unk_1006E84C0);
  sub_100010BC0(&qword_1006E8F50, &unk_1006E84C0);
  v50 = sub_100572798();
  v52 = v51;

  sub_100010474(v89);
  LOBYTE(v72) = v66;
  *(&v72 + 1) = v94[0];
  DWORD1(v72) = *(v94 + 3);
  *(&v72 + 1) = v67;
  *&v73 = v68;
  *(&v73 + 1) = v61;
  *&v74 = v69;
  *(&v74 + 1) = v62;
  *&v75 = v70;
  BYTE8(v75) = v59;
  BYTE9(v75) = v23 & 1;
  *(&v75 + 10) = v92;
  HIWORD(v75) = v93;
  *&v76 = v60;
  *(&v76 + 1) = v31;
  *&v77 = v50;
  *(&v77 + 1) = v52;
  LOBYTE(v78[0]) = v66;
  HIDWORD(v78[0]) = *(v94 + 3);
  *(v78 + 1) = v94[0];
  v78[1] = v67;
  v78[2] = v68;
  v78[3] = v61;
  v78[4] = v69;
  v78[5] = v62;
  v78[6] = v70;
  v79 = v59;
  v80 = v23 & 1;
  v81 = v92;
  v82 = v93;
  v83 = v60;
  v84 = v31;
  v85 = v50;
  v86 = v52;
  sub_1000E67C0(&v72, &v71);
  sub_1000E67F8(v78);
  v53 = v75;
  v10[2] = v74;
  v10[3] = v53;
  v54 = v77;
  v10[4] = v76;
  v10[5] = v54;
  v55 = v73;
  *v10 = v72;
  v10[1] = v55;
  swift_storeEnumTagMultiPayload();
  sub_1000E6168();
  sub_1000E6B18(&qword_1006E65A8, type metadata accessor for ActionMenuView);
  return sub_10056F5B8();
}

uint64_t sub_1000E4624(uint64_t *a1)
{
  v2 = sub_100009DCC(&qword_1006E67F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - v4;
  v6 = sub_100009DCC(&qword_1006E6840);
  __chkstk_darwin(v6);
  v8 = v19 - v7;
  v9 = *a1;
  v10 = MenuType.image.getter(*(*a1 + 32));
  if (v10)
  {
    v11 = __chkstk_darwin(v10);
    v19[-2] = a1;
    v12 = __chkstk_darwin(v11);
    v19[-2] = v12;
    v13 = v12;
    sub_1005705F8();
    (*(v3 + 16))(v8, v5, v2);
    swift_storeEnumTagMultiPayload();
    sub_100010BC0(&qword_1006E67E8, &qword_1006E67F0);
    sub_10056F5B8();

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    v19[0] = MenuType.title.getter(*(v9 + 32));
    v19[1] = v15;
    sub_1000C5FB8();
    *v8 = sub_10056FF28();
    *(v8 + 1) = v16;
    v8[16] = v17 & 1;
    *(v8 + 3) = v18;
    swift_storeEnumTagMultiPayload();
    sub_100010BC0(&qword_1006E67E8, &qword_1006E67F0);
    return sub_10056F5B8();
  }
}

uint64_t sub_1000E4938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MenuType.title.getter(*(*a1 + 32));
  sub_1000C5FB8();
  result = sub_10056FF28();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1000E4998()
{
  v1 = v0;
  v2 = sub_100009DCC(&qword_1006E6860);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v16[-v4 - 8];
  (*(v0 + 8))(v17, v3);
  v6 = v18;
  v7 = v19;
  sub_10000C8CC(v17, v18);
  if ((*(v7 + 48))(v6, v7))
  {
    sub_10056E558();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_10056E588();
  (*(*(v9 - 8) + 56))(v5, v8, 1, v9);
  v10 = swift_allocObject();
  v11 = v1[3];
  v10[3] = v1[2];
  v10[4] = v11;
  v12 = v1[5];
  v10[5] = v1[4];
  v10[6] = v12;
  v13 = v1[1];
  v10[1] = *v1;
  v10[2] = v13;
  __chkstk_darwin(v10);
  *(&v15 - 2) = v1;
  *(&v15 - 1) = v17;
  sub_1000E67C0(v1, v16);
  sub_100009DCC(&qword_1006E6868);
  sub_100010BC0(&qword_1006E6870, &qword_1006E6868);
  sub_1005706C8();
  return sub_100010474(v17);
}

uint64_t ActionMenuItemStyle.buttonRole.getter@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_10056E558();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_10056E588();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_1000E4C44()
{
  sub_100010324(&qword_1006E6588);
  sub_1000E16FC();
  swift_getOpaqueTypeMetadata2();
  sub_10056F5C8();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1000E4D1C()
{
  sub_100010324(&qword_1006E6588);
  sub_1000E16FC();
  swift_getOpaqueTypeMetadata2();
  sub_10056F5C8();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1000E4E08()
{
  sub_100010324(&qword_1006E65C0);
  sub_1000E2ABC();
  sub_10056FCB8();
  sub_100010324(&qword_1006E65B8);
  sub_10056ECA8();
  swift_getWitnessTable();
  sub_100010BC0(&qword_1006E65B0, &qword_1006E65B8);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000E4F40(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100009DCC(&qword_1006E6690);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1000E5010(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100009DCC(&qword_1006E6690);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000E50C0()
{
  type metadata accessor for ActionMenu();
  if (v0 <= 0x3F)
  {
    sub_1000E517C();
    if (v1 <= 0x3F)
    {
      sub_1000E51E0();
      if (v2 <= 0x3F)
      {
        sub_1000E5274();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000E517C()
{
  if (!qword_1006E6700)
  {
    sub_100010324(&qword_1006E6180);
    v0 = sub_100573C28();
    if (!v1)
    {
      atomic_store(v0, &qword_1006E6700);
    }
  }
}

void sub_1000E51E0()
{
  if (!qword_1006E6708)
  {
    type metadata accessor for ActionMenuView.Excluding();
    sub_1000E6B18(&qword_1006E65D0, type metadata accessor for ActionMenuView.Excluding);
    v0 = sub_10056EE78();
    if (!v1)
    {
      atomic_store(v0, &qword_1006E6708);
    }
  }
}

void sub_1000E5274()
{
  if (!qword_1006E6710)
  {
    sub_10056EBD8();
    v0 = sub_10056E6D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1006E6710);
    }
  }
}

uint64_t sub_1000E52F4(_OWORD *a1)
{
  v2 = sub_100009DCC(&qword_1006E6420);
  __chkstk_darwin(v2 - 8);
  v4 = &v12[-v3];
  v5 = sub_100572F48();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_100572F08();
  sub_1000E67C0(a1, v12);
  v6 = sub_100572EF8();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = &protocol witness table for MainActor;
  v8 = a1[3];
  *(v7 + 64) = a1[2];
  *(v7 + 80) = v8;
  v9 = a1[5];
  *(v7 + 96) = a1[4];
  *(v7 + 112) = v9;
  v10 = a1[1];
  *(v7 + 32) = *a1;
  *(v7 + 48) = v10;
  sub_1002B0D90(0, 0, v4, &unk_100586470, v7);
}

uint64_t sub_1000E5434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_100572F08();
  v4[4] = sub_100572EF8();
  v8 = (*(a4 + 40) + **(a4 + 40));
  v6 = swift_task_alloc();
  v4[5] = v6;
  *v6 = v4;
  v6[1] = sub_1000E5540;

  return v8();
}

uint64_t sub_1000E5540()
{
  *(*v1 + 48) = v0;

  v3 = sub_100572E78();
  if (v0)
  {
    v4 = sub_1000E571C;
  }

  else
  {
    v4 = sub_1000E569C;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1000E569C()
{
  v1 = *(v0 + 16);

  v3 = *(v1 + 64);
  if (v3)
  {
    v3(v2);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000E571C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E5780()
{
  sub_100009DCC(&qword_1006E6878);
  sub_100009DCC(&qword_1006E6880);
  sub_1000E6A30();
  sub_1000E6B60();
  return sub_1005705F8();
}

uint64_t sub_1000E583C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E6898);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-v6];
  v10 = a1;
  v11 = a2;
  sub_100009DCC(&qword_1006E68B0);
  sub_100010BC0(&qword_1006E68B8, &qword_1006E68B0);
  sub_10056E5A8();
  v12 = *(a1 + 80);
  sub_100010BC0(&qword_1006E6890, &qword_1006E6898);
  sub_1000C5FB8();
  sub_100570188();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000E59FC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 56);
  v6 = a2[3];
  v7 = a2[4];
  sub_10000C8CC(a2, v6);
  if ((v5 & 1) == 0)
  {
    goto LABEL_4;
  }

  (*(v7 + 16))(v6, v7);
  if (!v8)
  {
    v6 = a2[3];
    v7 = a2[4];
    sub_10000C8CC(a2, v6);
LABEL_4:
    (*(v7 + 8))(v6, v7);
  }

  sub_1000C5FB8();
  v9 = sub_10056FF28();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = a2[3];
  v16 = a2[4];
  sub_10000C8CC(a2, v17);
  (*(v16 + 24))(v17, v16);
  v18 = sub_10056FF28();
  v20 = v19;
  LOBYTE(v16) = v21 & 1;
  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = v13 & 1;
  *(a3 + 24) = v15;
  *(a3 + 32) = v18;
  *(a3 + 40) = v19;
  *(a3 + 48) = v21 & 1;
  *(a3 + 56) = v22;
  sub_10002AAC4(v9, v11, v13 & 1);

  sub_10002AAC4(v18, v20, v16);

  sub_10001B5A4(v18, v20, v16);

  sub_10001B5A4(v9, v11, v13 & 1);
}

uint64_t sub_1000E5BD4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a1 + 57);
  v6 = a2[3];
  v7 = a2[4];
  sub_10000C8CC(a2, v6);
  if (v5)
  {
    v8 = (*(v7 + 40))(v6, v7);
    if (v8)
    {
      v9 = v8;
      goto LABEL_6;
    }

    v6 = a2[3];
    v7 = a2[4];
    sub_10000C8CC(a2, v6);
  }

  result = (*(v7 + 32))(v6, v7);
  v9 = result;
  if (!result)
  {
    v12 = 0;
    goto LABEL_8;
  }

LABEL_6:

  v12 = v9(v11);
  sub_1000E6BDC(v9);

LABEL_8:
  *a3 = v12;
  return result;
}

uint64_t sub_1000E5D1C(uint64_t a1)
{
  v2 = sub_10056EBD8();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10056EF38();
}

uint64_t sub_1000E5DEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionMenuView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E5E50()
{
  v1 = type metadata accessor for ActionMenuView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);

  if (*(v0 + v2 + 16))
  {
  }

  v3 = *(v1 + 32);
  sub_100009DCC(&qword_1006E67A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_10056EBD8();
    (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000E5F9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionMenuView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E6000@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ActionMenuView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000E3F30(a1, (v2 + v6), v7, a2);
}

unint64_t sub_1000E60AC()
{
  result = qword_1006E67C8;
  if (!qword_1006E67C8)
  {
    sub_100010324(&qword_1006E67B8);
    sub_1000E6168();
    sub_1000E6B18(&qword_1006E65A8, type metadata accessor for ActionMenuView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E67C8);
  }

  return result;
}

unint64_t sub_1000E6168()
{
  result = qword_1006E67D0;
  if (!qword_1006E67D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E67D0);
  }

  return result;
}

unint64_t sub_1000E61C4()
{
  result = qword_1006E67E0;
  if (!qword_1006E67E0)
  {
    sub_100010324(&qword_1006E67D8);
    sub_100010BC0(&qword_1006E67E8, &qword_1006E67F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E67E0);
  }

  return result;
}

unint64_t sub_1000E627C()
{
  result = qword_1006E67F8;
  if (!qword_1006E67F8)
  {
    sub_100010324(&qword_1006E6798);
    sub_1000E6308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E67F8);
  }

  return result;
}

unint64_t sub_1000E6308()
{
  result = qword_1006E6800;
  if (!qword_1006E6800)
  {
    sub_100010324(&qword_1006E6808);
    sub_1000E60AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E6800);
  }

  return result;
}

unint64_t sub_1000E638C()
{
  result = qword_1006E6820;
  if (!qword_1006E6820)
  {
    sub_100010324(&qword_1006E6790);
    sub_100010BC0(&qword_1006E6810, &qword_1006E6760);
    sub_100010BC0(&qword_1006E6818, &qword_1006E6750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E6820);
  }

  return result;
}

uint64_t sub_1000E6470@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10056F198();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009DCC(&qword_1006E67A8);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_10000CC8C(v2, &v14 - v9, &qword_1006E67A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10056EBD8();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_100573438();
    v13 = sub_10056F9D8();
    sub_10056DE58();

    sub_10056F188();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1000E66A8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_100570538();
  *a1 = result;
  return result;
}

uint64_t sub_1000E66D8(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
  }
}

uint64_t sub_1000E672C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000E6764(uint64_t a1)
{
  v2 = type metadata accessor for ActionMenuView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_1000E6838(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1000E6854(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1000E689C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000E6908()
{
  result = qword_1006E6850;
  if (!qword_1006E6850)
  {
    sub_100010324(&qword_1006E6858);
    sub_1000E638C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E6850);
  }

  return result;
}

uint64_t sub_1000E69B0()
{

  if (*(v0 + 80))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1000E6A30()
{
  result = qword_1006E6888;
  if (!qword_1006E6888)
  {
    sub_100010324(&qword_1006E6878);
    sub_100010BC0(&qword_1006E6890, &qword_1006E6898);
    sub_1000E6B18(&qword_1006E68A0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E6888);
  }

  return result;
}

uint64_t sub_1000E6B18(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000E6B60()
{
  result = qword_1006E68A8;
  if (!qword_1006E68A8)
  {
    sub_100010324(&qword_1006E6880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E68A8);
  }

  return result;
}

uint64_t sub_1000E6BDC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000E6C28()
{
  swift_unknownObjectRelease();

  if (*(v0 + 96))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000E6C90(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000CB98;

  return sub_1000E5434(a1, v4, v5, v1 + 32);
}

UIMenu_optional __swiftcall ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(Swift::OpaquePointer excluding, Swift::Bool includeUnsupported)
{
  v4 = ActionMenuBuilder.menu(excluding:includeUnsupported:)(excluding._rawValue, includeUnsupported);
  v6 = v5;
  v7 = _swiftEmptyArrayStorage;
  v8 = ActionMenu.elements(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);

  v9 = *(v8 + 16);
  if (v9)
  {
    v36 = v6;
    v39 = _swiftEmptyArrayStorage;
    sub_100573FF8();
    v10 = 32;
    v11 = v9;
    do
    {
      v12 = *(v8 + v10);
      v13 = *(v8 + v10 + 16);
      v14 = *(v8 + v10 + 32);
      v41 = *(v8 + v10 + 48);
      v40[1] = v13;
      v40[2] = v14;
      v40[0] = v12;
      sub_1000E80D0(v40, v38);
      v15._rawValue = excluding._rawValue;
      sub_1000E7124(v4, v9, v15, includeUnsupported);
      sub_1000E812C(v40);
      sub_100573FC8();
      sub_100574008();
      sub_100574018();
      sub_100573FD8();
      v10 += 56;
      --v11;
    }

    while (v11);

    v16 = v39;
    v6 = v36;
    v7 = _swiftEmptyArrayStorage;
  }

  else
  {

    v16 = _swiftEmptyArrayStorage;
  }

  v17 = 0;
  v38[0] = _swiftEmptyArrayStorage;
  v18 = v16[2];
  while (v18 != v17)
  {
    if (v17 >= v16[2])
    {
      __break(1u);
LABEL_28:
      if (!sub_100574178())
      {
        goto LABEL_29;
      }

LABEL_15:
      v22 = *(v4 + 32);
      v37 = MenuType.title.getter(*(v4 + 32));
      v24 = v23;
      v25 = MenuType.image.getter(v22);
      v26 = (MenuType.style.getter(v22) & 1) == 0;
      if (v17)
      {
        v27 = sub_100574178();
      }

      else
      {
        v27 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (MenuType.rawValue.getter(v22) == 0x7463416B63697571 && v28 == 0xEB000000006E6F69)
      {

        if (v27 <= 1)
        {
          goto LABEL_25;
        }

LABEL_24:
        v30 = 1;
      }

      else
      {
        v29 = sub_100574498();

        if ((v29 & 1) != 0 && v27 >= 2)
        {
          goto LABEL_24;
        }

LABEL_25:
        v30 = 2;
      }

      sub_1000D3B98(0, &qword_1006E62C8);
      v44._countAndFlagsBits = v37;
      v44._object = v24;
      v45.value._countAndFlagsBits = 0;
      v45.value._object = 0;
      v43.value.super.isa = v25;
      v43.is_nil = 0;
      v31.value = v26;
      v32.super.super.isa = sub_100573908(v44, v45, v43, v31, v30, v7, v35).super.super.isa;

      goto LABEL_30;
    }

    v19 = v16[v17++ + 4];
    if (v19)
    {
      v20 = v19;
      sub_100572CE8();
      if (*((v38[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100572D68();
      }

      sub_100572DB8();
      v7 = v38[0];
    }
  }

  v6(v21);
  v17 = v7 >> 62;
  if (v7 >> 62)
  {
    goto LABEL_28;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_29:

  v32.super.super.isa = 0;
LABEL_30:
  isa = v32.super.super.isa;
  result.value.super.super.isa = isa;
  result.is_nil = v33;
  return result;
}

id sub_1000E7124(uint64_t a1, uint64_t a2, Swift::OpaquePointer excluding, char a4)
{
  v6 = *v4;
  if (*v4 < 0)
  {
    v14 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v15 = ActionMenu.uiMenu(excluding:includeUnsupported:)(excluding, a4 & 1);
    v16 = v15;
    if (v15)
    {
      v17 = v15;
      sub_100573ED8(20);

      v80 = 0xD000000000000012;
      v81 = 0x80000001005ACB00;
      sub_100572A98(v14[1]);
      if (qword_1006E5078 != -1)
      {
        swift_once();
      }

      v80 = qword_1006EE120;
      v81 = *algn_1006EE128;

      v84._countAndFlagsBits = 46;
      v84._object = 0xE100000000000000;
      sub_100572A98(v84);

      v85._countAndFlagsBits = 0xD000000000000012;
      v85._object = 0x80000001005ACB00;
      sub_100572A98(v85);

      v18 = sub_100572898();

      [v17 setAccessibilityIdentifier:v18];
    }

    return v16;
  }

  v76 = v4[5];
  v77 = v4[6];
  v10 = v4[3];
  v9 = v4[4];
  v74 = v4[1];
  v75 = v4[2];
  v74(&v80, a1, a2, excluding._rawValue);
  v12 = MenuType.rawValue.getter(*(a1 + 32)) == 0x7463416B63697571 && v11 == 0xEB000000006E6F69;
  v78 = v6;
  if (v12)
  {

    if (a4)
    {
LABEL_16:
      v21 = 0;
LABEL_17:
      v22 = v82;
      v23 = v83;
      sub_10000C8CC(&v80, v82);
      v24 = (*(v23 + 32))(v22, v23);
      v26 = v25;
      goto LABEL_18;
    }
  }

  else
  {
    v13 = sub_100574498();

    if (v13 & 1) == 0 || (a4)
    {
      goto LABEL_16;
    }
  }

  if (a2 < 2)
  {
    goto LABEL_16;
  }

  v19 = [objc_opt_self() currentTraitCollection];
  v20 = [v19 preferredContentSizeCategory];

  LOBYTE(v19) = sub_100573768();
  if (v19)
  {
    goto LABEL_16;
  }

  v37 = v82;
  v38 = v83;
  sub_10000C8CC(&v80, v82);
  v39 = (*(v38 + 40))(v37, v38);
  if (!v39)
  {
    v21 = 1;
    goto LABEL_17;
  }

  v24 = v39;
  v26 = v40;
  v21 = 1;
LABEL_18:
  v27 = v10();
  if (v28 == 1)
  {
    v29 = 0;
  }

  else
  {
    sub_1000CA864(v27, v28);
    v29 = 1;
  }

  v30 = v82;
  v31 = v83;
  sub_10000C8CC(&v80, v82);
  v32 = (*(v31 + 48))(v30, v31);
  v33 = v29 | 2;
  if ((v32 & 1) == 0)
  {
    v33 = v29;
  }

  v73 = v33;
  if (a2 <= 2)
  {
    v21 = 0;
  }

  v34 = v82;
  v35 = v83;
  sub_10000C8CC(&v80, v82);
  if (v21 != 1)
  {
    goto LABEL_31;
  }

  (*(v35 + 16))(v34, v35);
  if (!v36)
  {
    v34 = v82;
    v35 = v83;
    sub_10000C8CC(&v80, v82);
LABEL_31:
    (*(v35 + 8))(v34, v35);
  }

  v41 = v10;
  v42 = v82;
  v43 = v83;
  sub_10000C8CC(&v80, v82);
  (*(v43 + 24))(v42, v43);
  v44 = v9;
  if (v24)
  {

    v26(v45);
  }

  sub_1000D3B98(0, &qword_1006E62B0);
  v46 = v82;
  v47 = v83;
  sub_10000C8CC(&v80, v82);
  v48 = (*(v47 + 56))(v46, v47);
  v49 = swift_allocObject();
  v49[2] = v78;
  v49[3] = v74;
  v49[4] = v75;
  v49[5] = v41;
  v49[6] = v44;
  v49[7] = v76;
  v49[8] = v77;

  v72 = v49;
  v71 = v48;
  v50 = sub_100573A88();
  v51 = v82;
  v52 = v83;
  sub_10000C8CC(&v80, v82);
  v53 = *(v52 + 8);
  v16 = v50;
  v53(v51, v52);
  v79[0] = v54;
  v55 = v82;
  v56 = v83;
  sub_10000C8CC(&v80, v82);
  v57 = (*(v56 + 24))(v55, v56);
  v58 = 0;
  v79[1] = v57;
  v79[2] = v59;
  v60 = _swiftEmptyArrayStorage;
LABEL_35:
  v61 = &v79[2 * v58];
  while (++v58 != 3)
  {
    v62 = v61 + 2;
    v63 = *v61;
    v61 += 2;
    if (v63)
    {
      v64 = *(v62 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = sub_1000CF25C(0, *(v60 + 2) + 1, 1, v60);
      }

      v66 = *(v60 + 2);
      v65 = *(v60 + 3);
      if (v66 >= v65 >> 1)
      {
        v60 = sub_1000CF25C((v65 > 1), v66 + 1, 1, v60);
      }

      *(v60 + 2) = v66 + 1;
      v67 = &v60[16 * v66];
      *(v67 + 4) = v64;
      *(v67 + 5) = v63;
      goto LABEL_35;
    }
  }

  sub_100009DCC(&unk_1006EB090);
  swift_arrayDestroy();
  sub_100009DCC(&unk_1006E84C0);
  sub_1000E81D0();
  sub_100572798();

  v68 = sub_100572898();

  [v16 setAccessibilityLabel:{v68, 0, v73, v71, sub_1000E81C8, v72}];

  sub_100573ED8(20);

  v86._countAndFlagsBits = ActionType.rawValue.getter(v78);
  sub_100572A98(v86);

  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v87._countAndFlagsBits = 46;
  v87._object = 0xE100000000000000;
  sub_100572A98(v87);

  v88._countAndFlagsBits = 0xD000000000000012;
  v88._object = 0x80000001005ACB00;
  sub_100572A98(v88);

  v69 = sub_100572898();

  [v16 setAccessibilityIdentifier:v69];
  sub_1000E6BDC(v24);

  sub_100010474(&v80);
  return v16;
}

UIMenu_optional __swiftcall ActionMenu.uiMenu(excluding:includeUnsupported:)(Swift::OpaquePointer excluding, Swift::Bool includeUnsupported)
{
  v3 = v2;
  v7 = ActionMenu.elements(excluding:includeUnsupported:)(excluding._rawValue, includeUnsupported);
  v8 = v6;
  v9 = *(v7 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v39 = v6;
    v42 = _swiftEmptyArrayStorage;
    sub_100573FF8();
    v11 = 32;
    v12 = v9;
    do
    {
      v13 = *(v7 + v11);
      v14 = *(v7 + v11 + 16);
      v15 = *(v7 + v11 + 32);
      v44 = *(v7 + v11 + 48);
      v43[1] = v14;
      v43[2] = v15;
      v43[0] = v13;
      sub_1000E80D0(v43, v41);
      v16._rawValue = excluding._rawValue;
      sub_1000E7124(v2, v9, v16);
      sub_1000E812C(v43);
      sub_100573FC8();
      sub_100574008();
      sub_100574018();
      sub_100573FD8();
      v11 += 56;
      --v12;
    }

    while (v12);

    v17 = v42;
    v8 = v39;
    v10 = _swiftEmptyArrayStorage;
  }

  else
  {

    v17 = _swiftEmptyArrayStorage;
  }

  v18 = 0;
  v41[0] = _swiftEmptyArrayStorage;
  v19 = v17[2];
  while (v19 != v18)
  {
    if (v18 >= v17[2])
    {
      __break(1u);
LABEL_28:
      if (!sub_100574178())
      {
        goto LABEL_29;
      }

LABEL_15:
      v23 = *(v2 + 32);
      v24 = MenuType.title.getter(*(v2 + 32));
      v26 = v25;
      v28 = *(v3 + 40);
      v27 = *(v3 + 48);

      v29 = MenuType.image.getter(v23);
      v30 = (MenuType.style.getter(v23) & 1) == 0;
      if (!includeUnsupported)
      {
        if (v18)
        {
          v40 = sub_100574178();
        }

        else
        {
          v40 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (MenuType.rawValue.getter(v23) == 0x7463416B63697571 && v31 == 0xEB000000006E6F69)
        {

          goto LABEL_23;
        }

        v32 = sub_100574498();

        if (v32)
        {
LABEL_23:
          if (v40 > 1)
          {
            v33 = 1;
LABEL_26:
            sub_1000D3B98(0, &qword_1006E62C8);
            v47._countAndFlagsBits = v24;
            v47._object = v26;
            v48.value._countAndFlagsBits = v28;
            v48.value._object = v27;
            v46.value.super.isa = v29;
            v46.is_nil = 0;
            v34.value = v30;
            v35.super.super.isa = sub_100573908(v47, v48, v46, v34, v33, v10, v38).super.super.isa;

            goto LABEL_30;
          }
        }
      }

      v33 = 2;
      goto LABEL_26;
    }

    v20 = v17[v18++ + 4];
    if (v20)
    {
      v21 = v20;
      sub_100572CE8();
      if (*((v41[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100572D68();
      }

      sub_100572DB8();
      v10 = v41[0];
    }
  }

  v8(v22);
  v18 = v10 >> 62;
  if (v10 >> 62)
  {
    goto LABEL_28;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_29:

  v35.super.super.isa = 0;
LABEL_30:
  isa = v35.super.super.isa;
  result.value.super.super.isa = isa;
  result.is_nil = v36;
  return result;
}

uint64_t sub_1000E7CA8(uint64_t a1, uint64_t a2)
{
  v3 = sub_100009DCC(&qword_1006E6420);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_100572F48();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_100572F08();

  v7 = sub_100572EF8();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for MainActor;
  v9 = *(a2 + 16);
  *(v8 + 32) = *a2;
  *(v8 + 48) = v9;
  *(v8 + 64) = *(a2 + 32);
  *(v8 + 80) = *(a2 + 48);
  sub_1002B0D90(0, 0, v5, &unk_100586488, v8);
}

uint64_t sub_1000E7E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_100572F08();
  v4[3] = sub_100572EF8();
  v8 = (*(a4 + 40) + **(a4 + 40));
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_1000E7F10;

  return v8();
}

uint64_t sub_1000E7F10()
{
  *(*v1 + 40) = v0;

  v3 = sub_100572E78();
  if (v0)
  {
    v4 = sub_1000E806C;
  }

  else
  {
    v4 = sub_1000C8828;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1000E806C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E8180()
{

  return swift_deallocObject();
}

unint64_t sub_1000E81D0()
{
  result = qword_1006E8F50;
  if (!qword_1006E8F50)
  {
    sub_100010324(&unk_1006E84C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E8F50);
  }

  return result;
}

uint64_t sub_1000E8234()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000E8284(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000CB98;

  return sub_1000E7E08(a1, v4, v5, v1 + 32);
}

uint64_t static ActionMenu.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_100574498();
  }
}

uint64_t ActionMenuBuilder.menu(excluding:includeUnsupported:)(uint64_t a1, char a2)
{
  v3 = v2;
  v138 = sub_10056CAE8();
  v6 = *(v138 - 8);
  __chkstk_darwin(v138);
  v137 = v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = 0;
  v141 = 0xE000000000000000;
  v143._countAndFlagsBits = 8254;
  v143._object = 0xE200000000000000;
  sub_100572A98(v143);
  v8 = v2[1];
  v142[0] = *v2;
  v142[1] = v8;
  v142[2] = v2[2];
  sub_100574098();
  v9 = v140;
  v10 = v141;
  v11 = sub_1000CF25C(0, 1, 1, _swiftEmptyArrayStorage);
  v13 = *(v11 + 16);
  v12 = *(v11 + 24);
  v14 = v13 + 1;
  if (v13 >= v12 >> 1)
  {
    goto LABEL_88;
  }

  while (1)
  {
    v15 = swift_allocObject();
    *(v11 + 16) = v14;
    v16 = v11 + 16 * v13;
    *(v16 + 32) = v9;
    *(v16 + 40) = v10;
    v15[2] = v11;
    v17 = (v15 + 2);
    v18 = (*(v3 + 32))();

    v19 = sub_1000F336C(v18, v15 + 2, a1, a2 & 1);

    if (!*(v19 + 16))
    {
      if (!*(*v17 + 16))
      {
        __break(1u);
        goto LABEL_100;
      }

      sub_1000F3B88(1uLL, 1, 0xD00000000000001CLL, 0x80000001005ACB20);
    }

    v119 = v15;
    *&v142[0] = v19;
    v118 = v19;

    sub_1000F2440(v142);
    v117[1] = 0;
    v13 = 0x654D6E6F69746341;
    v122 = *&v142[0];
    sub_100009DCC(&qword_1006E68E8);
    inited = swift_initStackObject();
    v132 = xmmword_10057B510;
    *(inited + 16) = xmmword_10057B510;
    *(inited + 32) = 0;
    v10 = inited + 32;
    v21 = *(v3 + 16);
    v15 = *(v3 + 24);

    v9 = v137;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v14 = sub_10056CAB8();
    v23 = v22;
    v24 = v6[1];
    v136 = v6 + 1;
    v134 = v24;
    v24(v9, v138);
    v133 = type metadata accessor for ActionMenu();
    v25 = swift_allocObject();
    *(v25 + 88) = 0;
    *(v25 + 96) = 0;
    *(v25 + 16) = v14;
    *(v25 + 24) = v23;
    *(v25 + 32) = 0;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    strcpy(v142, "ActionMenu: ");
    BYTE13(v142[0]) = 0;
    HIWORD(v142[0]) = -5120;

    v11 = v142;
    v135 = v21;
    v144._countAndFlagsBits = v21;
    v144._object = v15;
    sub_100572A98(v144);

    v26 = *(&v142[0] + 1);
    *(v25 + 56) = *&v142[0];
    *(v25 + 64) = v26;
    *(v25 + 80) = _swiftEmptyArrayStorage;
    *(v25 + 72) = 1;
    *(inited + 40) = v25;
    v6 = sub_1000F3C64(inited);
    swift_setDeallocating();
    a1 = v122;
    sub_1000F3D58(inited + 32);
    v121 = *(a1 + 16);
    if (!v121)
    {
      break;
    }

    v3 = 0;
    v120 = a1 + 32;
    a2 = 56;
    while (1)
    {
      v12 = *(a1 + 16);
      if (v3 >= v12)
      {
        break;
      }

      v27 = (v120 + 56 * v3);
      v28 = *v27;
      v29 = v27[1];
      v30 = v27[2];
      v10 = v27[3];
      v9 = v27[4];
      v31 = v27[5];
      v13 = v27[6];
      if (*v27 < 0)
      {
        v32 = *((v28 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
        if ((v32 - 1) >= 0xA)
        {
          if (!*((v28 & 0x7FFFFFFFFFFFFFFFLL) + 0x20))
          {
            goto LABEL_9;
          }

          if (v32 == 11)
          {
            v11 = 4;
          }

          else
          {
            v11 = 6;
          }
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = byte_10058693A[v28];
      }

      v14 = v6[2];
      v129 = v28;
      v130 = v29;
      v131 = v30;
      v33 = v31;
      sub_1000E66D8(v28);
      v34 = v33;
      v128 = v13;
      if (!v14 || (v14 = v11, v35 = sub_1000EB8B4(v11), v34 = v33, (v36 & 1) == 0))
      {
        v125 = v3;
        v127 = v9;
        v126 = v11;
        if ((v11 - 1) >= 0xA)
        {
          if (v11)
          {
            v42 = v34;
            v43 = v10;
            v45 = 0;
            if (v11 == 11)
            {
              v44 = 4;
            }

            else
            {
              v44 = 6;
            }

            goto LABEL_24;
          }

          sub_1000F3DC0(v129);
          goto LABEL_8;
        }

        v42 = v34;
        v43 = v10;
        v44 = 0;
        v45 = 1;
LABEL_24:
        v46 = sub_100009DCC(&unk_1006E63A0);
        v47 = swift_allocObject();
        *(v47 + 16) = v132;
        v48 = v130;
        *(v47 + 32) = v129;
        *(v47 + 40) = v48;
        *(v47 + 48) = v131;
        *(v47 + 56) = v43;
        *(v47 + 64) = v127;
        *(v47 + 72) = v42;
        v49 = v128;
        *(v47 + 80) = v128;

        v123 = v43;
        v13 = v49;
        v124 = v42;
        sub_1000E66D8(v129);
        v50 = v137;
        _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
        v51 = sub_10056CAB8();
        v53 = v52;
        v134(v50, v138);
        v54 = swift_allocObject();
        *(v54 + 88) = 0;
        *(v54 + 96) = 0;
        *(v54 + 16) = v51;
        *(v54 + 24) = v53;
        v55 = v126;
        *(v54 + 32) = v126;
        *(v54 + 40) = 0;
        *(v54 + 48) = 0;
        strcpy(v142, "ActionMenu: ");
        BYTE13(v142[0]) = 0;
        HIWORD(v142[0]) = -5120;
        v145._countAndFlagsBits = v135;
        v145._object = v15;
        sub_100572A98(v145);

        v56 = *(&v142[0] + 1);
        *(v54 + 56) = *&v142[0];
        *(v54 + 64) = v56;
        *(v54 + 80) = v47;
        *(v54 + 72) = 1;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v142[0] = v6;
        sub_1000EF498(v54, v55, isUniquelyReferenced_nonNull_native);
        v6 = *&v142[0];
        if (*(*&v142[0] + 16))
        {
          v58 = sub_1000EB8B4(v44);
          if (v59)
          {
LABEL_40:
            v11 = *(v6[7] + 8 * v58);

            swift_beginAccess();
            v14 = *(v11 + 80);
            v79 = swift_isUniquelyReferenced_nonNull_native();
            *(v11 + 80) = v14;
            a1 = v122;
            v10 = v123;
            if ((v79 & 1) == 0)
            {
              v14 = sub_1000CF368(0, *(v14 + 16) + 1, 1, v14);
              *(v11 + 80) = v14;
            }

            v9 = *(v14 + 16);
            v80 = *(v14 + 24);
            if (v9 >= v80 >> 1)
            {
              v14 = sub_1000CF368((v80 > 1), v9 + 1, 1, v14);
            }

            *(v14 + 16) = v9 + 1;
            a2 = 56;
            v81 = v14 + 56 * v9;
            *(v81 + 32) = v54 | 0x8000000000000000;
            *(v81 + 40) = 0u;
            *(v81 + 56) = 0u;
            *(v81 + 72) = 0u;
            *(v11 + 80) = v14;
            swift_endAccess();

            sub_1000F3DC0(v129);

            v3 = v125;
            goto LABEL_9;
          }
        }

        while (2)
        {
          while (2)
          {
            v60 = swift_allocObject();
            *(v60 + 16) = v132;
            *(v60 + 32) = v54 | 0x8000000000000000;
            *(v60 + 40) = 0u;
            *(v60 + 56) = 0u;
            *(v60 + 72) = 0u;

            v61 = v137;
            _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
            v62 = sub_10056CAB8();
            v64 = v63;
            v134(v61, v138);
            v54 = swift_allocObject();
            *(v54 + 88) = 0;
            *(v54 + 96) = 0;
            *(v54 + 16) = v62;
            *(v54 + 24) = v64;
            *(v54 + 32) = v44;
            *(v54 + 40) = 0;
            *(v54 + 48) = 0;
            strcpy(v142, "ActionMenu: ");
            BYTE13(v142[0]) = 0;
            HIWORD(v142[0]) = -5120;
            v146._countAndFlagsBits = v135;
            v146._object = v15;
            sub_100572A98(v146);

            v65 = *(&v142[0] + 1);
            *(v54 + 56) = *&v142[0];
            *(v54 + 64) = v65;
            *(v54 + 80) = v60;
            *(v54 + 72) = 1;

            v66 = swift_isUniquelyReferenced_nonNull_native();
            *&v142[0] = v6;
            v67 = sub_1000EB8B4(v44);
            v69 = v6[2];
            v70 = (v68 & 1) == 0;
            v71 = __OFADD__(v69, v70);
            v72 = v69 + v70;
            if (v71)
            {
              __break(1u);
LABEL_60:
              __break(1u);
LABEL_61:
              if (v6[2])
              {
                v88 = sub_1000EB8B4(0);
                if (v89)
                {
                  v10 = *(v6[7] + 8 * v88);
                  v90 = *(v46 + 80);

                  v91 = v137;
                  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
                  v92 = sub_10056CAB8();
                  v94 = v93;
                  v134(v91, v138);
                  v95 = swift_allocObject();
                  *(v95 + 88) = 0;
                  *(v95 + 96) = 0;
                  *(v95 + 16) = v92;
                  *(v95 + 24) = v94;
                  *(v95 + 32) = 6;
                  *(v95 + 40) = 0;
                  *(v95 + 48) = 0;
                  strcpy(v142, "ActionMenu: ");
                  BYTE13(v142[0]) = 0;
                  HIWORD(v142[0]) = -5120;

                  v147._countAndFlagsBits = v135;
                  v147._object = v15;
                  sub_100572A98(v147);

                  v96 = *(&v142[0] + 1);
                  *(v95 + 56) = *&v142[0];
                  *(v95 + 64) = v96;
                  *(v95 + 80) = v90;
                  *(v95 + 72) = 1;
                  v19 = v95 | 0x8000000000000000;
                  swift_beginAccess();
                  v17 = *(v10 + 80);
                  v97 = swift_isUniquelyReferenced_nonNull_native();
                  *(v10 + 80) = v17;
                  if (v97)
                  {
                    goto LABEL_64;
                  }

                  goto LABEL_101;
                }

                goto LABEL_68;
              }

              goto LABEL_93;
            }

            v73 = v68;
            if (v6[3] < v72)
            {
              sub_1000EC970(v72, v66);
              v67 = sub_1000EB8B4(v44);
              if ((v73 & 1) != (v74 & 1))
              {
                sub_100574578();
                __break(1u);

                __break(1u);
                JUMPOUT(0x1000E953CLL);
              }

              goto LABEL_31;
            }

            if (v66)
            {
LABEL_31:
              v6 = *&v142[0];
              if (v73)
              {
                goto LABEL_32;
              }
            }

            else
            {
              v75 = v67;
              sub_1000F09C4();
              v67 = v75;
              v6 = *&v142[0];
              if (v73)
              {
LABEL_32:
                *(v6[7] + 8 * v67) = v54;

                if (v45)
                {
                  continue;
                }

LABEL_37:
                if (v6[2])
                {
                  v58 = sub_1000EB8B4(0);
                  if (v78)
                  {
                    v13 = v128;
                    goto LABEL_40;
                  }
                }

                continue;
              }
            }

            break;
          }

          v6[(v67 >> 6) + 8] |= 1 << v67;
          *(v6[6] + v67) = v44;
          *(v6[7] + 8 * v67) = v54;
          v76 = v6[2];
          v71 = __OFADD__(v76, 1);
          v77 = v76 + 1;
          if (v71)
          {
            goto LABEL_60;
          }

          v6[2] = v77;
          if ((v45 & 1) == 0)
          {
            goto LABEL_37;
          }

          continue;
        }
      }

      v13 = v10;
      v11 = *(v6[7] + 8 * v35);
      swift_beginAccess();
      v14 = *(v11 + 80);

      v37 = swift_isUniquelyReferenced_nonNull_native();
      *(v11 + 80) = v14;
      v10 = v9;
      if ((v37 & 1) == 0)
      {
        v14 = sub_1000CF368(0, *(v14 + 16) + 1, 1, v14);
        *(v11 + 80) = v14;
      }

      v9 = *(v14 + 16);
      v38 = *(v14 + 24);
      v39 = v131;
      v40 = v130;
      if (v9 >= v38 >> 1)
      {
        v82 = sub_1000CF368((v38 > 1), v9 + 1, 1, v14);
        v40 = v130;
        v39 = v131;
        v14 = v82;
      }

      *(v14 + 16) = v9 + 1;
      a2 = 56;
      v41 = (v14 + 56 * v9);
      v41[4] = v129;
      v41[5] = v40;
      v41[6] = v39;
      v41[7] = v13;
      v41[8] = v10;
      v41[9] = v33;
      v41[10] = v128;
      *(v11 + 80) = v14;
      swift_endAccess();

LABEL_8:
      a1 = v122;
LABEL_9:
      if (++v3 == v121)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_88:
    v11 = sub_1000CF25C((v12 > 1), v14, 1, v11);
  }

LABEL_53:

  if (!v6[2])
  {
    goto LABEL_97;
  }

  v83 = sub_1000EB8B4(12);
  if (v84)
  {
    v46 = *(v6[7] + 8 * v83);
    swift_beginAccess();
    if (*(*(v46 + 80) + 16) <= 2uLL)
    {
      v85 = v6[2];

      if (v85)
      {
        sub_1000EB8B4(6);
        if ((v86 & 1) == 0)
        {
          goto LABEL_61;
        }

        swift_beginAccess();

        sub_1000DA0F8(v87);
        swift_endAccess();
        while (1)
        {

LABEL_68:
          if (!v6[2])
          {
            break;
          }

          v101 = sub_1000EB8B4(6);
          if ((v102 & 1) == 0)
          {
            break;
          }

          v17 = *(v6[7] + 8 * v101);
          swift_beginAccess();
          v103 = *(v17 + 10);
          v19 = *(v103 + 16);
          if (!v19)
          {
            break;
          }

          v10 = 0;
          v104 = 32;
          while (v10 < *(v103 + 16))
          {
            v106 = *(v103 + v104);
            if (v106 < 0)
            {
              v17 = 0xE800000000000000;
              switch(*((v106 & 0x7FFFFFFFFFFFFFFFLL) + 0x20))
              {
                case 1:
                  v17 = 0xEB000000006E6F69;
                  goto LABEL_73;
                case 2:
                  v17 = 0xE300000000000000;
                  goto LABEL_73;
                case 3:
                  v17 = 0xE700000000000000;
                  goto LABEL_73;
                case 6:
                  v17 = 0xEA00000000006E6FLL;
                  goto LABEL_73;
                case 7:
                  v17 = 0xE500000000000000;
                  goto LABEL_73;
                case 8:
                  v17 = 0xE900000000000067;
                  goto LABEL_73;
                case 9:
                  v17 = 0xE90000000000006ELL;
                  goto LABEL_73;
                case 0xA:
                  v17 = 0xEB00000000657669;
                  goto LABEL_73;
                case 0xB:
                  v17 = 0xEC00000074726F53;
                  goto LABEL_73;
                case 0xC:

                  goto LABEL_90;
                default:
LABEL_73:
                  v105 = sub_100574498();

                  if ((v105 & 1) == 0)
                  {
                    goto LABEL_74;
                  }

LABEL_90:

                  if (v6[2])
                  {
                    sub_1000EB8B4(6);
                    if (v107)
                    {
                      swift_beginAccess();

                      sub_1000E9DBC(v10, v142);
                      swift_endAccess();
                      sub_1000E812C(v142);
                    }
                  }

                  break;
              }

              goto LABEL_93;
            }

LABEL_74:
            ++v10;
            v104 += 56;
            if (v19 == v10)
            {

              goto LABEL_94;
            }
          }

LABEL_100:
          __break(1u);
LABEL_101:
          v17 = sub_1000CF368(0, *(v17 + 2) + 1, 1, v17);
          *(v10 + 80) = v17;
LABEL_64:
          v99 = *(v17 + 2);
          v98 = *(v17 + 3);
          if (v99 >= v98 >> 1)
          {
            v17 = sub_1000CF368((v98 > 1), v99 + 1, 1, v17);
          }

          *(v17 + 2) = v99 + 1;
          v100 = &v17[56 * v99];
          *(v100 + 4) = v19;
          *(v100 + 40) = 0u;
          *(v100 + 56) = 0u;
          *(v100 + 72) = 0u;
          *(v10 + 80) = v17;
          swift_endAccess();
        }
      }

LABEL_93:
    }
  }

LABEL_94:
  if (v6[2] && (v108 = sub_1000EB8B4(0), (v109 & 1) != 0))
  {
    v110 = *(v6[7] + 8 * v108);
  }

  else
  {
LABEL_97:
    v111 = v137;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v112 = sub_10056CAB8();
    v114 = v113;
    v134(v111, v138);
    v110 = swift_allocObject();
    *(v110 + 88) = 0;
    *(v110 + 96) = 0;
    *(v110 + 16) = v112;
    *(v110 + 24) = v114;
    *(v110 + 32) = 0;
    *(v110 + 40) = 0;
    *(v110 + 48) = 0;
    strcpy(v139, "ActionMenu: ");
    BYTE5(v139[1]) = 0;
    HIWORD(v139[1]) = -5120;
    v148._countAndFlagsBits = v135;
    v148._object = v15;
    sub_100572A98(v148);

    v115 = v139[1];
    *(v110 + 56) = v139[0];
    *(v110 + 64) = v115;
    *(v110 + 80) = v118;
    *(v110 + 72) = 1;
  }

  return v110;
}

uint64_t ActionMenuBuilder.init(id:debugDescription:actionBuilder:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  strcpy(v16, "ActionMenu: ");
  BYTE5(v16[1]) = 0;
  HIWORD(v16[1]) = -5120;
  if (a4)
  {
    v12 = a4;
  }

  else
  {

    a3 = a1;
    v12 = a2;
  }

  v17._countAndFlagsBits = a3;
  v17._object = v12;
  sub_100572A98(v17);

  v14 = v16[0];
  v15 = v16[1];
  *a7 = a1;
  a7[1] = a2;
  a7[2] = v14;
  a7[3] = v15;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

double sub_1000E9624@<D0>(void *a1@<X0>, char **a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v11 = a1[6];
  v46 = a1[5];
  if (((1 << v6) & 0xF8FFFFD7FFE7FLL) == 0)
  {
    v45 = a1[1];
    v34 = a3;
    if (((1 << v6) & 0x700000000180) != 0)
    {
      v35 = sub_1000CAB70();
      v36 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v35);
    }

    else
    {
      v39 = sub_1000CAB1C();
      v36 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v39);
    }

    a3 = v34;
    v7 = v45;
    if ((v36 & 1) == 0)
    {
      if (qword_1006E5608 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall != 1)
      {
        goto LABEL_40;
      }

      sub_100573ED8(29);

      v56._countAndFlagsBits = ActionType.rawValue.getter(v6);
      sub_100572A98(v56);

      v57._object = 0x80000001005ACC20;
      v57._countAndFlagsBits = 0xD000000000000017;
      sub_100572A98(v57);
      v14 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_1000CF25C(0, *(v14 + 2) + 1, 1, v14);
        *a2 = v14;
      }

      v17 = *(v14 + 2);
      v16 = *(v14 + 3);
      v18 = v17 + 1;
      if (v17 < v16 >> 1)
      {
        goto LABEL_39;
      }

LABEL_6:
      v14 = sub_1000CF25C((v16 > 1), v17 + 1, 1, v14);
      *a2 = v14;
      goto LABEL_39;
    }
  }

  if (!sub_100248604(v6, a3))
  {
    v43 = a2;
    v44 = v7;
    v42 = v8;
    v19 = v9();
    if (v20 == 1)
    {
      v49._countAndFlagsBits = ActionType.rawValue.getter(v6);
      sub_100572A98(v49);

      v21 = *a2;
      v22 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v21;
      if ((v22 & 1) == 0)
      {
        v21 = sub_1000CF25C(0, *(v21 + 2) + 1, 1, v21);
        *a2 = v21;
      }

      v24 = *(v21 + 2);
      v23 = *(v21 + 3);
      if (v24 >= v23 >> 1)
      {
        v21 = sub_1000CF25C((v23 > 1), v24 + 1, 1, v21);
        *a2 = v21;
      }

      *(v21 + 2) = v24 + 1;
      v25 = &v21[16 * v24];
      *(v25 + 4) = 0x20939CE22020;
      *(v25 + 5) = 0xA600000000000000;
      *a5 = v6;
      a5[1] = v44;
      a5[2] = v42;
      a5[3] = v9;
      a5[4] = v10;
      a5[5] = v46;
      a5[6] = v11;
    }

    else
    {
      v26 = v19;
      v27 = v20;
      if ((a4 & 1) == 0)
      {
        v53._countAndFlagsBits = ActionType.rawValue.getter(v6);
        sub_100572A98(v53);

        v54._countAndFlagsBits = 2108704;
        v54._object = 0xE300000000000000;
        sub_100572A98(v54);
        if (!v27)
        {
          sub_1000CA864(v26, 0);
          v27 = 0xE700000000000000;
          v26 = 0x6E776F6E6B6E75;
        }

        v55._countAndFlagsBits = v26;
        v55._object = v27;
        sub_100572A98(v55);

        v14 = *v43;
        v37 = swift_isUniquelyReferenced_nonNull_native();
        *v43 = v14;
        if ((v37 & 1) == 0)
        {
          v14 = sub_1000CF25C(0, *(v14 + 2) + 1, 1, v14);
          *v43 = v14;
        }

        v17 = *(v14 + 2);
        v38 = *(v14 + 3);
        v18 = v17 + 1;
        if (v17 >= v38 >> 1)
        {
          v14 = sub_1000CF25C((v38 > 1), v17 + 1, 1, v14);
          *v43 = v14;
        }

        goto LABEL_39;
      }

      sub_100573ED8(44);

      v50._countAndFlagsBits = ActionType.rawValue.getter(v6);
      sub_100572A98(v50);

      v51._countAndFlagsBits = 0xD000000000000022;
      v51._object = 0x80000001005ACBF0;
      sub_100572A98(v51);
      if (!v27)
      {
        sub_1000CA864(v26, 0);
        v27 = 0xE700000000000000;
        v26 = 0x6E776F6E6B6E75;
      }

      v52._countAndFlagsBits = v26;
      v52._object = v27;
      sub_100572A98(v52);

      v28 = *v43;
      v29 = swift_isUniquelyReferenced_nonNull_native();
      *v43 = v28;
      if ((v29 & 1) == 0)
      {
        v28 = sub_1000CF25C(0, *(v28 + 2) + 1, 1, v28);
        *v43 = v28;
      }

      v31 = *(v28 + 2);
      v30 = *(v28 + 3);
      if (v31 >= v30 >> 1)
      {
        v28 = sub_1000CF25C((v30 > 1), v31 + 1, 1, v28);
        *v43 = v28;
      }

      *(v28 + 2) = v31 + 1;
      v32 = &v28[16 * v31];
      *(v32 + 4) = 0x20939CE22020;
      *(v32 + 5) = 0xA600000000000000;
      *a5 = v6;
      a5[1] = v44;
      a5[2] = v8;
      a5[3] = v9;
      a5[4] = v10;
      a5[5] = v46;
      a5[6] = v11;
    }

    return result;
  }

  sub_100573ED8(17);

  v47._countAndFlagsBits = ActionType.rawValue.getter(v6);
  sub_100572A98(v47);

  v48._countAndFlagsBits = 0x756C637865202D20;
  v48._object = 0xEB00000000646564;
  sub_100572A98(v48);
  v14 = *a2;
  v15 = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v14;
  if ((v15 & 1) == 0)
  {
    v14 = sub_1000CF25C(0, *(v14 + 2) + 1, 1, v14);
    *a2 = v14;
  }

  v17 = *(v14 + 2);
  v16 = *(v14 + 3);
  v18 = v17 + 1;
  if (v17 >= v16 >> 1)
  {
    goto LABEL_6;
  }

LABEL_39:
  *(v14 + 2) = v18;
  v41 = &v14[16 * v17];
  *(v41 + 4) = 544743456;
  *(v41 + 5) = 0xE400000000000000;
LABEL_40:
  *a5 = 0xF000000000000000;
  result = 0.0;
  *(a5 + 1) = 0u;
  *(a5 + 3) = 0u;
  *(a5 + 5) = 0u;
  return result;
}

uint64_t ActionMenu.__allocating_init(id:type:subtitle:debugDescription:elements:sort:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, char a9)
{
  v17 = swift_allocObject();
  *(v17 + 88) = 0;
  *(v17 + 96) = 0;
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  *(v17 + 48) = a5;
  strcpy(v20, "ActionMenu: ");
  BYTE5(v20[1]) = 0;
  HIWORD(v20[1]) = -5120;
  if (a7)
  {
    a2 = a7;
  }

  else
  {

    a6 = a1;
  }

  v21._countAndFlagsBits = a6;
  v21._object = a2;
  sub_100572A98(v21);

  v18 = v20[1];
  *(v17 + 56) = v20[0];
  *(v17 + 64) = v18;
  *(v17 + 80) = a8;
  *(v17 + 72) = a9 & 1;
  return v17;
}

uint64_t sub_1000E9DBC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000F233C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 56 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 48);
    v13 = *(v9 + 16);
    v12 = *(v9 + 32);
    result = memmove(v9, (v9 + 56), 56 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 16) = v13;
    *(a2 + 32) = v12;
    *(a2 + 48) = v11;
  }

  return result;
}

uint64_t sub_1000E9E90(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000F23DC(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 6, 16 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1000E9F1C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000F23F0(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    sub_1000F5318(&v5[2 * a1 + 4], a2);
    result = swift_arrayInitWithTakeFrontToBack();
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1000E9FCC(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(v5 + a1 + 32);
    memmove((v5 + a1 + 32), (v5 + a1 + 33), v7 - 1 - a1);
    *(v5 + 16) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

uint64_t ActionMenu.init(id:type:subtitle:debugDescription:elements:sort:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, char a9)
{
  v10 = v9;
  *(v9 + 88) = 0;
  *(v9 + 96) = 0;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  strcpy(v16, "ActionMenu: ");
  BYTE5(v16[1]) = 0;
  HIWORD(v16[1]) = -5120;
  if (a7)
  {
    v12 = a7;
  }

  else
  {
    v12 = a2;

    a6 = a1;
  }

  v17._countAndFlagsBits = a6;
  v17._object = v12;
  sub_100572A98(v17);

  v14 = v16[1];
  *(v10 + 56) = v16[0];
  *(v10 + 64) = v14;
  *(v10 + 80) = a8;
  *(v10 + 72) = a9 & 1;
  return v10;
}

uint64_t ActionMenu.__allocating_init(id:type:subtitle:debugDescription:sort:builder:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  *(v17 + 48) = a5;
  strcpy(v21, "ActionMenu: ");
  BYTE5(v21[1]) = 0;
  HIWORD(v21[1]) = -5120;
  if (a7)
  {
    a2 = a7;
  }

  else
  {

    a6 = a1;
  }

  v22._countAndFlagsBits = a6;
  v22._object = a2;
  sub_100572A98(v22);

  v18 = v21[1];
  *(v17 + 56) = v21[0];
  *(v17 + 64) = v18;
  *(v17 + 72) = a8 & 1;
  *(v17 + 96) = a10;
  *(v17 + 80) = _swiftEmptyArrayStorage;
  *(v17 + 88) = a9;
  return v17;
}

uint64_t ActionMenu.init(id:type:subtitle:debugDescription:sort:builder:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  *(v10 + 88) = 0;
  *(v10 + 96) = 0;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  strcpy(v18, "ActionMenu: ");
  BYTE5(v18[1]) = 0;
  HIWORD(v18[1]) = -5120;
  if (a7)
  {
    v13 = a7;
  }

  else
  {
    v13 = a2;

    a6 = a1;
  }

  v19._countAndFlagsBits = a6;
  v19._object = v13;
  sub_100572A98(v19);

  v15 = v18[1];
  *(v11 + 56) = v18[0];
  *(v11 + 64) = v15;
  *(v11 + 72) = a8 & 1;
  v16 = *(v11 + 88);
  *(v11 + 88) = a9;
  *(v11 + 96) = a10;

  sub_1000F3E14(v16);

  *(v11 + 80) = _swiftEmptyArrayStorage;
  return v11;
}

uint64_t MetricsEvent.Dialog.message.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t MetricsEvent.Dialog.messageCode.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t ActionMenu.elements(excluding:includeUnsupported:)(uint64_t a1, char a2)
{
  v3 = v2;
  v50 = 0;
  v51 = 0xE000000000000000;
  v60._countAndFlagsBits = 8254;
  v60._object = 0xE200000000000000;
  sub_100572A98(v60);
  v59 = v2;
  type metadata accessor for ActionMenu();
  sub_100574098();
  v4 = 0;
  v5 = 0xE000000000000000;
  v6 = sub_1000CF25C(0, 1, 1, _swiftEmptyArrayStorage);
  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  v9 = (v8 + 1);
  if (v8 >= v7 >> 1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v10 = swift_allocObject();
    *(v6 + 2) = v9;
    v11 = &v6[16 * v8];
    *(v11 + 4) = v4;
    *(v11 + 5) = v5;
    *(v10 + 16) = v6;
    v46 = (v10 + 16);
    v12 = *(v3 + 88);
    if (v12)
    {

      v14 = v12(v13);
      sub_1000F3E14(v12);
    }

    else
    {
      v14 = _swiftEmptyArrayStorage;
    }

    swift_beginAccess();
    v42 = v3;
    v50 = v14;

    sub_1000DA0F8(v15);
    v8 = v50;
    v58 = &_swiftEmptySetSingleton;
    v16 = *(v50 + 2);

    v45 = v16;
    if (!v16)
    {
      break;
    }

    v17 = 0;
    v4 = 0;
    v6 = (v8 + 40);
    v9 = _swiftEmptyArrayStorage;
    v44 = v8;
    while (1)
    {
      v7 = *(v8 + 16);
      if (v17 >= v7)
      {
        break;
      }

      v49 = v17;
      v19 = *(v6 - 1);
      v18 = *v6;
      v5 = *(v6 + 1);
      v3 = *(v6 + 2);
      v20 = *(v6 + 3);
      v21 = *(v6 + 4);
      v22 = *(v6 + 5);
      v50 = v19;
      v51 = v18;
      v52 = v5;
      v53 = v3;
      v54 = v20;
      v55 = v21;
      v56 = v22;
      sub_1000E66D8(v19);
      if (sub_1000EA7CC(&v50, v46, a1, a2 & 1, &v58))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v57 = v9;
        v43 = v4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000CC5D4(0, *(v9 + 2) + 1, 1);
          v9 = v57;
        }

        v24 = v5;
        v25 = v18;
        v26 = v3;
        v27 = v20;
        v28 = v21;
        v29 = v22;
        v30 = v19;
        v32 = *(v9 + 2);
        v31 = *(v9 + 3);
        v33 = v32 + 1;
        if (v32 >= v31 >> 1)
        {
          sub_1000CC5D4((v31 > 1), v32 + 1, 1);
          v33 = v32 + 1;
          v30 = v19;
          v29 = v22;
          v28 = v21;
          v27 = v20;
          v26 = v3;
          v25 = v18;
          v24 = v5;
          v9 = v57;
        }

        *(v9 + 2) = v33;
        v34 = &v9[56 * v32];
        *(v34 + 4) = v30;
        *(v34 + 5) = v25;
        *(v34 + 6) = v24;
        *(v34 + 7) = v26;
        *(v34 + 8) = v27;
        *(v34 + 9) = v28;
        *(v34 + 10) = v29;
        v4 = v43;
      }

      else
      {
        sub_1000F3DC0(v19);
      }

      v17 = v49 + 1;
      v6 += 56;
      v8 = v44;
      if (v45 == v49 + 1)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    v6 = sub_1000CF25C((v7 > 1), v9, 1, v6);
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_17:
  v35 = v9;

  if (a2)
  {
    v37 = v9;
    v38 = v46;
    v39 = sub_1000F3898(v37, v46, &v58);

    v35 = v39;
    v40 = v42;
    if (*(v35 + 2))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v40 = v42;
    v38 = v46;
    if (*(v35 + 2))
    {
      goto LABEL_23;
    }
  }

  if (!*(*v38 + 2))
  {
    __break(1u);
    return result;
  }

  sub_1000F3B88(1uLL, 1, 0xD00000000000001CLL, 0x80000001005ACB20);
LABEL_23:
  if (*(v40 + 72) == 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_1000F233C(v35);
    }

    v41 = *(v35 + 2);
    v50 = v35 + 32;
    v51 = v41;
    sub_1000F24D4(&v50, sub_1000F5574, sub_1000F5530);
  }

  return v35;
}

uint64_t sub_1000EA7CC(uint64_t *a1, char **a2, uint64_t a3, char a4, uint64_t *a5)
{
  v5 = *a1;
  if (*a1 < 0)
  {
    return 1;
  }

  v6 = a1[3];
  if (((1 << v5) & 0xF8FFFFD7FFE7FLL) != 0)
  {
LABEL_3:
    v10 = sub_100248604(v5, a3);
    if (v10)
    {
      sub_100573ED8(17);

      v40._countAndFlagsBits = ActionType.rawValue.getter(v5);
      sub_100572A98(v40);

      v11._countAndFlagsBits = 0x756C637865202D20;
      v11._object = 0xEB00000000646564;
      goto LABEL_5;
    }

    v20 = v6(v10);
    if (v21 == 1)
    {
      if (a4)
      {
        v22 = ActionType.mutuallyExclusiveActions.getter(v5);
        if (!v22)
        {
          v22 = &_swiftEmptySetSingleton;
        }

        sub_1000EADA4(v22);
        sub_1001DFB50(v5);
      }

      v41._countAndFlagsBits = ActionType.rawValue.getter(v5);
      sub_100572A98(v41);

      v12 = 0x20939CE22020;
      v13 = 0xA600000000000000;
      v14 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_1000CF25C(0, *(v14 + 2) + 1, 1, v14);
        *a2 = v14;
      }

      v17 = *(v14 + 2);
      v24 = *(v14 + 3);
      v18 = v17 + 1;
      if (v17 < v24 >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v25 = v21;
      v26 = v20;
      if (a4 & 1) == 0 || (v27 = *a5, , v28 = sub_1001B4BCC(v5, v27), , (v28))
      {
        v42._countAndFlagsBits = ActionType.rawValue.getter(v5);
        sub_100572A98(v42);

        v43._countAndFlagsBits = 2108704;
        v43._object = 0xE300000000000000;
        sub_100572A98(v43);
        if (v25)
        {
          v29._countAndFlagsBits = v26;
        }

        else
        {
          sub_1000CA864(v26, 0);
          v25 = 0xE700000000000000;
          v29._countAndFlagsBits = 0x6E776F6E6B6E75;
        }

        v29._object = v25;
        sub_100572A98(v29);

        v12 = 544743456;
        v13 = 0xE400000000000000;
        v14 = *a2;
        v33 = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v14;
        if ((v33 & 1) == 0)
        {
          v14 = sub_1000CF25C(0, *(v14 + 2) + 1, 1, v14);
          *a2 = v14;
        }

        v17 = *(v14 + 2);
        v16 = *(v14 + 3);
        v18 = v17 + 1;
        if (v17 < v16 >> 1)
        {
          result = 0;
          goto LABEL_31;
        }

LABEL_47:
        v14 = sub_1000CF25C((v16 > 1), v18, 1, v14);
        result = 0;
        goto LABEL_48;
      }

      v35 = ActionType.mutuallyExclusiveActions.getter(v5);
      if (!v35)
      {
        v35 = &_swiftEmptySetSingleton;
      }

      sub_1000EADA4(v35);
      sub_100573ED8(44);

      v44._countAndFlagsBits = ActionType.rawValue.getter(v5);
      sub_100572A98(v44);

      v45._countAndFlagsBits = 0xD000000000000022;
      v45._object = 0x80000001005ACBF0;
      sub_100572A98(v45);
      if (v25)
      {
        v36._countAndFlagsBits = v26;
      }

      else
      {
        sub_1000CA864(v26, 0);
        v25 = 0xE700000000000000;
        v36._countAndFlagsBits = 0x6E776F6E6B6E75;
      }

      v36._object = v25;
      sub_100572A98(v36);

      v12 = 0x20939CE22020;
      v13 = 0xA600000000000000;
      v14 = *a2;
      v39 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v14;
      if ((v39 & 1) == 0)
      {
        v14 = sub_1000CF25C(0, *(v14 + 2) + 1, 1, v14);
        *a2 = v14;
      }

      v17 = *(v14 + 2);
      v24 = *(v14 + 3);
      v18 = v17 + 1;
      if (v17 < v24 >> 1)
      {
LABEL_18:
        result = 1;
        goto LABEL_31;
      }
    }

    v14 = sub_1000CF25C((v24 > 1), v18, 1, v14);
    result = 1;
LABEL_48:
    *a2 = v14;
    goto LABEL_31;
  }

  v30 = a3;
  if (((1 << v5) & 0x700000000180) != 0)
  {
    v31 = sub_1000CAB70();
    v32 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v31);
    a3 = v30;
    if (v32)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v37 = sub_1000CAB1C();
    v38 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v37);
    a3 = v30;
    if (v38)
    {
      goto LABEL_3;
    }
  }

  if (qword_1006E5608 != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    sub_100573ED8(29);

    v46._countAndFlagsBits = ActionType.rawValue.getter(v5);
    sub_100572A98(v46);

    v11._object = 0x80000001005ACC20;
    v11._countAndFlagsBits = 0xD000000000000017;
LABEL_5:
    sub_100572A98(v11);
    v12 = 544743456;
    v13 = 0xE400000000000000;
    v14 = *a2;
    v15 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v14;
    if ((v15 & 1) == 0)
    {
      v14 = sub_1000CF25C(0, *(v14 + 2) + 1, 1, v14);
      *a2 = v14;
    }

    v17 = *(v14 + 2);
    v16 = *(v14 + 3);
    v18 = v17 + 1;
    if (v17 < v16 >> 1)
    {
      result = 0;
LABEL_31:
      *(v14 + 2) = v18;
      v34 = &v14[16 * v17];
      *(v34 + 4) = v12;
      *(v34 + 5) = v13;
      return result;
    }

    goto LABEL_47;
  }

  return 0;
}

uint64_t sub_1000EADA4(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_10024F94C(&v10, *(*(v1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1000EAE80(uint64_t a1)
{
  v2 = sub_10056DF88();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = *(v6 + 16);

  if (!v7)
  {
  }

  v10 = 0;
  v24 = (v3 + 16);
  v11 = (v3 + 8);
  v12 = (v6 + 40);
  *&v9 = 136446210;
  v21 = v9;
  v22 = v11;
  v23 = v7;
  while (v10 < *(v6 + 16))
  {
    v13 = *v12;
    v25 = *(v12 - 1);
    if (qword_1006E4C78 != -1)
    {
      swift_once();
    }

    v14 = sub_10000C49C(v2, qword_1006E68D0);
    (*v24)(v5, v14, v2);

    v15 = sub_10056DF68();
    v16 = sub_100573448();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = v2;
      v19 = v6;
      v20 = swift_slowAlloc();
      v26 = v20;
      *v17 = v21;
      *(v17 + 4) = sub_1000C9784(v25, v13, &v26);
      _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s", v17, 0xCu);
      sub_100010474(v20);
      v6 = v19;
      v2 = v18;
      v7 = v23;

      v11 = v22;
    }

    result = (*v11)(v5, v2);
    ++v10;
    v12 += 2;
    if (v7 == v10)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t ActionMenu.append(_:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 80) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_1000CF368(0, *(v3 + 2) + 1, 1, v3);
    *(v1 + 80) = v3;
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  if (v6 >= v5 >> 1)
  {
    v3 = sub_1000CF368((v5 > 1), v6 + 1, 1, v3);
  }

  *(v3 + 2) = v6 + 1;
  v7 = &v3[56 * v6];
  v8 = *a1;
  v9 = *(a1 + 16);
  v10 = *(a1 + 32);
  *(v7 + 10) = *(a1 + 48);
  *(v7 + 3) = v9;
  *(v7 + 4) = v10;
  *(v7 + 2) = v8;
  *(v1 + 80) = v3;
  swift_endAccess();
  return sub_1000E80D0(a1, v12);
}

Swift::Void __swiftcall ActionMenu.append(contentsOf:)(Swift::OpaquePointer contentsOf)
{
  swift_beginAccess();

  sub_1000DA0F8(v1);
  swift_endAccess();
}

uint64_t ActionMenu.deinit()
{

  sub_1000F3E14(*(v0 + 88));
  return v0;
}

uint64_t ActionMenu.__deallocating_deinit()
{

  sub_1000F3E14(*(v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_1000EB2F0@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t sub_1000EB300()
{
  v1 = *(*v0 + 56);

  return v1;
}

uint64_t ActionMenu.Item.menuItemConfiguring.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ActionMenu.Item.execute.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t (*ActionMenuItemImage.init(systemName:)(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  return sub_1000F3E78;
}

uint64_t sub_1000EB4A8()
{

  return sub_100570548();
}

uint64_t (*ActionMenuItemImage.init(uiImage:)(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  return sub_1000F3F14;
}

uint64_t sub_1000EB588()
{
  v0 = sub_100572898();
  v1 = [objc_opt_self() imageNamed:v0];

  if (v1)
  {
    return sub_100570538();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000EB668()
{
  v0 = sub_100572898();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  if (v1)
  {
    return sub_100570538();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000EB6CC()
{

  return sub_100570578();
}

id sub_1000EB71C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = sub_100572898();
  v5 = [objc_opt_self() *a3];

  return v5;
}

Swift::Int LaunchURL.Resolver.PerformOption.hashValue.getter(char a1)
{
  sub_100574678();
  sub_100574688(a1 & 1);
  return sub_1005746C8();
}

uint64_t sub_1000EB7F4(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_100574498();
  }
}

uint64_t sub_1000EB820()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, qword_1006E68D0);
  sub_10000C49C(v0, qword_1006E68D0);
  return sub_10056DF78();
}

unint64_t sub_1000EB8B4(uint64_t a1)
{
  sub_100574678();
  MenuType.rawValue.getter(a1);
  sub_1005729F8();

  v2 = sub_1005746C8();

  return sub_1000EBD40(a1, v2);
}

unint64_t sub_1000EB93C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100573E58(*(v2 + 40));

  return sub_1000EC184(a1, v4);
}

unint64_t sub_1000EB980(unsigned __int8 a1)
{
  sub_100574678();
  sub_100574688(a1);
  v2 = sub_1005746C8();
  return sub_1000EC640(a1, v2);
}

unint64_t sub_1000EB9E8(uint64_t a1)
{
  sub_10056CAE8();
  sub_1000F4184(&qword_1006E6A68);
  v2 = sub_100572738();

  return sub_1000EC24C(a1, v2);
}

unint64_t sub_1000EBA6C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100573A48(*(v2 + 40));
  return sub_1000EC3F8(a1, v4, &qword_1006E9540);
}

unint64_t sub_1000EBABC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100573A48(*(v2 + 40));
  return sub_1000EC3F8(a1, v4, &qword_1006E6A58);
}

unint64_t sub_1000EBB0C(Swift::UInt a1, Swift::UInt a2)
{
  sub_100574678();
  sub_100574688(a1);
  sub_100574688(a2);
  v4 = sub_1005746C8();

  return sub_1000EC4C4(a1, a2, v4);
}

unint64_t sub_1000EBB8C(uint64_t a1)
{
  sub_1005728D8();
  sub_100574678();
  sub_1005729F8();
  v2 = sub_1005746C8();

  return sub_1000EC53C(a1, v2);
}

unint64_t sub_1000EBC1C(unsigned __int8 a1)
{
  sub_100574678();
  sub_100574688(a1 + 1);
  v2 = sub_1005746C8();
  return sub_1000EC640(a1, v2);
}

unint64_t sub_1000EBC88(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100574498())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000EBD40(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE800000000000000;
      v8 = 0x6C6576654C706F74;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x7463416B63697571;
          v7 = 0xEB000000006E6F69;
          break;
        case 2:
          v7 = 0xE300000000000000;
          v8 = 7368564;
          break;
        case 3:
          v7 = 0xE700000000000000;
          v8 = 0x7972617262696CLL;
          break;
        case 4:
          v8 = 0x7473696C79616C70;
          break;
        case 5:
          v8 = 0x6B63616279616C70;
          break;
        case 6:
          v8 = 0x697461676976616ELL;
          v7 = 0xEA00000000006E6FLL;
          break;
        case 7:
          v7 = 0xE500000000000000;
          v8 = 0x6574736174;
          break;
        case 8:
          v8 = 0x6E6974726F706572;
          v7 = 0xE900000000000067;
          break;
        case 9:
          v7 = 0xE90000000000006ELL;
          v8 = 0x6F697463416E6970;
          break;
        case 0xA:
          v8 = 0x7463757274736564;
          v7 = 0xEB00000000657669;
          break;
        case 0xB:
          v8 = 0x7473696C79616C70;
          v7 = 0xEC00000074726F53;
          break;
        case 0xC:
          v7 = 0xE400000000000000;
          v8 = 1867804519;
          break;
        default:
          break;
      }

      v9 = 0xE800000000000000;
      v10 = 0x6C6576654C706F74;
      switch(a1)
      {
        case 1:
          v9 = 0xEB000000006E6F69;
          if (v8 == 0x7463416B63697571)
          {
            goto LABEL_39;
          }

          goto LABEL_40;
        case 2:
          v9 = 0xE300000000000000;
          if (v8 != 7368564)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 3:
          v9 = 0xE700000000000000;
          if (v8 != 0x7972617262696CLL)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 4:
          if (v8 != 0x7473696C79616C70)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 5:
          if (v8 != 0x6B63616279616C70)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 6:
          v9 = 0xEA00000000006E6FLL;
          if (v8 != 0x697461676976616ELL)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 7:
          v9 = 0xE500000000000000;
          if (v8 != 0x6574736174)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 8:
          v9 = 0xE900000000000067;
          if (v8 != 0x6E6974726F706572)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 9:
          v9 = 0xE90000000000006ELL;
          if (v8 != 0x6F697463416E6970)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 10:
          v10 = 0x7463757274736564;
          v9 = 0xEB00000000657669;
          goto LABEL_38;
        case 11:
          v9 = 0xEC00000074726F53;
          if (v8 != 0x7473696C79616C70)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 12:
          v9 = 0xE400000000000000;
          if (v8 != 1867804519)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        default:
LABEL_38:
          if (v8 != v10)
          {
            goto LABEL_40;
          }

LABEL_39:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_40:
          v11 = sub_100574498();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_1000EC184(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000F40D4(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100573E68();
      sub_1000F4130(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000EC24C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_10056CAE8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_1000F4184(&qword_1006E6A70);
      v15 = sub_1005727E8();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_1000EC3F8(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_1000D3B98(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_100573A58();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000EC4C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1000EC53C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1005728D8();
      v8 = v7;
      if (v6 == sub_1005728D8() && v8 == v9)
      {
        break;
      }

      v11 = sub_100574498();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1000EC640(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1000EC6B0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100009DCC(&qword_1006E6B40);
  v37 = a2;
  result = sub_1005741A8();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_100574678();
      sub_1005729F8();
      result = sub_1005746C8();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000EC970(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100009DCC(&qword_1006E6B68);
  v32 = a2;
  v6 = sub_1005741A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_33:

    goto LABEL_34;
  }

  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = v6 + 64;
  while (v12)
  {
    v20 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_16:
    v23 = v20 | (v8 << 6);
    v24 = *(*(v5 + 48) + v23);
    v25 = *(*(v5 + 56) + 8 * v23);
    if ((v32 & 1) == 0)
    {
    }

    sub_100574678();
    sub_1005729F8();

    v15 = sub_1005746C8();
    v16 = -1 << *(v7 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) != 0)
    {
      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = 0;
      v27 = (63 - v16) >> 6;
      do
      {
        if (++v18 == v27 && (v26 & 1) != 0)
        {
          goto LABEL_36;
        }

        v28 = v18 == v27;
        if (v18 == v27)
        {
          v18 = 0;
        }

        v26 |= v28;
        v29 = *(v14 + 8 * v18);
      }

      while (v29 == -1);
      v19 = __clz(__rbit64(~v29)) + (v18 << 6);
    }

    *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v7 + 48) + v19) = v24;
    *(*(v7 + 56) + 8 * v19) = v25;
    ++*(v7 + 16);
  }

  v21 = v8;
  while (1)
  {
    v8 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      JUMPOUT(0x1000ECD68);
    }

    if (v8 >= v13)
    {
      break;
    }

    v22 = v9[v8];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v12 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  if (v32)
  {
    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  v3 = v2;
LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1000ECD9C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100009DCC(&qword_1006E6B48);
  result = sub_1005741A8();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_1000F51DC((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_1000F40D4(v23, &v36);
        sub_100081F38(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_100573E58(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_1000F51DC(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1000ED054(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100009DCC(&qword_1006E6B30);
  result = sub_1005741A8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_100574678();
      sub_100574688(v20);
      result = sub_1005746C8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1000ED2D4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100009DCC(&qword_1006E6B28);
  v34 = a2;
  result = sub_1005741A8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_100574678();
      sub_1005729F8();
      result = sub_1005746C8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000ED57C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_10056CAE8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100009DCC(&qword_1006E5C48);
  v39 = a2;
  result = sub_1005741A8();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1000F4184(&qword_1006E6A68);
      result = sub_100572738();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1000ED944(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100009DCC(&unk_1006E6B10);
  result = sub_1005741A8();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (a2)
      {
        sub_1000F51DC(v21, v32);
      }

      else
      {
        sub_100081F38(v21, v32);
        v22 = v20;
      }

      result = sub_100573A48(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_1000F51DC(v32, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1000EDBBC(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  v42 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10056CAE8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100009DCC(&qword_1006E6AF8);
  v43 = a2;
  result = sub_1005741A8();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1000F51EC(v27 + v28 * v24, v47);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1000F52B4(v29 + v28 * v24, v47);
      }

      sub_1000F4184(&qword_1006E6A68);
      result = sub_100572738();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_1000F51EC(v47, *(v12 + 56) + v28 * v20);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1000EE00C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100009DCC(&qword_1006E6AE8);
  v33 = a2;
  result = sub_1005741A8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1000F51DC(v24, v34);
      }

      else
      {
        sub_100081F38(v24, v34);
      }

      sub_100574678();
      sub_1005729F8();
      result = sub_1005746C8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1000F51DC(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1000EE2C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100009DCC(&qword_1006E6AD0);
  result = sub_1005741A8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = a2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v23 = *v21;
      v22 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      sub_100574678();
      sub_100574688(v23);
      sub_100574688(v22);
      result = sub_1005746C8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v22;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1000EE55C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100009DCC(&qword_1006E6A60);
  result = sub_1005741A8();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
        swift_unknownObjectRetain();
      }

      result = sub_100573A48(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000EE7CC(uint64_t a1, int a2)
{
  v3 = v2;
  v52 = sub_100009DCC(&qword_1006E6AC0);
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v40 - v6;
  v7 = sub_10056CAE8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100009DCC(&qword_1006E6AC8);
  v47 = a2;
  result = sub_1005741A8();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_1000F4184(&qword_1006E6A68);
      result = sub_100572738();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

Swift::Int sub_1000EEC68(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100009DCC(&qword_1006E6A98);
  v46 = a2;
  v6 = sub_1005741A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v43 = v3;
    v44 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    v45 = v5;
    while (v11)
    {
      v17 = __clz(__rbit64(v11));
      v47 = (v11 - 1) & v11;
LABEL_15:
      v21 = v17 | (v8 << 6);
      v49 = *(*(v5 + 48) + v21);
      v22 = *(v5 + 56) + 56 * v21;
      v48 = *v22;
      v24 = *(v22 + 8);
      v23 = *(v22 + 16);
      v26 = *(v22 + 24);
      v25 = *(v22 + 32);
      v27 = *(v22 + 40);
      v28 = *(v22 + 48);
      if ((v46 & 1) == 0)
      {
        v29 = v24;
        v30 = v23;
        v31 = v26;
        v32 = v25;
        v33 = v27;
        v34 = v28;
      }

      sub_100574678();
      sub_100574688(v49 + 1);
      result = sub_1005746C8();
      v35 = -1 << *(v7 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v13 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v15 = v28;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v13 + 8 * v37);
          if (v41 != -1)
          {
            v14 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v36) & ~*(v13 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v15 = v28;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + v14) = v49;
      v16 = *(v7 + 56) + 56 * v14;
      *v16 = v48;
      *(v16 + 8) = v24;
      *(v16 + 16) = v23;
      *(v16 + 24) = v26;
      *(v16 + 32) = v25;
      *(v16 + 40) = v27;
      *(v16 + 48) = v15;
      ++*(v7 + 16);
      v5 = v45;
      v11 = v47;
    }

    v18 = v8;
    result = v44;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v12)
      {
        break;
      }

      v20 = v44[v8];
      ++v18;
      if (v20)
      {
        v17 = __clz(__rbit64(v20));
        v47 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v46)
    {
      v42 = 1 << *(v5 + 32);
      if (v42 >= 64)
      {
        bzero(v44, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v44 = -1 << v42;
      }

      *(v5 + 16) = 0;
    }

    v3 = v43;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1000EEF68(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = sub_10056D9E8();
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100009DCC(&qword_1006E6A50);
  v42 = a2;
  result = sub_1005741A8();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_100574678();
      sub_1005729F8();
      result = sub_1005746C8();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1000EF2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1000F30A0(a3, a4, sub_1000EBC88);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1000EC6B0(v18, a5 & 1);
      v13 = sub_1000F30A0(a3, a4, sub_1000EBC88);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_100574578();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1000F084C();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

unint64_t sub_1000EF498(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1000EB8B4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1000EC970(v14, a3 & 1);
      result = sub_1000EB8B4(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_100574578();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1000F09C4();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

_OWORD *sub_1000EF5E4(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1000EB93C(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1000F0B20();
      goto LABEL_7;
    }

    sub_1000ECD9C(v13, a3 & 1);
    v19 = sub_1000EB93C(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1000F40D4(a2, v21);
      return sub_1000F0468(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_100574578();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_100010474(v17);

  return sub_1000F51DC(a1, v17);
}

uint64_t sub_1000EF730(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000F30A0(a2, a3, sub_1000EBC88);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000ED2D4(v16, a4 & 1);
      v11 = sub_1000F30A0(a2, a3, sub_1000EBC88);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_100574578();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1000F0E10();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void sub_1000EF8D4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_10056CAE8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1000EB9E8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1000F0F80();
      goto LABEL_7;
    }

    sub_1000ED57C(v17, a3 & 1);
    v23 = sub_1000EB9E8(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_1000F04E4(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_100574578();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

_OWORD *sub_1000EFAA0(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1000EBA6C(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1000F11F4();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1000ED944(v13, a3 & 1);
    v8 = sub_1000EBA6C(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_1000D3B98(0, &qword_1006E9540);
      result = sub_100574578();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_100010474(v19);

    return sub_1000F51DC(a1, v19);
  }

  else
  {
    sub_1000F059C(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_1000EFBF0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_10056CAE8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1000EB9E8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1000F1374();
      goto LABEL_7;
    }

    sub_1000EDBBC(v17, a3 & 1);
    v24 = sub_1000EB9E8(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1000F0604(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_100574578();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = v21 + *(*(type metadata accessor for PushNotificationObserver.RegisteredHandler() - 8) + 72) * v14;

  return sub_1000F5250(a1, v22);
}

_OWORD *sub_1000EFDD8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000F30A0(a2, a3, sub_1000EBC88);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1000F1678();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1000EE00C(v16, a4 & 1);
    v11 = sub_1000F30A0(a2, a3, sub_1000EBC88);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_100574578();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_100010474(v22);

    return sub_1000F51DC(a1, v22);
  }

  else
  {
    sub_1000F06E0(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_1000EFF50(uint64_t a1, Swift::UInt a2, Swift::UInt a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1000EBB0C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a4 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    v19 = result;
    sub_1000F181C();
    result = v19;
    goto LABEL_8;
  }

  sub_1000EE2C4(v16, a4 & 1);
  result = sub_1000EBB0C(a2, a3);
  if ((v17 & 1) == (v20 & 1))
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      *(v21[7] + 8 * result) = a1;
      return result;
    }

    v21[(result >> 6) + 8] |= 1 << result;
    v22 = (v21[6] + 16 * result);
    *v22 = a2;
    v22[1] = a3;
    *(v21[7] + 8 * result) = a1;
    v23 = v21[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v21[2] = v24;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  type metadata accessor for MPCPlayerRequestTracklistRange(0);
  result = sub_100574578();
  __break(1u);
  return result;
}

id sub_1000F008C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1000EBABC(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1000EE55C(v13, a3 & 1);
      v8 = sub_1000EBABC(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1000D3B98(0, &qword_1006E6A58);
        result = sub_100574578();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_1000F196C();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return swift_unknownObjectRelease();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

uint64_t sub_1000F0208(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_10056CAE8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1000EB9E8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1000F1AD0();
      goto LABEL_7;
    }

    sub_1000EE7CC(v17, a3 & 1);
    v28 = sub_1000EB9E8(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1000F074C(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_100574578();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_100009DCC(&qword_1006E6AC0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

unint64_t sub_1000F0418(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

_OWORD *sub_1000F0468(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1000F51DC(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_1000F04E4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_10056CAE8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_1000F059C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1000F51DC(a3, (a4[7] + 32 * a1));
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

uint64_t sub_1000F0604(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_10056CAE8();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  result = sub_1000F51EC(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

_OWORD *sub_1000F06E0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1000F51DC(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1000F074C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_10056CAE8();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_100009DCC(&qword_1006E6AC0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

void *sub_1000F084C()
{
  v1 = v0;
  sub_100009DCC(&qword_1006E6B40);
  v2 = *v0;
  v3 = sub_100574198();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_1000F09C4()
{
  v1 = v0;
  sub_100009DCC(&qword_1006E6B68);
  v2 = *v0;
  v3 = sub_100574198();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_1000F0B20()
{
  v1 = v0;
  sub_100009DCC(&qword_1006E6B48);
  v2 = *v0;
  v3 = sub_100574198();
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
        v18 = 40 * v17;
        sub_1000F40D4(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_100081F38(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1000F51DC(v22, (*(v4 + 56) + v17));
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

void *sub_1000F0CC4()
{
  v1 = v0;
  sub_100009DCC(&qword_1006E6B30);
  v2 = *v0;
  v3 = sub_100574198();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1000F0E10()
{
  v1 = v0;
  sub_100009DCC(&qword_1006E6B28);
  v2 = *v0;
  v3 = sub_100574198();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

char *sub_1000F0F80()
{
  v1 = v0;
  v31 = sub_10056CAE8();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006E5C48);
  v3 = *v0;
  v4 = sub_100574198();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_1000F11F4()
{
  v1 = v0;
  sub_100009DCC(&unk_1006E6B10);
  v2 = *v0;
  v3 = sub_100574198();
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
        sub_100081F38(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1000F51DC(v19, (*(v4 + 56) + 32 * v17));
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

char *sub_1000F1374()
{
  v1 = v0;
  v2 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  v36 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10056CAE8();
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006E6AF8);
  v5 = *v0;
  v6 = sub_100574198();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_1000F52B4(*(v5 + 56) + v26, v35);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_1000F51EC(v25, *(v27 + 56) + v26);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1000F1678()
{
  v1 = v0;
  sub_100009DCC(&qword_1006E6AE8);
  v2 = *v0;
  v3 = sub_100574198();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_100081F38(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1000F51DC(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1000F181C()
{
  v1 = v0;
  sub_100009DCC(&qword_1006E6AD0);
  v2 = *v0;
  v3 = sub_100574198();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1000F196C()
{
  v1 = v0;
  sub_100009DCC(&qword_1006E6A60);
  v2 = *v0;
  v3 = sub_100574198();
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = swift_unknownObjectRetain();
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

char *sub_1000F1AD0()
{
  v1 = v0;
  v41 = sub_100009DCC(&qword_1006E6AC0);
  v44 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v30 - v2;
  v39 = sub_10056CAE8();
  v43 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006E6AC8);
  v4 = *v0;
  v5 = sub_100574198();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_1000F1E2C()
{
  sub_100009DCC(&qword_1006E6A98);
  v29 = v0;
  v1 = *v0;
  v30 = sub_100574198();
  if (*(v1 + 16))
  {
    result = (v30 + 64);
    v3 = ((1 << *(v30 + 32)) + 63) >> 6;
    if (v30 != v1 || result >= v1 + 64 + 8 * v3)
    {
      result = memmove(result, (v1 + 64), 8 * v3);
    }

    v5 = 0;
    *(v30 + 16) = *(v1 + 16);
    v6 = 1 << *(v1 + 32);
    v7 = *(v1 + 64);
    v8 = -1;
    if (v6 < 64)
    {
      v8 = ~(-1 << v6);
    }

    v9 = v8 & v7;
    v10 = (v6 + 63) >> 6;
    if ((v8 & v7) != 0)
    {
      do
      {
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_17:
        v14 = v11 | (v5 << 6);
        v15 = *(v1 + 56) + 56 * v14;
        v16 = *v15;
        v17 = *(v15 + 8);
        v18 = *(v15 + 16);
        v19 = *(v15 + 24);
        v20 = *(v15 + 32);
        v21 = *(v15 + 40);
        v22 = *(v15 + 48);
        *(*(v30 + 48) + v14) = *(*(v1 + 48) + v14);
        v23 = *(v30 + 56) + 56 * v14;
        *v23 = v16;
        *(v23 + 8) = v17;
        *(v23 + 16) = v18;
        *(v23 + 24) = v19;
        *(v23 + 32) = v20;
        *(v23 + 40) = v21;
        *(v23 + 48) = v22;
        v24 = v17;
        v25 = v18;
        v26 = v19;
        v27 = v20;
        v28 = v21;
        result = v22;
      }

      while (v9);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_19;
      }

      v13 = *(v1 + 64 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v29 = v30;
  }

  return result;
}

char *sub_1000F1FE8()
{
  v1 = v0;
  v35 = sub_10056D9E8();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006E6A50);
  v3 = *v0;
  v4 = sub_100574198();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_1000F2268(uint64_t result, int64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_1000CFDD4(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_1001E99B0(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

uint64_t sub_1000F2364(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_100574178();
  }

  return sub_100573F68();
}

Swift::Int sub_1000F2440(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100303F0C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_1000F24D4(v5, sub_1000F5574, sub_1000F5530);
  *a1 = v2;
  return result;
}