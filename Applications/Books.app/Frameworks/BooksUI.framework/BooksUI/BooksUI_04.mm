uint64_t sub_6BF40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 57))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 56);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_6BF88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_6C008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_316F70, &unk_2693C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for HighlightFrameViewModel(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_6C150(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2EF0(&qword_316F70, &unk_2693C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for HighlightFrameViewModel(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_6C284()
{
  sub_50224();
  if (v0 <= 0x3F)
  {
    sub_6C360(319, &qword_3167D0, &type metadata for Bool, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      type metadata accessor for HighlightFrameViewModel(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_6C360(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_6C3B4()
{
  result = qword_319738;
  if (!qword_319738)
  {
    sub_2F9C(&qword_319528, &qword_26D0B8);
    sub_8E38(&qword_319740, &qword_319748, &qword_26D2C8);
    sub_8E38(&qword_317398, &qword_3173A0, &qword_26D0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319738);
  }

  return result;
}

uint64_t sub_6C498()
{
  v1 = type metadata accessor for HighlightFrame(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_261180();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  sub_4054(*(v4 + v1[5]), *(v4 + v1[5] + 8));
  sub_4054(*(v4 + v1[6]), *(v4 + v1[6] + 8));
  sub_4054(*(v4 + v1[7]), *(v4 + v1[7] + 8));
  v7 = *(v4 + v1[8] + 8);

  v8 = v4 + v1[10];
  sub_6B980(*v8, *(v8 + 1), *(v8 + 2), *(v8 + 3), *(v8 + 4), *(v8 + 5), *(v8 + 6), v8[56]);
  v9 = type metadata accessor for HighlightFrameViewModel(0);
  v10 = &v8[*(v9 + 24)];
  type metadata accessor for HighlightCoverStyle(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = *v10;
  if (EnumCaseMultiPayload == 1)
  {

    v13 = *(sub_2EF0(&qword_319520, &unk_26CFE8) + 48);
    v14 = sub_261180();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(&v10[v13], 1, v14))
    {
      (*(v15 + 8))(&v10[v13], v14);
    }
  }

  else
  {
  }

  v16 = *(v9 + 28);
  v17 = sub_260550();
  (*(*(v17 - 8) + 8))(&v8[v16], v17);

  return swift_deallocObject();
}

double sub_6C730@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HighlightFrame(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  *&result = sub_69D6C(v4, a1).n128_u64[0];
  return result;
}

unint64_t sub_6C7C8()
{
  result = qword_3197D8;
  if (!qword_3197D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3197D8);
  }

  return result;
}

uint64_t sub_6C854(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for HighlightFrame(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_6C8D8(uint64_t a1)
{
  v2 = type metadata accessor for TextLockup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ShelfGridBreakpoint.init(from:for:dynamicTypeSize:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v34 = a3;
  v5 = sub_2EF0(&qword_319810, &unk_26D490);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v33 - v7;
  v9 = sub_2EF0(&qword_317280, &qword_2697E0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v33 - v15;
  v17 = a1[1];
  v33[1] = a1[2];
  v33[2] = v17;
  v18 = a1[3];
  v19 = a1[4];
  v20 = a1[5];
  sub_2603E0();
  v22 = v21;
  v35 = a2;
  sub_6DF9C(sub_6DF7C, v20, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_6E10C(v8);
    v23 = *(v18 + 16);
    if (v23)
    {

      v24 = v18;
      goto LABEL_5;
    }

LABEL_11:
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_264BC0(33);

    v36 = 0xD00000000000001FLL;
    v37 = 0x8000000000291330;
    v38._countAndFlagsBits = sub_264790();
    sub_264530(v38);

    result = sub_264CD0();
    __break(1u);
    return result;
  }

  sub_6E174(v8, v16);
  sub_6E174(v16, v14);
  v25 = *v14;
  v24 = *(v14 + 1);
  v26 = *(v14 + 2);
  v27 = *(v9 + 48);
  v28 = sub_261690();
  (*(*(v28 - 8) + 8))(&v14[v27], v28);

  v23 = *(v24 + 16);
  if (!v23)
  {

    goto LABEL_11;
  }

LABEL_5:
  v29 = *(v24 + 32);
  v30 = (v24 + 40);
  do
  {
    if (*v30 <= v22)
    {
      v29 = *(v30 - 8);
    }

    v30 += 2;
    --v23;
  }

  while (v23);

  v31 = sub_261690();
  result = (*(*(v31 - 8) + 8))(a2, v31);
  *v34 = v29;
  return result;
}

uint64_t ShelfGridBreakpoint.resolveColumns(for:dynamicTypeSize:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_2EF0(&qword_319810, &unk_26D490);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v28[-v7];
  v9 = sub_2EF0(&qword_317280, &qword_2697E0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v28[-v15];
  v17 = *(a1 + 16);
  v18 = *(a1 + 40);
  v19 = *v2;
  v29 = a2;
  sub_6DF9C(sub_6F1FC, v18, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_6E10C(v8);
    if (!*(v17 + 16))
    {
      return 1;
    }
  }

  else
  {
    sub_6E174(v8, v16);
    sub_6E174(v16, v14);
    v17 = *v14;
    v20 = *(v14 + 1);
    v21 = *(v14 + 2);
    v22 = *(v9 + 48);
    v23 = sub_261690();
    (*(*(v23 - 8) + 8))(&v14[v22], v23);

    if (!*(v17 + 16))
    {
LABEL_7:
      v26 = 1;
      goto LABEL_8;
    }
  }

  v24 = sub_D30C(v19);
  if ((v25 & 1) == 0)
  {
    goto LABEL_7;
  }

  v26 = *(*(v17 + 56) + 8 * v24);
LABEL_8:

  return v26;
}

uint64_t sub_6CF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_6E4F0();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.shelfGridBreakpoint.getter()
{
  sub_6E1E4();

  return sub_261CB0();
}

uint64_t EnvironmentValues.shelfGridColumnCount.getter()
{
  sub_6E238();
  sub_261CB0();
  return v1;
}

uint64_t sub_6D024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_6EB20();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_6D088()
{
  sub_6E28C();
  sub_261CB0();
  return v1;
}

double EnvironmentValues.shelfGridGutter.getter()
{
  v1 = type metadata accessor for SizeConstants.Gutter(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261C90();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v26 - v11;
  v13 = type metadata accessor for SizeConstants(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6E28C();
  sub_261CB0();
  if (v30 != 1)
  {
    return v29;
  }

  v17 = v6[2];
  v17(v12, v0, v5);
  v17(v9, v12, v5);
  *v16 = EnvironmentValues.isCompact.getter() & 1;
  sub_6E2E0();
  sub_261CA0();
  v16[1] = v28;
  v18 = type metadata accessor for SizeConstants.Environment(0);
  v19 = &v16[v18[6]];
  sub_261A60();
  sub_2619D0();
  *&v16[v18[7]] = v20;
  sub_B7C8();
  sub_261CB0();
  v21 = v6[1];
  v21(v9, v5);
  v21(v12, v5);
  v22 = v26[6];
  v23 = &v16[v18[8]];
  v23[2] = v27;
  *v23 = v22;
  sub_6EC60(v16, v4, type metadata accessor for SizeConstants.Environment);
  v24 = *v4;
  sub_6E388(v4, type metadata accessor for SizeConstants.Gutter);
  result = 24.0;
  if (v24)
  {
    return 16.0;
  }

  return result;
}

uint64_t sub_6D39C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v40 = a2;
  v41 = a1;
  v4 = sub_261690();
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShelfGridBreakpointViewModifier();
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v14 = v13;
  sub_6EBF8(v2, v12);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  sub_6EC60(v12, v16 + v15, type metadata accessor for ShelfGridBreakpointViewModifier);
  sub_6EBF8(v2, v12);
  v17 = swift_allocObject();
  sub_6EC60(v12, v17 + v15, type metadata accessor for ShelfGridBreakpointViewModifier);
  v18 = sub_2EF0(&qword_319928, &qword_26D730);
  v19 = v40;
  (*(*(v18 - 8) + 16))(v40, v41, v18);
  v20 = (v19 + *(sub_2EF0(&qword_319930, &qword_26D738) + 36));
  *v20 = sub_6ECC8;
  v20[1] = v16;
  v20[2] = sub_6EEA0;
  v20[3] = v17;
  v20[4] = v39;
  v20[5] = v14;
  KeyPath = swift_getKeyPath();
  v22 = v2 + *(v9 + 28);
  v23 = *(v22 + 8);
  v24 = *(v22 + 16);
  v44 = *v22;
  v45 = v23;
  LOBYTE(v46) = v24;
  sub_2EF0(&qword_319938, &qword_26D768);
  sub_263320();
  v25 = v51;
  v26 = v19 + *(sub_2EF0(&qword_319940, &qword_26D770) + 36);
  *v26 = KeyPath;
  *(v26 + 8) = v25;
  v27 = swift_getKeyPath();
  v28 = *(v22 + 8);
  v29 = *(v22 + 16);
  v44 = *v22;
  v45 = v28;
  LOBYTE(v46) = v29;
  sub_263320();
  v50 = v51;
  v30 = (v3 + *(v9 + 32));
  v31 = v30[1];
  v32 = v30[2];
  v33 = v30[3];
  v34 = v30[4];
  v35 = v30[5];
  v44 = *v30;
  v45 = v31;
  v46 = v32;
  v47 = v33;
  v48 = v34;
  v49 = v35;

  sub_40CF0(v7);
  v36 = ShelfGridBreakpoint.resolveColumns(for:dynamicTypeSize:)(&v44, v7);
  (*(v42 + 8))(v7, v43);

  result = sub_2EF0(&qword_319948, &qword_26D7A0);
  v38 = (v19 + *(result + 36));
  *v38 = v27;
  v38[1] = v36;
  return result;
}

uint64_t sub_6D770@<X0>(_BYTE *a1@<X8>)
{
  v52 = a1;
  v2 = sub_2EF0(&qword_319810, &unk_26D490);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v49 - v4;
  v50 = sub_2EF0(&qword_317280, &qword_2697E0);
  v6 = *(v50 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v50);
  v10 = (&v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v49 = &v49 - v11;
  v51 = sub_261690();
  v12 = *(v51 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v51);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_261FB0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_262190();
  sub_261440();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  (*(v17 + 8))(v20, v16);
  v57.origin.x = v22;
  v57.origin.y = v24;
  v57.size.width = v26;
  v57.size.height = v28;
  CGRectGetWidth(v57);
  v29 = type metadata accessor for ShelfGridBreakpointViewModifier();
  v30 = *(v29 + 24);
  v31 = (v1 + *(v29 + 28));
  v32 = *v31;
  *(v31 + 8);
  v33 = *(v1 + v30 + 24);
  v34 = *(v1 + v30 + 40);
  sub_40CF0(v15);
  sub_2603E0();
  v36 = v35;
  v53 = v15;
  sub_6DF9C(sub_6F1FC, v34, v5);
  v37 = v50;
  if ((*(v6 + 48))(v5, 1, v50) == 1)
  {
    v38 = v51;
    sub_6E10C(v5);
    v39 = *(v33 + 16);
    if (v39)
    {

      goto LABEL_5;
    }

LABEL_11:
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_264BC0(33);

    v54 = 0xD00000000000001FLL;
    v55 = 0x8000000000291330;
    v56._countAndFlagsBits = sub_264790();
    sub_264530(v56);

    result = sub_264CD0();
    __break(1u);
    return result;
  }

  v40 = v49;
  sub_6E174(v5, v49);
  sub_6E174(v40, v10);
  v41 = *v10;
  v33 = v10[1];
  v42 = v10[2];
  v43 = v10 + *(v37 + 48);
  v38 = v51;
  (*(v12 + 8))(v43, v51);

  v39 = *(v33 + 16);
  if (!v39)
  {

    goto LABEL_11;
  }

LABEL_5:
  v44 = *(v33 + 32);
  v45 = (v33 + 40);
  do
  {
    v46 = *(v45 - 8);
    v47 = *v45;
    v45 += 2;
    if (v47 <= v36)
    {
      v44 = v46;
    }

    --v39;
  }

  while (v39);

  result = (*(v12 + 8))(v15, v38);
  *v52 = v44;
  return result;
}

uint64_t sub_6DC20(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for ShelfGridBreakpointViewModifier() + 20));
  v5 = *v3;
  v6 = v3[1];
  v7 = *(v3 + 16);

  sub_2EF0(&qword_319938, &qword_26D768);
  sub_263330();
}

uint64_t View.shelfGridBreakpoint(_:gridType:maxContentWidth:gutter:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v40 = a5;
  v37 = a7;
  v38 = a8;
  v42 = a6;
  v36 = a4;
  v35 = a3;
  v43 = a9;
  v11 = type metadata accessor for ShelfGridBreakpointViewModifier();
  v12 = *(*(v11 - 1) + 64);
  __chkstk_darwin(v11);
  v14 = (&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = sub_261730();
  v41 = *(v39 - 8);
  v15 = *(v41 + 64);
  __chkstk_darwin(v39);
  v34 = &v33 - v16;
  v17 = *a1;
  v18 = a1[1];
  v19 = *(a1 + 16);
  v20 = a2[1];
  v33 = *a2;
  v22 = a2[2];
  v21 = a2[3];
  v23 = a2[4];
  v24 = a2[5];
  *v14 = swift_getKeyPath();
  sub_2EF0(&qword_318148, &unk_26AEE0);
  swift_storeEnumTagMultiPayload();
  v25 = v14 + v11[5];
  *v25 = v17;
  *(v25 + 1) = v18;
  v25[16] = v19;
  v26 = (v14 + v11[6]);
  *v26 = v33;
  v26[1] = v20;
  v26[2] = v22;
  v26[3] = v21;
  v26[4] = v23;
  v26[5] = v24;
  v27 = v14 + v11[7];
  *v27 = v35;
  v27[8] = v36 & 1;

  v28 = v34;
  v29 = v38;
  sub_262E30();
  sub_6E388(v14, type metadata accessor for ShelfGridBreakpointViewModifier);
  swift_getKeyPath();
  v46 = v40;
  v47 = v42 & 1;
  v30 = sub_6E494();
  v44 = v29;
  v45 = v30;
  v31 = v39;
  swift_getWitnessTable();
  sub_262A90();

  return (*(v41 + 8))(v28, v31);
}

uint64_t sub_6DF9C@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  for (i = *(a2 + 16) - 1; i != -1; --i)
  {
    v7 = sub_2EF0(&qword_317280, &qword_2697E0);
    v8 = *(v7 - 8);
    v9 = v8;
    v10 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v8 + 72) * i;
    result = a1(v10);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      sub_6EF20(v10, a3);
      return (*(v9 + 56))(a3, 0, 1, v7);
    }
  }

  v12 = sub_2EF0(&qword_317280, &qword_2697E0);
  return (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
}

uint64_t sub_6E10C(uint64_t a1)
{
  v2 = sub_2EF0(&qword_319810, &unk_26D490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_6E174(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_317280, &qword_2697E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_6E1E4()
{
  result = qword_319818;
  if (!qword_319818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319818);
  }

  return result;
}

unint64_t sub_6E238()
{
  result = qword_319820;
  if (!qword_319820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319820);
  }

  return result;
}

unint64_t sub_6E28C()
{
  result = qword_319828;
  if (!qword_319828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319828);
  }

  return result;
}

unint64_t sub_6E2E0()
{
  result = qword_319830;
  if (!qword_319830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319830);
  }

  return result;
}

uint64_t type metadata accessor for ShelfGridBreakpointViewModifier()
{
  result = qword_3198B8;
  if (!qword_3198B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_6E388(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_6E3E8@<X0>(uint64_t a1@<X8>)
{
  sub_6E28C();
  result = sub_261CB0();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_6E440(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  sub_6E28C();
  return sub_261CC0();
}

unint64_t sub_6E494()
{
  result = qword_319838;
  if (!qword_319838)
  {
    type metadata accessor for ShelfGridBreakpointViewModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319838);
  }

  return result;
}

unint64_t sub_6E4F0()
{
  result = qword_319840;
  if (!qword_319840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319840);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShelfGridBreakpoint(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ShelfGridBreakpoint(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_6E694(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ShelfGridBreakpointViewModifier();
  sub_261730();
  sub_2F9C(&qword_319848, &unk_26D5A0);
  sub_261730();
  sub_6E494();
  swift_getWitnessTable();
  sub_8E38(&qword_319850, &qword_319848, &unk_26D5A0);
  return swift_getWitnessTable();
}

uint64_t sub_6E798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_319858, &unk_2725D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_6E878(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2EF0(&qword_319858, &unk_2725D0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_6E940()
{
  sub_6EA2C();
  if (v0 <= 0x3F)
  {
    sub_6EA84(319, &qword_3198D0, &type metadata for ShelfGridBreakpoint, &type metadata accessor for Binding);
    if (v1 <= 0x3F)
    {
      sub_6EA84(319, &unk_3198D8, &type metadata for CGFloat, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_6EA2C()
{
  if (!qword_3198C8)
  {
    sub_261690();
    v0 = sub_2611E0();
    if (!v1)
    {
      atomic_store(v0, &qword_3198C8);
    }
  }
}

void sub_6EA84(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_6EB20()
{
  result = qword_319910;
  if (!qword_319910)
  {
    sub_2F9C(&qword_319918, &qword_273BF0);
    sub_6EBA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319910);
  }

  return result;
}

unint64_t sub_6EBA4()
{
  result = qword_319920;
  if (!qword_319920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319920);
  }

  return result;
}

uint64_t sub_6EBF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfGridBreakpointViewModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6EC60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_6ECC8@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfGridBreakpointViewModifier() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_6D770(a1);
}

uint64_t sub_6ED3C()
{
  v1 = type metadata accessor for ShelfGridBreakpointViewModifier();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v0 + v2);
  sub_2EF0(&qword_318148, &unk_26AEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_261690();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = (v4 + *(v1 + 20));
  v8 = *v7;

  v9 = v7[1];

  v10 = (v4 + *(v1 + 24));
  v11 = v10[1];

  v12 = v10[2];

  v13 = v10[3];

  v14 = v10[4];

  v15 = v10[5];

  return swift_deallocObject();
}

uint64_t sub_6EEA0(char *a1)
{
  v3 = *(type metadata accessor for ShelfGridBreakpointViewModifier() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_6DC20(a1, v4);
}

uint64_t sub_6EF20(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_317280, &qword_2697E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_6EF94()
{
  result = qword_319950;
  if (!qword_319950)
  {
    sub_2F9C(&qword_319948, &qword_26D7A0);
    sub_6F04C();
    sub_8E38(&qword_319990, &qword_319998, &qword_26D7B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319950);
  }

  return result;
}

unint64_t sub_6F04C()
{
  result = qword_319958;
  if (!qword_319958)
  {
    sub_2F9C(&qword_319940, &qword_26D770);
    sub_6F104();
    sub_8E38(&qword_319980, &qword_319988, &qword_26D7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319958);
  }

  return result;
}

unint64_t sub_6F104()
{
  result = qword_319960;
  if (!qword_319960)
  {
    sub_2F9C(&qword_319930, &qword_26D738);
    sub_8E38(&qword_319968, &qword_319928, &qword_26D730);
    sub_8E38(&qword_319970, &qword_319978, &qword_26D7A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319960);
  }

  return result;
}

uint64_t LegacyPDFCoverEffect.init(cornerRadius:)@<X0>(double *a1@<X8>, double a2@<D0>)
{
  v4 = *(type metadata accessor for LegacyPDFCoverEffect() + 20);
  *(a1 + v4) = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  result = swift_storeEnumTagMultiPayload();
  *a1 = a2;
  return result;
}

uint64_t type metadata accessor for LegacyPDFCoverEffect()
{
  result = qword_319A48;
  if (!qword_319A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LegacyPDFCoverEffect.body(cover:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = sub_2EF0(&qword_3199A0, &qword_26D7F8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = type metadata accessor for LegacyPDFCoverEffect();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  sub_6F53C(v3, &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v10, a1, v6);
  v14 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v15 = (v13 + *(v7 + 80) + v14) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_6F5A4(&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v14);
  result = (*(v7 + 32))(v16 + v15, v10, v6);
  *a2 = sub_6F608;
  a2[1] = v16;
  return result;
}

uint64_t sub_6F4BC@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  sub_261420();
  v7 = v6;
  v9 = v8;
  *a3 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  a3[1] = v10;
  v11 = sub_2EF0(&qword_319A90, &qword_26D880);
  return sub_6F60C(a1, a2, a3 + *(v11 + 44), v7, v9);
}

uint64_t sub_6F53C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyPDFCoverEffect();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6F5A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyPDFCoverEffect();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_6F60C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v60 = a2;
  v63 = a3;
  v8 = sub_2EF0(&qword_319A98, &qword_26D888);
  v9 = *(v8 - 8);
  v61 = v8 - 8;
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8 - 8);
  v62 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v58 = v54 - v13;
  v14 = sub_2EF0(&qword_319AA0, &qword_26D890);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  v17 = __chkstk_darwin(v14);
  v59 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v64 = v54 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = v54 - v22;
  __chkstk_darwin(v21);
  v25 = v54 - v24;
  v26 = *a1;
  v27 = sub_2617E0();
  v28 = *(v27 + 20);
  v56 = v27;
  v29 = enum case for RoundedCornerStyle.continuous(_:);
  v30 = sub_261DD0();
  v31 = *(v30 - 8);
  v32 = *(v31 + 104);
  v54[2] = v31 + 104;
  v55 = v29;
  v57 = v30;
  v32(&v25[v28], v29, v30);
  *v25 = v26;
  *(v25 + 1) = v26;
  v33 = sub_2EF0(&qword_319AA8, &qword_26D898);
  *&v25[*(v33 + 56)] = 256;
  *&v54[1] = a5;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v34 = sub_2EF0(&qword_319AB0, &qword_26D8A0);
  v35 = &v25[*(v34 + 36)];
  v36 = v66;
  *v35 = v65;
  *(v35 + 1) = v36;
  *(v35 + 2) = v67;
  [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.12];
  v37 = sub_262EE0();
  v38 = &v25[*(v15 + 44)];
  *v38 = v37;
  v38[1] = a4 / 618.0 * 20.0;
  v38[2] = 0.0;
  v38[3] = a4 / 618.0 * 6.0;
  v32(&v23[*(v27 + 20)], v29, v30);
  *v23 = v26;
  *(v23 + 1) = v26;
  *&v23[*(v33 + 56)] = 256;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v39 = &v23[*(v34 + 36)];
  v40 = v69;
  *v39 = v68;
  *(v39 + 1) = v40;
  *(v39 + 2) = v70;
  [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.08];
  v41 = sub_262EE0();
  v42 = &v23[*(v15 + 44)];
  *v42 = v41;
  v42[1] = a4 / 618.0 * 4.0;
  v42[2] = 0.0;
  v42[3] = a4 / 618.0;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v43 = sub_2EF0(&qword_3199A0, &qword_26D7F8);
  v44 = v58;
  (*(*(v43 - 8) + 16))(v58, v60, v43);
  v45 = (v44 + *(sub_2EF0(&qword_319AB8, &unk_26D8A8) + 36));
  v46 = v72;
  *v45 = v71;
  v45[1] = v46;
  v45[2] = v73;
  v47 = (v44 + *(v61 + 44));
  v32(&v47[*(v56 + 20)], v55, v57);
  *v47 = v26;
  *(v47 + 1) = v26;
  *&v47[*(sub_2EF0(&qword_317DA8, &qword_26C1B0) + 36)] = 256;
  v48 = v64;
  sub_8198(v25, v64, &qword_319AA0, &qword_26D890);
  v49 = v59;
  sub_8198(v23, v59, &qword_319AA0, &qword_26D890);
  v50 = v62;
  sub_8198(v44, v62, &qword_319A98, &qword_26D888);
  v51 = v63;
  sub_8198(v48, v63, &qword_319AA0, &qword_26D890);
  v52 = sub_2EF0(&qword_319AC0, &qword_26D8B8);
  sub_8198(v49, v51 + *(v52 + 48), &qword_319AA0, &qword_26D890);
  sub_8198(v50, v51 + *(v52 + 64), &qword_319A98, &qword_26D888);
  sub_8E80(v44, &qword_319A98, &qword_26D888);
  sub_8E80(v23, &qword_319AA0, &qword_26D890);
  sub_8E80(v25, &qword_319AA0, &qword_26D890);
  sub_8E80(v50, &qword_319A98, &qword_26D888);
  sub_8E80(v49, &qword_319AA0, &qword_26D890);
  return sub_8E80(v64, &qword_319AA0, &qword_26D890);
}

uint64_t LegacyPDFCoverEffect.shape.getter@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  v4 = *(sub_2617E0() + 20);
  v5 = enum case for RoundedCornerStyle.continuous(_:);
  v6 = sub_261DD0();
  result = (*(*(v6 - 8) + 104))(&a1[v4], v5, v6);
  *a1 = v3;
  *(a1 + 1) = v3;
  return result;
}

uint64_t sub_6FD0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = v3;
  v8 = sub_2EF0(&qword_3199A0, &qword_26D7F8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v21 - v12;
  v14 = *(a2 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6F53C(v5, v16);
  (*(v9 + 16))(v13, a1, v8);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = (v15 + v17 + *(v9 + 80)) & ~*(v9 + 80);
  v19 = swift_allocObject();
  sub_6F5A4(v16, v19 + v17);
  result = (*(v9 + 32))(v19 + v18, v13, v8);
  *a3 = sub_70440;
  a3[1] = v19;
  return result;
}

uint64_t sub_6FEE8(uint64_t a1)
{
  result = sub_70158(&qword_3199E8, type metadata accessor for LegacyPDFCoverEffect);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_6FF54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_2EF0(&qword_316F70, &unk_2693C0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_6FFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_2EF0(&qword_316F70, &unk_2693C0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_70074()
{
  sub_50224();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_700F4()
{
  result = qword_319A80;
  if (!qword_319A80)
  {
    sub_2F9C(&qword_319A88, &qword_26D878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319A80);
  }

  return result;
}

uint64_t sub_70158(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_701A0()
{
  v1 = (type metadata accessor for LegacyPDFCoverEffect() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_2EF0(&qword_3199A0, &qword_26D7F8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v0 + v1[7];
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

uint64_t sub_7034C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for LegacyPDFCoverEffect() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_2EF0(&qword_3199A0, &qword_26D7F8) - 8);
  v7 = v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_6F4BC((v1 + v4), v7, a1);
}

double SampleButton.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_2604E0();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_2EF0(&qword_319AC8, &qword_287AB0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v29 - v7;
  v9 = sub_2EF0(&qword_316960, &unk_2689F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v29 - v11;
  v13 = sub_2610B0();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_707F0(v8);
  v14 = type metadata accessor for AssetAction(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_8E80(v8, &qword_319AC8, &qword_287AB0);
    v32 = 0u;
    v33 = 0u;
    v34 = 0;
  }

  else
  {
    *(&v33 + 1) = v14;
    v34 = sub_723E4(&qword_319AE8);
    v15 = sub_10934(&v32);
    sub_7237C(v8, v15, type metadata accessor for AssetAction);
  }

  sub_71FD4(v1, v30);
  v16 = swift_allocObject();
  v17 = v30[1];
  *(v16 + 16) = v30[0];
  *(v16 + 32) = v17;
  *(v16 + 48) = v31;
  sub_2604C0();
  sub_260420();
  v18 = sub_2EF0(&qword_319AD0, &qword_26D8C0);
  v19 = a1 + v18[9];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  v20 = v18[10];
  *(a1 + v20) = swift_getKeyPath();
  sub_2EF0(&qword_316930, &qword_2689A0);
  swift_storeEnumTagMultiPayload();
  v21 = a1 + v18[11];
  *v21 = swift_getKeyPath();
  *(v21 + 40) = 0;
  v22 = (a1 + v18[12]);
  v23 = sub_2EF0(&qword_319AD8, &qword_281960);
  v22[3] = v23;
  v22[4] = sub_8E38(&qword_319AE0, &qword_319AD8, &qword_281960);
  v24 = sub_10934(v22);
  sub_22148(v12, v24, &qword_316960, &unk_2689F0);
  v25 = (v24 + *(v23 + 36));
  *v25 = sub_72044;
  v25[1] = v16;
  v26 = a1 + v18[13];
  result = *&v32;
  v28 = v33;
  *v26 = v32;
  *(v26 + 16) = v28;
  *(v26 + 32) = v34;
  return result;
}

uint64_t sub_707F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v129 = sub_260560();
  v128 = *(v129 - 8);
  v4 = *(v128 + 64);
  __chkstk_darwin(v129);
  v127 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_260600();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v126 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for AssetAction(0);
  v145 = *(v146 - 8);
  v9 = *(v145 + 64);
  __chkstk_darwin(v146);
  v144 = (&v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v139 = sub_2601E0();
  v136 = *(v139 - 8);
  v11 = *(v136 + 64);
  __chkstk_darwin(v139);
  v135 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2EF0(&qword_316B98, &unk_275840);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v138 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v140 = &v118 - v18;
  __chkstk_darwin(v17);
  v134 = &v118 - v19;
  v133 = type metadata accessor for AssetAction.Kind(0);
  v20 = *(*(v133 - 8) + 64);
  __chkstk_darwin(v133);
  v141 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_263DD0();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v132 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_263A10();
  v25 = *(v131 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v131);
  v130 = &v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_263AF0();
  v137 = *(v142 - 8);
  v28 = *(v137 + 64);
  __chkstk_darwin(v142);
  v143 = &v118 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_260060();
  v148 = *(v149 - 8);
  v30 = *(v148 + 64);
  __chkstk_darwin(v149);
  v32 = &v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_2EF0(&qword_322C70, &qword_272AD0);
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33 - 8);
  v37 = &v118 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v147 = &v118 - v38;
  v39 = v1[4];
  sub_2E18(v1, v1[3]);
  sub_260860();
  v40 = sub_2609D0();
  v42 = v41;
  if (v40 == sub_2609D0() && v42 == v43)
  {

LABEL_5:
    v45 = v2[4];
    sub_2E18(v2, v2[3]);
    v46 = v147;
    sub_260890();
    goto LABEL_7;
  }

  v44 = sub_264F10();

  if (v44)
  {
    goto LABEL_5;
  }

  v47 = v2[4];
  sub_2E18(v2, v2[3]);
  v46 = v147;
  sub_260970();
LABEL_7:
  sub_8198(v46, v37, &qword_322C70, &qword_272AD0);
  v48 = v148;
  v49 = v149;
  if ((*(v148 + 48))(v37, 1, v149) == 1)
  {
    sub_8E80(v46, &qword_322C70, &qword_272AD0);
    sub_8E80(v37, &qword_322C70, &qword_272AD0);
    v50 = 1;
    v51 = v146;
  }

  else
  {
    (*(v48 + 32))(v32, v37, v49);
    v52 = v2[4];
    sub_2E18(v2, v2[3]);
    v53 = *(v52 + 8);
    v124 = sub_2606E0();
    v123 = v54;
    v55 = v2[4];
    sub_2E18(v2, v2[3]);
    v56 = *(v55 + 8);
    v122 = sub_2606E0();
    v121 = v57;
    v58 = v2[4];
    sub_2E18(v2, v2[3]);
    v120 = sub_260870();
    v59 = v2[4];
    sub_2E18(v2, v2[3]);
    v60 = *(v59 + 8);
    v119 = sub_2606E0();
    v61 = v2[4];
    sub_2E18(v2, v2[3]);
    sub_260860();
    v62 = sub_2609D0();
    v64 = v63;
    if (v62 == sub_2609D0() && v64 == v65)
    {

      v66 = 2;
    }

    else
    {
      v67 = sub_264F10();

      if (v67)
      {
        v66 = 2;
      }

      else
      {
        v66 = 24;
      }
    }

    LODWORD(v118) = v66;
    v68 = v2[4];
    sub_2E18(v2, v2[3]);
    sub_260860();
    v69 = sub_2609D0();
    v71 = v70;
    if (v69 == sub_2609D0() && v71 == v72)
    {

      v73 = 2;
    }

    else
    {
      v74 = sub_264F10();

      if (v74)
      {
        v73 = 2;
      }

      else
      {
        v73 = 24;
      }
    }

    LOBYTE(v155[0]) = v73;
    v75 = _s7BooksUI7MetricsO13actionDetails3for9assetInfoSDySSypGSgAC15ClickActionTypeO_14BookFoundation05AssetH0_ptFZ_0(v155, v2);
    v76 = sub_260020();
    v78 = v77;
    if (qword_315900 != -1)
    {
      swift_once();
    }

    v155[8] = xmmword_31ADC0;
    v155[9] = xmmword_31ADD0;
    v155[10] = xmmword_31ADE0;
    v155[4] = xmmword_31AD80;
    v155[5] = xmmword_31AD90;
    v155[6] = xmmword_31ADA0;
    v155[7] = xmmword_31ADB0;
    v155[0] = xmmword_31AD40;
    v155[3] = xmmword_31AD70;
    v155[1] = *algn_31AD50;
    v155[2] = xmmword_31AD60;
    v79 = &_swiftEmptyDictionarySingleton;
    if (v75)
    {
      v154 = sub_2EF0(&qword_3160D0, &unk_270CF0);
      *&v153 = v75;
      sub_FBD8(&v153, &v152);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v151 = &_swiftEmptyDictionarySingleton;
      sub_DC90(&v152, 0x65446E6F69746361, 0xED0000736C696174, isUniquelyReferenced_nonNull_native);
      v79 = v151;
    }

    v125 = a1;
    v154 = &type metadata for String;
    *&v153 = v76;
    *(&v153 + 1) = v78;
    sub_FBD8(&v153, &v152);
    v81 = swift_isUniquelyReferenced_nonNull_native();
    v151 = v79;
    sub_DC90(&v152, 0x72556E6F69746361, 0xE90000000000006CLL, v81);
    v82 = v151;
    v150 = v118;
    v83 = Metrics.ClickActionType.rawValue.getter();
    v154 = &type metadata for String;
    *&v153 = v83;
    *(&v153 + 1) = v84;
    sub_FBD8(&v153, &v152);
    v85 = swift_isUniquelyReferenced_nonNull_native();
    v151 = v82;
    sub_DC90(&v152, 0x79546E6F69746361, 0xEA00000000006570, v85);
    v86 = v151;
    sub_2EF0(&qword_317218, &unk_269760);
    v87 = swift_allocObject();
    v118 = xmmword_267D30;
    *(v87 + 16) = xmmword_267D30;
    *(v87 + 32) = sub_1694E0();
    v154 = sub_2EF0(&qword_319B10, &qword_2777B0);
    *&v153 = v87;
    sub_FBD8(&v153, &v152);
    v88 = swift_isUniquelyReferenced_nonNull_native();
    v151 = v86;
    sub_DC90(&v152, 0x6E6F697461636F6CLL, 0xE800000000000000, v88);
    if (qword_3158E0 != -1)
    {
      swift_once();
    }

    v89 = sub_2639E0();
    sub_B080(v89, qword_353F10);
    v90 = v130;
    sub_2639C0();

    sub_2EF0(&qword_3160D8, &qword_267D60);
    v91 = *(v25 + 72);
    v92 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v93 = swift_allocObject();
    *(v93 + 16) = v118;
    v94 = v131;
    (*(v25 + 16))(v93 + v92, v90, v131);
    sub_263DC0();
    v95 = v143;
    sub_263AD0();
    (*(v25 + 8))(v90, v94);
    v96 = *(v148 + 16);
    v97 = v141;
    v131 = v32;
    v96(v141, v32, v149);
    swift_storeEnumTagMultiPayload();
    v98 = sub_260620();
    v99 = *(v98 - 8);
    v100 = *(v99 + 56);
    v101 = v134;
    v133 = v99 + 56;
    v132 = v100;
    (v100)(v134, 1, 1, v98);
    v102 = v135;
    sub_2601D0();
    v103 = sub_2601C0();
    v105 = v104;
    (*(v136 + 8))(v102, v139);
    v106 = v144;
    *v144 = v103;
    v106[1] = v105;
    v107 = v123;
    v106[2] = v124;
    v106[3] = v107;
    v108 = v121;
    v106[4] = v122;
    v106[5] = v108;
    *(v106 + 48) = v120 & 1;
    v51 = v146;
    v109 = v137;
    v110 = v95;
    v111 = v142;
    (*(v137 + 16))(v106 + *(v146 + 32), v110, v142);
    sub_72428(v97, v106 + *(v51 + 40));
    v112 = v138;
    sub_8198(v101, v138, &qword_316B98, &unk_275840);
    v113 = *(v99 + 48);
    if (v113(v112, 1, v98) == 1)
    {
      AssetAction.Kind.appAnalyticsClickTargetType.getter(v126);
      v51 = v146;
      (*(v128 + 104))(v127, enum case for LinkActionType.click(_:), v129);
      v114 = v140;
      sub_260610();
      sub_8E80(v101, &qword_316B98, &unk_275840);
      sub_7248C(v141);
      (*(v109 + 8))(v143, v142);
      (*(v148 + 8))(v131, v149);
      sub_8E80(v147, &qword_322C70, &qword_272AD0);
      v115 = v114;
      if (v113(v112, 1, v98) != 1)
      {
        sub_8E80(v112, &qword_316B98, &unk_275840);
      }
    }

    else
    {
      sub_8E80(v101, &qword_316B98, &unk_275840);
      sub_7248C(v97);
      (*(v109 + 8))(v143, v111);
      (*(v148 + 8))(v131, v149);
      sub_8E80(v147, &qword_322C70, &qword_272AD0);
      v115 = v140;
      (*(v99 + 32))(v140, v112, v98);
    }

    (v132)(v115, 0, 1, v98);
    v116 = v144;
    sub_22148(v115, v144 + *(v51 + 36), &qword_316B98, &unk_275840);
    a1 = v125;
    sub_7237C(v116, v125, type metadata accessor for AssetAction);
    v50 = 0;
  }

  return (*(v145 + 56))(a1, v50, 1, v51);
}

uint64_t sub_71968@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v54 = sub_262730();
  v52 = *(v54 - 8);
  v3 = *(v52 + 8);
  __chkstk_darwin(v54);
  v53 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2EF0(&qword_319AC8, &qword_287AB0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v49 - v7;
  v51 = type metadata accessor for ButtonViewModel.ActionKind(0);
  v9 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ButtonViewModel.Content(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for ButtonViewModel(0);
  v17 = *(*(v16 - 1) + 64);
  __chkstk_darwin(v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_260860();
  v21 = sub_2609D0();
  v23 = v22;
  if (v21 == sub_2609D0() && v23 == v24)
  {

    v25 = 0x6E6F687064616568;
  }

  else
  {
    v26 = sub_264F10();

    v27 = (v26 & 1) == 0;
    v25 = 0x6E6F687064616568;
    if (v27)
    {
      v25 = 0x6761702E6B6F6F62;
    }
  }

  v28 = *(sub_2EF0(&qword_319AF8, &qword_279110) + 48);
  *v15 = v25;
  v15[1] = 0xEA00000000007365;
  sub_7204C(v15 + v28);
  swift_storeEnumTagMultiPayload();
  sub_707F0(v8);
  v29 = type metadata accessor for AssetAction(0);
  v30 = (*(*(v29 - 8) + 48))(v8, 1, v29);
  v50 = v15;
  if (v30 == 1)
  {
    sub_8E80(v8, &qword_319AC8, &qword_287AB0);
    *v11 = 0u;
    *(v11 + 1) = 0u;
    *(v11 + 4) = 0;
  }

  else
  {
    *(v11 + 3) = v29;
    *(v11 + 4) = sub_723E4(&qword_319B08);
    v31 = sub_10934(v11);
    sub_7237C(v8, v31, type metadata accessor for AssetAction);
  }

  swift_storeEnumTagMultiPayload();
  v56 = 0x403C000000000000;
  v32 = enum case for Font.TextStyle.subheadline(_:);
  v33 = v53;
  v34 = *(v52 + 13);
  v52 = v11;
  v35 = v54;
  v34(v53, enum case for Font.TextStyle.subheadline(_:), v54);
  v36 = v34;
  v51 = sub_40130();
  sub_2612E0();
  v37 = v16[5];
  v56 = 0x4008000000000000;
  v36(v33, v32, v35);
  sub_2612E0();
  v38 = v16[6];
  *&v19[v38] = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v39 = v16[14];
  v40 = sub_260BD0();
  (*(*(v40 - 8) + 56))(&v19[v39], 1, 1, v40);
  v19[v16[7]] = 1;
  v19[v16[8]] = 0;
  v19[v16[9]] = 1;
  v41 = &v19[v16[10]];
  *v41 = 1;
  *(v41 + 1) = 0;
  *(v41 + 2) = 0;
  *(v41 + 3) = 0;
  sub_7237C(v50, &v19[v16[11]], type metadata accessor for ButtonViewModel.Content);
  v19[v16[12]] = 1;
  sub_7237C(v52, &v19[v16[13]], type metadata accessor for ButtonViewModel.ActionKind);
  v56 = 0x4020000000000000;
  v42 = v32;
  v43 = v36;
  v36(v33, v32, v35);
  v44 = v55;
  sub_2612E0();
  v45 = type metadata accessor for ButtonView();
  v46 = v45[5];
  v56 = 0x3FF8000000000000;
  v43(v33, v42, v35);
  sub_2612E0();
  v47 = v45[6];
  *(v44 + v47) = swift_getKeyPath();
  sub_2EF0(&qword_319B00, &unk_26EA40);
  swift_storeEnumTagMultiPayload();
  return sub_7237C(v19, v44 + v45[7], type metadata accessor for ButtonViewModel);
}

uint64_t sub_7200C()
{
  sub_3080((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_7204C@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v2 = sub_264010();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_263FA0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v1[4];
  sub_2E18(v1, v1[3]);
  sub_260860();
  v13 = sub_2609D0();
  v15 = v14;
  if (v13 != sub_2609D0() || v15 != v16)
  {
    sub_264F10();
  }

  sub_263F90();
  (*(v3 + 104))(v6, enum case for LocalizerLookupStrategy.default(_:), v2);
  sub_260B80();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_7237C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_723E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AssetAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_72428(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetAction.Kind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_7248C(uint64_t a1)
{
  v2 = type metadata accessor for AssetAction.Kind(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PlaceholderTextView.PlaceholderSize.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 30)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  if (result == 20)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (result == 10)
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_72528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_7259C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_72608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_72678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_726F0@<X0>(uint64_t *a1@<X8>)
{
  result = PlaceholderTextView.PlaceholderSize.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t PlaceholderTextView.init<>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_72770(a1, a2);
  result = sub_2EF0(&qword_319B20, &unk_26DA48);
  v4 = (a2 + *(result + 28));
  *v4 = sub_727E0;
  v4[1] = 0;
  return result;
}

uint64_t sub_72770(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_319B18, &qword_26DA40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_727E0(uint64_t a1)
{
  v2 = sub_260BD0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_260B00();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v17 - v13;
  (*(v3 + 16))(v6, a1, v2);
  sub_260B10();
  (*(v8 + 16))(v12, v14, v7);
  sub_73944();
  v15 = sub_263310();
  (*(v8 + 8))(v14, v7);
  return v15;
}

uint64_t PlaceholderTextView.init<A>(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for PlaceholderTextView.ContentType();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  v15 = swift_allocObject();
  *(v15 + 2) = a4;
  *(v15 + 3) = a5;
  *(v15 + 4) = a6;
  *(v15 + 5) = a2;
  *(v15 + 6) = a3;
  result = type metadata accessor for PlaceholderTextView();
  v17 = (a7 + *(result + 28));
  *v17 = sub_72BB8;
  v17[1] = v15;
  return result;
}

uint64_t sub_72A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t sub_72B80()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t PlaceholderTextView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v4 = sub_2617C0();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_317F58, &qword_26A9B0);
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = *(v39 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v36 - v11;
  v13 = *(a1 + 16);
  v36 = *(v13 - 8);
  v14 = *(v36 + 64);
  __chkstk_darwin(v10);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2EF0(&qword_319B28, &qword_26DA58);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v36 - v19;
  v21 = type metadata accessor for PlaceholderTextView.ContentType();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = &v36 - v23;
  (*(v25 + 16))(&v36 - v23, v2, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v48._countAndFlagsBits = 32;
      v48._object = 0xE100000000000000;
      v44 = sub_2645A0(v48, 10 * *v24 + 10);
      v45 = v27;
      v46 = 0;
      v47 = &_swiftEmptyArrayStorage;
      sub_2617A0();
      sub_262E70();
      (*(v37 + 8))(v7, v38);

      v29 = v39;
      v28 = v40;
      (*(v39 + 16))(v20, v12, v40);
      swift_storeEnumTagMultiPayload();
      sub_2EF0(&qword_319B30, &qword_26DA60);
      sub_731C4();
      v44 = &type metadata for Text;
      v45 = &protocol witness table for Text;
      swift_getOpaqueTypeConformance2();
      sub_261F80();
      return (*(v29 + 8))(v12, v28);
    }

    else
    {
      v42 = 0;
      v43 = 0;
      sub_261F80();
      v35 = v45;
      *v20 = v44;
      v20[8] = v35;
      swift_storeEnumTagMultiPayload();
      sub_2EF0(&qword_319B30, &qword_26DA60);
      sub_731C4();
      v44 = &type metadata for Text;
      v45 = &protocol witness table for Text;
      swift_getOpaqueTypeConformance2();
      return sub_261F80();
    }
  }

  else
  {
    v31 = v36;
    (*(v36 + 32))(v16, v24, v13);
    v32 = v2 + *(a1 + 28);
    v33 = *(v32 + 8);
    v42 = (*v32)(v16);
    v43 = 1;

    sub_261F80();
    v34 = v45;
    *v20 = v44;
    v20[8] = v34;
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_319B30, &qword_26DA60);
    sub_731C4();
    v44 = &type metadata for Text;
    v45 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    sub_261F80();

    return (*(v31 + 8))(v16, v13);
  }
}

unint64_t sub_731C4()
{
  result = qword_319B38[0];
  if (!qword_319B38[0])
  {
    sub_2F9C(&qword_319B30, &qword_26DA60);
    result = swift_getWitnessTable();
    atomic_store(result, qword_319B38);
  }

  return result;
}

unint64_t sub_732AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for PlaceholderTextView.ContentType();
  if (v3 <= 0x3F)
  {
    result = sub_16D28();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_73334(_DWORD *a1, int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= 1)
  {
    v3 = 1;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v6 = (v3 & 0xFFFFFFFFFFFFFFF8) + 24;
  v7 = v6 & 0xFFFFFFF8;
  v8 = a2 - 2147483646;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  if (v10 == 4)
  {
    v11 = *(a1 + v6);
    if (!v11)
    {
      goto LABEL_5;
    }
  }

  else if (v10 == 2)
  {
    v11 = *(a1 + v6);
    if (!v11)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v11 = *(a1 + v6);
    if (!v11)
    {
LABEL_5:
      v4 = *((a1 + v3 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v4 >= 0xFFFFFFFF)
      {
        LODWORD(v4) = -1;
      }

      return (v4 + 1);
    }
  }

  v12 = v11 - 1;
  if (v7)
  {
    v12 = 0;
    LODWORD(v7) = *a1;
  }

  return (v7 | v12) ^ 0x80000000;
}

int *sub_7340C(int *result, int a2, int a3, uint64_t a4)
{
  v4 = *(*(*(a4 + 16) - 8) + 64);
  if (v4 <= 1)
  {
    v4 = 1;
  }

  v5 = (v4 & 0xFFFFFFFFFFFFFFF8) + 24;
  if (a3 < 0)
  {
    v7 = a3 - 2147483646;
    if ((v4 & 0xFFFFFFF8) != 0xFFFFFFE8)
    {
      v7 = 2;
    }

    if (v7 >= 0x10000)
    {
      v8 = 4;
    }

    else
    {
      v8 = 2;
    }

    if (v7 < 0x100)
    {
      v6 = 1;
    }

    else
    {
      v6 = v8;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    v9 = a2 & 0x7FFFFFFF;
    if ((v4 & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 1;
    }

    if ((v4 & 0xFFFFFFF8) != 0xFFFFFFE8)
    {
      v11 = result;
      bzero(result, v5);
      result = v11;
      *v11 = v9;
    }

    if (v6 > 1)
    {
      if (v6 == 2)
      {
        *(result + v5) = v10;
      }

      else
      {
        *(result + v5) = v10;
      }
    }

    else if (v6)
    {
      *(result + v5) = v10;
    }

    return result;
  }

  v6 = 0;
  if (a2 < 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v6 <= 1)
  {
    if (v6)
    {
      *(result + v5) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_29;
    }

LABEL_28:
    if (!a2)
    {
      return result;
    }

    goto LABEL_29;
  }

  if (v6 == 2)
  {
    *(result + v5) = 0;
    goto LABEL_28;
  }

  *(result + v5) = 0;
  if (a2)
  {
LABEL_29:
    *((result + v4 + 8) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_73540(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for PlaceholderTextView.PlaceholderSize();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_735BC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 64) <= 1uLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_26;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v9 < 2)
    {
LABEL_26:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_26;
  }

LABEL_15:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_736D0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 1)
  {
    v5 = 1;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_73888()
{
  result = qword_319CC0;
  if (!qword_319CC0)
  {
    sub_2F9C(&qword_319CC8, &unk_26DBE0);
    sub_731C4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319CC0);
  }

  return result;
}

unint64_t sub_73944()
{
  result = qword_3184E0;
  if (!qword_3184E0)
  {
    sub_260B00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3184E0);
  }

  return result;
}

uint64_t AsyncResourceImage.init(resource:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a2;
  a4[1] = a3;
  v6 = type metadata accessor for ImageResourceLoader();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  sub_2EF0(&qword_318728, &qword_26DBF0);
  v10 = swift_allocObject();
  *(v10 + 28) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v9 + 24) = v10;

  sub_2603B0();

  sub_2631D0();

  a4[2] = a1;
  a4[3] = v12;
  a4[4] = v13;
  return result;
}

uint64_t type metadata accessor for ImageResourceLoader()
{
  result = qword_319D90;
  if (!qword_319D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AsyncResourceImage.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v4 = *(a1 + 16);
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  __chkstk_darwin(a1);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_261730();
  v37 = *(v34 - 8);
  v8 = *(v37 + 64);
  __chkstk_darwin(v34);
  v32 = v30 - v9;
  v10 = sub_261730();
  v38 = *(v10 - 8);
  v11 = *(v38 + 64);
  v12 = __chkstk_darwin(v10);
  v33 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v36 = v30 - v14;
  v15 = *v2;
  v30[1] = v2[1];
  v31 = v15;
  v17 = v2[4];
  v45 = v2[3];
  v16 = v45;
  v46 = v17;
  sub_2EF0(&qword_319CD8, &qword_26DBF8);
  sub_2631E0();
  v18 = v44;
  swift_getKeyPath();
  v45 = v18;
  sub_741A4();
  sub_260380();

  v19 = *(v18 + 16);
  v20 = v19;

  v31(v19);

  v45 = v16;
  v46 = v17;
  sub_2631E0();
  v21 = *(a1 + 24);
  v22 = v32;
  sub_262E40();

  (*(v35 + 8))(v7, v4);
  v45 = v16;
  v46 = v17;
  sub_2631E0();
  v42 = v21;
  v43 = &protocol witness table for _AppearanceActionModifier;
  v23 = v34;
  WitnessTable = swift_getWitnessTable();
  v25 = v33;
  sub_262AB0();

  (*(v37 + 8))(v22, v23);
  v40 = WitnessTable;
  v41 = &protocol witness table for _AppearanceActionModifier;
  v26 = swift_getWitnessTable();
  v27 = v36;
  sub_1609C(v25, v10, v26);
  v28 = *(v38 + 8);
  v28(v25, v10);
  sub_1609C(v27, v10, v26);
  return (v28)(v27, v10);
}

void sub_73EE4(uint64_t a1)
{
  v1 = *(a1 + 24);
  os_unfair_lock_lock((v1 + 28));
  *(v1 + 24) = 0;
  v2 = *(v1 + 16);
  if (v2)
  {
    [v2 removeNonVolatileInterest];
  }

  os_unfair_lock_unlock((v1 + 28));
}

uint64_t sub_73F3C()
{
  v4 = v0[1];
  v5 = v0[2];
  sub_2EF0(&qword_319CD8, &qword_26DBF8);
  sub_2631E0();
  v1 = *v0;
  v2 = swift_unknownObjectRetain();
  sub_74480(v2);
}

uint64_t sub_73FA4(uint64_t result)
{
  v2 = *v1;
  if (!result)
  {
    if (!v2)
    {
      return result;
    }

    goto LABEL_8;
  }

  v3 = result;
  if (v2 != result)
  {
    [swift_unknownObjectRetain() removeInterest];
    if (*(v1 + 8) == 1)
    {
      [v3 removeNonVolatileInterest];
    }

    result = swift_unknownObjectRelease();
    if (v2)
    {
LABEL_8:
      [swift_unknownObjectRetain() addInterest];
      if (*(v1 + 8) == 1)
      {
        [v2 addNonVolatileInterest];
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void *sub_74070()
{
  swift_getKeyPath();
  sub_741A4();
  sub_260380();

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

id sub_740E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_741A4();
  sub_260380();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_74174(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_74330(v2);
}

unint64_t sub_741A4()
{
  result = qword_319CE0[0];
  if (!qword_319CE0[0])
  {
    type metadata accessor for ImageResourceLoader();
    result = swift_getWitnessTable();
    atomic_store(result, qword_319CE0);
  }

  return result;
}

uint64_t sub_7424C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_74288(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_742D0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_74330(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_741A4();
    sub_260370();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_57520();
  v5 = v4;
  v6 = a1;
  v7 = sub_264A20();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 16);
LABEL_8:
  *(v2 + 16) = a1;
}

void sub_74480(void *a1)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock((v3 + 28));
  sub_750A0((v3 + 16), v8);
  os_unfair_lock_unlock((v3 + 28));
  if (v8[0] != 1)
  {
    goto LABEL_5;
  }

  if (a1)
  {
    v4 = [a1 image];
    if (v4)
    {
      v5 = v4;
      v6 = v4;
      sub_74330(v5);
    }

LABEL_5:
    swift_unknownObjectRelease();
    return;
  }

  if (*(v1 + 16))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *v8 = v1;
    sub_741A4();
    sub_260370();
  }
}

id *sub_745D0@<X0>(id *result@<X0>, id a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = result;
  v7 = *result;
  if (*result)
  {
    if (v7 != a2)
    {
      v8 = a3;
      [*result removeWithObserver:?];
      a3 = v8;
      if (!a2)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  [a2 addWithObserver:a3];
LABEL_7:
  *v5 = a2;
  swift_unknownObjectRetain();
  sub_73FA4(v7);
  result = swift_unknownObjectRelease();
  v9 = 1;
LABEL_9:
  *a4 = v9;
  return result;
}

uint64_t sub_7468C()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock((v1 + 28));
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v2)
  {
    [swift_unknownObjectRetain() removeInterest];
    if (*(v1 + 24) == 1)
    {
      [v2 removeNonVolatileInterest];
    }

    swift_unknownObjectRelease_n();
  }

  os_unfair_lock_unlock((v1 + 28));

  v3 = *(v0 + 24);

  v4 = OBJC_IVAR____TtC7BooksUIP33_9B0EA36F259AEF224C359BD0BEB5D46019ImageResourceLoader___observationRegistrar;
  v5 = sub_2603C0();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_747B4()
{
  result = sub_2603C0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_7485C()
{
  v1 = v0;
  v2 = *(v0 + 24);
  os_unfair_lock_lock((v2 + 28));
  *(v2 + 24) = 1;
  v3 = *(v2 + 16);
  if (v3 && ([v3 addNonVolatileInterest], (v4 = *(v2 + 16)) != 0))
  {
    v5 = [v4 image];
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock((v2 + 28));
  swift_getKeyPath();
  sub_741A4();
  sub_260380();

  if (!*(v1 + 16))
  {
    if (!v5)
    {
      return;
    }

    v6 = v5;
    sub_74330(v5);
    v5 = v6;
  }
}

uint64_t sub_74948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  sub_264750();
  v6[6] = sub_264740();
  v8 = sub_264730();

  return (_swift_task_switch)(sub_749E4, v8, v7);
}

uint64_t sub_749E4()
{
  v1 = v0[6];
  v2 = v0[4];

  v3 = *(v2 + 24);
  os_unfair_lock_lock((v3 + 28));
  v4 = *(v3 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v3 + 28));
  if (v4)
  {
    v5 = v0[3];
    swift_unknownObjectRelease();
    if (v5 == v4)
    {
      v6 = v0[4];
      swift_getKeyPath();
      v0[2] = v6;
      sub_741A4();
      sub_260380();

      v7 = *(v6 + 16);
      v8 = v0[5];
      if (!v7 || !v8)
      {
        v14 = v0[4];
        v15 = v8;
        sub_74330(v8);
        goto LABEL_19;
      }

      v9 = v8;
      v10 = v7;
      v11 = [v10 CGImage];
      v12 = [v9 CGImage];
      v13 = v12;
      if (v11)
      {
        if (v12)
        {

          if (v11 == v13)
          {
            goto LABEL_11;
          }

LABEL_18:
          v28 = v0[4];
          v29 = v0[5];
          v30 = v9;
          sub_74330(v29);

          goto LABEL_19;
        }

        v13 = v11;
      }

      else if (!v12)
      {
LABEL_11:
        [v10 alignmentRectInsets];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        [v9 alignmentRectInsets];
        if (v17 == v27 && v19 == v24 && v21 == v25 && v23 == v26)
        {

          goto LABEL_19;
        }

        goto LABEL_18;
      }

      goto LABEL_18;
    }
  }

LABEL_19:
  v31 = v0[1];

  return v31();
}

uint64_t sub_74D68(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_261730();
  sub_261730();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

__n128 initializeBufferWithCopyOfBuffer for SeriesEntityCardView.RegularCardLayout(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_74E1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_74E64(uint64_t result, int a2, int a3)
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

uint64_t initializeBufferWithCopyOfBuffer for SingleThumbnailStyle(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_74EC8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_74F24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_74F88()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  v3 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_74FD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_156D0;

  return sub_74948(a1, v4, v5, v6, v7, v8);
}

void sub_750BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

uint64_t _CodeAnyComponentModel_KeyedBy.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t _CodeAnyComponentModel_KeyedBy.description.getter(uint64_t a1)
{
  v6 = *v1;
  v3 = *(a1 + 16);
  sub_2F9C(&qword_317250, &unk_2697A0);
  v4 = *(a1 + 32);
  sub_2642E0();
  swift_getWitnessTable();
  sub_264EF0();
  return 0;
}

uint64_t _CodeAnyComponentModel_KeyedBy.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_30CC(a1, v7);
  sub_752E8();
  sub_2642F0();
  if (v2)
  {
    return sub_3080(a1);
  }

  sub_2EF0(&qword_317250, &unk_2697A0);
  v6 = sub_2642D0();

  result = sub_3080(a1);
  *a2 = v6;
  return result;
}

unint64_t sub_752E8()
{
  result = qword_319EB0[0];
  if (!qword_319EB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_319EB0);
  }

  return result;
}

uint64_t sub_7536C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = a2[4];
  return _CodeAnyComponentModel_KeyedBy.init(from:)(a1, a3);
}

uint64_t _CodeAnyComponentModel_KeyedBy<>.init(_partiallyFrom:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_30CC(a1, v7);
  sub_752E8();
  v4 = sub_2642A0();
  v5 = sub_75408(v4);

  result = sub_3080(a1);
  *a2 = v5;
  return result;
}

uint64_t sub_75408(uint64_t a1)
{
  sub_2EF0(qword_319F38, &qword_26DF38);
  result = sub_264CF0();
  v3 = result;
  v4 = 0;
  v31 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v27 = result + 64;
  v28 = result;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = 16 * v15;
      v17 = (*(v31 + 48) + 16 * v15);
      v19 = *v17;
      v18 = v17[1];
      v20 = 40 * v15;
      sub_7568C(*(v31 + 56) + 40 * v15, v30);
      sub_30CC(v30, v29);

      sub_756E8(v30);
      v21 = (v15 >> 3) & 0x1FFFFFFFFFFFFFF8;
      v22 = 1 << v15;
      v3 = v28;
      *(v27 + v21) |= v22;
      v23 = (v28[6] + v16);
      *v23 = v19;
      v23[1] = v18;
      result = sub_F7CC(v29, v28[7] + v20);
      v24 = v28[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      v28[2] = v26;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_755A8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for SynchronousNativeIntentDispatchAction(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for SynchronousNativeIntentDispatchAction(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_7573C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1);
  (*(v2 + 16))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = *(a1 + 16);
  (*(v2 + 32))(v5 + v4, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_2EF0(&qword_319FC0, &unk_26E000);
  sub_260A70();
  sub_260A50();
  sub_8E38(&qword_319FC8, &qword_319FC0, &unk_26E000);
  sub_76AD0(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
  sub_76AD0(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
  return sub_260A80();
}

uint64_t sub_75988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v80 = a1;
  v85 = a5;
  v9 = sub_2EF0(&qword_319FD0, &qword_280830);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v86 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v84 = &v73 - v13;
  v87 = sub_2EF0(&qword_319FD8, &qword_26E010);
  v83 = *(v87 - 8);
  v14 = *(v83 + 64);
  v15 = __chkstk_darwin(v87);
  v82 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v73 - v17;
  v19 = type metadata accessor for ListItemMetadataTitleLockupView();
  v20 = *(a4 + 24);
  v76 = *(v19 + 36);
  v77 = a2;
  v78 = a3;
  v21 = v20(a1, a3, a4);
  v23 = v22;
  v25 = v24;
  v79 = a4;
  v74 = *(a4 + 16);
  v75 = a4 + 16;
  v74(&v92, a3, a4);
  sub_75F34();
  v26 = sub_262840();
  v28 = v27;
  LOBYTE(a4) = v29;
  sub_39DBC(v21, v23, v25 & 1);

  v91 = sub_262120();
  v30 = sub_2627F0();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_39DBC(v26, v28, a4 & 1);
  v37 = v78;

  KeyPath = swift_getKeyPath();
  v39 = *(v87 + 36);
  *&v18[v39] = swift_getKeyPath();
  v73 = sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  *v18 = v30;
  *(v18 + 1) = v32;
  v18[16] = v34 & 1;
  *(v18 + 3) = v36;
  *(v18 + 4) = KeyPath;
  v41 = v79;
  v40 = v80;
  *(v18 + 5) = 3;
  v81 = v18;
  v18[48] = 0;
  v42 = (*(v41 + 32))(v40, v37, v41);
  if (v45)
  {
    v46 = v42;
    v47 = v43;
    v48 = v44;
    v74(&v90, v37, v41);
    sub_76518();
    v48 &= 1u;
    v89 = v48;
    v49 = sub_262840();
    v51 = v50;
    v53 = v52;

    v88 = sub_262120();
    v54 = sub_2627F0();
    v80 = v55;
    LODWORD(v79) = v56;
    v58 = v57;
    sub_39DBC(v46, v47, v48);

    sub_39DBC(v49, v51, v53 & 1);

    v59 = swift_getKeyPath();
    v60 = v87;
    v61 = *(v87 + 36);
    v62 = swift_getKeyPath();
    v63 = v82;
    *&v82[v61] = v62;
    swift_storeEnumTagMultiPayload();
    v64 = v80;
    *v63 = v54;
    *(v63 + 8) = v64;
    *(v63 + 16) = v79 & 1;
    *(v63 + 24) = v58;
    *(v63 + 32) = v59;
    *(v63 + 40) = 2;
    *(v63 + 48) = 0;
    v65 = v84;
    sub_76B24(v63, v84);
    v66 = 0;
    v67 = v60;
  }

  else
  {
    v66 = 1;
    v65 = v84;
    v63 = v82;
    v67 = v87;
  }

  (*(v83 + 56))(v65, v66, 1, v67);
  v68 = v81;
  sub_8198(v81, v63, &qword_319FD8, &qword_26E010);
  v69 = v86;
  sub_8198(v65, v86, &qword_319FD0, &qword_280830);
  v70 = v85;
  sub_8198(v63, v85, &qword_319FD8, &qword_26E010);
  v71 = sub_2EF0(&qword_319FE0, &unk_26E078);
  sub_8198(v69, v70 + *(v71 + 48), &qword_319FD0, &qword_280830);
  sub_8E80(v65, &qword_319FD0, &qword_280830);
  sub_8E80(v68, &qword_319FD8, &qword_26E010);
  sub_8E80(v69, &qword_319FD0, &qword_280830);
  return sub_8E80(v63, &qword_319FD8, &qword_26E010);
}

uint64_t sub_75F34()
{
  v1 = sub_2626C0();
  v41 = *(v1 - 8);
  v42 = v1;
  v2 = *(v41 + 64);
  __chkstk_darwin(v1);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2EF0(&qword_318458, &unk_26B270);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v41 - v11;
  __chkstk_darwin(v10);
  v14 = &v41 - v13;
  v15 = sub_262730();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v41 - v22;
  __chkstk_darwin(v21);
  v25 = &v41 - v24;
  v26 = *(v16 + 104);
  if (*v0 <= 1u)
  {
    if (*v0)
    {
      v27 = &enum case for Font.TextStyle.subheadline(_:);
    }

    else
    {
      v27 = &enum case for Font.TextStyle.footnote(_:);
    }

    v26(&v41 - v24, *v27, v15);
    v29 = sub_2625C0();
    (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
    sub_262680();
    sub_8E80(v14, &qword_318458, &unk_26B270);
    (*(v16 + 8))(v25, v15);
LABEL_13:
    sub_2625A0();

    goto LABEL_16;
  }

  if (*v0 == 2)
  {
    v26(v23, enum case for Font.TextStyle.headline(_:), v15);
    if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
    {
      v28 = sub_2625C0();
      (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
    }

    else
    {
      v31 = enum case for Font.Design.serif (_:);
      v32 = sub_2625C0();
      v33 = *(v32 - 8);
      (*(v33 + 104))(v12, v31, v32);
      (*(v33 + 56))(v12, 0, 1, v32);
    }

    sub_262680();
    sub_8E80(v12, &qword_318458, &unk_26B270);
    (*(v16 + 8))(v23, v15);
    goto LABEL_13;
  }

  v26(v20, enum case for Font.TextStyle.headline(_:), v15);
  if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
  {
    v30 = sub_2625C0();
    (*(*(v30 - 8) + 56))(v9, 1, 1, v30);
  }

  else
  {
    v34 = enum case for Font.Design.serif (_:);
    v35 = sub_2625C0();
    v36 = *(v35 - 8);
    (*(v36 + 104))(v9, v34, v35);
    (*(v36 + 56))(v9, 0, 1, v35);
  }

  sub_262680();
  sub_8E80(v9, &qword_318458, &unk_26B270);
  (*(v16 + 8))(v20, v15);
LABEL_16:
  v38 = v41;
  v37 = v42;
  (*(v41 + 104))(v4, enum case for Font.Leading.tight(_:), v42);

  v39 = sub_2626E0();

  (*(v38 + 8))(v4, v37);
  return v39;
}

uint64_t sub_76518()
{
  v0 = sub_2626C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2EF0(&qword_318458, &unk_26B270);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v17 - v7;
  v9 = sub_262730();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, enum case for Font.TextStyle.footnote(_:), v9);
  v14 = sub_2625C0();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  sub_262680();
  sub_8E80(v8, &qword_318458, &unk_26B270);
  (*(v10 + 8))(v13, v9);
  (*(v1 + 104))(v4, enum case for Font.Leading.tight(_:), v0);

  v15 = sub_2626E0();

  (*(v1 + 8))(v4, v0);
  return v15;
}

uint64_t sub_767AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  sub_2EF0(&qword_318170, &unk_26AF40);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for ListItemMetadataTitleLockupView();
  v7 = *(*(a2 - 8) + 32);
  v8 = a3 + *(v6 + 36);

  return v7(v8, a1, a2);
}

uint64_t sub_768D0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for ListItemMetadataTitleLockupView();
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

uint64_t sub_76A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for ListItemMetadataTitleLockupView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_75988(a1, v8, v5, v6, a2);
}

uint64_t sub_76AD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_76B24(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_319FD8, &qword_26E010);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t View.imageResourceProvider(_:)()
{
  swift_getKeyPath();
  sub_262A90();
}

uint64_t EnvironmentValues.imageResourceProvider.getter()
{
  sub_30824();

  return sub_261CB0();
}

uint64_t EnvironmentValues.imageResourceProvider.setter(uint64_t *a1)
{
  sub_30CC(a1, v3);
  sub_30824();
  sub_261CC0();
  return sub_3080(a1);
}

uint64_t View.imageResourceProvider(from:)()
{
  swift_getKeyPath();
  sub_2EF0(&qword_317000, &qword_2693E0);
  sub_263C70();
  sub_264190();
  sub_262A90();

  return sub_3080(v1);
}

void (*EnvironmentValues.imageResourceProvider.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v3 + 128) = sub_30824();
  sub_261CB0();
  return sub_76F0C;
}

void sub_76F0C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 120);
  v4 = *(*a1 + 128);
  if (a2)
  {
    sub_30CC(*a1, (v2 + 5));
    sub_30CC((v2 + 5), (v2 + 10));
    sub_261CC0();
    sub_3080(v2 + 5);
  }

  else
  {
    sub_30CC(*a1, (v2 + 5));
    sub_261CC0();
  }

  sub_3080(v2);

  free(v2);
}

uint64_t sub_77010(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_2F9C(&qword_319FF8, &unk_26E1D0);
  sub_261730();
  sub_77088();
  return swift_getWitnessTable();
}

unint64_t sub_77088()
{
  result = qword_31A000;
  if (!qword_31A000)
  {
    sub_2F9C(&qword_319FF8, &unk_26E1D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A000);
  }

  return result;
}

uint64_t sub_77104@<X0>(uint64_t a1@<X8>)
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
  ButtonView = type metadata accessor for ListItemAccessoryWantToReadButtonView();
  sub_8198(v1 + *(ButtonView + 20), v11, &qword_317E08, &qword_26A550);
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

uint64_t sub_772EC()
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

uint64_t sub_77434@<X0>(uint64_t *a1@<X8>)
{
  v90 = a1;
  v2 = sub_2601E0();
  v80 = *(v2 - 8);
  v3 = *(v80 + 64);
  __chkstk_darwin(v2);
  v82 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_260560();
  v5 = *(v87 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v87);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_260600();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2EF0(&qword_316B98, &unk_275840);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v85 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v86 = &v66 - v18;
  __chkstk_darwin(v17);
  v83 = &v66 - v19;
  v88 = sub_263AF0();
  v84 = *(v88 - 8);
  v20 = *(v84 + 64);
  __chkstk_darwin(v88);
  v89 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2EF0(&qword_31A0C8, &qword_26E2C0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v66 - v24;
  v26 = type metadata accessor for AssetAction.Kind(0);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26);
  v81 = &v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v66 - v30;
  sub_772EC();
  *v31 = 0xD00000000000001ALL;
  *(v31 + 1) = 0x8000000000291540;
  *(v31 + 8) = 0;
  swift_storeEnumTagMultiPayload();
  v32 = (v1 + *(type metadata accessor for ListItemAccessoryWantToReadButtonView() + 28));
  v33 = v32[4];
  sub_2E18(v32, v32[3]);
  v34 = *(v33 + 8);
  v35 = sub_2606E0();
  v76 = v36;
  v77 = v35;
  v37 = v80;
  sub_77104(v25);
  v38 = (*(v37 + 48))(v25, 1, v2);
  v73 = v2;
  if (v38 == 1)
  {
    sub_8E80(v25, &qword_31A0C8, &qword_26E2C0);
    v74 = 0;
    v75 = 0;
  }

  else
  {
    v39 = sub_2601C0();
    v74 = v40;
    v75 = v39;
    (*(v37 + 8))(v25, v2);
  }

  v41 = v37;
  v42 = v32[4];
  sub_2E18(v32, v32[3]);
  v71 = sub_260870();
  v43 = v89;
  sub_263AC0();
  v72 = type metadata accessor for AssetAction.Kind;
  v44 = v31;
  v45 = v31;
  v46 = v81;
  sub_792A8(v44, v81, type metadata accessor for AssetAction.Kind);
  v47 = v12;
  v78 = v45;
  AssetAction.Kind.appAnalyticsClickTargetType.getter(v12);
  v48 = *(v5 + 104);
  v66 = v5 + 104;
  v68 = enum case for LinkActionType.click(_:);
  v67 = v48;
  v48(v8);
  v49 = v83;
  v70 = v47;
  v69 = v8;
  sub_260610();
  v50 = sub_260620();
  v51 = *(v50 - 8);
  v79 = *(v51 + 56);
  v80 = v51 + 56;
  v79(v49, 0, 1, v50);
  v52 = v82;
  sub_2601D0();
  v53 = sub_2601C0();
  v55 = v54;
  (*(v41 + 8))(v52, v73);
  v56 = v90;
  *v90 = v53;
  v56[1] = v55;
  v57 = v76;
  v56[2] = v77;
  v56[3] = v57;
  v58 = v74;
  v56[4] = v75;
  v56[5] = v58;
  *(v56 + 48) = v71 & 1;
  v59 = type metadata accessor for AssetAction(0);
  v60 = v84;
  v61 = v88;
  (*(v84 + 16))(v56 + *(v59 + 32), v43, v88);
  v82 = v59;
  sub_792A8(v46, v56 + *(v59 + 40), v72);
  v62 = v85;
  sub_8198(v49, v85, &qword_316B98, &unk_275840);
  v63 = *(v51 + 48);
  if (v63(v62, 1, v50) == 1)
  {
    AssetAction.Kind.appAnalyticsClickTargetType.getter(v70);
    v67(v69, v68, v87);
    v64 = v86;
    sub_260610();
    sub_8E80(v49, &qword_316B98, &unk_275840);
    sub_7248C(v46);
    (*(v60 + 8))(v89, v88);
    sub_7248C(v78);
    if (v63(v62, 1, v50) != 1)
    {
      sub_8E80(v62, &qword_316B98, &unk_275840);
    }
  }

  else
  {
    sub_8E80(v49, &qword_316B98, &unk_275840);
    sub_7248C(v46);
    (*(v60 + 8))(v89, v61);
    sub_7248C(v78);
    v64 = v86;
    (*(v51 + 32))(v86, v62, v50);
  }

  v79(v64, 0, 1, v50);
  return sub_22148(v64, v90 + *(v82 + 9), &qword_316B98, &unk_275840);
}

uint64_t ListItemAccessoryWantToReadButtonView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v39 = sub_260290();
  v35 = *(v39 - 8);
  v2 = *(v35 + 64);
  v3 = __chkstk_darwin(v39);
  v36 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v41 = &v34 - v5;
  v38 = sub_264410();
  v6 = *(v38 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v38);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v34 - v11;
  v13 = sub_2EF0(&qword_31A008, &qword_26E210);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v34 - v15;
  v42 = v1;
  sub_2EF0(&qword_31A010, &qword_26E218);
  sub_8E38(&qword_31A018, &qword_31A010, &qword_26E218);
  sub_263230();
  v17 = *(type metadata accessor for ListItemAccessoryWantToReadButtonView() + 24);
  sub_2EF0(&qword_31A020, &qword_26E220);
  sub_261300();
  sub_261300();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v18 = v35;
  sub_2613A0();
  v37 = v13;
  v19 = &v16[*(v13 + 36)];
  v20 = v46;
  *v19 = v45;
  *(v19 + 1) = v20;
  *(v19 + 2) = v47;
  sub_772EC();
  sub_2643A0();
  v21 = v41;
  sub_260260();
  v22 = v38;
  (*(v6 + 16))(v10, v12, v38);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v24 = v21;
  v25 = v39;
  (*(v18 + 16))(v36, v24, v39);
  v26 = sub_264490();
  v28 = v27;
  (*(v18 + 8))(v41, v25);
  (*(v6 + 8))(v12, v22);
  v43 = v26;
  v44 = v28;
  sub_10A84();
  v29 = sub_2628F0();
  v31 = v30;
  LOBYTE(v10) = v32;
  sub_78500();
  sub_262AF0();
  sub_39DBC(v29, v31, v10 & 1);

  return sub_8E80(v16, &qword_31A008, &qword_26E210);
}

uint64_t sub_781A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2604E0();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  ButtonView = type metadata accessor for ListItemAccessoryWantToReadButtonView();
  v23 = *(ButtonView - 8);
  v7 = *(v23 + 64);
  __chkstk_darwin(ButtonView - 8);
  v8 = sub_2EF0(&qword_31A010, &qword_26E218);
  v9 = (a2 + v8[12]);
  v10 = sub_2EF0(&qword_31A120, &unk_26E2D0);
  v9[3] = v10;
  v9[4] = sub_8E38(&qword_31A128, &qword_31A120, &unk_26E2D0);
  v11 = sub_10934(v9);
  v12 = sub_2610B0();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = (a2 + v8[13]);
  v13[3] = type metadata accessor for AssetAction(0);
  v13[4] = sub_79258(&qword_319AE8, type metadata accessor for AssetAction);
  v14 = sub_10934(v13);
  sub_77434(v14);
  sub_792A8(a1, &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ListItemAccessoryWantToReadButtonView);
  v15 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v16 = swift_allocObject();
  sub_79164(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  sub_2604C0();
  sub_260420();
  v17 = a2 + v8[9];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  v18 = v8[10];
  *(a2 + v18) = swift_getKeyPath();
  sub_2EF0(&qword_316930, &qword_2689A0);
  swift_storeEnumTagMultiPayload();
  v19 = a2 + v8[11];
  result = swift_getKeyPath();
  *v19 = result;
  *(v19 + 40) = 0;
  v21 = (v11 + *(v10 + 36));
  *v21 = sub_791C8;
  v21[1] = v16;
  return result;
}

uint64_t type metadata accessor for ListItemAccessoryWantToReadButtonView()
{
  result = qword_31A0A0;
  if (!qword_31A0A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_78500()
{
  result = qword_31A028;
  if (!qword_31A028)
  {
    sub_2F9C(&qword_31A008, &qword_26E210);
    sub_8E38(&qword_31A030, &qword_31A038, &qword_26E228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A028);
  }

  return result;
}

uint64_t sub_785D4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  a1[1] = v2;
  v3 = sub_2EF0(&qword_31A130, &qword_26E378);
  return sub_78624((a1 + *(v3 + 44)));
}

uint64_t sub_78624@<X0>(uint64_t *a1@<X8>)
{
  v45 = a1;
  v1 = sub_2637A0();
  v43 = *(v1 - 8);
  v44 = v1;
  v2 = *(v43 + 64);
  __chkstk_darwin(v1);
  v41 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_263780();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v36 - v11;
  __chkstk_darwin(v10);
  v14 = &v36 - v13;
  v15 = sub_2EF0(&qword_31A138, &qword_26E380);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  v18 = __chkstk_darwin(v15);
  v42 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = (&v36 - v21);
  __chkstk_darwin(v20);
  v24 = &v36 - v23;
  v25 = [objc_opt_self() tertiarySystemFillColor];
  v40 = sub_263070();
  sub_772EC();
  v39 = sub_2630B0();
  v38 = _s7BooksUI14ColorConstantsV9booksGray05SwiftB00C0Vvg_0();
  KeyPath = swift_getKeyPath();
  sub_263770();
  sub_263750();
  v26 = *(v5 + 8);
  v26(v14, v4);
  sub_263760();
  v26(v12, v4);
  v27 = v41;
  sub_263790();
  v28 = (v22 + *(v16 + 44));
  LODWORD(v12) = *(sub_2EF0(&qword_31A140, &qword_26E3B8) + 28);
  sub_79258(&qword_31A148, &type metadata accessor for ReplaceSymbolEffect);
  sub_261890();
  (*(v43 + 8))(v27, v44);
  v26(v9, v4);
  *v28 = swift_getKeyPath();
  v30 = KeyPath;
  v29 = v38;
  *v22 = v39;
  v22[1] = v30;
  v22[2] = v29;
  sub_22148(v22, v24, &qword_31A138, &qword_26E380);
  v31 = v42;
  sub_8198(v24, v42, &qword_31A138, &qword_26E380);
  v32 = v45;
  *v45 = v40;
  *(v32 + 4) = 256;
  v33 = v32;
  v34 = sub_2EF0(&qword_31A150, &qword_26E3F0);
  sub_8198(v31, v33 + *(v34 + 48), &qword_31A138, &qword_26E380);

  sub_8E80(v24, &qword_31A138, &qword_26E380);
  sub_8E80(v31, &qword_31A138, &qword_26E380);
}

uint64_t sub_78A8C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_31A040, &unk_279210);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_2EF0(&qword_31A020, &qword_26E220);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7] + 24);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_78BC4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_31A040, &unk_279210);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = sub_2EF0(&qword_31A020, &qword_26E220);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7] + 24) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_78CE4()
{
  sub_78DC8(319, &qword_31A0B0, &qword_31A0B8, &unk_279D00);
  if (v0 <= 0x3F)
  {
    sub_78DC8(319, &qword_31A0C0, &qword_31A0C8, &qword_26E2C0);
    if (v1 <= 0x3F)
    {
      sub_78E1C();
      if (v2 <= 0x3F)
      {
        sub_44744();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_78DC8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_2F9C(a3, a4);
    v5 = sub_2611E0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_78E1C()
{
  if (!qword_31A0D0)
  {
    sub_78E78();
    v0 = sub_261310();
    if (!v1)
    {
      atomic_store(v0, &qword_31A0D0);
    }
  }
}

unint64_t sub_78E78()
{
  result = qword_31A0D8;
  if (!qword_31A0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A0D8);
  }

  return result;
}

unint64_t sub_78ED0()
{
  result = qword_31A110;
  if (!qword_31A110)
  {
    sub_2F9C(&qword_31A118, &qword_26E2C8);
    sub_78500();
    sub_79258(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A110);
  }

  return result;
}

uint64_t sub_78F8C()
{
  ButtonView = type metadata accessor for ListItemAccessoryWantToReadButtonView();
  v2 = *(*(ButtonView - 1) + 64);
  v3 = v0 + ((*(*(ButtonView - 1) + 80) + 16) & ~*(*(ButtonView - 1) + 80));
  sub_3074(*v3, *(v3 + 8));
  v4 = ButtonView[5];
  sub_2EF0(&qword_317E08, &qword_26A550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_2601E0();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v3 + v4, 1, v5))
    {
      (*(v6 + 8))(v3 + v4, v5);
    }
  }

  else
  {
    v7 = *(v3 + v4);
  }

  v8 = ButtonView[6];
  v9 = sub_2EF0(&qword_31A020, &qword_26E220);
  (*(*(v9 - 8) + 8))(v3 + v8, v9);
  sub_3080((v3 + ButtonView[7]));

  return swift_deallocObject();
}

uint64_t sub_79164(uint64_t a1, uint64_t a2)
{
  ButtonView = type metadata accessor for ListItemAccessoryWantToReadButtonView();
  (*(*(ButtonView - 8) + 32))(a2, a1, ButtonView);
  return a2;
}

uint64_t sub_791C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*(type metadata accessor for ListItemAccessoryWantToReadButtonView() - 8) + 80);

  return sub_785D4(a1);
}

uint64_t sub_79258(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_792A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_79310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_261C90();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2EF0(&qword_316DC0, &qword_2691C0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v18 - v12);
  sub_8198(v2 + *(a1 + 64), &v18 - v12, &qword_316DC0, &qword_2691C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_261180();
    return (*(*(v14 - 8) + 32))(a2, v13, v14);
  }

  else
  {
    v16 = *v13;
    sub_264900();
    v17 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_79514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_261C90();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2EF0(&qword_316930, &qword_2689A0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v18 - v12);
  sub_8198(v2 + *(a1 + 68), &v18 - v12, &qword_316930, &qword_2689A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_260640();
    return (*(*(v14 - 8) + 32))(a2, v13, v14);
  }

  else
  {
    v16 = *v13;
    sub_264900();
    v17 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_79718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_261C90();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2EF0(&qword_318150, &qword_279A70);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v18 - v12);
  sub_8198(v2 + *(a1 + 72), &v18 - v12, &qword_318150, &qword_279A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_260CA0();
    return (*(*(v14 - 8) + 32))(a2, v13, v14);
  }

  else
  {
    v16 = *v13;
    sub_264900();
    v17 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_7991C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_261C90();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_8198(v2 + *(a1 + 76), v13, &qword_31A240, &qword_26E588);
  if (v15 == 1)
  {
    v11 = v13[1];
    *a2 = v13[0];
    *(a2 + 16) = v11;
    *(a2 + 32) = v14;
  }

  else
  {
    sub_264900();
    v12 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_79A94(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31A158, &qword_26E3F8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_8198(a1, &v6 - v4, &qword_31A158, &qword_26E3F8);
  sub_2631D0();
  return sub_8E80(a1, &qword_31A158, &qword_26E3F8);
}

uint64_t sub_79B5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31A158, &qword_26E3F8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = *(a2 + 84);
  sub_8198(a1, &v9 - v7, &qword_31A158, &qword_26E3F8);
  sub_2EF0(qword_31A160, &qword_26E4F0);
  sub_2631F0();
  return sub_8E80(a1, &qword_31A158, &qword_26E3F8);
}

uint64_t BooksMenu.init(_:onPresentationChanged:content:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(uint64_t)@<X6>, void *a8@<X8>, __int128 a9, uint64_t a10, uint64_t a11)
{
  v36 = a6;
  v37 = a5;
  v35 = a9;
  v17 = sub_2EF0(&qword_31A158, &qword_26E3F8);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v35 - v19;
  v38 = a9;
  v39 = a10;
  v40 = a11;
  v21 = type metadata accessor for BooksMenu();
  v22 = v21[16];
  *(a8 + v22) = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  swift_storeEnumTagMultiPayload();
  v23 = v21[17];
  *(a8 + v23) = swift_getKeyPath();
  sub_2EF0(&qword_316930, &qword_2689A0);
  swift_storeEnumTagMultiPayload();
  v24 = v21[18];
  *(a8 + v24) = swift_getKeyPath();
  sub_2EF0(&qword_318150, &qword_279A70);
  swift_storeEnumTagMultiPayload();
  v25 = a8 + v21[19];
  *v25 = swift_getKeyPath();
  v25[40] = 0;
  v26 = a8 + v21[20];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  v27 = v21[21];
  v28 = sub_2601B0();
  (*(*(v28 - 8) + 56))(v20, 1, 1, v28);
  sub_79A94(v20);
  v29 = a8 + v21[22];
  sub_260D40();
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  v30 = v21[14];
  v31 = sub_7BE28(a3);
  v32 = a7(v31);
  v33 = a8 + v21[15];
  v37(v32);
  return sub_7BE38(a3);
}

uint64_t sub_79EDC(uint64_t a1)
{
  v2 = sub_260640();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_79514(a1, v6);
  sub_2604B0();
  sub_7D434(&qword_31A258, &type metadata accessor for ContentData);
  sub_7D434(&qword_31A260, &type metadata accessor for ContentData);
  sub_260630();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_7A040(uint64_t a1)
{
  v2 = sub_260640();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_79514(a1, v6);
  sub_260510();
  sub_7D434(&qword_31A248, &type metadata accessor for SectionData);
  sub_7D434(&qword_31A250, &type metadata accessor for SectionData);
  sub_260630();
  return (*(v3 + 8))(v6, v2);
}

uint64_t BooksMenu.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  sub_2F9C(&qword_3173A0, &qword_26D0C0);
  v36 = *(a1 + 16);
  v6 = v36;
  v7 = sub_261730();
  v38 = v7;
  v55 = sub_7BE48();
  v8.i64[0] = v6;
  v32 = v8;
  v41 = *(a1 + 24);
  v54 = v41.i64[1];
  WitnessTable = swift_getWitnessTable();
  v9 = *(a1 + 40);
  v50 = v7;
  v39 = v41.i64[0];
  v51 = v41.i64[0];
  v52 = WitnessTable;
  v53 = v9;
  v10 = sub_262760();
  v37 = *(v10 - 8);
  v11 = *(v37 + 64);
  __chkstk_darwin(v10);
  v31 = &v28 - v12;
  v30 = swift_getWitnessTable();
  v50 = v10;
  v51 = v30;
  v34 = &opaque type descriptor for <<opaque return type of View.systemColorScheme()>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v35 = *(OpaqueTypeMetadata2 - 8);
  v14 = *(v35 + 64);
  v15 = __chkstk_darwin(OpaqueTypeMetadata2);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v29 = &v28 - v18;
  (*(v4 + 16))(&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v19 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v20 = swift_allocObject();
  *&v21 = vdupq_laneq_s64(v41, 1).u64[0];
  *(&v21 + 1) = v9;
  *(v20 + 16) = vzip1q_s64(v32, v41);
  *(v20 + 32) = v21;
  (*(v4 + 32))(v20 + v19, &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v46 = v36;
  v47 = v41;
  v48 = v9;
  v49 = v2;
  v42 = v36;
  v43 = v41;
  v44 = v9;
  v45 = v2;
  v22 = v31;
  sub_262740();
  v23 = v30;
  sub_262BD0();
  (*(v37 + 8))(v22, v10);
  v50 = v10;
  v51 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v29;
  sub_1609C(v17, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v26 = *(v35 + 8);
  v26(v17, OpaqueTypeMetadata2);
  sub_1609C(v25, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v26)(v25, OpaqueTypeMetadata2);
}

void sub_7A66C(int a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(&v173 + 1) = a4;
  v174 = a5;
  *&v173 = a3;
  v172 = a1;
  v162 = sub_260450();
  v138 = *(v162 - 1);
  v8 = *(v138 + 64);
  __chkstk_darwin(v162);
  v137 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2601B0();
  v168 = *(v10 - 8);
  *&v169 = v10;
  v11 = *(v168 + 64);
  __chkstk_darwin(v10);
  v150 = &v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_260CA0();
  v140 = *(v13 - 8);
  v141 = v13;
  v14 = *(v140 + 64);
  __chkstk_darwin(v13);
  v139 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_260430();
  v159 = *(v16 - 8);
  v160 = v16;
  v17 = *(v159 + 64);
  __chkstk_darwin(v16);
  v161 = &v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_263BD0();
  v157 = *(v19 - 8);
  v158 = v19;
  v20 = *(v157 + 64);
  __chkstk_darwin(v19);
  v156 = &v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_263DD0();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v154 = &v133 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_263A10();
  v152 = *(v25 - 8);
  v153 = v25;
  v26 = *(v152 + 64);
  __chkstk_darwin(v25);
  v151 = &v133 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_263AF0();
  v166 = *(v28 - 8);
  v167 = v28;
  v29 = *(v166 + 64);
  v30 = __chkstk_darwin(v28);
  v155 = &v133 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v165 = &v133 - v32;
  v33 = sub_260560();
  v148 = *(v33 - 8);
  v149 = v33;
  v34 = *(v148 + 64);
  __chkstk_darwin(v33);
  v147 = &v133 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_260600();
  v144 = *(v146 - 8);
  v36 = *(v144 + 64);
  __chkstk_darwin(v146);
  v145 = &v133 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_260620();
  v163 = *(v38 - 8);
  v164 = v38;
  v39 = *(v163 + 64);
  __chkstk_darwin(v38);
  v170 = &v133 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_2EF0(&qword_31A158, &qword_26E3F8);
  v42 = *(*(v41 - 8) + 64);
  v43 = __chkstk_darwin(v41 - 8);
  v143 = &v133 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v142 = &v133 - v45;
  v46 = sub_2EF0(&qword_31A218, &qword_26E570);
  v47 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46 - 8);
  v49 = &v133 - v48;
  v50 = sub_260510();
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  __chkstk_darwin(v50);
  v171 = &v133 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_2EF0(&qword_31A220, &qword_26E578);
  v55 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54 - 8);
  v57 = &v133 - v56;
  v58 = sub_2604B0();
  v59 = *(v58 - 8);
  v60 = *(v59 + 64);
  __chkstk_darwin(v58);
  v62 = &v133 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = v173;
  *&v183 = v174;
  *(&v183 + 1) = a6;
  v63 = type metadata accessor for BooksMenu();
  sub_79EDC(v63);
  v64 = (*(v59 + 48))(v57, 1, v58);
  v174 = v63;
  if (v64 == 1)
  {
    sub_8E80(v57, &qword_31A220, &qword_26E578);
    v65 = a2;
  }

  else
  {
    (*(v59 + 32))(v62, v57, v58);
    sub_7A040(v63);
    v65 = a2;
    if ((*(v51 + 48))(v49, 1, v50) != 1)
    {
      v134 = v59;
      v135 = v62;
      v136 = v58;
      *&v173 = v51;
      *(&v173 + 1) = v50;
      v72 = v171;
      (*(v51 + 32))(v171, v49, v50);
      if (v172)
      {
        v73 = v142;
        sub_2601A0();
        (*(v168 + 56))(v73, 0, 1, v169);
        sub_79B5C(v73, v174);
        (*(v144 + 104))(v145, enum case for ClickData.TargetType.button(_:), v146);
        (*(v148 + 104))(v147, enum case for LinkActionType.click(_:), v149);
        sub_260610();
        v74 = *v65;
        v75 = v65[1];
        if (qword_315900 != -1)
        {
          swift_once();
        }

        v189 = xmmword_31ADB0;
        v190 = xmmword_31ADC0;
        v191 = xmmword_31ADD0;
        v192 = xmmword_31ADE0;
        v185 = xmmword_31AD70;
        v186 = xmmword_31AD80;
        v187 = xmmword_31AD90;
        v188 = xmmword_31ADA0;
        v182 = xmmword_31AD40;
        v183 = *algn_31AD50;
        v184 = xmmword_31AD60;
        v180 = &type metadata for String;
        *&v179 = 1701998445;
        *(&v179 + 1) = 0xE400000000000000;
        sub_FBD8(&v179, &v175);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v178 = &_swiftEmptyDictionarySingleton;
        sub_DC90(&v175, 0x79546E6F69746361, 0xEA00000000006570, isUniquelyReferenced_nonNull_native);
        v77 = v178;
        sub_2EF0(&qword_317218, &unk_269760);
        v78 = swift_allocObject();
        v169 = xmmword_267D30;
        *(v78 + 16) = xmmword_267D30;
        *(v78 + 32) = sub_1694E0();
        v180 = sub_2EF0(&qword_319B10, &qword_2777B0);
        *&v179 = v78;
        sub_FBD8(&v179, &v175);
        v79 = swift_isUniquelyReferenced_nonNull_native();
        v178 = v77;
        sub_DC90(&v175, 0x6E6F697461636F6CLL, 0xE800000000000000, v79);
        v80 = v167;
        if (qword_3158E0 != -1)
        {
          swift_once();
        }

        v81 = sub_2639E0();
        sub_B080(v81, qword_353F10);
        v82 = v151;
        sub_2639C0();

        sub_2EF0(&qword_3160D8, &qword_267D60);
        v83 = v152;
        v84 = *(v152 + 72);
        v85 = (*(v152 + 80) + 32) & ~*(v152 + 80);
        v86 = swift_allocObject();
        *(v86 + 16) = v169;
        v87 = v153;
        (*(v83 + 16))(v86 + v85, v82, v153);
        sub_263DC0();
        v88 = v165;
        sub_263AD0();
        (*(v83 + 8))(v82, v87);
        (*(v166 + 16))(v155, v88, v80);
        sub_2EF0(&qword_317258, &unk_27A660);
        v89 = swift_allocObject();
        *(v89 + 16) = v169;
        v90 = sub_2EF0(&qword_31A238, &unk_28B930);
        v91 = v90[12];
        v92 = v90[16];
        v93 = v90[20];
        v94 = v90[24];
        v95 = enum case for LocationType.button(_:);
        v96 = sub_260530();
        v97 = v161;
        (*(*(v96 - 8) + 104))(v161, v95, v96);
        (*(v163 + 16))(&v97[v91], v170, v164);
        (*(v173 + 16))(&v97[v92], v171, *(&v173 + 1));
        v98 = v134;
        v99 = v135;
        v100 = v136;
        (*(v134 + 16))(&v97[v93], v135, v136);
        (*(v98 + 56))(&v97[v93], 0, 1, v100);
        v101 = sub_2605F0();
        (*(*(v101 - 8) + 56))(&v97[v94], 1, 1, v101);
        (*(v159 + 104))(v97, enum case for AppAnalyticsAction.Type.clickEvent(_:), v160);
        *(v89 + 56) = v162;
        *(v89 + 64) = sub_7D434(&qword_31A230, &type metadata accessor for AppAnalyticsAction);
        sub_10934((v89 + 32));
        sub_260440();
        v102 = v156;
        sub_263BC0();
        v103 = v174;
        sub_7991C(v174, &v179);
        if (!v180)
        {
          (*(v157 + 8))(v102, v158);
          (*(v166 + 8))(v165, v167);
          (*(v163 + 8))(v170, v164);
          (*(v173 + 8))(v171, *(&v173 + 1));
          (*(v98 + 8))(v99, v136);
          sub_8E80(&v179, &qword_31A208, &unk_27A5E0);
          goto LABEL_8;
        }

        *&v169 = v181;
        sub_2E18(&v179, v180);
        v104 = v103;
        v105 = v158;
        v176 = v158;
        v177 = &protocol witness table for CompoundAction;
        v106 = sub_10934(&v175);
        v107 = v157;
        (*(v157 + 16))(v106, v102, v105);
        v108 = v139;
        sub_79718(v104, v139);
        sub_260B20();
        (*(v140 + 8))(v108, v141);
        (*(v107 + 8))(v102, v105);
        (*(v166 + 8))(v165, v167);
        (*(v163 + 8))(v170, v164);
        (*(v173 + 8))(v171, *(&v173 + 1));
        (*(v98 + 8))(v135, v136);
        sub_3080(&v175);
        v109 = &v179;
      }

      else
      {
        v110 = v174;
        v111 = *(v174 + 84);
        sub_2EF0(qword_31A160, &qword_26E4F0);
        v112 = v143;
        sub_2631E0();
        v113 = v168;
        v114 = v169;
        v115 = (*(v168 + 48))(v112, 1, v169);
        v116 = v135;
        if (v115 == 1)
        {
          (*(v173 + 8))(v72, *(&v173 + 1));
          (*(v134 + 8))(v116, v136);
          sub_8E80(v112, &qword_31A158, &qword_26E3F8);
          goto LABEL_8;
        }

        v117 = v150;
        (*(v113 + 32))(v150, v112, v114);
        v118 = sub_2EF0(&qword_31A228, &qword_26E580);
        v119 = *(v118 + 48);
        v120 = *(v118 + 64);
        v121 = *(v113 + 16);
        v122 = v161;
        v121(v161, v117, v114);
        v123 = v134;
        v124 = v116;
        v125 = v136;
        (*(v134 + 16))(&v122[v119], v124, v136);
        v126 = v173;
        (*(v173 + 16))(&v122[v120], v72, *(&v173 + 1));
        (*(v159 + 104))(v122, enum case for AppAnalyticsAction.Type.reportContextualActionSheetExposure(_:), v160);
        v127 = v137;
        sub_260440();
        sub_7991C(v110, &v182);
        if (!*(&v183 + 1))
        {
          (*(v138 + 8))(v127, v162);
          (*(v168 + 8))(v150, v169);
          (*(v126 + 8))(v171, *(&v173 + 1));
          (*(v123 + 8))(v135, v125);
          sub_8E80(&v182, &qword_31A208, &unk_27A5E0);
          goto LABEL_8;
        }

        v170 = v184;
        v167 = sub_2E18(&v182, *(&v183 + 1));
        v128 = v110;
        v129 = v162;
        v180 = v162;
        v181 = sub_7D434(&qword_31A230, &type metadata accessor for AppAnalyticsAction);
        v130 = sub_10934(&v179);
        v131 = v138;
        (*(v138 + 16))(v130, v127, v129);
        v132 = v139;
        sub_79718(v128, v139);
        sub_260B20();
        (*(v140 + 8))(v132, v141);
        (*(v131 + 8))(v127, v129);
        (*(v168 + 8))(v150, v169);
        (*(v126 + 8))(v171, *(&v173 + 1));
        (*(v123 + 8))(v135, v136);
        sub_3080(&v179);
        v109 = &v182;
      }

      sub_3080(v109);
      goto LABEL_8;
    }

    (*(v59 + 8))(v62, v58);
    sub_8E80(v49, &qword_31A218, &qword_26E570);
  }

  v66 = v65 + *(v174 + 88);
  v67 = sub_260D30();
  v68 = sub_264900();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&dword_0, v67, v68, "ContentData and SectionData should be present", v69, 2u);
  }

LABEL_8:
  v70 = v65[2];
  if (v70)
  {
    v71 = v65[3];
    v70(v172 & 1);
  }
}

uint64_t sub_7BA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(a1);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = v12;
  v18[1] = v13;
  v18[2] = v14;
  v18[3] = v15;
  v16 = type metadata accessor for BooksMenu();
  sub_1609C(a1 + *(v16 + 60), a3, a5);
  sub_1609C(v11, a3, a5);
  return (*(v8 + 8))(v11, a3);
}

uint64_t sub_7BB28@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v27 = a2;
  v29 = a5;
  v28 = sub_261180();
  v8 = *(v28 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v28);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2F9C(&qword_3173A0, &qword_26D0C0);
  v12 = sub_261730();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v26 - v18;
  v32 = a1;
  v33 = v27;
  v34 = a3;
  v35 = a4;
  v20 = type metadata accessor for BooksMenu();
  v21 = *(v20 + 56);
  sub_79310(v20, v11);
  sub_262A70();
  (*(v8 + 8))(v11, v28);
  v22 = sub_7BE48();
  v30 = a3;
  v31 = v22;
  WitnessTable = swift_getWitnessTable();
  sub_1609C(v17, v12, WitnessTable);
  v24 = *(v13 + 8);
  v24(v17, v12);
  sub_1609C(v19, v12, WitnessTable);
  return (v24)(v19, v12);
}

uint64_t sub_7BE28(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_7BE38(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_7BE48()
{
  result = qword_317398;
  if (!qword_317398)
  {
    sub_2F9C(&qword_3173A0, &qword_26D0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317398);
  }

  return result;
}

uint64_t sub_7BEAC()
{
  v1 = *(v0 + 16);
  v25 = *(v0 + 24);
  v26 = *(v0 + 40);
  v2 = type metadata accessor for BooksMenu();
  v3 = *(*(v2 - 1) + 64);
  v4 = (v0 + ((*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80)));
  v5 = *(v4 + 1);

  if (*(v4 + 2))
  {
    v6 = *(v4 + 3);
  }

  (*(*(v1 - 8) + 8))(&v4[v2[14]], v1);
  (*(*(v25 - 8) + 8))(&v4[v2[15]]);
  v7 = v2[16];
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_261180();
    (*(*(v8 - 8) + 8))(&v4[v7], v8);
  }

  else
  {
    v9 = *&v4[v7];
  }

  v10 = v2[17];
  sub_2EF0(&qword_316930, &qword_2689A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_260640();
    (*(*(v11 - 8) + 8))(&v4[v10], v11);
  }

  else
  {
    v12 = *&v4[v10];
  }

  v13 = v2[18];
  sub_2EF0(&qword_318150, &qword_279A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_260CA0();
    (*(*(v14 - 8) + 8))(&v4[v13], v14);
  }

  else
  {
    v15 = *&v4[v13];
  }

  v16 = &v4[v2[19]];
  if (v16[5])
  {
    if (v16[3])
    {
      sub_3080(v16);
    }
  }

  else
  {
    v17 = *v16;
  }

  sub_1FED0(*&v4[v2[20]], v4[v2[20] + 8]);
  v18 = &v4[v2[21]];
  v19 = sub_2601B0();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v18, 1, v19))
  {
    (*(v20 + 8))(v18, v19);
  }

  v21 = *&v18[*(sub_2EF0(qword_31A160, &qword_26E4F0) + 28)];

  v22 = v2[22];
  v23 = sub_260D50();
  (*(*(v23 - 8) + 8))(&v4[v22], v23);
  return swift_deallocObject();
}

void sub_7C264(int a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for BooksMenu() - 8);
  v8 = (v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80)));

  sub_7A66C(a1, v8, v3, v4, v5, v6);
}

uint64_t sub_7C358(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

void sub_7C3A4(uint64_t a1)
{
  sub_7D2F4(319, &qword_31A1E8, &qword_31A1F0, qword_26E558, &type metadata accessor for Optional);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      v5 = *(a1 + 24);
      swift_checkMetadataState();
      if (v6 <= 0x3F)
      {
        sub_7D2A0(319, &qword_316FF0, &type metadata accessor for ColorScheme);
        if (v7 <= 0x3F)
        {
          sub_7D2A0(319, &qword_316A10, &type metadata accessor for DataStack);
          if (v8 <= 0x3F)
          {
            sub_7D2A0(319, &qword_31A1F8, &type metadata accessor for OpaqueMetricsFieldsContext);
            if (v9 <= 0x3F)
            {
              sub_7D2F4(319, &qword_31A200, &qword_31A208, &unk_27A5E0, &type metadata accessor for Environment);
              if (v10 <= 0x3F)
              {
                sub_7D2F4(319, &qword_316A00, &qword_316A08, &unk_277860, &type metadata accessor for Environment);
                if (v11 <= 0x3F)
                {
                  sub_7D2F4(319, &qword_31A210, &qword_31A158, &qword_26E3F8, &type metadata accessor for State);
                  if (v12 <= 0x3F)
                  {
                    sub_260D50();
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

uint64_t sub_7C604(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v53 = *(a3 + 16);
  v3 = *(v53 - 8);
  v51 = *(a3 + 24);
  v4 = *(v51 - 8);
  v62 = v4;
  v54 = *(v3 + 84);
  v52 = *(v4 + 84);
  if (v54 <= v52)
  {
    v5 = *(v4 + 84);
  }

  else
  {
    v5 = *(v3 + 84);
  }

  v60 = *(sub_261180() - 8);
  v6 = *(v60 + 64);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v57 = v6;
  v59 = *(sub_260640() - 8);
  v7 = *(v59 + 64);
  if (v7 <= 8)
  {
    v7 = 8;
  }

  v56 = v7;
  v8 = *(sub_260CA0() - 8);
  v9 = *(v8 + 64);
  if (v9 <= 8)
  {
    v9 = 8;
  }

  v55 = v9;
  v49 = sub_2601B0();
  v10 = *(v49 - 8);
  v11 = *(v10 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  v50 = v12;
  if (v12 > v5)
  {
    v5 = v12;
  }

  v13 = *(sub_260D50() - 8);
  v14 = *(v3 + 80);
  v15 = *(v3 + 64);
  v16 = *(v4 + 80);
  v17 = *(v4 + 64);
  v18 = *(v13 + 80);
  if (v5 <= *(v13 + 84))
  {
    v19 = *(v13 + 84);
  }

  else
  {
    v19 = v5;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  v21 = 7;
  if (!v11)
  {
    v21 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v22 = *(v60 + 80) & 0xF8 | 7;
  v23 = *(v59 + 80) & 0xF8 | 7;
  v24 = v57 + v23 + 1;
  v25 = *(v8 + 80) & 0xF8 | 7;
  v26 = v56 + v25 + 1;
  v27 = v55 + 56;
  v28 = *(v10 + 80) & 0xF8;
  v29 = ~v28 & 0xFFFFFFFFFFFFFFF8;
  v30 = v28 + 16;
  v31 = ((v21 + *(v10 + 64)) & 0xFFFFFFFFFFFFFFF8) + v18 + 8;
  if (a2 <= v20)
  {
    goto LABEL_46;
  }

  v32 = ((v31 + ((v30 + ((v27 + ((v26 + ((v24 + ((v17 + v22 + ((v15 + v16 + ((v14 + 32) & ~v14)) & ~v16)) & ~v22)) & ~v23)) & ~v25)) & 0xFFFFFFFFFFFFFFF8)) & v29)) & ~v18) + *(v13 + 64);
  v33 = 8 * v32;
  if (v32 > 3)
  {
    goto LABEL_25;
  }

  v36 = ((a2 - v20 + ~(-1 << v33)) >> v33) + 1;
  if (HIWORD(v36))
  {
    v34 = *(a1 + v32);
    if (v34)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (v36 <= 0xFF)
    {
      if (v36 < 2)
      {
        goto LABEL_46;
      }

LABEL_25:
      v34 = *(a1 + v32);
      if (!*(a1 + v32))
      {
        goto LABEL_46;
      }

LABEL_33:
      v37 = (v34 - 1) << v33;
      if (v32 > 3)
      {
        v37 = 0;
      }

      if (v32)
      {
        if (v32 <= 3)
        {
          v38 = v32;
        }

        else
        {
          v38 = 4;
        }

        if (v38 > 2)
        {
          if (v38 == 3)
          {
            v39 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v39 = *a1;
          }
        }

        else if (v38 == 1)
        {
          v39 = *a1;
        }

        else
        {
          v39 = *a1;
        }
      }

      else
      {
        v39 = 0;
      }

      return v20 + (v39 | v37) + 1;
    }

    v34 = *(a1 + v32);
    if (*(a1 + v32))
    {
      goto LABEL_33;
    }
  }

LABEL_46:
  if ((v19 & 0x80000000) == 0)
  {
    v40 = *(a1 + 1);
    if (v40 >= 0xFFFFFFFF)
    {
      LODWORD(v40) = -1;
    }

    return (v40 + 1);
  }

  v41 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v14 + 16) & ~v14;
  if (v54 == v20)
  {
    v42 = *(v3 + 48);
    v43 = v54;
    v44 = v53;
LABEL_54:

    return v42(v41, v43, v44);
  }

  v41 = (v41 + v15 + v16) & ~v16;
  if (v52 == v20)
  {
    v42 = *(v62 + 48);
    v43 = v52;
    v44 = v51;
    goto LABEL_54;
  }

  v45 = (v30 + ((v27 + ((v26 + ((v24 + ((v41 + v17 + v22) & ~v22)) & ~v23)) & ~v25)) & 0xFFFFFFFFFFFFFFF8)) & v29;
  if (v50 == v20)
  {
    v46 = (*(v10 + 48))(v45, v11, v49);
    if (v46 >= 2)
    {
      return v46 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v47 = *(v13 + 48);
    v48 = (v31 + v45) & ~v18;

    return v47(v48);
  }
}

void sub_7CBE8(_WORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v58 = *(a4 + 16);
  v4 = *(v58 - 8);
  v69 = v4;
  v56 = *(a4 + 24);
  v5 = *(v56 - 8);
  v68 = v5;
  v59 = *(v4 + 84);
  v57 = *(v5 + 84);
  if (v59 <= v57)
  {
    v6 = *(v5 + 84);
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v60 = *(sub_261180() - 8);
  v7 = *(v60 + 64);
  if (v7 <= 8)
  {
    v7 = 8;
  }

  v63 = v7;
  v8 = *(sub_260640() - 8);
  v9 = *(v8 + 64);
  if (v9 <= 8)
  {
    v9 = 8;
  }

  v62 = v9;
  v10 = *(sub_260CA0() - 8);
  v11 = *(v10 + 64);
  if (v11 <= 8)
  {
    v11 = 8;
  }

  v61 = v11;
  v53 = sub_2601B0();
  v12 = *(v53 - 8);
  v67 = v12;
  v13 = *(v12 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= 0x7FFFFFFE)
  {
    v15 = 2147483646;
  }

  else
  {
    v15 = v14;
  }

  v54 = v15;
  v55 = v14;
  if (v6 <= v15)
  {
    v6 = v15;
  }

  v16 = 0;
  v17 = *(sub_260D50() - 8);
  v18 = *(v4 + 80);
  v19 = *(v4 + 64);
  v20 = *(v5 + 80);
  v21 = *(v5 + 64);
  v22 = *(v12 + 80);
  v23 = *(v12 + 64);
  v24 = *(v17 + 80);
  if (v6 <= *(v17 + 84))
  {
    v25 = *(v17 + 84);
  }

  else
  {
    v25 = v6;
  }

  if (v25 <= 0x7FFFFFFF)
  {
    v26 = 0x7FFFFFFF;
  }

  else
  {
    v26 = v25;
  }

  v27 = *(v60 + 80) & 0xF8 | 7;
  v28 = *(v8 + 80) & 0xF8 | 7;
  v29 = v63 + v28 + 1;
  v30 = *(v10 + 80) & 0xF8 | 7;
  v31 = v62 + v30 + 1;
  v32 = v22 & 0xF8;
  v33 = ~v32 & 0xFFFFFFFFFFFFFFF8;
  v34 = v32 + 16;
  v35 = (v32 + 16 + ((v61 + 56 + ((v31 + ((v29 + ((v21 + v27 + ((v19 + v20 + ((v18 + 32) & ~v18)) & ~v20)) & ~v27)) & ~v28)) & ~v30)) & 0xFFFFFFFFFFFFFFF8)) & v33;
  if (v13)
  {
    v36 = v23;
  }

  else
  {
    v36 = v23 + 1;
  }

  v37 = ((v36 + 7) & 0xFFFFFFFFFFFFFFF8) + v24 + 8;
  v38 = ((v37 + v35) & ~v24) + *(v17 + 64);
  if (a3 > v26)
  {
    if (v38 <= 3)
    {
      v39 = ((a3 - v26 + ~(-1 << (8 * v38))) >> (8 * v38)) + 1;
      if (HIWORD(v39))
      {
        v16 = 4;
      }

      else
      {
        if (v39 < 0x100)
        {
          v40 = 1;
        }

        else
        {
          v40 = 2;
        }

        if (v39 >= 2)
        {
          v16 = v40;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  if (v26 < a2)
  {
    v41 = ~v26 + a2;
    if (v38 < 4)
    {
      v42 = (v41 >> (8 * v38)) + 1;
      if (v38)
      {
        v43 = v41 & ~(-1 << (8 * v38));
        bzero(a1, v38);
        if (v38 != 3)
        {
          if (v38 == 2)
          {
            *a1 = v43;
            if (v16 > 1)
            {
LABEL_72:
              if (v16 == 2)
              {
                *(a1 + v38) = v42;
              }

              else
              {
                *(a1 + v38) = v42;
              }

              return;
            }
          }

          else
          {
            *a1 = v41;
            if (v16 > 1)
            {
              goto LABEL_72;
            }
          }

          goto LABEL_69;
        }

        *a1 = v43;
        *(a1 + 2) = BYTE2(v43);
      }

      if (v16 > 1)
      {
        goto LABEL_72;
      }
    }

    else
    {
      bzero(a1, v38);
      *a1 = v41;
      v42 = 1;
      if (v16 > 1)
      {
        goto LABEL_72;
      }
    }

LABEL_69:
    if (v16)
    {
      *(a1 + v38) = v42;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *(a1 + v38) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_54;
    }

    *(a1 + v38) = 0;
  }

  else if (v16)
  {
    *(a1 + v38) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_54;
  }

  if (!a2)
  {
    return;
  }

LABEL_54:
  if ((v25 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *(a1 + 1) = a2 - 1;
    }

    return;
  }

  v44 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v18 + 16) & ~v18);
  if (v59 == v26)
  {
    v45 = *(v69 + 56);
    v46 = a2;
    v47 = v59;
    v48 = v58;
LABEL_64:

    v45(v44, v46, v47, v48);
    return;
  }

  v44 = ((v44 + v19 + v20) & ~v20);
  if (v57 == v26)
  {
    v45 = *(v68 + 56);
    v46 = a2;
    v47 = v57;
    v48 = v56;
    goto LABEL_64;
  }

  v44 = ((v34 + ((v61 + 56 + ((v31 + ((v29 + ((v44 + v21 + v27) & ~v27)) & ~v28)) & ~v30)) & 0xFFFFFFFFFFFFFFF8)) & v33);
  if (v55 == v26)
  {
    if (v54 >= a2)
    {
      v45 = *(v67 + 56);
      v46 = a2 + 1;
      v47 = v13;
      v48 = v53;
      goto LABEL_64;
    }

    v49 = (v36 + 7) & 0xFFFFFFF8;
    if (v49 != -8)
    {
      v50 = v44;
      bzero(v44, (v49 + 8));
      *v50 = ~v54 + a2;
    }
  }

  else
  {
    v51 = *(v17 + 56);
    v52 = (v44 + v37) & ~v24;

    v51(v52, a2);
  }
}

void sub_7D2A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_7D2F4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_7D358(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  sub_2F9C(&qword_3173A0, &qword_26D0C0);
  sub_261730();
  sub_7BE48();
  swift_getWitnessTable();
  sub_262760();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_7D434(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_7D47C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = a2;
  *(a4 + 24) = swift_getKeyPath();
  *(a4 + 32) = 0;
  type metadata accessor for CGSize(0);
  sub_2631D0();
  *(a4 + 40) = v8;
  *(a4 + 56) = v9;
  sub_2EF0(&qword_316248, &qword_26E860);
  sub_2631D0();
  *(a4 + 64) = v8;
  sub_2631D0();
  result = *&v8;
  *(a4 + 80) = v8;
  *(a4 + 96) = v9;
  *(a4 + 8) = a1;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_7D55C()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[5];
  v65 = v0[4];
  v66 = v6;
  v7 = v0[7];
  v67 = v0[6];
  v68 = v7;
  v8 = v0[1];
  v61 = *v0;
  v62 = v8;
  v9 = v0[3];
  v63 = v0[2];
  v64 = v9;
  v69 = v61;
  v70 = v8;
  v71 = v63;
  v72 = v9;
  v73 = v65;
  v74 = v6;
  v75 = v67;
  v76 = v7;
  v10 = sub_7DC5C(&v69);
  result = 0;
  if (v10 != 1)
  {
    v60[4] = v73;
    v60[5] = v74;
    v60[6] = v75;
    v60[7] = v76;
    v60[0] = v69;
    v60[1] = v70;
    v60[2] = v71;
    v60[3] = v72;
    if (sub_57480(v60) == 1)
    {
      v12 = *sub_5748C(v60);
      v54 = v63;
      v55 = v64;
      v52 = v61;
      v53 = v62;
      v58 = v67;
      v59 = v68;
      v56 = v65;
      v57 = v66;
      sub_7E084(&v52, v51);
    }

    else
    {
      v13 = sub_5748C(v60);
      v14 = v13[3];
      v16 = *v13;
      v15 = v13[1];
      v54 = v13[2];
      v55 = v14;
      v52 = v16;
      v53 = v15;
      v17 = v13[7];
      v19 = v13[4];
      v18 = v13[5];
      v58 = v13[6];
      v59 = v17;
      v56 = v19;
      v57 = v18;
      if (sub_2F8B8(&v52))
      {
        return 0;
      }

      v20 = sub_2F950(&v52);
      v21 = v20[5];
      if (v21)
      {
        v22 = v20[4];
        v23 = v20[5];
      }

      else
      {
        v22 = *v20;
        v23 = v20[1];
      }

      v39 = v21 != 0;
      sub_8198(&v61, v51, &qword_31A290, &qword_26E868);
      v43 = v21;

      v24 = v0;
      sub_40858(v48);
      v41 = v50;
      v42 = v49;
      v40 = sub_2E18(v48, v49);
      sub_8E80(&v61, &qword_31A290, &qword_26E868);
      v44 = v22;
      v46[0] = v22;
      v46[1] = v23;
      v47 = v39;
      v25 = v13[3];
      v27 = *v13;
      v26 = v13[1];
      v51[2] = v13[2];
      v51[3] = v25;
      v51[0] = v27;
      v51[1] = v26;
      v28 = v13[7];
      v30 = v13[4];
      v29 = v13[5];
      v51[6] = v13[6];
      v51[7] = v28;
      v51[4] = v30;
      v51[5] = v29;
      v31 = sub_2F950(v51);
      v33 = *(v31 + 120);
      v34 = *(v0 + 24);
      if (*(v24 + 200) == 1)
      {
        v32.n128_u64[0] = *(v24 + 24);
      }

      else
      {
        v35 = *(v24 + 24);

        sub_264900();
        v36 = sub_2624B0();
        sub_260D10();

        sub_261C80();
        swift_getAtKeyPath();
        sub_3074(v34, 0);
        (*(v2 + 8))(v5, v1);
        v32.n128_u64[0] = v45;
      }

      v37 = v33 * *(v31 + 16);
      BYTE2(v45) = -2;
      LOWORD(v45) = -772;
      v12 = (*(v41 + 16))(v46, &v45, v42, v37, v33, v32);
      sub_6204();
      sub_3080(v48);
    }

    return v12;
  }

  return result;
}

uint64_t sub_7D900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v7 = v6;
  v8 = a2 + *(sub_2EF0(&qword_31A278, &unk_26E840) + 36);
  v9 = sub_7D55C();
  v10 = *(v2 + 128);
  v11 = *(v2 + 136);

  sub_7D47C(v9, v10, v11, v15);
  sub_2EF0(&qword_3173C0, &unk_2698C0);
  sub_8E38(&qword_3173B8, &qword_3173C0, &unk_2698C0);
  sub_262C60();
  v17[4] = v15[4];
  v17[5] = v15[5];
  v18 = v16;
  v17[0] = v15[0];
  v17[1] = v15[1];
  v17[2] = v15[2];
  v17[3] = v15[3];
  sub_8E80(v17, &qword_3173C0, &unk_2698C0);
  v12 = (v8 + *(sub_2EF0(&qword_31A280, &qword_26E850) + 36));
  *v12 = v5;
  v12[1] = v7;
  v13 = sub_2EF0(&qword_31A288, &qword_26E858);
  return (*(*(v13 - 8) + 16))(a2, a1, v13);
}

uint64_t View.mediaBackdrop(for:placeholderColor:useSnapshot:)(_OWORD *a1, uint64_t a2, char a3)
{
  v5 = a1[3];
  v6 = a1[5];
  v48 = a1[4];
  v49 = v6;
  v7 = a1[5];
  v8 = a1[7];
  v50 = a1[6];
  v51 = v8;
  v9 = a1[1];
  v45[0] = *a1;
  v45[1] = v9;
  v10 = a1[3];
  v12 = *a1;
  v11 = a1[1];
  v46 = a1[2];
  v47 = v10;
  v54 = v46;
  v55 = v5;
  v52 = v12;
  v53 = v11;
  v13 = a1[7];
  v58 = v50;
  v59 = v13;
  v56 = v48;
  v57 = v7;
  if (sub_7DC5C(&v52) == 1)
  {
    sub_7DC78(&v37);
  }

  else
  {
    v19 = v56;
    v20 = v57;
    v21 = v58;
    v22 = v59;
    v15 = v52;
    v16 = v53;
    v17 = v54;
    v18 = v55;
    sub_7DE1C(&v15);
    v27 = v19;
    v28 = v20;
    v29 = v21;
    v30 = v22;
    v23 = v15;
    v24 = v16;
    v25 = v17;
    v26 = v18;
    KeyedEncodingContainer.encode<A>(_:forKey:)(&v23);
    v41 = v27;
    v42 = v28;
    v43 = v29;
    v44 = v30;
    v37 = v23;
    v38 = v24;
    v39 = v25;
    v40 = v26;
  }

  v27 = v41;
  v28 = v42;
  v29 = v43;
  v30 = v44;
  v23 = v37;
  v24 = v38;
  v25 = v39;
  v26 = v40;
  v31 = a2;
  v32 = a3 & 1;
  KeyPath = swift_getKeyPath();
  v34 = 0;
  v35 = swift_getKeyPath();
  v36 = 0;
  sub_8198(v45, &v15, &qword_31A268, &unk_26E5E8);

  sub_262E30();
  return sub_7DDEC(&v23);
}

uint64_t sub_7DC5C(uint64_t a1)
{
  v1 = (*(a1 + 24) >> 3) & 0xFFFFFF80 | (*(a1 + 24) >> 1);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

double sub_7DC78(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0x7FFFFFCFELL;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  return result;
}

uint64_t View.mediaBackdrop(for:placeholderColor:useSnapshot:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a1)
  {
    *&v6[0] = a1;
    sub_7DE48(v6);
    v11 = v6[4];
    v12 = v6[5];
    v13 = v6[6];
    v14 = v6[7];
    v7 = v6[0];
    v8 = v6[1];
    v9 = v6[2];
    v10 = v6[3];
    KeyedEncodingContainer.encode<A>(_:forKey:)(&v7);
    v25 = v11;
    v26 = v12;
    v27 = v13;
    v28 = v14;
    v21 = v7;
    v22 = v8;
    v23 = v9;
    v24 = v10;
  }

  else
  {
    sub_7DC78(&v21);
  }

  v11 = v25;
  v12 = v26;
  v13 = v27;
  v14 = v28;
  v7 = v21;
  v8 = v22;
  v9 = v23;
  v10 = v24;
  v15 = a2;
  v16 = a3 & 1;
  KeyPath = swift_getKeyPath();
  v18 = 0;
  v19 = swift_getKeyPath();
  v20 = 0;
  swift_unknownObjectRetain();

  sub_262E30();
  return sub_7DDEC(&v7);
}

void *sub_7DE1C(void *result)
{
  v1 = result[6] & 1;
  v2 = result[14] & 0xC0000000000000FFLL;
  result[3] &= 0x301uLL;
  result[6] = v1;
  result[14] = v2;
  return result;
}

void *sub_7DE48(void *result)
{
  v1 = result[6] & 1;
  v2 = result[14] & 0xC0000000000000FFLL | 0x2000000000000000;
  result[3] &= 0x301uLL;
  result[6] = v1;
  result[14] = v2;
  return result;
}

uint64_t sub_7DE78(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_261730();
  sub_7DEDC();
  return swift_getWitnessTable();
}

unint64_t sub_7DEDC()
{
  result = qword_31A270;
  if (!qword_31A270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A270);
  }

  return result;
}

uint64_t sub_7DF3C(uint64_t a1)
{
  v1 = (*(a1 + 24) >> 3) & 0xFFFFFF80 | (*(a1 + 24) >> 1);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_7DF58(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 185) = *(a2 + 185);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_7DF9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 201))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 128);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_7DFE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 200) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 201) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 201) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_7E0BC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_7E0E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 24) >> 3) & 0xFFFFFF80 | (*(a1 + 24) >> 1);
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

double sub_7E134(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 120) = 0;
    result = 0.0;
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
      *(a1 + 128) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = (8 * -a2) & 0x7FFFFFC00 | (2 * (-a2 & 0x7FLL));
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      return result;
    }

    *(a1 + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_7E1B4(void *result, char a2)
{
  v2 = result[6] & 1;
  v3 = result[14] & 0xC0000000000000FFLL;
  result[3] &= 0x301uLL;
  result[6] = v2;
  result[14] = v3 | ((a2 & 1) << 61);
  return result;
}

unint64_t sub_7E1FC()
{
  result = qword_31A298;
  if (!qword_31A298)
  {
    sub_2F9C(&qword_31A278, &unk_26E840);
    sub_8E38(&qword_31A2A0, &qword_31A288, &qword_26E858);
    sub_8E38(&qword_31A2A8, &qword_31A280, &qword_26E850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A298);
  }

  return result;
}

uint64_t sub_7E2E0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v69 = a1[4];
  v70 = v3;
  v4 = a1[5];
  v5 = a1[7];
  v71 = a1[6];
  v72 = v5;
  v6 = a1[1];
  v66[0] = *a1;
  v66[1] = v6;
  v7 = a1[3];
  v9 = *a1;
  v8 = a1[1];
  v67 = a1[2];
  v68 = v7;
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[3];
  v75 = a2[2];
  v76 = v12;
  v13 = a2[1];
  v14 = a2[2];
  v15 = *a2;
  v73 = v10;
  v74 = v13;
  v16 = a2[5];
  v17 = a2[7];
  v79 = a2[6];
  v80 = v17;
  v18 = a2[3];
  v19 = a2[5];
  v77 = a2[4];
  v78 = v19;
  v20 = *a1;
  v21 = a1[1];
  v22 = a1[3];
  v81[2] = a1[2];
  v81[3] = v22;
  v81[0] = v20;
  v81[1] = v21;
  v23 = a1[7];
  v81[6] = a1[6];
  v81[7] = v23;
  v24 = a1[5];
  v81[4] = a1[4];
  v81[5] = v24;
  v81[10] = v14;
  v81[11] = v18;
  v81[8] = v15;
  v81[9] = v11;
  v25 = a2[7];
  v81[14] = v79;
  v81[15] = v25;
  v81[12] = v77;
  v81[13] = v16;
  v82[2] = v67;
  v82[3] = v2;
  v82[0] = v9;
  v82[1] = v8;
  v26 = a1[7];
  v82[6] = v71;
  v82[7] = v26;
  v82[4] = v69;
  v82[5] = v4;
  if (sub_57480(v82) != 1)
  {
    v32 = sub_5748C(v82);
    v62 = v77;
    v63 = v78;
    v64 = v79;
    v65 = v80;
    v58 = v73;
    v59 = v74;
    v60 = v75;
    v61 = v76;
    if (sub_57480(&v58) == 1)
    {
      sub_5748C(&v58);
      goto LABEL_6;
    }

    v33 = sub_5748C(&v58);
    v34 = v32[3];
    v36 = *v32;
    v35 = v32[1];
    v57[2] = v32[2];
    v57[3] = v34;
    v57[0] = v36;
    v57[1] = v35;
    v37 = v32[7];
    v39 = v32[4];
    v38 = v32[5];
    v57[6] = v32[6];
    v57[7] = v37;
    v57[4] = v39;
    v57[5] = v38;
    v40 = sub_2F8B8(v57);
    v41 = sub_2F950(v57);
    if (v40)
    {
      if (v40 == 1)
      {
        v42 = 0x8000000000291580;
        v43 = 0xD00000000000001BLL;
      }

      else
      {
        v42 = 0x8000000000291560;
        v43 = 0xD000000000000016;
      }
    }

    else
    {
      v43 = *v41;
      v42 = v41[1];
    }

    v44 = *v33;
    v45 = v33[1];
    v46 = v33[3];
    v56[2] = v33[2];
    v56[3] = v46;
    v56[0] = v44;
    v56[1] = v45;
    v47 = v33[4];
    v48 = v33[5];
    v49 = v33[7];
    v56[6] = v33[6];
    v56[7] = v49;
    v56[4] = v47;
    v56[5] = v48;
    v50 = sub_2F8B8(v56);
    v51 = sub_2F950(v56);
    if (v50)
    {
      if (v50 == 1)
      {
        v52 = 0x8000000000291580;
        if (v43 != 0xD00000000000001BLL)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v52 = 0x8000000000291560;
        if (v43 != 0xD000000000000016)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      v53 = *v51;
      v52 = v51[1];

      if (v43 != v53)
      {
        goto LABEL_21;
      }
    }

    if (v42 == v52)
    {
      v31 = 1;
LABEL_22:
      sub_7E084(&v73, v55);
      sub_7E084(v66, v55);

      sub_8E80(v81, &qword_31A2B0, &unk_26E9B0);

      return v31 & 1;
    }

LABEL_21:
    v31 = sub_264F10();
    goto LABEL_22;
  }

  v27 = *sub_5748C(v82);
  v60 = v75;
  v61 = v76;
  v58 = v73;
  v59 = v74;
  v64 = v79;
  v65 = v80;
  v62 = v77;
  v63 = v78;
  v28 = sub_57480(&v58);
  v29 = sub_5748C(&v58);
  if (v28 != 1)
  {
LABEL_6:
    sub_7E084(&v73, &v58);
    sub_7E084(v66, &v58);
    sub_8E80(v81, &qword_31A2B0, &unk_26E9B0);
    v31 = 0;
    return v31 & 1;
  }

  v30 = *v29;
  sub_7E084(&v73, v57);
  sub_7E084(v66, v57);
  sub_7E084(&v73, v57);
  sub_7E084(v66, v57);
  sub_8E80(v81, &qword_31A2B0, &unk_26E9B0);
  sub_7E68C(v66);
  sub_7E68C(&v73);
  v31 = v27 == v30;
  return v31 & 1;
}

uint64_t sub_7E6C0()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 72);
  if (*(v0 + 80) != 1)
  {
    v7 = *(v0 + 72);

    sub_264900();
    v8 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v6, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t ListItemAccessoryBuyButtonView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v97 = a1;
  v2 = type metadata accessor for ButtonViewModel(0);
  v3 = *(*(v2 - 1) + 64);
  __chkstk_darwin(v2);
  v85 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for ButtonView();
  v5 = *(*(v96 - 8) + 64);
  v6 = __chkstk_darwin(v96);
  v84 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v86 = &v82 - v8;
  v94 = sub_2EF0(&qword_31A2B8, &unk_26E9C0);
  v9 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v95 = &v82 - v10;
  v11 = sub_262730();
  v12 = *(v11 - 8);
  v90 = v11;
  v91 = v12;
  v13 = *(v12 + 8);
  __chkstk_darwin(v11);
  v92 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for BuyButtonExternals();
  v16 = *(*(v15 - 1) + 64);
  __chkstk_darwin(v15);
  v87 = (&v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v98 = sub_2EF0(&qword_31A2C0, &qword_2844F0);
  v18 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v98);
  v20 = &v82 - v19;
  v93 = type metadata accessor for BuyButton(0);
  v21 = *(*(v93 - 8) + 64);
  v22 = __chkstk_darwin(v93);
  v88 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v89 = &v82 - v24;
  v25 = sub_261C90();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v25);
  v30 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v113[15] = *(v1 + 63);
  v31 = v1[3];
  v112[2] = v1[2];
  *v113 = v31;
  v32 = v1[1];
  v112[0] = *v1;
  v112[1] = v32;
  if (v113[18])
  {
    v33 = v1[3];
    v109 = v1[2];
    v110 = v33;
    v111 = *(v1 + 32);
    v34 = v1[1];
    v107 = *v1;
    v108 = v34;
    v102 = v109;
    *v103 = v33;
    *&v103[15] = *(v1 + 63);
    v100 = v107;
    v101 = v34;
    sub_7F6B8(&v100, v99);
  }

  else
  {
    v83 = v28;

    sub_264900();
    v35 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_8E80(v112, &qword_317F40, &qword_26E9D0);
    (*(v26 + 8))(v30, v83);
  }

  v100 = v107;
  v101 = v108;
  v102 = v109;
  *v103 = v110;
  *&v103[16] = v111;
  if (*(&v107 + 1))
  {
    sub_8E80(&v100, &qword_317F48, &qword_26A9A0);
    v36 = 2;
    if ((sub_7E6C0() & 1) == 0)
    {
      v36 = (v1[8] & 1) == 0;
    }

    sub_30CC(v1 + 88, v99);
    sub_30CC(v99, v105);
    KeyPath = swift_getKeyPath();
    v38 = v87;
    *v87 = KeyPath;
    v86 = sub_2EF0(&qword_316C00, &qword_26A520);
    swift_storeEnumTagMultiPayload();
    v39 = (v38 + v15[5]);
    type metadata accessor for ProfileRestrictions();
    sub_7F4C4(&qword_326DC0, type metadata accessor for ProfileRestrictions);
    *v39 = sub_261900();
    v39[1] = v40;
    v41 = v15[6];
    *(v38 + v41) = swift_getKeyPath();
    sub_2EF0(&qword_317E08, &qword_26A550);
    swift_storeEnumTagMultiPayload();
    v42 = v38 + v15[7];
    v43 = swift_getKeyPath();
    v106 = 0;
    *v42 = v43;
    *(v42 + 66) = 0;
    *&v20[*(v98 + 36)] = v36 | 0x8000;
    v44 = 1;
    if (v36 != 1)
    {
      v44 = 2;
    }

    if (!v36)
    {
      v44 = 0;
    }

    v85 = v44;
    v45 = v2[11];
    sub_260BC0();
    type metadata accessor for ButtonViewModel.Content(0);
    swift_storeEnumTagMultiPayload();
    v46 = &v20[v2[13]];
    type metadata accessor for ButtonViewModel.ActionKind(0);
    *v46 = 0u;
    *(v46 + 1) = 0u;
    *(v46 + 4) = 0;
    swift_storeEnumTagMultiPayload();
    v104 = 0x403C000000000000;
    v47 = enum case for Font.TextStyle.subheadline(_:);
    v48 = v92;
    v49 = *(v91 + 13);
    v50 = v90;
    v49(v92, enum case for Font.TextStyle.subheadline(_:), v90);
    sub_40130();
    sub_2612E0();
    v51 = v50;
    v52 = v2[5];
    v104 = 0x4008000000000000;
    v49(v48, v47, v51);
    sub_2612E0();
    sub_3080(v99);
    v53 = v2[6];
    *&v20[v53] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v54 = v2[14];
    v55 = sub_260BD0();
    (*(*(v55 - 8) + 56))(&v20[v54], 1, 1, v55);
    v20[v2[7]] = 2;
    v20[v2[8]] = 0;
    v20[v2[9]] = 0;
    v56 = &v20[v2[10]];
    *v56 = v85;
    *(v56 + 1) = 0;
    *(v56 + 2) = 0;
    *(v56 + 3) = 0;
    v20[v2[12]] = 1;
    v57 = v98;
    v20[*(v98 + 40)] = 2;
    v58 = v57;
    sub_F7CC(v105, &v20[*(v57 + 44)]);
    sub_7F588(v38, &v20[*(v58 + 48)], type metadata accessor for BuyButtonExternals);
    v59 = v88;
    sub_7F518(v20, v88);
    v60 = v89;
    sub_7F588(v59, v89, type metadata accessor for BuyButton);
    v61 = type metadata accessor for BuyButton;
    sub_7F5F0(v60, v95, type metadata accessor for BuyButton);
    swift_storeEnumTagMultiPayload();
    sub_7F4C4(&qword_31A2C8, type metadata accessor for BuyButton);
    sub_7F4C4(&qword_31A2D0, type metadata accessor for ButtonView);
  }

  else
  {
    v62 = sub_7E6C0();
    v63 = 1;
    if (v62)
    {
      v63 = 2;
    }

    v98 = v63;
    v64 = v2;
    v65 = v2[11];
    type metadata accessor for ButtonViewModel.Content(0);
    v66 = v85;
    swift_storeEnumTagMultiPayload();
    v67 = v66 + v64[13];
    type metadata accessor for ButtonViewModel.ActionKind(0);
    *v67 = 0u;
    *(v67 + 16) = 0u;
    *(v67 + 32) = 0;
    swift_storeEnumTagMultiPayload();
    v99[0] = 0x403C000000000000;
    v68 = enum case for Font.TextStyle.subheadline(_:);
    v69 = v92;
    v70 = *(v91 + 13);
    v71 = v90;
    (v70)(v92, enum case for Font.TextStyle.subheadline(_:), v90);
    sub_40130();
    sub_2612E0();
    v72 = v64[5];
    v99[0] = 0x4008000000000000;
    (v70)(v69, v68, v71);
    v91 = v70;
    sub_2612E0();
    v73 = v64[6];
    *(v66 + v73) = swift_getKeyPath();
    sub_2EF0(&qword_316C00, &qword_26A520);
    swift_storeEnumTagMultiPayload();
    v74 = v64[14];
    v75 = sub_260BD0();
    (*(*(v75 - 8) + 56))(v66 + v74, 1, 1, v75);
    *(v66 + v64[7]) = 2;
    *(v66 + v64[8]) = 0;
    *(v66 + v64[9]) = 0;
    v76 = (v66 + v64[10]);
    *v76 = v98;
    v76[1] = 0;
    v76[2] = 0;
    v76[3] = 0;
    *(v66 + v64[12]) = 0;
    v99[0] = 0x4020000000000000;
    (v70)(v69, v68, v71);
    v77 = v84;
    sub_2612E0();
    v78 = v96;
    v79 = *(v96 + 20);
    v99[0] = 0x3FF8000000000000;
    v91(v69, v68, v71);
    sub_2612E0();
    v80 = *(v78 + 24);
    *(v77 + v80) = swift_getKeyPath();
    sub_2EF0(&qword_319B00, &unk_26EA40);
    swift_storeEnumTagMultiPayload();
    sub_7F588(v66, v77 + *(v78 + 28), type metadata accessor for ButtonViewModel);
    v60 = v86;
    sub_7F588(v77, v86, type metadata accessor for ButtonView);
    v61 = type metadata accessor for ButtonView;
    sub_7F5F0(v60, v95, type metadata accessor for ButtonView);
    swift_storeEnumTagMultiPayload();
    sub_7F4C4(&qword_31A2C8, type metadata accessor for BuyButton);
    sub_7F4C4(&qword_31A2D0, type metadata accessor for ButtonView);
  }

  sub_261F80();
  return sub_7F658(v60, v61);
}

uint64_t sub_7F460@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000) == 0)
  {
    if ((result & 0x80) == 0)
    {
      if ((result & 0x7F) != 1)
      {
        if ((result & 0x7F) != 0)
        {
          goto LABEL_11;
        }

LABEL_10:
        *a2 = 0u;
        *(a2 + 16) = 0u;
        return result;
      }

      goto LABEL_8;
    }

    if ((result & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_11:
    v2 = 2;
    goto LABEL_12;
  }

  if (!result)
  {
    goto LABEL_10;
  }

  if (result != 1)
  {
    goto LABEL_11;
  }

LABEL_8:
  v2 = 1;
LABEL_12:
  *a2 = v2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_7F4C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_7F518(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31A2C0, &qword_2844F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_7F588(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_7F5F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_7F658(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_7F6B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_317F48, &qword_26A9A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_7F744(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_7F778(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_7F7C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_7F838()
{
  result = qword_31A2D8;
  if (!qword_31A2D8)
  {
    sub_2F9C(&qword_31A2E0, qword_26EBE0);
    sub_7F4C4(&qword_31A2C8, type metadata accessor for BuyButton);
    sub_7F4C4(&qword_31A2D0, type metadata accessor for ButtonView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A2D8);
  }

  return result;
}

uint64_t NestedShelfComponentModel.shelves.getter()
{
  ShelfGridItemColumnSpan.Context.offset.getter();
}

uint64_t sub_7F974@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = a1 + a2;
  v5 = *(a1 + a2 - 16);
  v6 = *(v4 - 8);
  type metadata accessor for NestedShelfComponentModel();
  *a3 = ShelfGridItemColumnSpan.Context.offset.getter();
}

uint64_t sub_7F9C0(uint64_t *a1)
{
  v1 = *a1;

  return _CodeAnyComponentModel_KeyedBy.wrappedValue.setter(v2);
}

double NestedShelfComponentModel.segue.getter@<D0>(uint64_t a1@<X8>)
{
  sub_811F0(v1 + 8, v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t NestedShelfComponentModel.impressionMetrics.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2EF0(&qword_315D40, &qword_288230);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v10 - v7;
  sub_8198(v2 + *(a1 + 40), &v10 - v7, &qword_315D40, &qword_288230);
  return sub_8200(v8, a2);
}

uint64_t sub_7FB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = sub_2EF0(&qword_315D48, &qword_266E40);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v13 - v9;
  sub_8198(a1, &v13 - v9, &qword_315D48, &qword_266E40);
  v11 = type metadata accessor for NestedShelfComponentModel();
  return NestedShelfComponentModel.impressionMetrics.setter(v10, v11);
}

uint64_t (*NestedShelfComponentModel.impressionMetrics.modify(uint64_t a1, uint64_t a2))()
{
  result = KeyedEncodingContainer.encode<A>(_:forKey:);
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t NestedShelfComponentModel.id.getter(uint64_t a1)
{
  sub_264BC0(28);

  v2 = *(a1 + 16);
  v4._countAndFlagsBits = sub_265260();
  sub_264530(v4);

  return sub_264B70();
}

uint64_t NestedShelfComponentModel.init(shelves:segue:impressionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17 = a2;
  v7 = sub_2EF0(&qword_315D48, &qword_266E40);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v16 - v9;
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0;
  *(a4 + 8) = 0u;
  sub_34A0(v18, a4 + 8, &qword_315D38, &unk_266E30);
  v11 = type metadata accessor for NestedShelfComponentModel();
  v12 = *(v11 + 40);
  v13 = sub_263E50();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  sub_8200(v10, a4 + v12);
  v20 = a1;
  sub_2646F0();
  sub_263BE0();
  v14 = v17;
  *a4 = *&v18[0];
  sub_8198(v14, v18, &qword_315D38, &unk_266E30);
  sub_34A0(v18, a4 + 8, &qword_315D38, &unk_266E30);
  sub_8198(a3, v10, &qword_315D48, &qword_266E40);
  sub_34A0(v10, a4 + *(v11 + 40), &qword_315D48, &qword_266E40);
  sub_8E80(a3, &qword_315D48, &qword_266E40);
  return sub_8E80(v14, &qword_315D38, &unk_266E30);
}

uint64_t sub_7FF40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365766C656873 && a2 == 0xE700000000000000;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000000028FFC0 == a2)
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

Swift::Int sub_80094(unsigned __int8 a1)
{
  sub_265050();
  sub_265060(a1);
  return sub_265080();
}

uint64_t sub_800DC(char a1)
{
  if (!a1)
  {
    return 0x7365766C656873;
  }

  if (a1 == 1)
  {
    return 0x6575676573;
  }

  return 0xD000000000000011;
}

BOOL sub_80134(char *a1, char *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_8005C(*a1, *a2);
}

Swift::Int sub_80148(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_80094(*v1);
}

void sub_80154(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  sub_8006C(a1, *v2);
}

Swift::Int sub_80160(uint64_t a1, uint64_t a2)
{
  sub_265050();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_8006C(v7, *v2);
  return sub_265080();
}

uint64_t sub_801A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_800DC(*v1);
}

uint64_t sub_801B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_7FF40(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_801E4@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_81CA8();
  *a2 = result;
  return result;
}

uint64_t sub_80210(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_80264(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t NestedShelfComponentModel<>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v35 = a3;
  v30 = a4;
  v32 = sub_2EF0(&qword_315D40, &qword_288230);
  v6 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v31 = &v28 - v7;
  type metadata accessor for NestedShelfComponentModel.CodingKeys();
  swift_getWitnessTable();
  v37 = sub_264E20();
  v33 = *(v37 - 8);
  v8 = *(v33 + 64);
  __chkstk_darwin(v37);
  v10 = &v28 - v9;
  v11 = sub_2EF0(&qword_315D48, &qword_266E40);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v28 - v13;
  v34 = a2;
  v15 = type metadata accessor for NestedShelfComponentModel();
  v29 = *(v15 - 8);
  v16 = *(v29 + 64);
  __chkstk_darwin(v15);
  v18 = &v28 - v17;
  *(&v28 - v17 + 8) = 0u;
  v19 = &v28 - v17 + 8;
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  *(v18 + 24) = 0u;
  *(v18 + 5) = 0;
  sub_34A0(v42, v19, &qword_315D38, &unk_266E30);
  v20 = *(v15 + 40);
  v21 = sub_263E50();
  (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
  v39 = v20;
  sub_8200(v14, &v18[v20]);
  v22 = a1[4];
  sub_2E18(a1, a1[3]);
  v36 = v10;
  v23 = v38;
  sub_265120();
  if (v23)
  {
    sub_3080(a1);
    sub_3FC70(v19);
    return sub_8E80(&v18[v39], &qword_315D40, &qword_288230);
  }

  else
  {
    v24 = v33;
    sub_2646F0();
    sub_263BF0();
    v44 = 0;
    v41 = v35;
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_264DF0();
    *v18 = *&v42[0];
    v44 = 1;
    sub_8127C();
    sub_264DF0();
    sub_812D0(v42, v19);
    LOBYTE(v42[0]) = 2;
    sub_8EE0();
    v25 = v31;
    sub_264DF0();
    (*(v24 + 8))(v36, v37);
    sub_34A0(v25, &v18[v39], &qword_315D40, &qword_288230);
    v26 = v29;
    (*(v29 + 16))(v30, v18, v15);
    sub_3080(a1);
    return (*(v26 + 8))(v18, v15);
  }
}

uint64_t sub_807F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a3 - 8);
  v5 = *(a2 + 24);
  return NestedShelfComponentModel<>.init(from:)(a1, *(a2 + 16), v4, a4);
}

uint64_t NestedShelfComponent.content(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = a2[3];
  v4 = a2[4];
  v6 = a2[2];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for NestedShelfComponentModel();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  (*(AssociatedConformanceWitness + 64))(&v32, v6, AssociatedConformanceWitness);
  if (v32)
  {
    v26 = 2;
    v13 = sub_261E50();
  }

  else
  {
    v26 = 3;
    v13 = sub_261D30();
  }

  v25 = v13;
  (*(v9 + 16))(v12, a1, v8);
  v14 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = v6;
  *(v15 + 3) = v5;
  *(v15 + 4) = v4;
  (*(v9 + 32))(&v15[v14], v12, v8);
  swift_getTupleTypeMetadata2();
  v16 = sub_2646F0();
  v17 = *(AssociatedConformanceWitness + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  v20 = swift_getAssociatedConformanceWitness();
  *&v37 = v16;
  *(&v37 + 1) = AssociatedTypeWitness;
  *&v38 = v5;
  *(&v38 + 1) = WitnessTable;
  *&v39 = v20;
  sub_2633D0();
  v31 = *(v4 + 8);
  swift_getWitnessTable();
  sub_21D7E4(v25, v26, 0, 0, sub_814A4, v15, &v37);
  v28 = v37;
  v29 = v38;
  v30 = v39;
  v21 = type metadata accessor for HVStack();
  v22 = swift_getWitnessTable();
  sub_1609C(&v28, v21, v22);
  (*(*(v21 - 8) + 8))(&v37, v21);
  *&v28 = v32;
  BYTE8(v28) = v33;
  *&v29 = v34;
  BYTE8(v29) = v35;
  v30 = v36;
  sub_1609C(&v28, v21, v22);
}

uint64_t sub_80BB0@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v29 = a5;
  v25[1] = swift_getTupleTypeMetadata2();
  v28 = sub_2646F0();
  v9 = *(swift_getAssociatedConformanceWitness() + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35 = v28;
  v36 = AssociatedTypeWitness;
  v37 = a3;
  v38 = WitnessTable;
  v39 = AssociatedConformanceWitness;
  v11 = sub_2633D0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v25 - v17;
  v34 = *a1;
  sub_2646F0();
  swift_getWitnessTable();
  sub_2645F0();
  v34 = v35;
  sub_264CE0();
  swift_getWitnessTable();
  v35 = sub_264710();
  v30 = a2;
  v31 = a3;
  v32 = a4;
  swift_getKeyPath();
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = a4;
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a3;
  v20[4] = a4;
  v20[5] = sub_81CE4;
  v20[6] = v19;
  v24 = *(a4 + 8);
  sub_2633B0();
  v33 = v24;
  v21 = swift_getWitnessTable();
  sub_1609C(v16, v11, v21);
  v22 = *(v12 + 8);
  v22(v16, v11);
  sub_1609C(v18, v11, v21);
  return (v22)(v18, v11);
}

uint64_t sub_80F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 + a3;
  v5 = *(a2 + a3 - 24);
  v4 = *(a2 + a3 - 16);
  v6 = *(v3 - 8);
  v7 = *(swift_getAssociatedConformanceWitness() + 16);
  return sub_264BD0();
}

uint64_t sub_80F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(*(a3 - 8) + 64);
  v9 = (__chkstk_darwin)();
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v9);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v24 - v18;
  (*(v20 + 16))(v11);
  (*(a5 + 32))(v11, a1, a4, a5);
  v21 = *(a5 + 8);
  sub_1609C(v17, a4, v21);
  v22 = *(v13 + 8);
  v22(v17, a4);
  sub_1609C(v19, a4, v21);
  return (v22)(v19, a4);
}

uint64_t sub_81184(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return Component.body.getter(a1, WitnessTable);
}

unint64_t sub_8127C()
{
  result = qword_31A2E8;
  if (!qword_31A2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A2E8);
  }

  return result;
}

uint64_t sub_8132C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for NestedShelfComponentModel();
  v5 = *(*(v4 - 8) + 64);
  v6 = (v0 + ((*(*(v4 - 8) + 80) + 40) & ~*(*(v4 - 8) + 80)));
  v7 = *v6;

  if (v6[4])
  {
    sub_3080(v6 + 1);
  }

  v8 = *(v4 + 40);
  v9 = sub_263E50();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v6 + v8, 1, v9))
  {
    (*(v10 + 8))(v6 + v8, v9);
  }

  return swift_deallocObject();
}

uint64_t sub_814A4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  swift_getAssociatedConformanceWitness();
  v6 = *(type metadata accessor for NestedShelfComponentModel() - 8);
  v7 = (v1 + ((*(v6 + 80) + 40) & ~*(v6 + 80)));

  return sub_80BB0(v7, v3, v4, v5, a1);
}

unint64_t sub_81568()
{
  result = qword_31A2F0[0];
  if (!qword_31A2F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_31A2F0);
  }

  return result;
}

uint64_t sub_815D8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_81630(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_816E0(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_817A0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_817E0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = a1 + a2;
  v5 = *(a1 + a2 - 16);
  v6 = *(v4 - 8);
  v7 = type metadata accessor for NestedShelfComponentModel();
  return NestedShelfComponentModel.impressionMetrics.getter(v7, a3);
}

void sub_818A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_2646F0();
  sub_263BF0();
  if (v2 <= 0x3F)
  {
    sub_9DD8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_81950(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2EF0(&qword_315D40, &qword_288230);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_81A20(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2EF0(&qword_315D40, &qword_288230);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_81AE8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  swift_getTupleTypeMetadata2();
  sub_2646F0();
  v4 = *(swift_getAssociatedConformanceWitness() + 16);
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_2633D0();
  v6 = *(v3 + 8);
  swift_getWitnessTable();
  type metadata accessor for HVStack();
  return swift_getWitnessTable();
}

__n128 sub_81CC0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_81CF0()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_81D28(char *a1)
{
  v3 = v1[2];
  v5 = v1[5];
  v4 = v1[6];
  v6 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v5(v6, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_820C8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_820E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 280))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_82144(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 280) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 280) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t static ListItemViewModel.seriesPage(seriesID:assetInfo:cardInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a4;
  v29 = a1;
  v30 = a2;
  sub_30CC(a3, v35);
  v36 = 0;
  v37 = 1;
  v38 = 0;
  v39 = 255;
  v7 = a3[4];
  sub_2E18(a3, a3[3]);
  v8 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_264A60();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  sub_2606D0();
  v15 = *(AssociatedTypeWitness - 8);
  if ((*(v15 + 48))(v14, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v14, v10);
LABEL_5:
    v33 = &type metadata for ListItemAccessoryBuyButton;
    AssociatedConformanceWitness = sub_825A0();
    v17 = swift_allocObject();
    v32[0] = v17;
    sub_30CC(a3, v17 + 32);
    *(v17 + 16) = swift_getKeyPath();
    *(v17 + 24) = 0;
    goto LABEL_6;
  }

  v33 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_10934(v32);
  (*(v15 + 32))();
  v16 = sub_2607F0();
  sub_3080(v32);
  if ((v16 & 1) == 0)
  {
    goto LABEL_5;
  }

  v33 = &type metadata for ListItemAccessoryMoreButton;
  AssociatedConformanceWitness = sub_82774();
  v32[0] = swift_allocObject();
  sub_30CC(a3, v32[0] + 16);
LABEL_6:
  v18 = a3[4];
  sub_2E18(a3, a3[3]);
  v19 = *(v18 + 8);
  v20 = sub_2606E0();
  v22 = v21;
  sub_3E840(v35, a5 + 8);
  v23 = v30;

  static ListItemMetadata.seriesPage(assetInfo:)(a3, a5 + 80);
  sub_82640(v35);
  sub_30CC(v32, v31);
  sub_30CC(a3, a5 + 408);
  v24 = type metadata accessor for ListItemViewModel();
  sub_82694(v28, a5 + *(v24 + 40));
  *a5 = 0;
  *(a5 + 360) = 0u;
  *(a5 + 376) = 0u;
  *(a5 + 392) = 0;
  sub_82704(v31, a5 + 360);
  *(a5 + 400) = 0;
  v25 = a5 + *(v24 + 44);
  *v25 = xmmword_26F1A0;
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = v29;
  *(v25 + 40) = v23;
  *(v25 + 96) = 0u;
  *(v25 + 112) = 0u;
  *(v25 + 64) = 0u;
  *(v25 + 80) = 0u;
  *(v25 + 48) = 0u;
  *(v25 + 128) = v20;
  *(v25 + 136) = v22;
  *(v25 + 144) = 2;
  return sub_3080(v32);
}

unint64_t sub_825A0()
{
  result = qword_31A478;
  if (!qword_31A478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A478);
  }

  return result;
}

uint64_t sub_825F4()
{
  sub_4054(*(v0 + 16), *(v0 + 24));
  sub_3080((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_82694(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31A480, &qword_273520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_82704(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31A488, &unk_272AA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_82774()
{
  result = qword_31A490;
  if (!qword_31A490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A490);
  }

  return result;
}

uint64_t sub_827C8()
{
  sub_3080((v0 + 16));

  return swift_deallocObject();
}

double static ListItemViewModel.seriesHeaderQuickActionButton(assetInfo:cardInfo:eyebrowText:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_30CC(a1, v18);
  v19 = 1;
  v20 = 4;
  v21 = 0;
  v22 = 255;
  v8 = a1[4];
  sub_2E18(a1, a1[3]);
  v9 = *(v8 + 8);
  v10 = sub_2606E0();
  v12 = v11;
  sub_3E840(v18, a4 + 8);
  static ListItemMetadata.seriesHeaderQuickActionButton(assetInfo:eyebrowText:)(a1, a3, a4 + 80);
  v17[3] = &type metadata for ListItemAccessoryBuyButton;
  v17[4] = sub_825A0();
  v13 = swift_allocObject();
  v17[0] = v13;
  sub_30CC(a1, v13 + 32);
  *(v13 + 16) = swift_getKeyPath();
  *(v13 + 24) = 0;
  sub_82640(v18);
  sub_30CC(a1, a4 + 408);
  v14 = type metadata accessor for ListItemViewModel();
  sub_82694(a2, a4 + *(v14 + 40));
  *(a4 + 360) = 0u;
  *(a4 + 376) = 0u;
  *(a4 + 392) = 0;
  *a4 = 1;
  sub_82704(v17, a4 + 360);
  *(a4 + 400) = 0;
  v15 = a4 + *(v14 + 44);
  result = 0.0;
  *(v15 + 96) = 0u;
  *(v15 + 112) = 0u;
  *(v15 + 64) = 0u;
  *(v15 + 80) = 0u;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0u;
  *v15 = xmmword_26F1B0;
  *(v15 + 16) = 0u;
  *(v15 + 128) = v10;
  *(v15 + 136) = v12;
  *(v15 + 144) = 2;
  return result;
}

uint64_t sub_82988()
{
  [v0 size];
  sub_2649E0();
  v2 = v1;
  v4 = v3;
  v5 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{v1, v3}];
  v6 = swift_allocObject();
  *(v6 + 2) = v0;
  v6[3] = v2;
  v6[4] = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_82B98;
  *(v7 + 24) = v6;
  v12[4] = sub_82BC4;
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1EB584;
  v12[3] = &unk_305718;
  v8 = _Block_copy(v12);
  v9 = v0;

  v10 = [v5 imageWithActions:v8];

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_82B60()
{

  return swift_deallocObject();
}

uint64_t sub_82BCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ProgressiveBlurMaterial.init(blurRadius:saturationAmount:fillColor:start:end:fadeOffset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>, double a9@<D6>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = result;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  *(a2 + 40) = a7;
  *(a2 + 48) = a8;
  *(a2 + 56) = a9;
  return result;
}

double ProgressiveBlurMaterial.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v24[0] = *v1;
  v24[1] = v3;
  v4 = v1[3];
  v24[2] = v1[2];
  v24[3] = v4;
  v5 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v7 = v6;
  sub_82D2C(v24, &v14);
  v31 = v20;
  v32 = v21;
  v33 = v22;
  v27 = v16;
  v28 = v17;
  v29 = v18;
  v30 = v19;
  v25 = v14;
  v26 = v15;
  v35[6] = v20;
  v35[7] = v21;
  v35[8] = v22;
  v35[2] = v16;
  v35[3] = v17;
  v35[4] = v18;
  v35[5] = v19;
  v34 = v23;
  v36 = v23;
  v35[0] = v14;
  v35[1] = v15;
  sub_8198(&v25, &v13, &qword_31A498, &qword_26F200);
  sub_8E80(v35, &qword_31A498, &qword_26F200);
  *a1 = v5;
  *(a1 + 8) = v7;
  v8 = v32;
  *(a1 + 112) = v31;
  *(a1 + 128) = v8;
  *(a1 + 144) = v33;
  *(a1 + 160) = v34;
  v9 = v28;
  *(a1 + 48) = v27;
  *(a1 + 64) = v9;
  v10 = v30;
  *(a1 + 80) = v29;
  *(a1 + 96) = v10;
  result = *&v25;
  v12 = v26;
  *(a1 + 16) = v25;
  *(a1 + 32) = v12;
  *(a1 + 168) = 0;
  return result;
}

uint64_t sub_82D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = *a1;
  v31 = *(a1 + 24);
  v33 = *(a1 + 32);
  v4 = *(a1 + 48);
  v32 = *(a1 + 40);
  v5 = *(a1 + 56);
  sub_2EF0(&qword_319268, &qword_279380);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_269100;
  v7 = *(a1 + 16);
  sub_840B0(a1, v39);
  *(v6 + 32) = sub_263450();
  *(v6 + 40) = v8;
  sub_263000();
  *(v6 + 48) = sub_263450();
  *(v6 + 56) = v9;
  sub_263460();
  sub_261590();
  v10 = *(a1 + 8);
  if (v10 == 1.0)
  {
    v11 = 0.0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v12 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    v13 = v19;
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_269100;
    sub_262F80();
    *(v20 + 32) = sub_263450();
    *(v20 + 40) = v21;
    sub_262FA0();
    *(v20 + 48) = sub_263450();
    *(v20 + 56) = v22;
    sub_263460();
    sub_261590();
    v14 = v42;
    v15 = v43;
    v16 = v44;
    v17 = v45;
    v11 = v10;
    v18 = v46;
  }

  v23 = v39[8];
  *&v35 = v11;
  *(&v35 + 1) = v12;
  *&v36 = v13;
  *(&v36 + 1) = v14;
  *&v37 = v15;
  *(&v37 + 1) = v16;
  *&v38 = v17;
  *(&v38 + 1) = v18;
  *&v24 = v30;
  *(&v24 + 1) = v31;
  *&v25 = v33;
  *(&v25 + 1) = v32;
  *a2 = v24;
  *(a2 + 16) = v25;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  *(a2 + 48) = v23;
  *(a2 + 56) = v40;
  *(a2 + 72) = v41;
  v26 = v35;
  v27 = v36;
  v28 = v37;
  *(a2 + 136) = v38;
  *(a2 + 120) = v28;
  *(a2 + 104) = v27;
  *(a2 + 88) = v26;
  *v39 = v11;
  v39[1] = v12;
  v39[2] = v13;
  v39[3] = v14;
  v39[4] = v15;
  v39[5] = v16;
  v39[6] = v17;
  v39[7] = v18;

  sub_8198(&v35, v34, &qword_31A530, &unk_26F500);
  sub_8E80(v39, &qword_31A530, &unk_26F500);
}

__n128 sub_82FB4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_82FC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_83010(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_831B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BackdropLayerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_83218()
{
  result = qword_31A4C8;
  if (!qword_31A4C8)
  {
    sub_2F9C(&qword_31A4D0, &qword_26F2B8);
    sub_832A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A4C8);
  }

  return result;
}

unint64_t sub_832A4()
{
  result = qword_31A4D8;
  if (!qword_31A4D8)
  {
    sub_2F9C(&qword_31A4E0, &qword_26F2C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A4D8);
  }

  return result;
}

uint64_t sub_83318(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_83338(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

void sub_83380(void *a1)
{
  v3 = [a1 layer];
  v4 = *v1 * 0.5;
  isa = sub_2603D0().super.super.isa;
  v6 = sub_264420();
  [v3 setValue:isa forKeyPath:v6];

  v7 = [a1 layer];
  v8 = sub_834A4();
  v9 = sub_264420();
  [v7 setValue:v8 forKeyPath:v9];
}

uint64_t sub_834A4()
{
  v1 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v1 setScale:1.0];
  [v1 setPreferredRange:0x7FFFLL];
  v2 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:v1 format:{0.0, 0.0, 100.0, 100.0}];
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *v0;
  v5 = v0[1];
  *(v3 + 32) = vdupq_n_s64(0x4059000000000000uLL);
  *(v3 + 48) = v4;
  v6 = v0[2];
  *(v3 + 64) = v5;
  *(v3 + 80) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_84024;
  *(v7 + 24) = v3;
  v12[4] = sub_82BC4;
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1EB584;
  v12[3] = &unk_3058D0;
  v8 = _Block_copy(v12);

  v9 = [v2 imageWithActions:v8];

  _Block_release(v8);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v11 = [v9 CGImage];

    return v11;
  }

  return result;
}

void sub_836B0(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = [objc_allocWithZone(CAGradientLayer) init];
  [v12 setBounds:{a3, a4, a5, a6}];
  sub_2EF0(&qword_31A4F8, &qword_26F4E8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_269100;
  v14 = objc_opt_self();
  v15 = [v14 blackColor];
  v16 = [v15 CGColor];

  type metadata accessor for CGColor(0);
  v18 = v17;
  *(v13 + 56) = v17;
  *(v13 + 32) = v16;
  v19 = [v14 clearColor];
  v20 = [v19 CGColor];

  *(v13 + 88) = v18;
  *(v13 + 64) = v20;
  isa = sub_264670().super.isa;

  [v12 setColors:isa];

  sub_2EF0(&qword_31A510, &unk_26F4F0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_26F1F0;
  v23 = *(a2 + 40);
  *(v22 + 32) = sub_264780();
  sub_15C98(0, &qword_31A518, NSNumber_ptr);
  *(v22 + 40) = sub_264A10(1.0);
  v24 = sub_264670().super.isa;

  [v12 setLocations:v24];

  [v12 setStartPoint:{*(a2 + 8), *(a2 + 16)}];
  [v12 setEndPoint:{*(a2 + 24), *(a2 + 32)}];
  v25 = [a1 CGContext];
  [v12 renderInContext:v25];
}

void sub_83950(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_83380(a1);
}

uint64_t sub_839E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_8405C();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_83A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_8405C();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_83AA8()
{
  sub_8405C();
  sub_261F30();
  __break(1u);
}

unint64_t sub_83AD4()
{
  result = qword_31A4E8;
  if (!qword_31A4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A4E8);
  }

  return result;
}

void sub_83B2C(void *a1)
{
  v2 = *v1;
  v3 = [a1 layer];
  isa = sub_264780().super.super.isa;
  v5 = sub_264420();
  [v3 setValue:isa forKeyPath:v5];
}

uint64_t sub_83BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_83FC0();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_83C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_83FC0();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_83C9C()
{
  sub_83FC0();
  sub_261F30();
  __break(1u);
}

unint64_t sub_83CC8()
{
  result = qword_31A4F0;
  if (!qword_31A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A4F0);
  }

  return result;
}

id sub_83D1C()
{
  v0 = [objc_allocWithZone(type metadata accessor for BackdropLayerView()) init];
  v1 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterVariableBlur];
  isa = sub_264720().super.super.isa;
  v3 = sub_264420();
  [v1 setValue:isa forKey:v3];

  v4 = [v0 layer];
  sub_2EF0(&qword_31A4F8, &qword_26F4E8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_267D30;
  *(v5 + 56) = sub_15C98(0, &qword_31A500, CAFilter_ptr);
  *(v5 + 32) = v1;
  v6 = v1;
  v7 = sub_264670().super.isa;

  [v4 setFilters:v7];

  return v0;
}

id sub_83E94()
{
  v0 = [objc_allocWithZone(type metadata accessor for BackdropLayerView()) init];
  v1 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorSaturate];
  v2 = [v0 layer];
  sub_2EF0(&qword_31A4F8, &qword_26F4E8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_267D30;
  *(v3 + 56) = sub_15C98(0, &qword_31A500, CAFilter_ptr);
  *(v3 + 32) = v1;
  v4 = v1;
  isa = sub_264670().super.isa;

  [v2 setFilters:isa];

  return v0;
}

unint64_t sub_83FC0()
{
  result = qword_31A508;
  if (!qword_31A508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A508);
  }

  return result;
}

uint64_t sub_84044(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_8405C()
{
  result = qword_31A520;
  if (!qword_31A520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A520);
  }

  return result;
}

uint64_t BooksFailureView.init<>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = sub_1F458;
  a3[1] = result;
  return result;
}

uint64_t sub_84178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_264A60();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t SharedWithYouView.init(for:horizontalAlignment:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_841EC@<X0>(uint64_t a1@<X8>)
{
  sub_10A84();

  result = sub_2628F0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_84258()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t BooksFailureView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2622D0();
  v86 = *(v4 - 8);
  v5 = *(v86 + 64);
  __chkstk_darwin(v4);
  v85 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_262160();
  v83 = *(v7 - 8);
  v8 = *(v83 + 64);
  __chkstk_darwin(v7);
  v82 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 24);
  v78 = *(a1 + 16);
  v98 = v78;
  v99 = &type metadata for Image;
  v79 = v10;
  v100 = v10;
  v101 = &protocol witness table for Image;
  v11 = sub_263150();
  v80 = *(v11 - 8);
  v12 = *(v80 + 64);
  __chkstk_darwin(v11);
  v74 = &v64 - v13;
  sub_2F9C(&qword_3183D0, &qword_26B240);
  v14 = sub_261730();
  v75 = *(v14 - 8);
  v15 = *(v75 + 64);
  __chkstk_darwin(v14);
  v17 = &v64 - v16;
  v18 = sub_261730();
  v76 = *(v18 - 8);
  v19 = *(v76 + 64);
  __chkstk_darwin(v18);
  v73 = &v64 - v20;
  v81 = v11;
  WitnessTable = swift_getWitnessTable();
  v22 = sub_84C84();
  v66 = WitnessTable;
  v96 = WitnessTable;
  v97 = v22;
  v77 = v14;
  v68 = swift_getWitnessTable();
  v94 = v68;
  v95 = v22;
  v23 = swift_getWitnessTable();
  v24 = sub_84CE8();
  v98 = v18;
  v99 = v7;
  v100 = v23;
  v101 = v24;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v72 = *(OpaqueTypeMetadata2 - 8);
  v26 = *(v72 + 64);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v71 = &v64 - v27;
  v98 = v18;
  v99 = v7;
  v84 = v7;
  v70 = v23;
  v100 = v23;
  v101 = v24;
  v69 = v24;
  v28 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v91 = OpaqueTypeMetadata2;
  v92 = v4;
  v98 = OpaqueTypeMetadata2;
  v99 = v4;
  v90 = OpaqueTypeConformance2;
  v100 = OpaqueTypeConformance2;
  v101 = &protocol witness table for EnabledTextSelectability;
  v30 = swift_getOpaqueTypeMetadata2();
  v89 = *(v30 - 8);
  v31 = *(v89 + 64);
  v32 = __chkstk_darwin(v30);
  v34 = &v64 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v67 = &v64 - v35;
  v36 = sub_264A60();
  v87 = *(v36 - 8);
  v37 = *(v87 + 64);
  v38 = __chkstk_darwin(v36);
  v40 = &v64 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v42 = &v64 - v41;
  v88 = *v88;
  v43 = sub_260770();
  if (v43)
  {
    __chkstk_darwin(v43);
    v44 = v79;
    *(&v64 - 4) = v78;
    *(&v64 - 3) = v44;
    *(&v64 - 1) = v88;
    v65 = v42;
    v45 = v74;
    sub_263130();
    sub_262F20();
    *&v88 = a2;
    v46 = v81;
    sub_262D90();

    (*(v80 + 8))(v45, v46);
    sub_262F20();
    v47 = v73;
    v48 = v77;
    sub_262B80();

    (*(v75 + 8))(v17, v48);
    v49 = v82;
    sub_262150();
    v50 = v71;
    v51 = v84;
    sub_262A30();
    (*(v83 + 8))(v49, v51);
    (*(v76 + 8))(v47, v18);
    v52 = v85;
    sub_2622C0();
    v53 = v91;
    v54 = v92;
    v55 = v90;
    sub_262B10();
    (*(v86 + 8))(v52, v54);
    (*(v72 + 8))(v50, v53);
    v98 = v53;
    v99 = v54;
    v100 = v55;
    v42 = v65;
    v101 = &protocol witness table for EnabledTextSelectability;
    v56 = swift_getOpaqueTypeConformance2();
    v57 = v67;
    sub_1609C(v34, v30, v56);
    v58 = v89;
    v59 = *(v89 + 8);
    v59(v34, v30);
    sub_1609C(v57, v30, v56);
    v59(v57, v30);
    (*(v58 + 32))(v40, v34, v30);
    v28 = 0;
  }

  (*(v89 + 56))(v40, v28, 1, v30);
  v60 = v87;
  (*(v87 + 16))(v42, v40, v36);
  v61 = *(v60 + 8);
  v61(v40, v36);
  v98 = v91;
  v99 = v92;
  v100 = v90;
  v101 = &protocol witness table for EnabledTextSelectability;
  v93 = swift_getOpaqueTypeConformance2();
  v62 = swift_getWitnessTable();
  sub_1609C(v42, v36, v62);
  return (v61)(v42, v36);
}

unint64_t sub_84C84()
{
  result = qword_3183C8;
  if (!qword_3183C8)
  {
    sub_2F9C(&qword_3183D0, &qword_26B240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3183C8);
  }

  return result;
}

unint64_t sub_84CE8()
{
  result = qword_31A538[0];
  if (!qword_31A538[0])
  {
    sub_262160();
    result = swift_getWitnessTable();
    atomic_store(result, qword_31A538);
  }

  return result;
}

uint64_t sub_84D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v16 - v12;
  v11();
  sub_1609C(v10, a3, a4);
  v14 = *(v6 + 8);
  v14(v10, a3);
  sub_1609C(v13, a3, a4);
  return (v14)(v13, a3);
}

uint64_t sub_84E80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2630B0();
  *a1 = result;
  return result;
}

uint64_t sub_84F08()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_84F44(uint64_t *a1, int a2)
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

uint64_t sub_84F8C(uint64_t result, int a2, int a3)
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

uint64_t sub_84FE0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_263150();
  sub_2F9C(&qword_3183D0, &qword_26B240);
  sub_261730();
  sub_261730();
  sub_262160();
  swift_getWitnessTable();
  sub_84C84();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_84CE8();
  swift_getOpaqueTypeMetadata2();
  sub_2622D0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_264A60();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}