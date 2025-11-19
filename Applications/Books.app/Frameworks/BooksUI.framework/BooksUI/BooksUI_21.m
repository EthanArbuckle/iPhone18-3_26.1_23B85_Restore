unint64_t sub_2233A4()
{
  result = qword_318438;
  if (!qword_318438)
  {
    sub_261FA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318438);
  }

  return result;
}

uint64_t sub_223400@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261A70();
  *a1 = result;
  return result;
}

uint64_t sub_22342C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261A70();
  *a1 = result;
  return result;
}

uint64_t sub_223458(uint64_t *a1)
{
  v1 = *a1;

  return sub_261A80();
}

uint64_t sub_223484(uint64_t *a1)
{
  v1 = *a1;

  return sub_261A80();
}

uint64_t sub_2234B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_223548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_316F68, &unk_269C50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_2EF0(&qword_322098, &unk_28B530);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_223664(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2EF0(&qword_316F68, &unk_269C50);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_2EF0(&qword_322098, &unk_28B530);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_223778()
{
  sub_223834(319, &qword_316FE8, type metadata accessor for ColorConstants);
  if (v0 <= 0x3F)
  {
    sub_223834(319, &qword_319360, type metadata accessor for FontConstants.ListItem);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_223834(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2611E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_22388C()
{
  result = qword_326AF0;
  if (!qword_326AF0)
  {
    sub_2F9C(&qword_326A38, &qword_28B4C8);
    sub_223930();
    sub_1AB600(&qword_317580, &qword_317588, &qword_26B7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326AF0);
  }

  return result;
}

unint64_t sub_223930()
{
  result = qword_326AF8;
  if (!qword_326AF8)
  {
    sub_2F9C(&qword_326A30, &qword_28B490);
    sub_2F9C(&qword_326A28, &qword_28B458);
    sub_261FA0();
    sub_2233A4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1AB600(&qword_3183C8, &qword_3183D0, &qword_26B240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326AF8);
  }

  return result;
}

uint64_t sub_223A5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double SizeConstants.Gutter.default.getter()
{
  result = 24.0;
  if (*v0)
  {
    return 16.0;
  }

  return result;
}

uint64_t sub_223BF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SizeConstants.Environment(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_223C70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SizeConstants.Environment(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_223D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_223E2C();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_223D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_223E2C();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_223DF4()
{
  sub_223E2C();
  sub_261F30();
  __break(1u);
}

unint64_t sub_223E2C()
{
  result = qword_326CB0;
  if (!qword_326CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326CB0);
  }

  return result;
}

__n128 ToolbarActionButtonMenuItem.init(title:isEnabled:isExplicit:action:subtitle:icon:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  type metadata accessor for ProfileRestrictions();
  sub_226530(&qword_326DC0, type metadata accessor for ProfileRestrictions);
  *a7 = sub_261900();
  *(a7 + 8) = v14;
  *(a7 + 16) = swift_getKeyPath();
  *(a7 + 56) = 0;
  v15 = type metadata accessor for ToolbarActionButtonMenuItem();
  v16 = v15[6];
  *(a7 + v16) = swift_getKeyPath();
  sub_2EF0(&qword_318150, &qword_279A70);
  swift_storeEnumTagMultiPayload();
  v17 = v15[7];
  *(a7 + v17) = swift_getKeyPath();
  sub_2EF0(&qword_316930, &qword_2689A0);
  swift_storeEnumTagMultiPayload();
  v18 = v15[8];
  v19 = sub_260BD0();
  (*(*(v19 - 8) + 32))(a7 + v18, a1, v19);
  *(a7 + v15[9]) = a2;
  *(a7 + v15[10]) = a3;
  sub_F7CC(a4, a7 + v15[11]);
  sub_A96C8(a5, a7 + v15[12]);
  v20 = a7 + v15[13];
  v21 = *(a6 + 16);
  *v20 = *a6;
  *(v20 + 16) = v21;
  result = *(a6 + 25);
  *(v20 + 25) = result;
  return result;
}

uint64_t type metadata accessor for ToolbarActionButtonMenuItem()
{
  result = qword_326D18;
  if (!qword_326D18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224094@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_8198(v1 + 16, v11, &qword_31A240, &qword_26E588);
  if (v13 == 1)
  {
    v9 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v9;
    *(a1 + 32) = v12;
  }

  else
  {
    sub_264900();
    v10 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

uint64_t sub_224204@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_318150, &qword_279A70);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for ToolbarActionButtonMenuItem();
  sub_8198(v1 + *(v12 + 24), v11, &qword_318150, &qword_279A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_260CA0();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_264900();
    v16 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_22440C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316930, &qword_2689A0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for ToolbarActionButtonMenuItem();
  sub_8198(v1 + *(v12 + 28), v11, &qword_316930, &qword_2689A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_260640();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_264900();
    v16 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t ToolbarActionButtonMenuItem.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ToolbarActionButtonMenuItem() + 32);
  v4 = sub_260BD0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ToolbarActionButtonMenuItem.action.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ToolbarActionButtonMenuItem() + 44);

  return sub_30CC(v3, a1);
}

uint64_t ToolbarActionButtonMenuItem.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ToolbarActionButtonMenuItem();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_2EF0(&qword_316960, &unk_2689F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v18[-v8];
  v10 = sub_2610B0();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_225A10(v1, &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_225A78(&v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11);
  v19 = v1;
  type metadata accessor for ToolbarActionMenuItemLabel();
  sub_226530(&qword_31AC08, type metadata accessor for ToolbarActionMenuItemLabel);
  sub_263220();
  v13 = sub_22568C();
  KeyPath = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = v13 & 1;
  result = sub_2EF0(&qword_326CB8, &qword_28B7B8);
  v17 = (a1 + *(result + 36));
  *v17 = KeyPath;
  v17[1] = sub_4C914;
  v17[2] = v15;
  return result;
}

uint64_t sub_224A10(uint64_t a1)
{
  v2 = sub_260CA0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToolbarActionButtonMenuItem();
  sub_224B70(a1 + *(v7 + 44), v11);
  sub_224094(v9);
  if (v10)
  {
    sub_2E18(v9, v10);
    sub_224204(v6);
    sub_260B20();
    (*(v3 + 8))(v6, v2);
    sub_3080(v11);
    return sub_3080(v9);
  }

  else
  {
    sub_3080(v11);
    return sub_8E80(v9, &qword_31A208, &unk_27A5E0);
  }
}

uint64_t sub_224B70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_263AF0();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_260640();
  v78 = *(v79 - 8);
  v8 = *(v78 + 64);
  __chkstk_darwin(v79);
  v76 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_260430();
  v75 = *(v77 - 8);
  v10 = *(v75 + 64);
  __chkstk_darwin(v77);
  v74 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_260450();
  v83 = *(v12 - 8);
  v84 = v12;
  v13 = *(v83 + 64);
  __chkstk_darwin(v12);
  v82 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_2604F0();
  v71 = *(v73 - 8);
  v15 = *(v71 + 64);
  __chkstk_darwin(v73);
  v72 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_260520();
  v70 = *(v17 - 8);
  v18 = *(v70 + 64);
  __chkstk_darwin(v17);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_260510();
  v80 = *(v21 - 8);
  v81 = v21;
  v22 = *(v80 + 64);
  __chkstk_darwin(v21);
  v85 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2EF0(&qword_316B98, &unk_275840);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v65 - v26;
  v28 = sub_260620();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_30CC(a1, v88);
  sub_2EF0(&qword_316A30, &qword_2697B0);
  sub_2EF0(&qword_316BA8, &unk_275850);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v87 = 0;
    memset(v86, 0, sizeof(v86));
    sub_8E80(v86, &qword_316BA0, &unk_268B90);
    return sub_30CC(a1, a2);
  }

  v68 = v7;
  v69 = a2;
  sub_F7CC(v86, &v89);
  v33 = v90;
  v34 = v91;
  sub_2E18(&v89, v90);
  (*(v34 + 16))(v33, v34);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_8E80(v27, &qword_316B98, &unk_275840);
    sub_3080(&v89);
    a2 = v69;
    return sub_30CC(a1, a2);
  }

  v67 = v29;
  v36 = *(v29 + 32);
  v66 = v32;
  v37 = v28;
  v65 = v28;
  v36(v32, v27, v28);
  (*(v70 + 104))(v20, enum case for SectionType.unknown(_:), v17);
  (*(v71 + 104))(v72, enum case for SectionData.ComponentContained.unknown(_:), v73);
  v38 = v85;
  sub_260500();
  v39 = sub_2EF0(&qword_31A238, &unk_28B930);
  v40 = v39[12];
  v41 = v39[16];
  v42 = v39[20];
  v43 = v39[24];
  v44 = enum case for LocationType.button(_:);
  v45 = sub_260530();
  v46 = v74;
  (*(*(v45 - 8) + 104))(v74, v44, v45);
  (*(v29 + 16))(&v46[v40], v32, v37);
  v47 = v80;
  v48 = v38;
  v49 = v81;
  (*(v80 + 16))(&v46[v41], v48, v81);
  v50 = sub_2604B0();
  (*(*(v50 - 8) + 56))(&v46[v42], 1, 1, v50);
  v51 = v76;
  sub_22440C(v76);
  sub_2605F0();
  sub_226530(&qword_326D88, &type metadata accessor for PageData);
  sub_226530(&unk_326D90, &type metadata accessor for PageData);
  sub_260630();
  (*(v78 + 8))(v51, v79);
  (*(v75 + 104))(v46, enum case for AppAnalyticsAction.Type.clickEvent(_:), v77);
  v52 = v82;
  sub_260440();
  v53 = v91;
  sub_2E18(&v89, v90);
  v54 = *(v53 + 8);
  sub_263870();
  sub_2EF0(&qword_317258, &unk_27A660);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_269100;
  v56 = v84;
  *(v55 + 56) = v84;
  *(v55 + 64) = sub_226530(&qword_31A230, &type metadata accessor for AppAnalyticsAction);
  v57 = sub_10934((v55 + 32));
  v58 = v83;
  (*(v83 + 16))(v57, v52, v56);
  v59 = v90;
  v60 = v91;
  v61 = sub_2E18(&v89, v90);
  *(v55 + 96) = v59;
  *(v55 + 104) = *(v60 + 8);
  v62 = sub_10934((v55 + 72));
  (*(*(v59 - 8) + 16))(v62, v61, v59);
  v63 = sub_263BD0();
  v64 = v69;
  v69[3] = v63;
  v64[4] = &protocol witness table for CompoundAction;
  sub_10934(v64);
  sub_263BC0();
  (*(v58 + 8))(v52, v56);
  (*(v47 + 8))(v85, v49);
  (*(v67 + 8))(v66, v65);
  return sub_3080(&v89);
}

uint64_t sub_225580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ToolbarActionButtonMenuItem();
  v5 = v4[8];
  v6 = sub_260BD0();
  (*(*(v6 - 8) + 16))(a2, a1 + v5, v6);
  v7 = v4[12];
  v8 = type metadata accessor for ToolbarActionMenuItemLabel();
  sub_8198(a1 + v7, a2 + v8[5], &qword_316208, &qword_268BD0);
  sub_8198(a1 + v4[13], a2 + v8[6], &qword_31AC00, &qword_270F30);
  v9 = a2 + v8[7];
  *v9 = swift_getKeyPath();
  *(v9 + 40) = 0;
  v10 = a2 + v8[8];
  result = swift_getKeyPath();
  *v10 = result;
  *(v10 + 8) = 0;
  return result;
}

uint64_t sub_22568C()
{
  v1 = type metadata accessor for ToolbarActionButtonMenuItem();
  if (*(v0 + *(v1 + 36)) != 1)
  {
    v4 = 1;
    return v4 & 1;
  }

  if (*(v0 + *(v1 + 40)) != 1)
  {
    v4 = 0;
    return v4 & 1;
  }

  v2 = *v0;
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v2;
    sub_260FF0();

    v4 = v7 ^ 1;
    return v4 & 1;
  }

  v6 = *(v0 + 8);
  type metadata accessor for ProfileRestrictions();
  sub_226530(&qword_326DC0, type metadata accessor for ProfileRestrictions);
  result = sub_2618F0();
  __break(1u);
  return result;
}

uint64_t sub_2257AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  v6 = sub_2EF0(&qword_316960, &unk_2689F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v18[-v8];
  v10 = sub_2610B0();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_225A10(v2, &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_225A78(&v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11);
  v19 = v2;
  type metadata accessor for ToolbarActionMenuItemLabel();
  sub_226530(&qword_31AC08, type metadata accessor for ToolbarActionMenuItemLabel);
  sub_263220();
  v13 = sub_22568C();
  KeyPath = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = v13 & 1;
  result = sub_2EF0(&qword_326CB8, &qword_28B7B8);
  v17 = (a2 + *(result + 36));
  *v17 = KeyPath;
  v17[1] = sub_226588;
  v17[2] = v15;
  return result;
}

uint64_t sub_225A10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolbarActionButtonMenuItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_225A78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolbarActionButtonMenuItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_225B30(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_31EFC8, &unk_279C60);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = sub_2EF0(qword_316978, &unk_268A60);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_7;
  }

  v11 = sub_260BD0();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[8];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[11] + 24);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_2EF0(&qword_316208, &qword_268BD0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[12];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_225D24(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_31EFC8, &unk_279C60);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v14 = *(v10 + 56);

    return v14(a1 + v11, a2, a2, v9);
  }

  v12 = sub_2EF0(qword_316978, &unk_268A60);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  result = sub_260BD0();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[11] + 24) = (a2 - 1);
  }

  else
  {
    v15 = sub_2EF0(&qword_316208, &qword_268BD0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[12];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_225F04()
{
  sub_95884();
  if (v0 <= 0x3F)
  {
    sub_147AC8();
    if (v1 <= 0x3F)
    {
      sub_2260B8(319, &qword_31A1F8, &type metadata accessor for OpaqueMetricsFieldsContext, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_2260B8(319, &qword_316A10, &type metadata accessor for DataStack, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_260BD0();
          if (v4 <= 0x3F)
          {
            sub_134888();
            if (v5 <= 0x3F)
            {
              sub_2260B8(319, &qword_31A8C8, &type metadata accessor for LocalizerRequest, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                sub_AE020();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_2260B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_226120()
{
  result = qword_326D70;
  if (!qword_326D70)
  {
    sub_2F9C(&qword_326CB8, &qword_28B7B8);
    sub_8E38(&qword_326D78, &qword_326D80, &qword_28B878);
    sub_8E38(&qword_3184C8, &qword_3184D0, &qword_28B880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326D70);
  }

  return result;
}

uint64_t sub_226204()
{
  v1 = type metadata accessor for ToolbarActionButtonMenuItem();
  v19 = *(*(v1 - 1) + 64);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  if (*(v2 + 56))
  {
    if (*(v2 + 40))
    {
      sub_3080((v2 + 16));
    }
  }

  else
  {
    v3 = *(v2 + 16);
  }

  v4 = v1[6];
  sub_2EF0(&qword_318150, &qword_279A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_260CA0();
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
  }

  else
  {
    v6 = *(v2 + v4);
  }

  v7 = v1[7];
  sub_2EF0(&qword_316930, &qword_2689A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_260640();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
    v9 = *(v2 + v7);
  }

  v10 = v1[8];
  v11 = sub_260BD0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 8);
  v13(v2 + v10, v11);
  sub_3080((v2 + v1[11]));
  v14 = v1[12];
  if (!(*(v12 + 48))(v2 + v14, 1, v11))
  {
    v13(v2 + v14, v11);
  }

  v15 = v2 + v1[13];
  v16 = *(v15 + 40);
  if (v16 == 2)
  {
    sub_3080(v15);
  }

  else if (v16 <= 1)
  {
    v17 = *(v15 + 8);
  }

  return swift_deallocObject();
}

uint64_t sub_2264B8()
{
  v1 = *(type metadata accessor for ToolbarActionButtonMenuItem() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_224A10(v2);
}

uint64_t sub_226530(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226618@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_260FF0();

  *a2 = v5;
  return result;
}

uint64_t sub_2266A8(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_261000();
}

uint64_t sub_226728()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_260FF0();

  return v1;
}

uint64_t sub_22679C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a1;
  v5 = *a4;
  swift_beginAccess();
  sub_2EF0(&qword_326DA8, &qword_28B988);
  sub_260FD0();
  return swift_endAccess();
}

uint64_t sub_226810(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = sub_2EF0(&qword_326E78, &qword_28BA90);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v21 - v15;
  v17 = *(v9 + 16);
  v17(&v21 - v15, a1, v8, v14);
  v18 = *a2;
  (v17)(v12, v16, v8);
  v19 = *a5;
  swift_beginAccess();
  sub_2EF0(&qword_326DA8, &qword_28B988);
  sub_260FE0();
  swift_endAccess();
  return (*(v9 + 8))(v16, v8);
}

uint64_t sub_2269A8(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  sub_2EF0(&qword_326DA8, &qword_28B988);
  sub_260FD0();
  return swift_endAccess();
}

id ProfileRestrictions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProfileRestrictions.init()()
{
  v1 = sub_2EF0(&qword_326DA8, &qword_28B988);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v21 - v4;
  v6 = OBJC_IVAR____TtC7BooksUI19ProfileRestrictions__isExplicitContentAllowed;
  v23 = 1;
  sub_260FC0();
  v7 = *(v2 + 32);
  v7(&v0[v6], v5, v1);
  v8 = OBJC_IVAR____TtC7BooksUI19ProfileRestrictions__isBookStoreAllowed;
  v23 = 1;
  sub_260FC0();
  v7(&v0[v8], v5, v1);
  v9 = OBJC_IVAR____TtC7BooksUI19ProfileRestrictions__isAccountModificationAllowed;
  v23 = 1;
  sub_260FC0();
  v7(&v0[v9], v5, v1);
  v10 = type metadata accessor for ProfileRestrictions();
  v22.receiver = v0;
  v22.super_class = v10;
  v11 = objc_msgSendSuper2(&v22, "init");
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [objc_msgSend(v12 "sharedInstance")];
  swift_unknownObjectRelease();
  swift_getKeyPath();
  swift_getKeyPath();
  v23 = v14;
  v15 = v13;
  sub_261000();
  v16 = [objc_msgSend(v12 "sharedInstance")];
  swift_unknownObjectRelease();
  swift_getKeyPath();
  swift_getKeyPath();
  v23 = v16;
  v17 = v15;
  sub_261000();
  v18 = [objc_msgSend(v12 "sharedInstance")];
  swift_unknownObjectRelease();
  swift_getKeyPath();
  swift_getKeyPath();
  v23 = v18;
  v19 = v17;
  sub_261000();
  [objc_msgSend(v12 "sharedInstance")];
  swift_unknownObjectRelease();

  return v19;
}

uint64_t type metadata accessor for ProfileRestrictions()
{
  result = qword_326E50;
  if (!qword_326E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id ProfileRestrictions.__deallocating_deinit()
{
  [objc_msgSend(objc_opt_self() "sharedInstance")];
  swift_unknownObjectRelease();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfileRestrictions();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_227034()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_261000();
}

uint64_t sub_2270B0(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return sub_261000();
}

uint64_t sub_22711C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ProfileRestrictions();
  result = sub_260FB0();
  *a1 = result;
  return result;
}

void View.profileRestrictions(from:)()
{
  type metadata accessor for ProfileRestrictions();
  sub_263C70();
  sub_264190();
  sub_2271F4();
  sub_262BC0();
}

unint64_t sub_2271F4()
{
  result = qword_326DC0;
  if (!qword_326DC0)
  {
    type metadata accessor for ProfileRestrictions();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326DC0);
  }

  return result;
}

void sub_227320()
{
  sub_2275B0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2275B0()
{
  if (!qword_326E60)
  {
    v0 = sub_261010();
    if (!v1)
    {
      atomic_store(v0, &qword_326E60);
    }
  }
}

uint64_t sub_227600(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_2F9C(&qword_326E68, &qword_28BA88);
  sub_261730();
  sub_227678();
  return swift_getWitnessTable();
}

unint64_t sub_227678()
{
  result = qword_326E70;
  if (!qword_326E70)
  {
    sub_2F9C(&qword_326E68, &qword_28BA88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326E70);
  }

  return result;
}

uint64_t LocationFieldProvider.addExpensiveMetricsFields(into:using:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 456) = a1;
  *(v2 + 464) = a2;
  return (_swift_task_switch)(sub_227704, 0, 0);
}

uint64_t sub_227704()
{
  v100 = v0;
  v1 = *(v0 + 456);
  v2 = v1[4];
  v96 = v1;
  sub_2E18(v1, v1[3]);
  sub_2EF0(&qword_3160D0, &unk_270CF0);
  v3 = sub_263F00();
  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  *(v0 + 448) = v5;
  if (v5[2])
  {
    if (qword_315A38 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 464);
    v7 = sub_2EF0(&qword_31ED90, &unk_28BAB0);
    sub_B080(v7, qword_31ED70);
    sub_263F50();
    if ((*(v0 + 200) & 1) == 0)
    {
      v8 = *(v0 + 192);
      if (qword_315840 != -1)
      {
        swift_once();
      }

      v9 = sub_260D50();
      sub_B080(v9, qword_315F70);
      v10 = sub_260D30();
      v11 = sub_264910();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        result = swift_slowAlloc();
        v99[0] = result;
        *v12 = 134218242;
        *(v12 + 4) = v8;
        *(v12 + 12) = 2080;
        if (!v5[2])
        {
          goto LABEL_90;
        }

        v14 = result;
        v15 = v5[4];

        v16 = sub_264290();
        v18 = v17;

        v19 = sub_191368(v16, v18, v99);

        *(v12 + 14) = v19;
        _os_log_impl(&dword_0, v10, v11, "Adding locationPosition override %ld for %s", v12, 0x16u);
        sub_3080(v14);

        v4 = _swiftEmptyArrayStorage;
      }

      else
      {
      }

      v99[3] = &type metadata for Int;
      v99[0] = v8;
      swift_beginAccess();
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if (v5[2])
        {
LABEL_16:
          sub_D0B0(v99, 0xD000000000000010, 0x8000000000290770);
          *(v0 + 448) = v5;
          swift_endAccess();
          goto LABEL_17;
        }
      }

      else
      {
        result = sub_228E4C(v5);
        v5 = result;
        if (*(result + 16))
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_90:
      __break(1u);
      return result;
    }
  }

LABEL_17:
  if (qword_315A30 != -1)
  {
    goto LABEL_87;
  }

  while (1)
  {
    v20 = *(v0 + 464);
    v21 = sub_2EF0(&qword_31ED88, &qword_279840);
    sub_B080(v21, qword_31ED58);
    sub_2EF0(&qword_31EDA0, &unk_28BAC0);
    sub_263F50();
    v22 = *(v0 + 192);
    if (!v22)
    {
      break;
    }

    if (!*(v22 + 16))
    {
      v46 = *(v0 + 192);

      break;
    }

    if (qword_315840 != -1)
    {
      swift_once();
    }

    v23 = sub_260D50();
    sub_B080(v23, qword_315F70);

    v24 = sub_260D30();
    v25 = sub_264910();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v99[0] = v27;
      *v26 = 136315138;
      v28 = sub_2646A0();
      v30 = sub_191368(v28, v29, v99);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_0, v24, v25, "Appending location stack %s", v26, 0xCu);
      sub_3080(v27);
    }

    v31 = *(v22 + 16);
    if (!v31)
    {

      v33 = _swiftEmptyArrayStorage;
LABEL_34:
      swift_beginAccess();
      sub_1D982C(v33);
      swift_endAccess();
      break;
    }

    v99[0] = v4;
    sub_2DBC4(0, v31, 0);
    v32 = *(v22 + 16);
    v33 = v99[0];
    v34 = v32 - 1;
    v4 = (176 * v32 - 144);
    while (v34 != -1)
    {
      if (v34 >= *(v22 + 16))
      {
        goto LABEL_83;
      }

      v35 = *(v4 + v22);
      v36 = *(v4 + v22 + 32);
      *(v0 + 32) = *(v4 + v22 + 16);
      *(v0 + 48) = v36;
      *(v0 + 16) = v35;
      v37 = *(v4 + v22 + 48);
      v38 = *(v4 + v22 + 64);
      v39 = *(v4 + v22 + 96);
      *(v0 + 96) = *(v4 + v22 + 80);
      *(v0 + 112) = v39;
      *(v0 + 64) = v37;
      *(v0 + 80) = v38;
      v40 = *(v4 + v22 + 112);
      v41 = *(v4 + v22 + 128);
      v42 = *(v4 + v22 + 160);
      *(v0 + 160) = *(v4 + v22 + 144);
      *(v0 + 176) = v42;
      *(v0 + 128) = v40;
      *(v0 + 144) = v41;
      sub_97590(v0 + 16, v0 + 192);
      v43 = sub_1694E0();
      sub_98D34(v0 + 16);
      v99[0] = v33;
      v45 = v33[2];
      v44 = v33[3];
      if (v45 >= v44 >> 1)
      {
        sub_2DBC4((v44 > 1), v45 + 1, 1);
        v33 = v99[0];
      }

      v33[2] = v45 + 1;
      v33[v45 + 4] = v43;
      --v34;
      v4 -= 22;
      if (!--v31)
      {

        goto LABEL_34;
      }
    }

LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    swift_once();
  }

  swift_beginAccess();
  v47 = *(v0 + 448);
  v48 = v47[2];
  if (v48)
  {
    v4 = 0x8000000000290770;
    v98 = -v48;
    v49 = 4;
    v97 = v0;
    while (1)
    {
      v50 = v49 - 4;
      if ((v49 - 4) >= v47[2])
      {
        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v51 = v47[v49];
      if (!*(v51 + 16))
      {
        break;
      }

      v52 = v47[v49];

      v53 = sub_D410(0xD000000000000010, 0x8000000000290770);
      if (v54)
      {
        sub_A7C18(*(v51 + 56) + 32 * v53, v0 + 192);
      }

      else
      {
        *(v0 + 192) = 0u;
        *(v0 + 208) = 0u;
      }

      if (!*(v0 + 216))
      {
        goto LABEL_46;
      }

      sub_228B6C(v0 + 192);
LABEL_38:
      ++v49;
      if (v98 + v49 == 4)
      {
        goto LABEL_74;
      }
    }

    *(v0 + 192) = 0u;
    *(v0 + 208) = 0u;
LABEL_46:
    sub_228B6C(v0 + 192);
    if (qword_315840 != -1)
    {
      swift_once();
    }

    v55 = sub_260D50();
    sub_B080(v55, qword_315F70);
    v56 = sub_260D30();
    v57 = sub_264910();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v99[0] = v59;
      *v58 = 136315138;
      if (v50 >= v47[2])
      {
        goto LABEL_85;
      }

      v60 = v59;
      v61 = v47[v49];

      v62 = sub_264290();
      v63 = v47;
      v65 = v64;

      v66 = sub_191368(v62, v65, v99);
      v47 = v63;
      v0 = v97;

      *(v58 + 4) = v66;
      _os_log_impl(&dword_0, v56, v57, "Setting default locationPosition 0 for %s", v58, 0xCu);
      sub_3080(v60);

      v4 = 0x8000000000290770;
    }

    else
    {
    }

    *(v0 + 216) = &type metadata for Int;
    *(v0 + 192) = 0;
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v47 = sub_228E4C(v47);
    }

    if (v50 >= v47[2])
    {
      goto LABEL_81;
    }

    if (!*(v0 + 216))
    {
      sub_228B6C(v0 + 192);
      v78 = v47[v49];
      v79 = sub_D410(0xD000000000000010, 0x8000000000290770);
      if (v80)
      {
        v81 = v79;
        v82 = v47[v49];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v99[0] = v47[v49];
        v47[v49] = 0x8000000000000000;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_14EC04();
        }

        v84 = v99[0];
        v85 = *(*(v99[0] + 48) + 16 * v81 + 8);

        sub_FBD8((*(v84 + 56) + 32 * v81), (v0 + 368));
        sub_228654(v81, v84);
        v47[v49] = v84;
      }

      else
      {
        *(v0 + 368) = 0u;
        *(v0 + 384) = 0u;
      }

      sub_228B6C(v0 + 368);
      goto LABEL_73;
    }

    sub_FBD8((v0 + 192), (v0 + 368));
    v67 = v47[v49];
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v99[0] = v47[v49];
    v69 = v99[0];
    v47[v49] = 0x8000000000000000;
    v70 = sub_D410(0xD000000000000010, 0x8000000000290770);
    v72 = *(v69 + 16);
    v73 = (v71 & 1) == 0;
    v74 = __OFADD__(v72, v73);
    v75 = v72 + v73;
    if (v74)
    {
      goto LABEL_84;
    }

    v76 = v71;
    if (*(v69 + 24) >= v75)
    {
      if ((v68 & 1) == 0)
      {
        v88 = v70;
        sub_14EC04();
        v70 = v88;
        v86 = v99[0];
        if (v76)
        {
          goto LABEL_66;
        }

        goto LABEL_70;
      }
    }

    else
    {
      sub_14D5B4(v75, v68);
      v70 = sub_D410(0xD000000000000010, 0x8000000000290770);
      if ((v76 & 1) != (v77 & 1))
      {

        return sub_264FB0();
      }
    }

    v86 = v99[0];
    if (v76)
    {
LABEL_66:
      v87 = (v86[7] + 32 * v70);
      sub_3080(v87);
      sub_FBD8((v0 + 368), v87);
LABEL_72:
      v92 = v47[v49];
      v47[v49] = v86;

LABEL_73:
      *(v0 + 448) = v47;
      swift_endAccess();
      goto LABEL_38;
    }

LABEL_70:
    v86[(v70 >> 6) + 8] |= 1 << v70;
    v89 = (v86[6] + 16 * v70);
    *v89 = 0xD000000000000010;
    v89[1] = 0x8000000000290770;
    sub_FBD8((v0 + 368), (v86[7] + 32 * v70));
    v90 = v86[2];
    v74 = __OFADD__(v90, 1);
    v91 = v90 + 1;
    if (v74)
    {
      goto LABEL_86;
    }

    v86[2] = v91;
    goto LABEL_72;
  }

LABEL_74:
  v93 = *(v0 + 456);
  *(v0 + 216) = sub_2EF0(&qword_319B10, &qword_2777B0);
  *(v0 + 192) = v47;
  v94 = v96[4];
  sub_17450(v93, v96[3]);

  sub_263EF0();
  sub_3080((v0 + 192));

  v95 = *(v0 + 8);

  return v95();
}

uint64_t sub_2282A4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_156D0;

  return LocationFieldProvider.addExpensiveMetricsFields(into:using:)(a1, a2);
}

uint64_t sub_228344()
{
  v0 = sub_264140();
  sub_B600(v0, qword_326E80);
  sub_B080(v0, qword_326E80);
  return sub_264130();
}

uint64_t static MetricsFieldInclusionRequest.location.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_315AE8 != -1)
  {
    swift_once();
  }

  v2 = sub_264140();
  v3 = sub_B080(v2, qword_326E80);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

double sub_228450@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_D410(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_14EC04();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_FBD8((*(v12 + 56) + 32 * v9), a3);
    sub_228654(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_2284F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_D488(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_14EDF4();
      v11 = v13;
    }

    sub_F778(*(v11 + 48) + 40 * v8);
    sub_F7CC((*(v11 + 56) + 40 * v8), a2);
    sub_228804(v8, v11);
    *v3 = v11;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_2285A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_D410(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_14F560();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_F7CC((*(v12 + 56) + 40 * v9), a3);
    sub_2289B0(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_228654(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_264B30() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_265050();

      sub_264500();
      v14 = sub_265080();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_228804(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_264B30() + 1) & ~v5;
    do
    {
      sub_F7E4(*(a2 + 48) + 40 * v6, v26);
      v11 = sub_264B40(*(a2 + 40));
      result = sub_F778(v26);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = v15 + 40 * v3;
          v17 = (v15 + 40 * v6);
          if (v3 != v6 || v16 >= v17 + 40)
          {
            v18 = *v17;
            v19 = v17[1];
            *(v16 + 32) = *(v17 + 4);
            *v16 = v18;
            *(v16 + 16) = v19;
          }

          v20 = *(a2 + 56);
          v21 = v20 + 40 * v3;
          v22 = (v20 + 40 * v6);
          if (v3 != v6 || v21 >= v22 + 40)
          {
            v9 = *v22;
            v10 = v22[1];
            *(v21 + 32) = *(v22 + 4);
            *v21 = v9;
            *(v21 + 16) = v10;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2289B0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_264B30() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_265050();

      sub_264500();
      v15 = sub_265080();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_228B6C(uint64_t a1)
{
  v2 = sub_2EF0(&qword_316200, &qword_267FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_228BD4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_FBD8(a4, (a5[7] + 32 * a1));
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

uint64_t sub_228C40(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_F7CC(a3, a4[7] + 40 * a1);
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

uint64_t sub_228CC0(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = _s8RatioKeyVMa();
  result = sub_FB18(a2, v8 + *(*(v9 - 8) + 72) * a1);
  *(a3[7] + 8 * a1) = a4;
  v11 = a3[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v13;
  }

  return result;
}

uint64_t sub_228D64(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_F7CC(a4, a5[7] + 40 * a1);
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

unint64_t sub_228DD4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
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

__n128 CoverView.init(model:cacheGeometry:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 40) = 0;
  *(a3 + 48) = swift_getKeyPath();
  *(a3 + 56) = 0;
  v6 = type metadata accessor for CoverView();
  v7 = v6[6];
  *(a3 + v7) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v8 = v6[7];
  *(a3 + v8) = swift_getKeyPath();
  sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v9 = (a3 + v6[8]);
  type metadata accessor for ProfileRestrictions();
  sub_22E2F8(&qword_326DC0, type metadata accessor for ProfileRestrictions);
  *v9 = sub_261900();
  v9[1] = v10;
  v11 = a3 + v6[9];
  sub_2631D0();
  *v11 = v18;
  *(v11 + 8) = v19;
  v12 = a3 + v6[10];
  v13 = *(a1 + 80);
  *(v12 + 64) = *(a1 + 64);
  *(v12 + 80) = v13;
  v14 = *(a1 + 112);
  *(v12 + 96) = *(a1 + 96);
  *(v12 + 112) = v14;
  v15 = *(a1 + 16);
  *v12 = *a1;
  *(v12 + 16) = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  *(v12 + 32) = result;
  *(v12 + 48) = v17;
  *(a3 + v6[11]) = a2;
  return result;
}

uint64_t sub_22905C(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31A0C8, &qword_26E2C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v10 - v7;
  sub_8198(a1, &v10 - v7, &qword_31A0C8, &qword_26E2C0);
  sub_8198(v8, v5, &qword_31A0C8, &qword_26E2C0);
  sub_9652C();
  sub_261CC0();
  return sub_8E80(v8, &qword_31A0C8, &qword_26E2C0);
}

uint64_t type metadata accessor for CoverView()
{
  result = qword_326F90;
  if (!qword_326F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2291FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8198(v2, v11, &qword_3173E0, &qword_26B890);
  if (v12 == 1)
  {
    return sub_F7CC(v11, a1);
  }

  sub_264900();
  v10 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

double sub_22936C()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 48);
  if (*(v0 + 56) == 1)
  {
    return *(v0 + 48);
  }

  v8 = *(v0 + 48);

  sub_264900();
  v9 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();
  sub_3074(v6, 0);
  (*(v2 + 8))(v5, v1);
  return *&v10[1];
}

uint64_t sub_2294B8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316C00, &qword_26A520);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for CoverView();
  sub_8198(v1 + *(v12 + 24), v11, &qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_22E134(v11, a1, type metadata accessor for ColorConstants);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2296A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_317E08, &qword_26A550);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for CoverView();
  sub_8198(v1 + *(v12 + 28), v11, &qword_317E08, &qword_26A550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_22148(v11, a1, &qword_31A0C8, &qword_26E2C0);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_22988C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v28 = sub_2EF0(&qword_326F18, &qword_28BC38);
  v3 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v5 = (v27 - v4);
  v6 = sub_2EF0(&qword_327028, &qword_28BDC8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v27 - v8;
  v10 = type metadata accessor for CoverView();
  v27[0] = *(v10 - 8);
  v11 = *(v27[0] + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_2607E0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v17, enum case for BooksFeatureFlag.coverEffectV2(_:), v12, v15);
  sub_22E2F8(&qword_327030, &type metadata accessor for BooksFeatureFlag);
  sub_8E38(&qword_327038, &qword_327040, &qword_28BDD0);
  v18 = sub_264610();
  (*(v13 + 8))(v17, v12);
  if (v18)
  {
    sub_22E0C4(v27[1], v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CoverView);
    v19 = (*(v27[0] + 80) + 24) & ~*(v27[0] + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    sub_22E134(v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for CoverView);
    [a1 size];
    *v9 = sub_22DAA0;
    *(v9 + 1) = v20;
    *(v9 + 2) = v21 / v22;
    *(v9 + 12) = 0;
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_326EF8, &qword_28BC28);
    sub_22C434();
    sub_22C4EC();
    return sub_261F80();
  }

  else
  {
    *v5 = a1;
    v24 = *(type metadata accessor for AlignmentImageView() + 20);
    *(v5 + v24) = swift_getKeyPath();
    sub_2EF0(&qword_316C18, &unk_26F830);
    swift_storeEnumTagMultiPayload();
    v25 = (v5 + *(v28 + 36));
    *v25 = 0;
    v25[1] = a1;
    sub_8198(v5, v9, &qword_326F18, &qword_28BC38);
    swift_storeEnumTagMultiPayload();
    v26 = a1;
    sub_2EF0(&qword_326EF8, &qword_28BC28);
    sub_22C434();
    sub_22C4EC();
    sub_261F80();
    return sub_8E80(v5, &qword_326F18, &qword_28BC38);
  }
}

uint64_t sub_229CF8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_2616C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_327048, &qword_28BE10);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v43 - v10;
  v43 = sub_2EF0(&qword_327050, &qword_28BE18);
  v12 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v14 = &v43 - v13;
  v45 = sub_2EF0(&qword_327058, &qword_28BE20);
  v15 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v17 = &v43 - v16;
  sub_261420();
  v44 = sub_82988();
  v18 = sub_2630A0();
  v19 = (a1 + *(type metadata accessor for CoverView() + 40));
  v20 = v19[5];
  v48[4] = v19[4];
  v48[5] = v20;
  v21 = v19[7];
  v48[6] = v19[6];
  v48[7] = v21;
  v22 = v19[3];
  v48[2] = v19[2];
  v48[3] = v22;
  v23 = v19[1];
  v48[0] = *v19;
  v48[1] = v23;
  v24 = sub_2F8B8(v48);
  v25 = sub_2F950(v48);
  if (v24)
  {
    v26 = v24 != 1;
  }

  else
  {
    v26 = *(v25 + 25);
  }

  sub_22A0F8(v26, v18, v11);

  KeyPath = swift_getKeyPath();
  v28 = v19[5];
  v47[4] = v19[4];
  v47[5] = v28;
  v29 = v19[7];
  v47[6] = v19[6];
  v47[7] = v29;
  v30 = v19[1];
  v47[0] = *v19;
  v47[1] = v30;
  v31 = v19[3];
  v47[2] = v19[2];
  v47[3] = v31;
  v32 = sub_2F8B8(v47);
  v33 = sub_2F950(v47);
  if (v32)
  {
    if (v32 == 1 || (*(v33 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v34 = &enum case for LayoutDirection.rightToLeft(_:);
    goto LABEL_10;
  }

  if (*(v33 + 24))
  {
    goto LABEL_9;
  }

LABEL_7:
  v34 = &enum case for LayoutDirection.leftToRight(_:);
LABEL_10:
  (*(v4 + 104))(v7, *v34, v3);
  v35 = &v14[*(v43 + 36)];
  v36 = sub_2EF0(&qword_327060, &qword_28BE28);
  (*(v4 + 32))(v35 + *(v36 + 28), v7, v3);
  *v35 = KeyPath;
  sub_22148(v11, v14, &qword_327048, &qword_28BE10);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  sub_22148(v14, v17, &qword_327050, &qword_28BE18);
  v37 = v46;
  v38 = &v17[*(v45 + 36)];
  v39 = v47[9];
  *v38 = v47[8];
  *(v38 + 1) = v39;
  *(v38 + 2) = v47[10];
  sub_22148(v17, v37, &qword_327058, &qword_28BE20);
  result = sub_2EF0(&qword_327068, &qword_28BE30);
  v41 = (v37 + *(result + 36));
  v42 = v44;
  *v41 = 0;
  v41[1] = v42;
  return result;
}

uint64_t sub_22A0F8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a2;
  v54 = a3;
  v55 = sub_2EF0(&qword_327070, &qword_28BE38);
  v4 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v6 = (&v46 - v5);
  v49 = sub_2EF0(&qword_327078, &qword_28BE40);
  v7 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v9 = (&v46 - v8);
  v52 = sub_2EF0(&qword_327080, &qword_28BE48);
  v10 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v53 = &v46 - v11;
  v47 = sub_2EF0(&qword_327088, &qword_28BE50);
  v12 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v14 = &v46 - v13;
  v51 = sub_2EF0(&qword_327090, &qword_28BE58);
  v15 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v48 = &v46 - v16;
  v17 = sub_2630C0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2EF0(&qword_327098, &qword_28BE60);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = (&v46 - v24);
  v26 = (v18 + 104);
  v27 = (v18 + 8);
  if (a1)
  {
    if (a1 == 1)
    {
      v28 = (v25 + *(v22 + 36));
      v29 = *(type metadata accessor for BookCoverEffect() + 24);
      *(v28 + v29) = swift_getKeyPath();
      sub_2EF0(&qword_316DC0, &qword_2691C0);
      swift_storeEnumTagMultiPayload();
      *v28 = xmmword_28BB30;
      (*v26)(v21, enum case for Image.ResizingMode.stretch(_:), v17);
      v30 = sub_263100();
      (*v27)(v21, v17);
      v31 = *(sub_2EF0(&qword_3270C0, &qword_28BEE0) + 36);
      *(v28 + v31) = swift_getKeyPath();
      sub_2EF0(&qword_31DD08, &qword_277680);
      swift_storeEnumTagMultiPayload();
      *v25 = v30;
      sub_8198(v25, v14, &qword_327098, &qword_28BE60);
      swift_storeEnumTagMultiPayload();
      sub_22DBC0();
      sub_22DC78();
      v32 = v48;
      sub_261F80();
      sub_8198(v32, v53, &qword_327090, &qword_28BE58);
      swift_storeEnumTagMultiPayload();
      sub_22DB34();
      sub_22DD30();
      sub_261F80();
      sub_8E80(v32, &qword_327090, &qword_28BE58);
      v33 = v25;
      v34 = &qword_327098;
      v35 = &qword_28BE60;
    }

    else
    {
      v41 = (v6 + *(v55 + 36));
      v42 = *(type metadata accessor for LegacyPDFCoverEffect() + 20);
      *(v41 + v42) = swift_getKeyPath();
      sub_2EF0(&qword_316DC0, &qword_2691C0);
      swift_storeEnumTagMultiPayload();
      *v41 = 0x4000000000000000;
      (*v26)(v21, enum case for Image.ResizingMode.stretch(_:), v17);
      v43 = sub_263100();
      (*v27)(v21, v17);
      v44 = *(sub_2EF0(&qword_3270A0, &qword_28BEA0) + 36);
      *(v41 + v44) = swift_getKeyPath();
      sub_2EF0(&qword_31DD08, &qword_277680);
      swift_storeEnumTagMultiPayload();
      *v6 = v43;
      sub_8198(v6, v53, &qword_327070, &qword_28BE38);
      swift_storeEnumTagMultiPayload();
      sub_22DB34();
      sub_22DD30();
      sub_261F80();
      v33 = v6;
      v34 = &qword_327070;
      v35 = &qword_28BE38;
    }
  }

  else
  {
    v36 = (v9 + *(v49 + 36));
    v37 = *(type metadata accessor for AudiobookCoverEffect() + 24);
    *(v36 + v37) = swift_getKeyPath();
    sub_2EF0(&qword_316DC0, &qword_2691C0);
    swift_storeEnumTagMultiPayload();
    *v36 = xmmword_28BB30;
    (*v26)(v21, enum case for Image.ResizingMode.stretch(_:), v17);
    v38 = sub_263100();
    (*v27)(v21, v17);
    v39 = *(sub_2EF0(&qword_3270D8, &unk_28BEE8) + 36);
    *(v36 + v39) = swift_getKeyPath();
    sub_2EF0(&qword_31DD08, &qword_277680);
    swift_storeEnumTagMultiPayload();
    *v9 = v38;
    sub_8198(v9, v14, &qword_327078, &qword_28BE40);
    swift_storeEnumTagMultiPayload();
    sub_22DBC0();
    sub_22DC78();
    v40 = v48;
    sub_261F80();
    sub_8198(v40, v53, &qword_327090, &qword_28BE58);
    swift_storeEnumTagMultiPayload();
    sub_22DB34();
    sub_22DD30();
    sub_261F80();
    sub_8E80(v40, &qword_327090, &qword_28BE58);
    v33 = v9;
    v34 = &qword_327078;
    v35 = &qword_28BE40;
  }

  return sub_8E80(v33, v34, v35);
}

void sub_22A900(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v74 = a2;
  v5 = sub_2EF0(&qword_3270F0, &qword_28BF48);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v67 - v7;
  v73 = sub_2EF0(&qword_326E98, &qword_28BBF8);
  v9 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73);
  v71 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v72 = &v67 - v12;
  v13 = sub_2EF0(&qword_3270F8, &qword_28BF50);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v70 = &v67 - v15;
  v16 = sub_2EF0(&qword_327100, &qword_28BF58);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v69 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v67 - v20;
  if (a1)
  {
    v22 = a1;
    goto LABEL_4;
  }

  v23 = (v2 + *(type metadata accessor for CoverView() + 40));
  v24 = v23[5];
  v84 = v23[4];
  v85 = v24;
  v25 = v23[7];
  v86 = v23[6];
  v87 = v25;
  v26 = v23[1];
  v80 = *v23;
  v81 = v26;
  v27 = v23[3];
  v82 = v23[2];
  v83 = v27;
  CoverViewModel.placeholderImageName.getter();
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v29 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v68 = v2;
  v30 = v8;
  v31 = v21;
  v32 = v16;
  v33 = v5;
  v34 = v29;
  v35 = sub_264420();

  v22 = [objc_opt_self() imageNamed:v35 inBundle:v34];

  v5 = v33;
  v16 = v32;
  v21 = v31;
  v8 = v30;
  v3 = v68;
  if (v22)
  {
LABEL_4:
    v36 = type metadata accessor for CoverView();
    if (*(v3 + *(v36 + 44)) == 1)
    {
      v37 = v36;
      v38 = qword_315930;
      v39 = a1;
      if (v38 != -1)
      {
        swift_once();
      }

      if (byte_31C408 != 1)
      {
        goto LABEL_9;
      }

      v40 = [objc_opt_self() standardUserDefaults];
      v41 = sub_264420();
      v68 = v13;
      v42 = v3;
      v43 = v8;
      v44 = v21;
      v45 = v16;
      v46 = v5;
      v47 = v41;
      v48 = [v40 integerForKey:v41];

      v5 = v46;
      v16 = v45;
      v21 = v44;
      v8 = v43;
      v3 = v42;
      v13 = v68;
      if ((v48 & 0x40) == 0)
      {
LABEL_9:
        sub_22988C(v22, v72);
        v49 = sub_22B080();
        v67 = v5;
        if (v50)
        {
          *&v80 = v49;
          *(&v80 + 1) = v50;
          sub_264B70();
        }

        else
        {
          v79 = 0;
          memset(v78, 0, sizeof(v78));
        }

        v56 = (v3 + *(v37 + 36));
        LODWORD(v71) = *v56;
        v68 = *(v56 + 1);
        LOBYTE(v75) = v71;
        *(&v75 + 1) = v68;
        v57 = v22;
        sub_2EF0(&qword_3210B8, &qword_27EE90);
        sub_263200();
        v58 = v80;
        v59 = v81;
        v60 = v70;
        v61 = &v70[*(v13 + 36)];
        sub_8198(v78, (v61 + 128), &qword_316610, &qword_268BA0);
        *(v61 + 21) = v57;
        *(v61 + 11) = v58;
        v61[192] = v59;
        *v61 = swift_getKeyPath();
        v61[40] = 0;
        *(v61 + 6) = swift_getKeyPath();
        v61[56] = 0;
        *(v61 + 8) = swift_getKeyPath();
        v61[72] = 0;
        v76 = 0u;
        v75 = 0u;
        v77 = 1;
        sub_2EF0(&qword_3167E0, qword_268710);
        sub_2631D0();
        sub_8E80(v78, &qword_316610, &qword_268BA0);
        v62 = v82;
        v63 = *(&v82 + 1);
        v64 = v81;
        *(v61 + 5) = v80;
        *(v61 + 6) = v64;
        v61[112] = v62;
        *(v61 + 15) = v63;
        sub_22148(v72, v60, &qword_326E98, &qword_28BBF8);
        LOBYTE(v80) = v71;
        *(&v80 + 1) = v68;
        sub_2631E0();
        if (v78[0])
        {
          v65 = 1.0;
        }

        else
        {
          v65 = 0.0;
        }

        v66 = v69;
        sub_22148(v60, v69, &qword_3270F8, &qword_28BF50);
        *(v66 + *(v16 + 36)) = v65;
        sub_22148(v66, v21, &qword_327100, &qword_28BF58);
        sub_8198(v21, v8, &qword_327100, &qword_28BF58);
        swift_storeEnumTagMultiPayload();
        sub_22E19C();
        sub_22C3A8();
        sub_261F80();

        v53 = v21;
        v54 = &qword_327100;
        v55 = &qword_28BF58;
        goto LABEL_18;
      }
    }

    else
    {
      v51 = a1;
    }

    v52 = v71;
    sub_22988C(v22, v71);
    sub_8198(v52, v8, &qword_326E98, &qword_28BBF8);
    swift_storeEnumTagMultiPayload();
    sub_22E19C();
    sub_22C3A8();
    sub_261F80();

    v53 = v52;
    v54 = &qword_326E98;
    v55 = &qword_28BBF8;
LABEL_18:
    sub_8E80(v53, v54, v55);
    return;
  }

  __break(1u);
}

uint64_t sub_22B080()
{
  v1 = sub_2601E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2EF0(&qword_31A0C8, &qword_26E2C0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v23 - v11;
  v13 = (v0 + *(type metadata accessor for CoverView() + 40));
  v14 = v13[5];
  v24[4] = v13[4];
  v24[5] = v14;
  v15 = v13[7];
  v24[6] = v13[6];
  v24[7] = v15;
  v16 = v13[3];
  v24[2] = v13[2];
  v24[3] = v16;
  v17 = v13[1];
  v24[0] = *v13;
  v24[1] = v17;
  v18 = 0;
  if (!sub_2F8B8(v24))
  {
    v19 = sub_2F950(v24);
    sub_2296A4(v12);
    sub_8198(v12, v9, &qword_31A0C8, &qword_26E2C0);
    if ((*(v2 + 48))(v9, 1, v1) == 1)
    {
      sub_8E80(v12, &qword_31A0C8, &qword_26E2C0);
      v18 = *v19;
      v20 = v19[1];
    }

    else
    {
      (*(v2 + 32))(v5, v9, v1);
      v21 = v19[1];
      v23[0] = *v19;
      v23[1] = v21;

      v25._countAndFlagsBits = 45;
      v25._object = 0xE100000000000000;
      sub_264530(v25);
      sub_22E2F8(&qword_327128, &type metadata accessor for UUID);
      v26._countAndFlagsBits = sub_264EB0();
      sub_264530(v26);

      v18 = v23[0];
      (*(v2 + 8))(v5, v1);
      sub_8E80(v12, &qword_31A0C8, &qword_26E2C0);
    }
  }

  return v18;
}

void CoverView.body.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v89 = a1;
  v78 = sub_2EF0(&qword_326E98, &qword_28BBF8);
  v3 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v79 = &v76 - v4;
  v88 = sub_2EF0(&qword_326EA0, &qword_28BC00);
  v5 = *(*(v88 - 8) + 64);
  __chkstk_darwin(v88);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v76 - v9;
  v86 = sub_2EF0(&qword_326EA8, &qword_28BC08);
  v11 = *(*(v86 - 8) + 64);
  __chkstk_darwin(v86);
  v87 = &v76 - v12;
  v13 = sub_261E20();
  v83 = *(v13 - 8);
  v84 = v13;
  v14 = *(v83 + 64);
  __chkstk_darwin(v13);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CoverView();
  v80 = *(v17 - 8);
  v18 = *(v80 + 64);
  __chkstk_darwin(v17);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_2EF0(&qword_326EB0, &qword_28BC10);
  v20 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v85);
  v81 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v82 = &v76 - v23;
  if (qword_315930 != -1)
  {
    swift_once();
  }

  if (byte_31C408 != 1)
  {
    goto LABEL_5;
  }

  v24 = [objc_opt_self() standardUserDefaults];
  v77 = v18;
  v25 = v17;
  v26 = v19;
  v27 = v2;
  v28 = v7;
  v29 = v16;
  v30 = v10;
  v31 = v24;
  v32 = sub_264420();
  v33 = [v31 integerForKey:v32];

  v34 = v30;
  v16 = v29;
  v35 = v28;
  v2 = v27;
  v19 = v26;
  v17 = v25;
  v18 = v77;

  if ((v33 & 8) == 0)
  {
LABEL_5:
    v36 = (v2 + *(v17 + 40));
    v37 = v36[5];
    v100[4] = v36[4];
    v100[5] = v37;
    v38 = v36[7];
    v100[6] = v36[6];
    v100[7] = v38;
    v39 = v36[1];
    v100[0] = *v36;
    v100[1] = v39;
    v40 = v36[3];
    v100[2] = v36[2];
    v100[3] = v40;
    v41 = sub_2F8B8(v100) == 0;
    sub_22E0C4(v2, v19, type metadata accessor for CoverView);
    v42 = (*(v80 + 80) + 16) & ~*(v80 + 80);
    v43 = swift_allocObject();
    sub_22E134(v19, v43 + v42, type metadata accessor for CoverView);
    *(v43 + v42 + v18) = v41;
    v44 = v36[5];
    v105 = v36[4];
    v106 = v44;
    v45 = v36[7];
    v107 = v36[6];
    v108 = v45;
    v46 = v36[1];
    v101 = *v36;
    v102 = v46;
    v47 = v36[3];
    v103 = v36[2];
    v104 = v47;
    v48 = sub_2F8B8(&v101);
    v49 = sub_2F950(&v101);
    if (v48)
    {
      if (v48 == 1)
      {
        v50 = 0x3FF0000000000000;
      }

      else
      {
        v50 = 0x3FE4834834834834;
      }
    }

    else
    {
      v50 = *(v49 + 16);
    }

    *&v92 = sub_22C19C;
    *(&v92 + 1) = v43;
    *&v93 = v50;
    WORD4(v93) = 0;
    sub_261E10();
    sub_2EF0(&qword_326EB8, &qword_28BC18);
    sub_22C23C();
    v69 = v81;
    sub_262D40();
    (*(v83 + 8))(v16, v84);

    v70 = v36[5];
    v96 = v36[4];
    v97 = v70;
    v71 = v36[7];
    v98 = v36[6];
    v99 = v71;
    v72 = v36[1];
    v92 = *v36;
    v93 = v72;
    v73 = v36[3];
    v94 = v36[2];
    v95 = v73;
    v90 = CoverViewModel.axLabel.getter();
    v91 = v74;
    sub_10A84();
    v75 = v82;
    sub_261700();

    v66 = &qword_326EB0;
    v67 = &qword_28BC10;
    sub_8E80(v69, &qword_326EB0, &qword_28BC10);
    sub_8198(v75, v87, &qword_326EB0, &qword_28BC10);
    swift_storeEnumTagMultiPayload();
    sub_22C2F4(&qword_326ED8, &qword_326EB0, &qword_28BC10, sub_22C23C);
    sub_22C2F4(&qword_326EE0, &qword_326EA0, &qword_28BC00, sub_22C3A8);
    sub_261F80();
    v68 = v75;
    goto LABEL_13;
  }

  v51 = (v2 + *(v17 + 40));
  v52 = v51[5];
  v105 = v51[4];
  v106 = v52;
  v53 = v51[7];
  v107 = v51[6];
  v108 = v53;
  v54 = v51[1];
  v101 = *v51;
  v102 = v54;
  v55 = v51[3];
  v103 = v51[2];
  v104 = v55;
  CoverViewModel.placeholderImageName.getter();
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v57 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v58 = sub_264420();

  v59 = [objc_opt_self() imageNamed:v58 inBundle:v57];

  if (v59)
  {
    v60 = v79;
    sub_22988C(v59, v79);

    sub_261E10();
    sub_22C3A8();
    sub_262D40();
    (*(v83 + 8))(v16, v84);
    sub_8E80(v60, &qword_326E98, &qword_28BBF8);
    v61 = v51[5];
    v105 = v51[4];
    v106 = v61;
    v62 = v51[7];
    v107 = v51[6];
    v108 = v62;
    v63 = v51[1];
    v101 = *v51;
    v102 = v63;
    v64 = v51[3];
    v103 = v51[2];
    v104 = v64;
    *&v100[0] = CoverViewModel.axLabel.getter();
    *(&v100[0] + 1) = v65;
    sub_10A84();
    sub_261700();

    v66 = &qword_326EA0;
    v67 = &qword_28BC00;
    sub_8E80(v35, &qword_326EA0, &qword_28BC00);
    sub_8198(v34, v87, &qword_326EA0, &qword_28BC00);
    swift_storeEnumTagMultiPayload();
    sub_22C2F4(&qword_326ED8, &qword_326EB0, &qword_28BC10, sub_22C23C);
    sub_22C2F4(&qword_326EE0, &qword_326EA0, &qword_28BC00, sub_22C3A8);
    sub_261F80();
    v68 = v34;
LABEL_13:
    sub_8E80(v68, v66, v67);
    return;
  }

  __break(1u);
}

double sub_22BC08@<D0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CoverView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = (a1 + *(v9 + 48));
  v11 = v10[5];
  v46 = v10[4];
  v47 = v11;
  v12 = v10[7];
  v48 = v10[6];
  v49 = v12;
  v13 = v10[1];
  v42 = *v10;
  v43 = v13;
  v14 = v10[3];
  v44 = v10[2];
  v45 = v14;
  v50[2] = v44;
  v50[3] = v14;
  v50[0] = v42;
  v50[1] = v13;
  v50[6] = v48;
  v50[7] = v12;
  v50[4] = v46;
  v50[5] = v11;
  v15 = sub_2F8B8(v50);
  if (v15)
  {
    if (v15 == 1)
    {
      v16 = *sub_2F950(v50);
      v17 = v16;
      goto LABEL_7;
    }

    v17 = *sub_2F950(v50);
    v18 = 0.641025641;
  }

  else
  {
    v17 = *(sub_2F950(v50) + 120);
    v37 = v46;
    v38 = v47;
    v39 = v48;
    v40 = v49;
    v33 = v42;
    v34 = v43;
    v35 = v44;
    v36 = v45;
    v18 = *(sub_2F950(&v33) + 16);
  }

  v16 = v17 * v18;
LABEL_7:
  sub_261420();
  if (v16 < v19)
  {
    sub_261420();
    v16 = v20;
    v17 = v21;
  }

  if (a2)
  {
    v22 = sub_22C5D4(v16, v17);
  }

  else
  {
    v22 = 0;
  }

  sub_22E0C4(a1, &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CoverView);
  v23 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v24 = swift_allocObject();
  sub_22E134(&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for CoverView);
  v25 = type metadata accessor for ImageResourceLoader();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  sub_2EF0(&qword_318728, &qword_26DBF0);
  v29 = swift_allocObject();
  *(v29 + 28) = 0;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v28 + 24) = v29;

  sub_2603B0();
  v41 = v28;

  sub_2631D0();

  v30 = v33;
  sub_261420();
  sub_261420();
  sub_263560();
  sub_2613A0();
  *a3 = sub_22E050;
  *(a3 + 8) = v24;
  *(a3 + 16) = v22;
  *(a3 + 24) = v30;
  v31 = v34;
  *(a3 + 40) = v33;
  *(a3 + 56) = v31;
  result = *&v35;
  *(a3 + 72) = v35;
  return result;
}

uint64_t sub_22BF30()
{
  v1 = type metadata accessor for CoverView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  if (*(v0 + v2 + 40))
  {
    sub_3080((v0 + v2));
  }

  else
  {
    v5 = *v4;
  }

  sub_3074(v4[6], *(v4 + 56));
  v6 = v1[6];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_261180();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  else
  {
    v8 = *(v4 + v6);
  }

  v9 = v1[7];
  sub_2EF0(&qword_317E08, &qword_26A550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_2601E0();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v4 + v9, 1, v10))
    {
      (*(v11 + 8))(v4 + v9, v10);
    }
  }

  else
  {
    v12 = *(v4 + v9);
  }

  v13 = *(v4 + v1[9] + 8);

  v14 = (v4 + v1[10]);
  v16 = v14[15];
  sub_57200(*v14, v14[1], v14[2], v14[3], v14[4], v14[5], v14[6], v14[7], v14[8], v14[9], v14[10], v14[11], v14[12], v14[13], v14[14]);

  return swift_deallocObject();
}

double sub_22C19C@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CoverView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));

  return sub_22BC08(v4, v5, a1);
}

unint64_t sub_22C23C()
{
  result = qword_326EC0;
  if (!qword_326EC0)
  {
    sub_2F9C(&qword_326EB8, &qword_28BC18);
    sub_8E38(&qword_326EC8, &qword_326ED0, &qword_28BC20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326EC0);
  }

  return result;
}

uint64_t sub_22C2F4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    a4();
    sub_22E2F8(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22C3A8()
{
  result = qword_326EE8;
  if (!qword_326EE8)
  {
    sub_2F9C(&qword_326E98, &qword_28BBF8);
    sub_22C434();
    sub_22C4EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326EE8);
  }

  return result;
}

unint64_t sub_22C434()
{
  result = qword_326EF0;
  if (!qword_326EF0)
  {
    sub_2F9C(&qword_326EF8, &qword_28BC28);
    sub_8E38(&qword_326F00, &qword_326F08, &qword_28BC30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326EF0);
  }

  return result;
}

unint64_t sub_22C4EC()
{
  result = qword_326F10;
  if (!qword_326F10)
  {
    sub_2F9C(&qword_326F18, &qword_28BC38);
    sub_22E2F8(&qword_326F20, type metadata accessor for AlignmentImageView);
    sub_8E38(&qword_326F28, &qword_326F30, &unk_28BC40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326F10);
  }

  return result;
}

uint64_t sub_22C5D4(double a1, double a2)
{
  v5 = (v2 + *(type metadata accessor for CoverView() + 40));
  v6 = v5[5];
  v27[4] = v5[4];
  v27[5] = v6;
  v7 = v5[7];
  v27[6] = v5[6];
  v27[7] = v7;
  v8 = v5[3];
  v27[2] = v5[2];
  v27[3] = v8;
  v9 = v5[1];
  v27[0] = *v5;
  v27[1] = v9;
  v10 = sub_2F8B8(v27);
  result = 0;
  if (!v10)
  {
    v12 = sub_2F950(v27);
    v13 = v12[5];
    if (v13)
    {
      v14 = v12[4];
      v15 = v12[5];
    }

    else
    {
      v14 = *v12;
      v15 = v12[1];
    }

    v16 = v13 != 0;

    sub_2291FC(v24);
    v17 = v25;
    v18 = v26;
    sub_2E18(v24, v25);
    v22[0] = v14;
    v22[1] = v15;
    v23 = v16;
    v19 = sub_22936C();
    sub_22C730(v21);
    v20 = (*(v18 + 16))(v22, v21, v17, v18, a1, a2, v19);
    sub_6204();
    sub_3080(v24);
    return v20;
  }

  return result;
}

void sub_22C730(uint64_t a1@<X8>)
{
  v2 = v1;
  v72 = sub_261180();
  v4 = *(v72 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v72);
  v71 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ColorConstants.Environment(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ColorConstants(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2607E0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v20, enum case for BooksFeatureFlag.coverEffectV2(_:), v15, v18);
  sub_22E2F8(&qword_327030, &type metadata accessor for BooksFeatureFlag);
  sub_8E38(&qword_327038, &qword_327040, &qword_28BDD0);
  v21 = sub_264610();
  (*(v16 + 8))(v20, v15);
  if (v21)
  {
    v22 = -66308;
LABEL_6:
    *a1 = v22;
    *(a1 + 2) = BYTE2(v22);
    return;
  }

  v70 = a1;
  v23 = type metadata accessor for CoverView();
  v24 = (v2 + *(v23 + 40));
  v25 = v24[5];
  v83[4] = v24[4];
  v83[5] = v25;
  v26 = v24[7];
  v83[6] = v24[6];
  v83[7] = v26;
  v27 = v24[3];
  v83[2] = v24[2];
  v83[3] = v27;
  v28 = v24[1];
  v83[0] = *v24;
  v83[1] = v28;
  if (sub_2F8B8(v83))
  {
    v22 = -66308;
LABEL_5:
    a1 = v70;
    goto LABEL_6;
  }

  v68 = v23;
  v69 = sub_2F950(v83);
  v67 = v2;
  sub_2294B8(v14);
  sub_22E0C4(v14, v10, type metadata accessor for ColorConstants.Environment);
  v30 = v71;
  v29 = v72;
  (*(v4 + 104))(v71, enum case for ColorScheme.dark(_:), v72);
  sub_22E2F8(&qword_3183A0, &type metadata accessor for ColorScheme);
  v31 = sub_264390();
  v32 = *(v4 + 8);
  v32(v30, v29);
  sub_60B08(v14);
  v33 = v29;
  v34 = v31;
  v32(v10, v33);
  v35 = v31 ^ 1;
  if (!*(v69 + 25))
  {
    v44 = v24[5];
    v79 = v24[4];
    v80 = v44;
    v45 = v24[7];
    v81 = v24[6];
    v82 = v45;
    v46 = v24[1];
    v75 = *v24;
    v76 = v46;
    v47 = v24[3];
    v77 = v24[2];
    v78 = v47;
    if (sub_2F8B8(&v75))
    {
      goto LABEL_15;
    }

    v48 = sub_2F950(&v75);
    v49 = v67 + *(v68 + 32);
    v50 = *v49;
    if (!*v49)
    {
      goto LABEL_35;
    }

    v51 = v48;
    swift_getKeyPath();
    swift_getKeyPath();
    v52 = v50;
    sub_260FF0();

    if (v74[0])
    {
LABEL_15:
      v53 = 0;
    }

    else if (*(v51 + 48))
    {
      v53 = 256;
    }

    else
    {
      v53 = 0;
    }

    a1 = v70;
    v22 = v53 | v35 & 1 | 0x400000;
    goto LABEL_6;
  }

  if (*(v69 + 25) != 1)
  {
    v22 = v35 & 1 | 0xFF800000;
    goto LABEL_5;
  }

  v36 = v24[5];
  v79 = v24[4];
  v80 = v36;
  v37 = v24[7];
  v81 = v24[6];
  v82 = v37;
  v38 = v24[1];
  v75 = *v24;
  v76 = v38;
  v39 = v24[3];
  v77 = v24[2];
  v78 = v39;
  v40 = sub_2F8B8(&v75);
  v41 = sub_2F950(&v75);
  if (!v40)
  {
    v54 = 24;
    v42 = v68;
LABEL_20:
    v43 = *(v41 + v54);
    goto LABEL_21;
  }

  v42 = v68;
  if (v40 != 1)
  {
    v54 = 8;
    goto LABEL_20;
  }

  v43 = 0;
LABEL_21:
  v55 = v24[5];
  v74[4] = v24[4];
  v74[5] = v55;
  v56 = v24[7];
  v74[6] = v24[6];
  v74[7] = v56;
  v57 = v24[1];
  v74[0] = *v24;
  v74[1] = v57;
  v58 = v24[3];
  v74[2] = v24[2];
  v74[3] = v58;
  if (sub_2F8B8(v74))
  {
    goto LABEL_24;
  }

  v59 = sub_2F950(v74);
  v49 = v67 + *(v42 + 32);
  v60 = *v49;
  if (*v49)
  {
    v61 = v59;
    swift_getKeyPath();
    swift_getKeyPath();
    v62 = v60;
    sub_260FF0();

    if ((v73 & 1) == 0)
    {
      if (*(v61 + 48))
      {
        v63 = 0x10000;
      }

      else
      {
        v63 = 0;
      }

LABEL_25:
      a1 = v70;
      if (v34)
      {
        v64 = 0;
      }

      else
      {
        v64 = 256;
      }

      v22 = v64 | v43 | v63;
      goto LABEL_6;
    }

LABEL_24:
    v63 = 0;
    goto LABEL_25;
  }

LABEL_35:
  v65 = *(v49 + 8);
  type metadata accessor for ProfileRestrictions();
  sub_22E2F8(&qword_326DC0, type metadata accessor for ProfileRestrictions);
  sub_2618F0();
  __break(1u);
}

__n128 sub_22CD9C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 33);
  v12 = *(v2 + 8);
  v13 = *(v2 + 16);
  v14 = *(v2 + 24);
  v6 = *v2;
  sub_2EF0(&qword_31CF38, &qword_274080);
  sub_263350();
  result = *a1;
  v8 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v8;
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  *(a2 + 64) = v11;
  return result;
}

uint64_t CoverGeometryReference.isVisible.getter()
{
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  sub_2EF0(&qword_31CF38, &qword_274080);
  sub_263320();
  return v2;
}

uint64_t sub_22CE98@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  sub_2EF0(&qword_31CF38, &qword_274080);
  result = sub_263320();
  *a2 = v4;
  return result;
}

uint64_t sub_22CEF8(char *a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = *(a2 + 56);
  v6 = *(a2 + 64);
  v3 = *a1;
  sub_2EF0(&qword_31CF38, &qword_274080);
  return sub_263330();
}

uint64_t CoverGeometryReference.isVisible.setter()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  sub_2EF0(&qword_31CF38, &qword_274080);
  return sub_263330();
}

void (*CoverGeometryReference.isVisible.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  *(v4 + 48) = v5;
  *(v4 + 56) = v6;
  v7 = *(v1 + 64);
  *(v4 + 19) = v7;
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;

  *(v4 + 64) = sub_2EF0(&qword_31CF38, &qword_274080);
  sub_263320();
  return sub_22D068;
}

void sub_22D068(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v4 = *(*a1 + 56);
  v3 = *(*a1 + 64);
  *(*a1 + 24) = *(*a1 + 48);
  v5 = *(v1 + 19);
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 18) = v2;
  sub_263330();

  free(v1);
}

uint64_t CoverGeometryReference.$isVisible.getter()
{
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  sub_2EF0(&qword_31CF38, &qword_274080);
  sub_263350();
  return v2;
}

uint64_t sub_22D174(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_316F68, &unk_269C50);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
  }

  else
  {
    v10 = sub_2EF0(&qword_31A040, &unk_279210);
    if (*(*(v10 - 8) + 84) != a2)
    {
      v13 = *(a1 + a3[10] + 24);
      v14 = (v13 >> 3) & 0xFFFFFF80 | (v13 >> 1);
      if (v14 > 0x80000000)
      {
        return -v14;
      }

      else
      {
        return 0;
      }
    }

    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
  }

  v11 = *(v8 + 48);

  return v11(a1 + v9, a2, v7);
}

double sub_22D2B0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_316F68, &unk_269C50);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    v12 = sub_2EF0(&qword_31A040, &unk_279210);
    if (*(*(v12 - 8) + 84) != a3)
    {
      v15 = a1 + a4[10];
      *v15 = 0;
      *(v15 + 8) = 0;
      *(v15 + 16) = 0;
      *(v15 + 24) = (8 * -a2) & 0x7FFFFFC00 | (2 * (-a2 & 0x7FLL));
      result = 0.0;
      *(v15 + 32) = 0u;
      *(v15 + 48) = 0u;
      *(v15 + 64) = 0u;
      *(v15 + 80) = 0u;
      *(v15 + 96) = 0u;
      *(v15 + 112) = 0u;
      return result;
    }

    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  v13(a1 + v11, a2, a2, v9);
  return result;
}

void sub_22D3F0()
{
  sub_78DC8(319, &qword_316FF8, &qword_317000, &qword_2693E0);
  if (v0 <= 0x3F)
  {
    sub_39050(319, &qword_316308, &type metadata for CGFloat, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_C4F38();
      if (v2 <= 0x3F)
      {
        sub_78DC8(319, &qword_31A0C0, &qword_31A0C8, &qword_26E2C0);
        if (v3 <= 0x3F)
        {
          sub_95884();
          if (v4 <= 0x3F)
          {
            sub_39050(319, &qword_320FC8, &type metadata for Bool, &type metadata accessor for State);
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

uint64_t sub_22D560(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22D5A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22D610()
{
  result = qword_326FE0;
  if (!qword_326FE0)
  {
    sub_2F9C(&qword_326FE8, &qword_28BD28);
    sub_22C2F4(&qword_326ED8, &qword_326EB0, &qword_28BC10, sub_22C23C);
    sub_22C2F4(&qword_326EE0, &qword_326EA0, &qword_28BC00, sub_22C3A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326FE0);
  }

  return result;
}

uint64_t sub_22D6F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_22D73C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22D7AC(uint64_t a1)
{
  result = sub_22D7D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22D7D4()
{
  result = qword_327020;
  if (!qword_327020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327020);
  }

  return result;
}

uint64_t sub_22D830()
{
  v1 = type metadata accessor for CoverView();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);

  v4 = (v0 + v2);
  if (*(v0 + v2 + 40))
  {
    sub_3080((v0 + v2));
  }

  else
  {
    v5 = *v4;
  }

  sub_3074(v4[6], *(v4 + 56));
  v6 = v1[6];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_261180();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  else
  {
    v8 = *(v4 + v6);
  }

  v9 = v1[7];
  sub_2EF0(&qword_317E08, &qword_26A550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_2601E0();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v4 + v9, 1, v10))
    {
      (*(v11 + 8))(v4 + v9, v10);
    }
  }

  else
  {
    v12 = *(v4 + v9);
  }

  v13 = *(v4 + v1[9] + 8);

  v14 = (v4 + v1[10]);
  v16 = v14[15];
  sub_57200(*v14, v14[1], v14[2], v14[3], v14[4], v14[5], v14[6], v14[7], v14[8], v14[9], v14[10], v14[11], v14[12], v14[13], v14[14]);

  return swift_deallocObject();
}

uint64_t sub_22DAA0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CoverView() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_229CF8(v5, a1);
}

unint64_t sub_22DB34()
{
  result = qword_3270A8;
  if (!qword_3270A8)
  {
    sub_2F9C(&qword_327090, &qword_28BE58);
    sub_22DBC0();
    sub_22DC78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3270A8);
  }

  return result;
}

unint64_t sub_22DBC0()
{
  result = qword_3270B0;
  if (!qword_3270B0)
  {
    sub_2F9C(&qword_327098, &qword_28BE60);
    sub_8E38(&qword_3270B8, &qword_3270C0, &qword_28BEE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3270B0);
  }

  return result;
}

unint64_t sub_22DC78()
{
  result = qword_3270C8;
  if (!qword_3270C8)
  {
    sub_2F9C(&qword_327078, &qword_28BE40);
    sub_8E38(&qword_3270D0, &qword_3270D8, &unk_28BEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3270C8);
  }

  return result;
}

unint64_t sub_22DD30()
{
  result = qword_3270E0;
  if (!qword_3270E0)
  {
    sub_2F9C(&qword_327070, &qword_28BE38);
    sub_8E38(&qword_3270E8, &qword_3270A0, &qword_28BEA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3270E0);
  }

  return result;
}

uint64_t sub_22DDE8()
{
  v1 = type metadata accessor for CoverView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  if (*(v0 + v2 + 40))
  {
    sub_3080((v0 + v2));
  }

  else
  {
    v5 = *v4;
  }

  sub_3074(v4[6], *(v4 + 56));
  v6 = v1[6];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_261180();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  else
  {
    v8 = *(v4 + v6);
  }

  v9 = v1[7];
  sub_2EF0(&qword_317E08, &qword_26A550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_2601E0();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v4 + v9, 1, v10))
    {
      (*(v11 + 8))(v4 + v9, v10);
    }
  }

  else
  {
    v12 = *(v4 + v9);
  }

  v13 = *(v4 + v1[9] + 8);

  v14 = (v4 + v1[10]);
  v16 = v14[15];
  sub_57200(*v14, v14[1], v14[2], v14[3], v14[4], v14[5], v14[6], v14[7], v14[8], v14[9], v14[10], v14[11], v14[12], v14[13], v14[14]);

  return swift_deallocObject();
}

void sub_22E050(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CoverView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  sub_22A900(a1, a2);
}

uint64_t sub_22E0C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22E134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_22E19C()
{
  result = qword_327108;
  if (!qword_327108)
  {
    sub_2F9C(&qword_327100, &qword_28BF58);
    sub_22E228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327108);
  }

  return result;
}

unint64_t sub_22E228()
{
  result = qword_327110;
  if (!qword_327110)
  {
    sub_2F9C(&qword_3270F8, &qword_28BF50);
    sub_22C3A8();
    sub_8E38(&qword_327118, &qword_327120, &qword_28BF60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327110);
  }

  return result;
}

uint64_t sub_22E2F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22E34C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int16 a5@<W4>, uint64_t a6@<X8>)
{
  v31 = a6;
  v11 = sub_261C90();
  v29 = *(v11 - 8);
  v30 = v11;
  v12 = *(v29 + 64);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2EF0(&qword_327138, &qword_28C138);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v19 = &v29 - v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5 & 1;
  *(v20 + 41) = HIBYTE(a5) & 1;
  v21 = sub_2EF0(&qword_327140, &unk_28C140);
  (*(*(v21 - 8) + 16))(v19, a1, v21);
  v22 = &v19[*(v16 + 44)];
  *v22 = sub_22EA30;
  v22[1] = v20;
  KeyPath = swift_getKeyPath();
  v33 = a2;
  v34 = a3;

  sub_39D6C(a4, a5 & 1);
  sub_2EF0(&qword_3210B8, &qword_27EE90);
  sub_2631E0();
  if (v32)
  {
    v24 = 1;
  }

  else
  {
    if ((a5 & 1) == 0)
    {

      sub_264900();
      v25 = sub_2624B0();
      sub_260D10();

      sub_261C80();
      swift_getAtKeyPath();
      sub_4054(a4, 0);
      (*(v29 + 8))(v14, v30);
      LOBYTE(a4) = v33;
    }

    v24 = a4 & ((a5 & 0x100) != 0);
  }

  v26 = v31;
  sub_22EA8C(v19, v31);
  result = sub_2EF0(&qword_327148, &unk_28C150);
  v28 = v26 + *(result + 36);
  *v28 = KeyPath;
  *(v28 + 8) = v24;
  return result;
}

uint64_t EnvironmentValues.isHovering.getter()
{
  sub_60BCC();
  sub_261CB0();
  return v1;
}

uint64_t sub_22E6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 25))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_22E34C(a1, *v2, *(v2 + 8), *(v2 + 16), v3 | *(v2 + 24), a2);
}

uint64_t (*EnvironmentValues.isHovering.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_60BCC();
  sub_261CB0();
  *(a1 + 16) = *(a1 + 17);
  return sub_22E738;
}

uint64_t sub_22E738(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_261CC0();
}

uint64_t View.observeHovering(passOnParentHoverState:)()
{
  sub_2631D0();
  swift_getKeyPath();
  sub_262E30();
}

uint64_t sub_22E830(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_261730();
  sub_22E894();
  return swift_getWitnessTable();
}

unint64_t sub_22E894()
{
  result = qword_327130;
  if (!qword_327130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327130);
  }

  return result;
}

__n128 sub_22E8E8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_22E8FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 26))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22E958(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_22E9EC()
{
  v1 = *(v0 + 24);

  sub_4054(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_22EA30()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_2EF0(&qword_3210B8, &qword_27EE90);
  return sub_2631F0();
}

uint64_t sub_22EA8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_327138, &qword_28C138);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22EB00()
{
  result = qword_327150;
  if (!qword_327150)
  {
    sub_2F9C(&qword_327148, &unk_28C150);
    sub_22EBB8();
    sub_8E38(&qword_3171E0, &qword_3171D8, &qword_26B730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327150);
  }

  return result;
}

unint64_t sub_22EBB8()
{
  result = qword_327158;
  if (!qword_327158)
  {
    sub_2F9C(&qword_327138, &qword_28C138);
    sub_8E38(&qword_327160, &qword_327140, &unk_28C140);
    sub_179DEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327158);
  }

  return result;
}

uint64_t View.shelfCollagePagingDecoration<A, B, C>(transaction:backward:forward:mask:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  swift_getKeyPath();
  sub_22EF30(a1, a2, a3, a4, a5, a6, a7, a9, &v23, a10, a11, a13, a14, a15);
  v24 = v23;

  sub_262A90();

  sub_22F05C(&v24);
}

__n128 sub_22EDCC@<Q0>(uint64_t a1@<X8>)
{
  sub_22F930();
  sub_261CB0();
  result = v4;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  *(a1 + 40) = v6;
  return result;
}

__n128 sub_22EE2C@<Q0>(uint64_t a1@<X8>)
{
  sub_22F930();
  sub_261CB0();
  result = v4;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  *(a1 + 40) = v6;
  return result;
}

uint64_t sub_22EE94(uint64_t *a1)
{
  v4 = *a1;
  v5 = a1[1];
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v6 = a1[6];
  sub_22F930();

  return sub_261CC0();
}

void *sub_22EF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v18 = swift_allocObject();
  v18[2] = a8;
  v18[3] = a10;
  v18[4] = a11;
  v18[5] = a12;
  v18[6] = a13;
  v18[7] = a14;
  v18[8] = a2;
  v18[9] = a3;
  v19 = swift_allocObject();
  v19[2] = a8;
  v19[3] = a10;
  v19[4] = a11;
  v19[5] = a12;
  v19[6] = a13;
  v19[7] = a14;
  v19[8] = a4;
  v19[9] = a5;
  result = swift_allocObject();
  result[2] = a8;
  result[3] = a10;
  result[4] = a11;
  result[5] = a12;
  result[6] = a13;
  result[7] = a14;
  result[8] = a6;
  result[9] = a7;
  *a9 = a1;
  a9[1] = sub_22F338;
  a9[2] = v18;
  a9[3] = sub_22F5EC;
  a9[4] = v19;
  a9[5] = sub_22F760;
  a9[6] = result;
  return result;
}

uint64_t sub_22F0B0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[4];
  sub_2F9C(&qword_327168, &qword_28C190);
  sub_261730();
  sub_8E38(&qword_327170, &qword_327168, &qword_28C190);
  return swift_getWitnessTable();
}

uint64_t sub_22F160(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_22F1A8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_22F21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11(v8);
  v12 = sub_22F868(v10, a5);
  (*(v6 + 8))(v10, a5);
  return v12;
}

uint64_t sub_22F300()
{
  v1 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_22F368()
{
  v0 = sub_2EF0(&qword_327180, &qword_28C250);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v10 - v6;

  sub_263230();
  (*(v1 + 16))(v4, v7, v0);
  sub_8E38(&qword_327188, &qword_327180, &qword_28C250);
  v8 = sub_263310();
  (*(v1 + 8))(v7, v0);
  return v8;
}

uint64_t sub_22F508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12(v9);
  v13 = sub_22F868(v11, a6);
  (*(v7 + 8))(v11, a6);
  return v13;
}

uint64_t sub_22F67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11(v8);
  v12 = sub_22F868(v10, a5);
  (*(v6 + 8))(v10, a5);
  return v12;
}

uint64_t sub_22F760()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[7];
  return sub_22F67C(v0[8], v0[9], v0[2], v0[3], v0[4]);
}

uint64_t sub_22F774@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2630B0();
  *a1 = result;
  return result;
}

uint64_t sub_22F7B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2630B0();
  *a1 = result;
  return result;
}

uint64_t sub_22F800@<X0>(uint64_t *a1@<X8>)
{
  sub_2635E0();
  result = sub_261270();
  *a1 = result;
  a1[1] = sub_22F204;
  a1[2] = 0;
  a1[3] = sub_22F350;
  a1[4] = 0;
  a1[5] = sub_22F640;
  a1[6] = 0;
  return result;
}

uint64_t sub_22F868(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 64);
  __chkstk_darwin(a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_263310();
}

unint64_t sub_22F930()
{
  result = qword_327178;
  if (!qword_327178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327178);
  }

  return result;
}

uint64_t ShrinkableText.init(text:shorterText:shortestText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ShrinkableText();
  v9 = *(v8 + 20);
  v10 = sub_260BD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(a4 + v9, 1, 1, v10);
  v13 = *(v8 + 24);
  v12(a4 + v13, 1, 1, v10);
  (*(v11 + 32))(a4, a1, v10);
  sub_D0CC8(a2, a4 + v9);

  return sub_D0CC8(a3, a4 + v13);
}

uint64_t type metadata accessor for ShrinkableText()
{
  result = qword_3271F8;
  if (!qword_3271F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShrinkableText.text.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_260BD0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ShrinkableText.text.setter(uint64_t a1)
{
  v3 = sub_260BD0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ShrinkableText.shorterText.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ShrinkableText() + 20);

  return sub_104B0(v3, a1);
}

uint64_t ShrinkableText.shorterText.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ShrinkableText() + 20);

  return sub_D0CC8(a1, v3);
}

uint64_t ShrinkableText.shortestText.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ShrinkableText() + 24);

  return sub_104B0(v3, a1);
}

uint64_t ShrinkableText.shortestText.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ShrinkableText() + 24);

  return sub_D0CC8(a1, v3);
}

uint64_t sub_22FD70()
{
  v1 = 0x54726574726F6873;
  if (*v0 != 1)
  {
    v1 = 0x74736574726F6873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_22FDD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230D14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22FDFC(uint64_t a1)
{
  v2 = sub_230844();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_22FE38(uint64_t a1)
{
  v2 = sub_230844();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ShrinkableText.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_2EF0(&qword_316208, &qword_268BD0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v28 - v7;
  v9 = sub_260BD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v31 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2EF0(&qword_327190, &qword_28C258);
  v30 = *(v32 - 8);
  v13 = *(v30 + 64);
  __chkstk_darwin(v32);
  v15 = &v28 - v14;
  v16 = type metadata accessor for ShrinkableText();
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v10 + 56);
  v35 = *(v17 + 28);
  v22(&v21[v35], 1, 1, v9, v19);
  v34 = *(v17 + 32);
  (v22)(&v21[v34], 1, 1, v9);
  v23 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_230844();
  v24 = v33;
  sub_265120();
  if (v24)
  {
    sub_3080(a1);
    sub_8E80(&v21[v35], &qword_316208, &qword_268BD0);
    return sub_8E80(&v21[v34], &qword_316208, &qword_268BD0);
  }

  else
  {
    v33 = a1;
    v25 = v30;
    v38 = 0;
    sub_230E34(&qword_315D90, &type metadata accessor for LocalizerRequest);
    sub_264DF0();
    (*(v10 + 32))(v21, v31, v9);
    v37 = 1;
    sub_264DB0();
    sub_D0CC8(v8, &v21[v35]);
    v36 = 2;
    v26 = v29;
    sub_264DB0();
    (*(v25 + 8))(v15, v32);
    sub_D0CC8(v26, &v21[v34]);
    sub_10998(v21, v28);
    sub_3080(v33);
    return sub_230898(v21);
  }
}

BOOL _s7BooksUI14ShrinkableTextV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_260BD0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v36[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_2EF0(&qword_316208, &qword_268BD0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v36[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v36[-v14];
  v16 = sub_2EF0(&qword_326438, &qword_289DF8);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v36[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v22 = &v36[-v21];
  if ((sub_260B60() & 1) == 0)
  {
    return 0;
  }

  v39 = v12;
  v42 = v8;
  v40 = type metadata accessor for ShrinkableText();
  v23 = *(v40 + 20);
  v24 = *(v16 + 48);
  sub_104B0(a1 + v23, v22);
  v41 = a2;
  sub_104B0(a2 + v23, &v22[v24]);
  v25 = *(v5 + 48);
  if (v25(v22, 1, v4) != 1)
  {
    sub_104B0(v22, v15);
    if (v25(&v22[v24], 1, v4) != 1)
    {
      (*(v5 + 32))(v42, &v22[v24], v4);
      sub_230E34(&qword_321BA8, &type metadata accessor for LocalizerRequest);
      v37 = sub_264390();
      v38 = v5;
      v27 = *(v5 + 8);
      v27(v42, v4);
      v27(v15, v4);
      sub_8E80(v22, &qword_316208, &qword_268BD0);
      if ((v37 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

    (*(v5 + 8))(v15, v4);
LABEL_7:
    v26 = v22;
LABEL_15:
    sub_8E80(v26, &qword_326438, &qword_289DF8);
    return 0;
  }

  if (v25(&v22[v24], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  v38 = v5;
  sub_8E80(v22, &qword_316208, &qword_268BD0);
LABEL_9:
  v28 = *(v40 + 24);
  v29 = *(v16 + 48);
  sub_104B0(a1 + v28, v19);
  sub_104B0(v41 + v28, &v19[v29]);
  if (v25(v19, 1, v4) == 1)
  {
    if (v25(&v19[v29], 1, v4) == 1)
    {
      sub_8E80(v19, &qword_316208, &qword_268BD0);
      return 1;
    }

    goto LABEL_14;
  }

  v30 = v39;
  sub_104B0(v19, v39);
  if (v25(&v19[v29], 1, v4) == 1)
  {
    (*(v38 + 8))(v30, v4);
LABEL_14:
    v26 = v19;
    goto LABEL_15;
  }

  v32 = v38;
  v33 = v42;
  (*(v38 + 32))(v42, &v19[v29], v4);
  sub_230E34(&qword_321BA8, &type metadata accessor for LocalizerRequest);
  v34 = sub_264390();
  v35 = *(v32 + 8);
  v35(v33, v4);
  v35(v30, v4);
  sub_8E80(v19, &qword_316208, &qword_268BD0);
  return (v34 & 1) != 0;
}

unint64_t sub_230844()
{
  result = qword_327198;
  if (!qword_327198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327198);
  }

  return result;
}

uint64_t sub_230898(uint64_t a1)
{
  v2 = type metadata accessor for ShrinkableText();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2308F4(uint64_t a1)
{
  result = sub_230E34(&qword_326618, type metadata accessor for ShrinkableText);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_230960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_260BD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_2EF0(&qword_316208, &qword_268BD0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_230A70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_260BD0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_2EF0(&qword_316208, &qword_268BD0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_230B78()
{
  sub_260BD0();
  if (v0 <= 0x3F)
  {
    sub_95918();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_230C10()
{
  result = qword_327238;
  if (!qword_327238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327238);
  }

  return result;
}

unint64_t sub_230C68()
{
  result = qword_327240;
  if (!qword_327240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327240);
  }

  return result;
}

unint64_t sub_230CC0()
{
  result = qword_327248;
  if (!qword_327248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327248);
  }

  return result;
}

uint64_t sub_230D14(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x54726574726F6873 && a2 == 0xEB00000000747865 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74736574726F6873 && a2 == 0xEC00000074786554)
  {

    return 2;
  }

  else
  {
    v6 = sub_264F10();

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

uint64_t sub_230E34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_230EB0(uint64_t a1, uint64_t a2)
{
  v25[0] = a2;
  v3 = sub_260290();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v25 - v9;
  v11 = sub_264410();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v25 - v17;
  v19 = sub_2643F0();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  sub_2643E0();
  v26._countAndFlagsBits = 0x2072756F59;
  v26._object = 0xE500000000000000;
  sub_2643D0(v26);
  v27._countAndFlagsBits = a1;
  v27._object = v25[0];
  sub_2643C0(v27);
  v28._countAndFlagsBits = 0x6E69207261655920;
  v28._object = 0xEF77656976655220;
  sub_2643D0(v28);
  sub_264400();
  sub_260260();
  (*(v12 + 16))(v15, v18, v11);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v4 + 16))(v7, v10, v3);
  v23 = sub_264490();
  (*(v4 + 8))(v10, v3);
  (*(v12 + 8))(v18, v11);
  return v23;
}

__n128 sub_2311B8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2EF0(&qword_327250, &qword_28C498);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v15 - v8;
  *v9 = sub_261E60();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = sub_2EF0(&qword_327258, &qword_28C4A0);
  sub_23130C(a1, a2, &v9[*(v10 + 44)]);
  sub_263580();
  sub_261830();
  sub_232804(v9, a3);
  v11 = a3 + *(sub_2EF0(&qword_327260, &qword_28C4A8) + 36);
  v12 = v15[5];
  *(v11 + 64) = v15[4];
  *(v11 + 80) = v12;
  *(v11 + 96) = v15[6];
  v13 = v15[1];
  *v11 = v15[0];
  *(v11 + 16) = v13;
  result = v15[3];
  *(v11 + 32) = v15[2];
  *(v11 + 48) = result;
  return result;
}

uint64_t sub_23130C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v153 = a2;
  v151 = a1;
  v160 = a3;
  v159 = sub_262370();
  v158 = *(v159 - 8);
  v3 = *(v158 + 64);
  __chkstk_darwin(v159);
  v155 = v130 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_2EF0(&qword_327268, &qword_28C4B0);
  v5 = *(*(v148 - 8) + 64);
  __chkstk_darwin(v148);
  v147 = (v130 - v6);
  v149 = sub_2EF0(&qword_327270, &qword_28C4B8);
  v7 = *(*(v149 - 8) + 64);
  __chkstk_darwin(v149);
  v150 = v130 - v8;
  v157 = sub_2EF0(&qword_327278, &qword_28C4C0);
  v156 = *(v157 - 8);
  v9 = *(v156 + 64);
  __chkstk_darwin(v157);
  v154 = v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v152 = v130 - v12;
  v146 = sub_260290();
  v145 = *(v146 - 8);
  v13 = *(v145 + 64);
  __chkstk_darwin(v146);
  v141 = v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v142 = v130 - v16;
  v143 = sub_264410();
  v140 = *(v143 - 8);
  v17 = *(v140 + 64);
  __chkstk_darwin(v143);
  v137 = v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v138 = v130 - v20;
  v134 = sub_2EF0(&qword_3174E0, &qword_26B310);
  v21 = *(*(v134 - 8) + 64);
  __chkstk_darwin(v134);
  v133 = v130 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v132 = v130 - v24;
  v25 = sub_261690();
  v168 = *(v25 - 8);
  v169 = v25;
  v26 = *(v168 + 64);
  __chkstk_darwin(v25);
  v166 = v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v167 = v130 - v29;
  v171 = sub_2EF0(&qword_3174E8, &qword_269970);
  v30 = *(*(v171 - 8) + 64);
  __chkstk_darwin(v171);
  v131 = v130 - v31;
  v165 = sub_2626C0();
  v164 = *(v165 - 8);
  v32 = *(v164 + 64);
  __chkstk_darwin(v165);
  v163 = v130 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_2EF0(&qword_327280, &qword_28C4C8);
  v135 = *(v136 - 8);
  v34 = *(v135 + 64);
  __chkstk_darwin(v136);
  v170 = v130 - v35;
  v36 = sub_2EF0(&qword_327288, &qword_28C4D0);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v144 = v130 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v139 = v130 - v40;
  sub_2630B0();
  v41 = sub_262900();
  v43 = v42;
  v45 = v44;
  v46 = sub_262820();
  v48 = v47;
  v162 = v49;
  v161 = v50;
  sub_39DBC(v41, v43, v45 & 1);

  v174 = 0x736B6F6F42;
  v175 = 0xE500000000000000;
  v130[1] = sub_10A84();
  v51 = sub_2628F0();
  v53 = v52;
  LOBYTE(v43) = v54;
  v55 = sub_262820();
  v57 = v56;
  v59 = v58;
  sub_39DBC(v51, v53, v43 & 1);

  sub_39DBC(v46, v48, v162 & 1);

  LODWORD(v174) = sub_262120();
  v60 = sub_2627F0();
  v62 = v61;
  LOBYTE(v48) = v63;
  sub_39DBC(v55, v57, v59 & 1);

  sub_262590();
  v64 = v164;
  v65 = v163;
  v66 = v165;
  (*(v164 + 104))(v163, enum case for Font.Leading.tight(_:), v165);
  sub_2626E0();

  (*(v64 + 8))(v65, v66);
  v67 = sub_262840();
  v69 = v68;
  LOBYTE(v64) = v70;

  sub_39DBC(v60, v62, v48 & 1);

  sub_262630();
  v71 = sub_2627D0();
  v73 = v72;
  LOBYTE(v51) = v74;
  sub_39DBC(v67, v69, v64 & 1);

  LODWORD(v174) = sub_262120();
  v75 = sub_2627F0();
  v77 = v76;
  LOBYTE(v57) = v78;
  v79 = v73;
  v80 = v166;
  sub_39DBC(v71, v79, v51 & 1);

  v81 = sub_262870();
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v88 = v75;
  v89 = v167;
  sub_39DBC(v88, v77, v57 & 1);

  v165 = v81;
  v174 = v81;
  v175 = v83;
  v164 = v83;
  LOBYTE(v176) = v85 & 1;
  v177 = v87;
  v90 = v169;
  v91 = v168;
  v92 = *(v168 + 104);
  v92(v89, enum case for DynamicTypeSize.small(_:), v169);
  v92(v80, enum case for DynamicTypeSize.accessibility1(_:), v90);
  sub_2329CC(&qword_317538, &type metadata accessor for DynamicTypeSize);
  result = sub_264380();
  if (result)
  {
    v94 = *(v91 + 32);
    v163 = v87;
    v95 = v132;
    v94(v132, v89, v90);
    v96 = v134;
    v94((v95 + *(v134 + 48)), v80, v90);
    v97 = v133;
    sub_232874(v95, v133);
    v98 = *(v96 + 48);
    v99 = v131;
    v94(v131, v97, v90);
    LODWORD(v167) = v85 & 1;
    v100 = *(v91 + 8);
    v100(v97 + v98, v90);
    sub_13CF00(v95, v97);
    v94((v99 + *(v171 + 36)), (v97 + *(v96 + 48)), v90);
    v100(v97, v90);
    v101 = sub_8E38(&qword_3175C8, &qword_3174E8, &qword_269970);
    sub_262B70();
    sub_8E80(v99, &qword_3174E8, &qword_269970);
    sub_39DBC(v165, v164, v167);

    v102 = v138;
    sub_2643A0();
    v103 = v142;
    sub_260260();
    v104 = v140;
    v105 = v143;
    (*(v140 + 16))(v137, v102, v143);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v107 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v108 = v145;
    v109 = v146;
    (*(v145 + 16))(v141, v103, v146);
    v110 = sub_264490();
    v112 = v111;
    (*(v108 + 8))(v103, v109);
    (*(v104 + 8))(v102, v105);
    v172 = v110;
    v173 = v112;
    v174 = &type metadata for Text;
    v175 = v171;
    v176 = &protocol witness table for Text;
    v177 = v101;
    swift_getOpaqueTypeConformance2();
    v113 = v139;
    v114 = v136;
    v115 = v170;
    sub_262C00();

    (*(v135 + 8))(v115, v114);
    v116 = sub_261E60();
    v117 = v147;
    *v147 = v116;
    *(v117 + 8) = 0;
    *(v117 + 16) = 1;
    v118 = sub_2EF0(&qword_327290, &qword_28C4D8);
    sub_232344(v151, v153, v117 + *(v118 + 44));
    sub_8E38(&qword_327298, &qword_327268, &qword_28C4B0);
    v119 = v150;
    sub_262C60();
    sub_8E80(v117, &qword_327268, &qword_28C4B0);
    v120 = v155;
    sub_262350();
    sub_2328E4();
    v121 = v152;
    sub_262C70();
    (*(v158 + 8))(v120, v159);
    sub_8E80(v119, &qword_327270, &qword_28C4B8);
    v122 = v144;
    sub_232A14(v113, v144);
    v123 = v156;
    v124 = *(v156 + 16);
    v125 = v154;
    v126 = v157;
    v124(v154, v121, v157);
    v127 = v160;
    sub_232A14(v122, v160);
    v128 = sub_2EF0(&qword_3272A8, &unk_28C4E0);
    v124((v127 + *(v128 + 48)), v125, v126);
    v129 = *(v123 + 8);
    v129(v121, v126);
    sub_232A84(v113);
    v129(v125, v126);
    return sub_232A84(v122);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_232344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45[1] = a3;
  v5 = sub_2626C0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2EF0(&qword_318458, &unk_26B270);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v45 - v12;
  *&v51[0] = sub_230EB0(a1, a2);
  *(&v51[0] + 1) = v14;
  sub_10A84();
  v15 = sub_2628F0();
  v17 = v16;
  v19 = v18;
  sub_2625E0();
  if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
  {
    v20 = sub_2625C0();
    (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  }

  else
  {
    v21 = enum case for Font.Design.serif (_:);
    v22 = sub_2625C0();
    v23 = *(v22 - 8);
    v45[0] = v5;
    v24 = v23;
    (*(v23 + 104))(v13, v21, v22);
    (*(v24 + 56))(v13, 0, 1, v22);
    v5 = v45[0];
  }

  sub_262670();
  sub_8E80(v13, &qword_318458, &unk_26B270);
  (*(v6 + 104))(v9, enum case for Font.Leading.tight(_:), v5);
  sub_2626E0();

  (*(v6 + 8))(v9, v5);
  v25 = sub_262840();
  v27 = v26;
  v29 = v28;

  sub_39DBC(v15, v17, v19 & 1);

  LODWORD(v51[0]) = sub_262120();
  v30 = sub_2627F0();
  v32 = v31;
  v34 = v33;
  sub_39DBC(v25, v27, v29 & 1);

  v35 = sub_262870();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_39DBC(v30, v32, v34 & 1);

  KeyPath = swift_getKeyPath();
  v43 = swift_getKeyPath();
  v54 = v39 & 1;
  v53 = 0;
  *&v46 = v35;
  *(&v46 + 1) = v37;
  LOBYTE(v47) = v39 & 1;
  *(&v47 + 1) = v41;
  *&v48 = KeyPath;
  *(&v48 + 1) = 2;
  LOBYTE(v49) = 0;
  *(&v49 + 1) = v43;
  v50 = 0x3FE6666666666666;
  sub_2EF0(&qword_3272B0, &unk_28C550);
  sub_232AFC();
  sub_262C60();
  v51[2] = v48;
  v51[3] = v49;
  v52 = v50;
  v51[0] = v46;
  v51[1] = v47;
  return sub_8E80(v51, &qword_3272B0, &unk_28C550);
}

uint64_t sub_232804(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_327250, &qword_28C498);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_232874(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_3174E0, &qword_26B310);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2328E4()
{
  result = qword_3272A0;
  if (!qword_3272A0)
  {
    sub_2F9C(&qword_327270, &qword_28C4B8);
    sub_8E38(&qword_327298, &qword_327268, &qword_28C4B0);
    sub_2329CC(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3272A0);
  }

  return result;
}

uint64_t sub_2329CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_232A14(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_327288, &qword_28C4D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232A84(uint64_t a1)
{
  v2 = sub_2EF0(&qword_327288, &qword_28C4D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_232AFC()
{
  result = qword_3272B8;
  if (!qword_3272B8)
  {
    sub_2F9C(&qword_3272B0, &unk_28C550);
    sub_58070();
    sub_8E38(&qword_318ED0, &qword_318ED8, &unk_276230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3272B8);
  }

  return result;
}

unint64_t sub_232BC8()
{
  result = qword_3272C0;
  if (!qword_3272C0)
  {
    sub_2F9C(&qword_327260, &qword_28C4A8);
    sub_8E38(&qword_3272C8, &qword_327250, &qword_28C498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3272C0);
  }

  return result;
}

uint64_t *sub_232CB4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v105 = a3;
  v102 = a4;
  v6 = sub_263840();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v101 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_263B70();
  v111 = *(v120 - 8);
  v9 = *(v111 + 64);
  __chkstk_darwin(v120);
  v106 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2EF0(&qword_327390, &qword_28C700);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v103 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v95 - v15;
  v107 = sub_2EF0(&qword_327398, &qword_28C708);
  v110 = *(v107 - 8);
  v17 = *(v110 + 64);
  v18 = __chkstk_darwin(v107);
  v20 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v104 = &v95 - v22;
  __chkstk_darwin(v21);
  v24 = &v95 - v23;
  v113 = sub_263980();
  v109 = *(v113 - 8);
  v25 = *(v109 + 64);
  v26 = __chkstk_darwin(v113);
  v28 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v31 = &v95 - v30;
  v32 = __chkstk_darwin(v29);
  *&v114 = &v95 - v33;
  __chkstk_darwin(v32);
  v35 = &v95 - v34;
  v36 = a1;
  v37 = sub_A8C6C(a1);
  v112 = a2;
  if (v37)
  {
    v100 = v38;
    v101 = v39;
    v103 = v37;
    v40 = a2[4];
    sub_2E18(a2, a2[3]);
    sub_265100();
    sub_263970();
    sub_263930();
    v41 = v120;
    sub_263990();
    v42 = *(v110 + 8);
    v43 = v107;
    v42(v24, v107);
    v44 = (*(v111 + 48))(v16, 1, v41);
    v45 = sub_8E80(v16, &qword_327390, &qword_28C700);
    v46 = v113;
    v47 = v109;
    if (v44 == 1)
    {
      v105(v45);
      v48 = v106;
      sub_263B80();
      v49 = v104;
      sub_263930();
      v50 = v120;
      sub_263910();
      v51 = v49;
      v46 = v113;
      v42(v51, v43);
      (*(v111 + 8))(v48, v50);
      (*(v47 + 8))(v35, v46);
      (*(v47 + 32))(v35, v114, v46);
    }

    v52 = v112[4];
    sub_2E18(v112, v112[3]);
    (*(v47 + 16))(v114, v35, v46);
    sub_2642B0();
    sub_265110();

    *&v118 = v103;
    *(&v118 + 1) = v100;
    v119 = v101;
    sub_10934(&v116);
    v53 = v108;
    sub_2647C0();
    if (v53)
    {
      (*(v47 + 8))(v35, v46);
      return sub_A8CF4(&v116);
    }

    v114 = v118;
    v78 = v118;
    v79 = sub_2E18(&v116, v118);
    v80 = v102;
    *(v102 + 24) = v114;
    v81 = sub_10934(v80);
    (*(*(v78 - 8) + 16))(v81, v79, v78);
    (*(v47 + 8))(v35, v46);
    return sub_3080(&v116);
  }

  v55 = v103;
  v99 = v28;
  v100 = v31;
  v56 = v110;
  v57 = v120;
  v58 = v36;
  v59 = sub_A8C6C(v36);
  if (v59)
  {
    v96 = v61;
    v97 = v60;
    v98 = v59;
    v62 = v112[4];
    sub_2E18(v112, v112[3]);
    sub_265100();
    sub_263970();
    sub_263930();
    sub_263990();
    v63 = v57;
    v64 = *(v56 + 8);
    v65 = v107;
    v64(v20, v107);
    v66 = v111;
    v67 = (*(v111 + 48))(v55, 1, v63);
    v68 = sub_8E80(v55, &qword_327390, &qword_28C700);
    v69 = v113;
    if (v67 == 1)
    {
      v105(v68);
      v70 = v106;
      sub_263B80();
      v71 = v104;
      sub_263930();
      v72 = v114;
      v73 = v63;
      v74 = v100;
      sub_263910();
      v64(v71, v65);
      v75 = v70;
      v69 = v113;
      (*(v66 + 8))(v75, v73);
      v76 = v109;
      (*(v109 + 8))(v74, v69);
      (*(v76 + 32))(v74, v72, v69);
    }

    sub_30CC(v112, v115);
    v77 = v108;
    sub_263810();
    if (v77)
    {
      return (*(v109 + 8))(v100, v69);
    }

    v87 = v109;
    v88 = v100;
    (*(v109 + 16))(v99, v100, v69);
    v89 = v69;
    *&v118 = v98;
    *(&v118 + 1) = v97;
    v119 = v96;
    sub_10934(&v116);
    sub_263DE0();
    v90 = v118;
    v91 = v119;
    v92 = sub_2E18(&v116, v118);
    v93 = v102;
    *(v102 + 24) = v90;
    v93[4] = v91;
    v94 = sub_10934(v93);
    (*(*(v90 - 8) + 16))(v94, v92, v90);
    (*(v87 + 8))(v88, v89);
    return sub_3080(&v116);
  }

  v82 = sub_264C10();
  swift_allocError();
  v84 = v83;
  v85 = *(sub_2EF0(&qword_315CD0, &qword_266E00) + 48);
  *v84 = v58;
  v86 = v112[4];
  sub_2E18(v112, v112[3]);
  sub_2650E0();
  v116 = 0;
  v117 = 0xE000000000000000;
  sub_264BC0(21);

  v116 = 60;
  v117 = 0xE100000000000000;
  v121._countAndFlagsBits = sub_265260();
  sub_264530(v121);

  v122._object = 0x80000000002917A0;
  v122._countAndFlagsBits = 0xD000000000000012;
  sub_264530(v122);
  sub_264BF0();
  (*(*(v82 - 8) + 104))(v84, enum case for DecodingError.typeMismatch(_:), v82);
  return swift_willThrow();
}

uint64_t CodeAnyIntentModel.description.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  swift_getExtendedExistentialTypeMetadata();
  sub_264EE0();
  return 0;
}

uint64_t CodeAnyIntentModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a1[4];
  sub_2E18(a1, a1[3]);
  v8 = Decoder.intentKindTable.getter();
  Decoder.decodeIntentModel<A, B>(using:returning:)(v8, a2, v9, v12);
  if (!v3)
  {
    sub_F7CC(v12, v13);
    v10 = v13[1];
    *a3 = v13[0];
    *(a3 + 16) = v10;
    *(a3 + 32) = v14;
  }

  return sub_3080(a1);
}

ValueMetadata *Decoder.intentKindTable.getter()
{
  sub_265100();
  if (qword_315AF8 != -1)
  {
    swift_once();
  }

  v0 = sub_2EF0(&qword_3272F0, &qword_28C5A8);
  sub_B080(v0, qword_3272D8);
  sub_2EF0(&qword_3272F8, &unk_28C5B0);
  sub_2642C0();

  v1 = v3;
  if (!v3)
  {
    v1 = &type metadata for EmptyIntentKindTable;
    sub_233E44();
  }

  return v1;
}

uint64_t Decoder.decodeIntentModel<A, B>(using:returning:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  v15 = a2;
  v16 = a3;
  v21 = sub_2EF0(&qword_31B698, &qword_270DB8);
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v21);
  v10 = &v12 - v9;
  sub_2650F0();
  v17 = a1;
  if (v4)
  {
    sub_265100();
    sub_263950();
    sub_2EF0(&qword_31B6A0, &qword_270DC0);
    sub_2642C0();

    (*(v7 + 8))(v10, v21);
    sub_A8840(v20, &v18);
    if (v19)
    {
      sub_2E18(&v18, v19);
      swift_getMetatypeMetadata();
      sub_264000();
      sub_3080(&v18);
    }

    else
    {
      sub_8E80(&v18, &qword_31B6A8, &qword_270DC8);
    }

    swift_willThrow();
    return sub_8E80(v20, &qword_31B6A8, &qword_270DC8);
  }

  else
  {
    v13 = a4;
    v14 = v20[4];
    sub_2E18(v20, v20[3]);
    type metadata accessor for _IntentKindTable_BooksReturningUnknown();
    swift_getWitnessTable();
    sub_2637D0();
    swift_getWitnessTable();
    sub_264F30();
    sub_F7CC(&v18, v13);
    return sub_3080(v20);
  }
}

unint64_t sub_233CAC()
{
  result = sub_EED4(_swiftEmptyArrayStorage);
  qword_3272D0 = result;
  return result;
}

uint64_t sub_233CD4()
{
  if (qword_315AF0 != -1)
  {
    swift_once();
  }
}

unint64_t sub_233D30()
{
  if (qword_315AF0 != -1)
  {
    swift_once();
  }

  v1 = qword_3272D0;

  return sub_234008(v1);
}

uint64_t sub_233DB8()
{
  v0 = sub_2EF0(&qword_3272F0, &qword_28C5A8);
  sub_B600(v0, qword_3272D8);
  sub_B080(v0, qword_3272D8);
  sub_2EF0(&qword_3272F8, &unk_28C5B0);
  return sub_263960();
}

unint64_t sub_233E44()
{
  result = qword_327300[0];
  if (!qword_327300[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_327300);
  }

  return result;
}

uint64_t static JSONContext.Property<A>.booksIntentKindTable.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_315AF8 != -1)
  {
    swift_once();
  }

  v2 = sub_2EF0(&qword_3272F0, &qword_28C5A8);
  v3 = sub_B080(v2, qword_3272D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_233F4C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_233FB4()
{
  result = qword_327388;
  if (!qword_327388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327388);
  }

  return result;
}

unint64_t sub_234008(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2EF0(&qword_31B6B8, &qword_27C7C0);
    v2 = sub_264D10();
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

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (v12 << 10) | (16 * v13);
        v15 = (*(a1 + 48) + v14);
        v17 = *v15;
        v16 = v15[1];
        v23 = *(*(a1 + 56) + v14);

        sub_2EF0(&qword_3273A0, &qword_28C710);
        sub_2EF0(&qword_31B6C8, &qword_27C7D0);
        swift_dynamicCast();
        result = sub_D410(v17, v16);
        if (v18)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v17;
          v9[1] = v16;
          v11 = result;

          *(v2[7] + 8 * v11) = v24;
          v8 = v12;
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

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v19 = (v2[6] + 16 * result);
          *v19 = v17;
          v19[1] = v16;
          *(v2[7] + 8 * result) = v24;
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v2[2] = v22;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_234230()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v0;
  if (*(v0 + 8) != 1)
  {
    v7 = *v0;

    sub_264900();
    v8 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v6, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_234378@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316C10, &unk_26AF10);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for SeriesRoomHeaderView();
  sub_8198(v1 + *(v12 + 20), v11, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_238CE0(v11, a1, type metadata accessor for SizeConstants);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_234564@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SeriesRoomHeaderView();
  result = sub_8198(v1 + *(v8 + 24), v12, &qword_318168, &unk_26AF30);
  if (v14 == 1)
  {
    v10 = v12[1];
    *a1 = v12[0];
    *(a1 + 16) = v10;
    *(a1 + 32) = v13;
  }

  else
  {
    sub_264900();
    v11 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

uint64_t sub_2346E0()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for SeriesRoomHeaderView() + 28);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_264900();
    v8 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

double sub_234838()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for SeriesRoomHeaderView() + 32));
  v7 = *v6;
  if (v6[8] == 1)
  {
    return *v6;
  }

  sub_264900();
  v9 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();
  sub_3074(v7, 0);
  (*(v2 + 8))(v5, v1);
  return *&v10[1];
}

uint64_t SeriesRoomHeaderView.init(title:author:authorAction:authorImpressionMetrics:narrator:footer:coverViewModels:quickActionButtonViewModel:seriesID:systemColorScheme:contextActionMenuView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *a9 = swift_getKeyPath();
  *(a9 + 8) = 0;
  v21 = type metadata accessor for SeriesRoomHeaderView();
  v22 = v21[5];
  *(a9 + v22) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v23 = a9 + v21[6];
  *v23 = swift_getKeyPath();
  *(v23 + 40) = 0;
  v24 = a9 + v21[7];
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  v25 = a9 + v21[8];
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  v26 = (a9 + v21[9]);
  sub_2631D0();
  *v26 = v36;
  v26[1] = v37;
  sub_22148(a1, a9 + v21[10], &qword_319B18, &qword_26DA40);
  sub_22148(a2, a9 + v21[11], &qword_319B18, &qword_26DA40);
  v27 = a9 + v21[12];
  v28 = *(a3 + 16);
  *v27 = *a3;
  *(v27 + 16) = v28;
  *(v27 + 32) = *(a3 + 32);
  sub_22148(a4, a9 + v21[13], &qword_315D48, &qword_266E40);
  sub_22148(a5, a9 + v21[14], &qword_31A718, &qword_26F840);
  sub_22148(a6, a9 + v21[15], &qword_31A720, &qword_26F848);
  *(a9 + v21[16]) = a7;
  sub_238CE0(a8, a9 + v21[17], type metadata accessor for SeriesQuickActionButtonViewModel);
  v29 = (a9 + v21[18]);
  *v29 = a10;
  v29[1] = a11;
  v30 = v21[19];
  v31 = sub_261180();
  result = (*(*(v31 - 8) + 32))(a9 + v30, a12, v31);
  v33 = (a9 + v21[20]);
  *v33 = a13;
  v33[1] = a14;
  return result;
}

uint64_t SeriesRoomHeaderView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  if (qword_315868 != -1)
  {
    swift_once();
  }

  v4 = sub_260D50();
  sub_B080(v4, qword_315FE8);
  v5 = sub_260D30();
  v6 = sub_2648E0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "SwiftUI::SeriesRoomHeaderView::body evaluated", v7, 2u);
  }

  *a1 = sub_261E50();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v8 = sub_2EF0(&qword_3273A8, &unk_28C820);
  sub_234DE0(v2, a1 + *(v8 + 44));
  v9 = (v2 + *(type metadata accessor for SeriesRoomHeaderView() + 36));
  v15 = *v9;
  v16 = v9[1];
  sub_2EF0(&qword_317A40, &qword_272180);
  sub_263200();
  result = sub_2EF0(&qword_3273B0, &qword_28C830);
  v11 = (a1 + *(result + 36));
  *v11 = v12;
  v11[1] = v13;
  v11[2] = v14;
  return result;
}

uint64_t sub_234DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v80 = sub_2EF0(&qword_3274B0, &qword_28CA10);
  v79 = *(v80 - 8);
  v3 = *(v79 + 64);
  __chkstk_darwin(v80);
  v78 = &v73 - v4;
  v5 = type metadata accessor for SizeConstants.Spacing(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v75 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SizeConstants(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v74 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2EF0(&qword_3274B8, &qword_28CA18);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v73 - v13;
  v77 = sub_2EF0(&qword_3274C0, &qword_28CA20);
  v76 = *(v77 - 8);
  v15 = *(v76 + 64);
  __chkstk_darwin(v77);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v73 = &v73 - v19;
  v20 = sub_2EF0(&qword_3274C8, &qword_28CA28);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v73 - v25;
  v27 = sub_2EF0(&qword_3274D0, &qword_28CA30);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v73 - v32;
  v34 = *(a1 + *(type metadata accessor for SeriesRoomHeaderView() + 64));
  v35 = sub_234838();
  v36 = sub_234230();
  v37 = *(v34 + 16);
  if (v37 <= 5)
  {

    if (v37)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_C8914(v34, v34 + 32, 0, 0xBuLL);
    v34 = v38;
    if (*(v38 + 16))
    {
LABEL_3:
      memmove(__dst, (v34 + 32), 0x80uLL);
      v39 = sub_2F8B8(__dst);
      v40 = sub_2F950(__dst);
      if (v39)
      {
        v41 = 1.0;
        if (v39 != 1)
        {
          v41 = 0.641025641;
        }
      }

      else
      {
        v41 = *(v40 + 16);
      }

      v46 = 0.27;
      if (v36)
      {
        v46 = 0.51;
      }

      v47 = sub_C8DDC(v34, v35, v35 * v46, v41);
      v49 = v48;
      v50 = v47;

      *v33 = sub_261D30();
      *(v33 + 1) = 0;
      v33[16] = 0;
      v51 = sub_2EF0(&qword_3274D8, &qword_28CA38);
      sub_235548(v50, a1, &v33[*(v51 + 44)], v49, v41);

      if (sub_234230())
      {
        v52 = sub_234230();
        v53 = v77;
        if (v52)
        {
          v54 = sub_261E50();
        }

        else
        {
          v54 = sub_261E60();
        }

        *v14 = v54;
        *(v14 + 1) = 0x403C000000000000;
        v14[16] = 0;
        v56 = sub_2EF0(&qword_3274E8, &qword_28CA48);
        sub_23725C(a1, &v14[*(v56 + 44)]);
        v57 = sub_262520();
        v58 = v74;
        sub_234378(v74);
        v59 = v75;
        sub_238CE0(v58, v75, type metadata accessor for SizeConstants.Environment);
        sub_E5250(v59);
        sub_2610C0();
        v61 = v60;
        v63 = v62;
        v65 = v64;
        v67 = v66;
        sub_22148(v14, v17, &qword_3274B8, &qword_28CA18);
        v68 = &v17[*(v53 + 36)];
        *v68 = v57;
        *(v68 + 1) = v61;
        *(v68 + 2) = v63;
        *(v68 + 3) = v65;
        *(v68 + 4) = v67;
        v68[40] = 0;
        v69 = v73;
        sub_22148(v17, v73, &qword_3274C0, &qword_28CA20);
        sub_22148(v69, v26, &qword_3274C0, &qword_28CA20);
        v55 = 0;
      }

      else
      {
        v55 = 1;
        v53 = v77;
      }

      (*(v76 + 56))(v26, v55, 1, v53);
      sub_8198(v33, v30, &qword_3274D0, &qword_28CA30);
      sub_8198(v26, v23, &qword_3274C8, &qword_28CA28);
      v70 = v78;
      sub_8198(v30, v78, &qword_3274D0, &qword_28CA30);
      v71 = sub_2EF0(&qword_3274E0, &qword_28CA40);
      sub_8198(v23, v70 + *(v71 + 48), &qword_3274C8, &qword_28CA28);
      sub_8E80(v26, &qword_3274C8, &qword_28CA28);
      sub_8E80(v33, &qword_3274D0, &qword_28CA30);
      sub_8E80(v23, &qword_3274C8, &qword_28CA28);
      sub_8E80(v30, &qword_3274D0, &qword_28CA30);
      v72 = v81;
      sub_22148(v70, v81, &qword_3274B0, &qword_28CA10);
      return (*(v79 + 56))(v72, 0, 1, v80);
    }
  }

  v42 = *(v79 + 56);
  v43 = v81;
  v44 = v80;

  return v42(v43, 1, 1, v44);
}

uint64_t sub_235548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v56 = a3;
  v9 = type metadata accessor for SizeConstants.Spacing(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SizeConstants(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2EF0(&qword_327508, &qword_28CBE0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v56 - v19;
  v21 = sub_2EF0(&qword_327510, &qword_28CBE8);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v25 = &v56 - v24;
  v26 = sub_2EF0(&qword_327518, &qword_28CBF0);
  v27 = v26 - 8;
  v28 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v30 = &v56 - v29;
  *v20 = sub_261E60();
  *(v20 + 1) = 0x403C000000000000;
  v20[16] = 0;
  v31 = sub_2EF0(&qword_327520, &qword_28CBF8);
  sub_235944(a1, a2, &v20[*(v31 + 44)], a4, a5);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_261830();
  sub_22148(v20, v25, &qword_327508, &qword_28CBE0);
  v32 = &v25[*(v22 + 44)];
  v33 = v62;
  *(v32 + 4) = v61;
  *(v32 + 5) = v33;
  *(v32 + 6) = v63;
  v34 = v58;
  *v32 = v57;
  *(v32 + 1) = v34;
  v35 = v60;
  *(v32 + 2) = v59;
  *(v32 + 3) = v35;
  LOBYTE(a1) = sub_262510();
  sub_234230();
  sub_234378(v16);
  sub_238CE0(v16, v12, type metadata accessor for SizeConstants.Environment);
  sub_E5250(v12);
  sub_2610C0();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_22148(v25, v30, &qword_327510, &qword_28CBE8);
  v44 = &v30[*(v27 + 44)];
  *v44 = a1;
  *(v44 + 1) = v37;
  *(v44 + 2) = v39;
  *(v44 + 3) = v41;
  *(v44 + 4) = v43;
  v44[40] = 0;
  LOBYTE(v27) = sub_262520();
  sub_234230();
  sub_234378(v16);
  sub_238CE0(v16, v12, type metadata accessor for SizeConstants.Environment);
  sub_E5250(v12);
  sub_2610C0();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = v56;
  sub_22148(v30, v56, &qword_327518, &qword_28CBF0);
  result = sub_2EF0(&qword_327528, &qword_28CC00);
  v55 = v53 + *(result + 36);
  *v55 = v27;
  *(v55 + 8) = v46;
  *(v55 + 16) = v48;
  *(v55 + 24) = v50;
  *(v55 + 32) = v52;
  *(v55 + 40) = 0;
  return result;
}

uint64_t sub_235944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v81 = a3;
  v9 = type metadata accessor for SizeConstants.Spacing(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SizeConstants(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v79 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for SeriesQuickActionButtonView(0);
  v16 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_2EF0(&qword_3274F0, &qword_28CA50);
  v19 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v78 = &v71 - v20;
  v21 = sub_2EF0(&qword_327530, &qword_28CC08);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v77 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v76 = &v71 - v26;
  v27 = sub_2EF0(&qword_327538, &qword_28CC10);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v71 - v32;
  v34 = sub_2EF0(&qword_327540, &qword_28CC18);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v37 = &v71 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v71 - v39;
  *v40 = sub_261D10();
  *(v40 + 1) = 0;
  v40[16] = 0;
  v41 = sub_2EF0(&qword_327548, &qword_28CC20);
  sub_236044(a1, a2, &v40[*(v41 + 44)], a4, a5);
  if ((sub_234230() & 1) != 0 || (sub_2346E0() & 1) == 0)
  {
    v47 = 1;
  }

  else
  {
    v73 = v21;
    v74 = v12;
    v42 = type metadata accessor for SeriesRoomHeaderView();
    sub_238C6C(a2 + *(v42 + 68), &v18[*(v80 + 32)]);
    v43 = (a2 + *(v42 + 80));
    v44 = v43[1];
    v72 = *v43;
    *v18 = swift_getKeyPath();
    v18[40] = 0;
    *(v18 + 6) = swift_getKeyPath();
    *(v18 + 44) = 256;
    type metadata accessor for ProfileRestrictions();
    sub_2391B0(&qword_326DC0, type metadata accessor for ProfileRestrictions);

    *(v18 + 12) = sub_261900();
    *(v18 + 13) = v45;
    v46 = &v18[*(v80 + 36)];
    *v46 = v72;
    *(v46 + 1) = v44;
    if (sub_234230())
    {
      _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    }

    else
    {
      sub_263580();
    }

    v21 = v73;
    sub_261830();
    v48 = v78;
    sub_238CE0(v18, v78, type metadata accessor for SeriesQuickActionButtonView);
    v49 = (v48 + *(v75 + 36));
    v50 = v87;
    v49[4] = v86;
    v49[5] = v50;
    v49[6] = v88;
    v51 = v83;
    *v49 = v82;
    v49[1] = v51;
    v52 = v85;
    v49[2] = v84;
    v49[3] = v52;
    v53 = sub_262520();
    v54 = v79;
    sub_234378(v79);
    v55 = v74;
    sub_238CE0(v54, v74, type metadata accessor for SizeConstants.Environment);
    sub_E5250(v55);
    sub_2610C0();
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v64 = v77;
    sub_22148(v48, v77, &qword_3274F0, &qword_28CA50);
    v65 = v64 + *(v21 + 36);
    *v65 = v53;
    *(v65 + 8) = v57;
    *(v65 + 16) = v59;
    *(v65 + 24) = v61;
    *(v65 + 32) = v63;
    *(v65 + 40) = 0;
    v66 = v64;
    v67 = v76;
    sub_22148(v66, v76, &qword_327530, &qword_28CC08);
    sub_22148(v67, v33, &qword_327530, &qword_28CC08);
    v47 = 0;
  }

  (*(v22 + 56))(v33, v47, 1, v21);
  sub_8198(v40, v37, &qword_327540, &qword_28CC18);
  sub_8198(v33, v30, &qword_327538, &qword_28CC10);
  v68 = v81;
  sub_8198(v37, v81, &qword_327540, &qword_28CC18);
  v69 = sub_2EF0(&qword_327550, &qword_28CC28);
  sub_8198(v30, v68 + *(v69 + 48), &qword_327538, &qword_28CC10);
  sub_8E80(v33, &qword_327538, &qword_28CC10);
  sub_8E80(v40, &qword_327540, &qword_28CC18);
  sub_8E80(v30, &qword_327538, &qword_28CC10);
  return sub_8E80(v37, &qword_327540, &qword_28CC18);
}

uint64_t sub_236044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v110 = a3;
  v9 = sub_2EF0(&qword_327558, &qword_28CC30);
  v108 = *(v9 - 8);
  v109 = v9;
  v10 = *(v108 + 64);
  __chkstk_darwin(v9);
  v103 = &v91 - v11;
  v12 = sub_2EF0(&qword_3274B8, &qword_28CA18);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v95 = (&v91 - v14);
  v94 = sub_2EF0(&qword_327560, &qword_28CC38);
  v15 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v93 = &v91 - v16;
  v102 = sub_2EF0(&qword_327568, &qword_28CC40);
  v17 = *(*(v102 - 8) + 64);
  __chkstk_darwin(v102);
  v92 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v96 = &v91 - v20;
  v97 = sub_2EF0(&qword_327570, &qword_28CC48);
  v21 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v97);
  v99 = &v91 - v22;
  v98 = sub_2EF0(&qword_327578, &qword_28CC50);
  v23 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v98);
  v91 = &v91 - v24;
  v25 = sub_2EF0(&qword_327580, &qword_28CC58);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v101 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v100 = &v91 - v29;
  v30 = sub_2EF0(&qword_327588, &qword_28CC60);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v107 = &v91 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v106 = &v91 - v34;
  v35 = type metadata accessor for SizeConstants.Spacing(0);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v38 = &v91 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for SizeConstants(0);
  v40 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39 - 8);
  v42 = &v91 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_2EF0(&qword_327590, &qword_28CC68);
  v44 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v46 = &v91 - v45;
  v47 = sub_2EF0(&qword_327598, &qword_28CC70);
  v48 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47 - 8);
  v105 = &v91 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v104 = &v91 - v51;
  v52 = a1;

  v53 = sub_234230() & 1;
  v54 = sub_262550();
  if ((sub_234230() & 1) == 0)
  {
    sub_234378(v42);
    sub_238CE0(v42, v38, type metadata accessor for SizeConstants.Environment);
    sub_E5250(v38);
  }

  sub_2610C0();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v113 = 0;
  KeyPath = swift_getKeyPath();
  v64 = *(type metadata accessor for SeriesRoomHeaderView() + 76);
  v65 = &v46[*(v43 + 36)];
  v66 = *(sub_2EF0(&qword_3173A0, &qword_26D0C0) + 28);
  v67 = sub_261180();
  (*(*(v67 - 8) + 16))(v65 + v66, a2 + v64, v67);
  *v65 = KeyPath;
  *v46 = v52;
  *(v46 + 1) = a4;
  *(v46 + 2) = a5;
  v46[24] = v53;
  *(v46 + 25) = *v112;
  *(v46 + 7) = *&v112[3];
  v46[32] = v54;
  *(v46 + 33) = *v111;
  *(v46 + 9) = *&v111[3];
  *(v46 + 5) = v56;
  *(v46 + 6) = v58;
  *(v46 + 7) = v60;
  *(v46 + 8) = v62;
  v46[72] = 0;
  sub_238DBC();
  v68 = 1;
  v69 = v104;
  sub_262B00();
  sub_8E80(v46, &qword_327590, &qword_28CC68);
  v70 = sub_234230();
  v71 = v106;
  if ((v70 & 1) == 0)
  {
    if (sub_2346E0())
    {
      v72 = v91;
      sub_236B3C(v91);
      *(v72 + *(sub_2EF0(&qword_3275D8, &qword_28CCC8) + 36)) = 256;
      *(v72 + *(v98 + 36)) = 0x3FF0000000000000;
      v73 = &qword_327578;
      v74 = &qword_28CC50;
      sub_8198(v72, v99, &qword_327578, &qword_28CC50);
      swift_storeEnumTagMultiPayload();
      sub_238FB8(&qword_3275C8, &qword_327578, &qword_28CC50, sub_239068);
      sub_238FB8(&qword_327608, &qword_327568, &qword_28CC40, sub_23924C);
      v75 = v100;
    }

    else
    {
      v76 = sub_234230();
      v75 = v100;
      if (v76)
      {
        v77 = sub_261E50();
      }

      else
      {
        v77 = sub_261E60();
      }

      v78 = v95;
      *v95 = v77;
      v78[1] = 0x403C000000000000;
      *(v78 + 16) = 0;
      v79 = sub_2EF0(&qword_3274E8, &qword_28CA48);
      sub_23725C(a2, v78 + *(v79 + 44));
      v80 = v78;
      v81 = v93;
      sub_22148(v80, v93, &qword_3274B8, &qword_28CA18);
      *(v81 + *(v94 + 36)) = 256;
      v82 = v92;
      sub_22148(v81, v92, &qword_327560, &qword_28CC38);
      *(v82 + *(v102 + 36)) = 0x3FF0000000000000;
      v73 = &qword_327568;
      v74 = &qword_28CC40;
      v72 = v96;
      sub_22148(v82, v96, &qword_327568, &qword_28CC40);
      sub_8198(v72, v99, &qword_327568, &qword_28CC40);
      swift_storeEnumTagMultiPayload();
      sub_238FB8(&qword_3275C8, &qword_327578, &qword_28CC50, sub_239068);
      sub_238FB8(&qword_327608, &qword_327568, &qword_28CC40, sub_23924C);
    }

    sub_261F80();
    sub_8E80(v72, v73, v74);
    v83 = v101;
    sub_8198(v75, v101, &qword_327580, &qword_28CC58);
    v84 = v103;
    sub_8198(v83, v103, &qword_327580, &qword_28CC58);
    v85 = v84 + *(sub_2EF0(&qword_327620, &qword_28CCD8) + 48);
    *v85 = 0;
    *(v85 + 8) = 1;
    sub_8E80(v75, &qword_327580, &qword_28CC58);
    sub_8E80(v83, &qword_327580, &qword_28CC58);
    sub_22148(v84, v71, &qword_327558, &qword_28CC30);
    v68 = 0;
  }

  (*(v108 + 56))(v71, v68, 1, v109);
  v86 = v105;
  sub_8198(v69, v105, &qword_327598, &qword_28CC70);
  v87 = v107;
  sub_8198(v71, v107, &qword_327588, &qword_28CC60);
  v88 = v110;
  sub_8198(v86, v110, &qword_327598, &qword_28CC70);
  v89 = sub_2EF0(&qword_327628, &unk_28CCE0);
  sub_8198(v87, v88 + *(v89 + 48), &qword_327588, &qword_28CC60);
  sub_8E80(v71, &qword_327588, &qword_28CC60);
  sub_8E80(v69, &qword_327598, &qword_28CC70);
  sub_8E80(v87, &qword_327588, &qword_28CC60);
  return sub_8E80(v86, &qword_327598, &qword_28CC70);
}

uint64_t sub_236B3C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2EF0(&qword_31A720, &qword_26F848);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v56 - v5;
  v60 = &v56 - v5;
  v7 = sub_2EF0(&qword_31A718, &qword_26F840);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v56 - v9;
  v11 = sub_2EF0(&qword_315D48, &qword_266E40);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v56 - v13;
  v58 = &v56 - v13;
  v15 = sub_2EF0(&qword_319B18, &qword_26DA40);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v64 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v63 = &v56 - v19;
  __chkstk_darwin(v20);
  v22 = &v56 - v21;
  v59 = &v56 - v21;
  __chkstk_darwin(v23);
  v25 = &v56 - v24;
  v65 = &v56 - v24;
  v26 = type metadata accessor for SeriesRoomHeaderView();
  v62 = v26;
  sub_8198(v1 + v26[10], v25, &qword_319B18, &qword_26DA40);
  sub_8198(v1 + v26[11], v22, &qword_319B18, &qword_26DA40);
  sub_8198(v1 + v26[12], v69, &qword_316BA0, &unk_268B90);
  sub_8198(v1 + v26[13], v14, &qword_315D48, &qword_266E40);
  sub_8198(v1 + v26[14], v10, &qword_31A718, &qword_26F840);
  sub_8198(v1 + v26[15], v6, &qword_31A720, &qword_26F848);
  v27 = (v1 + v26[18]);
  v61 = v1;
  v28 = *v27;
  v29 = v27[1];

  sub_234564(&v67);
  v57 = type metadata accessor for HighlightAttributionViewLoader();
  v30 = *(v57 + 48);
  v31 = *(v57 + 52);
  swift_allocObject();
  v56 = HighlightAttributionViewLoader.init(id:provider:)(v28, v29, &v67);
  v32 = v63;
  swift_storeEnumTagMultiPayload();
  v33 = v64;
  swift_storeEnumTagMultiPayload();
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  v34 = type metadata accessor for TopLockupMetadataView(0);
  v35 = v34[5];
  *(a1 + v35) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v36 = v34[6];
  *(a1 + v36) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v37 = v34[7];
  *(a1 + v37) = swift_getKeyPath();
  sub_2EF0(&qword_316C08, &unk_26AEF0);
  swift_storeEnumTagMultiPayload();
  v38 = v34[8];
  *(a1 + v38) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v39 = a1 + v34[9];
  *v39 = swift_getKeyPath();
  *(v39 + 8) = 0;
  v40 = v34[10];
  *(a1 + v40) = swift_getKeyPath();
  sub_2EF0(&qword_316C18, &unk_26F830);
  swift_storeEnumTagMultiPayload();
  sub_8198(v32, a1 + v34[12], &qword_319B18, &qword_26DA40);
  sub_8198(v65, a1 + v34[13], &qword_319B18, &qword_26DA40);
  sub_8198(v33, a1 + v34[14], &qword_319B18, &qword_26DA40);
  v41 = v59;
  sub_8198(v59, a1 + v34[15], &qword_319B18, &qword_26DA40);
  sub_8198(v69, a1 + v34[16], &qword_316BA0, &unk_268B90);
  v42 = v58;
  sub_8198(v58, a1 + v34[17], &qword_315D48, &qword_266E40);
  sub_8198(v10, a1 + v34[18], &qword_31A718, &qword_26F840);
  v43 = v60;
  sub_8198(v60, a1 + v34[19], &qword_31A720, &qword_26F848);
  *(a1 + v34[20]) = 1;
  v66 = v56;
  sub_2631D0();
  sub_8E80(v64, &qword_319B18, &qword_26DA40);
  sub_8E80(v63, &qword_319B18, &qword_26DA40);
  sub_8E80(v43, &qword_31A720, &qword_26F848);
  sub_8E80(v10, &qword_31A718, &qword_26F840);
  sub_8E80(v42, &qword_315D48, &qword_266E40);
  sub_8E80(v69, &qword_316BA0, &unk_268B90);
  sub_8E80(v41, &qword_319B18, &qword_26DA40);
  sub_8E80(v65, &qword_319B18, &qword_26DA40);
  v44 = v68;
  v45 = (a1 + v34[11]);
  *v45 = v67;
  v45[1] = v44;
  v46 = (v61 + v62[9]);
  v47 = *v46;
  v48 = v46[1];
  v67 = v47;
  v68 = v48;
  sub_2EF0(&qword_317A40, &qword_272180);
  sub_263200();
  v49 = v69[0];
  v50 = v69[1];
  v51 = v69[2];
  KeyPath = swift_getKeyPath();
  v53 = swift_getKeyPath();
  result = sub_2EF0(&qword_3274F8, &qword_28CA58);
  v55 = a1 + *(result + 36);
  *v55 = v49;
  *(v55 + 8) = v50;
  *(v55 + 16) = v51;
  *(v55 + 24) = KeyPath;
  *(v55 + 32) = 0;
  *(v55 + 40) = v53;
  *(v55 + 48) = 0;
  return result;
}

uint64_t sub_23725C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = type metadata accessor for SeriesQuickActionButtonView(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_2EF0(&qword_3274F0, &qword_28CA50);
  v8 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37);
  v39 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  __chkstk_darwin(v13);
  v38 = &v37 - v14;
  v15 = sub_2EF0(&qword_3274F8, &qword_28CA58);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v37 - v20;
  sub_236B3C(&v37 - v20);
  v22 = type metadata accessor for SeriesRoomHeaderView();
  sub_238C6C(a1 + *(v22 + 68), &v7[*(v4 + 40)]);
  v23 = (a1 + *(v22 + 80));
  v25 = *v23;
  v24 = v23[1];
  *v7 = swift_getKeyPath();
  v7[40] = 0;
  *(v7 + 6) = swift_getKeyPath();
  *(v7 + 44) = 256;
  type metadata accessor for ProfileRestrictions();
  sub_2391B0(&qword_326DC0, type metadata accessor for ProfileRestrictions);

  *(v7 + 12) = sub_261900();
  *(v7 + 13) = v26;
  v27 = &v7[*(v4 + 44)];
  *v27 = v25;
  *(v27 + 1) = v24;
  if (sub_234230())
  {
    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  }

  else
  {
    sub_263580();
  }

  sub_261830();
  sub_238CE0(v7, v12, type metadata accessor for SeriesQuickActionButtonView);
  v28 = &v12[*(v37 + 36)];
  v29 = v46;
  *(v28 + 4) = v45;
  *(v28 + 5) = v29;
  *(v28 + 6) = v47;
  v30 = v42;
  *v28 = v41;
  *(v28 + 1) = v30;
  v31 = v44;
  *(v28 + 2) = v43;
  *(v28 + 3) = v31;
  v32 = v38;
  sub_22148(v12, v38, &qword_3274F0, &qword_28CA50);
  sub_8198(v21, v18, &qword_3274F8, &qword_28CA58);
  v33 = v39;
  sub_8198(v32, v39, &qword_3274F0, &qword_28CA50);
  v34 = v40;
  sub_8198(v18, v40, &qword_3274F8, &qword_28CA58);
  v35 = sub_2EF0(&qword_327500, &unk_28CAB0);
  sub_8198(v33, v34 + *(v35 + 48), &qword_3274F0, &qword_28CA50);
  sub_8E80(v32, &qword_3274F0, &qword_28CA50);
  sub_8E80(v21, &qword_3274F8, &qword_28CA58);
  sub_8E80(v33, &qword_3274F0, &qword_28CA50);
  return sub_8E80(v18, &qword_3274F8, &qword_28CA58);
}

void sub_2376B0(uint64_t a1@<X1>, double *a2@<X8>)
{
  v57 = a2;
  v3 = sub_261C90();
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = *(v55 + 64);
  __chkstk_darwin(v3);
  v54 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261620();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_261FC0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v61 = -2.31584178e77;
  *&v62 = COERCE_DOUBLE(0x80000000002950A0);
  sub_2621B0();
  sub_261450();
  v16 = *(v12 + 8);
  v16(v15, v11);
  v17 = 1.0;
  if ((v65 & 1) == 0)
  {
    v53 = *&v61;
    v52 = *&v62;
    v51 = v63;
    v50 = v64;
    v59 = 0xD00000000000001ALL;
    v60 = 0x80000000002950A0;
    sub_2621B0();
    sub_261440();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v16(v15, v11);
    v68.origin.x = v19;
    v68.origin.y = v21;
    v68.size.width = v23;
    v49 = v25;
    v68.size.height = v25;
    MinY = CGRectGetMinY(v68);
    sub_261610();
    sub_261430();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    (*(v7 + 8))(v10, v6);
    v69.origin.x = v28;
    v69.origin.y = v30;
    v69.size.width = v32;
    v69.size.height = v34;
    v35 = CGRectGetMinY(v69);
    v36 = v35;
    LOBYTE(v60) = *(a1 + 32);
    v37 = *(a1 + 24);
    v59 = v37;
    v38 = v60;
    if (v60 == 1)
    {
      v39 = MinY - v35;
      v41 = v55;
      v40 = v56;
      v42 = v54;
      if (v37)
      {
        goto LABEL_11;
      }
    }

    else
    {

      sub_264900();
      v43 = sub_2624B0();
      sub_260D10();

      v42 = v54;
      sub_261C80();
      swift_getAtKeyPath();
      sub_8E80(&v59, &qword_3222D0, &unk_28CA00);
      v41 = v55;
      v40 = v56;
      (*(v55 + 8))(v42, v56);
      v39 = MinY - v36;
      if (v66 == 1)
      {
        goto LABEL_13;
      }
    }

    v67 = *(a1 + 48);
    v44 = *(a1 + 40);
    v66 = v44;
    if (v67 != 1)
    {

      sub_264900();
      v45 = sub_2624B0();
      sub_260D10();

      sub_261C80();
      swift_getAtKeyPath();
      sub_8E80(&v66, &qword_3222D0, &unk_28CA00);
      (*(v41 + 8))(v42, v40);
      LOBYTE(v44) = v58;
    }

    if ((v44 & 1) == 0)
    {
      v39 = v39 + -58.0;
    }

    if (v38)
    {
LABEL_11:
      if ((v37 & 1) == 0)
      {
LABEL_12:
        v70.origin.x = v19;
        v70.origin.y = v21;
        v70.size.width = v23;
        v70.size.height = v49;
        MaxY = CGRectGetMaxY(v70);
LABEL_15:
        v48 = MaxY;
        v72.origin.x = v53;
        v72.origin.y = v52;
        v72.size.width = v51;
        v72.size.height = v50;
        v17 = fmax(fmin((v39 - v48) / (CGRectGetHeight(v72) - v48), 1.0), 0.0) * -0.8 + 1.0;
        goto LABEL_16;
      }

LABEL_14:
      v71.origin.x = v19;
      v71.origin.y = v21;
      v71.size.width = v23;
      v71.size.height = v49;
      MaxY = CGRectGetMinY(v71);
      goto LABEL_15;
    }

LABEL_13:

    sub_264900();
    v47 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_8E80(&v59, &qword_3222D0, &unk_28CA00);
    (*(v41 + 8))(v42, v40);
    if (v58 != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

LABEL_16:
  *v57 = v17;
}

uint64_t type metadata accessor for SeriesRoomHeaderView()
{
  result = qword_327410;
  if (!qword_327410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  v15 = *v2;
  v6 = v15;
  v16 = v8;
  v17 = *(v2 + 32);
  v18 = v2[5];
  v19 = *(v2 + 48);
  v9 = swift_allocObject();
  *(v9 + 16) = v15;
  *(v9 + 24) = v5;
  *(v9 + 32) = v7;
  *(v9 + 40) = v2[3];
  *(v9 + 48) = *(v2 + 32);
  *(v9 + 49) = *(v2 + 33);
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;
  *(v10 + 32) = v7;
  *(v10 + 40) = v2[3];
  *(v10 + 48) = *(v2 + 32);
  *(v10 + 49) = *(v2 + 33);
  v11 = sub_2EF0(&qword_3274A0, &qword_28C9F0);
  (*(*(v11 - 8) + 16))(a2, a1, v11);
  v12 = (a2 + *(sub_2EF0(&qword_3274A8, &qword_28C9F8) + 36));
  *v12 = sub_238B50;
  v12[1] = v9;
  v12[2] = sub_238BB0;
  v12[3] = v10;
  sub_238C10(&v15, v14);

  sub_8198(&v16, v14, &qword_3222D0, &unk_28CA00);
  sub_8198(&v18, v14, &qword_3222D0, &unk_28CA00);
  sub_238C10(&v15, v14);

  sub_8198(&v16, v14, &qword_3222D0, &unk_28CA00);
  return sub_8198(&v18, v14, &qword_3222D0, &unk_28CA00);
}

uint64_t sub_237F60(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_317BF8, &unk_26F930);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_11:
    v14 = *(v8 + 48);

    return v14(a1 + v9, a2, v7);
  }

  v10 = sub_2EF0(&qword_319B18, &qword_26DA40);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[10];
    goto LABEL_11;
  }

  v11 = sub_2EF0(&qword_315D48, &qword_266E40);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[13];
    goto LABEL_11;
  }

  v12 = sub_2EF0(&qword_31A718, &qword_26F840);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[14];
    goto LABEL_11;
  }

  v13 = sub_2EF0(&qword_31A720, &qword_26F848);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v7 = v13;
    v8 = *(v13 - 8);
    v9 = a3[15];
    goto LABEL_11;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[16]);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = type metadata accessor for SeriesQuickActionButtonViewModel(0);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v7 = v17;
      v8 = *(v17 - 8);
      v9 = a3[17];
      goto LABEL_11;
    }

    v18 = sub_261180();
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[19];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_238240(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_317BF8, &unk_26F930);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_11:
    v16 = *(v10 + 56);

    return v16(a1 + v11, a2, a2, v9);
  }

  v12 = sub_2EF0(&qword_319B18, &qword_26DA40);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_11;
  }

  v13 = sub_2EF0(&qword_315D48, &qword_266E40);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[13];
    goto LABEL_11;
  }

  v14 = sub_2EF0(&qword_31A718, &qword_26F840);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[14];
    goto LABEL_11;
  }

  result = sub_2EF0(&qword_31A720, &qword_26F848);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[15];
    goto LABEL_11;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[16]) = (a2 - 1);
    return result;
  }

  v17 = type metadata accessor for SeriesQuickActionButtonViewModel(0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v9 = v17;
    v10 = *(v17 - 8);
    v11 = a4[17];
    goto LABEL_11;
  }

  v18 = sub_261180();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[19];

  return v19(v20, a2, a2, v18);
}

void sub_23850C()
{
  sub_238960(319, &qword_3167D0, &type metadata for Bool, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_2388FC(319, &qword_317C68, type metadata accessor for SizeConstants, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_238898(319, &qword_31D638, &qword_31D640, qword_275B88, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_238960(319, &qword_316308, &type metadata for CGFloat, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_238960(319, &qword_317910, &type metadata for CGFloat, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_2388FC(319, &qword_31A7C8, &type metadata accessor for LocalizerRequest, type metadata accessor for PlaceholderTextView.ContentType);
            if (v5 <= 0x3F)
            {
              sub_238898(319, &qword_31A7D0, &qword_316BA8, &unk_275850, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                sub_2388FC(319, &qword_31A7D8, &type metadata accessor for ImpressionMetrics, &type metadata accessor for Optional);
                if (v7 <= 0x3F)
                {
                  sub_238898(319, &qword_31A7E0, &qword_31A7E8, &qword_26F970, type metadata accessor for PlaceholderTextView.ContentType);
                  if (v8 <= 0x3F)
                  {
                    sub_2388FC(319, &unk_31A7F0, type metadata accessor for TopLockupMetadataView.Footer, type metadata accessor for PlaceholderTextView.ContentType);
                    if (v9 <= 0x3F)
                    {
                      sub_238960(319, &qword_3195C0, &type metadata for CoverViewModel, &type metadata accessor for Array);
                      if (v10 <= 0x3F)
                      {
                        type metadata accessor for SeriesQuickActionButtonViewModel(319);
                        if (v11 <= 0x3F)
                        {
                          sub_261180();
                          if (v12 <= 0x3F)
                          {
                            sub_16D28();
                            if (v13 <= 0x3F)
                            {
                              swift_cvw_initStructMetadataWithLayoutString();
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_238898(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2F9C(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2388FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_238960(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2389B4()
{
  result = qword_327488;
  if (!qword_327488)
  {
    sub_2F9C(&qword_3273B0, &qword_28C830);
    sub_8E38(&qword_327490, &qword_327498, &qword_28C8B0);
    sub_1392C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327488);
  }

  return result;
}

__n128 sub_238A6C(uint64_t a1, uint64_t a2)
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

uint64_t sub_238A88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_238AD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_238B58()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_3074(*(v0 + 40), *(v0 + 48));
  sub_3074(*(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_238BB0(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v3 = *a1;
  sub_2EF0(&unk_31CCF0, &qword_273ED0);
  return sub_263330();
}

uint64_t sub_238C6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SeriesQuickActionButtonViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238CE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_238D64@<X0>(_BYTE *a1@<X8>)
{
  sub_6E2E0();
  result = sub_261CA0();
  *a1 = v3;
  return result;
}

unint64_t sub_238DBC()
{
  result = qword_3275A0;
  if (!qword_3275A0)
  {
    sub_2F9C(&qword_327590, &qword_28CC68);
    sub_238E74();
    sub_8E38(&qword_317398, &qword_3173A0, &qword_26D0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3275A0);
  }

  return result;
}

unint64_t sub_238E74()
{
  result = qword_3275A8;
  if (!qword_3275A8)
  {
    sub_2F9C(&qword_3275B0, &qword_28CCB0);
    sub_238F00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3275A8);
  }

  return result;
}

unint64_t sub_238F00()
{
  result = qword_3275B8;
  if (!qword_3275B8)
  {
    sub_2F9C(&qword_3275C0, &qword_28CCB8);
    sub_8E38(&qword_31C048, &qword_31C050, &qword_28CCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3275B8);
  }

  return result;
}

uint64_t sub_238FB8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    a4();
    sub_8E38(&qword_3275F8, &qword_327600, &qword_28CCD0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_239068()
{
  result = qword_3275D0;
  if (!qword_3275D0)
  {
    sub_2F9C(&qword_3275D8, &qword_28CCC8);
    sub_2390F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3275D0);
  }

  return result;
}

unint64_t sub_2390F4()
{
  result = qword_3275E0;
  if (!qword_3275E0)
  {
    sub_2F9C(&qword_3274F8, &qword_28CA58);
    sub_2391B0(&qword_3275E8, type metadata accessor for TopLockupMetadataView);
    sub_2391F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3275E0);
  }

  return result;
}

uint64_t sub_2391B0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2391F8()
{
  result = qword_3275F0;
  if (!qword_3275F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3275F0);
  }

  return result;
}

unint64_t sub_23924C()
{
  result = qword_327610;
  if (!qword_327610)
  {
    sub_2F9C(&qword_327560, &qword_28CC38);
    sub_8E38(&qword_327618, &qword_3274B8, &qword_28CA18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327610);
  }

  return result;
}

unint64_t sub_239308()
{
  result = qword_327630;
  if (!qword_327630)
  {
    sub_2F9C(&qword_3274A8, &qword_28C9F8);
    sub_8E38(&qword_327638, &qword_3274A0, &qword_28C9F0);
    sub_8E38(&qword_3175F0, &qword_3175F8, &qword_288A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327630);
  }

  return result;
}

unsigned __int8 *static YearInReviewColors.primary.getter()
{
  result = Color.init(hexString:)(0x393962353837, 0xE600000000000000);
  if (!result)
  {

    return sub_262FE0();
  }

  return result;
}

uint64_t GridItemViewModel.init(metadataModel:infobarModel:showOrdinal:assetInfo:cardInfo:isAnODPRecommendation:supportsSuggestionContextMenu:analyticsAttributes:suggestionData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, __int128 *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *(a9 + 80) = 0;
  *(a9 + 64) = 0u;
  *(a9 + 48) = 0u;
  v17 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v17;
  *(a9 + 25) = *(a1 + 25);
  sub_239544(a2, a9 + 48);
  *(a9 + 88) = a3;
  sub_F7CC(a4, a9 + 96);
  v18 = type metadata accessor for GridItemViewModel();
  sub_22148(a5, a9 + v18[8], &qword_31A480, &qword_273520);
  *(a9 + v18[9]) = a6;
  *(a9 + v18[10]) = a7;
  sub_239600(a8, a9 + v18[11]);
  return sub_22148(a10, a9 + v18[12], &qword_327640, &unk_28CD30);
}

uint64_t sub_239544(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316D48, &unk_28CD20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for GridItemViewModel()
{
  result = qword_3276A0;
  if (!qword_3276A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_239600(uint64_t a1, uint64_t a2)
{
  v4 = sub_2603F0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t GridItemViewModel.analyticsAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GridItemViewModel() + 44);

  return sub_2397F4(v3, a1);
}

uint64_t sub_2397F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2603F0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t GridItemViewModel.assetID.getter()
{
  v1 = v0[16];
  sub_2E18(v0 + 12, v0[15]);
  v2 = *(v1 + 8);
  return sub_2606E0();
}

uint64_t sub_239914(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = v1[15];
  v4 = v1[16];
  sub_2E18(v1 + 12, v3);
  return a1(v3, v4);
}

uint64_t GridItemViewModel.isAudiobook.getter()
{
  v1 = sub_2EF0(&qword_31AEE0, &qword_270378);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9[-v3 - 8];
  sub_30CC(v0 + 96, v9);
  sub_2EF0(&qword_31AEE8, &qword_28CD40);
  v5 = sub_260790();
  v6 = swift_dynamicCast();
  (*(*(v5 - 8) + 56))(v4, v6 ^ 1, 1, v5);
  sub_8E80(v4, &qword_31AEE0, &qword_270378);
  return v6;
}

uint64_t GridItemViewModel.isSG.getter()
{
  v1 = sub_2EF0(&qword_31AEE0, &qword_270378);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v12[-v3 - 8];
  sub_30CC(v0 + 96, v12);
  sub_2EF0(&qword_31AEE8, &qword_28CD40);
  v5 = sub_260790();
  v6 = swift_dynamicCast();
  v7 = *(*(v5 - 8) + 56);
  if (v6)
  {
    v8 = *(v5 - 8);
    v7(v4, 0, 1, v5);
    v9 = sub_260780();
    (*(v8 + 8))(v4, v5);
  }

  else
  {
    v7(v4, 1, 1, v5);
    sub_8E80(v4, &qword_31AEE0, &qword_270378);
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t GridItemViewModel.isPurchased.getter()
{
  v1 = v0[16];
  sub_2E18(v0 + 12, v0[15]);
  v2 = *(v1 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_264A60();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13[-1] - v7;
  sub_2606D0();
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v5 + 8))(v8, v4);
    return 2;
  }

  else
  {
    v13[3] = AssociatedTypeWitness;
    v13[4] = swift_getAssociatedConformanceWitness();
    sub_10934(v13);
    (*(v9 + 32))();
    v10 = sub_2607F0() & 1;
    sub_3080(v13);
  }

  return v10;
}

BOOL GridItemViewModel.shouldObserveLibraryAssetState.getter()
{
  sub_8198(v0 + 48, v3, &qword_316D48, &unk_28CD20);
  v1 = v4 != 0;
  sub_8E80(v3, &qword_316D48, &unk_28CD20);
  return v1;
}

uint64_t sub_239E5C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 120);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_2EF0(&qword_31A480, &qword_273520);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_2603F0();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[11];
    goto LABEL_9;
  }

  v14 = sub_2EF0(&qword_327640, &unk_28CD30);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[12];

  return v15(v16, a2, v14);
}

uint64_t sub_239FF4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 120) = (a2 - 1);
    return result;
  }

  v8 = sub_2EF0(&qword_31A480, &qword_273520);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_2603F0();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_7;
  }

  v14 = sub_2EF0(&qword_327640, &unk_28CD30);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[12];

  return v15(v16, a2, a2, v14);
}

void sub_23A178()
{
  sub_23A29C();
  if (v0 <= 0x3F)
  {
    sub_44744();
    if (v1 <= 0x3F)
    {
      sub_23A300(319, &qword_31C500, type metadata accessor for CardInfo);
      if (v2 <= 0x3F)
      {
        sub_2603F0();
        if (v3 <= 0x3F)
        {
          sub_23A300(319, &unk_3276C0, &type metadata accessor for SuggestionData);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23A29C()
{
  if (!qword_3276B0)
  {
    sub_2F9C(&qword_3276B8, &qword_28CDA8);
    v0 = sub_264A60();
    if (!v1)
    {
      atomic_store(v0, &qword_3276B0);
    }
  }
}

void sub_23A300(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_264A60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23A354()
{
  v1 = 0x6C6C616D5378;
  v2 = 0x6D756964656DLL;
  if (*v0 != 2)
  {
    v2 = 0x656772616CLL;
  }

  if (*v0)
  {
    v1 = 0x6C6C616D73;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23A3BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B42C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23A3E4(uint64_t a1)
{
  v2 = sub_23AC98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_23A420(uint64_t a1)
{
  v2 = sub_23AC98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_23A45C(uint64_t a1)
{
  v2 = sub_23ACEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_23A498(uint64_t a1)
{
  v2 = sub_23ACEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_23A4D4(uint64_t a1)
{
  v2 = sub_23AD40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_23A510(uint64_t a1)
{
  v2 = sub_23AD40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_23A54C(uint64_t a1)
{
  v2 = sub_23AD94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_23A588(uint64_t a1)
{
  v2 = sub_23AD94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_23A5C4(uint64_t a1)
{
  v2 = sub_23ADE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_23A600(uint64_t a1)
{
  v2 = sub_23ADE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ListItemMetadata.TitleLockupSize.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v48 = sub_2EF0(&qword_327710, &qword_28CDB0);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  __chkstk_darwin(v48);
  v51 = &v41 - v4;
  v49 = sub_2EF0(&qword_327718, &qword_28CDB8);
  v45 = *(v49 - 8);
  v5 = *(v45 + 64);
  __chkstk_darwin(v49);
  v50 = &v41 - v6;
  v47 = sub_2EF0(&qword_327720, &qword_28CDC0);
  v43 = *(v47 - 8);
  v7 = *(v43 + 64);
  __chkstk_darwin(v47);
  v9 = &v41 - v8;
  v10 = sub_2EF0(&qword_327728, &qword_28CDC8);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  __chkstk_darwin(v10);
  v13 = &v41 - v12;
  v14 = sub_2EF0(&qword_327730, &unk_28CDD0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v41 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  sub_2E18(a1, v20);
  sub_23AC98();
  v21 = v53;
  sub_265120();
  if (!v21)
  {
    v22 = v13;
    v41 = v10;
    v42 = 0;
    v23 = v9;
    v24 = v50;
    v25 = v51;
    v53 = v15;
    v26 = v52;
    v27 = v18;
    v28 = sub_264E00();
    v29 = (2 * *(v28 + 16)) | 1;
    v55 = v28;
    v56 = v28 + 32;
    v57 = 0;
    v58 = v29;
    v30 = sub_6ECC();
    if (v30 == 4 || v57 != v58 >> 1)
    {
      v32 = sub_264C10();
      swift_allocError();
      v34 = v33;
      v35 = *(sub_2EF0(&qword_315CD0, &qword_266E00) + 48);
      *v34 = &type metadata for ListItemMetadata.TitleLockupSize;
      sub_264D60();
      sub_264BF0();
      (*(*(v32 - 8) + 104))(v34, enum case for DecodingError.typeMismatch(_:), v32);
      swift_willThrow();
LABEL_9:
      (*(v53 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return sub_3080(v54);
    }

    v59 = v30;
    if (v30 <= 1u)
    {
      if (v30)
      {
        v60 = 1;
        sub_23AD94();
        v39 = v42;
        sub_264D50();
        if (!v39)
        {
          (*(v43 + 8))(v23, v47);
          goto LABEL_17;
        }
      }

      else
      {
        v60 = 0;
        sub_23ADE8();
        v31 = v42;
        sub_264D50();
        if (!v31)
        {
          (*(v44 + 8))(v22, v41);
LABEL_17:
          (*(v53 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v26 = v59;
          return sub_3080(v54);
        }
      }

      goto LABEL_9;
    }

    v37 = v53;
    if (v30 == 2)
    {
      v60 = 2;
      sub_23AD40();
      v38 = v42;
      sub_264D50();
      if (!v38)
      {
        (*(v45 + 8))(v24, v49);
LABEL_21:
        (*(v37 + 8))(v27, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v60 = 3;
      sub_23ACEC();
      v40 = v42;
      sub_264D50();
      if (!v40)
      {
        (*(v46 + 8))(v25, v48);
        goto LABEL_21;
      }
    }

    (*(v37 + 8))(v27, v14);
    goto LABEL_10;
  }

  return sub_3080(v54);
}

unint64_t sub_23AC98()
{
  result = qword_327738;
  if (!qword_327738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327738);
  }

  return result;
}

unint64_t sub_23ACEC()
{
  result = qword_327740;
  if (!qword_327740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327740);
  }

  return result;
}

unint64_t sub_23AD40()
{
  result = qword_327748;
  if (!qword_327748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327748);
  }

  return result;
}

unint64_t sub_23AD94()
{
  result = qword_327750;
  if (!qword_327750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327750);
  }

  return result;
}

unint64_t sub_23ADE8()
{
  result = qword_327758;
  if (!qword_327758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327758);
  }

  return result;
}

unint64_t sub_23AE40()
{
  result = qword_327760;
  if (!qword_327760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327760);
  }

  return result;
}

unint64_t sub_23AE94(uint64_t a1)
{
  result = sub_C7198();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23B068()
{
  result = qword_327768;
  if (!qword_327768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327768);
  }

  return result;
}

unint64_t sub_23B0C0()
{
  result = qword_327770;
  if (!qword_327770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327770);
  }

  return result;
}

unint64_t sub_23B118()
{
  result = qword_327778;
  if (!qword_327778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327778);
  }

  return result;
}

unint64_t sub_23B170()
{
  result = qword_327780;
  if (!qword_327780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327780);
  }

  return result;
}

unint64_t sub_23B1C8()
{
  result = qword_327788;
  if (!qword_327788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327788);
  }

  return result;
}

unint64_t sub_23B220()
{
  result = qword_327790;
  if (!qword_327790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327790);
  }

  return result;
}

unint64_t sub_23B278()
{
  result = qword_327798;
  if (!qword_327798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327798);
  }

  return result;
}

unint64_t sub_23B2D0()
{
  result = qword_3277A0;
  if (!qword_3277A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3277A0);
  }

  return result;
}

unint64_t sub_23B328()
{
  result = qword_3277A8;
  if (!qword_3277A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3277A8);
  }

  return result;
}

unint64_t sub_23B380()
{
  result = qword_3277B0;
  if (!qword_3277B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3277B0);
  }

  return result;
}

unint64_t sub_23B3D8()
{
  result = qword_3277B8;
  if (!qword_3277B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3277B8);
  }

  return result;
}

uint64_t sub_23B42C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6C616D5378 && a2 == 0xE600000000000000;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6C616D73 && a2 == 0xE500000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D756964656DLL && a2 == 0xE600000000000000 || (sub_264F10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656772616CLL && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t BooksOpaqueIntentModel.params.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_263840();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t BooksOpaqueIntentModel.kind.getter(uint64_t a1)
{
  v1 = sub_23C258(a1);

  return v1;
}

BOOL sub_23B6B0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_301AE0;
  v6._object = a2;
  v4 = sub_264D40(v3, v6);

  return v4 != 0;
}

uint64_t sub_23B6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_23B76C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_23B7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_23B848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

BOOL sub_23B8B8@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *(a2 + 16);
  result = sub_23B6B0(*a1, *(a1 + 8));
  *a3 = result;
  return result;
}

BOOL sub_23B920@<W0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *(a3 + 16);
  result = sub_23B6B0(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_23B950@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = static MResourceDecoder.MResourceDecoderError.== infix(_:_:)();
  *a2 = result & 1;
  return result;
}

uint64_t sub_23B980(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_23B9D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t BooksOpaqueIntentModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  type metadata accessor for BooksOpaqueIntentModel.CodingKeys();
  WitnessTable = swift_getWitnessTable();
  v4 = sub_264E20();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  __chkstk_darwin(v4);
  v30 = &v24 - v6;
  v7 = sub_263840();
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BooksOpaqueIntentModel();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  sub_30CC(a1, v31);
  sub_263810();
  if (v2)
  {
    return sub_3080(a1);
  }

  v25 = v12;
  v26 = v4;
  (*(v32 + 32))(v15, v10, v7);
  v17 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_265120();
  v18 = v26;
  v19 = sub_264DC0();
  v21 = v20;
  (*(v28 + 8))(v30, v18);
  v22 = &v15[*(v11 + 28)];
  *v22 = v19;
  v22[1] = v21;
  v23 = v25;
  (*(v25 + 16))(v27, v15, v11);
  sub_3080(a1);
  return (*(v23 + 8))(v15, v11);
}

uint64_t static BooksOpaqueIntentModel.== infix(_:_:)()
{
  sub_263830();
  sub_263830();
  if (v19 | v17)
  {
    sub_1A52CC(v18, v11);
    if (v12)
    {
      sub_FBD8(v11, v15);
      sub_1A52CC(v16, v11);
      if (v12)
      {
        sub_FBD8(v11, v14);
        sub_A7C18(v15, v10);
        sub_2EF0(&qword_3277C0, &qword_28D358);
        if (swift_dynamicCast())
        {
          sub_F7CC(v8, v11);
          v1 = v12;
          v2 = v13;
          v3 = sub_2E18(v11, v12);
          v0 = sub_23BFC0(v3, v14, v1, &type metadata for Any + 8, v2);
          sub_3080(v14);
          sub_3080(v15);
          sub_8E80(v18, &qword_316200, &qword_267FD0);
          sub_3080(v11);
          goto LABEL_11;
        }

        v9 = 0;
        memset(v8, 0, sizeof(v8));
        sub_3080(v14);
        sub_3080(v15);
        v4 = &unk_3277C8;
        v5 = &unk_28D360;
        v6 = v8;
LABEL_10:
        sub_8E80(v6, v4, v5);
        sub_8E80(v18, &qword_316200, &qword_267FD0);
        v0 = 0;
        goto LABEL_11;
      }

      sub_3080(v15);
    }

    v4 = &qword_316200;
    v5 = &qword_267FD0;
    v6 = v11;
    goto LABEL_10;
  }

  sub_8E80(v18, &qword_316200, &qword_267FD0);
  v0 = 1;
LABEL_11:
  sub_8E80(v16, &qword_316200, &qword_267FD0);
  return v0 & 1;
}

uint64_t sub_23BFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28[1] = a5;
  v8 = sub_264A60();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v28 - v11;
  v13 = *(*(a4 - 8) + 64);
  __chkstk_darwin(v14);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a3 - 8);
  v18 = *(v17 + 64);
  v20 = __chkstk_darwin(v19);
  v22 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v16, a2, a4, v20);
  v24 = swift_dynamicCast();
  v25 = *(v17 + 56);
  if (v24)
  {
    v25(v12, 0, 1, a3);
    (*(v17 + 32))(v22, v12, a3);
    v26 = sub_264390();
    (*(v17 + 8))(v22, a3);
  }

  else
  {
    v25(v12, 1, 1, a3);
    (*(v9 + 8))(v12, v8);
    v26 = 0;
  }

  return v26 & 1;
}

uint64_t sub_23C258(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t sub_23C298()
{
  result = sub_263840();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23C320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_263840();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23C3F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_263840();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

void sub_23C504(uint64_t a1)
{
  sub_23CC88(319, &qword_316FE8, type metadata accessor for ColorConstants);
  if (v2 <= 0x3F)
  {
    sub_23CC88(319, &qword_31A7B8, type metadata accessor for FontConstants);
    if (v3 <= 0x3F)
    {
      sub_23CC88(319, &qword_317C68, type metadata accessor for SizeConstants);
      if (v4 <= 0x3F)
      {
        v5 = *(a1 + 16);
        swift_checkMetadataState();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23C610(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_261180() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(sub_261690() - 8);
  v9 = *(v8 + 80);
  v10 = (*(v8 + 64) + ((v9 + 2) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v10 != 0 && v10 < 0xFFFFFFFFFFFFFFF8)
  {
    v11 = v10 + 8;
  }

  else
  {
    v11 = 8;
  }

  v12 = v10 + 11;
  v13 = v10 + 11 > 8;
  v14 = *(*(a3 + 16) - 8);
  if (v13)
  {
    v15 = v12;
  }

  else
  {
    v15 = 8;
  }

  v16 = *(v14 + 84);
  v17 = *(v14 + 80);
  v18 = *(v14 + 64);
  if (v16 <= 0xFE)
  {
    v19 = 254;
  }

  else
  {
    v19 = *(v14 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v20 = v9 | 7;
  v21 = v7 + v20 + 1;
  v22 = v11 | 1;
  v23 = v15 + v17 + 1;
  if (a2 <= v19)
  {
    goto LABEL_37;
  }

  v24 = ((v23 + ((v22 + v20 + (v21 & ~v20)) & ~v20)) & ~v17) + v18;
  v25 = 8 * v24;
  if (v24 <= 3)
  {
    v28 = ((a2 - v19 + ~(-1 << v25)) >> v25) + 1;
    if (HIWORD(v28))
    {
      v26 = *(a1 + v24);
      if (!v26)
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v28 > 0xFF)
    {
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v28 < 2)
    {
LABEL_37:
      if (v16 > 0xFE)
      {
        v33 = *(*(*(a3 + 16) - 8) + 48);

        return v33((v23 + ((((a1 + v21) & ~v20) + v20 + v22) & ~v20)) & ~v17);
      }

      else
      {
        v32 = *(a1 + v7);
        if (v32 >= 2)
        {
          return (v32 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v26 = *(a1 + v24);
  if (!*(a1 + v24))
  {
    goto LABEL_37;
  }

LABEL_24:
  v29 = (v26 - 1) << v25;
  if (v24 > 3)
  {
    v29 = 0;
  }

  if (v24)
  {
    if (v24 <= 3)
    {
      v30 = v24;
    }

    else
    {
      v30 = 4;
    }

    if (v30 > 2)
    {
      if (v30 == 3)
      {
        v31 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v31 = *a1;
      }
    }

    else if (v30 == 1)
    {
      v31 = *a1;
    }

    else
    {
      v31 = *a1;
    }
  }

  else
  {
    v31 = 0;
  }

  return v19 + (v31 | v29) + 1;
}

void sub_23C8C8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_261180() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_261690() - 8);
  v11 = *(v10 + 80);
  v12 = (*(v10 + 64) + ((v11 + 2) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v12 != 0 && v12 < 0xFFFFFFFFFFFFFFF8)
  {
    v13 = v12 + 8;
  }

  else
  {
    v13 = 8;
  }

  v14 = v12 + 11;
  if (v14 <= 8)
  {
    v15 = 8;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(*(a4 + 16) - 8);
  v17 = *(v16 + 84);
  v18 = *(v16 + 80);
  if (v17 <= 0xFE)
  {
    v19 = 254;
  }

  else
  {
    v19 = *(v16 + 84);
  }

  v20 = v9 + 1;
  v21 = v11 | 7;
  v22 = (v11 | 7) + v9 + 1;
  v23 = v22 & ~(v11 | 7);
  v24 = v13 | 1;
  v25 = ((v13 | 1) + v21 + v23) & ~v21;
  v26 = v15 + v18 + 1;
  v27 = ((v26 + v25) & ~v18) + *(v16 + 64);
  if (a3 <= v19)
  {
    v28 = 0;
  }

  else if (v27 <= 3)
  {
    v31 = ((a3 - v19 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
    if (HIWORD(v31))
    {
      v28 = 4;
    }

    else
    {
      if (v31 < 0x100)
      {
        v32 = 1;
      }

      else
      {
        v32 = 2;
      }

      if (v31 >= 2)
      {
        v28 = v32;
      }

      else
      {
        v28 = 0;
      }
    }
  }

  else
  {
    v28 = 1;
  }

  if (v19 < a2)
  {
    v29 = ~v19 + a2;
    if (v27 < 4)
    {
      v30 = (v29 >> (8 * v27)) + 1;
      if (v27)
      {
        v33 = v29 & ~(-1 << (8 * v27));
        bzero(a1, v27);
        if (v27 != 3)
        {
          if (v27 == 2)
          {
            *a1 = v33;
            if (v28 > 1)
            {
LABEL_64:
              if (v28 == 2)
              {
                *&a1[v27] = v30;
              }

              else
              {
                *&a1[v27] = v30;
              }

              return;
            }
          }

          else
          {
            *a1 = v29;
            if (v28 > 1)
            {
              goto LABEL_64;
            }
          }

          goto LABEL_61;
        }

        *a1 = v33;
        a1[2] = BYTE2(v33);
      }

      if (v28 > 1)
      {
        goto LABEL_64;
      }
    }

    else
    {
      bzero(a1, v27);
      *a1 = v29;
      v30 = 1;
      if (v28 > 1)
      {
        goto LABEL_64;
      }
    }

LABEL_61:
    if (v28)
    {
      a1[v27] = v30;
    }

    return;
  }

  if (v28 > 1)
  {
    if (v28 != 2)
    {
      *&a1[v27] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *&a1[v27] = 0;
LABEL_39:
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!v28)
  {
    goto LABEL_39;
  }

  a1[v27] = 0;
  if (!a2)
  {
    return;
  }

LABEL_40:
  if (v17 > 0xFE)
  {
    v34 = *(v16 + 56);

    v34((v26 + (((&a1[v22] & ~v21) + v21 + v24) & ~v21)) & ~v18, a2);
  }

  else if (a2 > 0xFE)
  {
    if (v20 <= 3)
    {
      v35 = ~(-1 << (8 * v20));
    }

    else
    {
      v35 = -1;
    }

    if (v9 != -1)
    {
      v36 = v35 & (a2 - 255);
      if (v20 <= 3)
      {
        v37 = v9 + 1;
      }

      else
      {
        v37 = 4;
      }

      bzero(a1, v20);
      if (v37 > 2)
      {
        if (v37 == 3)
        {
          *a1 = v36;
          a1[2] = BYTE2(v36);
        }

        else
        {
          *a1 = v36;
        }
      }

      else if (v37 == 1)
      {
        *a1 = v36;
      }

      else
      {
        *a1 = v36;
      }
    }
  }

  else
  {
    a1[v9] = -a2;
  }
}

void sub_23CC88(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2611E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23CD20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v44 = a1;
  v46 = a2;
  v3 = type metadata accessor for SizeConstants.Environment(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v45 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_262730();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v47 = &v43 - v13;
  v14 = sub_2EF0(&qword_31B578, &qword_270C30);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v18 = &v43 - v17;
  v19 = type metadata accessor for SizeConstants.Spacing(0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v43 - v24;
  v26 = type metadata accessor for SizeConstants(0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v43 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_261E60();
  v30 = v48 + *(a1 + 40);
  sub_40CA0(v29);
  sub_23E87C(v29, v25, type metadata accessor for SizeConstants.Environment);
  v31 = v47;
  (*(v8 + 104))(v47, enum case for Font.TextStyle.body(_:), v7);
  sub_1BE868(v25, v22, type metadata accessor for SizeConstants.Spacing);
  (*(v8 + 16))(v11, v31, v7);
  sub_1BE868(v22, v18, type metadata accessor for SizeConstants.Spacing);
  v32 = v45;
  sub_1BE868(v22, v45, type metadata accessor for SizeConstants.Environment);
  v33 = *(v4 + 32);
  v34 = v32;
  v35 = sub_1CF30(v11, v32 + v33);
  v36 = *(v8 + 8);
  v36(v11, v7);
  sub_23E8E4(v22, type metadata accessor for SizeConstants.Spacing);
  v37 = sub_261690();
  (*(*(v37 - 8) + 8))(v34 + v33, v37);
  v38 = 1.0;
  if ((*&v35 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v38 = v35;
  }

  if ((~*&v35 & 0x7FF0000000000000) != 0)
  {
    v38 = v35;
  }

  *&v18[*(v15 + 44)] = v38;
  v36(v47, v7);
  sub_23E8E4(v25, type metadata accessor for SizeConstants.Spacing);
  v39 = sub_21FA68(2.0);
  sub_8E80(v18, &qword_31B578, &qword_270C30);
  v40 = v46;
  *v46 = v43;
  *(v40 + 1) = v39;
  *(v40 + 16) = 0;
  v41 = v40 + *(sub_2EF0(&qword_327950, &unk_28D698) + 44);
  return sub_23D174(v48, *(v44 + 16), *(v44 + 24));
}

uint64_t sub_23D174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GridItemMetadataTitleLockupView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v15 - v10;
  (*(v7 + 16))(&v15 - v10, a1, v6, v9);
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v7 + 32))(v13 + v12, v11, v6);
  sub_2EF0(&qword_327958, &qword_28D6A8);
  sub_260A70();
  sub_260A50();
  sub_8E38(&qword_327960, &qword_327958, &qword_28D6A8);
  sub_76AD0(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
  sub_76AD0(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
  return sub_260A80();
}

uint64_t sub_23D3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_2EF0(&qword_327968, &qword_28D6B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  v10 = sub_2EF0(&qword_327970, &qword_28D6B8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v21 - v15;
  v17 = type metadata accessor for GridItemMetadataTitleLockupView();
  sub_23D608(a1, v17, v16);
  sub_23DD34(a1, v17, v9);
  sub_8198(v16, v13, &qword_327970, &qword_28D6B8);
  sub_8198(v9, v6, &qword_327968, &qword_28D6B0);
  v18 = v22;
  sub_8198(v13, v22, &qword_327970, &qword_28D6B8);
  v19 = sub_2EF0(&qword_327978, &unk_28D6C0);
  sub_8198(v6, v18 + *(v19 + 48), &qword_327968, &qword_28D6B0);
  sub_8E80(v9, &qword_327968, &qword_28D6B0);
  sub_8E80(v16, &qword_327970, &qword_28D6B8);
  sub_8E80(v6, &qword_327968, &qword_28D6B0);
  return sub_8E80(v13, &qword_327970, &qword_28D6B8);
}

uint64_t sub_23D608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a1;
  v68 = a3;
  v5 = sub_263EB0();
  v71 = *(v5 - 8);
  v72 = v5;
  v6 = *(v71 + 64);
  __chkstk_darwin(v5);
  v70 = &v60[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_263EE0();
  v73 = *(v8 - 8);
  v74 = v8;
  v9 = *(v73 + 64);
  __chkstk_darwin(v8);
  v69 = &v60[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for ColorConstants(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v67 = &v60[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_2EF0(&qword_318458, &unk_26B270);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v60[-v16];
  v18 = sub_262730();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v60[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = type metadata accessor for FontConstants.GridItem(0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v60[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = type metadata accessor for FontConstants(0);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v31 = &v60[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v66 = *(a2 + 44);
  v32 = *(a2 + 16);
  v63 = *(a2 + 24);
  v65 = v32;
  v64 = (*(v63 + 32))(v64, v29);
  v62 = v33;
  v61 = v34;
  v35 = v3 + *(a2 + 36);
  sub_40D40(v31);
  sub_23E87C(v31, v26, type metadata accessor for FontConstants.Environment);
  (*(v19 + 104))(v22, enum case for Font.TextStyle.subheadline(_:), v18);
  v36 = sub_2625C0();
  (*(*(v36 - 8) + 56))(v17, 1, 1, v36);
  sub_262680();
  sub_8E80(v17, &qword_318458, &unk_26B270);
  (*(v19 + 8))(v22, v18);
  sub_2625A0();

  sub_23E8E4(v26, type metadata accessor for FontConstants.GridItem);
  LOBYTE(v19) = v61;
  v37 = v64;
  v38 = v62;
  v39 = sub_262840();
  v41 = v40;
  LOBYTE(a2) = v42;
  sub_39DBC(v37, v38, v19 & 1);

  v43 = v67;
  sub_404B8(v67);
  _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  sub_23E8E4(v43, type metadata accessor for ColorConstants);
  v44 = sub_2627E0();
  v46 = v45;
  LOBYTE(v19) = v47;
  v49 = v48;
  v67 = v48;
  sub_39DBC(v39, v41, a2 & 1);

  v50 = (*(v63 + 48))(v65);
  KeyPath = swift_getKeyPath();
  v77 = v44;
  v78 = v46;
  LOBYTE(v39) = v19 & 1;
  v79 = v19 & 1;
  v80 = v49;
  v81 = KeyPath;
  v82 = v50;
  v83 = 0;
  v53 = v71;
  v52 = v72;
  v54 = v70;
  (*(v71 + 104))(v70, enum case for AutomationSemantics.Subcomponent.title(_:), v72);
  memset(v76, 0, sizeof(v76));
  memset(v75, 0, sizeof(v75));
  v55 = v69;
  sub_263EC0();
  sub_8E80(v75, &qword_316200, &qword_267FD0);
  sub_8E80(v76, &qword_316200, &qword_267FD0);
  (*(v53 + 8))(v54, v52);
  sub_2EF0(&qword_3189D8, &unk_27CEE0);
  sub_58070();
  v56 = v68;
  sub_262930();
  (*(v73 + 8))(v55, v74);
  sub_39DBC(v44, v46, v39);

  if (qword_315AA8 != -1)
  {
    swift_once();
  }

  v57 = qword_354020;
  result = sub_2EF0(&qword_327970, &qword_28D6B8);
  v59 = (v56 + *(result + 36));
  *v59 = v57;
  v59[1] = sub_23E554;
  v59[2] = 0;
  return result;
}

uint64_t sub_23DD34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v86 = a3;
  v82 = sub_263EB0();
  v80 = *(v82 - 8);
  v6 = *(v80 + 64);
  __chkstk_darwin(v82);
  v79 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_263EE0();
  v83 = *(v84 - 8);
  v8 = *(v83 + 64);
  __chkstk_darwin(v84);
  v81 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ColorConstants(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v77 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2EF0(&qword_318458, &unk_26B270);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v68 - v15;
  v17 = sub_262730();
  v74 = *(v17 - 8);
  v18 = *(v74 + 64);
  __chkstk_darwin(v17);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for FontConstants.GridItem(0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for FontConstants(0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_2EF0(&qword_327980, &qword_28D6D0);
  v87 = *(v85 - 8);
  v29 = *(v87 + 64);
  v30 = __chkstk_darwin(v85);
  v78 = &v68 - v31;
  v32 = *(a2 + 16);
  v33 = *(a2 + 24);
  v34 = *(v33 + 40);
  v76 = *(a2 + 44);
  v75 = v32;
  v35 = v34(a1, v30);
  if (v38)
  {
    v39 = *(a2 + 36);
    v70 = v3;
    v73 = v38;
    v71 = v35;
    v72 = v36;
    v69 = v37;
    sub_40D40(v28);
    sub_23E87C(v28, v24, type metadata accessor for FontConstants.Environment);
    v40 = v74;
    (*(v74 + 104))(v20, enum case for Font.TextStyle.footnote(_:), v17);
    v41 = sub_2625C0();
    (*(*(v41 - 8) + 56))(v16, 1, 1, v41);
    sub_262680();
    sub_8E80(v16, &qword_318458, &unk_26B270);
    (*(v40 + 8))(v20, v17);
    sub_23E8E4(v24, type metadata accessor for FontConstants.GridItem);
    v74 = v69 & 1;
    LOBYTE(v90) = v69 & 1;
    v42 = sub_262840();
    v44 = v43;
    v46 = v45;

    v47 = v77;
    sub_404B8(v77);
    _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
    sub_23E8E4(v47, type metadata accessor for ColorConstants);
    v48 = sub_2627E0();
    v77 = v48;
    v50 = v49;
    LODWORD(v69) = v51;
    v53 = v52;
    sub_39DBC(v42, v44, v46 & 1);

    v54 = (*(v33 + 56))(v75, v33);
    KeyPath = swift_getKeyPath();
    v90 = v48;
    v91 = v50;
    v56 = v50;
    LOBYTE(v42) = v69 & 1;
    v92 = v69 & 1;
    v93 = v53;
    v94 = KeyPath;
    v95 = v54;
    v96 = 0;
    v57 = v80;
    v58 = v79;
    v59 = v82;
    (*(v80 + 104))(v79, enum case for AutomationSemantics.Subcomponent.subtitle(_:), v82);
    memset(v89, 0, sizeof(v89));
    memset(v88, 0, sizeof(v88));
    v60 = v81;
    sub_263EC0();
    sub_8E80(v88, &qword_316200, &qword_267FD0);
    sub_8E80(v89, &qword_316200, &qword_267FD0);
    (*(v57 + 8))(v58, v59);
    sub_2EF0(&qword_3189D8, &unk_27CEE0);
    sub_58070();
    v61 = v78;
    sub_262930();
    sub_39DBC(v71, v72, v74);

    (*(v83 + 8))(v60, v84);
    sub_39DBC(v77, v56, v42);

    v62 = v86;
    v63 = v85;
    (*(v87 + 32))(v86, v61, v85);
    return (*(v87 + 56))(v62, 0, 1, v63);
  }

  else
  {
    v65 = v86;
    v66 = *(v87 + 56);
    v67 = v85;

    return v66(v65, 1, 1, v67);
  }
}

uint64_t sub_23E580()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for GridItemMetadataTitleLockupView();
  v4 = (*(*(v3 - 1) + 80) + 32) & ~*(*(v3 - 1) + 80);
  v5 = *(*(v3 - 1) + 64);
  v6 = (v0 + v4);
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_261180();
    (*(*(v7 - 8) + 8))(v0 + v4, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = &v6[v3[9]];
  sub_2EF0(&qword_316C08, &unk_26AEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v11 = sub_261690();
    (*(*(v11 - 8) + 8))(&v9[v10], v11);
  }

  else
  {
    v12 = *v9;
  }

  v13 = &v6[v3[10]];
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v15 = sub_261690();
    (*(*(v15 - 8) + 8))(&v13[v14], v15);
  }

  else
  {
    v16 = *v13;
  }

  (*(*(v2 - 8) + 8))(&v6[v3[11]], v2);

  return swift_deallocObject();
}

uint64_t sub_23E7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(*(type metadata accessor for GridItemMetadataTitleLockupView() - 8) + 80);

  return sub_23D3D8(a1, a2);
}

uint64_t sub_23E87C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23E8E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23E990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  sub_2EF0(&qword_318170, &unk_26AF40);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for ListItemMetadataFinePrintView();
  v7 = *(*(a2 - 8) + 32);
  v8 = a3 + *(v6 + 36);

  return v7(v8, a1, a2);
}

uint64_t sub_23EAB0(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(a1);
  (*(v2 + 16))(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = *(a1 + 16);
  (*(v2 + 32))(v6 + v5, &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_2EF0(&qword_319FD8, &qword_26E010);
  sub_260A70();
  sub_260A50();
  sub_23F0E4();
  sub_13FB8C(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
  sub_13FB8C(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
  return sub_260A80();
}

uint64_t sub_23ECD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for FontConstants.ListItem(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ListItemMetadataFinePrintView() + 36);
  v13 = (*(a3 + 16))(a1, a2, a3);
  v15 = v14;
  LOBYTE(a1) = v16;
  sub_404E0(v11);
  FontConstants.ListItem.finePrint.getter();
  sub_65488(v11);
  v17 = sub_262840();
  v19 = v18;
  v21 = v20;
  sub_39DBC(v13, v15, a1 & 1);

  _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  v22 = sub_2627E0();
  v24 = v23;
  LOBYTE(a1) = v25;
  v27 = v26;

  sub_39DBC(v17, v19, v21 & 1);

  KeyPath = swift_getKeyPath();
  v29 = *(sub_2EF0(&qword_319FD8, &qword_26E010) + 36);
  *(a4 + v29) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  result = swift_storeEnumTagMultiPayload();
  *a4 = v22;
  *(a4 + 8) = v24;
  *(a4 + 16) = a1 & 1;
  *(a4 + 24) = v27;
  *(a4 + 32) = KeyPath;
  *(a4 + 40) = 1;
  *(a4 + 48) = 0;
  return result;
}

uint64_t sub_23EEE4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for ListItemMetadataFinePrintView();
  v4 = *(*(v3 - 8) + 64);
  v5 = (v0 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)));
  sub_2EF0(&qword_318170, &unk_26AF40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v7 = sub_261690();
    (*(*(v7 - 8) + 8))(&v5[v6], v7);
  }

  else
  {
    v8 = *v5;
  }

  (*(*(v2 - 8) + 8))(&v5[*(v3 + 36)], v2);

  return swift_deallocObject();
}

uint64_t sub_23F048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(*(type metadata accessor for ListItemMetadataFinePrintView() - 8) + 80);

  return sub_23ECD0(a1, v5, v6, a2);
}

unint64_t sub_23F0E4()
{
  result = qword_327A18;
  if (!qword_327A18)
  {
    sub_2F9C(&qword_319FD8, &qword_26E010);
    sub_58070();
    sub_13FB8C(&qword_3193A8, type metadata accessor for DefaultBlendModeModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327A18);
  }

  return result;
}

uint64_t _CodeAnyIntentModel_Many.description.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *v1;
  swift_getExtendedExistentialTypeMetadata();
  sub_2646F0();
  swift_getWitnessTable();
  sub_264EF0();
  return 0;
}

uint64_t _CodeAnyIntentModel_Many.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_30CC(a1, v13);
  type metadata accessor for CodeAnyIntentModel();
  swift_getWitnessTable();
  v5 = sub_264700();
  if (v2)
  {
    return sub_3080(a1);
  }

  v13[0] = v5;
  __chkstk_darwin(v5);
  KeyPath = swift_getKeyPath();
  v8 = sub_2646F0();
  ExtendedExistentialTypeMetadata = swift_getExtendedExistentialTypeMetadata();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1ABAD4(sub_1ACFB8, KeyPath, v8, ExtendedExistentialTypeMetadata, &type metadata for Never, WitnessTable, &protocol witness table for Never, v11);

  sub_3080(a1);

  *a2 = v12;
  return result;
}

uint64_t _CodeAnyIntentModel_Many.init(_partiallyFrom:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_30CC(a1, v11);
  type metadata accessor for CodeAnyIntentModel();
  swift_getWitnessTable();
  v11[0] = sub_2646E0();
  KeyPath = swift_getKeyPath();
  v5 = sub_2646F0();
  ExtendedExistentialTypeMetadata = swift_getExtendedExistentialTypeMetadata();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1ABAD4(sub_10D740, KeyPath, v5, ExtendedExistentialTypeMetadata, &type metadata for Never, WitnessTable, &protocol witness table for Never, v8);

  sub_3080(a1);

  *a2 = v9;
  return result;
}

uint64_t sub_23F5B4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t ReaderTypeFrameViewModel.init(type:localizedYear:exposureData:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  v7 = *(type metadata accessor for ReaderTypeFrameViewModel(0) + 24);
  v8 = sub_260550();
  v9 = *(*(v8 - 8) + 32);

  return v9(a5 + v7, a4, v8);
}

uint64_t sub_23F6B4()
{
  v1 = sub_260290();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v20[-v7];
  v9 = sub_264410();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v20[-v15];
  if (*v0 <= 2u)
  {
    *v0;
  }

  sub_2643A0();
  sub_260260();
  (*(v10 + 16))(v13, v16, v9);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v2 + 16))(v5, v8, v1);
  v18 = sub_264490();
  (*(v2 + 8))(v8, v1);
  (*(v10 + 8))(v16, v9);
  return v18;
}

uint64_t sub_23FCF8()
{
  v1 = sub_260290();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v26[-v7];
  v9 = sub_264410();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v26[-v15];
  v17 = sub_2643F0();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v19 = *v0;
  if (v19 > 2)
  {
    if (v19 == 3)
    {
      sub_2643E0();
      v31._countAndFlagsBits = 2125385;
      v31._object = 0xE300000000000000;
      sub_2643D0(v31);
      sub_2643C0(*(v0 + 8));
      v32._countAndFlagsBits = 0xD000000000000062;
      v32._object = 0x8000000000295240;
      sub_2643D0(v32);
      sub_264400();
      sub_260260();
      (*(v10 + 16))(v13, v16, v9);
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      (*(v2 + 16))(v5, v8, v1);
      goto LABEL_13;
    }

    if (v19 == 4)
    {
      sub_2643E0();
      v28._countAndFlagsBits = 2125385;
      v28._object = 0xE300000000000000;
      sub_2643D0(v28);
      sub_2643C0(*(v0 + 8));
      v20._countAndFlagsBits = 0xD000000000000071;
      v20._object = 0x8000000000295180;
    }

    else
    {
      sub_2643E0();
      v34._countAndFlagsBits = 0xD000000000000033;
      v34._object = 0x80000000002950C0;
      sub_2643D0(v34);
      sub_2643C0(*(v0 + 8));
      v20._object = 0x8000000000295100;
      v20._countAndFlagsBits = 0xD000000000000031;
    }
  }

  else
  {
    if (!*v0)
    {
      sub_2643E0();
      v29._countAndFlagsBits = 2125385;
      v29._object = 0xE300000000000000;
      sub_2643D0(v29);
      sub_2643C0(*(v0 + 8));
      v30._countAndFlagsBits = 0x10000000000000C2;
      v30._object = 0x80000000002954A0;
      sub_2643D0(v30);
      sub_264400();
      sub_260260();
      (*(v10 + 16))(v13, v16, v9);
      type metadata accessor for BundleFinder();
      v22 = swift_getObjCClassFromMetadata();
      [objc_opt_self() bundleForClass:v22];
      (*(v2 + 16))(v5, v8, v1);
      goto LABEL_13;
    }

    if (v19 == 1)
    {
      sub_2643E0();
      v27._countAndFlagsBits = 2125385;
      v27._object = 0xE300000000000000;
      sub_2643D0(v27);
      sub_2643C0(*(v0 + 8));
      v20._object = 0x80000000002953B0;
      v20._countAndFlagsBits = 0x10000000000000ABLL;
    }

    else
    {
      sub_2643E0();
      v33._countAndFlagsBits = 2125385;
      v33._object = 0xE300000000000000;
      sub_2643D0(v33);
      sub_2643C0(*(v0 + 8));
      v20._countAndFlagsBits = 0xD00000000000007ALL;
      v20._object = 0x80000000002952F0;
    }
  }

  sub_2643D0(v20);
  sub_264400();
  sub_260260();
  (*(v10 + 16))(v13, v16, v9);
  type metadata accessor for BundleFinder();
  v21 = swift_getObjCClassFromMetadata();
  [objc_opt_self() bundleForClass:v21];
  (*(v2 + 16))(v5, v8, v1);
LABEL_13:
  v24 = sub_264490();
  (*(v2 + 8))(v8, v1);
  (*(v10 + 8))(v16, v9);
  return v24;
}

uint64_t _s7BooksUI15ReaderTypeFrameV10backgroundAA14PageBackgroundOvg_0@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_2EF0(&qword_316DA0, &unk_277640);
  v5 = *(v4 + 48);
  v6 = "yir-background-reader-series";
  v7 = *(v4 + 64);
  v8 = "eader-single-genre";
  v9 = "eader-undetermined";
  if (v3 != 4)
  {
    v9 = "e (Trendy Reader)";
  }

  if (v3 == 3)
  {
    v10 = 0xD000000000000020;
  }

  else
  {
    v8 = v9;
    v10 = 0xD000000000000022;
  }

  v11 = "eader-nonfiction";
  v12 = 0xD00000000000001CLL;
  if (v3 != 1)
  {
    v11 = "eader-multigenre";
    v12 = 0xD000000000000020;
  }

  if (v3)
  {
    v6 = v11;
    v13 = v12;
  }

  else
  {
    v13 = 0xD000000000000020;
  }

  if (v3 <= 2)
  {
    v14 = v13;
  }

  else
  {
    v6 = v8;
    v14 = v10;
  }

  *a1 = v14;
  *(a1 + 1) = v6 | 0x8000000000000000;
  v15 = enum case for ColorScheme.light(_:);
  v16 = sub_261180();
  (*(*(v16 - 8) + 104))(&a1[v5], v15, v16);
  v17 = [objc_opt_self() secondarySystemBackgroundColor];
  *&a1[v7] = sub_262EE0();
  type metadata accessor for PageBackground(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t ReaderTypeFrame.sharableView.getter()
{
  v1 = type metadata accessor for ReaderTypeFrame(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  sub_240714(v0, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24086C(&qword_327AB0, type metadata accessor for ReaderTypeFrame);
  return sub_263310();
}

uint64_t sub_240714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReaderTypeFrame(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ReaderTypeFrame.exposureData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for ReaderTypeFrameViewModel(0) + 24);
  v4 = sub_260550();
  a1[3] = v4;
  a1[4] = sub_24086C(&qword_317678, &type metadata accessor for YIRSourceData);
  a1[5] = sub_24086C(&qword_317680, &type metadata accessor for YIRSourceData);
  v5 = sub_10934(a1);
  v6 = *(*(v4 - 8) + 16);

  return v6(v5, v1 + v3, v4);
}

uint64_t sub_24086C(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 ReaderTypeFrame.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ReaderTypeFrame(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  sub_240714(v1, v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_240C48(v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for ReaderTypeFrame);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_261830();
  KeyPath = swift_getKeyPath();
  v9 = (a1 + *(sub_2EF0(&qword_327AB8, &unk_28D990) + 36));
  v10 = *(sub_2EF0(&qword_3173A0, &qword_26D0C0) + 28);
  v11 = enum case for ColorScheme.light(_:);
  v12 = sub_261180();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = KeyPath;
  *a1 = sub_240CB0;
  *(a1 + 8) = v7;
  v13 = v16[5];
  *(a1 + 80) = v16[4];
  *(a1 + 96) = v13;
  *(a1 + 112) = v16[6];
  v14 = v16[1];
  *(a1 + 16) = v16[0];
  *(a1 + 32) = v14;
  result = v16[3];
  *(a1 + 48) = v16[2];
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_240AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_261E50();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_2EF0(&qword_327C20, &qword_28DAF8);
  return sub_240D90(a1, a2 + *(v4 + 44));
}

uint64_t sub_240B5C()
{
  v1 = *(type metadata accessor for ReaderTypeFrame(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + v2 + 16);

  v5 = *(type metadata accessor for ReaderTypeFrameViewModel(0) + 24);
  v6 = sub_260550();
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_240C48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_240CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(type metadata accessor for ReaderTypeFrame(0) - 8) + 80);

  return sub_240AF4(a1, a2);
}

unint64_t sub_240D3C()
{
  result = qword_327AC0;
  if (!qword_327AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327AC0);
  }

  return result;
}

uint64_t sub_240D90@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v50 = a1;
  v52 = a2;
  v2 = type metadata accessor for TextLockup();
  v3 = (v2 - 8);
  v4 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v6 = (&v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = sub_2EF0(&qword_31E590, &qword_28DB00);
  v7 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  __chkstk_darwin(v13);
  v15 = &v46 - v14;
  v16 = sub_23F6B4();
  v48 = v17;
  v49 = v16;
  v18 = sub_23FCF8();
  v47 = v19;
  v20 = v3[15];
  v21 = sub_2625C0();
  (*(*(v21 - 8) + 56))(v6 + v20, 1, 1, v21);
  v22 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v24 = v23;
  v25 = v3[19];
  v26 = enum case for DynamicTypeSize.xxxLarge(_:);
  v27 = sub_261690();
  (*(*(v27 - 8) + 104))(v6 + v25, v26, v27);
  v28 = sub_261E60();
  *v6 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v29 = v3[7];
  *(v6 + v29) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v30 = v6 + v3[8];
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  v31 = v6 + v3[9];
  *v31 = swift_getKeyPath();
  v31[8] = 0;
  v32 = v6 + v3[10];
  *v32 = swift_getKeyPath();
  v32[8] = 0;
  *(v6 + v3[11]) = 2;
  v33 = (v6 + v3[12]);
  *v33 = 0;
  v33[1] = 0;
  v34 = (v6 + v3[13]);
  v35 = v48;
  *v34 = v49;
  v34[1] = v35;
  v34[2] = 0;
  v36 = (v6 + v3[14]);
  v37 = v47;
  *v36 = v18;
  v36[1] = v37;
  *(v6 + v3[16]) = v28;
  v38 = (v6 + v3[17]);
  *v38 = v22;
  v38[1] = v24;
  *(v6 + v3[18]) = 1;
  sub_261420();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_261830();
  sub_240C48(v6, v12, type metadata accessor for TextLockup);
  v39 = &v12[*(v51 + 36)];
  v40 = v58;
  *(v39 + 4) = v57;
  *(v39 + 5) = v40;
  *(v39 + 6) = v59;
  v41 = v54;
  *v39 = v53;
  *(v39 + 1) = v41;
  v42 = v56;
  *(v39 + 2) = v55;
  *(v39 + 3) = v42;
  sub_10FBCC(v12, v15);
  sub_10FC3C(v15, v9);
  v43 = v52;
  sub_10FC3C(v9, v52);
  v44 = v43 + *(sub_2EF0(&qword_327C28, &unk_28DBE0) + 48);
  *v44 = 0;
  *(v44 + 8) = 1;
  sub_10FD90(v15);
  return sub_10FD90(v9);
}

uint64_t sub_24120C(uint64_t a1)
{
  v2 = *(*(a1 - 8) + 64);
  __chkstk_darwin(v1);
  sub_240714(v4, &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24086C(&qword_327AB0, type metadata accessor for ReaderTypeFrame);
  return sub_263310();
}

uint64_t sub_2412C0(uint64_t a1)
{
  result = sub_24086C(&qword_327AC8, type metadata accessor for ReaderTypeFrame);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241318(uint64_t a1)
{
  result = sub_24086C(&qword_327AB0, type metadata accessor for ReaderTypeFrame);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2413A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_260550();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_241464(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_260550();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_241508()
{
  result = sub_260550();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2415B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReaderTypeFrameViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_241630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReaderTypeFrameViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2416A0()
{
  result = type metadata accessor for ReaderTypeFrameViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_241710()
{
  result = qword_327BF8;
  if (!qword_327BF8)
  {
    sub_2F9C(&qword_327AB8, &unk_28D990);
    sub_2417C8();
    sub_8E38(&qword_317398, &qword_3173A0, &qword_26D0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327BF8);
  }

  return result;
}

unint64_t sub_2417C8()
{
  result = qword_327C00;
  if (!qword_327C00)
  {
    sub_2F9C(&qword_327C08, &qword_28DAE8);
    sub_8E38(&qword_327C10, &qword_327C18, &qword_28DAF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327C00);
  }

  return result;
}

uint64_t ShelfModel.tallestCoverAspectRatio.getter()
{
  v0 = sub_263850();
  v1 = sub_241A48(v0);

  if (!v1)
  {
    return 0;
  }

  v2 = v1[2];
  if (v2)
  {
    v21 = _swiftEmptyArrayStorage;
    sub_2DAE4(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = (v1 + 4);
    do
    {
      sub_30CC(v4, v18);
      v5 = v19;
      v6 = v20;
      sub_2E18(v18, v19);
      v7 = (*(v6 + 16))(v5, v6);
      sub_3080(v18);
      v21 = v3;
      v9 = v3[2];
      v8 = v3[3];
      if (v9 >= v8 >> 1)
      {
        sub_2DAE4((v8 > 1), v9 + 1, 1);
        v3 = v21;
      }

      v3[2] = v9 + 1;
      *&v3[v9 + 4] = v7;
      v4 += 40;
      --v2;
    }

    while (v2);

    v10 = v3[2];
    if (v10)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  v3 = _swiftEmptyArrayStorage;
  v10 = _swiftEmptyArrayStorage[2];
  if (!v10)
  {
LABEL_17:

    return 0;
  }

LABEL_8:
  v11 = *(v3 + 4);
  v12 = v10 - 1;
  if (v12)
  {
    v13 = (v3 + 5);
    do
    {
      v14 = *v13++;
      v15 = v14;
      if (v14 < v11)
      {
        v11 = v15;
      }

      --v12;
    }

    while (v12);
  }

  v16 = 0.641025641;
  if (v11 > 0.641025641)
  {
    v16 = v11;
  }

  return *&v16;
}

void *sub_241A48(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_2DB64(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 40)
    {
      sub_30CC(i, v10);
      sub_2EF0(&qword_317250, &unk_2697A0);
      sub_2EF0(&qword_317230, &qword_269780);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_F7CC(v8, v11);
      sub_F7CC(v11, v10);
      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_2DB64((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      sub_F7CC(v10, &v3[5 * v6 + 4]);
      if (!--v2)
      {
        return v3;
      }
    }

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_241BD0(v8);
    return 0;
  }

  return v3;
}

uint64_t sub_241BD0(uint64_t a1)
{
  v2 = sub_2EF0(&qword_327C30, &unk_28DC20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static ShelfGridLayout.horizontal(layoutContext:itemsPerColumn:itemColumnSpan:itemAlignment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v41 = a6;
  v39 = a4;
  v40 = a5;
  v42 = a2;
  v46 = a7;
  v9 = sub_260B40();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a3;
  v44 = *(a3 + 8);
  v45 = v14;
  v43 = *(a3 + 16);
  v48 = *(a1 + 8);
  v15 = *(a1 + 24);
  v17 = *(a1 + 32);
  v16 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v47[0] = *(a1 + 16);
  v47[1] = v15;
  v47[2] = v17;
  v47[3] = v16;
  v47[4] = v18;
  v47[5] = v19;
  v20 = *(type metadata accessor for ShelfGridLayoutContext() + 32);

  v21 = ShelfGridBreakpoint.resolveColumns(for:dynamicTypeSize:)(v47, a1 + v20);

  if (v41)
  {
    v22 = (v13 + *(sub_2EF0(&qword_3223E8, &qword_280C70) + 48));
    *v13 = v42;
    v23 = swift_allocObject();
    v25 = v44;
    v24 = v45;
    *(v23 + 16) = v21;
    *(v23 + 24) = v24;
    *(v23 + 32) = v25;
    v26 = v43;
    *(v23 + 40) = v43;
    *v22 = sub_2426EC;
    v22[1] = v23;
    v27 = enum case for ShelfGridItemWidth.calculate(_:);
    v28 = sub_260C90();
    (*(*(v28 - 8) + 104))(v22, v27, v28);
    v29 = &enum case for ShelfGridLayout.horizontal(_:);
  }

  else
  {
    v30 = sub_2EF0(&qword_318750, &qword_26B8B0);
    v31 = (v13 + *(v30 + 48));
    v32 = (v13 + *(v30 + 64));
    *v13 = v42;
    v33 = swift_allocObject();
    v25 = v44;
    v24 = v45;
    *(v33 + 16) = v21;
    *(v33 + 24) = v24;
    *(v33 + 32) = v25;
    v26 = v43;
    *(v33 + 40) = v43;
    *v31 = sub_242E44;
    v31[1] = v33;
    v34 = enum case for ShelfGridItemWidth.calculate(_:);
    v35 = sub_260C90();
    (*(*(v35 - 8) + 104))(v31, v34, v35);
    v36 = v40;
    *v32 = v39;
    v32[1] = v36;
    v29 = &enum case for ShelfGridLayout.horizontalWithAlignment(_:);
  }

  (*(v10 + 104))(v13, *v29, v9);
  (*(v10 + 32))(v46, v13, v9);
  return sub_2426F0(v24, v25, v26);
}

uint64_t *ShelfGridItemColumnSpan.resolve(using:)(uint64_t *result)
{
  v2 = *v1;
  if (*(v1 + 16))
  {
    v3 = *(v1 + 8);
    v9 = *result;
    v4 = v9;
    v2(v10, &v9);
    v5 = v10[0];
    v6 = v10[1];
    v7 = v11;
    v9 = v4;
    ShelfGridItemColumnSpan.resolve(using:)(&v9);
    return sub_51990(v5, v6, v7);
  }

  else
  {
    v8 = *v1;
  }

  return result;
}

uint64_t ShelfGridLayoutContext.gridType.getter@<X0>(void *a1@<X8>)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  v6 = v1[7];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v7;
  a1[5] = v6;
}

uint64_t ShelfGridLayoutContext.dynamicTypeSize.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfGridLayoutContext() + 32);
  v4 = sub_261690();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShelfGridLayoutContext.viewSizeConditions.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ShelfGridLayoutContext();
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  v6 = v4[1];
  LOBYTE(v4) = v4[2];
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v4;
  return result;
}

uint64_t ShelfGridLayoutContext.init(itemsCount:breakpoint:gridType:itemsPerColumn:dynamicTypeSize:viewSizeConditions:isCompact:preferCompactLayouts:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v13 = *a2;
  v14 = *a3;
  v15 = a3[5];
  v16 = *a6;
  v17 = a6[1];
  v18 = a6[2];
  *a9 = a1;
  *(a9 + 8) = v13;
  *(a9 + 16) = v14;
  *(a9 + 24) = *(a3 + 1);
  *(a9 + 40) = *(a3 + 3);
  *(a9 + 56) = v15;
  *(a9 + 64) = a4;
  v19 = type metadata accessor for ShelfGridLayoutContext();
  v20 = v19[8];
  v21 = sub_261690();
  result = (*(*(v21 - 8) + 32))(a9 + v20, a5, v21);
  v23 = (a9 + v19[9]);
  *v23 = v16;
  v23[1] = v17;
  v23[2] = v18;
  *(a9 + v19[10]) = a7;
  *(a9 + v19[11]) = a8;
  return result;
}

uint64_t ShelfGridLayoutContext.columns.getter()
{
  v10 = *(v0 + 8);
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v9[0] = *(v0 + 16);
  v9[1] = v1;
  v9[2] = v2;
  v9[3] = v3;
  v9[4] = v4;
  v9[5] = v5;
  v6 = *(type metadata accessor for ShelfGridLayoutContext() + 32);

  v7 = ShelfGridBreakpoint.resolveColumns(for:dynamicTypeSize:)(v9, v0 + v6);

  return v7;
}

uint64_t static ShelfGridLayout.horizontal(columns:itemsPerColumn:itemColumnSpan:itemAlignment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v36 = a4;
  v37 = a7;
  v12 = sub_260B40();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *a3;
  v18 = *(a3 + 8);
  v19 = *(a3 + 16);
  if (a6)
  {
    v20 = (v16 + *(sub_2EF0(&qword_3223E8, &qword_280C70) + 48));
    *v16 = a2;
    v21 = swift_allocObject();
    *(v21 + 16) = a1;
    *(v21 + 24) = v17;
    *(v21 + 32) = v18;
    *(v21 + 40) = v19;
    *v20 = sub_242E44;
    v20[1] = v21;
    v22 = enum case for ShelfGridItemWidth.calculate(_:);
    v23 = sub_260C90();
    (*(*(v23 - 8) + 104))(v20, v22, v23);
    v24 = &enum case for ShelfGridLayout.horizontal(_:);
  }

  else
  {
    v25 = sub_2EF0(&qword_318750, &qword_26B8B0);
    v26 = (v16 + *(v25 + 48));
    v27 = *(v25 + 64);
    v35 = a5;
    v28 = (v16 + v27);
    *v16 = a2;
    v29 = swift_allocObject();
    *(v29 + 16) = a1;
    *(v29 + 24) = v17;
    *(v29 + 32) = v18;
    *(v29 + 40) = v19;
    *v26 = sub_242E44;
    v26[1] = v29;
    v30 = enum case for ShelfGridItemWidth.calculate(_:);
    v31 = sub_260C90();
    (*(*(v31 - 8) + 104))(v26, v30, v31);
    v32 = v35;
    *v28 = v36;
    v28[1] = v32;
    v24 = &enum case for ShelfGridLayout.horizontalWithAlignment(_:);
  }

  (*(v13 + 104))(v16, *v24, v12);
  (*(v13 + 32))(v37, v16, v12);
  return sub_2426F0(v17, v18, v19);
}

uint64_t type metadata accessor for ShelfGridLayoutContext()
{
  result = qword_327C90;
  if (!qword_327C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, double *a6@<X8>)
{
  v11[0] = a3;
  v11[1] = a4;
  v12 = a5 & 1;
  *a6 = sub_242C0C(a1, a2, v11);
  v7 = enum case for ShelfGridItemWidth.absolute(_:);
  v8 = sub_260C90();
  v9 = *(*(v8 - 8) + 104);

  return v9(a6, v7, v8);
}

uint64_t sub_2426F0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_242724()
{
  sub_51990(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

Swift::Bool __swiftcall ShelfGridLayout.isVerticalSingleColumn(preferCompactLayouts:)(Swift::Bool preferCompactLayouts)
{
  v2 = v1;
  v22 = preferCompactLayouts;
  v3 = sub_260B40();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v12 = __chkstk_darwin(v11);
  v14 = (&v21 - v13);
  v15 = *(v4 + 16);
  v21 = v2;
  v15(v10, v2, v3, v12);
  v16 = *(v4 + 88);
  v17 = v16(v10, v3);
  v18 = enum case for ShelfGridLayout.vertical(_:);
  if (v17 == enum case for ShelfGridLayout.vertical(_:) && v22)
  {
    *v14 = 1;
    (*(v4 + 104))(v14, v17, v3);
  }

  else
  {
    (v15)(v14, v21, v3);
  }

  v19 = *(v4 + 8);
  v19(v10, v3);
  (*(v4 + 32))(v7, v14, v3);
  if (v16(v7, v3) == v18)
  {
    (*(v4 + 96))(v7, v3);
    return *v7 == 1;
  }

  else
  {
    v19(v7, v3);
    return 0;
  }
}

uint64_t sub_242A04(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_261690();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_242AC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_261690();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_242B68()
{
  result = sub_261690();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_242C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = sub_260C50();
  v4 = *(v26 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v26);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_260C90();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a3;
  v13 = *(a3 + 8);
  v15 = *(a3 + 16);
  *v12 = v25;
  (*(v9 + 104))(v12, enum case for ShelfGridItemWidth.divideBy(_:), v8);
  sub_260C80();
  v17 = v16;
  (*(v9 + 8))(v12, v8);
  v27[1] = v14;
  v27[2] = v13;
  v28 = v15;
  v27[0] = sub_260C60();
  ShelfGridItemColumnSpan.resolve(using:)(v27);
  v19 = v18;
  sub_260C70();
  *&v20 = COERCE_DOUBLE(sub_260C10());
  v22 = v21;
  (*(v4 + 8))(v7, v26);
  v23 = *&v20;
  if (v22)
  {
    v23 = 0.0;
  }

  return v17 * v19 + (v19 + -1.0) * v23;
}

uint64_t CodeAnyActionModel.description.getter()
{
  sub_2EF0(&qword_316A30, &qword_2697B0);
  sub_264CC0();
  return 0;
}

uint64_t CodeAnyActionModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  sub_2E18(a1, a1[3]);
  Decoder.decodeActionModel()(v8);
  if (!v2)
  {
    sub_F7CC(v8, v9);
    v6 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v6;
    *(a2 + 32) = v10;
  }

  return sub_3080(a1);
}

uint64_t Decoder.decodeActionModel()@<X0>(uint64_t a1@<X8>)
{
  sub_265100();
  v2 = sub_264020();
  v4 = v3;

  return Decoder.decodeActionModel<A>(using:)(v2, v4, a1);
}

uint64_t Decoder.actionKindTable.getter()
{
  sub_265100();
  v0 = sub_264020();

  return v0;
}

uint64_t Decoder.decodeActionModel<A>(using:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v18[6] = a1;
  v15 = sub_2EF0(&qword_31B698, &qword_270DB8);
  v6 = *(v15 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v15);
  v9 = &v12 - v8;
  sub_2650F0();
  if (v3)
  {
    sub_265100();
    sub_263950();
    sub_2EF0(&qword_31B6A0, &qword_270DC0);
    sub_2642C0();

    (*(v6 + 8))(v9, v15);
    sub_A8840(v18, &v16);
    if (v17)
    {
      sub_2E18(&v16, v17);
      swift_getMetatypeMetadata();
      sub_264000();
      sub_3080(&v16);
    }

    else
    {
      sub_A88B0(&v16);
    }

    swift_willThrow();
    return sub_A88B0(v18);
  }

  else
  {
    v13 = a3;
    v14 = v18[4];
    sub_2E18(v18, v18[3]);
    v10 = *(a2 + 8);
    sub_2637D0();
    swift_getWitnessTable();
    sub_264F30();
    sub_F7CC(&v16, v13);
    return sub_3080(v18);
  }
}

uint64_t SeriesCardCoverStackCoverLayout.model.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 120);
  v14 = *(v1 + 104);
  v2 = v14;
  v15 = v3;
  v5 = *(v1 + 152);
  v16 = *(v1 + 136);
  v4 = v16;
  v17 = v5;
  v6 = *(v1 + 56);
  v11[0] = *(v1 + 40);
  v11[1] = v6;
  v8 = *(v1 + 88);
  v12 = *(v1 + 72);
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;
  return sub_5757C(v11, &v10);
}

double SeriesCardCoverStackCoverLayout.offset(for:)(double a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  if (*v1)
  {
    if (*v1 == 1)
    {
      v4 = -1.0;
      v5 = 0.86;
    }

    else
    {
      v4 = 1.0;
      v5 = 0.78;
    }

    return v4 * ((a1 - v3 * (v2 * v5)) * 0.5);
  }

  else
  {
    v6 = 0.0;
    if (*(v1 + 8) == 2)
    {
      return (a1 - v2 * v3) * 0.5;
    }
  }

  return v6;
}

double SeriesCardCoverStackCoverLayout.height(for:)()
{
  result = *(v0 + 16);
  if (*v0)
  {
    if (*v0 == 1)
    {
      v2 = 0.86;
    }

    else
    {
      v2 = 0.78;
    }

    return result * v2;
  }

  return result;
}

uint64_t *sub_2433C0@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t _s7BooksUI020SeriesCardCoverStackE6LayoutV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 1);
  v6 = *(a1 + 2);
  v5 = *(a1 + 3);
  v7 = *(a1 + 4);
  v8 = *(a1 + 120);
  v48[4] = *(a1 + 104);
  v48[5] = v8;
  v9 = *(a1 + 152);
  v48[6] = *(a1 + 136);
  v48[7] = v9;
  v10 = *(a1 + 56);
  v48[0] = *(a1 + 40);
  v48[1] = v10;
  v11 = *(a1 + 88);
  v48[2] = *(a1 + 72);
  v48[3] = v11;
  v12 = *a2;
  v13 = *(a2 + 1);
  v15 = *(a2 + 2);
  v14 = *(a2 + 3);
  v16 = *(a2 + 4);
  v17 = *(a2 + 120);
  v49[4] = *(a2 + 104);
  v49[5] = v17;
  v18 = *(a2 + 152);
  v49[6] = *(a2 + 136);
  v49[7] = v18;
  v19 = *(a2 + 56);
  v49[0] = *(a2 + 40);
  v49[1] = v19;
  v20 = *(a2 + 88);
  v49[2] = *(a2 + 72);
  v49[3] = v20;
  if (v3 == v12 && v4 == v13 && v6 == v15 && v5 == v14 && v7 == v16)
  {
    v21 = *(a1 + 120);
    v42 = *(a1 + 104);
    v43 = v21;
    v22 = *(a1 + 152);
    v44 = *(a1 + 136);
    v45 = v22;
    v23 = *(a1 + 56);
    v38 = *(a1 + 40);
    v39 = v23;
    v24 = *(a1 + 88);
    v40 = *(a1 + 72);
    v41 = v24;
    v25 = *(a2 + 120);
    v34 = *(a2 + 104);
    v35 = v25;
    v26 = *(a2 + 152);
    v36 = *(a2 + 136);
    v37 = v26;
    v27 = *(a2 + 56);
    v30 = *(a2 + 40);
    v31 = v27;
    v28 = *(a2 + 88);
    v32 = *(a2 + 72);
    v33 = v28;
    sub_5757C(v48, v47);
    sub_5757C(v49, v47);
    v2 = _s7BooksUI14CoverViewModelV0C5StyleO2eeoiySbAE_AEtFZ_0(&v38, &v30);
    v46[4] = v34;
    v46[5] = v35;
    v46[6] = v36;
    v46[7] = v37;
    v46[0] = v30;
    v46[1] = v31;
    v46[2] = v32;
    v46[3] = v33;
    sub_EA998(v46);
    v47[4] = v42;
    v47[5] = v43;
    v47[6] = v44;
    v47[7] = v45;
    v47[0] = v38;
    v47[1] = v39;
    v47[2] = v40;
    v47[3] = v41;
    sub_EA998(v47);
  }

  return v2 & 1;
}

unint64_t sub_243584(uint64_t a1)
{
  result = sub_2435AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2435AC()
{
  result = qword_327CE0;
  if (!qword_327CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327CE0);
  }

  return result;
}

__n128 sub_243600(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_24363C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 64) >> 3) & 0xFFFFFF80 | (*(a1 + 64) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_243690(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 136) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 168) = 1;
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
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      *(a1 + 64) = (8 * -a2) & 0x7FFFFFC00 | (2 * (-a2 & 0x7FLL));
      result = 0.0;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0u;
      *(a1 + 152) = 0u;
      return result;
    }

    *(a1 + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_243748()
{
  result = qword_327CE8;
  if (!qword_327CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327CE8);
  }

  return result;
}

uint64_t EnvironmentValues.fonts.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v19[-v10];
  v12 = v5[2];
  v12(&v19[-v10], v2, v4);
  v12(v9, v11, v4);
  *a1 = EnvironmentValues.isCompact.getter() & 1;
  sub_6E2E0();
  sub_261CA0();
  a1[1] = v19[15];
  v13 = type metadata accessor for FontConstants.Environment(0);
  v14 = &a1[*(v13 + 24)];
  sub_261A60();
  sub_2619D0();
  v16 = v15;
  v17 = v5[1];
  v17(v9, v4);
  result = (v17)(v11, v4);
  *&a1[*(v13 + 28)] = v16;
  return result;
}

uint64_t FontConstants.Environment.dynamicTypeSize.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FontConstants.Environment(0) + 24);
  v4 = sub_261690();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_243ACC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FontConstants.Environment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FontSpec.font.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t FontSpec.init(font:minDynamicTypeSize:maxDynamicTypeSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for FontSpec(0);
  v9 = *(v8 + 20);
  v10 = sub_261690();
  v11 = *(*(v10 - 8) + 56);
  v11(&a4[v9], 1, 1, v10);
  v12 = *(v8 + 24);
  v11(&a4[v12], 1, 1, v10);
  *a4 = a1;
  sub_C5FBC(a2, &a4[v9]);

  return sub_C5FBC(a3, &a4[v12]);
}

uint64_t View.fontSpec(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v42 = a3;
  v43 = a2;
  v4 = sub_2EF0(&qword_316890, &qword_2725A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v37 - v8;
  v9 = sub_2EF0(&qword_31E2F0, &qword_277EF0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  __chkstk_darwin(v16);
  v18 = (&v37 - v17);
  sub_2F9C(&qword_317588, &qword_26B7B0);
  v19 = sub_261730();
  v20 = *(v19 - 8);
  v38 = v19;
  v39 = v20;
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v37 - v22;
  v24 = a1;
  sub_8198(a1, v18, &qword_31E2F0, &qword_277EF0);
  v25 = type metadata accessor for FontSpec(0);
  v26 = *(*(v25 - 8) + 48);
  if (v26(v18, 1, v25) == 1)
  {
    sub_8E80(v18, &qword_31E2F0, &qword_277EF0);
  }

  else
  {
    v27 = *v18;

    sub_10C5F4(v18);
  }

  sub_262D80();

  sub_8198(v24, v15, &qword_31E2F0, &qword_277EF0);
  v28 = v26(v15, 1, v25);
  v29 = v41;
  if (v28 == 1)
  {
    sub_8E80(v15, &qword_31E2F0, &qword_277EF0);
    v30 = sub_261690();
    v31 = v40;
    (*(*(v30 - 8) + 56))(v40, 1, 1, v30);
  }

  else
  {
    v31 = v40;
    sub_8198(&v15[*(v25 + 20)], v40, &qword_316890, &qword_2725A0);
    sub_10C5F4(v15);
  }

  sub_8198(v24, v12, &qword_31E2F0, &qword_277EF0);
  if (v26(v12, 1, v25) == 1)
  {
    sub_8E80(v12, &qword_31E2F0, &qword_277EF0);
    v32 = sub_261690();
    (*(*(v32 - 8) + 56))(v29, 1, 1, v32);
  }

  else
  {
    sub_8198(&v12[*(v25 + 24)], v29, &qword_316890, &qword_2725A0);
    sub_10C5F4(v12);
  }

  v33 = sub_1D5E5C();
  v44 = v43;
  v45 = v33;
  v34 = v38;
  WitnessTable = swift_getWitnessTable();
  View.restrictedDynamicTypeSize(min:max:)(v31, v29, v34, WitnessTable);
  sub_8E80(v29, &qword_316890, &qword_2725A0);
  sub_8E80(v31, &qword_316890, &qword_2725A0);
  return (*(v39 + 8))(v23, v34);
}

uint64_t View.fontSpec(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2F9C(&qword_317588, &qword_26B7B0);
  v4 = sub_261730();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v12 - v7;
  sub_262D80();
  v9 = sub_1D5E5C();
  v12[0] = a3;
  v12[1] = v9;
  WitnessTable = swift_getWitnessTable();
  View.unrestrictedDynamicTypeSize()(v4, WitnessTable);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_24428C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FontConstants.Environment(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24430C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FontConstants.Environment(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24439C()
{
  result = type metadata accessor for FontConstants.Environment(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24441C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_261690();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_2444DC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_261690();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24457C()
{
  result = sub_261690();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_244614(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2EF0(&qword_316890, &qword_2725A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2446E4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2EF0(&qword_316890, &qword_2725A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_244794()
{
  sub_244810();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_244810()
{
  if (!qword_31C2C8)
  {
    sub_261690();
    v0 = sub_264A60();
    if (!v1)
    {
      atomic_store(v0, &qword_31C2C8);
    }
  }
}

uint64_t sub_244868(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_2F9C(&qword_317588, &qword_26B7B0);
  sub_261730();
  type metadata accessor for RestrictedDynamicTypeSizeViewModifier();
  sub_261730();
  sub_1D5E5C();
  swift_getWitnessTable();
  sub_244924();
  return swift_getWitnessTable();
}

unint64_t sub_244924()
{
  result = qword_31C258;
  if (!qword_31C258)
  {
    type metadata accessor for RestrictedDynamicTypeSizeViewModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C258);
  }

  return result;
}

uint64_t sub_244980(uint64_t a1)
{
  v2 = sub_244B68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_2449BC(uint64_t a1)
{
  v2 = sub_244B68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ShelfFooterComponentModel.encode(to:)(void *a1)
{
  v2 = sub_2EF0(&qword_327F98, &qword_28E0B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_244B68();
  sub_265140();
  sub_2EF0(&qword_31D2B0, &qword_274620);
  sub_244D70(&qword_327FA8);
  sub_264E90();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_244B68()
{
  result = qword_327FA0;
  if (!qword_327FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327FA0);
  }

  return result;
}

uint64_t ShelfFooterComponentModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2EF0(&qword_327FB0, &qword_28E0C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_244B68();
  sub_265120();
  if (!v2)
  {
    sub_2EF0(&qword_31D2B0, &qword_274620);
    sub_244D70(&qword_31D2C8);
    sub_264DF0();
    (*(v6 + 8))(v9, v5);
    v11 = v16;
    v18 = v15;
    v19 = v16;
    v12 = v17;
    v20 = v17;
    *a2 = v15;
    *(a2 + 16) = v11;
    *(a2 + 32) = v12;
  }

  return sub_3080(a1);
}

uint64_t sub_244D70(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(&qword_31D2B0, &qword_274620);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_244DD8()
{
  qword_327F60 = &type metadata for DefaultShelfFooterComponentModel;
  result = sub_2455DC();
  qword_327F68 = result;
  return result;
}

uint64_t sub_244E6C()
{
  v0 = sub_2EF0(&qword_315D48, &qword_266E40);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v10 - v2;
  *&v12[0] = 0xD000000000000012;
  *(&v12[0] + 1) = 0x8000000000295880;
  v4 = type metadata accessor for EmptyComponentModel();
  v15 = v4;
  v16 = sub_245AD0(&qword_31D3A8, type metadata accessor for EmptyComponentModel);
  v5 = sub_10934(&v14);
  sub_264B70();
  v6 = sub_263E50();
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v7 = *(*(v6 - 8) + 56);
  v7(v3, 1, 1, v6);
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  *(v5 + 7) = 0u;
  v5[9] = 0;
  *(v5 + 5) = 0u;
  sub_34A0(v10, (v5 + 5), &qword_315D38, &unk_266E30);
  v8 = *(v4 + 24);
  v7(v5 + v8, 1, 1, v6);
  sub_34A0(v12, (v5 + 5), &qword_315D38, &unk_266E30);
  sub_34A0(v3, v5 + v8, &qword_315D48, &qword_266E40);
  return sub_F7CC(&v14, &unk_327F70);
}

uint64_t sub_24509C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  if (*a1 != -1)
  {
    swift_once();
    v4 = a3;
  }

  return sub_244E34(a2, v4);
}

uint64_t sub_245144@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_316C10, &unk_26AF10);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v16 - v11);
  sub_8198(v2, &v16 - v11, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_E59A0(v12, a1, type metadata accessor for SizeConstants);
  }

  v14 = *v12;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t DefaultShelfFooterComponent.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);

  return swift_storeEnumTagMultiPayload();
}

double DefaultShelfFooterComponent.content(for:)@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SizeConstants.Spacing(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SizeConstants(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_262FA0();
  sub_245144(v9);
  sub_E59A0(v9, v5, type metadata accessor for SizeConstants.Environment);
  sub_E5250(v5);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v11 = v16;
  v12 = v17;
  v13 = v18;
  v14 = v19;
  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12;
  *(a1 + 24) = v13;
  *(a1 + 32) = v14;
  result = *&v20;
  *(a1 + 40) = v20;
  return result;
}

unint64_t sub_2454D4()
{
  result = qword_327FB8;
  if (!qword_327FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327FB8);
  }

  return result;
}

uint64_t type metadata accessor for DefaultShelfFooterComponent()
{
  result = qword_328030;
  if (!qword_328030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2455DC()
{
  result = qword_327FC8;
  if (!qword_327FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327FC8);
  }

  return result;
}

uint64_t sub_2456F8(uint64_t a1)
{
  v2 = *(*(a1 - 8) + 64);
  __chkstk_darwin(v1);
  sub_245A6C(v4, &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_245AD0(&qword_327FD0, type metadata accessor for DefaultShelfFooterComponent);
  return sub_260B30();
}

uint64_t sub_24584C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_317BF8, &unk_26F930);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2458D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_317BF8, &unk_26F930);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_245968()
{
  result = qword_328068;
  if (!qword_328068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328068);
  }

  return result;
}

unint64_t sub_2459C0()
{
  result = qword_328070;
  if (!qword_328070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328070);
  }

  return result;
}

unint64_t sub_245A18()
{
  result = qword_328078;
  if (!qword_328078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328078);
  }

  return result;
}

uint64_t sub_245A6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultShelfFooterComponent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_245AD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_245B24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfBackgroundViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ShelfBackgroundViewModifier()
{
  result = qword_328100;
  if (!qword_328100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShelfBackgroundViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for ColorConstants(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + *(type metadata accessor for ShelfBackgroundViewModifier() + 20));
  v11 = *(v2 + 8);
  v12 = *(v3 + 16);
  if (v10 != 1 && v12 == 0 && v11 == 0)
  {
    v15 = 0;
    v16 = 3;
  }

  else
  {
    sub_1DB208(v11, *(v3 + 16));
    v15 = v11;
    v16 = v12;
  }

  v31 = v11;
  v32 = v12;
  v17 = *(type metadata accessor for ShelfBackgroundViewModel(0) + 24);
  sub_1DB208(v11, v12);
  sub_1DAE00(v9);
  v18 = sub_1DB310(v10, v9);
  sub_245FD8(v9, type metadata accessor for ColorConstants);
  sub_1DDE58(v31, v32);
  v19 = *(v3 + 16);
  v31 = *(v3 + 8);
  v32 = v19;
  sub_1DB208(v31, v19);
  v20 = sub_1DB484();
  sub_1DDE58(v31, v32);
  v21 = sub_262500();
  v22 = sub_2EF0(&qword_328080, &qword_28E420);
  (*(*(v22 - 8) + 16))(a2, a1, v22);
  v23 = a2 + *(sub_2EF0(&qword_328088, &qword_28E428) + 36);
  *v23 = v20;
  *(v23 + 8) = v21;

  v24 = sub_262500();
  v25 = a2 + *(sub_2EF0(&qword_328090, &qword_28E430) + 36);
  *v25 = v18;
  *(v25 + 8) = v24;
  KeyPath = swift_getKeyPath();
  v27 = a2 + *(sub_2EF0(&qword_328098, &qword_28E460) + 36);
  *v27 = KeyPath;
  *(v27 + 8) = v15;
  *(v27 + 16) = v16;

  sub_1DB208(v15, v16);

  sub_1DB208(v15, v16);

  sub_1DDE58(v15, v16);
  v28 = swift_getKeyPath();
  v31 = v15;
  v32 = v16;
  LOBYTE(KeyPath) = ShelfBackgroundViewModel.BackgroundKind.requiresBlendForText.getter();

  sub_1DDE58(v15, v16);
  result = sub_2EF0(&qword_3280A0, &qword_28E490);
  v30 = a2 + *(result + 36);
  *v30 = v28;
  *(v30 + 8) = KeyPath & 1;
  return result;
}

uint64_t View.shelfBackground(config:allowDefaultGradient:)(uint64_t a1, char a2)
{
  v4 = type metadata accessor for ShelfBackgroundViewModifier();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245B24(a1, v7);
  v7[*(v4 + 20)] = a2;
  sub_262E30();
  return sub_245FD8(v7, type metadata accessor for ShelfBackgroundViewModifier);
}

uint64_t sub_245FD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_246068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ShelfBackgroundViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_246148(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ShelfBackgroundViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_246200()
{
  result = type metadata accessor for ShelfBackgroundViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_246278()
{
  result = qword_328138;
  if (!qword_328138)
  {
    sub_2F9C(&qword_3280A0, &qword_28E490);
    sub_246330();
    sub_8E38(&qword_3171E0, &qword_3171D8, &qword_26B730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328138);
  }

  return result;
}

unint64_t sub_246330()
{
  result = qword_328140;
  if (!qword_328140)
  {
    sub_2F9C(&qword_328098, &qword_28E460);
    sub_2463E8();
    sub_8E38(&qword_328160, &qword_328168, &qword_28E528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328140);
  }

  return result;
}

unint64_t sub_2463E8()
{
  result = qword_328148;
  if (!qword_328148)
  {
    sub_2F9C(&qword_328090, &qword_28E430);
    sub_2464A0();
    sub_8E38(&qword_3216A8, &qword_3216B0, &unk_27EF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328148);
  }

  return result;
}

unint64_t sub_2464A0()
{
  result = qword_328150;
  if (!qword_328150)
  {
    sub_2F9C(&qword_328088, &qword_28E428);
    sub_8E38(&qword_328158, &qword_328080, &qword_28E420);
    sub_8E38(&qword_3216A8, &qword_3216B0, &unk_27EF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328150);
  }

  return result;
}

uint64_t sub_246584(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ShelfBackgroundViewModifier();
  sub_261730();
  sub_2465F0();
  return swift_getWitnessTable();
}

unint64_t sub_2465F0()
{
  result = qword_328170;
  if (!qword_328170)
  {
    type metadata accessor for ShelfBackgroundViewModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328170);
  }

  return result;
}

uint64_t ComicCoverEffect.init(shadowScale:cornerRadius:)@<X0>(double *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v6 = *(type metadata accessor for ComicCoverEffect() + 24);
  *(a1 + v6) = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  result = swift_storeEnumTagMultiPayload();
  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t type metadata accessor for ComicCoverEffect()
{
  result = qword_328220;
  if (!qword_328220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_246710@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316DC0, &qword_2691C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for ComicCoverEffect();
  sub_8198(v1 + *(v12 + 24), v11, &qword_316DC0, &qword_2691C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_261180();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_264900();
    v16 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t ComicCoverEffect.body(cover:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = sub_2EF0(&qword_328178, &qword_28E5C8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = type metadata accessor for ComicCoverEffect();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  sub_246B78(v3, &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v10, a1, v6);
  v14 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v15 = (v13 + *(v7 + 80) + v14) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_246BE0(&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v14);
  result = (*(v7 + 32))(v16 + v15, v10, v6);
  *a2 = sub_246C44;
  a2[1] = v16;
  return result;
}

uint64_t sub_246AF8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  sub_261420();
  v7 = v6;
  v9 = v8;
  *a3 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  a3[1] = v10;
  v11 = sub_2EF0(&qword_328298, &qword_28E758);
  return sub_246C48(a1, a2, a3 + *(v11 + 44), v7, v9);
}

uint64_t sub_246B78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComicCoverEffect();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_246BE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComicCoverEffect();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_246C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = sub_2EF0(&qword_3282A0, &qword_28E760);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v34 - v16;
  v18 = sub_2EF0(&qword_3282A8, &qword_28E768);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = (&v34 - v23);
  *v24 = sub_263560();
  v24[1] = v25;
  v26 = sub_2EF0(&qword_3282B0, &unk_28E770);
  sub_246F1C(a1, a2, v24 + *(v26 + 44), a4, a5);
  sub_247A18(a2, a1, v17, a4, a5);
  v27 = *(a1 + 8);
  v28 = &v17[*(v11 + 44)];
  v29 = *(sub_2617E0() + 20);
  v30 = enum case for RoundedCornerStyle.continuous(_:);
  v31 = sub_261DD0();
  (*(*(v31 - 8) + 104))(&v28[v29], v30, v31);
  *v28 = v27;
  *(v28 + 1) = v27;
  *&v28[*(sub_2EF0(&qword_317DA8, &qword_26C1B0) + 36)] = 256;
  sub_8198(v24, v21, &qword_3282A8, &qword_28E768);
  sub_8198(v17, v14, &qword_3282A0, &qword_28E760);
  sub_8198(v21, a3, &qword_3282A8, &qword_28E768);
  v32 = sub_2EF0(&qword_3282B8, &unk_28E780);
  sub_8198(v14, a3 + *(v32 + 48), &qword_3282A0, &qword_28E760);
  sub_8E80(v17, &qword_3282A0, &qword_28E760);
  sub_8E80(v24, &qword_3282A8, &qword_28E768);
  sub_8E80(v14, &qword_3282A0, &qword_28E760);
  return sub_8E80(v21, &qword_3282A8, &qword_28E768);
}

uint64_t sub_246F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v112 = a2;
  v124 = a3;
  v8 = sub_2EF0(&qword_3282F0, &qword_28E7F8);
  v9 = *(v8 - 8);
  v115 = v8 - 8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v111 = v97 - v11;
  v12 = sub_2EF0(&qword_3282F8, &qword_28E800);
  v13 = *(v12 - 8);
  v123 = v12 - 8;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v120 = v97 - v15;
  v16 = sub_2EF0(&qword_328300, &qword_28E808);
  v17 = *(v16 - 8);
  v121 = v16 - 8;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16 - 8);
  v118 = v97 - v19;
  v20 = sub_2EF0(&qword_328308, &qword_28E810);
  v21 = *(v20 - 8);
  v119 = v20 - 8;
  v22 = *(v21 + 64);
  __chkstk_darwin(v20 - 8);
  v116 = v97 - v23;
  v24 = sub_2EF0(&qword_328310, &qword_28E818);
  v25 = *(v24 - 8);
  v114 = v24 - 8;
  v26 = *(v25 + 64);
  __chkstk_darwin(v24 - 8);
  v122 = v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v113 = v97 - v29;
  __chkstk_darwin(v30);
  v117 = v97 - v31;
  v108 = sub_261180();
  v32 = *(v108 - 8);
  v33 = v32[8];
  __chkstk_darwin(v108);
  v35 = v97 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = v97 - v37;
  v39 = sub_2EF0(&qword_3192B0, &unk_28E820);
  v40 = v39 - 8;
  v41 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v43 = v97 - v42;
  v44 = sub_2EF0(&qword_3192B8, &unk_2793C0);
  v45 = *(v44 - 8);
  v103 = v44 - 8;
  v46 = *(v45 + 64);
  __chkstk_darwin(v44 - 8);
  v102 = v97 - v47;
  v48 = sub_2EF0(&qword_3192C0, &unk_28E830);
  v49 = v48 - 8;
  v50 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v110 = v97 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v54 = v97 - v53;
  __chkstk_darwin(v55);
  v101 = v97 - v56;
  v57 = a1;
  v58 = *(a1 + 8);
  v109 = sub_2617E0();
  v59 = *(v109 + 20);
  v60 = enum case for RoundedCornerStyle.continuous(_:);
  v106 = enum case for RoundedCornerStyle.continuous(_:);
  v105 = sub_261DD0();
  v61 = *(v105 - 8);
  v104 = *(v61 + 104);
  v107 = v61 + 104;
  v104(&v43[v59], v60, v105);
  *v43 = v58;
  *(v43 + 1) = v58;
  v62 = sub_262F80();
  v63 = sub_2EF0(&qword_3192C8, &unk_2793D0);
  *&v43[*(v63 + 52)] = v62;
  *&v43[*(v63 + 56)] = 256;
  v64 = *v57;
  v100 = v57;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v65 = &v43[*(sub_2EF0(&qword_3192D0, &qword_28E840) + 36)];
  v66 = v126;
  *v65 = v125;
  *(v65 + 1) = v66;
  *(v65 + 2) = v127;
  v67 = &v43[*(v40 + 44)];
  *v67 = 0.0;
  v67[1] = (1.0 - v64) * a5 * -0.125;
  v68 = v38;
  sub_246710(v38);
  v99 = enum case for ColorScheme.dark(_:);
  v98 = v32[13];
  v69 = v108;
  v98(v35);
  v70 = v68;
  LOBYTE(v68) = sub_261170();
  v71 = v32[1];
  v97[1] = v32 + 1;
  v71(v35, v69);
  v71(v70, v69);
  if (v68)
  {
    v72 = 0.9;
  }

  else
  {
    v72 = 0.75;
  }

  v73 = v102;
  sub_22148(v43, v102, &qword_3192B0, &unk_28E820);
  *(v73 + *(v103 + 44)) = v72;
  sub_22148(v73, v54, &qword_3192B8, &unk_2793C0);
  v74 = &v54[*(v49 + 44)];
  *v74 = a4 * 0.035;
  v74[8] = 0;
  v75 = v101;
  sub_22148(v54, v101, &qword_3192C0, &unk_28E830);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v76 = sub_2EF0(&qword_328178, &qword_28E5C8);
  v77 = v111;
  (*(*(v76 - 8) + 16))(v111, v112, v76);
  v78 = (v77 + *(sub_2EF0(&qword_3282D8, &unk_28E7D8) + 36));
  v79 = v129;
  *v78 = v128;
  v78[1] = v79;
  v78[2] = v130;
  v80 = (v77 + *(v115 + 44));
  v104(&v80[*(v109 + 20)], v106, v105);
  *v80 = v58;
  *(v80 + 1) = v58;
  *&v80[*(sub_2EF0(&qword_317DA8, &qword_26C1B0) + 36)] = 256;
  sub_246710(v70);
  (v98)(v35, v99, v69);
  LOBYTE(v80) = sub_261170();
  v71(v35, v69);
  v71(v70, v69);
  if (v80)
  {
    v81 = 0.15;
  }

  else
  {
    v81 = 0.5;
  }

  v82 = v120;
  sub_22148(v77, v120, &qword_3282F0, &qword_28E7F8);
  *(v82 + *(v123 + 44)) = v81;
  v83 = v82;
  v84 = v118;
  sub_22148(v83, v118, &qword_3282F8, &qword_28E800);
  v85 = v84 + *(v121 + 44);
  *v85 = a4 * 0.035;
  *(v85 + 8) = 0;
  v86 = v116;
  sub_22148(v84, v116, &qword_328300, &qword_28E808);
  *(v86 + *(v119 + 44)) = 0x3FF199999999999ALL;
  v87 = *(v114 + 44);
  v88 = enum case for BlendMode.color(_:);
  v89 = sub_263640();
  v90 = v113;
  (*(*(v89 - 8) + 104))(&v113[v87], v88, v89);
  sub_22148(v86, v90, &qword_328308, &qword_28E810);
  v91 = v117;
  sub_22148(v90, v117, &qword_328310, &qword_28E818);
  v92 = v110;
  sub_8198(v75, v110, &qword_3192C0, &unk_28E830);
  v93 = v122;
  sub_8198(v91, v122, &qword_328310, &qword_28E818);
  v94 = v124;
  sub_8198(v92, v124, &qword_3192C0, &unk_28E830);
  v95 = sub_2EF0(&qword_328318, &unk_28E848);
  sub_8198(v93, v94 + *(v95 + 48), &qword_328310, &qword_28E818);
  sub_8E80(v91, &qword_328310, &qword_28E818);
  sub_8E80(v75, &qword_3192C0, &unk_28E830);
  sub_8E80(v93, &qword_328310, &qword_28E818);
  return sub_8E80(v92, &qword_3192C0, &unk_28E830);
}

uint64_t sub_247A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v187 = a2;
  v200 = a3;
  v8 = sub_261180();
  v198 = *(v8 - 8);
  v199 = v8;
  v9 = *(v198 + 64);
  __chkstk_darwin(v8);
  v197 = v177 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v195 = v177 - v12;
  v13 = sub_2EF0(&qword_319220, &unk_279340);
  v14 = *(v13 - 8);
  v213 = v13 - 8;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v191 = (v177 - v16);
  v17 = sub_2EF0(&qword_319228, &unk_28E790);
  v18 = *(v17 - 8);
  v196 = v17 - 8;
  v19 = *(v18 + 64);
  __chkstk_darwin(v17 - 8);
  v194 = v177 - v20;
  v21 = sub_2EF0(&qword_319230, &unk_279350);
  v22 = *(v21 - 8);
  v193 = v21 - 8;
  v23 = *(v22 + 64);
  __chkstk_darwin(v21 - 8);
  v192 = v177 - v24;
  v25 = sub_2EF0(&qword_319238, &unk_28E7A0);
  v26 = *(v25 - 8);
  v212 = v25 - 8;
  v27 = *(v26 + 64);
  __chkstk_darwin(v25 - 8);
  v185 = v177 - v28;
  v29 = sub_2EF0(&qword_319240, &unk_279360);
  v30 = *(v29 - 8);
  v189 = v29 - 8;
  v31 = *(v30 + 64);
  __chkstk_darwin(v29 - 8);
  v188 = v177 - v32;
  v33 = sub_2EF0(&qword_319248, &unk_28E7B0);
  v34 = *(v33 - 8);
  v190 = v33 - 8;
  v35 = *(v34 + 64);
  __chkstk_darwin(v33 - 8);
  v215 = v177 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v214 = v177 - v38;
  __chkstk_darwin(v39);
  v221 = (v177 - v40);
  __chkstk_darwin(v41);
  v186 = v177 - v42;
  __chkstk_darwin(v43);
  v207 = v177 - v44;
  v45 = sub_2EF0(&qword_319250, &qword_279370);
  v46 = *(*(v45 - 8) + 64);
  v47 = v45 - 8;
  v203 = v45 - 8;
  __chkstk_darwin(v45 - 8);
  v222 = v177 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v220 = v177 - v50;
  v51 = sub_2EF0(&qword_3282C0, &qword_28E7C0);
  v52 = *(v51 - 8);
  v184 = v51 - 8;
  v53 = *(v52 + 64);
  __chkstk_darwin(v51 - 8);
  v210 = v177 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v218 = v177 - v56;
  v57 = sub_2EF0(&qword_3282C8, &qword_28E7C8);
  v58 = *(v57 - 8);
  v182 = v57 - 8;
  v59 = *(v58 + 64);
  __chkstk_darwin(v57 - 8);
  v209 = v177 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v219 = v177 - v62;
  v63 = sub_2EF0(&qword_3282D0, &qword_28E7D0);
  v64 = v63 - 8;
  v65 = *(*(v63 - 8) + 64);
  v181 = v63 - 8;
  __chkstk_darwin(v63);
  v208 = v177 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  v206 = v177 - v68;
  __chkstk_darwin(v69);
  v217 = v177 - v70;
  __chkstk_darwin(v71);
  v73 = v177 - v72;
  v74 = sub_2EF0(&qword_3282D8, &unk_28E7D8);
  v75 = v74 - 8;
  v76 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v205 = v177 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v78);
  v80 = v177 - v79;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v81 = sub_2EF0(&qword_328178, &qword_28E5C8);
  v82 = *(*(v81 - 8) + 16);
  v211 = v80;
  v82(v80, a1, v81);
  v83 = &v80[*(v75 + 44)];
  v84 = v244;
  *v83 = v243;
  *(v83 + 1) = v84;
  *(v83 + 2) = v245;
  v85 = sub_2EF0(&qword_319268, &qword_279380);
  v86 = swift_allocObject();
  v183 = xmmword_269100;
  *(v86 + 16) = xmmword_269100;
  sub_262F80();
  *(v86 + 32) = sub_263450();
  *(v86 + 40) = v87;
  sub_262F80();
  sub_263000();

  *(v86 + 48) = sub_263450();
  *(v86 + 56) = v88;
  sub_2636F0();
  sub_2636E0();
  sub_263460();
  sub_261590();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v89 = *(v47 + 44);
  v90 = enum case for BlendMode.plusDarker(_:);
  v91 = sub_263640();
  v92 = *(v91 - 8);
  v93 = *(v92 + 104);
  v94 = v92 + 104;
  v95 = &v73[v89];
  v96 = v91;
  v93(v95, v90);
  v216 = v93;
  v97 = v240;
  v204 = v73;
  *(v73 + 2) = v239;
  *(v73 + 3) = v97;
  *(v73 + 4) = v241;
  v98 = v242;
  v99 = v238;
  *v73 = v237;
  *(v73 + 1) = v99;
  *(v73 + 10) = v98;
  *(v73 + 11) = 0x3FA999999999999ALL;
  v73[*(v64 + 44)] = 1;
  v179 = v85;
  v100 = swift_allocObject();
  v178 = xmmword_28E580;
  *(v100 + 16) = xmmword_28E580;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v100 + 32) = sub_263450();
  *(v100 + 40) = v101;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v100 + 48) = sub_263450();
  *(v100 + 56) = v102;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v100 + 64) = sub_263450();
  *(v100 + 72) = v103;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v100 + 80) = sub_263450();
  *(v100 + 88) = v104;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v100 + 96) = sub_263450();
  *(v100 + 104) = v105;
  sub_263730();
  sub_263740();
  sub_263460();
  sub_261590();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v106 = *(sub_2EF0(&qword_3282E0, &qword_28E7E8) + 36);
  v180 = enum case for BlendMode.softLight(_:);
  v107 = v219;
  (v93)(v219 + v106);
  v108 = v234;
  *(v107 + 32) = v233;
  *(v107 + 48) = v108;
  *(v107 + 64) = v235;
  *(v107 + 80) = v236;
  v109 = v232;
  *v107 = v231;
  *(v107 + 16) = v109;
  *(v107 + *(v182 + 44)) = 1;
  v110 = swift_allocObject();
  *(v110 + 16) = v178;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v110 + 32) = sub_263450();
  *(v110 + 40) = v111;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v110 + 48) = sub_263450();
  *(v110 + 56) = v112;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v110 + 64) = sub_263450();
  *(v110 + 72) = v113;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v110 + 80) = sub_263450();
  *(v110 + 88) = v114;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v110 + 96) = sub_263450();
  *(v110 + 104) = v115;
  sub_263730();
  sub_263740();
  sub_263460();
  sub_261590();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v116 = enum case for BlendMode.screen(_:);
  v117 = v216;
  v118 = v217;
  v119 = v217 + *(v203 + 44);
  LODWORD(v182) = enum case for BlendMode.screen(_:);
  v216(v119, enum case for BlendMode.screen(_:), v96);
  v120 = *&v229[51];
  *(v118 + 32) = *&v229[43];
  *(v118 + 48) = v120;
  *(v118 + 64) = *&v229[59];
  v121 = v230;
  v122 = *&v229[35];
  *v118 = *&v229[27];
  *(v118 + 16) = v122;
  *(v118 + 80) = v121;
  *(v118 + 88) = 0x3FD0000000000000;
  *(v118 + *(v181 + 44)) = 1;
  v123 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  *&v229[3] = v246;
  *&v229[11] = v247;
  *&v229[19] = v248;
  v124 = v218;
  v125 = v218 + *(v184 + 44);
  v201 = v96;
  v117(v125, v116, v96);
  v202 = v94;
  v126 = *&v229[8];
  *(v124 + 10) = *v229;
  *v124 = v123;
  *(v124 + 8) = 256;
  *(v124 + 26) = v126;
  *(v124 + 42) = *&v229[16];
  *(v124 + 56) = *&v229[23];
  *(v124 + 64) = a4 * 0.2;
  *(v124 + 72) = 0;
  *(v124 + 73) = v255[0];
  *(v124 + 76) = *(v255 + 3);
  *(v124 + 80) = 0x3FC3333333333333;
  v127 = swift_allocObject();
  *(v127 + 16) = v183;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v127 + 32) = sub_263450();
  *(v127 + 40) = v128;
  sub_262F80();
  sub_263000();

  *(v127 + 48) = sub_263450();
  *(v127 + 56) = v129;
  sub_263700();
  sub_263710();
  sub_263460();
  sub_261590();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  *&v177[1] = a5;
  sub_2613A0();
  v130 = v220;
  v117(v220 + *(v203 + 44), v180, v96);
  v131 = v226;
  *(v130 + 32) = v225;
  *(v130 + 48) = v131;
  *(v130 + 64) = v227;
  v132 = v228;
  v133 = v224;
  *v130 = v223;
  *(v130 + 16) = v133;
  *(v130 + 80) = v132;
  *(v130 + 88) = 0x3FD999999999999ALL;
  v134 = *(v187 + 8);
  v203 = sub_2617E0();
  v135 = *(v203 + 20);
  v136 = enum case for RoundedCornerStyle.continuous(_:);
  LODWORD(v183) = enum case for RoundedCornerStyle.continuous(_:);
  v137 = sub_261DD0();
  v138 = *(v137 - 8);
  v181 = *(v138 + 104);
  v184 = v138 + 104;
  v139 = v185;
  (v181)(&v185[v135], v136, v137);
  *v139 = v134;
  v139[1] = v134;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v140 = (v139 + *(v212 + 44));
  v141 = v250;
  *v140 = v249;
  v140[1] = v141;
  v140[2] = v251;
  v142 = sub_262F80();
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  v143 = v191;
  v144 = v191 + *(v213 + 44);
  sub_261230();

  *v143 = v142;
  v145 = v195;
  sub_246710(v195);
  v147 = v197;
  v146 = v198;
  v148 = v199;
  (*(v198 + 104))(v197, enum case for ColorScheme.dark(_:), v199);
  LOBYTE(v127) = sub_261170();
  v149 = *(v146 + 8);
  v149(v147, v148);
  v149(v145, v148);
  if (v127)
  {
    v150 = 0.15;
  }

  else
  {
    v150 = 0.5;
  }

  v151 = v194;
  sub_22148(v143, v194, &qword_319220, &unk_279340);
  v152 = v196;
  *(v151 + *(v196 + 44)) = v150;
  v153 = v192;
  v154 = v193;
  v216(&v192[*(v193 + 44)], v182, v201);
  sub_22148(v151, v153, &qword_319228, &unk_28E790);
  v155 = v188;
  v156 = v189;
  sub_22148(v153, &v188[*(v189 + 44)], &qword_319230, &unk_279350);
  sub_22148(v139, v155, &qword_319238, &unk_28E7A0);
  v157 = v155;
  v158 = v186;
  sub_22148(v157, v186, &qword_319240, &unk_279360);
  v159 = v190;
  *(v158 + *(v190 + 44)) = 1;
  v160 = v207;
  sub_22148(v158, v207, &qword_319248, &unk_28E7B0);
  v161 = v221;
  (v181)(v221 + *(v203 + 20), v183, v137);
  *v161 = v134;
  v161[1] = v134;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v162 = (v161 + *(v212 + 44));
  v163 = v253;
  *v162 = v252;
  v162[1] = v163;
  v162[2] = v254;
  v164 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_262F80();
  sub_263000();

  v165 = (v161 + *(v156 + 44));
  v166 = v165 + *(v213 + 44);
  sub_261230();

  *v165 = v164;
  *(v165 + *(v152 + 44)) = 1048576000;
  v216(v165 + *(v154 + 44), enum case for BlendMode.darken(_:), v201);
  *(v161 + *(v159 + 44)) = 1;
  v167 = v205;
  sub_8198(v211, v205, &qword_3282D8, &unk_28E7D8);
  v168 = v206;
  sub_8198(v204, v206, &qword_3282D0, &qword_28E7D0);
  v169 = v209;
  sub_8198(v219, v209, &qword_3282C8, &qword_28E7C8);
  v170 = v208;
  sub_8198(v217, v208, &qword_3282D0, &qword_28E7D0);
  v171 = v210;
  sub_8198(v218, v210, &qword_3282C0, &qword_28E7C0);
  sub_8198(v220, v222, &qword_319250, &qword_279370);
  sub_8198(v160, v214, &qword_319248, &unk_28E7B0);
  sub_8198(v221, v215, &qword_319248, &unk_28E7B0);
  v172 = v200;
  sub_8198(v167, v200, &qword_3282D8, &unk_28E7D8);
  v173 = sub_2EF0(&qword_3282E8, &qword_28E7F0);
  sub_8198(v168, v172 + v173[12], &qword_3282D0, &qword_28E7D0);
  sub_8198(v169, v172 + v173[16], &qword_3282C8, &qword_28E7C8);
  sub_8198(v170, v172 + v173[20], &qword_3282D0, &qword_28E7D0);
  sub_8198(v171, v172 + v173[24], &qword_3282C0, &qword_28E7C0);
  sub_8198(v222, v172 + v173[28], &qword_319250, &qword_279370);
  v174 = v214;
  sub_8198(v214, v172 + v173[32], &qword_319248, &unk_28E7B0);
  v175 = v215;
  sub_8198(v215, v172 + v173[36], &qword_319248, &unk_28E7B0);
  sub_8E80(v221, &qword_319248, &unk_28E7B0);
  sub_8E80(v207, &qword_319248, &unk_28E7B0);
  sub_8E80(v220, &qword_319250, &qword_279370);
  sub_8E80(v218, &qword_3282C0, &qword_28E7C0);
  sub_8E80(v217, &qword_3282D0, &qword_28E7D0);
  sub_8E80(v219, &qword_3282C8, &qword_28E7C8);
  sub_8E80(v204, &qword_3282D0, &qword_28E7D0);
  sub_8E80(v211, &qword_3282D8, &unk_28E7D8);
  sub_8E80(v175, &qword_319248, &unk_28E7B0);
  sub_8E80(v174, &qword_319248, &unk_28E7B0);
  sub_8E80(v222, &qword_319250, &qword_279370);
  sub_8E80(v210, &qword_3282C0, &qword_28E7C0);
  sub_8E80(v208, &qword_3282D0, &qword_28E7D0);
  sub_8E80(v209, &qword_3282C8, &qword_28E7C8);
  sub_8E80(v206, &qword_3282D0, &qword_28E7D0);
  return sub_8E80(v205, &qword_3282D8, &unk_28E7D8);
}

uint64_t sub_249020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = v3;
  v8 = sub_2EF0(&qword_328178, &qword_28E5C8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v21 - v11;
  v13 = *(a2 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v15);
  v16 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_246B78(v5, v16);
  (*(v9 + 16))(v12, a1, v8);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = (v14 + v17 + *(v9 + 80)) & ~*(v9 + 80);
  v19 = swift_allocObject();
  sub_246BE0(v16, v19 + v17);
  result = (*(v9 + 32))(v19 + v18, v12, v8);
  *a3 = sub_249B64;
  a3[1] = v19;
  return result;
}

uint64_t sub_2491FC(uint64_t a1)
{
  result = sub_2493CC(&qword_3281C0, type metadata accessor for ComicCoverEffect);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_249268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_2EF0(&qword_316F70, &unk_2693C0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_249300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_2EF0(&qword_316F70, &unk_2693C0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_2493CC(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_249468@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_2496F8(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_2494AC(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_261040();
  return sub_F4138;
}

uint64_t sub_249534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_249870();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_249598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_249870();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_2495FC(uint64_t a1)
{
  v2 = sub_249870();

  return Shape.body.getter(a1, v2);
}

unint64_t sub_24964C()
{
  result = qword_328280;
  if (!qword_328280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328280);
  }

  return result;
}

unint64_t sub_2496A4()
{
  result = qword_328288;
  if (!qword_328288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328288);
  }

  return result;
}

double sub_2496F8@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_2627A0();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetMinX(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetMinY(v15);
  sub_262780();
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetWidth(v16);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGRectGetMinY(v17);
  sub_262790();
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectGetWidth(v18);
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  CGRectGetHeight(v19);
  sub_262790();
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectGetMinX(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetHeight(v21);
  sub_262790();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

unint64_t sub_249870()
{
  result = qword_328290;
  if (!qword_328290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328290);
  }

  return result;
}

uint64_t sub_2498C4()
{
  v1 = (type metadata accessor for ComicCoverEffect() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_2EF0(&qword_328178, &qword_28E5C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v0 + v1[8];
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_261180();
    (*(*(v9 - 8) + 8))(v8 + v2, v9);
  }

  else
  {
    v10 = *(v8 + v2);
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_249A70@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for ComicCoverEffect() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_2EF0(&qword_328178, &qword_28E5C8) - 8);
  v7 = v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_246AF8(v1 + v4, v7, a1);
}

uint64_t FontConstants.ListItem.preheader.getter()
{
  v0 = sub_2626C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2EF0(&qword_318458, &unk_26B270);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v18 - v7;
  v9 = sub_262730();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v14, enum case for Font.TextStyle.caption2(_:), v9, v12);
  v15 = sub_2625C0();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  sub_262680();
  sub_179B10(v8);
  (*(v10 + 8))(v14, v9);
  sub_2625A0();

  (*(v1 + 104))(v4, enum case for Font.Leading.tight(_:), v0);
  v16 = sub_2626E0();

  (*(v1 + 8))(v4, v0);
  return v16;
}

uint64_t sub_249EB4(unsigned int *a1)
{
  v2 = sub_2EF0(&qword_318458, &unk_26B270);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = sub_262730();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v11, *a1, v6, v9);
  if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
  {
    v12 = sub_2625C0();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  }

  else
  {
    v13 = enum case for Font.Design.serif (_:);
    v14 = sub_2625C0();
    v15 = *(v14 - 8);
    (*(v15 + 104))(v5, v13, v14);
    (*(v15 + 56))(v5, 0, 1, v14);
  }

  v16 = sub_262680();
  sub_179B10(v5);
  (*(v7 + 8))(v11, v6);
  return v16;
}

uint64_t sub_24A10C(void (*a1)(void))
{
  a1();
  v1 = sub_2625A0();

  return v1;
}

uint64_t sub_24A160(void (*a1)(__n128))
{
  v2 = sub_2626C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v5);
  (*(v3 + 104))(v7, enum case for Font.Leading.tight(_:), v2);
  v8 = sub_2626E0();

  (*(v3 + 8))(v7, v2);
  return v8;
}

uint64_t sub_24A294(uint64_t a1, double a2)
{
  v5 = sub_264ED0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  if (a2 != 1.0)
  {
    v15 = *v2 / a2;
    *v2 = v15;
    (*(v6 + 16))(v10, a1, v5);
    result = (*(v6 + 88))(v10, v5);
    if (result == enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:))
    {
      v16 = round(v15);
    }

    else if (result == enum case for FloatingPointRoundingRule.toNearestOrEven(_:))
    {
      v16 = rint(v15);
    }

    else if (result == enum case for FloatingPointRoundingRule.up(_:))
    {
      v16 = ceil(v15);
    }

    else if (result == enum case for FloatingPointRoundingRule.down(_:))
    {
      v16 = floor(v15);
    }

    else if (result == enum case for FloatingPointRoundingRule.towardZero(_:))
    {
      v16 = trunc(v15);
    }

    else if (result == enum case for FloatingPointRoundingRule.awayFromZero(_:))
    {
      v16 = ceil(v15);
      v18 = floor(v15);
      if (v15 < 0.0)
      {
        v16 = v18;
      }
    }

    else
    {
      sub_2647A0();
      result = (*(v6 + 8))(v10, v5);
      v16 = *v2;
    }

    v14 = v16 * a2;
    goto LABEL_34;
  }

  (*(v6 + 16))(&v19 - v11, a1, v5);
  result = (*(v6 + 88))(v12, v5);
  if (result != enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:))
  {
    if (result == enum case for FloatingPointRoundingRule.toNearestOrEven(_:))
    {
      v14 = rint(*v2);
      goto LABEL_34;
    }

    if (result == enum case for FloatingPointRoundingRule.up(_:))
    {
      v17 = *v2;
LABEL_12:
      v14 = ceil(v17);
      goto LABEL_34;
    }

    if (result == enum case for FloatingPointRoundingRule.down(_:))
    {
      v17 = *v2;
    }

    else
    {
      if (result == enum case for FloatingPointRoundingRule.towardZero(_:))
      {
        v14 = trunc(*v2);
        goto LABEL_34;
      }

      if (result != enum case for FloatingPointRoundingRule.awayFromZero(_:))
      {
        sub_2647A0();
        return (*(v6 + 8))(v12, v5);
      }

      v17 = *v2;
      if ((*v2 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }
    }

    v14 = floor(v17);
    goto LABEL_34;
  }

  v14 = round(*v2);
LABEL_34:
  *v2 = v14;
  return result;
}

uint64_t sub_24A5E4()
{
  v0 = sub_2EF0(&qword_318458, &unk_26B270);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v15 - v2;
  v4 = sub_262730();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v9, enum case for Font.TextStyle.caption(_:), v4, v7);
  v10 = enum case for Font.Design.rounded(_:);
  v11 = sub_2625C0();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v3, v10, v11);
  (*(v12 + 56))(v3, 0, 1, v11);
  sub_262680();
  sub_179B10(v3);
  (*(v5 + 8))(v9, v4);
  v13 = sub_2625A0();

  return v13;
}

uint64_t _s7BooksUI13FontConstantsV6ButtonV05largeE5Title05SwiftB00C0Vvg_0()
{
  v0 = sub_2626C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2EF0(&qword_318458, &unk_26B270);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v18 - v7;
  v9 = sub_262730();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v14, enum case for Font.TextStyle.subheadline(_:), v9, v12);
  v15 = sub_2625C0();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  sub_262650();
  sub_262680();
  sub_179B10(v8);
  (*(v10 + 8))(v14, v9);
  (*(v1 + 104))(v4, enum case for Font.Leading.tight(_:), v0);
  v16 = sub_2626E0();

  (*(v1 + 8))(v4, v0);
  return v16;
}

uint64_t sub_24AA5C(unsigned int *a1)
{
  v2 = sub_2EF0(&qword_318458, &unk_26B270);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = sub_262730();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v11, *a1, v6, v9);
  if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
  {
    v12 = sub_2625C0();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  }

  else
  {
    v13 = enum case for Font.Design.serif (_:);
    v14 = sub_2625C0();
    v15 = *(v14 - 8);
    (*(v15 + 104))(v5, v13, v14);
    (*(v15 + 56))(v5, 0, 1, v14);
  }

  sub_262680();
  sub_179B10(v5);
  (*(v7 + 8))(v11, v6);
  v16 = sub_2625A0();

  return v16;
}

uint64_t sub_24ACDC(unsigned int *a1, void (*a2)(uint64_t))
{
  v4 = sub_2EF0(&qword_318458, &unk_26B270);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v18 - v6;
  v8 = sub_262730();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v13, *a1, v8, v11);
  v14 = sub_2625C0();
  v15 = (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  a2(v15);
  v16 = sub_262680();
  sub_179B10(v7);
  (*(v9 + 8))(v13, v8);
  return v16;
}

uint64_t FontConstants.GridItem.title.getter()
{
  v0 = sub_2EF0(&qword_318458, &unk_26B270);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v13 - v2;
  v4 = sub_262730();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v9, enum case for Font.TextStyle.subheadline(_:), v4, v7);
  v10 = sub_2625C0();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  sub_262680();
  sub_179B10(v3);
  (*(v5 + 8))(v9, v4);
  v11 = sub_2625A0();

  return v11;
}

uint64_t sub_24B028(unsigned int *a1)
{
  v2 = sub_2EF0(&qword_318458, &unk_26B270);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - v4;
  v6 = sub_262730();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v11, *a1, v6, v9);
  v12 = sub_2625C0();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  v13 = sub_262680();
  sub_179B10(v5);
  (*(v7 + 8))(v11, v6);
  return v13;
}

uint64_t FontConstants.ListItem.finePrint.getter()
{
  v1 = sub_2626C0();
  v38 = *(v1 - 8);
  v39 = v1;
  v2 = *(v38 + 64);
  __chkstk_darwin(v1);
  v37 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2EF0(&qword_318458, &unk_26B270);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v35 - v6;
  v36 = sub_264ED0();
  v8 = *(v36 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v36);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FontConstants.Environment(0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_262730();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 104))(v22, enum case for Font.TextStyle.caption2(_:), v17, v20);
  sub_243ACC(v0, v16);
  v23 = *(v13 + 32);
  v24 = sub_1CF30(v22, &v16[v23]);
  (*(v18 + 8))(v22, v17);
  v25 = sub_261690();
  (*(*(v25 - 8) + 8))(&v16[v23], v25);
  v26 = v24 * 8.0;
  v27 = *(v0 + *(v13 + 36));
  v28 = v36;
  (*(v8 + 104))(v11, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v36);
  v40 = v26;
  sub_24A294(v11, v27);
  (*(v8 + 8))(v11, v28);
  v29 = sub_2625C0();
  (*(*(v29 - 8) + 56))(v7, 1, 1, v29);
  sub_262670();
  sub_179B10(v7);
  v31 = v37;
  v30 = v38;
  v32 = v39;
  (*(v38 + 104))(v37, enum case for Font.Leading.tight(_:), v39);
  v33 = sub_2626E0();

  (*(v30 + 8))(v31, v32);
  return v33;
}

uint64_t sub_24B830(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FontConstants.Environment(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24B8B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FontConstants.Environment(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t EnvironmentValues.analyticsAttributes.getter()
{
  sub_12F204();

  return sub_261CB0();
}

uint64_t EnvironmentValues.analyticsAttributes.setter(uint64_t a1)
{
  v2 = sub_2603F0();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_2397F4(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_12F204();
  sub_261CC0();
  return sub_24BBEC(a1);
}

uint64_t sub_24BBEC(uint64_t a1)
{
  v2 = sub_2603F0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EnvironmentValues.isCompact.getter()
{
  v0 = sub_262180();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v27 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2EF0(&qword_317970, &qword_269D00);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = sub_2EF0(&qword_3178F0, &qword_269C90);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v26 - v15;
  __chkstk_darwin(v14);
  v18 = &v26 - v17;
  sub_261B40();
  (*(v1 + 104))(v16, enum case for UserInterfaceSizeClass.compact(_:), v0);
  (*(v1 + 56))(v16, 0, 1, v0);
  v19 = *(v5 + 56);
  sub_8198(v18, v8, &qword_3178F0, &qword_269C90);
  sub_8198(v16, &v8[v19], &qword_3178F0, &qword_269C90);
  v20 = *(v1 + 48);
  if (v20(v8, 1, v0) != 1)
  {
    sub_8198(v8, v13, &qword_3178F0, &qword_269C90);
    if (v20(&v8[v19], 1, v0) != 1)
    {
      v22 = &v8[v19];
      v23 = v27;
      (*(v1 + 32))(v27, v22, v0);
      sub_24C060();
      v21 = sub_264390();
      v24 = *(v1 + 8);
      v24(v23, v0);
      sub_8E80(v16, &qword_3178F0, &qword_269C90);
      sub_8E80(v18, &qword_3178F0, &qword_269C90);
      v24(v13, v0);
      sub_8E80(v8, &qword_3178F0, &qword_269C90);
      return v21 & 1;
    }

    sub_8E80(v16, &qword_3178F0, &qword_269C90);
    sub_8E80(v18, &qword_3178F0, &qword_269C90);
    (*(v1 + 8))(v13, v0);
    goto LABEL_6;
  }

  sub_8E80(v16, &qword_3178F0, &qword_269C90);
  sub_8E80(v18, &qword_3178F0, &qword_269C90);
  if (v20(&v8[v19], 1, v0) != 1)
  {
LABEL_6:
    sub_8E80(v8, &qword_317970, &qword_269D00);
    v21 = 0;
    return v21 & 1;
  }

  sub_8E80(v8, &qword_3178F0, &qword_269C90);
  v21 = 1;
  return v21 & 1;
}

unint64_t sub_24C060()
{
  result = qword_317AC0;
  if (!qword_317AC0)
  {
    sub_262180();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317AC0);
  }

  return result;
}

uint64_t EnvironmentValues.shelfBackgroundKind.getter()
{
  sub_1F37A0();

  return sub_261CB0();
}

uint64_t EnvironmentValues.shelfBackgroundKind.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  sub_1F37A0();
  return sub_261CC0();
}

double sub_24C148()
{
  qword_328850 = 0;
  result = 0.0;
  xmmword_328830 = 0u;
  unk_328840 = 0u;
  return result;
}

uint64_t sub_24C160@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_315B10 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_8198(&xmmword_328830, v1, &qword_3167B8, &qword_268700);
}

id sub_24C1D4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [a1 isInCard];
  *a2 = result;
  return result;
}

id sub_24C21C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [a1 isInactiveCard];
  *a2 = result;
  return result;
}

uint64_t sub_24C264(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v6 = *a2;
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  sub_17450(a1, v7);
  return a5(v6, v7, v8);
}

uint64_t sub_24C2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24E174();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_24C32C()
{
  v0 = sub_2603F0();
  sub_B600(v0, qword_328858);
  v1 = sub_B080(v0, qword_328858);
  v2 = sub_2605C0();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_24C3C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_315B18 != -1)
  {
    swift_once();
  }

  v2 = sub_2603F0();
  v3 = sub_B080(v2, qword_328858);

  return sub_2397F4(v3, a1);
}

uint64_t EnvironmentValues.convertRectFromGlobalHandler.getter()
{
  sub_24C480();

  return sub_261CB0();
}

unint64_t sub_24C480()
{
  result = qword_328870;
  if (!qword_328870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328870);
  }

  return result;
}

uint64_t sub_24C514(uint64_t a1)
{
  sub_8198(a1, v3, &qword_3167B8, &qword_268700);
  sub_8198(v3, &v2, &qword_3167B8, &qword_268700);
  sub_24C480();
  sub_261CC0();
  return sub_8E80(v3, &qword_3167B8, &qword_268700);
}

uint64_t EnvironmentValues.convertRectFromGlobalHandler.setter(uint64_t a1)
{
  sub_8198(a1, v3, &qword_3167B8, &qword_268700);
  sub_24C480();
  sub_261CC0();
  return sub_8E80(a1, &qword_3167B8, &qword_268700);
}

void (*EnvironmentValues.convertRectFromGlobalHandler.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  *(v3 + 128) = sub_24C480();
  sub_261CB0();
  return sub_24C6B0;
}

void sub_24C6B0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 120);
  v4 = *(*a1 + 128);
  if (a2)
  {
    sub_8198(*a1, v2 + 40, &qword_3167B8, &qword_268700);
    sub_8198(v2 + 40, v2 + 80, &qword_3167B8, &qword_268700);
    sub_261CC0();
    sub_8E80(v2 + 40, &qword_3167B8, &qword_268700);
  }

  else
  {
    sub_8198(*a1, v2 + 40, &qword_3167B8, &qword_268700);
    sub_261CC0();
  }

  sub_8E80(v2, &qword_3167B8, &qword_268700);

  free(v2);
}

unint64_t sub_24C7E4()
{
  result = qword_328878;
  if (!qword_328878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328878);
  }

  return result;
}

uint64_t (*EnvironmentValues.isRootPage.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_24C7E4();
  sub_261CB0();
  *(a1 + 16) = *(a1 + 17);
  return sub_24C900;
}

unint64_t sub_24C940()
{
  result = qword_328880;
  if (!qword_328880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328880);
  }

  return result;
}

uint64_t sub_24C9B4@<X0>(void (*a1)(void)@<X3>, _BYTE *a2@<X8>)
{
  a1();
  result = sub_261CB0();
  *a2 = v4;
  return result;
}

uint64_t sub_24CA30(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = *a1;
  a5();
  return sub_261CC0();
}

uint64_t (*EnvironmentValues.isInList.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_24C940();
  sub_261CB0();
  *(a1 + 16) = *(a1 + 17);
  return sub_24CB08;
}

uint64_t (*EnvironmentValues.isInModal.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_EFD9C();
  sub_261CB0();
  *(a1 + 16) = *(a1 + 17);
  return sub_24CBD0;
}

uint64_t (*EnvironmentValues.isPendingData.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_449DC();
  sub_261CB0();
  *(a1 + 16) = *(a1 + 17);
  return sub_24CC98;
}

uint64_t sub_24CCD8(uint64_t (*a1)(void), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t))
{
  v5 = a1();
  a3(&v7, a2, a2, v5);
  return v7;
}

uint64_t (*EnvironmentValues.isReachable.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_3CB4();
  sub_261CB0();
  *(a1 + 16) = *(a1 + 17);
  return sub_24CE00;
}

void (*EnvironmentValues.shelfBackgroundKind.modify(uint64_t *a1))(unint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_1F37A0();
  sub_261CB0();
  return sub_24CEB0;
}

void sub_24CEB0(unint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v3[2] = v4;
  v5 = *(v3 + 8);
  v6 = v3[4];
  v7 = v3[5];
  *(v3 + 24) = v5;
  if (a2)
  {
    sub_1DB208(v4, v5);
    sub_261CC0();
    sub_1DDE58(*v3, *(v3 + 8));
  }

  else
  {
    sub_261CC0();
  }

  free(v3);
}

uint64_t (*EnvironmentValues.isInVibrantContext.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_3BB24();
  sub_261CB0();
  *(a1 + 16) = *(a1 + 17);
  return sub_24CFB8;
}

uint64_t (*EnvironmentValues.isAnODPRecommendation.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_12F2AC();
  sub_261CB0();
  *(a1 + 16) = *(a1 + 17);
  return sub_24D02C;
}

uint64_t (*EnvironmentValues.supportsSuggestionContextMenu.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_12F258();
  sub_261CB0();
  *(a1 + 16) = *(a1 + 17);
  return sub_24D0A0;
}

uint64_t sub_24D0AC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_261CC0();
}

void (*EnvironmentValues.analyticsAttributes.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_2603F0() - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[1] = swift_coroFrameAlloc();
    v4[2] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v5);
    v4[2] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[3] = v6;
  v4[4] = sub_12F204();
  sub_261CB0();
  return sub_24D1E8;
}

void sub_24D1E8(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_2397F4((*a1)[3], (*a1)[2]);
  v4 = v3[3];
  v5 = v3[4];
  v6 = v3[1];
  v7 = v3[2];
  v8 = *v3;
  if (a2)
  {
    sub_2397F4(v3[2], v3[1]);
    sub_261CC0();
    sub_24BBEC(v7);
  }

  else
  {
    v9 = v3[2];
    v10 = v3[4];
    sub_261CC0();
  }

  sub_24BBEC(v4);
  free(v4);
  free(v7);
  free(v6);

  free(v3);
}

unint64_t sub_24D2D8()
{
  result = qword_328888;
  if (!qword_328888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328888);
  }

  return result;
}

uint64_t (*EnvironmentValues.shelfItemIndex.modify(uint64_t a1))(void *a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_24D2D8();
  sub_261CB0();
  return sub_24D3AC;
}

unint64_t sub_24D3D8()
{
  result = qword_328890;
  if (!qword_328890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328890);
  }

  return result;
}

uint64_t (*EnvironmentValues.numberOfItemsOnShelf.modify(uint64_t a1))(void *a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_24D3D8();
  sub_261CB0();
  return sub_24D4AC;
}

uint64_t sub_24D4D8(void (*a1)(void))
{
  a1();
  sub_261CB0();
  return v2;
}

unint64_t sub_24D520()
{
  result = qword_328898;
  if (!qword_328898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328898);
  }

  return result;
}

uint64_t (*EnvironmentValues.numberOfColumnsOnShelf.modify(uint64_t a1))(void *a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_24D520();
  sub_261CB0();
  return sub_24D63C;
}

uint64_t sub_24D648(void *a1)
{
  a1[1] = *a1;
  v1 = a1 + 1;
  v3 = v1[1];
  v2 = v1[2];
  return sub_261CC0();
}

uint64_t EnvironmentValues.objectGraph.getter()
{
  sub_24D6B4();
  sub_261CB0();
  return v1;
}

unint64_t sub_24D6B4()
{
  result = qword_3288A0;
  if (!qword_3288A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3288A0);
  }

  return result;
}

uint64_t sub_24D708(uint64_t *a1)
{
  v2 = *a1;
  sub_24D6B4();

  return sub_261CC0();
}

uint64_t (*EnvironmentValues.objectGraph.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_24D6B4();
  sub_261CB0();
  return sub_24D804;
}

uint64_t sub_24D804(void *a1, char a2)
{
  a1[1] = *a1;
  v3 = a1[2];
  v4 = a1[3];
  if (a2)
  {

    sub_261CC0();
    v5 = *a1;
  }

  else
  {
    v7 = a1[3];
    return sub_261CC0();
  }
}

uint64_t sub_24D8AC@<X0>(unsigned int *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_261180();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  sub_261990();
  (*(v7 + 104))(v10, enum case for ColorScheme.light(_:), v6);
  v14 = sub_261170();
  v15 = *(v7 + 8);
  v15(v10, v6);
  v15(v13, v6);
  v16 = sub_263640();
  if (v14)
  {
    v17 = a1;
  }

  else
  {
    v17 = a2;
  }

  return (*(*(v16 - 8) + 104))(a3, *v17, v16);
}

uint64_t EnvironmentValues.defaultBlendModeConsideringVibrancy.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_261180();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  sub_3BB24();
  sub_261CB0();
  if (v17[15] == 1)
  {
    sub_261990();
    (*(v3 + 104))(v7, enum case for ColorScheme.light(_:), v2);
    v10 = sub_261170();
    v11 = *(v3 + 8);
    v11(v7, v2);
    v11(v9, v2);
    v12 = sub_263640();
    if (v10)
    {
      v13 = &enum case for BlendMode.plusDarker(_:);
    }

    else
    {
      v13 = &enum case for BlendMode.plusLighter(_:);
    }

    return (*(*(v12 - 8) + 104))(a1, *v13, v12);
  }

  else
  {
    v14 = enum case for BlendMode.normal(_:);
    v15 = sub_263640();
    return (*(*(v15 - 8) + 104))(a1, v14, v15);
  }
}

uint64_t EnvironmentValues.ordinal.getter()
{
  sub_24D2D8();
  sub_261CB0();
  result = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_24DC8C()
{
  result = qword_3288A8;
  if (!qword_3288A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3288A8);
  }

  return result;
}

uint64_t sub_24DE84@<X0>(void (*a1)(void)@<X3>, void *a2@<X8>)
{
  a1();
  result = sub_261CB0();
  *a2 = v4;
  return result;
}

uint64_t sub_24DF00(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = *a1;
  a5();
  return sub_261CC0();
}

uint64_t sub_24DF50@<X0>(void *a1@<X8>)
{
  sub_24D6B4();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

unint64_t sub_24E0C8()
{
  result = qword_3288B0;
  if (!qword_3288B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3288B0);
  }

  return result;
}

unint64_t sub_24E120()
{
  result = qword_3288B8;
  if (!qword_3288B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3288B8);
  }

  return result;
}

unint64_t sub_24E174()
{
  result = qword_3288C0;
  if (!qword_3288C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3288C0);
  }

  return result;
}

uint64_t sub_24E1E8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_316F68, &unk_269C50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_31A748, &unk_26F940);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_2EF0(&qword_317BF8, &unk_26F930);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_24E378(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_316F68, &unk_269C50);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_2EF0(&qword_31A748, &unk_26F940);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_2EF0(&qword_317BF8, &unk_26F930);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_24E510()
{
  sub_23CC88(319, &qword_316FE8, type metadata accessor for ColorConstants);
  if (v0 <= 0x3F)
  {
    sub_23CC88(319, &qword_31A7B8, type metadata accessor for FontConstants);
    if (v1 <= 0x3F)
    {
      sub_23CC88(319, &qword_317C68, type metadata accessor for SizeConstants);
      if (v2 <= 0x3F)
      {
        sub_16D28();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24E63C@<X0>(uint64_t *a1@<X8>)
{
  v50 = a1;
  v1 = type metadata accessor for GridItemMetadataRecommendationLockupView(0);
  v2 = v1 - 8;
  v52 = *(v1 - 8);
  v51 = *(v52 + 64);
  __chkstk_darwin(v1);
  v49 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SizeConstants.Environment(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v48 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_262730();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v53 = &v47 - v14;
  v15 = sub_2EF0(&qword_31B578, &qword_270C30);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v19 = &v47 - v18;
  v20 = type metadata accessor for SizeConstants.Spacing(0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v47 - v25;
  v27 = type metadata accessor for SizeConstants(0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_261E60();
  v31 = v54 + *(v2 + 32);
  sub_40CA0(v30);
  sub_25036C(v30, v26, type metadata accessor for SizeConstants.Environment);
  v32 = v53;
  (*(v9 + 104))(v53, enum case for Font.TextStyle.body(_:), v8);
  sub_2500B8(v26, v23, type metadata accessor for SizeConstants.Spacing);
  (*(v9 + 16))(v12, v32, v8);
  sub_2500B8(v23, v19, type metadata accessor for SizeConstants.Spacing);
  v33 = v48;
  sub_2500B8(v23, v48, type metadata accessor for SizeConstants.Environment);
  v34 = *(v5 + 32);
  v35 = v33;
  v36 = sub_1CF30(v12, v33 + v34);
  v37 = *(v9 + 8);
  v37(v12, v8);
  sub_25045C(v23, type metadata accessor for SizeConstants.Spacing);
  v38 = sub_261690();
  (*(*(v38 - 8) + 8))(v35 + v34, v38);
  v39 = 1.0;
  if ((*&v36 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v39 = v36;
  }

  if ((~*&v36 & 0x7FF0000000000000) != 0)
  {
    v39 = v36;
  }

  *&v19[*(v16 + 44)] = v39;
  v37(v53, v8);
  sub_25045C(v26, type metadata accessor for SizeConstants.Spacing);
  v40 = sub_21FA68(2.0);
  sub_8E80(v19, &qword_31B578, &qword_270C30);
  v41 = v50;
  *v50 = v47;
  *(v41 + 1) = v40;
  *(v41 + 16) = 0;
  v42 = *(sub_2EF0(&qword_328968, &unk_28EFF8) + 44);
  v43 = v49;
  sub_2500B8(v54, v49, type metadata accessor for GridItemMetadataRecommendationLockupView);
  v44 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v45 = swift_allocObject();
  sub_25036C(v43, v45 + v44, type metadata accessor for GridItemMetadataRecommendationLockupView);
  sub_2EF0(&qword_328970, &qword_28F008);
  sub_260A70();
  sub_260A50();
  sub_8E38(&qword_328978, &qword_328970, &qword_28F008);
  sub_76AD0(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
  sub_76AD0(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
  return sub_260A80();
}

uint64_t sub_24EC94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a1;
  v73 = a3;
  v4 = sub_2EF0(&qword_327980, &qword_28D6D0);
  v71 = *(v4 - 8);
  v72 = v4;
  v5 = *(v71 + 64);
  __chkstk_darwin(v4);
  v70 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v69 = &v64 - v8;
  v9 = type metadata accessor for MoreButtonView();
  v10 = (v9 - 8);
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v68 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (&v64 - v14);
  v16 = type metadata accessor for SizeConstants.Spacing(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SizeConstants(0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2EF0(&qword_327968, &qword_28D6B0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v66 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v64 - v28;
  v30 = type metadata accessor for GridItemMetadataRecommendationLockupView(0);
  v31 = (v30 - 8);
  v32 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v34 = &v64 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_2EF0(&qword_328980, &qword_28F010);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v74 = &v64 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v64 - v39;
  v64 = v34;
  sub_2500B8(a2, v34, type metadata accessor for GridItemMetadataRecommendationLockupView);
  sub_30CC(v67, v75);
  *v40 = sub_261D30();
  *(v40 + 1) = 0;
  v40[16] = 1;
  v65 = v40;
  v41 = &v40[*(sub_2EF0(&qword_328988, &qword_28F018) + 44)];
  sub_24F310(v29);
  v42 = a2 + v31[8];
  sub_40CA0(v23);
  sub_25036C(v23, v19, type metadata accessor for SizeConstants.Environment);
  sub_25045C(v19, type metadata accessor for SizeConstants.Spacing);
  sub_30CC(a2 + v31[9] + 48, v15 + v10[8]);
  v43 = (a2 + v31[10]);
  v44 = *v43;
  v45 = v43[1];
  *v15 = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v46 = v10[7];
  *(v15 + v46) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v47 = (v15 + v10[9]);
  *v47 = v44;
  v47[1] = v45;
  v48 = v66;
  sub_8198(v29, v66, &qword_327968, &qword_28D6B0);
  v49 = v68;
  sub_2500B8(v15, v68, type metadata accessor for MoreButtonView);
  sub_8198(v48, v41, &qword_327968, &qword_28D6B0);
  v50 = sub_2EF0(&qword_328990, &qword_28F070);
  v51 = v41 + *(v50 + 48);
  *v51 = 0x4020000000000000;
  *(v51 + 8) = 0;
  sub_2500B8(v49, v41 + *(v50 + 64), type metadata accessor for MoreButtonView);

  sub_25045C(v15, type metadata accessor for MoreButtonView);
  sub_8E80(v29, &qword_327968, &qword_28D6B0);
  sub_25045C(v49, type metadata accessor for MoreButtonView);
  sub_8E80(v48, &qword_327968, &qword_28D6B0);
  sub_25045C(v64, type metadata accessor for GridItemMetadataRecommendationLockupView);
  sub_3080(v75);
  v52 = v69;
  sub_24FA80(v69);
  v53 = v65;
  v54 = v74;
  sub_8198(v65, v74, &qword_328980, &qword_28F010);
  v56 = v70;
  v55 = v71;
  v57 = *(v71 + 16);
  v58 = v72;
  v57(v70, v52, v72);
  v59 = v54;
  v60 = v73;
  sub_8198(v59, v73, &qword_328980, &qword_28F010);
  v61 = sub_2EF0(&qword_328998, &unk_28F078);
  v57((v60 + *(v61 + 48)), v56, v58);
  v62 = *(v55 + 8);
  v62(v52, v58);
  sub_8E80(v53, &qword_328980, &qword_28F010);
  v62(v56, v58);
  return sub_8E80(v74, &qword_328980, &qword_28F010);
}

uint64_t sub_24F310@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v69 = sub_263EB0();
  v68 = *(v69 - 8);
  v2 = *(v68 + 64);
  __chkstk_darwin(v69);
  v66 = v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_263EE0();
  v70 = *(v4 - 8);
  v5 = *(v70 + 64);
  __chkstk_darwin(v4);
  v67 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ColorConstants(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v64 = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2EF0(&qword_318458, &unk_26B270);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v62 - v12;
  v14 = sub_262730();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _s24RecommendationSwooshItemVMa(0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for FontConstants(0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2EF0(&qword_327980, &qword_28D6D0);
  v28 = *(v27 - 8);
  v72 = v27;
  v73 = v28;
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v65 = v62 - v30;
  v31 = type metadata accessor for GridItemMetadataRecommendationLockupView(0);
  v32 = (v1 + *(v31 + 28));
  v33 = v32[3];
  if (v33)
  {
    v62[0] = v32[2];
    v63 = v4;
    v34 = *(v31 + 20);
    v62[2] = v33;

    v62[1] = v1;
    sub_40D40(v26);
    sub_25036C(v26, v22, type metadata accessor for FontConstants.Environment);
    (*(v15 + 104))(v18, enum case for Font.TextStyle.footnote(_:), v14);
    v35 = sub_2625C0();
    (*(*(v35 - 8) + 56))(v13, 1, 1, v35);
    sub_262680();
    sub_8E80(v13, &qword_318458, &unk_26B270);
    (*(v15 + 8))(v18, v14);
    sub_25045C(v22, _s24RecommendationSwooshItemVMa);
    v36 = sub_262840();
    v38 = v37;
    LOBYTE(v34) = v39;

    v40 = v64;
    sub_404B8(v64);
    _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
    sub_25045C(v40, type metadata accessor for ColorConstants);
    v41 = sub_2627E0();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v64 = v46;
    sub_39DBC(v36, v38, v34 & 1);

    v48 = v32[5];
    KeyPath = swift_getKeyPath();
    v76 = v41;
    v77 = v43;
    v45 &= 1u;
    v78 = v45;
    v79 = v47;
    v80 = KeyPath;
    v81 = v48;
    v82 = 0;
    v50 = v68;
    v51 = v66;
    v52 = v69;
    (*(v68 + 104))(v66, enum case for AutomationSemantics.Subcomponent.subtitle(_:), v69);
    memset(v75, 0, sizeof(v75));
    memset(v74, 0, sizeof(v74));
    v53 = v67;
    sub_263EC0();
    sub_8E80(v74, &qword_316200, &qword_267FD0);
    sub_8E80(v75, &qword_316200, &qword_267FD0);
    (*(v50 + 8))(v51, v52);
    sub_2EF0(&qword_3189D8, &unk_27CEE0);
    sub_58070();
    v54 = v65;
    sub_262930();

    (*(v70 + 8))(v53, v63);
    sub_39DBC(v41, v43, v45);

    v55 = v71;
    v56 = v54;
    v57 = v72;
    (*(v73 + 32))(v71, v56, v72);
    return (*(v73 + 56))(v55, 0, 1, v57);
  }

  else
  {
    v59 = v72;
    v60 = *(v73 + 56);
    v61 = v71;

    return v60(v61, 1, 1, v59);
  }
}

uint64_t sub_24FA80@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v57 = sub_263EB0();
  v56 = *(v57 - 8);
  v2 = *(v56 + 64);
  __chkstk_darwin(v57);
  v55 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_263EE0();
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = *(v58 + 64);
  __chkstk_darwin(v4);
  v54 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ColorConstants(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v53 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2EF0(&qword_318458, &unk_26B270);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v51 - v12;
  v14 = sub_262730();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _s24RecommendationSwooshItemVMa(0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for FontConstants(0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for GridItemMetadataRecommendationLockupView(0);
  v52 = (v1 + *(v27 + 28));
  v29 = *v52;
  v28 = v52[1];
  v30 = *(v27 + 20);

  sub_40D40(v26);
  sub_25036C(v26, v22, type metadata accessor for FontConstants.Environment);
  (*(v15 + 104))(v18, enum case for Font.TextStyle.footnote(_:), v14);
  v31 = sub_2625C0();
  (*(*(v31 - 8) + 56))(v13, 1, 1, v31);
  sub_262680();
  sub_8E80(v13, &qword_318458, &unk_26B270);
  (*(v15 + 8))(v18, v14);
  sub_262630();
  sub_2626B0();

  sub_25045C(v22, _s24RecommendationSwooshItemVMa);
  v32 = sub_262840();
  v34 = v33;
  LOBYTE(v22) = v35;

  v36 = v53;
  sub_404B8(v53);
  _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  sub_25045C(v36, type metadata accessor for ColorConstants);
  v37 = sub_2627E0();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v53 = v42;
  sub_39DBC(v32, v34, v22 & 1);

  v44 = v52[4];
  KeyPath = swift_getKeyPath();
  v63 = v37;
  v64 = v39;
  LOBYTE(v32) = v41 & 1;
  v65 = v41 & 1;
  v66 = v43;
  v67 = KeyPath;
  v68 = v44;
  v69 = 0;
  v46 = v56;
  v47 = v55;
  v48 = v57;
  (*(v56 + 104))(v55, enum case for AutomationSemantics.Subcomponent.title(_:), v57);
  memset(v62, 0, sizeof(v62));
  memset(v61, 0, sizeof(v61));
  v49 = v54;
  sub_263EC0();
  sub_8E80(v61, &qword_316200, &qword_267FD0);
  sub_8E80(v62, &qword_316200, &qword_267FD0);
  (*(v46 + 8))(v47, v48);
  sub_2EF0(&qword_3189D8, &unk_27CEE0);
  sub_58070();
  sub_262930();
  (*(v58 + 8))(v49, v59);
  sub_39DBC(v37, v39, v32);
}

uint64_t sub_2500B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_250120()
{
  v1 = type metadata accessor for GridItemMetadataRecommendationLockupView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_261180();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = v4 + v1[5];
  sub_2EF0(&qword_316C08, &unk_26AEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v9 = sub_261690();
    (*(*(v9 - 8) + 8))(&v7[v8], v9);
  }

  else
  {
    v10 = *v7;
  }

  v11 = v4 + v1[6];
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v13 = sub_261690();
    (*(*(v13 - 8) + 8))(&v11[v12], v13);
  }

  else
  {
    v14 = *v11;
  }

  v15 = (v4 + v1[7]);
  v16 = v15[1];

  v17 = v15[3];

  sub_3080(v15 + 6);
  v18 = *(v4 + v1[8] + 8);

  return swift_deallocObject();
}

uint64_t sub_25036C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2503D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for GridItemMetadataRecommendationLockupView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24EC94(a1, v6, a2);
}

uint64_t sub_25045C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2504F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FontConstants.Environment(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_250578(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FontConstants.Environment(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t CoverStackView.init(layout:enableOverscrollEffects:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for CoverStackView();
  *(a4 + *(result + 36)) = a2;
  return result;
}

uint64_t CoverStackView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v76 = sub_260290();
  v75 = *(v76 - 8);
  v3 = *(v75 + 64);
  __chkstk_darwin(v76);
  v71 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v73 = &v69 - v6;
  v74 = sub_264410();
  v72 = *(v74 - 8);
  v7 = *(v72 + 64);
  __chkstk_darwin(v74);
  v69 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v70 = &v69 - v10;
  v96 = sub_262370();
  v94 = *(v96 - 8);
  v11 = *(v94 + 64);
  __chkstk_darwin(v96);
  v93 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v15 = sub_2646F0();
  v16 = sub_2F9C(&qword_328A40, &qword_28F0E8);
  WitnessTable = swift_getWitnessTable();
  v111 = v15;
  v112 = &type metadata for Double;
  v113 = v16;
  v114 = WitnessTable;
  v115 = &protocol witness table for Double;
  v81 = sub_2633D0();
  v110 = sub_251298();
  v80 = swift_getWitnessTable();
  v18 = sub_263300();
  v83 = *(v18 - 8);
  v19 = *(v83 + 64);
  __chkstk_darwin(v18);
  v21 = &v69 - v20;
  v22 = sub_261730();
  v85 = *(v22 - 8);
  v23 = *(v85 + 64);
  __chkstk_darwin(v22);
  v25 = &v69 - v24;
  v26 = sub_261730();
  v89 = *(v26 - 8);
  v27 = *(v89 + 64);
  __chkstk_darwin(v26);
  v29 = &v69 - v28;
  v77 = swift_getWitnessTable();
  v108 = v77;
  v109 = &protocol witness table for _OffsetEffect;
  v78 = swift_getWitnessTable();
  v106 = v78;
  v107 = &protocol witness table for _FrameLayout;
  v30 = swift_getWitnessTable();
  v82 = v26;
  v111 = v26;
  v112 = v30;
  v79 = v30;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v86 = *(OpaqueTypeMetadata2 - 8);
  v32 = *(v86 + 64);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v84 = &v69 - v33;
  sub_262420();
  v87 = OpaqueTypeMetadata2;
  v88 = sub_261730();
  v95 = *(v88 - 8);
  v34 = *(v95 + 64);
  __chkstk_darwin(v88);
  v98 = &v69 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v91 = &v69 - v37;
  __chkstk_darwin(v38);
  v92 = &v69 - v39;
  sub_263560();
  v99 = v13;
  v100 = v14;
  v101 = v90;
  sub_2632F0();
  (*(v14 + 48))(v13, v14);
  sub_262DC0();
  (*(v83 + 8))(v21, v18);
  (*(v14 + 32))(v13, v14);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v40 = v29;
  sub_262DA0();
  (*(v85 + 8))(v25, v22);
  v41 = v13;
  v85 = *(v14 + 56);
  if ((v85)(v13, v14))
  {
    v42 = v93;
    sub_262350();
  }

  else
  {
    v42 = v93;
    sub_262360();
  }

  v43 = v84;
  v44 = v82;
  v45 = v79;
  sub_262C70();
  (*(v94 + 8))(v42, v96);
  (*(v89 + 8))(v40, v44);
  v111 = (*(v14 + 64))(v41, v14);
  v112 = v46;
  v104 = v44;
  v105 = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10A84();
  v48 = v87;
  sub_262C00();

  (*(v86 + 8))(v43, v48);
  if ((v85)(v41, v14))
  {
    v49 = v70;
    sub_2643A0();
    v96 = OpaqueTypeConformance2;
    v50 = v73;
    sub_260260();
    v51 = v72;
    v52 = v74;
    (*(v72 + 16))(v69, v49, v74);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v54 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v55 = v75;
    v56 = v76;
    (*(v75 + 16))(v71, v50, v76);
    v57 = sub_264490();
    v59 = v58;
    v60 = v50;
    OpaqueTypeConformance2 = v96;
    (*(v55 + 8))(v60, v56);
    (*(v51 + 8))(v49, v52);
  }

  else
  {
    v57 = 0;
    v59 = 0xE000000000000000;
  }

  v111 = v57;
  v112 = v59;
  v61 = v91;
  v62 = v88;
  v63 = v98;
  sub_261710();

  v64 = *(v95 + 8);
  v64(v63, v62);
  v65 = sub_253A3C(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier);
  v102 = OpaqueTypeConformance2;
  v103 = v65;
  v66 = swift_getWitnessTable();
  v67 = v92;
  sub_1609C(v61, v62, v66);
  v64(v61, v62);
  sub_1609C(v67, v62, v66);
  return (v64)(v67, v62);
}

unint64_t sub_251298()
{
  result = qword_328A48;
  if (!qword_328A48)
  {
    sub_2F9C(&qword_328A40, &qword_28F0E8);
    sub_25137C(&qword_328A50, &qword_328A58, &qword_28F0F0, sub_251430);
    sub_25137C(&qword_328A88, &qword_328A90, &qword_28F110, sub_25162C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328A48);
  }

  return result;
}

uint64_t sub_25137C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    a4();
    sub_253A3C(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_251430()
{
  result = qword_328A60;
  if (!qword_328A60)
  {
    sub_2F9C(&qword_328A68, &qword_28F0F8);
    sub_2F9C(&qword_3188E0, &qword_274300);
    sub_2F9C(&qword_328A70, &qword_28F100);
    sub_E2390();
    sub_2F9C(&qword_328A78, &qword_28F108);
    sub_2618D0();
    sub_253A3C(&qword_328A80, &type metadata accessor for EmptyVisualEffect);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2515C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328A60);
  }

  return result;
}

unint64_t sub_2515C8()
{
  result = qword_31ECF8;
  if (!qword_31ECF8)
  {
    sub_2F9C(&qword_31ED00, &qword_2794B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31ECF8);
  }

  return result;
}

unint64_t sub_25162C()
{
  result = qword_328A98;
  if (!qword_328A98)
  {
    sub_2F9C(&qword_328AA0, &qword_28F118);
    sub_2516B8();
    sub_2515C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328A98);
  }

  return result;
}

unint64_t sub_2516B8()
{
  result = qword_328AA8[0];
  if (!qword_328AA8[0])
  {
    sub_2F9C(&qword_3260F0, &qword_2890C0);
    sub_E2390();
    result = swift_getWitnessTable();
    atomic_store(result, qword_328AA8);
  }

  return result;
}

uint64_t sub_251744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  v34 = type metadata accessor for CoverStackView();
  v7 = *(v34 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v34);
  v10 = v29 - v9;
  swift_getAssociatedTypeWitness();
  v11 = sub_2646F0();
  v32 = v11;
  v12 = sub_2F9C(&qword_328A40, &qword_28F0E8);
  v31 = v12;
  WitnessTable = swift_getWitnessTable();
  v39 = v11;
  v40 = &type metadata for Double;
  v41 = v12;
  v42 = WitnessTable;
  v43 = &protocol witness table for Double;
  v13 = sub_2633D0();
  v33 = *(v13 - 8);
  v14 = *(v33 + 64);
  __chkstk_darwin(v13);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = v29 - v19;
  v39 = (*(a3 + 40))(a2, a3, v18);
  v36 = a2;
  v37 = a3;
  v29[1] = swift_getKeyPath();
  v21 = a1;
  v22 = v34;
  (*(v7 + 16))(v10, v21, v34);
  v23 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  *(v24 + 24) = a3;
  (*(v7 + 32))(v24 + v23, v10, v22);
  v28 = sub_251298();
  sub_2633B0();
  v38 = v28;
  v25 = swift_getWitnessTable();
  sub_1609C(v16, v13, v25);
  v26 = *(v33 + 8);
  v26(v16, v13);
  sub_1609C(v20, v13, v25);
  return (v26)(v20, v13);
}

void sub_251AA8(uint64_t a1@<X1>, uint64_t a2@<X2>, double *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(a1 + a2 - 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 24);
  v8 = swift_checkMetadataState();
  *a3 = v7(v8, AssociatedConformanceWitness);
}

uint64_t sub_251B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v156 = a1;
  v165 = a5;
  v145 = sub_2EF0(&qword_328AA0, &qword_28F118);
  v8 = *(*(v145 - 8) + 64);
  __chkstk_darwin(v145);
  v139 = (&v135 - v9);
  v164 = sub_2EF0(&qword_328A90, &qword_28F110);
  v10 = *(*(v164 - 8) + 64);
  __chkstk_darwin(v164);
  v159 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v147 = &v135 - v13;
  v162 = sub_2EF0(&qword_328B30, &qword_28F1F0);
  v14 = *(*(v162 - 8) + 64);
  __chkstk_darwin(v162);
  v163 = &v135 - v15;
  v16 = sub_260290();
  v153 = *(v16 - 8);
  v154 = v16;
  v17 = *(v153 + 64);
  __chkstk_darwin(v16);
  v150 = &v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v151 = &v135 - v20;
  v160 = sub_264410();
  v152 = *(v160 - 8);
  v21 = *(v152 + 64);
  __chkstk_darwin(v160);
  v148 = &v135 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v149 = &v135 - v24;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v142 = *(AssociatedTypeWitness - 8);
  v140 = *(v142 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v141 = &v135 - v26;
  v155 = type metadata accessor for CoverStackView();
  v138 = *(v155 - 8);
  v136 = *(v138 + 64);
  __chkstk_darwin(v155);
  v157 = &v135 - v27;
  v167 = sub_2EF0(&qword_3188E0, &qword_274300);
  v28 = *(*(v167 - 8) + 64);
  __chkstk_darwin(v167);
  v135 = (&v135 - v29);
  v144 = sub_2EF0(&qword_328A68, &qword_28F0F8);
  v30 = *(*(v144 - 8) + 64);
  __chkstk_darwin(v144);
  v143 = &v135 - v31;
  v161 = sub_2EF0(&qword_328A58, &qword_28F0F0);
  v32 = *(*(v161 - 8) + 64);
  __chkstk_darwin(v161);
  v158 = &v135 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v34);
  v146 = &v135 - v36;
  v37 = *(a4 + 32);
  v38 = a2;
  v39 = v37(a3, a4, v35);
  v41 = v40;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v43 = v156;
  (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness, v39, v41);
  v168 = a3;
  v166 = a4;
  (v37)(a3, a4);
  v44 = v43;
  v45 = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v47 = v46;
  v48 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v49 = *(AssociatedConformanceWitness + 16);
  v137 = AssociatedTypeWitness;
  v49(&v181, AssociatedTypeWitness, AssociatedConformanceWitness);
  v50 = v155;
  v51 = *(v155 + 36);
  v169 = v38;
  if (*(v38 + v51) == 1)
  {
    KeyPath = swift_getKeyPath();
    v53 = v135;
    *v135 = KeyPath;
    *(v53 + 40) = 0;
    *(v53 + 48) = swift_getKeyPath();
    *(v53 + 56) = 0;
    v54 = type metadata accessor for CoverView();
    v55 = v54[6];
    *(v53 + v55) = swift_getKeyPath();
    sub_2EF0(&qword_316C00, &qword_26A520);
    swift_storeEnumTagMultiPayload();
    v56 = v54[7];
    *(v53 + v56) = swift_getKeyPath();
    sub_2EF0(&qword_317E08, &qword_26A550);
    swift_storeEnumTagMultiPayload();
    v57 = (v53 + v54[8]);
    sub_5757C(&v181, &v170);
    type metadata accessor for ProfileRestrictions();
    sub_253A3C(&qword_326DC0, type metadata accessor for ProfileRestrictions);
    *v57 = sub_261900();
    v57[1] = v58;
    v59 = v53 + v54[9];
    LOBYTE(v178) = 1;
    sub_2631D0();
    v60 = *(&v170 + 1);
    *v59 = v170;
    *(v59 + 8) = v60;
    v61 = (v53 + v54[10]);
    v62 = v186;
    v61[4] = v185;
    v61[5] = v62;
    v63 = v188;
    v61[6] = v187;
    v61[7] = v63;
    v64 = v182;
    *v61 = v181;
    v61[1] = v64;
    v65 = v184;
    v61[2] = v183;
    v61[3] = v65;
    *(v53 + v54[11]) = 0;
    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    sub_2613A0();
    v66 = (v53 + *(v167 + 36));
    v67 = v179;
    *v66 = v178;
    v66[1] = v67;
    v66[2] = v180;
    v68 = v138;
    (*(v138 + 16))(v157, v169, v50);
    v70 = v141;
    v69 = v142;
    v71 = v137;
    (*(v142 + 16))(v141, v44, v137);
    v72 = (*(v68 + 80) + 32) & ~*(v68 + 80);
    v73 = (v136 + v72 + *(v69 + 80)) & ~*(v69 + 80);
    v74 = swift_allocObject();
    v75 = v166;
    *(v74 + 16) = v168;
    *(v74 + 24) = v75;
    (*(v68 + 32))(v74 + v72, v157, v50);
    (*(v69 + 32))(v74 + v73, v70, v71);
    sub_2EF0(&qword_328A70, &qword_28F100);
    sub_E2390();
    v76 = sub_2F9C(&qword_328A78, &qword_28F108);
    v77 = sub_2618D0();
    v78 = sub_253A3C(&qword_328A80, &type metadata accessor for EmptyVisualEffect);
    *&v170 = v77;
    *(&v170 + 1) = v78;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v170 = v76;
    *(&v170 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v80 = v143;
    sub_262AE0();

    sub_8E80(v53, &qword_3188E0, &qword_274300);
    *(v80 + *(v144 + 36)) = v48;
    v81 = v166;
    v82 = *(v166 + 56);
    v83 = v168;
    if (v82(v168, v166))
    {
      sub_2F8C4(&v181);
      v84 = 0;
      v85 = 0xE000000000000000;
    }

    else
    {
      v174 = v185;
      v175 = v186;
      v176 = v187;
      v177 = v188;
      v170 = v181;
      v171 = v182;
      v172 = v183;
      v173 = v184;
      v84 = CoverViewModel.axLabel.getter();
      v85 = v108;
      sub_2F8C4(&v181);
    }

    *&v170 = v84;
    *(&v170 + 1) = v85;
    sub_251430();
    sub_10A84();
    sub_262C00();

    sub_8E80(v80, &qword_328A68, &qword_28F0F8);
    if (v82(v83, v81))
    {
      v109 = 0;
      v110 = 0xE000000000000000;
    }

    else
    {
      v114 = v149;
      sub_2643A0();
      v115 = v151;
      sub_260260();
      v116 = v152;
      (*(v152 + 16))(v148, v114, v160);
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v118 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v120 = v153;
      v119 = v154;
      (*(v153 + 16))(v150, v115, v154);
      v109 = sub_264490();
      v110 = v121;
      (*(v120 + 8))(v115, v119);
      (*(v116 + 8))(v114, v160);
    }

    *&v170 = v109;
    *(&v170 + 1) = v110;
    v122 = v146;
    v123 = v158;
    sub_261710();

    sub_8E80(v123, &qword_328A58, &qword_28F0F0);
    sub_253D88(v122, v163);
    swift_storeEnumTagMultiPayload();
    sub_25137C(&qword_328A50, &qword_328A58, &qword_28F0F0, sub_251430);
    sub_25137C(&qword_328A88, &qword_328A90, &qword_28F110, sub_25162C);
    sub_261F80();
    return sub_8E80(v122, &qword_328A58, &qword_28F0F0);
  }

  else
  {
    v86 = swift_getKeyPath();
    v87 = v139;
    *v139 = v86;
    *(v87 + 40) = 0;
    *(v87 + 48) = swift_getKeyPath();
    *(v87 + 56) = 0;
    v88 = type metadata accessor for CoverView();
    v89 = v88[6];
    *(v87 + v89) = swift_getKeyPath();
    sub_2EF0(&qword_316C00, &qword_26A520);
    swift_storeEnumTagMultiPayload();
    v90 = v88[7];
    *(v87 + v90) = swift_getKeyPath();
    sub_2EF0(&qword_317E08, &qword_26A550);
    swift_storeEnumTagMultiPayload();
    v91 = (v87 + v88[8]);
    sub_5757C(&v181, &v170);
    type metadata accessor for ProfileRestrictions();
    sub_253A3C(&qword_326DC0, type metadata accessor for ProfileRestrictions);
    *v91 = sub_261900();
    v91[1] = v92;
    v93 = v87 + v88[9];
    LOBYTE(v178) = 1;
    sub_2631D0();
    v94 = *(&v170 + 1);
    *v93 = v170;
    *(v93 + 8) = v94;
    v95 = (v87 + v88[10]);
    v96 = v186;
    v95[4] = v185;
    v95[5] = v96;
    v97 = v188;
    v95[6] = v187;
    v95[7] = v97;
    v98 = v182;
    *v95 = v181;
    v95[1] = v98;
    v99 = v184;
    v95[2] = v183;
    v95[3] = v99;
    *(v87 + v88[11]) = 0;
    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    sub_2613A0();
    v100 = (v87 + *(v167 + 36));
    v101 = v179;
    *v100 = v178;
    v100[1] = v101;
    v100[2] = v180;
    v102 = (v87 + *(sub_2EF0(&qword_3260F0, &qword_2890C0) + 36));
    *v102 = v45;
    *(v102 + 1) = v47;
    *(v87 + *(v145 + 36)) = v48;
    v103 = v166;
    v104 = *(v166 + 56);
    v105 = v168;
    if (v104(v168, v166))
    {
      sub_2F8C4(&v181);
      v106 = 0;
      v107 = 0xE000000000000000;
    }

    else
    {
      v174 = v185;
      v175 = v186;
      v176 = v187;
      v177 = v188;
      v170 = v181;
      v171 = v182;
      v172 = v183;
      v173 = v184;
      v106 = CoverViewModel.axLabel.getter();
      v107 = v111;
      sub_2F8C4(&v181);
    }

    *&v170 = v106;
    *(&v170 + 1) = v107;
    sub_25162C();
    sub_10A84();
    sub_262C00();

    sub_8E80(v87, &qword_328AA0, &qword_28F118);
    if (v104(v105, v103))
    {
      v112 = 0;
      v113 = 0xE000000000000000;
    }

    else
    {
      v125 = v149;
      sub_2643A0();
      v126 = v151;
      sub_260260();
      v127 = v152;
      (*(v152 + 16))(v148, v125, v160);
      type metadata accessor for BundleFinder();
      v128 = swift_getObjCClassFromMetadata();
      v129 = [objc_opt_self() bundleForClass:v128];
      v131 = v153;
      v130 = v154;
      (*(v153 + 16))(v150, v126, v154);
      v112 = sub_264490();
      v113 = v132;
      (*(v131 + 8))(v126, v130);
      (*(v127 + 8))(v125, v160);
    }

    *&v170 = v112;
    *(&v170 + 1) = v113;
    v133 = v147;
    v134 = v159;
    sub_261710();

    sub_8E80(v134, &qword_328A90, &qword_28F110);
    sub_253A84(v133, v163);
    swift_storeEnumTagMultiPayload();
    sub_25137C(&qword_328A50, &qword_328A58, &qword_28F0F0, sub_251430);
    sub_25137C(&qword_328A88, &qword_328A90, &qword_28F110, sub_25162C);
    sub_261F80();
    return sub_8E80(v133, &qword_328A90, &qword_28F110);
  }
}

uint64_t sub_252D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v47[0] = a2;
  v47[1] = a1;
  v49 = a4;
  v48 = sub_2EF0(&qword_328A78, &qword_28F108);
  v5 = *(v48 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v48);
  v8 = v47 - v7;
  v9 = sub_261FC0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_261620();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261610();
  sub_261430();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  (*(v15 + 8))(v18, v14);
  v52.origin.x = v20;
  v52.origin.y = v22;
  v52.size.width = v24;
  v52.size.height = v26;
  MinY = CGRectGetMinY(v52);
  v50 = 0xD00000000000001ALL;
  v51 = 0x80000000002950A0;
  sub_2621B0();
  sub_261440();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  (*(v10 + 8))(v13, v9);
  v53.origin.x = v29;
  v53.origin.y = v31;
  v53.size.width = v33;
  v53.size.height = v35;
  v36 = MinY - CGRectGetMinY(v53);
  if (v36 > 0.0)
  {
    v37 = v36;
  }

  else
  {
    v37 = 0.0;
  }

  v39 = *(a3 + 16);
  v38 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v41 = *(AssociatedConformanceWitness + 48);
  v42 = swift_checkMetadataState();
  v41(v42, AssociatedConformanceWitness, v37);
  (*(AssociatedConformanceWitness + 56))(v42, AssociatedConformanceWitness, v37);
  sub_263710();
  v43 = sub_2618D0();
  v44 = sub_253A3C(&qword_328A80, &type metadata accessor for EmptyVisualEffect);
  sub_261370();
  v50 = v43;
  v51 = v44;
  swift_getOpaqueTypeConformance2();
  v45 = v48;
  sub_261380();
  return (*(v5 + 8))(v8, v45);
}

uint64_t static CoverStackView.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 8);
  if (sub_264390())
  {
    v7 = type metadata accessor for CoverStackView();
    v8 = *(a1 + *(v7 + 36)) ^ *(a2 + *(v7 + 36)) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_253238(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2532B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        if (v9 > 2)
        {
          if (v9 == 3)
          {
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        else if (v9 == 1)
        {
          LODWORD(v9) = *a1;
        }

        else
        {
          LODWORD(v9) = *a1;
        }
      }

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *sub_253424(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t sub_253650(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_getAssociatedTypeWitness();
  sub_2646F0();
  sub_2F9C(&qword_328A40, &qword_28F0E8);
  swift_getWitnessTable();
  sub_2633D0();
  sub_251298();
  swift_getWitnessTable();
  sub_263300();
  sub_261730();
  sub_261730();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_262420();
  sub_261730();
  swift_getOpaqueTypeConformance2();
  sub_253A3C(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier);
  return swift_getWitnessTable();
}

__n128 sub_2538A4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2538B0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(type metadata accessor for CoverStackView() - 8);
  v4 = *(v3 + 64);
  (*(*(v2 - 8) + 8))(v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_253984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for CoverStackView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_251B54(a1, v8, v5, v6, a2);
}

uint64_t sub_253A3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_253A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_328A90, &qword_28F110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_253AF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for CoverStackView() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  (*(*(v1 - 8) + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v8, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_253C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = type metadata accessor for CoverStackView();
  v8 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v9 = *(*(v7 - 8) + 64);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  return sub_252D40(a1, v2 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)), v7, a2);
}

uint64_t sub_253D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_328A58, &qword_28F0F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t YearInReviewPagedFrame.exposureEventType.getter()
{
  v0 = sub_2605D0();
  sub_253E2C();
  return v0;
}

unint64_t sub_253E2C()
{
  result = qword_3174A8;
  if (!qword_3174A8)
  {
    sub_2605D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3174A8);
  }

  return result;
}

uint64_t EnvironmentValues.isRunningAccessibilityTools.getter()
{
  if (sub_261BE0() & 1) != 0 || (sub_261BF0())
  {
    return 1;
  }

  return sub_261BC0();
}

uint64_t (*EnvironmentValues.isRunningAccessibilityTools.modify(_BYTE *a1))(void)
{
  if (sub_261BE0() & 1) != 0 || (sub_261BF0())
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_261BC0();
  }

  *a1 = v2 & 1;
  return KeyedEncodingContainer.encode<A>(_:forKey:);
}

uint64_t ListItemView.init(_:contextActionMenuView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ListItemView();
  v9 = v8[5];
  *(a4 + v9) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v10 = v8[6];
  *(a4 + v10) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v11 = a4 + v8[7];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  v12 = a4 + v8[8];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = a4 + v8[9];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = a4 + v8[10];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  v15 = v8[11];
  *(a4 + v15) = swift_getKeyPath();
  sub_2EF0(&qword_318148, &unk_26AEE0);
  swift_storeEnumTagMultiPayload();
  v16 = a4 + v8[12];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  result = sub_25ECA4(a1, a4, type metadata accessor for ListItemViewModel);
  v18 = (a4 + v8[13]);
  *v18 = a2;
  v18[1] = a3;
  return result;
}

uint64_t type metadata accessor for ListItemView()
{
  result = qword_328CF0;
  if (!qword_328CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_254148(uint64_t a1, double a2)
{
  v5 = type metadata accessor for SizeConstants.Environment(0);
  v6 = *(v5 - 8);
  v38 = v5 - 8;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v36 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_262730();
  v9 = *(v35 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v35);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2EF0(&qword_3269B8, &qword_28B068);
  v14 = *(v13 - 8);
  v37 = v13 - 8;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v17 = (&v35 - v16);
  v18 = sub_2EF0(&qword_3269C0, &unk_28B070);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = (&v35 - v24);
  sub_25EBC8(v2, &v35 + *(v19 + 36) - v24, type metadata accessor for SizeConstants.Environment);
  *v25 = a2;
  sub_8198(v25, v22, &qword_3269C0, &unk_28B070);
  v26 = a1;
  v27 = v35;
  (*(v9 + 16))(v12, v26, v35);
  sub_8198(v22, v17, &qword_3269C0, &unk_28B070);
  v28 = v36;
  sub_25EBC8(&v22[*(v19 + 36)], v36, type metadata accessor for SizeConstants.Environment);
  v29 = *(v38 + 32);
  v30 = sub_1CF30(v12, v28 + v29);
  (*(v9 + 8))(v12, v27);
  sub_8E80(v22, &qword_3269C0, &unk_28B070);
  v31 = sub_261690();
  (*(*(v31 - 8) + 8))(v28 + v29, v31);
  v32 = 1.0;
  if ((*&v30 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v32 = v30;
  }

  if ((~*&v30 & 0x7FF0000000000000) != 0)
  {
    v32 = v30;
  }

  *(v17 + *(v37 + 44)) = v32;
  v33 = sub_21FD30(*v17);
  sub_8E80(v17, &qword_3269B8, &qword_28B068);
  sub_8E80(v25, &qword_3269C0, &unk_28B070);
  return v33;
}

uint64_t sub_2544C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316C10, &unk_26AF10);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for ListItemView();
  sub_8198(v1 + *(v12 + 20), v11, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_25ECA4(v11, a1, type metadata accessor for SizeConstants);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2546AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316C00, &qword_26A520);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for ListItemView();
  sub_8198(v1 + *(v12 + 24), v11, &qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_25ECA4(v11, a1, type metadata accessor for ColorConstants);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_254898()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for ListItemView() + 28);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_264900();
    v8 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_2549F0()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for ListItemView() + 32);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_264900();
    v8 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_254B48@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_318148, &unk_26AEE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for ListItemView();
  sub_8198(v1 + *(v12 + 44), v11, &qword_318148, &unk_26AEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_261690();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_264900();
    v16 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_254D50()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for ListItemView() + 48);
  result = *v6;
  if ((*(v6 + 8) & 1) == 0)
  {
    v8 = *v6;

    sub_264900();
    v9 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v8, 0);
    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return result;
}

uint64_t ListItemView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v259 = a1;
  v2 = sub_2EF0(&qword_328B38, &qword_28F410);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v233 = &v210 - v4;
  v231 = sub_2EF0(&qword_328B40, &qword_28F418);
  v5 = *(*(v231 - 8) + 64);
  __chkstk_darwin(v231);
  v234 = &v210 - v6;
  v258 = sub_2EF0(&qword_328B48, &qword_28F420);
  v7 = *(*(v258 - 8) + 64);
  __chkstk_darwin(v258);
  v232 = &v210 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v242 = &v210 - v10;
  v11 = type metadata accessor for SizeConstants.Spacing(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v229 = &v210 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = sub_2EF0(&qword_328B50, &qword_28F428);
  v14 = *(*(v230 - 8) + 64);
  __chkstk_darwin(v230);
  v227 = &v210 - v15;
  v236 = sub_2EF0(&qword_328B58, &qword_28F430);
  v16 = *(*(v236 - 8) + 64);
  __chkstk_darwin(v236);
  v237 = &v210 - v17;
  v18 = sub_2EF0(&qword_328B60, &qword_28F438);
  v239 = *(v18 - 8);
  v240 = v18;
  v19 = *(v239 + 64);
  __chkstk_darwin(v18);
  v238 = &v210 - v20;
  v253 = sub_2EF0(&qword_328B68, &qword_28F440);
  v21 = *(*(v253 - 8) + 64);
  __chkstk_darwin(v253);
  v235 = &v210 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v241 = &v210 - v24;
  v257 = sub_2EF0(&qword_328B70, &qword_28F448);
  v25 = *(*(v257 - 8) + 64);
  __chkstk_darwin(v257);
  v255 = &v210 - v26;
  v250 = sub_2EF0(&qword_328B78, &qword_28F450);
  v27 = *(*(v250 - 8) + 64);
  __chkstk_darwin(v250);
  v251 = &v210 - v28;
  v256 = sub_2EF0(&qword_328B80, &qword_28F458);
  v29 = *(*(v256 - 8) + 64);
  __chkstk_darwin(v256);
  v252 = &v210 - v30;
  v31 = sub_262370();
  v32 = *(v31 - 8);
  v243 = v31;
  v244 = v32;
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v249 = &v210 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_2EF0(&qword_31A480, &qword_273520);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v225 = &v210 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v228 = &v210 - v39;
  __chkstk_darwin(v40);
  v226 = &v210 - v41;
  v42 = sub_2EF0(&qword_31A0C8, &qword_26E2C0);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42 - 8);
  v217 = &v210 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v219 = &v210 - v46;
  __chkstk_darwin(v47);
  v218 = &v210 - v48;
  v213 = type metadata accessor for SizeConstants.Environment(0);
  v49 = *(*(v213 - 8) + 64);
  __chkstk_darwin(v213);
  v214 = &v210 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_262730();
  v215 = *(v51 - 8);
  v216 = v51;
  v52 = *(v215 + 64);
  __chkstk_darwin(v51);
  v223 = &v210 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v248 = &v210 - v55;
  v224 = sub_2EF0(&qword_31B4C0, &qword_27C030);
  v56 = *(*(v224 - 8) + 64);
  __chkstk_darwin(v224);
  v220 = &v210 - v57;
  v58 = type metadata accessor for SizeConstants(0);
  v59 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58 - 8);
  v221 = &v210 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v222 = &v210 - v62;
  __chkstk_darwin(v63);
  v65 = &v210 - v64;
  v66 = type metadata accessor for ListItemView();
  v245 = *(v66 - 8);
  v67 = *(v245 + 64);
  __chkstk_darwin(v66 - 8);
  v246 = v68;
  v247 = &v210 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = sub_261690();
  *&v260 = *(v254 - 8);
  v69 = *(v260 + 64);
  __chkstk_darwin(v254);
  v71 = &v210 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_2EF0(&qword_328B88, &qword_28F460);
  v73 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v75 = &v210 - v74;
  v76 = sub_2EF0(&qword_328B90, &qword_28F468);
  v77 = *(v76 - 8);
  v78 = *(v77 + 64);
  __chkstk_darwin(v76);
  v80 = &v210 - v79;
  v81 = sub_2EF0(&qword_328B98, &qword_28F470);
  v82 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v81);
  __chkstk_darwin(v83);
  v87 = v1;
  if (!*v1)
  {
    v235 = v75;
    v236 = v86;
    v89 = v65;
    v237 = v72;
    v238 = v80;
    v239 = v77;
    v240 = v76;
    v241 = &v210 - v85;
    v242 = v84;
    sub_254B48(v71);
    v90 = sub_261660();
    v91 = *(v260 + 8);
    *&v260 = v260 + 8;
    v232 = v91;
    (v91)(v71, v254);
    if (v90)
    {
      v233 = sub_261E60();
      LODWORD(v234) = 0;
    }

    else
    {
      LODWORD(v234) = 1;
      v233 = sub_261D30();
    }

    v146 = v215;
    v145 = v216;
    v148 = v213;
    v147 = v214;
    v149 = v89;
    v211 = v89;
    v212 = v87;
    v150 = v87;
    v151 = v247;
    sub_25EBC8(v150, v247, type metadata accessor for ListItemView);
    v152 = (*(v245 + 80) + 16) & ~*(v245 + 80);
    v246 = swift_allocObject();
    sub_25ECA4(v151, v246 + v152, type metadata accessor for ListItemView);
    LODWORD(v247) = sub_262560();
    sub_2544C0(v89);
    v153 = v248;
    v154 = v145;
    (*(v146 + 104))(v248, enum case for Font.TextStyle.body(_:), v145);
    v155 = v222;
    sub_25EBC8(v149, v222, type metadata accessor for SizeConstants);
    v156 = v223;
    (*(v146 + 16))(v223, v153, v145);
    v157 = v220;
    sub_25EBC8(v155, v220, type metadata accessor for SizeConstants);
    sub_25EBC8(v155, v147, type metadata accessor for SizeConstants.Environment);
    v158 = *(v148 + 24);
    v159 = sub_1CF30(v156, v147 + v158);
    v160 = v147;
    v161 = *(v146 + 8);
    v161(v156, v154);
    sub_25EC40(v155, type metadata accessor for SizeConstants);
    (v232)(v160 + v158, v254);
    v162 = 1.0;
    if ((*&v159 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v162 = v159;
    }

    if ((~*&v159 & 0x7FF0000000000000) != 0)
    {
      v162 = v159;
    }

    *(v157 + *(v224 + 36)) = v162;
    v161(v248, v154);
    sub_25EC40(v211, type metadata accessor for SizeConstants);
    sub_21FA54(9.0);
    sub_8E80(v157, &qword_31B4C0, &qword_27C030);
    sub_2610C0();
    v164 = v163;
    v166 = v165;
    v168 = v167;
    v170 = v169;
    LOBYTE(v261) = 0;
    v266 = 0;
    v171 = type metadata accessor for ListItemViewModel();
    v172 = v226;
    sub_8198(v212 + *(v171 + 40), v226, &qword_31A480, &qword_273520);
    v173 = type metadata accessor for CardInfo();
    v174 = (*(*(v173 - 8) + 48))(v172, 1, v173);
    v175 = v235;
    if (v174 == 1)
    {
      sub_8E80(v172, &qword_31A480, &qword_273520);
      v176 = sub_2601E0();
      v177 = v218;
      (*(*(v176 - 8) + 56))(v218, 1, 1, v176);
    }

    else
    {
      v178 = *(v173 + 20);
      v179 = sub_2601E0();
      v180 = *(v179 - 8);
      v177 = v218;
      (*(v180 + 16))(v218, v172 + v178, v179);
      sub_25EC40(v172, type metadata accessor for CardInfo);
      (*(v180 + 56))(v177, 0, 1, v179);
    }

    v181 = v255;
    v182 = v243;
    v183 = v237;
    KeyPath = swift_getKeyPath();
    v185 = (v175 + *(v183 + 9));
    v186 = sub_2EF0(&qword_31AD20, &unk_2799D0);
    sub_22148(v177, v185 + *(v186 + 28), &qword_31A0C8, &qword_26E2C0);
    *v185 = KeyPath;
    *v175 = v233;
    *(v175 + 8) = v234;
    *(v175 + 16) = 0;
    *(v175 + 24) = 0;
    v187 = v246;
    *(v175 + 32) = sub_25E3A0;
    *(v175 + 40) = v187;
    *(v175 + 48) = v247;
    *(v175 + 56) = v164;
    *(v175 + 64) = v166;
    *(v175 + 72) = v168;
    *(v175 + 80) = v170;
    *(v175 + 88) = 0;
    v188 = v249;
    sub_262350();
    sub_25D758();
    v189 = v238;
    sub_262C70();
    (*(v244 + 8))(v188, v182);
    sub_8E80(v175, &qword_328B88, &qword_28F460);
    v263 = 0uLL;
    sub_2EF0(&qword_316DD0, &qword_2692C0);
    sub_2631D0();
    v260 = v268;
    v190 = v269;
    v191 = v236;
    (*(v239 + 32))(v236, v189, v240);
    v192 = v241;
    v193 = v191 + *(v242 + 36);
    *v193 = v260;
    *(v193 + 16) = v190;
    v140 = &qword_328B98;
    v141 = &qword_28F470;
    sub_22148(v191, v192, &qword_328B98, &qword_28F470);
    sub_8198(v192, v251, &qword_328B98, &qword_28F470);
    swift_storeEnumTagMultiPayload();
    sub_25D664();
    sub_25D8C8();
    v194 = v252;
    sub_261F80();
    sub_8198(v194, v181, &qword_328B80, &qword_28F458);
    swift_storeEnumTagMultiPayload();
    sub_25D5D8();
    sub_25DC70();
    sub_261F80();
    sub_8E80(v194, &qword_328B80, &qword_28F458);
    v144 = v192;
    return sub_8E80(v144, v140, v141);
  }

  if (*v1 == 1)
  {
    v242 = v84;
    if (sub_2549F0() & 1) != 0 && (sub_254B48(v71), v88 = sub_261660(), (*(v260 + 8))(v71, v254), (v88))
    {
      v254 = sub_261E60();
      LODWORD(v260) = 0;
    }

    else
    {
      LODWORD(v260) = 1;
      v254 = sub_261D30();
    }

    v98 = v227;
    v99 = v247;
    sub_25EBC8(v87, v247, type metadata accessor for ListItemView);
    v100 = (*(v245 + 80) + 16) & ~*(v245 + 80);
    v101 = swift_allocObject();
    sub_25ECA4(v99, v101 + v100, type metadata accessor for ListItemView);
    LOBYTE(v99) = sub_262500();
    v102 = v221;
    sub_2544C0(v221);
    v103 = v229;
    sub_25ECA4(v102, v229, type metadata accessor for SizeConstants.Environment);
    sub_25EC40(v103, type metadata accessor for SizeConstants.Spacing);
    sub_2610C0();
    v105 = v104;
    v107 = v106;
    v109 = v108;
    v111 = v110;
    v266 = 0;
    v265 = 0;
    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    sub_261830();
    *&v267[55] = v271;
    *&v267[71] = v272;
    *&v267[87] = v273;
    *&v267[103] = v274;
    *&v267[7] = v268;
    *&v267[23] = v269;
    *&v267[39] = v270;
    v112 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    v114 = v113;
    v115 = v98 + *(v230 + 36);
    sub_2599E4(v115);
    v116 = (v115 + *(sub_2EF0(&qword_328C38, &qword_28F4D0) + 36));
    *v116 = v112;
    v116[1] = v114;
    *v98 = v254;
    *(v98 + 8) = v260;
    *(v98 + 16) = 0;
    *(v98 + 24) = 0;
    *(v98 + 32) = sub_25DF80;
    *(v98 + 40) = v101;
    *(v98 + 48) = v99;
    *(v98 + 56) = v105;
    *(v98 + 64) = v107;
    *(v98 + 72) = v109;
    *(v98 + 80) = v111;
    *(v98 + 88) = 0;
    v117 = *&v267[32];
    *(v98 + 137) = *&v267[48];
    *(v98 + 121) = v117;
    v118 = *v267;
    *(v98 + 105) = *&v267[16];
    *(v98 + 89) = v118;
    *(v98 + 200) = *&v267[111];
    v119 = *&v267[80];
    *(v98 + 185) = *&v267[96];
    *(v98 + 169) = v119;
    *(v98 + 153) = *&v267[64];
    v120 = type metadata accessor for ListItemViewModel();
    v121 = v228;
    sub_8198(v87 + *(v120 + 40), v228, &qword_31A480, &qword_273520);
    v122 = type metadata accessor for CardInfo();
    if ((*(*(v122 - 8) + 48))(v121, 1, v122) == 1)
    {
      sub_8E80(v121, &qword_31A480, &qword_273520);
      v123 = sub_2601E0();
      v124 = v219;
      (*(*(v123 - 8) + 56))(v219, 1, 1, v123);
    }

    else
    {
      v125 = *(v122 + 20);
      v126 = sub_2601E0();
      v127 = *(v126 - 8);
      v124 = v219;
      (*(v127 + 16))(v219, v121 + v125, v126);
      sub_25EC40(v121, type metadata accessor for CardInfo);
      (*(v127 + 56))(v124, 0, 1, v126);
    }

    v128 = v255;
    v129 = v243;
    v130 = v244;
    v131 = swift_getKeyPath();
    v132 = v237;
    v133 = &v237[*(v236 + 36)];
    v134 = sub_2EF0(&qword_31AD20, &unk_2799D0);
    sub_22148(v124, v133 + *(v134 + 28), &qword_31A0C8, &qword_26E2C0);
    *v133 = v131;
    sub_22148(v98, v132, &qword_328B50, &qword_28F428);
    v135 = v249;
    sub_262350();
    sub_25D9BC();
    v136 = v238;
    sub_262C70();
    (*(v130 + 8))(v135, v129);
    sub_8E80(v132, &qword_328B58, &qword_28F430);
    v261 = 0;
    v262 = 0;
    sub_2EF0(&qword_316DD0, &qword_2692C0);
    sub_2631D0();
    v260 = v263;
    v137 = v264;
    v138 = v235;
    (*(v239 + 32))(v235, v136, v240);
    v139 = v138 + *(v253 + 36);
    *v139 = v260;
    *(v139 + 16) = v137;
    v140 = &qword_328B68;
    v141 = &qword_28F440;
    v142 = v241;
    sub_22148(v138, v241, &qword_328B68, &qword_28F440);
    sub_8198(v142, v251, &qword_328B68, &qword_28F440);
    swift_storeEnumTagMultiPayload();
    sub_25D664();
    sub_25D8C8();
    v143 = v252;
    sub_261F80();
    sub_8198(v143, v128, &qword_328B80, &qword_28F458);
    swift_storeEnumTagMultiPayload();
    sub_25D5D8();
    sub_25DC70();
    sub_261F80();
    sub_8E80(v143, &qword_328B80, &qword_28F458);
    v144 = v142;
    return sub_8E80(v144, v140, v141);
  }

  v92 = v233;
  sub_259C58(v233);
  v93 = type metadata accessor for ListItemViewModel();
  v94 = v225;
  sub_8198(&v1[*(v93 + 40)], v225, &qword_31A480, &qword_273520);
  v95 = type metadata accessor for CardInfo();
  if ((*(*(v95 - 8) + 48))(v94, 1, v95) == 1)
  {
    sub_8E80(v94, &qword_31A480, &qword_273520);
    v96 = sub_2601E0();
    v97 = v217;
    (*(*(v96 - 8) + 56))(v217, 1, 1, v96);
  }

  else
  {
    v196 = *(v95 + 20);
    v197 = sub_2601E0();
    v198 = *(v197 - 8);
    v97 = v217;
    (*(v198 + 16))(v217, v94 + v196, v197);
    sub_25EC40(v94, type metadata accessor for CardInfo);
    (*(v198 + 56))(v97, 0, 1, v197);
  }

  v199 = v258;
  v200 = v255;
  v201 = swift_getKeyPath();
  v202 = v234;
  v203 = &v234[*(v231 + 36)];
  v204 = sub_2EF0(&qword_31AD20, &unk_2799D0);
  sub_22148(v97, v203 + *(v204 + 28), &qword_31A0C8, &qword_26E2C0);
  *v203 = v201;
  sub_22148(v92, v202, &qword_328B38, &qword_28F410);
  v263 = 0uLL;
  sub_2EF0(&qword_316DD0, &qword_2692C0);
  sub_2631D0();
  v260 = v268;
  v205 = v269;
  v206 = v202;
  v207 = v232;
  sub_22148(v206, v232, &qword_328B40, &qword_28F418);
  v208 = &v207[*(v199 + 36)];
  *v208 = v260;
  *(v208 + 2) = v205;
  v209 = v242;
  sub_22148(v207, v242, &qword_328B48, &qword_28F420);
  sub_8198(v209, v200, &qword_328B48, &qword_28F420);
  swift_storeEnumTagMultiPayload();
  sub_25D5D8();
  sub_25DC70();
  sub_261F80();
  return sub_8E80(v209, &qword_328B48, &qword_28F420);
}

uint64_t sub_2568DC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v365 = a2;
  v364 = a1;
  v353 = a3;
  v350 = type metadata accessor for ListItemMetadataView();
  v349 = *(v350 - 8);
  v3 = *(v349 + 64);
  __chkstk_darwin(v350);
  v340 = (&v295 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_2EF0(&qword_328D60, &qword_28F568);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v352 = &v295 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v295 - v9;
  __chkstk_darwin(v11);
  v360 = &v295 - v12;
  v347 = sub_2EF0(&qword_328D68, &qword_28F570);
  v346 = *(v347 - 8);
  v13 = *(v346 + 64);
  __chkstk_darwin(v347);
  v335 = &v295 - v14;
  v15 = type metadata accessor for SizeConstants.Spacing(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v307 = &v295 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v318 = &v295 - v19;
  __chkstk_darwin(v20);
  v306 = &v295 - v21;
  __chkstk_darwin(v22);
  v317 = &v295 - v23;
  __chkstk_darwin(v24);
  v329 = &v295 - v25;
  v26 = sub_2EF0(&qword_318458, &unk_26B270);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v326 = &v295 - v28;
  v325 = sub_263D20();
  v324 = *(v325 - 1);
  v29 = *(v324 + 64);
  __chkstk_darwin(v325);
  v323 = &v295 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_260BD0();
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v322 = &v295 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v327 = sub_2EF0(&qword_323E98, &qword_284470);
  v34 = *(*(v327 - 8) + 64);
  __chkstk_darwin(v327);
  v338 = &v295 - v35;
  v331 = sub_2EF0(&qword_328D70, &qword_28F578);
  v36 = *(*(v331 - 8) + 64);
  __chkstk_darwin(v331);
  v333 = &v295 - v37;
  v332 = sub_2EF0(&qword_328D78, &qword_28F580);
  v38 = *(*(v332 - 8) + 64);
  __chkstk_darwin(v332);
  v334 = &v295 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v330 = &v295 - v41;
  __chkstk_darwin(v42);
  v345 = &v295 - v43;
  v44 = sub_2EF0(&qword_328D80, &qword_28F588);
  v45 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44 - 8);
  v351 = &v295 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v358 = &v295 - v48;
  v354 = sub_2EF0(&qword_31B578, &qword_270C30);
  v49 = *(*(v354 - 8) + 64);
  __chkstk_darwin(v354);
  v304 = &v295 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v305 = &v295 - v52;
  __chkstk_darwin(v53);
  v339 = &v295 - v54;
  v356 = type metadata accessor for SizeConstants.Environment(0);
  v55 = *(*(v356 - 8) + 64);
  __chkstk_darwin(v356);
  v357 = &v295 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v344 = sub_2EF0(&qword_31B4C0, &qword_27C030);
  v57 = *(*(v344 - 8) + 64);
  __chkstk_darwin(v344);
  v316 = &v295 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v312 = &v295 - v60;
  __chkstk_darwin(v61);
  v321 = &v295 - v62;
  v363 = sub_262730();
  v362 = *(v363 - 8);
  v63 = *(v362 + 64);
  __chkstk_darwin(v363);
  v301 = &v295 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v65);
  v303 = &v295 - v66;
  __chkstk_darwin(v67);
  v300 = &v295 - v68;
  __chkstk_darwin(v69);
  v302 = &v295 - v70;
  __chkstk_darwin(v71);
  v314 = &v295 - v72;
  __chkstk_darwin(v73);
  v315 = &v295 - v74;
  __chkstk_darwin(v75);
  v310 = &v295 - v76;
  __chkstk_darwin(v77);
  v311 = &v295 - v78;
  __chkstk_darwin(v79);
  v320 = &v295 - v80;
  __chkstk_darwin(v81);
  v343 = &v295 - v82;
  __chkstk_darwin(v83);
  v337 = &v295 - v84;
  v85 = type metadata accessor for SizeConstants(0);
  v86 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v85 - 8);
  v299 = &v295 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v88);
  v298 = &v295 - v89;
  __chkstk_darwin(v90);
  v313 = &v295 - v91;
  __chkstk_darwin(v92);
  v328 = &v295 - v93;
  __chkstk_darwin(v94);
  v308 = &v295 - v95;
  __chkstk_darwin(v96);
  v309 = &v295 - v97;
  __chkstk_darwin(v98);
  v319 = &v295 - v99;
  __chkstk_darwin(v100);
  v342 = (&v295 - v101);
  __chkstk_darwin(v102);
  v336 = &v295 - v103;
  v104 = type metadata accessor for ListItemThumbnailView();
  v105 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104);
  v107 = &v295 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_2EF0(&qword_328D88, &qword_28F590);
  v109 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108);
  v111 = &v295 - v110;
  v112 = sub_2EF0(&qword_328D90, &qword_28F598);
  v113 = *(*(v112 - 8) + 64);
  __chkstk_darwin(v112 - 8);
  v115 = &v295 - v114;
  v341 = sub_2EF0(&qword_328D98, &qword_28F5A0);
  v116 = *(*(v341 - 8) + 64);
  __chkstk_darwin(v341);
  v348 = &v295 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v118);
  v120 = &v295 - v119;
  __chkstk_darwin(v121);
  v361 = &v295 - v122;
  if (qword_315930 != -1)
  {
    swift_once();
  }

  LODWORD(v359) = byte_31C408;
  v355 = v10;
  if (byte_31C408 == 1 && (v123 = [objc_opt_self() standardUserDefaults], v124 = v115, v125 = sub_264420(), v126 = objc_msgSend(v123, "integerForKey:", v125), v123, v125, v115 = v124, (v126 & 4) != 0))
  {
    v297 = sub_262FC0();
    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    sub_2613A0();
    v129 = v370;
    v130 = v371;
    v296 = v372;
    v131 = v373;
    v132 = v374;
    v295 = v375;
    v133 = sub_262550();
    sub_2610C0();
    LOBYTE(v376) = v130;
    LOBYTE(v368) = v131;
    LOBYTE(v366) = 0;
    *v111 = v297;
    *(v111 + 1) = v129;
    v111[16] = v130;
    v115 = v124;
    *(v111 + 3) = v296;
    v111[32] = v131;
    *(v111 + 5) = v132;
    v10 = v355;
    *(v111 + 6) = v295;
    v111[56] = v133;
    *(v111 + 8) = v134;
    *(v111 + 9) = v135;
    *(v111 + 10) = v136;
    *(v111 + 11) = v137;
    v111[96] = 0;
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_328DA0, &qword_28F5A8);
    sub_25EAE0();
    sub_25EB6C();
    sub_261F80();
  }

  else
  {
    sub_3E840(v365 + 8, v107);
    v127 = *(v104 + 20);
    *&v107[v127] = swift_getKeyPath();
    sub_2EF0(&qword_316C10, &unk_26AF10);
    swift_storeEnumTagMultiPayload();
    v128 = &v107[*(v104 + 24)];
    *v128 = swift_getKeyPath();
    v128[8] = 0;
    sub_25EBC8(v107, v111, type metadata accessor for ListItemThumbnailView);
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_328DA0, &qword_28F5A8);
    sub_25EAE0();
    sub_25EB6C();
    sub_261F80();
    sub_25EC40(v107, type metadata accessor for ListItemThumbnailView);
  }

  v138 = 0.0;
  v139 = sub_262550();
  if ((v364 & 1) != 0 && (*(v365 + 400) & 1) == 0)
  {
    v140 = v336;
    sub_2544C0(v336);
    v141 = sub_2549F0();
    v142 = ListItemThumbnailViewModel.unscaledTrailingPadding(isCompact:)(v141 & 1);
    v143 = v362;
    v144 = v337;
    v145 = v363;
    (*(v362 + 104))(v337, enum case for Font.TextStyle.body(_:), v363);
    sub_254148(v144, v142);
    (*(v143 + 8))(v144, v145);
    sub_25EC40(v140, type metadata accessor for SizeConstants);
  }

  sub_2610C0();
  v147 = v146;
  v149 = v148;
  v151 = v150;
  v153 = v152;
  sub_22148(v115, v120, &qword_328D90, &qword_28F598);
  v154 = &v120[*(v341 + 36)];
  *v154 = v139;
  *(v154 + 1) = v147;
  *(v154 + 2) = v149;
  *(v154 + 3) = v151;
  *(v154 + 4) = v153;
  v154[40] = 0;
  sub_22148(v120, v361, &qword_328D98, &qword_28F5A0);
  if ((v364 & 1) == 0)
  {
    v155 = v342;
    sub_2544C0(v342);
    v156 = v362;
    v157 = v343;
    v158 = v363;
    (*(v362 + 104))(v343, enum case for Font.TextStyle.body(_:), v363);
    v159 = v319;
    sub_25EBC8(v155, v319, type metadata accessor for SizeConstants);
    v160 = v320;
    (*(v156 + 16))(v320, v157, v158);
    v161 = v321;
    sub_25EBC8(v159, v321, type metadata accessor for SizeConstants);
    v162 = v357;
    sub_25EBC8(v159, v357, type metadata accessor for SizeConstants.Environment);
    v163 = *(v356 + 24);
    v164 = sub_1CF30(v160, v162 + v163);
    v165 = *(v156 + 8);
    v165(v160, v158);
    sub_25EC40(v159, type metadata accessor for SizeConstants);
    v166 = sub_261690();
    (*(*(v166 - 8) + 8))(v162 + v163, v166);
    v167 = 1.0;
    if ((*&v164 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v167 = v164;
    }

    if ((~*&v164 & 0x7FF0000000000000) == 0)
    {
      v164 = v167;
    }

    *(v161 + *(v344 + 36)) = v164;
    v165(v343, v158);
    sub_25EC40(v342, type metadata accessor for SizeConstants);
    v168 = v339;
    sub_25EBC8(v161, v339, type metadata accessor for SizeConstants.Environment);
    v169 = v161;
    v10 = v355;
    sub_8E80(v169, &qword_31B4C0, &qword_27C030);
    *(v168 + *(v354 + 36)) = v164;
    v138 = sub_21FA68(16.0);
    sub_8E80(v168, &qword_31B578, &qword_270C30);
  }

  v170 = v360;
  if (*(v365 + 400) == 1)
  {
    sub_254D50();
    isa = sub_2647E0().super.super.isa;
    v172 = v324;
    v173 = v323;
    v174 = v325;
    (*(v324 + 104))(v323, enum case for LocalizerContext.standalone(_:), v325);
    sub_260BA0();

    (*(v172 + 8))(v173, v174);
    v175 = v338;
    sub_260B10();
    v176 = v362;
    v177 = *(v362 + 104);
    v178 = v337;
    v179 = v363;
    v341 = v362 + 104;
    v325 = v177;
    (v177)(v337, enum case for Font.TextStyle.title(_:), v363);
    v180 = enum case for Font.Design.serif (_:);
    v181 = sub_2625C0();
    v182 = *(v181 - 8);
    v183 = v326;
    (*(v182 + 104))(v326, v180, v181);
    (*(v182 + 56))(v183, 0, 1, v181);
    sub_262650();
    v184 = sub_262680();
    sub_8E80(v183, &qword_318458, &unk_26B270);
    v185 = *(v176 + 8);
    v343 = (v176 + 8);
    v342 = v185;
    (v185)(v178, v179);
    KeyPath = swift_getKeyPath();
    v187 = (v175 + *(sub_2EF0(&qword_318470, &qword_26FBB0) + 36));
    *v187 = KeyPath;
    v187[1] = v184;
    v188 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
    v189 = swift_getKeyPath();
    v190 = (v175 + *(sub_2EF0(&qword_318460, &qword_26FBA0) + 36));
    *v190 = v189;
    v190[1] = v188;
    LOBYTE(v189) = sub_2624F0();
    v191 = v336;
    sub_2544C0(v336);
    v192 = v191;
    v193 = v329;
    sub_25ECA4(v192, v329, type metadata accessor for SizeConstants.Environment);
    sub_25EC40(v193, type metadata accessor for SizeConstants.Spacing);
    sub_2610C0();
    v194 = v175 + *(v327 + 36);
    *v194 = v189;
    *(v194 + 8) = v195;
    *(v194 + 16) = v196;
    *(v194 + 24) = v197;
    *(v194 + 32) = v198;
    *(v194 + 40) = 0;
    if (v364)
    {
      v199 = v309;
      sub_2544C0(v309);
      v200 = v311;
      v201 = v363;
      (v325)(v311, enum case for Font.TextStyle.body(_:), v363);
      v202 = v308;
      sub_25EBC8(v199, v308, type metadata accessor for SizeConstants);
      v203 = v310;
      (*(v362 + 16))(v310, v200, v201);
      v204 = v312;
      sub_25EBC8(v202, v312, type metadata accessor for SizeConstants);
      v205 = v357;
      sub_25EBC8(v202, v357, type metadata accessor for SizeConstants.Environment);
      v206 = *(v356 + 24);
      v207 = sub_1CF30(v203, v205 + v206);
      v208 = v342;
      (v342)(v203, v201);
      sub_25EC40(v202, type metadata accessor for SizeConstants);
      v209 = sub_261690();
      (*(*(v209 - 8) + 8))(v205 + v206, v209);
      v210 = 1.0;
      if ((*&v207 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        v210 = v207;
      }

      if ((~*&v207 & 0x7FF0000000000000) != 0)
      {
        v210 = v207;
      }

      *(v204 + *(v344 + 36)) = v210;
      v208(v200, v201);
      v175 = v338;
      sub_25EC40(v199, type metadata accessor for SizeConstants);
      sub_21FA54(44.0);
      sub_8E80(v204, &qword_31B4C0, &qword_27C030);
    }

    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    sub_261830();
    v211 = v333;
    sub_22148(v175, v333, &qword_323E98, &qword_284470);
    v212 = (v211 + *(v331 + 36));
    v213 = v381;
    v212[4] = v380;
    v212[5] = v213;
    v212[6] = v382;
    v214 = v377;
    *v212 = v376;
    v212[1] = v214;
    v215 = v379;
    v212[2] = v378;
    v212[3] = v215;
    v216 = v211;
    v217 = v330;
    sub_22148(v216, v330, &qword_328D70, &qword_28F578);
    *(v217 + *(v332 + 36)) = 0x3FF0000000000000;
    sub_22148(v217, v345, &qword_328D78, &qword_28F580);
    v218 = 0.0;
    if ((v364 & 1) == 0)
    {
      v219 = v328;
      sub_2544C0(v328);
      v220 = v315;
      v221 = v363;
      (v325)(v315, enum case for Font.TextStyle.body(_:), v363);
      v222 = v313;
      sub_25EBC8(v219, v313, type metadata accessor for SizeConstants);
      v223 = v314;
      (*(v362 + 16))(v314, v220, v221);
      v224 = v316;
      sub_25EBC8(v222, v316, type metadata accessor for SizeConstants);
      v225 = v357;
      sub_25EBC8(v222, v357, type metadata accessor for SizeConstants.Environment);
      v226 = *(v356 + 24);
      v227 = sub_1CF30(v223, v225 + v226);
      v228 = v342;
      (v342)(v223, v221);
      sub_25EC40(v222, type metadata accessor for SizeConstants);
      v229 = sub_261690();
      (*(*(v229 - 8) + 8))(v225 + v226, v229);
      v230 = 1.0;
      if ((*&v227 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        v230 = v227;
      }

      if ((~*&v227 & 0x7FF0000000000000) == 0)
      {
        v227 = v230;
      }

      *(v224 + *(v344 + 36)) = v227;
      v228(v220, v221);
      sub_25EC40(v328, type metadata accessor for SizeConstants);
      v231 = v339;
      sub_25EBC8(v224, v339, type metadata accessor for SizeConstants.Environment);
      sub_8E80(v224, &qword_31B4C0, &qword_27C030);
      *(v231 + *(v354 + 36)) = v227;
      v218 = sub_21FA68(16.0);
      sub_8E80(v231, &qword_31B578, &qword_270C30);
    }

    v232 = v345;
    v233 = v334;
    sub_8198(v345, v334, &qword_328D78, &qword_28F580);
    v234 = v335;
    sub_8198(v233, v335, &qword_328D78, &qword_28F580);
    v235 = v234 + *(sub_2EF0(&qword_328DC0, &qword_28F650) + 48);
    *v235 = v218;
    *(v235 + 8) = 0;
    *(v235 + 9) = v364 & 1;
    sub_8E80(v232, &qword_328D78, &qword_28F580);
    sub_8E80(v233, &qword_328D78, &qword_28F580);
    v237 = v358;
    sub_22148(v234, v358, &qword_328D68, &qword_28F570);
    v236 = 0;
    v170 = v360;
    v10 = v355;
  }

  else
  {
    v236 = 1;
    v237 = v358;
  }

  (*(v346 + 56))(v237, v236, 1, v347);
  if (v359 && (v238 = [objc_opt_self() standardUserDefaults], v239 = sub_264420(), v240 = objc_msgSend(v238, "integerForKey:", v239), v238, v239, (v240 & 2) != 0))
  {
    v243 = 1;
    v241 = v350;
  }

  else
  {
    v241 = v350;
    v242 = v340;
    sub_CA96C(v365 + 80, v340 + *(v350 + 20));
    *v242 = swift_getKeyPath();
    sub_2EF0(&qword_316DC8, &qword_276F60);
    swift_storeEnumTagMultiPayload();
    sub_25ECA4(v242, v10, type metadata accessor for ListItemMetadataView);
    v243 = 0;
  }

  (*(v349 + 56))(v10, v243, 1, v241);
  sub_22148(v10, v170, &qword_328D60, &qword_28F568);
  sub_8198(v365 + 360, &v366, &qword_31A488, &unk_272AA0);
  if (!v367)
  {
    sub_8E80(&v366, &qword_31A488, &unk_272AA0);
LABEL_52:
    v284 = 0;
    v365 = 0;
    v283 = 0.0;
    goto LABEL_53;
  }

  sub_F7CC(&v366, &v368);
  if (v359)
  {
    v244 = [objc_opt_self() standardUserDefaults];
    v245 = sub_264420();
    v246 = [v244 integerForKey:v245];

    if (v246)
    {
      sub_3080(&v368);
      goto LABEL_52;
    }
  }

  v247 = v369;
  sub_2E18(&v368, v369);
  v248 = type metadata accessor for ListItemAccessoryView();
  v249 = (*(*(v248 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v248);
  v251 = &v295 - v250;
  v252 = type metadata accessor for ListItemView();
  sub_25A248(*(v365 + *(v252 + 52)), *(v365 + *(v252 + 52) + 8), v247, v251);
  swift_getWitnessTable();
  v359 = sub_263310();
  sub_3080(&v368);
  v253 = (v362 + 104);
  v254 = (v362 + 16);
  v362 += 8;
  if (v364)
  {
    v255 = v298;
    sub_2544C0(v298);
    v256 = v255;
    v257 = v317;
    sub_25ECA4(v256, v317, type metadata accessor for SizeConstants.Environment);
    v258 = v302;
    v259 = v363;
    (*v253)(v302, enum case for Font.TextStyle.body(_:), v363);
    v260 = v306;
    sub_25EBC8(v257, v306, type metadata accessor for SizeConstants.Spacing);
    v261 = v300;
    (*v254)(v300, v258, v259);
    v262 = v305;
    sub_25EBC8(v260, v305, type metadata accessor for SizeConstants.Spacing);
    v263 = v357;
    sub_25EBC8(v260, v357, type metadata accessor for SizeConstants.Environment);
    v264 = *(v356 + 24);
    v265 = sub_1CF30(v261, v263 + v264);
    v266 = *v362;
    (*v362)(v261, v259);
    sub_25EC40(v260, type metadata accessor for SizeConstants.Spacing);
    v267 = sub_261690();
    (*(*(v267 - 8) + 8))(v263 + v264, v267);
    v268 = 1.0;
    if ((*&v265 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v268 = v265;
    }

    if ((~*&v265 & 0x7FF0000000000000) != 0)
    {
      v268 = v265;
    }

    *(v262 + *(v354 + 36)) = v268;
    v266(v258, v259);
    sub_25EC40(v317, type metadata accessor for SizeConstants.Spacing);
    v269 = 8.0;
  }

  else
  {
    v270 = v299;
    sub_2544C0(v299);
    v271 = v270;
    v272 = v318;
    sub_25ECA4(v271, v318, type metadata accessor for SizeConstants.Environment);
    v273 = v303;
    v274 = v363;
    (*v253)(v303, enum case for Font.TextStyle.body(_:), v363);
    v275 = v307;
    sub_25EBC8(v272, v307, type metadata accessor for SizeConstants.Spacing);
    v276 = v301;
    (*v254)(v301, v273, v274);
    v262 = v304;
    sub_25EBC8(v275, v304, type metadata accessor for SizeConstants.Spacing);
    v277 = v357;
    sub_25EBC8(v275, v357, type metadata accessor for SizeConstants.Environment);
    v278 = *(v356 + 24);
    v279 = sub_1CF30(v276, v277 + v278);
    v280 = *v362;
    (*v362)(v276, v274);
    sub_25EC40(v275, type metadata accessor for SizeConstants.Spacing);
    v281 = sub_261690();
    (*(*(v281 - 8) + 8))(v277 + v278, v281);
    v282 = 1.0;
    if ((*&v279 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v282 = v279;
    }

    if ((~*&v279 & 0x7FF0000000000000) != 0)
    {
      v282 = v279;
    }

    *(v262 + *(v354 + 36)) = v282;
    v280(v273, v274);
    sub_25EC40(v318, type metadata accessor for SizeConstants.Spacing);
    v269 = 16.0;
  }

  v283 = sub_21FA68(v269);
  sub_8E80(v262, &qword_31B578, &qword_270C30);
  v284 = v359;

  v365 = 0x4000000000000000;
  v170 = v360;
  v237 = v358;
LABEL_53:
  v285 = v361;
  v286 = v348;
  sub_8198(v361, v348, &qword_328D98, &qword_28F5A0);
  v287 = v351;
  sub_8198(v237, v351, &qword_328D80, &qword_28F588);
  v288 = v237;
  v289 = v352;
  sub_8198(v170, v352, &qword_328D60, &qword_28F568);
  v290 = v353;
  sub_8198(v286, v353, &qword_328D98, &qword_28F5A0);
  v291 = sub_2EF0(&qword_328DB8, &qword_28F5E8);
  v292 = v290 + v291[12];
  *v292 = v138;
  *(v292 + 8) = 0;
  *(v292 + 9) = v364 & 1;
  sub_8198(v287, v290 + v291[16], &qword_328D80, &qword_28F588);
  sub_8198(v289, v290 + v291[20], &qword_328D60, &qword_28F568);
  v293 = (v290 + v291[24]);
  *v293 = v283;
  v293[1] = 0.0;
  *(v293 + 2) = v284;
  *(v293 + 3) = v365;
  sub_8E80(v170, &qword_328D60, &qword_28F568);
  sub_8E80(v288, &qword_328D80, &qword_28F588);
  sub_8E80(v285, &qword_328D98, &qword_28F5A0);

  sub_8E80(v289, &qword_328D60, &qword_28F568);
  sub_8E80(v287, &qword_328D80, &qword_28F588);
  return sub_8E80(v286, &qword_328D98, &qword_28F5A0);
}

uint64_t sub_258F90@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v102 = a1;
  v5 = type metadata accessor for SizeConstants.Environment(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_262730();
  v100 = *(v9 - 8);
  v10 = *(v100 + 64);
  __chkstk_darwin(v9);
  v97 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v87 - v13;
  __chkstk_darwin(v15);
  v96 = &v87 - v16;
  __chkstk_darwin(v17);
  v104 = &v87 - v18;
  v19 = sub_2EF0(&qword_31B578, &qword_270C30);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v98 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v99 = &v87 - v23;
  v24 = type metadata accessor for SizeConstants.Spacing(0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v95 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v103 = &v87 - v28;
  __chkstk_darwin(v29);
  v94 = &v87 - v30;
  __chkstk_darwin(v31);
  v101 = &v87 - v32;
  v33 = type metadata accessor for SizeConstants(0);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v36 = &v87 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = &v87 - v38;
  v40 = sub_2EF0(&qword_328DD0, &qword_28F688);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40 - 8);
  v105 = &v87 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v45 = &v87 - v44;
  *v45 = sub_261D30();
  *(v45 + 1) = 0;
  v45[16] = 0;
  v46 = sub_2EF0(&qword_328DD8, &qword_28F690);
  sub_25BD68(a2, &v45[*(v46 + 44)]);
  sub_8198(a2 + 360, &v106, &qword_31A488, &unk_272AA0);
  if (!v107)
  {
    sub_8E80(&v106, &qword_31A488, &unk_272AA0);
LABEL_20:
    v83 = 0;
    v82 = 0.0;
    goto LABEL_21;
  }

  v91 = v14;
  v92 = v5;
  v93 = v19;
  sub_F7CC(&v106, v108);
  if (qword_315930 != -1)
  {
    swift_once();
  }

  if (byte_31C408)
  {
    v47 = [objc_opt_self() standardUserDefaults];
    v48 = sub_264420();
    v49 = [v47 integerForKey:v48];

    if (v49)
    {
      sub_3080(v108);
      goto LABEL_20;
    }
  }

  v88 = v8;
  v89 = v9;
  v90 = a3;
  v50 = v109;
  sub_2E18(v108, v109);
  v51 = type metadata accessor for ListItemAccessoryView();
  v52 = (*(*(v51 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v51);
  v54 = &v87 - v53;
  v55 = type metadata accessor for ListItemView();
  sub_25A248(*(a2 + *(v55 + 52)), *(a2 + *(v55 + 52) + 8), v50, v54);
  swift_getWitnessTable();
  v87 = sub_263310();
  sub_3080(v108);
  v56 = (v100 + 104);
  v57 = (v100 + 16);
  v100 += 8;
  if (v102)
  {
    sub_2544C0(v39);
    v58 = v101;
    sub_25ECA4(v39, v101, type metadata accessor for SizeConstants.Environment);
    v59 = v104;
    v60 = v89;
    (*v56)(v104, enum case for Font.TextStyle.body(_:), v89);
    v61 = v94;
    sub_25EBC8(v58, v94, type metadata accessor for SizeConstants.Spacing);
    v62 = v96;
    (*v57)(v96, v59, v60);
    v63 = v99;
    sub_25EBC8(v61, v99, type metadata accessor for SizeConstants.Spacing);
    v64 = v88;
    sub_25EBC8(v61, v88, type metadata accessor for SizeConstants.Environment);
    v65 = *(v92 + 24);
    v66 = sub_1CF30(v62, v64 + v65);
    v67 = *v100;
    (*v100)(v62, v60);
    sub_25EC40(v61, type metadata accessor for SizeConstants.Spacing);
    v68 = sub_261690();
    (*(*(v68 - 8) + 8))(v64 + v65, v68);
    v69 = 1.0;
    if ((*&v66 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v69 = v66;
    }

    if ((~*&v66 & 0x7FF0000000000000) != 0)
    {
      v69 = v66;
    }

    *(v63 + *(v93 + 36)) = v69;
    v67(v104, v60);
    sub_25EC40(v101, type metadata accessor for SizeConstants.Spacing);
    v70 = 8.0;
  }

  else
  {
    sub_2544C0(v36);
    v71 = v103;
    sub_25ECA4(v36, v103, type metadata accessor for SizeConstants.Environment);
    v72 = v91;
    v73 = v89;
    (*v56)(v91, enum case for Font.TextStyle.body(_:), v89);
    v74 = v95;
    sub_25EBC8(v71, v95, type metadata accessor for SizeConstants.Spacing);
    v75 = v97;
    (*v57)(v97, v72, v73);
    v63 = v98;
    sub_25EBC8(v74, v98, type metadata accessor for SizeConstants.Spacing);
    v76 = v88;
    sub_25EBC8(v74, v88, type metadata accessor for SizeConstants.Environment);
    v77 = *(v92 + 24);
    v78 = sub_1CF30(v75, v76 + v77);
    v79 = *v100;
    (*v100)(v75, v73);
    sub_25EC40(v74, type metadata accessor for SizeConstants.Spacing);
    v80 = sub_261690();
    (*(*(v80 - 8) + 8))(v76 + v77, v80);
    v81 = 1.0;
    if ((*&v78 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v81 = v78;
    }

    if ((~*&v78 & 0x7FF0000000000000) != 0)
    {
      v81 = v78;
    }

    *(v63 + *(v93 + 36)) = v81;
    v79(v91, v73);
    sub_25EC40(v103, type metadata accessor for SizeConstants.Spacing);
    v70 = 16.0;
  }

  v82 = sub_21FA68(v70);
  sub_8E80(v63, &qword_31B578, &qword_270C30);
  v83 = v87;

  a3 = v90;
LABEL_21:
  v84 = v105;
  sub_8198(v45, v105, &qword_328DD0, &qword_28F688);
  sub_8198(v84, a3, &qword_328DD0, &qword_28F688);
  v85 = (a3 + *(sub_2EF0(&qword_328DE0, &qword_28F698) + 48));
  *v85 = v82;
  v85[1] = 0.0;
  *(v85 + 2) = v83;
  sub_8E80(v45, &qword_328DD0, &qword_28F688);

  return sub_8E80(v84, &qword_328DD0, &qword_28F688);
}

uint64_t sub_2599E4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ColorConstants(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2617E0();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2EF0(&qword_3192C8, &unk_2793D0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v28 - v13;
  v15 = *(v7 + 28);
  v16 = enum case for RoundedCornerStyle.continuous(_:);
  v17 = sub_261DD0();
  (*(*(v17 - 8) + 104))(&v10[v15], v16, v17);
  __asm { FMOV            V0.2D, #12.0 }

  *v10 = _Q0;
  LOBYTE(v16) = sub_254898();
  sub_2546AC(v5);
  if (v16)
  {
    v23 = ColorConstants.vibrantButtonBackground.getter();
  }

  else
  {
    v24 = [objc_opt_self() secondarySystemBackgroundColor];
    v23 = sub_263070();
  }

  v25 = v23;
  sub_25EC40(v5, type metadata accessor for ColorConstants);
  sub_25ECA4(v10, v14, &type metadata accessor for RoundedRectangle);
  *&v14[*(v11 + 52)] = v25;
  *&v14[*(v11 + 56)] = 256;
  v26 = *(sub_2EF0(&qword_328DC8, &qword_28F658) + 36);
  *(a1 + v26) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  return sub_22148(v14, a1, &qword_3192C8, &unk_2793D0);
}

uint64_t sub_259C58@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v36 = sub_2EF0(&qword_328C90, &qword_28F4F0);
  v2 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v4 = &v33 - v3;
  v5 = sub_2EF0(&qword_328C80, &qword_28F4E8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v33 - v7;
  v33 = sub_2EF0(&qword_328DF0, &qword_28F6A8);
  v9 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v11 = &v33 - v10;
  v12 = sub_2EF0(&qword_328DF8, &qword_28F6B0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v33 - v14;
  v34 = sub_2EF0(&qword_328C60, &qword_28F4D8);
  v16 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v18 = &v33 - v17;
  v19 = sub_2EF0(&qword_328C70, &qword_28F4E0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = &v33 - v21;
  v23 = sub_25A33C();
  if (v23)
  {
    if (v23 != 1)
    {
      *v4 = sub_261E60();
      *(v4 + 1) = 0;
      v4[16] = 0;
      v31 = sub_2EF0(&qword_328E00, &qword_28F6B8);
      sub_25C63C(v1, &v4[*(v31 + 44)]);
      sub_8198(v4, v11, &qword_328C90, &qword_28F4F0);
      swift_storeEnumTagMultiPayload();
      sub_25DE98();
      sub_8E38(&qword_328C88, &qword_328C90, &qword_28F4F0);
      sub_261F80();
      v27 = v4;
      v29 = &qword_328C90;
      v30 = &qword_28F4F0;
      return sub_8E80(v27, v29, v30);
    }

    *v8 = sub_261E60();
    *(v8 + 1) = 0;
    v8[16] = 0;
    v24 = sub_2EF0(&qword_328E08, &qword_28F6C0);
    sub_25B5C8(v1, &v8[*(v24 + 44)]);
    v25 = &qword_328C80;
    v26 = &qword_28F4E8;
    sub_8198(v8, v15, &qword_328C80, &qword_28F4E8);
    swift_storeEnumTagMultiPayload();
    sub_8E38(&qword_328C68, &qword_328C70, &qword_28F4E0);
    sub_8E38(&qword_328C78, &qword_328C80, &qword_28F4E8);
    sub_261F80();
    sub_8198(v18, v11, &qword_328C60, &qword_28F4D8);
    swift_storeEnumTagMultiPayload();
    sub_25DE98();
    sub_8E38(&qword_328C88, &qword_328C90, &qword_28F4F0);
    sub_261F80();
    sub_8E80(v18, &qword_328C60, &qword_28F4D8);
    v27 = v8;
  }

  else
  {
    *v22 = sub_261D10();
    *(v22 + 1) = 0;
    v22[16] = 0;
    v28 = sub_2EF0(&qword_328E10, &qword_28F6C8);
    sub_25A56C(v1, &v22[*(v28 + 44)]);
    v25 = &qword_328C70;
    v26 = &qword_28F4E0;
    sub_8198(v22, v15, &qword_328C70, &qword_28F4E0);
    swift_storeEnumTagMultiPayload();
    sub_8E38(&qword_328C68, &qword_328C70, &qword_28F4E0);
    sub_8E38(&qword_328C78, &qword_328C80, &qword_28F4E8);
    sub_261F80();
    sub_8198(v18, v11, &qword_328C60, &qword_28F4D8);
    swift_storeEnumTagMultiPayload();
    sub_25DE98();
    sub_8E38(&qword_328C88, &qword_328C90, &qword_28F4F0);
    sub_261F80();
    sub_8E80(v18, &qword_328C60, &qword_28F4D8);
    v27 = v22;
  }

  v29 = v25;
  v30 = v26;
  return sub_8E80(v27, v29, v30);
}

uint64_t sub_25A248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(*(a3 - 8) + 64);
  v10 = __chkstk_darwin(a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v4, v10);
  sub_168FC(v12, a1, a2, a3, a4);
}

uint64_t sub_25A33C()
{
  v0 = sub_261690();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v17 - v6;
  v8 = sub_2549F0();
  sub_254B48(v7);
  v9 = *(v1 + 104);
  v10 = (v1 + 8);
  if (v8)
  {
    v9(v4, enum case for DynamicTypeSize.accessibility1(_:), v0);
    v11 = sub_261670();
    v12 = *v10;
    (*v10)(v4, v0);
    v12(v7, v0);
    if (v11)
    {
      return 0;
    }

    else
    {
      sub_254B48(v7);
      v9(v4, enum case for DynamicTypeSize.accessibility3(_:), v0);
      v16 = sub_261670();
      v12(v4, v0);
      v12(v7, v0);
      if (v16)
      {
        return 1;
      }

      else
      {
        return 2;
      }
    }
  }

  else
  {
    v9(v4, enum case for DynamicTypeSize.accessibility5(_:), v0);
    v14 = sub_261670();
    v15 = *v10;
    (*v10)(v4, v0);
    v15(v7, v0);
    return (v14 & 1) == 0;
  }
}

uint64_t sub_25A56C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a1;
  v66 = a2;
  v67 = type metadata accessor for ListItemThumbnailView();
  v2 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v4 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2EF0(&qword_328E18, &qword_28F6D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v72 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v61 - v9;
  v11 = sub_262730();
  v68 = *(v11 - 8);
  v69 = v11;
  v12 = *(v68 + 64);
  __chkstk_darwin(v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SizeConstants(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2EF0(&qword_328D88, &qword_28F590);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = &v61 - v21;
  v65 = sub_2EF0(&qword_328D98, &qword_28F5A0);
  v23 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v70 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v61 - v26;
  if (qword_315930 != -1)
  {
    swift_once();
  }

  if (byte_31C408 == 1 && (v28 = [objc_opt_self() standardUserDefaults], v29 = sub_264420(), v30 = objc_msgSend(v28, "integerForKey:", v29), v28, v29, (v30 & 4) != 0))
  {
    v64 = sub_262FC0();
    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    sub_2613A0();
    v35 = v76;
    v36 = v77;
    v63 = v78;
    v37 = v79;
    v62 = v80;
    v61 = v81;
    v38 = sub_262550();
    sub_2610C0();
    v75 = v36;
    v74 = v37;
    v73 = 0;
    v39 = v63;
    *v22 = v64;
    *(v22 + 1) = v35;
    v22[16] = v36;
    *(v22 + 3) = v39;
    v22[32] = v37;
    v40 = v61;
    *(v22 + 5) = v62;
    *(v22 + 6) = v40;
    v22[56] = v38;
    *(v22 + 8) = v41;
    *(v22 + 9) = v42;
    *(v22 + 10) = v43;
    *(v22 + 11) = v44;
    v22[96] = 0;
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_328DA0, &qword_28F5A8);
    sub_25EAE0();
    sub_25EB6C();
    sub_261F80();
    v31 = v71;
  }

  else
  {
    v31 = v71;
    sub_3E840(v71 + 8, v4);
    v32 = v67;
    v33 = *(v67 + 20);
    *&v4[v33] = swift_getKeyPath();
    sub_2EF0(&qword_316C10, &unk_26AF10);
    swift_storeEnumTagMultiPayload();
    v34 = &v4[*(v32 + 24)];
    *v34 = swift_getKeyPath();
    v34[8] = 0;
    sub_25EBC8(v4, v22, type metadata accessor for ListItemThumbnailView);
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_328DA0, &qword_28F5A8);
    sub_25EAE0();
    sub_25EB6C();
    sub_261F80();
    sub_25EC40(v4, type metadata accessor for ListItemThumbnailView);
  }

  v45 = sub_262550();
  sub_2544C0(v18);
  v46 = sub_2549F0();
  v47 = ListItemThumbnailViewModel.unscaledTrailingPadding(isCompact:)(v46 & 1);
  v49 = v68;
  v48 = v69;
  (*(v68 + 104))(v14, enum case for Font.TextStyle.body(_:), v69);
  sub_254148(v14, v47);
  (*(v49 + 8))(v14, v48);
  sub_25EC40(v18, type metadata accessor for SizeConstants);
  sub_2610C0();
  v50 = &v27[*(v65 + 36)];
  *v50 = v45;
  *(v50 + 1) = v51;
  *(v50 + 2) = v52;
  *(v50 + 3) = v53;
  *(v50 + 4) = v54;
  v50[40] = 0;
  *v10 = sub_261E60();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v55 = sub_2EF0(&qword_328E20, &qword_28F6D8);
  sub_25AC78(v31, &v10[*(v55 + 44)]);
  v56 = v70;
  sub_8198(v27, v70, &qword_328D98, &qword_28F5A0);
  v57 = v72;
  sub_8198(v10, v72, &qword_328E18, &qword_28F6D0);
  v58 = v66;
  sub_8198(v56, v66, &qword_328D98, &qword_28F5A0);
  v59 = sub_2EF0(&qword_328E28, &qword_28F6E0);
  sub_8198(v57, v58 + *(v59 + 48), &qword_328E18, &qword_28F6D0);
  sub_8E80(v10, &qword_328E18, &qword_28F6D0);
  sub_8E80(v27, &qword_328D98, &qword_28F5A0);
  sub_8E80(v57, &qword_328E18, &qword_28F6D0);
  return sub_8E80(v56, &qword_328D98, &qword_28F5A0);
}

uint64_t sub_25AC78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v81 = sub_2EF0(&qword_31B578, &qword_270C30);
  v3 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v81);
  v78 = &v69 - v4;
  v76 = type metadata accessor for SizeConstants.Environment(0);
  v5 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76);
  v79 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_262730();
  v80 = *(v82 - 8);
  v7 = *(v80 + 64);
  __chkstk_darwin(v82);
  v73 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v74 = &v69 - v10;
  v75 = sub_2EF0(&qword_31B4C0, &qword_27C030);
  v11 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v77 = &v69 - v12;
  v13 = type metadata accessor for SizeConstants(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v72 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v83 = &v69 - v17;
  v85 = type metadata accessor for ListItemMetadataView();
  v18 = *(v85 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v85);
  v21 = (&v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_2EF0(&qword_328D60, &qword_28F568);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v69 - v27;
  __chkstk_darwin(v29);
  v31 = &v69 - v30;
  if (qword_315930 != -1)
  {
    swift_once();
  }

  v32 = byte_31C408;
  if (byte_31C408 != 1)
  {
    goto LABEL_5;
  }

  v33 = v31;
  v34 = [objc_opt_self() standardUserDefaults];
  v35 = v25;
  v36 = v32;
  v37 = sub_264420();
  v38 = [v34 integerForKey:v37];

  v31 = v33;
  v32 = v36;
  v25 = v35;
  if ((v38 & 2) != 0)
  {
    (*(v18 + 56))(v28, 1, 1, v85);
  }

  else
  {
LABEL_5:
    v39 = v85;
    sub_CA96C(a1 + 80, v21 + *(v85 + 20));
    *v21 = swift_getKeyPath();
    sub_2EF0(&qword_316DC8, &qword_276F60);
    swift_storeEnumTagMultiPayload();
    sub_25ECA4(v21, v28, type metadata accessor for ListItemMetadataView);
    (*(v18 + 56))(v28, 0, 1, v39);
  }

  sub_22148(v28, v31, &qword_328D60, &qword_28F568);
  sub_8198(a1 + 360, &v86, &qword_31A488, &unk_272AA0);
  if (!v87)
  {
    sub_8E80(&v86, &qword_31A488, &unk_272AA0);
LABEL_17:
    v63 = 0;
    v65 = 0.0;
    goto LABEL_18;
  }

  sub_F7CC(&v86, v88);
  if (v32)
  {
    v40 = [objc_opt_self() standardUserDefaults];
    v41 = sub_264420();
    v42 = [v40 integerForKey:v41];

    if (v42)
    {
      sub_3080(v88);
      goto LABEL_17;
    }
  }

  v43 = v89;
  sub_2E18(v88, v89);
  v44 = type metadata accessor for ListItemAccessoryView();
  v85 = v25;
  v45 = (*(*(v44 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v44);
  v71 = v31;
  v47 = &v69 - v46;
  v48 = type metadata accessor for ListItemView();
  sub_25A248(*(a1 + *(v48 + 52)), *(a1 + *(v48 + 52) + 8), v43, v47);
  swift_getWitnessTable();
  v70 = sub_263310();
  sub_3080(v88);
  v49 = v83;
  sub_2544C0(v83);
  v50 = v74;
  v51 = v80;
  v52 = v82;
  (*(v80 + 104))(v74, enum case for Font.TextStyle.body(_:), v82);
  v53 = v72;
  sub_25EBC8(v49, v72, type metadata accessor for SizeConstants);
  v54 = v73;
  (*(v51 + 16))(v73, v50, v52);
  v55 = v77;
  sub_25EBC8(v53, v77, type metadata accessor for SizeConstants);
  v56 = v79;
  sub_25EBC8(v53, v79, type metadata accessor for SizeConstants.Environment);
  v57 = *(v76 + 24);
  v58 = sub_1CF30(v54, v56 + v57);
  v59 = *(v51 + 8);
  v59(v54, v52);
  sub_25EC40(v53, type metadata accessor for SizeConstants);
  v60 = sub_261690();
  v25 = v85;
  (*(*(v60 - 8) + 8))(v56 + v57, v60);
  v61 = 1.0;
  if ((*&v58 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v61 = v58;
  }

  if ((~*&v58 & 0x7FF0000000000000) == 0)
  {
    v58 = v61;
  }

  *(v55 + *(v75 + 36)) = v58;
  v62 = v52;
  v31 = v71;
  v59(v50, v62);
  v63 = v70;
  sub_25EC40(v83, type metadata accessor for SizeConstants);
  v64 = v78;
  sub_25EBC8(v55, v78, type metadata accessor for SizeConstants.Environment);
  sub_8E80(v55, &qword_31B4C0, &qword_27C030);
  *(v64 + *(v81 + 36)) = v58;
  v65 = sub_21FA68(16.0);
  sub_8E80(v64, &qword_31B578, &qword_270C30);

LABEL_18:
  sub_8198(v31, v25, &qword_328D60, &qword_28F568);
  v66 = v84;
  sub_8198(v25, v84, &qword_328D60, &qword_28F568);
  v67 = (v66 + *(sub_2EF0(&qword_328E30, &qword_28F6E8) + 48));
  *v67 = v65;
  v67[1] = 0.0;
  *(v67 + 2) = v63;
  sub_8E80(v31, &qword_328D60, &qword_28F568);

  return sub_8E80(v25, &qword_328D60, &qword_28F568);
}

uint64_t sub_25B5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2EF0(&qword_31B578, &qword_270C30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v62 - v6;
  v74 = type metadata accessor for SizeConstants.Environment(0);
  v8 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_262730();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v72 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v62 - v16;
  v73 = sub_2EF0(&qword_31B4C0, &qword_27C030);
  v18 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73);
  v20 = &v62 - v19;
  v21 = type metadata accessor for SizeConstants(0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v71 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v75 = &v62 - v25;
  v26 = sub_2EF0(&qword_328DD0, &qword_28F688);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v76 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v62 - v30;
  *v31 = sub_261D10();
  *(v31 + 1) = 0;
  v31[16] = 0;
  v32 = sub_2EF0(&qword_328DD8, &qword_28F690);
  sub_25BD68(a1, &v31[*(v32 + 44)]);
  sub_8198(a1 + 360, &v77, &qword_31A488, &unk_272AA0);
  if (!v78)
  {
    sub_8E80(&v77, &qword_31A488, &unk_272AA0);
LABEL_13:
    v55 = 0;
    v58 = 0.0;
    goto LABEL_14;
  }

  v67 = v20;
  v68 = v12;
  v69 = v11;
  v70 = a2;
  sub_F7CC(&v77, v79);
  if (qword_315930 != -1)
  {
    swift_once();
  }

  if (byte_31C408)
  {
    v33 = [objc_opt_self() standardUserDefaults];
    v34 = sub_264420();
    v35 = [v33 integerForKey:v34];

    if (v35)
    {
      sub_3080(v79);
      a2 = v70;
      goto LABEL_13;
    }
  }

  v36 = v80;
  sub_2E18(v79, v80);
  v37 = type metadata accessor for ListItemAccessoryView();
  v65 = v7;
  v66 = v4;
  v38 = (*(*(v37 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v37);
  v40 = &v62 - v39;
  v41 = type metadata accessor for ListItemView();
  sub_25A248(*(a1 + *(v41 + 52)), *(a1 + *(v41 + 52) + 8), v36, v40);
  swift_getWitnessTable();
  v64 = sub_263310();
  sub_3080(v79);
  v42 = v75;
  sub_2544C0(v75);
  v43 = v68;
  v44 = *(v68 + 104);
  v45 = v17;
  v63 = v17;
  v46 = v69;
  v44(v17, enum case for Font.TextStyle.body(_:), v69);
  v47 = v71;
  sub_25EBC8(v42, v71, type metadata accessor for SizeConstants);
  v48 = v72;
  (*(v43 + 16))(v72, v45, v46);
  v49 = v67;
  sub_25EBC8(v47, v67, type metadata accessor for SizeConstants);
  v62 = type metadata accessor for SizeConstants.Environment;
  sub_25EBC8(v47, v10, type metadata accessor for SizeConstants.Environment);
  v50 = *(v74 + 24);
  v51 = sub_1CF30(v48, &v10[v50]);
  v52 = *(v43 + 8);
  v52(v48, v46);
  sub_25EC40(v47, type metadata accessor for SizeConstants);
  v53 = sub_261690();
  v54 = &v10[v50];
  v55 = v64;
  (*(*(v53 - 8) + 8))(v54, v53);
  v56 = 1.0;
  if ((*&v51 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v56 = v51;
  }

  if ((~*&v51 & 0x7FF0000000000000) == 0)
  {
    v51 = v56;
  }

  *(v49 + *(v73 + 36)) = v51;
  v52(v63, v46);
  sub_25EC40(v75, type metadata accessor for SizeConstants);
  v57 = v65;
  sub_25EBC8(v49, v65, v62);
  sub_8E80(v49, &qword_31B4C0, &qword_27C030);
  *(v57 + *(v66 + 36)) = v51;
  v58 = sub_21FA68(16.0);
  sub_8E80(v57, &qword_31B578, &qword_270C30);

  a2 = v70;
LABEL_14:
  v59 = v76;
  sub_8198(v31, v76, &qword_328DD0, &qword_28F688);
  sub_8198(v59, a2, &qword_328DD0, &qword_28F688);
  v60 = (a2 + *(sub_2EF0(&qword_328DE0, &qword_28F698) + 48));
  *v60 = v58;
  v60[1] = 0.0;
  *(v60 + 2) = v55;
  sub_8E80(v31, &qword_328DD0, &qword_28F688);

  return sub_8E80(v59, &qword_328DD0, &qword_28F688);
}

uint64_t sub_25BD68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v85 = a1;
  v2 = type metadata accessor for ListItemMetadataView();
  v87 = *(v2 - 8);
  v88 = v2;
  v3 = *(v87 + 64);
  __chkstk_darwin(v2);
  v75 = (&v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = type metadata accessor for ListItemThumbnailView();
  v5 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_328D60, &qword_28F568);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v79 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v83 = &v71 - v12;
  __chkstk_darwin(v13);
  v86 = &v71 - v14;
  v81 = sub_262730();
  v15 = *(v81 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v81);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SizeConstants(0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_2EF0(&qword_328D88, &qword_28F590);
  v23 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76);
  v25 = &v71 - v24;
  v78 = sub_2EF0(&qword_328D98, &qword_28F5A0);
  v26 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v82 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v71 - v29;
  if (qword_315930 != -1)
  {
    swift_once();
  }

  v77 = byte_31C408;
  if (byte_31C408 == 1 && (v31 = [objc_opt_self() standardUserDefaults], v32 = sub_264420(), v33 = objc_msgSend(v31, "integerForKey:", v32), v31, v32, (v33 & 4) != 0))
  {
    v38 = sub_262FC0();
    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    sub_2613A0();
    v39 = v92;
    v40 = v93;
    v74 = v94;
    v41 = v95;
    v73 = v96;
    v72 = v97;
    v42 = sub_262550();
    sub_2610C0();
    v91 = v40;
    v90 = v41;
    v89 = 0;
    *v25 = v38;
    *(v25 + 1) = v39;
    v25[16] = v40;
    *(v25 + 3) = v74;
    v25[32] = v41;
    v43 = v72;
    *(v25 + 5) = v73;
    *(v25 + 6) = v43;
    v25[56] = v42;
    *(v25 + 8) = v44;
    *(v25 + 9) = v45;
    *(v25 + 10) = v46;
    *(v25 + 11) = v47;
    v25[96] = 0;
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_328DA0, &qword_28F5A8);
    sub_25EAE0();
    sub_25EB6C();
    sub_261F80();
    v34 = v85;
  }

  else
  {
    v34 = v85;
    sub_3E840(v85 + 8, v7);
    v35 = v80;
    v36 = *(v80 + 20);
    *&v7[v36] = swift_getKeyPath();
    sub_2EF0(&qword_316C10, &unk_26AF10);
    swift_storeEnumTagMultiPayload();
    v37 = &v7[*(v35 + 24)];
    *v37 = swift_getKeyPath();
    v37[8] = 0;
    sub_25EBC8(v7, v25, type metadata accessor for ListItemThumbnailView);
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_328DA0, &qword_28F5A8);
    sub_25EAE0();
    sub_25EB6C();
    sub_261F80();
    sub_25EC40(v7, type metadata accessor for ListItemThumbnailView);
  }

  v48 = sub_262550();
  sub_2544C0(v22);
  v49 = sub_2549F0();
  v50 = ListItemThumbnailViewModel.unscaledTrailingPadding(isCompact:)(v49 & 1);
  v51 = v81;
  (*(v15 + 104))(v18, enum case for Font.TextStyle.body(_:), v81);
  sub_254148(v18, v50);
  (*(v15 + 8))(v18, v51);
  sub_25EC40(v22, type metadata accessor for SizeConstants);
  sub_2610C0();
  v52 = v30;
  v53 = &v30[*(v78 + 36)];
  *v53 = v48;
  *(v53 + 1) = v54;
  *(v53 + 2) = v55;
  *(v53 + 3) = v56;
  *(v53 + 4) = v57;
  v53[40] = 0;
  if ((v77 & 1) != 0 && (v58 = [objc_opt_self() standardUserDefaults], v59 = sub_264420(), v60 = objc_msgSend(v58, "integerForKey:", v59), v58, v59, (v60 & 2) != 0))
  {
    v64 = 1;
    v61 = v88;
    v63 = v83;
  }

  else
  {
    v61 = v88;
    v62 = v75;
    sub_CA96C(v34 + 80, v75 + *(v88 + 20));
    *v62 = swift_getKeyPath();
    sub_2EF0(&qword_316DC8, &qword_276F60);
    swift_storeEnumTagMultiPayload();
    v63 = v83;
    sub_25ECA4(v62, v83, type metadata accessor for ListItemMetadataView);
    v64 = 0;
  }

  (*(v87 + 56))(v63, v64, 1, v61);
  v65 = v86;
  sub_22148(v63, v86, &qword_328D60, &qword_28F568);
  v66 = v82;
  sub_8198(v52, v82, &qword_328D98, &qword_28F5A0);
  v67 = v79;
  sub_8198(v65, v79, &qword_328D60, &qword_28F568);
  v68 = v84;
  sub_8198(v66, v84, &qword_328D98, &qword_28F5A0);
  v69 = sub_2EF0(&qword_328DE8, &qword_28F6A0);
  sub_8198(v67, v68 + *(v69 + 48), &qword_328D60, &qword_28F568);
  sub_8E80(v65, &qword_328D60, &qword_28F568);
  sub_8E80(v52, &qword_328D98, &qword_28F5A0);
  sub_8E80(v67, &qword_328D60, &qword_28F568);
  return sub_8E80(v66, &qword_328D98, &qword_28F5A0);
}

uint64_t sub_25C63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v139 = a2;
  v130 = sub_2EF0(&qword_31B578, &qword_270C30);
  v3 = *(*(v130 - 8) + 64);
  __chkstk_darwin(v130);
  v5 = &v117 - v4;
  v126 = type metadata accessor for SizeConstants.Environment(0);
  v6 = *(*(v126 - 8) + 64);
  __chkstk_darwin(v126);
  v127 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_2EF0(&qword_31B4C0, &qword_27C030);
  v8 = *(*(v128 - 8) + 64);
  __chkstk_darwin(v128);
  v129 = &v117 - v9;
  v140 = type metadata accessor for ListItemMetadataView();
  v136 = *(v140 - 8);
  v10 = *(v136 + 64);
  __chkstk_darwin(v140);
  v131 = (&v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for ListItemThumbnailView();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2EF0(&qword_328D60, &qword_28F568);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v138 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v135 = &v117 - v20;
  __chkstk_darwin(v21);
  v144 = &v117 - v22;
  v142 = sub_262730();
  v141 = *(v142 - 8);
  v23 = *(v141 + 8);
  __chkstk_darwin(v142);
  v123 = &v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v125 = &v117 - v26;
  __chkstk_darwin(v27);
  v133 = &v117 - v28;
  v29 = type metadata accessor for SizeConstants(0);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v122 = &v117 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v124 = &v117 - v33;
  __chkstk_darwin(v34);
  v36 = &v117 - v35;
  v37 = sub_2EF0(&qword_328D88, &qword_28F590);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37);
  v40 = &v117 - v39;
  v132 = sub_2EF0(&qword_328D98, &qword_28F5A0);
  v41 = *(*(v132 - 8) + 64);
  __chkstk_darwin(v132);
  v137 = &v117 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v143 = &v117 - v44;
  if (qword_315930 != -1)
  {
    swift_once();
  }

  v134 = byte_31C408;
  if (byte_31C408 == 1 && (v45 = [objc_opt_self() standardUserDefaults], v46 = a1, v47 = sub_264420(), v48 = objc_msgSend(v45, "integerForKey:", v47), v45, v47, a1 = v46, (v48 & 4) != 0))
  {
    v121 = sub_262FC0();
    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    sub_2613A0();
    v52 = v150;
    v53 = v151;
    v54 = v152;
    v119 = v5;
    v55 = v153;
    v120 = v154;
    v118 = v155;
    v56 = sub_262550();
    sub_2610C0();
    LOBYTE(v148) = v53;
    LOBYTE(v146) = v55;
    v145 = 0;
    *v40 = v121;
    *(v40 + 1) = v52;
    a1 = v46;
    v40[16] = v53;
    *(v40 + 3) = v54;
    v40[32] = v55;
    v5 = v119;
    v57 = v118;
    *(v40 + 5) = v120;
    *(v40 + 6) = v57;
    v40[56] = v56;
    *(v40 + 8) = v58;
    *(v40 + 9) = v59;
    *(v40 + 10) = v60;
    *(v40 + 11) = v61;
    v40[96] = 0;
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_328DA0, &qword_28F5A8);
    sub_25EAE0();
    sub_25EB6C();
    v51 = v143;
    sub_261F80();
  }

  else
  {
    sub_3E840(a1 + 8, v15);
    v49 = *(v12 + 20);
    *&v15[v49] = swift_getKeyPath();
    sub_2EF0(&qword_316C10, &unk_26AF10);
    swift_storeEnumTagMultiPayload();
    v50 = &v15[*(v12 + 24)];
    *v50 = swift_getKeyPath();
    v50[8] = 0;
    sub_25EBC8(v15, v40, type metadata accessor for ListItemThumbnailView);
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_328DA0, &qword_28F5A8);
    sub_25EAE0();
    sub_25EB6C();
    v51 = v143;
    sub_261F80();
    sub_25EC40(v15, type metadata accessor for ListItemThumbnailView);
  }

  v62 = sub_262520();
  sub_2544C0(v36);
  v63 = sub_2549F0();
  v64 = ListItemThumbnailViewModel.unscaledTrailingPadding(isCompact:)(v63 & 1);
  v65 = v141;
  v66 = *(v141 + 13);
  v67 = v133;
  LODWORD(v121) = enum case for Font.TextStyle.body(_:);
  v68 = v142;
  v120 = v66;
  v66(v133);
  sub_254148(v67, v64);
  v133 = *(v65 + 1);
  (v133)(v67, v68);
  sub_25EC40(v36, type metadata accessor for SizeConstants);
  sub_2610C0();
  v69 = v51 + *(v132 + 36);
  *v69 = v62;
  *(v69 + 8) = v70;
  *(v69 + 16) = v71;
  *(v69 + 24) = v72;
  *(v69 + 32) = v73;
  *(v69 + 40) = 0;
  v74 = v134;
  if ((v134 & 1) != 0 && (v75 = [objc_opt_self() standardUserDefaults], v76 = sub_264420(), v77 = objc_msgSend(v75, "integerForKey:", v76), v75, v76, (v77 & 2) != 0))
  {
    v82 = 1;
    v83 = v144;
    v78 = v140;
    v81 = v135;
  }

  else
  {
    v78 = v140;
    v79 = v131;
    sub_CA96C(a1 + 80, v131 + *(v140 + 20));
    *v79 = swift_getKeyPath();
    sub_2EF0(&qword_316DC8, &qword_276F60);
    swift_storeEnumTagMultiPayload();
    v80 = v79;
    v81 = v135;
    sub_25ECA4(v80, v135, type metadata accessor for ListItemMetadataView);
    v82 = 0;
    v83 = v144;
  }

  (*(v136 + 56))(v81, v82, 1, v78);
  sub_22148(v81, v83, &qword_328D60, &qword_28F568);
  sub_8198(a1 + 360, &v146, &qword_31A488, &unk_272AA0);
  if (!v147)
  {
    sub_8E80(&v146, &qword_31A488, &unk_272AA0);
LABEL_21:
    v140 = 0;
    v108 = 0.0;
    goto LABEL_22;
  }

  sub_F7CC(&v146, &v148);
  if (v74)
  {
    v84 = [objc_opt_self() standardUserDefaults];
    v85 = sub_264420();
    v86 = [v84 integerForKey:v85];

    if (v86)
    {
      sub_3080(&v148);
      goto LABEL_21;
    }
  }

  v87 = v149;
  sub_2E18(&v148, v149);
  v88 = type metadata accessor for ListItemAccessoryView();
  v119 = v5;
  v89 = (*(*(v88 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v88);
  v90 = a1;
  v92 = &v117 - v91;
  v93 = type metadata accessor for ListItemView();
  sub_25A248(*(v90 + *(v93 + 52)), *(v90 + *(v93 + 52) + 8), v87, v92);
  swift_getWitnessTable();
  v140 = sub_263310();
  sub_3080(&v148);
  v94 = v124;
  sub_2544C0(v124);
  v95 = v125;
  v96 = v142;
  v120(v125, v121, v142);
  v97 = v122;
  sub_25EBC8(v94, v122, type metadata accessor for SizeConstants);
  v98 = v123;
  (*(v141 + 2))(v123, v95, v96);
  v99 = v129;
  sub_25EBC8(v97, v129, type metadata accessor for SizeConstants);
  v141 = type metadata accessor for SizeConstants.Environment;
  v100 = v127;
  sub_25EBC8(v97, v127, type metadata accessor for SizeConstants.Environment);
  v101 = *(v126 + 24);
  v102 = sub_1CF30(v98, v100 + v101);
  v103 = v133;
  (v133)(v98, v96);
  sub_25EC40(v97, type metadata accessor for SizeConstants);
  v104 = sub_261690();
  v105 = v100 + v101;
  v51 = v143;
  (*(*(v104 - 8) + 8))(v105, v104);
  v106 = 1.0;
  if ((*&v102 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v106 = v102;
  }

  if ((~*&v102 & 0x7FF0000000000000) == 0)
  {
    v102 = v106;
  }

  *(v99 + *(v128 + 36)) = v102;
  v103(v95, v96);
  sub_25EC40(v94, type metadata accessor for SizeConstants);
  v107 = v119;
  sub_25EBC8(v99, v119, v141);
  sub_8E80(v99, &qword_31B4C0, &qword_27C030);
  *(v107 + *(v130 + 36)) = v102;
  v108 = sub_21FA68(16.0);
  v83 = v144;
  sub_8E80(v107, &qword_31B578, &qword_270C30);

LABEL_22:
  v109 = v137;
  sub_8198(v51, v137, &qword_328D98, &qword_28F5A0);
  v110 = v138;
  sub_8198(v83, v138, &qword_328D60, &qword_28F568);
  v111 = v139;
  sub_8198(v109, v139, &qword_328D98, &qword_28F5A0);
  v112 = v51;
  v113 = sub_2EF0(&qword_328E38, &unk_28F6F0);
  sub_8198(v110, v111 + *(v113 + 48), &qword_328D60, &qword_28F568);
  v114 = (v111 + *(v113 + 64));
  *v114 = v108;
  v115 = v140;
  v114[1] = 0.0;
  *(v114 + 2) = v115;
  sub_8E80(v83, &qword_328D60, &qword_28F568);
  sub_8E80(v112, &qword_328D98, &qword_28F5A0);

  sub_8E80(v110, &qword_328D60, &qword_28F568);
  return sub_8E80(v109, &qword_328D98, &qword_28F5A0);
}

uint64_t sub_25D570@<X0>(void *a1@<X8>)
{
  sub_24D2D8();
  result = sub_261CB0();
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    *a1 = v3 + 1;
  }

  return result;
}

unint64_t sub_25D5D8()
{
  result = qword_328BA0;
  if (!qword_328BA0)
  {
    sub_2F9C(&qword_328B80, &qword_28F458);
    sub_25D664();
    sub_25D8C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328BA0);
  }

  return result;
}

unint64_t sub_25D664()
{
  result = qword_328BA8;
  if (!qword_328BA8)
  {
    sub_2F9C(&qword_328B98, &qword_28F470);
    sub_2F9C(&qword_328B88, &qword_28F460);
    sub_25D758();
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_328BD8, &qword_328BE0, &qword_28F4B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328BA8);
  }

  return result;
}

unint64_t sub_25D758()
{
  result = qword_328BB0;
  if (!qword_328BB0)
  {
    sub_2F9C(&qword_328B88, &qword_28F460);
    sub_25D810();
    sub_8E38(&qword_31AD28, &qword_31AD20, &unk_2799D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328BB0);
  }

  return result;
}

unint64_t sub_25D810()
{
  result = qword_328BB8;
  if (!qword_328BB8)
  {
    sub_2F9C(&qword_328BC0, &qword_28F4A0);
    sub_8E38(&qword_328BC8, &qword_328BD0, &qword_28F4A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328BB8);
  }

  return result;
}

unint64_t sub_25D8C8()
{
  result = qword_328BE8;
  if (!qword_328BE8)
  {
    sub_2F9C(&qword_328B68, &qword_28F440);
    sub_2F9C(&qword_328B58, &qword_28F430);
    sub_25D9BC();
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_328BD8, &qword_328BE0, &qword_28F4B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328BE8);
  }

  return result;
}

unint64_t sub_25D9BC()
{
  result = qword_328BF0;
  if (!qword_328BF0)
  {
    sub_2F9C(&qword_328B58, &qword_28F430);
    sub_25DA74();
    sub_8E38(&qword_31AD28, &qword_31AD20, &unk_2799D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328BF0);
  }

  return result;
}

unint64_t sub_25DA74()
{
  result = qword_328BF8;
  if (!qword_328BF8)
  {
    sub_2F9C(&qword_328B50, &qword_28F428);
    sub_25DB2C();
    sub_8E38(&qword_328C30, &qword_328C38, &qword_28F4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328BF8);
  }

  return result;
}

unint64_t sub_25DB2C()
{
  result = qword_328C00;
  if (!qword_328C00)
  {
    sub_2F9C(&qword_328C08, &qword_28F4B8);
    sub_25DBB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328C00);
  }

  return result;
}

unint64_t sub_25DBB8()
{
  result = qword_328C10;
  if (!qword_328C10)
  {
    sub_2F9C(&qword_328C18, &qword_28F4C0);
    sub_8E38(&qword_328C20, &qword_328C28, &qword_28F4C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328C10);
  }

  return result;
}

unint64_t sub_25DC70()
{
  result = qword_328C40;
  if (!qword_328C40)
  {
    sub_2F9C(&qword_328B48, &qword_28F420);
    sub_25DD28();
    sub_8E38(&qword_328BD8, &qword_328BE0, &qword_28F4B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328C40);
  }

  return result;
}

unint64_t sub_25DD28()
{
  result = qword_328C48;
  if (!qword_328C48)
  {
    sub_2F9C(&qword_328B40, &qword_28F418);
    sub_25DDE0();
    sub_8E38(&qword_31AD28, &qword_31AD20, &unk_2799D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328C48);
  }

  return result;
}

unint64_t sub_25DDE0()
{
  result = qword_328C50;
  if (!qword_328C50)
  {
    sub_2F9C(&qword_328B38, &qword_28F410);
    sub_25DE98();
    sub_8E38(&qword_328C88, &qword_328C90, &qword_28F4F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328C50);
  }

  return result;
}

unint64_t sub_25DE98()
{
  result = qword_328C58;
  if (!qword_328C58)
  {
    sub_2F9C(&qword_328C60, &qword_28F4D8);
    sub_8E38(&qword_328C68, &qword_328C70, &qword_28F4E0);
    sub_8E38(&qword_328C78, &qword_328C80, &qword_28F4E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328C58);
  }

  return result;
}

uint64_t sub_25DF98()
{
  v1 = type metadata accessor for ListItemView();
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  sub_3080(v3 + 1);
  if (v3[13])
  {
    sub_3080(v3 + 10);
  }

  if (v3[18])
  {
    sub_3080(v3 + 15);
  }

  if (v3[23])
  {
    sub_3080(v3 + 20);
  }

  if (v3[28])
  {
    sub_3080(v3 + 25);
  }

  if (v3[33])
  {
    sub_3080(v3 + 30);
  }

  if (v3[38])
  {
    sub_3080(v3 + 35);
  }

  if (v3[43])
  {
    sub_3080(v3 + 40);
  }

  if (v3[48])
  {
    sub_3080(v3 + 45);
  }

  sub_3080(v3 + 51);
  v4 = type metadata accessor for ListItemViewModel();
  v5 = v3 + *(v4 + 40);
  v6 = type metadata accessor for CardInfo();
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v7 = *v5;

    v8 = *(v6 + 20);
    v9 = sub_2601E0();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
  }

  v10 = (v3 + *(v4 + 44));
  v11 = v10[1];

  v12 = v10[3];

  v13 = v10[5];

  v14 = v10[7];

  v15 = v10[9];

  v16 = v10[11];

  v17 = v10[13];

  v18 = v10[15];

  v19 = v10[17];

  v20 = v3 + v1[5];
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v22 = sub_261690();
    (*(*(v22 - 8) + 8))(&v20[v21], v22);
  }

  else
  {
    v23 = *v20;
  }

  v24 = v1[6];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = sub_261180();
    (*(*(v25 - 8) + 8))(v3 + v24, v25);
  }

  else
  {
    v26 = *(v3 + v24);
  }

  sub_3074(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  sub_3074(*(v3 + v1[8]), *(v3 + v1[8] + 8));
  sub_3074(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  sub_3074(*(v3 + v1[10]), *(v3 + v1[10] + 8));
  v27 = v1[11];
  sub_2EF0(&qword_318148, &unk_26AEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = sub_261690();
    (*(*(v28 - 8) + 8))(v3 + v27, v28);
  }

  else
  {
    v29 = *(v3 + v27);
  }

  sub_3074(*(v3 + v1[12]), *(v3 + v1[12] + 8));
  v30 = *(v3 + v1[13] + 8);

  return swift_deallocObject();
}

uint64_t sub_25E3B8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ListItemView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_25E47C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ListItemViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_317BF8, &unk_26F930);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_2EF0(&qword_316F68, &unk_269C50);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_2EF0(&qword_319858, &unk_2725D0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[11];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[13]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_25E650(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for ListItemViewModel();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_2EF0(&qword_317BF8, &unk_26F930);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_2EF0(&qword_316F68, &unk_269C50);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = sub_2EF0(&qword_319858, &unk_2725D0);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[13]) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[11];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_25E80C()
{
  type metadata accessor for ListItemViewModel();
  if (v0 <= 0x3F)
  {
    sub_25E9FC(319, &qword_317C68, type metadata accessor for SizeConstants);
    if (v1 <= 0x3F)
    {
      sub_25E9FC(319, &qword_316FE8, type metadata accessor for ColorConstants);
      if (v2 <= 0x3F)
      {
        sub_60890(319, &qword_3167D0);
        if (v3 <= 0x3F)
        {
          sub_25E998();
          if (v4 <= 0x3F)
          {
            sub_25E9FC(319, &qword_3198C8, &type metadata accessor for DynamicTypeSize);
            if (v5 <= 0x3F)
            {
              sub_60890(319, &qword_322DC0);
              if (v6 <= 0x3F)
              {
                sub_16D28();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_25E998()
{
  if (!qword_328D00)
  {
    sub_2F9C(qword_323040, &qword_2828E8);
    v0 = sub_2611E0();
    if (!v1)
    {
      atomic_store(v0, &qword_328D00);
    }
  }
}

void sub_25E9FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2611E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_25EA54()
{
  result = qword_328D50;
  if (!qword_328D50)
  {
    sub_2F9C(&qword_328D58, &qword_28F560);
    sub_25D5D8();
    sub_25DC70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328D50);
  }

  return result;
}

unint64_t sub_25EAE0()
{
  result = qword_328DA8;
  if (!qword_328DA8)
  {
    sub_2F9C(&qword_328DA0, &qword_28F5A8);
    sub_E57A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328DA8);
  }

  return result;
}

unint64_t sub_25EB6C()
{
  result = qword_328DB0;
  if (!qword_328DB0)
  {
    type metadata accessor for ListItemThumbnailView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328DB0);
  }

  return result;
}

uint64_t sub_25EBC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25EC40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25ECA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t YIRSourceData.init(frameName:readerType:totalReadTime:longestPageCount:longestAudiobook:finishedSeries:mostContentGenre:mostContentAuthor:totalRatedContent:finishedBooks:longestStreak:readingGoalsReachedDays:avgReadingTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, double a24, char a25)
{
  v40 = a8;
  v41 = a7;
  v37[1] = a6;
  v38 = a5;
  v39 = a9;
  v29 = sub_2EF0(&qword_31DCF8, &qword_277628);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v32 = v37 - v31;
  v33 = sub_2EF0(&qword_31DD00, &unk_277630);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  sub_8198(a1, v37 - v35, &qword_31DD00, &unk_277630);
  result = sub_8198(a2, v32, &qword_31DCF8, &qword_277628);
  if (a4)
  {
    goto LABEL_5;
  }

  if ((~*&a3 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_5:
  sub_25F000(a10, a11);

  if (a25)
  {
LABEL_9:
    sub_260540();
    sub_8E80(a2, &qword_31DCF8, &qword_277628);
    return sub_8E80(a1, &qword_31DD00, &unk_277630);
  }

  if ((~*&a24 & 0x7FF0000000000000) == 0)
  {
    goto LABEL_12;
  }

  if (a24 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (a24 < 9.22337204e18)
  {
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_25F000(uint64_t result, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if (!((a2 & 0x2000000000000000) != 0 ? v3 : result & 0xFFFFFFFFFFFFLL))
  {
    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v28[0] = result;
      v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          if (--v3)
          {
            v7 = 0;
            v17 = v28 + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                break;
              }

              v19 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                break;
              }

              v7 = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                break;
              }

              ++v17;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_73:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v7 = 0;
          v22 = v28;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      if (v3)
      {
        if (--v3)
        {
          v7 = 0;
          v11 = v28 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            v13 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              break;
            }

            ++v11;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_264C20();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              v14 = (result + 1);
              while (1)
              {
                v15 = *v14 - 48;
                if (v15 > 9)
                {
                  goto LABEL_63;
                }

                v16 = 10 * v7;
                if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                {
                  goto LABEL_63;
                }

                v7 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_63;
                }

                ++v14;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_55;
          }

          goto LABEL_63;
        }

        goto LABEL_72;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v20 = *result - 48;
              if (v20 > 9)
              {
                goto LABEL_63;
              }

              v21 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_63;
              }

              v7 = v21 + v20;
              if (__OFADD__(v21, v20))
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_55;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_63:
        v7 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            v8 = (result + 1);
            while (1)
            {
              v9 = *v8 - 48;
              if (v9 > 9)
              {
                goto LABEL_63;
              }

              v10 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_63;
              }

              v7 = v10 - v9;
              if (__OFSUB__(v10, v9))
              {
                goto LABEL_63;
              }

              ++v8;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_55:
          LOBYTE(v3) = 0;
LABEL_64:
          v29 = v3;
          v25 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v26 = result;

  v7 = sub_25F778(v26, a2, 10);
  v25 = v27;

LABEL_65:
  if (v25)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_25F304()
{
  v0 = sub_2645D0();
  v4 = sub_25F384(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_25F384(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2644E0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_264A80();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1917A8(v9, 0);
  v12 = sub_25F4DC(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_2644E0();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_264C20();
LABEL_4:

  return sub_2644E0();
}

unint64_t sub_25F4DC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_25F6FC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_264570();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_264C20();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_25F6FC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_264550();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_25F6FC(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_264580();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_264560();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unsigned __int8 *sub_25F778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_2645C0();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_25F304();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_264C20();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

id sub_25FD28()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_328E40 = result;
  return result;
}

uint64_t sub_25FD80()
{
  v0 = sub_260D00();
  sub_B600(v0, qword_354048);
  sub_B080(v0, qword_354048);
  if (qword_315B20 != -1)
  {
    swift_once();
  }

  v1 = qword_328E40;
  return sub_260CF0();
}