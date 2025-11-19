uint64_t sub_102254()
{
  v0 = sub_260BD0();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_1022EC(&v3);
  SymbolImage.Kind.accessibilityLocalizable.getter();
  return sub_260B10();
}

uint64_t sub_1022EC@<X0>(char *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v28[15] = *(v1 + 63);
  v8 = v1[3];
  v27[2] = v1[2];
  *v28 = v8;
  v9 = v1[1];
  v27[0] = *v1;
  v27[1] = v9;
  if (v28[18])
  {
    v10 = v1[3];
    v24 = v1[2];
    v25 = v10;
    v26 = *(v1 + 32);
    v11 = v1[1];
    v22 = *v1;
    v23 = v11;
    v20 = v24;
    v21[0] = v10;
    *(v21 + 15) = *(v1 + 63);
    v18 = v22;
    v19 = v11;
    result = sub_8198(&v18, &v17, &qword_317F48, &qword_26A9A0);
  }

  else
  {

    sub_264900();
    v13 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_8E80(v27, &qword_317F40, &qword_26E9D0);
    result = (*(v4 + 8))(v7, v3);
  }

  v18 = v22;
  v19 = v23;
  v20 = v24;
  v21[0] = v25;
  LOWORD(v21[1]) = v26;
  if (*(&v22 + 1) && (v14 = BYTE2(v21[0]), result = sub_8E80(&v18, &qword_317F48, &qword_26A9A0), (v14 & 1) != 0))
  {
    v15 = 1;
  }

  else
  {
    v15 = 4;
  }

  *a1 = v15;
  return result;
}

uint64_t sub_102500()
{
  v1 = sub_2EF0(&qword_31DDA0, &qword_2777B8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v6[-v3];
  sub_101044(v0, &v6[-v3]);
  v7 = v0;
  sub_260B00();
  sub_1026E8();
  sub_102CBC(&qword_3184E0, &type metadata accessor for LocalizedText);
  sub_262BE0();
  return sub_102930(v4);
}

uint64_t type metadata accessor for WantToReadToolbarButton()
{
  result = qword_31DE50;
  if (!qword_31DE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_102678(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1026E8()
{
  result = qword_31DDA8;
  if (!qword_31DDA8)
  {
    sub_2F9C(&qword_31DDA0, &qword_2777B8);
    sub_10276C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DDA8);
  }

  return result;
}

unint64_t sub_10276C()
{
  result = qword_31DDB0;
  if (!qword_31DDB0)
  {
    sub_2F9C(&qword_31DDB8, &qword_2777C0);
    sub_2F9C(&qword_31DDC0, &qword_2777C8);
    sub_2F9C(&qword_31DDC8, &qword_2777D0);
    sub_2F9C(&qword_31DDD0, &qword_2777D8);
    sub_8E38(&qword_31DDD8, &qword_31DDC8, &qword_2777D0);
    sub_8E38(&qword_31DDE0, &qword_31DDD0, &qword_2777D8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_31DDE8, &qword_31DDF0, &qword_2777E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DDB0);
  }

  return result;
}

uint64_t sub_102930(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31DDA0, &qword_2777B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1029C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 66);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for AssetAction(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_102A80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 66) = -a2;
  }

  else
  {
    v7 = type metadata accessor for AssetAction(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_102B20()
{
  sub_78DC8(319, &qword_31A6A0, &qword_317F48, &qword_26A9A0);
  if (v0 <= 0x3F)
  {
    sub_78DC8(319, &qword_316A00, &qword_316A08, &unk_277860);
    if (v1 <= 0x3F)
    {
      type metadata accessor for AssetAction(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_102BEC()
{
  sub_2F9C(&qword_31DDA0, &qword_2777B8);
  sub_260B00();
  sub_1026E8();
  sub_102CBC(&qword_3184E0, &type metadata accessor for LocalizedText);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_102CBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_102D04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_102D6C()
{
  ToolbarButton = type metadata accessor for WantToReadToolbarButton();
  v33 = *(*(ToolbarButton - 8) + 64);
  v34 = *(*(ToolbarButton - 8) + 80);
  v2 = v0 + ((v34 + 16) & ~v34);
  sub_3060(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 66));
  sub_1FED0(*(v2 + 72), *(v2 + 80));
  v3 = (v2 + *(ToolbarButton + 24));
  v4 = *(v3 + 1);

  v5 = *(v3 + 3);

  v6 = *(v3 + 5);

  v7 = type metadata accessor for AssetAction(0);
  v8 = v7[8];
  v9 = sub_263AF0();
  v32 = *(*(v9 - 8) + 8);
  v32(&v3[v8], v9);
  v10 = v7[9];
  v11 = sub_260620();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!v13(&v3[v10], 1, v11))
  {
    (*(v12 + 8))(&v3[v10], v11);
  }

  v14 = &v3[v7[10]];
  type metadata accessor for AssetAction.Kind(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v30 = *(v14 + 1);

        v17 = *(v14 + 3);
        goto LABEL_15;
      }

LABEL_14:
      v17 = *v14;
LABEL_15:

      goto LABEL_20;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload == 5)
    {
LABEL_19:
      v18 = *(v14 + 1);

      goto LABEL_20;
    }

    v16 = sub_260060();
LABEL_18:
    (*(*(v16 - 8) + 8))(v14, v16);
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload == 7)
  {
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 9 || EnumCaseMultiPayload == 10)
  {
    v16 = sub_2601B0();
    goto LABEL_18;
  }

LABEL_20:
  v19 = (v2 + *(ToolbarButton + 28));
  v20 = *(v19 + 1);

  v21 = *(v19 + 3);

  v22 = *(v19 + 5);

  v32(&v19[v7[8]], v9);
  v23 = v7[9];
  if (!v13(&v19[v23], 1, v11))
  {
    (*(v12 + 8))(&v19[v23], v11);
  }

  v24 = &v19[v7[10]];
  v25 = swift_getEnumCaseMultiPayload();
  if (v25 <= 4)
  {
    if (v25 > 1)
    {
      if (v25 == 3)
      {
        v31 = *(v24 + 1);

        v27 = *(v24 + 3);
        goto LABEL_34;
      }

LABEL_33:
      v27 = *v24;
LABEL_34:

      goto LABEL_39;
    }

    if (v25)
    {
      if (v25 != 1)
      {
        goto LABEL_39;
      }

      goto LABEL_33;
    }

    goto LABEL_38;
  }

  if (v25 <= 6)
  {
    if (v25 == 5)
    {
LABEL_38:
      v28 = *(v24 + 1);

      goto LABEL_39;
    }

    v26 = sub_260060();
LABEL_37:
    (*(*(v26 - 8) + 8))(v24, v26);
    goto LABEL_39;
  }

  if (v25 == 7)
  {
    goto LABEL_33;
  }

  if (v25 == 9 || v25 == 10)
  {
    v26 = sub_2601B0();
    goto LABEL_37;
  }

LABEL_39:

  return swift_deallocObject();
}

BOOL ColorConstants.isLight.getter()
{
  v1 = v0;
  v2 = sub_261180();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ColorConstants.Environment(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4BD3C(v1, v10);
  (*(v3 + 104))(v6, enum case for ColorScheme.dark(_:), v2);
  sub_60AB0();
  LOBYTE(v1) = sub_264390();
  v11 = *(v3 + 8);
  v11(v6, v2);
  v11(v10, v2);
  return (v1 & 1) == 0;
}

uint64_t EnvironmentValues.colors.getter()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = __chkstk_darwin(v1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  v9 = v2[2];
  v9(&v12 - v7, v0, v1);
  v9(v6, v8, v1);
  sub_261990();
  v10 = v2[1];
  v10(v6, v1);
  return (v10)(v8, v1);
}

uint64_t ColorConstants.Environment.colorScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261180();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ColorConstants.Environment.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_261180();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1035F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ColorConstants.Environment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_103718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_1037B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_103840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1038C4@<X0>(uint64_t a1@<X8>)
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

double sub_103A34()
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

uint64_t sub_103B80@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for LabelItemComponent(0);
  sub_8198(v1 + *(v12 + 28), v11, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1084B4(v11, a1, type metadata accessor for SizeConstants);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_103D6C@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for LabelItemComponent(0);
  sub_8198(v1 + *(v12 + 32), v11, &qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1084B4(v11, a1, type metadata accessor for ColorConstants);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_103F58()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for LabelItemComponent(0) + 36);
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

double sub_1040B0()
{
  v1 = type metadata accessor for SizeConstants.Spacing(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261C90();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2EF0(&qword_316C10, &unk_26AF10);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v22 - v12);
  v14 = type metadata accessor for SizeConstants(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for LabelItemComponent(0);
  sub_8198(v0 + *(v18 + 28), v13, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1084B4(v13, v17, type metadata accessor for SizeConstants);
  }

  else
  {
    v19 = *v13;
    sub_264900();
    v20 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    (*(v6 + 8))(v9, v5);
  }

  sub_1084B4(v17, v4, type metadata accessor for SizeConstants.Environment);
  sub_107024(v4, type metadata accessor for SizeConstants.Spacing);
  return 12.0;
}

uint64_t LabelItemComponent.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 40) = 0;
  *(a1 + 48) = swift_getKeyPath();
  *(a1 + 56) = 0;
  v2 = type metadata accessor for LabelItemComponent(0);
  v3 = v2[6];
  *(a1 + v3) = swift_getKeyPath();
  sub_2EF0(&qword_318148, &unk_26AEE0);
  swift_storeEnumTagMultiPayload();
  v4 = v2[7];
  *(a1 + v4) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v5 = v2[8];
  *(a1 + v5) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v6 = a1 + v2[9];
  result = swift_getKeyPath();
  *v6 = result;
  *(v6 + 8) = 0;
  return result;
}

uint64_t LabelItemComponent.content(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v4 = sub_2EF0(&qword_316890, &qword_2725A0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v59 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v58 = &v56 - v9;
  __chkstk_darwin(v8);
  v57 = &v56 - v10;
  v11 = type metadata accessor for SizeConstants(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v56 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2EF0(&qword_31DFD8, &qword_277AE8);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v56 - v19;
  v21 = sub_2EF0(&qword_31DFE0, &qword_277AF0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v56 - v23;
  v25 = sub_2EF0(&qword_31DFE8, &qword_277AF8);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v61 = &v56 - v28;
  *v24 = sub_261E50();
  *(v24 + 1) = 0;
  v24[16] = 1;
  v29 = &v24[*(sub_2EF0(&qword_31DFF0, &qword_277B00) + 44)];
  *v20 = sub_261D30();
  *(v20 + 1) = 0;
  v20[16] = 1;
  v30 = sub_2EF0(&qword_31DFF8, &qword_277B08);
  sub_104A28(v2, a1, &v20[*(v30 + 44)]);
  sub_8198(v20, v18, &qword_31DFD8, &qword_277AE8);
  *v29 = 0;
  v29[8] = 1;
  v31 = sub_2EF0(&qword_31E000, &qword_277B10);
  sub_8198(v18, &v29[*(v31 + 48)], &qword_31DFD8, &qword_277AE8);
  v32 = &v29[*(v31 + 64)];
  *v32 = 0;
  v32[8] = 1;
  sub_8E80(v20, &qword_31DFD8, &qword_277AE8);
  sub_8E80(v18, &qword_31DFD8, &qword_277AE8);
  v33 = v56;
  sub_103B80(v56);
  LOBYTE(v29) = *v33;
  sub_107024(v33, type metadata accessor for SizeConstants);
  LOBYTE(v31) = v29 | sub_103F58();
  KeyPath = swift_getKeyPath();
  v65 = 0;
  v35 = swift_getKeyPath();
  v64 = 0;
  v36 = swift_getKeyPath();
  v63 = 0;
  v37 = swift_getKeyPath();
  v62 = 0;
  v38 = v65;
  LOBYTE(v18) = v64;
  v39 = v63;
  v40 = v24;
  v41 = v61;
  sub_22148(v40, v61, &qword_31DFE0, &qword_277AF0);
  v42 = v41 + *(v26 + 44);
  *v42 = KeyPath;
  *(v42 + 8) = v38;
  *(v42 + 16) = v35;
  *(v42 + 24) = v18;
  *(v42 + 32) = v36;
  *(v42 + 40) = v39;
  *(v42 + 48) = v37;
  *(v42 + 56) = 0;
  *(v42 + 57) = v31 & 1;
  *(v42 + 58) = 0;
  v43 = sub_261690();
  v44 = *(v43 - 8);
  v45 = *(v44 + 56);
  v46 = v57;
  v45(v57, 1, 1, v43);
  v47 = v58;
  (*(v44 + 104))(v58, enum case for DynamicTypeSize.xxxLarge(_:), v43);
  v45(v47, 0, 1, v43);
  v48 = v59;
  sub_22148(v47, v59, &qword_316890, &qword_2725A0);
  v49 = sub_2EF0(&qword_31E008, &qword_277BB8);
  v50 = v60;
  v51 = v60 + *(v49 + 36);
  v45(v51, 1, 1, v43);
  v52 = type metadata accessor for RestrictedDynamicTypeSizeViewModifier();
  v53 = *(v52 + 20);
  v45((v51 + v53), 1, 1, v43);
  v54 = *(v52 + 24);
  *(v51 + v54) = swift_getKeyPath();
  sub_2EF0(&qword_318148, &unk_26AEE0);
  swift_storeEnumTagMultiPayload();
  sub_C5FBC(v46, v51);
  sub_C5FBC(v48, v51 + v53);
  return sub_22148(v61, v50, &qword_31DFE8, &qword_277AF8);
}

uint64_t sub_104A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v88 = a3;
  v5 = type metadata accessor for SizeConstants(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v85 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_262060();
  v87 = *(v89 - 8);
  v8 = *(v87 + 64);
  v9 = __chkstk_darwin(v89);
  v96 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v92 = &v77 - v11;
  v84 = sub_260BD0();
  v83 = *(v84 - 8);
  v12 = *(v83 + 64);
  __chkstk_darwin(v84);
  v82 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_260B00();
  v86 = *(v95 - 8);
  v14 = *(v86 + 64);
  v15 = __chkstk_darwin(v95);
  v94 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v91 = &v77 - v17;
  v18 = type metadata accessor for LabelItemComponent(0);
  v80 = *(v18 - 8);
  v81 = *(v80 + 64);
  __chkstk_darwin(v18 - 8);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for LabelItemComponentModel();
  v22 = v21 - 8;
  v23 = *(v21 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v21);
  v25 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2EF0(&qword_31E1D0, &qword_277DC0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v78 = (&v77 - v28);
  v29 = sub_2EF0(&qword_31E1D8, &qword_277DC8);
  v30 = v29 - 8;
  v31 = *(*(v29 - 8) + 64);
  v32 = __chkstk_darwin(v29);
  v93 = &v77 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v36 = &v77 - v35;
  __chkstk_darwin(v34);
  v90 = &v77 - v37;
  v38 = *(v22 + 36);
  v39 = a2;
  v79 = a2;
  v40 = a2 + v38;
  v41 = *(v40 + 16);
  v110[0] = *v40;
  v110[1] = v41;
  *v111 = *(v40 + 32);
  *&v111[9] = *(v40 + 41);
  sub_108084(v39, v25, type metadata accessor for LabelItemComponentModel);
  sub_108084(a1, v20, type metadata accessor for LabelItemComponent);
  v42 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v43 = (v24 + *(v80 + 80) + v42) & ~*(v80 + 80);
  v44 = swift_allocObject();
  sub_1084B4(v25, v44 + v42, type metadata accessor for LabelItemComponentModel);
  sub_1084B4(v20, v44 + v43, type metadata accessor for LabelItemComponent);
  v45 = v78;
  sub_105C80(v110, sub_10851C, v44, v78);

  v46 = *(v40 + 40);
  if (!*(v40 + 56))
  {
    v47 = *(v40 + 40);
    v48 = *(v40 + 48);
  }

  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  sub_22148(v45, v36, &qword_31E1D0, &qword_277DC0);
  v49 = &v36[*(v30 + 44)];
  v50 = v102;
  *v49 = v101;
  *(v49 + 1) = v50;
  *(v49 + 2) = v103;
  v51 = v90;
  sub_22148(v36, v90, &qword_31E1D8, &qword_277DC8);
  (*(v83 + 16))(v82, v79 + *(v22 + 40), v84);
  v52 = v91;
  sub_260B10();
  v53 = sub_1040B0();
  v54 = v92;
  sub_262050();
  v55 = v85;
  sub_103B80(v85);
  v56 = *v55;
  sub_107024(v55, type metadata accessor for SizeConstants);
  v57 = sub_103F58();
  if ((v56 & 1) == 0 && (v57 & 1) == 0)
  {
    sub_1040B0();
  }

  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v85 = v104;
  v84 = v106;
  v83 = v108;
  v82 = v109;
  v100 = 1;
  v99 = v105;
  v98 = v107;
  v58 = v93;
  sub_8198(v51, v93, &qword_31E1D8, &qword_277DC8);
  v59 = v86;
  v60 = *(v86 + 16);
  v61 = v94;
  v62 = v95;
  v60(v94, v52, v95);
  v97 = 0;
  v63 = v87;
  v78 = *(v87 + 16);
  v64 = v54;
  v65 = v89;
  (v78)(v96, v64, v89);
  LODWORD(v79) = v100;
  LODWORD(v80) = v99;
  LODWORD(v81) = v98;
  v66 = v88;
  sub_8198(v58, v88, &qword_31E1D8, &qword_277DC8);
  v67 = sub_2EF0(&qword_31E1E0, &qword_277DD0);
  v60((v66 + v67[12]), v61, v62);
  v68 = v66 + v67[16];
  v69 = v97;
  *v68 = v53;
  *(v68 + 8) = v69;
  v70 = v96;
  (v78)(v66 + v67[20], v96, v65);
  v71 = v66 + v67[24];
  *v71 = 0;
  *(v71 + 8) = v79;
  *(v71 + 16) = v85;
  *(v71 + 24) = v80;
  *(v71 + 32) = v84;
  *(v71 + 40) = v81;
  v72 = v82;
  *(v71 + 48) = v83;
  *(v71 + 56) = v72;
  v73 = *(v63 + 8);
  v73(v92, v65);
  v74 = *(v59 + 8);
  v75 = v95;
  v74(v91, v95);
  sub_8E80(v90, &qword_31E1D8, &qword_277DC8);
  v73(v70, v65);
  v74(v94, v75);
  return sub_8E80(v93, &qword_31E1D8, &qword_277DC8);
}

uint64_t sub_1053F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v67 = a3;
  v68 = a4;
  v69 = a1;
  v5 = sub_261180();
  v63 = *(v5 - 8);
  v64 = v5;
  v6 = *(v63 + 64);
  __chkstk_darwin(v5);
  v62 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ColorConstants.Environment(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v61 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_2EF0(&qword_31E248, &qword_277E28);
  v11 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v72 = (&v61 - v12);
  v71 = sub_2EF0(&qword_318560, &unk_26B530);
  v13 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v15 = (&v61 - v14);
  v16 = type metadata accessor for ColorConstants(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v65 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v66 = &v61 - v20;
  v21 = sub_2EF0(&qword_31E250, &qword_277E30);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v61 - v23;
  v25 = sub_2630C0();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2EF0(&qword_31E258, &qword_277E38);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v33 = &v61 - v32;
  v34 = sub_2630F0();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  v38 = &v61 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a2 + *(type metadata accessor for LabelItemComponentModel() + 28);
  if (*(v39 + 56) == 1)
  {
    (*(v35 + 104))(v33, **(&off_309440 + *(v39 + 40)), v34);
    (*(v35 + 56))(v33, 0, 1, v34);
    (*(v35 + 32))(v38, v33, v34);
    KeyPath = swift_getKeyPath();
    v41 = (v15 + *(v71 + 36));
    v42 = sub_2EF0(&qword_317530, &qword_26FCC0);
    (*(v35 + 16))(v41 + *(v42 + 28), v38, v34);
    *v41 = KeyPath;
    *v15 = v69;
    sub_8198(v15, v72, &qword_318560, &unk_26B530);
    swift_storeEnumTagMultiPayload();

    sub_2EF0(&qword_31E220, &unk_277DF8);
    sub_10868C();
    sub_108744();
    sub_261F80();
    sub_8E80(v15, &qword_318560, &unk_26B530);
    return (*(v35 + 8))(v38, v34);
  }

  else
  {
    (*(v35 + 56))(v33, 1, 1, v34);
    sub_8E80(v33, &qword_31E258, &qword_277E38);
    (*(v26 + 104))(v29, enum case for Image.ResizingMode.stretch(_:), v25);
    sub_263100();
    (*(v26 + 8))(v29, v25);
    v44 = enum case for Image.TemplateRenderingMode.template(_:);
    v45 = sub_2630E0();
    v46 = *(v45 - 8);
    (*(v46 + 104))(v24, v44, v45);
    (*(v46 + 56))(v24, 0, 1, v45);
    v47 = sub_2630D0();

    sub_8E80(v24, &qword_31E250, &qword_277E30);
    v48 = v66;
    sub_103D6C(v66);
    if (*(v39 + 32))
    {
      v49 = *(v39 + 24);
      v50 = *(v39 + 32);
    }

    else
    {
      v49 = 0;
      v50 = 0xE000000000000000;
    }

    v51 = ColorConstants.subscript.getter(v49, v50);

    sub_107024(v48, type metadata accessor for ColorConstants);
    v52 = v72;
    if (!v51)
    {
      v71 = v47;
      v53 = v65;
      sub_103D6C(v65);
      v54 = v61;
      sub_108084(v53, v61, type metadata accessor for ColorConstants.Environment);
      v56 = v62;
      v55 = v63;
      v57 = v64;
      (*(v63 + 104))(v62, enum case for ColorScheme.dark(_:), v64);
      sub_1070CC(&qword_3183A0, &type metadata accessor for ColorScheme);
      LOBYTE(v53) = sub_264390();
      v58 = *(v55 + 8);
      v58(v56, v57);
      v58(v54, v57);
      if (v53)
      {
        v59 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
      }

      else
      {
        v59 = sub_262F80();
      }

      v51 = v59;
      sub_107024(v65, type metadata accessor for ColorConstants);
      v47 = v71;
    }

    v60 = swift_getKeyPath();
    *v52 = v47;
    v52[1] = v60;
    v52[2] = v51;
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_31E220, &unk_277DF8);
    sub_10868C();
    sub_108744();
    return sub_261F80();
  }
}

uint64_t sub_105C80@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a3;
  v50 = a4;
  v46 = sub_2EF0(&qword_31E1E8, &qword_277DD8);
  v6 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v8 = &v45 - v7;
  v9 = sub_2EF0(&qword_31E1F0, &qword_277DE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v45 - v11;
  v49 = sub_2EF0(&qword_31E1F8, &qword_277DE8);
  v13 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v15 = &v45 - v14;
  v16 = sub_2EF0(&qword_31E200, &qword_277DF0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v20 = (&v45 - v19);
  v21 = *a1;
  v22 = *(a1 + 8);
  v23 = *(a1 + 16);
  v48 = v18;
  if (v23 < 0)
  {
    v54 = v21;
    v55 = v22;
    v51 = 8218235;
    v52 = 0xE300000000000000;
    v58[0] = 6778480;
    v58[1] = 0xE300000000000000;
    sub_10A84();
    v25 = sub_264AA0();
    v27 = v26;
    sub_1038C4(&v54);
    v28 = v56;
    v29 = v57;
    sub_2E18(&v54, v56);
    v51 = v25;
    v52 = v27;
    v53 = 1;
    v30 = sub_103A34();
    BYTE2(v58[0]) = -2;
    LOWORD(v58[0]) = -772;
    v31 = (*(v29 + 16))(&v51, v58, v28, v29, 186.0, 186.0, v30);

    sub_3080(&v54);
    v32 = swift_allocObject();
    v33 = v47;
    *(v32 + 16) = a2;
    *(v32 + 24) = v33;
    v34 = type metadata accessor for ImageResourceLoader();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    sub_2EF0(&qword_318728, &qword_26DBF0);
    v38 = swift_allocObject();
    *(v38 + 28) = 0;
    *(v38 + 16) = 0;
    *(v38 + 24) = 0;
    *(v37 + 24) = v38;

    sub_2603B0();
    v51 = v37;

    sub_2631D0();

    v39 = v54;
    v40 = v55;
    *v20 = sub_1088B8;
    v20[1] = v32;
    v20[2] = v31;
    v20[3] = v39;
    v20[4] = v40;
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_31E228, &unk_277E08);
    sub_8E38(&qword_31E230, &qword_31E228, &unk_277E08);
    sub_1087FC();
    return sub_261F80();
  }

  else
  {
    v45 = a2;
    if (v23)
    {

      v24 = sub_2630B0();
    }

    else
    {
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v43 = objc_opt_self();

      v44 = [v43 bundleForClass:{ObjCClassFromMetadata, v45, v46}];
      v24 = sub_263110();
    }

    v45(v24);

    sub_8198(v12, v8, &qword_31E1F0, &qword_277DE0);
    swift_storeEnumTagMultiPayload();
    sub_108600();
    sub_261F80();
    sub_8E80(v12, &qword_31E1F0, &qword_277DE0);
    sub_8198(v15, v20, &qword_31E1F8, &qword_277DE8);
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_31E228, &unk_277E08);
    sub_8E38(&qword_31E230, &qword_31E228, &unk_277E08);
    sub_1087FC();
    sub_261F80();
    return sub_8E80(v15, &qword_31E1F8, &qword_277DE8);
  }
}

uint64_t sub_10623C(void *a1, void (*a2)(void))
{
  v4 = sub_2EF0(&qword_31E240, &unk_277E18);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v14 - v6;
  v8 = sub_2EF0(&qword_31E1F0, &qword_277DE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v14 - v10;
  if (a1)
  {
    v12 = a1;
    sub_2630A0();
    a2();

    sub_8198(v11, v7, &qword_31E1F0, &qword_277DE0);
    swift_storeEnumTagMultiPayload();
    sub_108600();
    sub_261F80();

    return sub_8E80(v11, &qword_31E1F0, &qword_277DE0);
  }

  else
  {
    *v7 = 0;
    v7[8] = 1;
    swift_storeEnumTagMultiPayload();
    sub_108600();
    return sub_261F80();
  }
}

uint64_t sub_10641C(uint64_t a1)
{
  v2 = *(*(a1 - 8) + 64);
  v3 = __chkstk_darwin(v1);
  sub_108084(v3, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LabelItemComponent);
  sub_1070CC(&qword_31E038, type metadata accessor for LabelItemComponent);
  return sub_260B30();
}

uint64_t LabelItemComponent._ButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = type metadata accessor for LabelItemButtonStyle(0);
  v4 = *(*(v3 - 1) + 64);
  __chkstk_darwin(v3);
  v6 = (v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_2624A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2EF0(&qword_31E010, &qword_282730);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v20 - v15;
  (*(v8 + 16))(v11, a1, v7);
  sub_263240();
  *v6 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v17 = v3[5];
  *(v6 + v17) = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  swift_storeEnumTagMultiPayload();
  v18 = v3[6];
  *(v6 + v18) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  *(v6 + v3[7]) = 0;
  sub_8E38(&qword_31E018, &qword_31E010, &qword_282730);
  sub_1070CC(&qword_31E020, type metadata accessor for LabelItemButtonStyle);
  sub_262A60();
  sub_107024(v6, type metadata accessor for LabelItemButtonStyle);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_10682C()
{
  v1 = v0;
  v2 = sub_262F00();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261180();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ColorConstants.Environment(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_108084(v1, v15, type metadata accessor for ColorConstants.Environment);
  (*(v8 + 104))(v11, enum case for ColorScheme.dark(_:), v7);
  sub_1070CC(&qword_3183A0, &type metadata accessor for ColorScheme);
  LOBYTE(v1) = sub_264390();
  v16 = *(v8 + 8);
  v16(v11, v7);
  v16(v15, v7);
  (*(v3 + 104))(v6, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  if ((v1 & 1) == 0)
  {
    return sub_263060();
  }

  sub_263060();
  v17 = sub_263000();

  return v17;
}

uint64_t sub_106AF8@<X0>(uint64_t a1@<X8>)
{
  v53[1] = a1;
  v1 = sub_261FA0();
  v54 = *(v1 - 8);
  v55 = v1;
  v2 = *(v54 + 64);
  __chkstk_darwin(v1);
  v4 = v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ColorConstants(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_31E190, &qword_277DA0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = v53 - v12;
  v14 = sub_2EF0(&qword_31E198, &qword_277DA8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = v53 - v16;
  v18 = sub_2EF0(&qword_31E1A0, &qword_277DB0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = v53 - v20;
  sub_2622A0();
  v22 = sub_2624F0();
  sub_2610C0();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = &v13[*(sub_2EF0(&qword_31E1A8, &qword_277DB8) + 36)];
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = sub_262560();
  sub_2610C0();
  v33 = *(v10 + 44);
  v34 = v53[0];
  v35 = &v13[v33];
  *v35 = v32;
  *(v35 + 1) = v36;
  *(v35 + 2) = v37;
  *(v35 + 3) = v38;
  *(v35 + 4) = v39;
  v35[40] = 0;
  v40 = sub_2622B0();
  sub_404B8(v8);
  if (v40)
  {
    v41 = sub_10682C();
  }

  else
  {
    v42 = [objc_opt_self() systemBackgroundColor];
    v41 = sub_263070();
  }

  v43 = v41;
  sub_107024(v8, type metadata accessor for ColorConstants);
  v44 = sub_262500();
  sub_22148(v13, v17, &qword_31E190, &qword_277DA0);
  v45 = &v17[*(v14 + 36)];
  *v45 = v43;
  v45[8] = v44;
  v46 = *(v34 + *(type metadata accessor for LabelItemButtonStyle(0) + 28));
  v47 = &v21[*(v18 + 36)];
  v48 = *(sub_2617E0() + 20);
  v49 = enum case for RoundedCornerStyle.continuous(_:);
  v50 = sub_261DD0();
  (*(*(v50 - 8) + 104))(&v47[v48], v49, v50);
  *v47 = v46;
  *(v47 + 1) = v46;
  *&v47[*(sub_2EF0(&qword_317DA8, &qword_26C1B0) + 36)] = 256;
  sub_22148(v17, v21, &qword_31E198, &qword_277DA8);
  sub_2618C0();
  sub_107DCC();
  sub_1070CC(&qword_318438, &type metadata accessor for AutomaticHoverEffect);
  v51 = v55;
  sub_262AA0();
  (*(v54 + 8))(v4, v51);
  return sub_8E80(v21, &qword_31E1A0, &qword_277DB0);
}

uint64_t sub_106FA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261960();
  *a1 = result & 1;
  return result;
}

uint64_t sub_107024(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1070CC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10717C()
{
  result = qword_31E030;
  if (!qword_31E030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E030);
  }

  return result;
}

uint64_t sub_107280(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 40);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v8 = sub_2EF0(&qword_319858, &unk_2725D0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_2EF0(&qword_317BF8, &unk_26F930);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = sub_2EF0(&qword_316F68, &unk_269C50);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_10741C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 40) = -a2;
    return result;
  }

  v8 = sub_2EF0(&qword_319858, &unk_2725D0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_2EF0(&qword_317BF8, &unk_26F930);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = sub_2EF0(&qword_316F68, &unk_269C50);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

void sub_1075A8()
{
  sub_5027C();
  if (v0 <= 0x3F)
  {
    sub_60890(319, &qword_316308);
    if (v1 <= 0x3F)
    {
      sub_107D5C(319, &qword_3198C8, &type metadata accessor for DynamicTypeSize);
      if (v2 <= 0x3F)
      {
        sub_107D5C(319, &qword_317C68, type metadata accessor for SizeConstants);
        if (v3 <= 0x3F)
        {
          sub_107D5C(319, &qword_316FE8, type metadata accessor for ColorConstants);
          if (v4 <= 0x3F)
          {
            sub_60890(319, &qword_3167D0);
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

unint64_t sub_107714()
{
  result = qword_31E0E0;
  if (!qword_31E0E0)
  {
    sub_2F9C(&qword_31E008, &qword_277BB8);
    sub_1077D0();
    sub_1070CC(&qword_31C258, type metadata accessor for RestrictedDynamicTypeSizeViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E0E0);
  }

  return result;
}

unint64_t sub_1077D0()
{
  result = qword_31E0E8;
  if (!qword_31E0E8)
  {
    sub_2F9C(&qword_31DFE8, &qword_277AF8);
    sub_8E38(&qword_31E0F0, &qword_31DFE0, &qword_277AF0);
    sub_EFAB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E0E8);
  }

  return result;
}

uint64_t sub_107888()
{
  sub_2F9C(&qword_31E010, &qword_282730);
  type metadata accessor for LabelItemButtonStyle(255);
  sub_8E38(&qword_31E018, &qword_31E010, &qword_282730);
  sub_1070CC(&qword_31E020, type metadata accessor for LabelItemButtonStyle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10797C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_316F68, &unk_269C50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_316F70, &unk_2693C0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_2EF0(&qword_317BF8, &unk_26F930);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_107AF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2EF0(&qword_316F68, &unk_269C50);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_2EF0(&qword_316F70, &unk_2693C0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_2EF0(&qword_317BF8, &unk_26F930);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_107C64()
{
  sub_107D5C(319, &qword_316FE8, type metadata accessor for ColorConstants);
  if (v0 <= 0x3F)
  {
    sub_107D5C(319, &qword_316FF0, &type metadata accessor for ColorScheme);
    if (v1 <= 0x3F)
    {
      sub_107D5C(319, &qword_317C68, type metadata accessor for SizeConstants);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_107D5C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_107DCC()
{
  result = qword_31E1B0;
  if (!qword_31E1B0)
  {
    sub_2F9C(&qword_31E1A0, &qword_277DB0);
    sub_107E84();
    sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E1B0);
  }

  return result;
}

unint64_t sub_107E84()
{
  result = qword_31E1B8;
  if (!qword_31E1B8)
  {
    sub_2F9C(&qword_31E198, &qword_277DA8);
    sub_107F3C();
    sub_8E38(&qword_318EB8, &qword_318EC0, &unk_26C3B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E1B8);
  }

  return result;
}

unint64_t sub_107F3C()
{
  result = qword_31E1C0;
  if (!qword_31E1C0)
  {
    sub_2F9C(&qword_31E190, &qword_277DA0);
    sub_107FC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E1C0);
  }

  return result;
}

unint64_t sub_107FC8()
{
  result = qword_31E1C8;
  if (!qword_31E1C8)
  {
    sub_2F9C(&qword_31E1A8, &qword_277DB8);
    sub_1070CC(&qword_3183C0, &type metadata accessor for ButtonStyleConfiguration.Label);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E1C8);
  }

  return result;
}

uint64_t sub_108084(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1080EC()
{
  v1 = type metadata accessor for LabelItemComponentModel();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for LabelItemComponent(0);
  v5 = *(*(v4 - 1) + 80);
  v6 = v2 + v3 + v5;
  v32 = *(*(v4 - 1) + 64);
  v7 = (v0 + v2);
  sub_3080(v7);
  if (v7[8])
  {
    sub_3080(v7 + 5);
  }

  v8 = v6 & ~v5;
  v9 = v1[6];
  v10 = sub_263E50();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v7 + v9, 1, v10))
  {
    (*(v11 + 8))(v7 + v9, v10);
  }

  v12 = v7 + v1[7];
  v13 = *v12;
  v14 = *(v12 + 1);
  v15 = v12[16];
  sub_6204();
  v16 = *(v12 + 4);

  v17 = v1[8];
  v18 = sub_260BD0();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);
  v19 = (v0 + v8);
  if (*(v0 + v8 + 40))
  {
    sub_3080((v0 + v8));
  }

  else
  {
    v20 = *v19;
  }

  sub_3074(v19[6], *(v19 + 56));
  v21 = v4[6];
  sub_2EF0(&qword_318148, &unk_26AEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_261690();
    (*(*(v22 - 8) + 8))(v19 + v21, v22);
  }

  else
  {
    v23 = *(v19 + v21);
  }

  v24 = v19 + v4[7];
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v26 = sub_261690();
    (*(*(v26 - 8) + 8))(&v24[v25], v26);
  }

  else
  {
    v27 = *v24;
  }

  v28 = v4[8];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = sub_261180();
    (*(*(v29 - 8) + 8))(v19 + v28, v29);
  }

  else
  {
    v30 = *(v19 + v28);
  }

  sub_3074(*(v19 + v4[9]), *(v19 + v4[9] + 8));

  return swift_deallocObject();
}

uint64_t sub_1084B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10851C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LabelItemComponentModel() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for LabelItemComponent(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1053F4(a1, v2 + v6, v9, a2);
}

unint64_t sub_108600()
{
  result = qword_31E208;
  if (!qword_31E208)
  {
    sub_2F9C(&qword_31E1F0, &qword_277DE0);
    sub_10868C();
    sub_108744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E208);
  }

  return result;
}

unint64_t sub_10868C()
{
  result = qword_31E210;
  if (!qword_31E210)
  {
    sub_2F9C(&qword_318560, &unk_26B530);
    sub_8E38(&qword_317590, &qword_317530, &qword_26FCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E210);
  }

  return result;
}

unint64_t sub_108744()
{
  result = qword_31E218;
  if (!qword_31E218)
  {
    sub_2F9C(&qword_31E220, &unk_277DF8);
    sub_8E38(&qword_3183C8, &qword_3183D0, &qword_26B240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E218);
  }

  return result;
}

unint64_t sub_1087FC()
{
  result = qword_31E238;
  if (!qword_31E238)
  {
    sub_2F9C(&qword_31E1F8, &qword_277DE8);
    sub_108600();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E238);
  }

  return result;
}

uint64_t sub_108880()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1088D0()
{
  sub_2F9C(&qword_31E1A0, &qword_277DB0);
  sub_261FA0();
  sub_107DCC();
  sub_1070CC(&qword_318438, &type metadata accessor for AutomaticHoverEffect);
  return swift_getOpaqueTypeConformance2();
}

uint64_t type metadata accessor for DelayAction()
{
  result = qword_31E2B8;
  if (!qword_31E2B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DelayAction.init(actionMetrics:seconds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_263AF0();
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  result = type metadata accessor for DelayAction();
  *(a2 + *(result + 20)) = a3;
  return result;
}

uint64_t sub_108A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_263AF0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_108B04(uint64_t a1, uint64_t a2)
{
  v4 = sub_263AF0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_108B74()
{
  result = sub_263AF0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_108BE8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6E6F69746361;
    v6 = 0x63657053746E6F66;
    if (a1 != 2)
    {
      v6 = 0x6D614E6567616D69;
    }

    if (a1)
    {
      v5 = 0x7365527465737361;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x656C746974627573;
    v2 = 0x6D496C6F626D7973;
    if (a1 != 7)
    {
      v2 = 0x656C746974;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x73756E656DLL;
    if (a1 != 4)
    {
      v3 = 1701605234;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_108D0C()
{
  sub_265050();
  sub_264500();
  return sub_265080();
}

Swift::Int sub_108D68()
{
  sub_265050();
  sub_264500();
  return sub_265080();
}

uint64_t sub_108DB0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_300870;
  v7._object = v3;
  v5 = sub_264D40(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_108E28@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_3008A8;
  v8._object = a2;
  v6 = sub_264D40(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_108E80(uint64_t a1)
{
  v2 = sub_10B098();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_108EBC(uint64_t a1)
{
  v2 = sub_10B098();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_108EF8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x72756769666E6F63;
  }

  else
  {
    v4 = 1684957547;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xED00006E6F697461;
  }

  if (*a2)
  {
    v6 = 0x72756769666E6F63;
  }

  else
  {
    v6 = 1684957547;
  }

  if (*a2)
  {
    v7 = 0xED00006E6F697461;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_264F10();
  }

  return v9 & 1;
}

Swift::Int sub_108FA4()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_10902C()
{
  *v0;
  sub_264500();
}

Swift::Int sub_1090A0()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

void sub_109130(uint64_t *a1@<X8>)
{
  v2 = 1684957547;
  if (*v1)
  {
    v2 = 0x72756769666E6F63;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xED00006E6F697461;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_109174()
{
  if (*v0)
  {
    result = 0x72756769666E6F63;
  }

  else
  {
    result = 1684957547;
  }

  *v0;
  return result;
}

uint64_t sub_1091C0(uint64_t a1)
{
  v2 = sub_10B0EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1091FC(uint64_t a1)
{
  v2 = sub_10B0EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_109244()
{
  v1 = *v0;
  sub_265050();
  sub_1E2A48();
  return sub_265080();
}

Swift::Int sub_109294()
{
  v1 = *v0;
  sub_265050();
  sub_1E2A48();
  return sub_265080();
}

uint64_t sub_1092D8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10CFB4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_109308@<X0>(uint64_t *a1@<X8>)
{
  result = sub_108BE8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_109350@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10CFB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_109378(uint64_t a1)
{
  v2 = sub_10B194();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1093B4(uint64_t a1)
{
  v2 = sub_10B194();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_109408()
{
  *v0;
  *v0;
  *v0;
  sub_264500();
}

uint64_t sub_109550@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10D0A8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_109580(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000756E65;
  v4 = 0x4D747865746E6F63;
  v5 = 0xE600000000000000;
  v6 = 0x70756B636F6CLL;
  if (v2 != 5)
  {
    v6 = 0xD000000000000016;
    v5 = 0x800000000028FB90;
  }

  v7 = 0xEF656C7469546874;
  v8 = 0x69576E6F74747562;
  if (v2 != 3)
  {
    v8 = 0x75426D6574737973;
    v7 = 0xEC0000006E6F7474;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xD000000000000014;
  v10 = 0x800000000028FB40;
  if (v2 != 1)
  {
    v9 = 0x69576E6F74747562;
    v10 = 0xEF6567616D496874;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1096F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6D7269666E6F63;
  }

  else
  {
    v4 = 0x65736F6C63;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x6D7269666E6F63;
  }

  else
  {
    v6 = 0x65736F6C63;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_264F10();
  }

  return v9 & 1;
}

Swift::Int sub_109794()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_109814()
{
  *v0;
  sub_264500();
}

Swift::Int sub_109880()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

void sub_109908(uint64_t *a1@<X8>)
{
  v2 = 0x65736F6C63;
  if (*v1)
  {
    v2 = 0x6D7269666E6F63;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t ToolbarItemType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a2;
  v3 = sub_2610B0();
  v125 = *(v3 - 8);
  v126 = v3;
  v4 = *(v125 + 64);
  v5 = __chkstk_darwin(v3);
  v122 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v135 = &v118 - v8;
  __chkstk_darwin(v7);
  v121 = &v118 - v9;
  v10 = sub_2EF0(&qword_31E2F0, &qword_277EF0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v123 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v124 = (&v118 - v14);
  v15 = sub_2EF0(&qword_31E2F8, &qword_277EF8);
  v129 = *(v15 - 8);
  v130 = v15;
  v16 = *(v129 + 64);
  __chkstk_darwin(v15);
  v131 = &v118 - v17;
  v18 = sub_2EF0(&qword_31E300, &qword_277F00);
  v132 = *(v18 - 8);
  v133 = v18;
  v19 = *(v132 + 64);
  __chkstk_darwin(v18);
  v137 = &v118 - v20;
  v136 = sub_2EF0(&qword_31E308, &qword_277F08);
  v134 = *(v136 - 8);
  v21 = *(v134 + 64);
  __chkstk_darwin(v136);
  v23 = &v118 - v22;
  v127 = type metadata accessor for ToolbarItemType(0);
  v24 = *(*(v127 - 8) + 64);
  v25 = __chkstk_darwin(v127);
  v27 = &v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v25);
  v30 = (&v118 - v29);
  v31 = __chkstk_darwin(v28);
  v33 = &v118 - v32;
  __chkstk_darwin(v31);
  v35 = (&v118 - v34);
  v37 = a1[3];
  v36 = a1[4];
  v138 = a1;
  sub_2E18(a1, v37);
  sub_10B098();
  v38 = v162;
  sub_265120();
  if (!v38)
  {
    v119 = v33;
    v120 = v30;
    v39 = v135;
    v118 = v27;
    v162 = v35;
    v40 = v134;
    sub_10B0EC();
    v41 = v136;
    sub_264D50();
    LOBYTE(v139[0]) = 0;
    sub_10B140();
    sub_264DF0();
    v42 = v141;
    LOBYTE(v141) = 1;
    sub_10B194();
    sub_264D50();
    if (v42 <= 2)
    {
      v49 = v130;
      if (v42)
      {
        if (v42 != 1)
        {
          LOBYTE(v141) = 3;
          v135 = sub_264DC0();
          v61 = v60;
          LOBYTE(v139[0]) = 5;
          sub_10C5A0();
          sub_264DB0();
          v62 = v141;
          LOBYTE(v159[0]) = 0;
          sub_3FC1C();
          sub_264DF0();
          sub_F7CC(v139, &v141);
          v81 = sub_2EF0(&qword_31B7C0, &unk_270F60);
          v123 = v81[12];
          v124 = v81;
          v82 = v120;
          *v120 = v135;
          v82[1] = v61;
          if (v62 == 2)
          {
            (*(v129 + 8))(v131, v49);
            (*(v132 + 8))(v137, v133);
            (*(v40 + 8))(v23, v41);
            v83 = 1;
            v84 = v128;
            v86 = v125;
            v85 = v126;
            v87 = v120;
            v88 = v123;
          }

          else
          {
            v89 = v122;
            if (v62)
            {
              sub_2610A0();
            }

            else
            {
              sub_261090();
            }

            (*(v129 + 8))(v131, v130);
            (*(v132 + 8))(v137, v133);
            (*(v40 + 8))(v23, v41);
            v86 = v125;
            v87 = v120;
            v88 = v123;
            v101 = v89;
            v85 = v126;
            (*(v125 + 32))(v120 + v123, v101, v126);
            v83 = 0;
            v84 = v128;
          }

          (*(v86 + 56))(v87 + v88, v83, 1, v85);
          sub_F7CC(&v141, v87 + v124[16]);
          swift_storeEnumTagMultiPayload();
          v74 = v162;
          sub_10C800(v87, v162, type metadata accessor for ToolbarItemType);
          v79 = v138;
          v80 = v84;
          goto LABEL_24;
        }

        LOBYTE(v141) = 8;
        v50 = v131;
        v51 = v130;
        v135 = sub_264DC0();
        v59 = v58;
        sub_2EF0(&qword_31BA80, &unk_277F20);
        LOBYTE(v139[0]) = 4;
        sub_10C650();
        sub_264DF0();
        (*(v129 + 8))(v50, v51);
        (*(v132 + 8))(v137, v133);
        (*(v40 + 8))(v23, v41);
        v73 = v141;
        v74 = v162;
        *v162 = v135;
        v74[1] = v59;
        v74[2] = v73;
      }

      else
      {
        LOBYTE(v139[0]) = 7;
        sub_10B1E8();
        v53 = v131;
        sub_264DF0();
        v54 = v49;
        v55 = v141;
        sub_2EF0(&qword_31BA80, &unk_277F20);
        LOBYTE(v139[0]) = 4;
        sub_10C650();
        sub_264DF0();
        (*(v129 + 8))(v53, v54);
        (*(v132 + 8))(v137, v133);
        (*(v40 + 8))(v23, v41);
        v56 = v141;
        v74 = v162;
        *v162 = v55;
        v74[1] = v56;
      }

      goto LABEL_22;
    }

    v45 = v130;
    if (v42 > 4)
    {
      if (v42 != 5)
      {
        LOBYTE(v139[0]) = 7;
        sub_10B1E8();
        v57 = v131;
        sub_264DF0();
        v71 = v141;
        LOBYTE(v159[0]) = 0;
        sub_3FC1C();
        sub_264DF0();
        v72 = v132;
        (*(v129 + 8))(v57, v45);
        (*(v72 + 8))(v137, v133);
        (*(v40 + 8))(v23, v136);
        sub_F7CC(v139, &v141);
        v74 = v162;
        v77 = v162;
        *v162 = v71;
        sub_F7CC(&v141, (v77 + 1));
LABEL_22:
        swift_storeEnumTagMultiPayload();
        v79 = v138;
LABEL_23:
        v80 = v128;
LABEL_24:
        sub_10C800(v74, v80, type metadata accessor for ToolbarItemType);
        v43 = v79;
        return sub_3080(v43);
      }

      LOBYTE(v141) = 8;
      v52 = sub_264DC0();
      v68 = v67;
      v135 = v23;
      v126 = v52;
      LOBYTE(v141) = 6;
      v69 = sub_264DC0();
      v76 = v75;
      v125 = v69;
      sub_2EF0(&qword_317FB8, &unk_26AA50);
      v160 = 1;
      sub_43FB8();
      sub_264DF0();
      v122 = 0;
      v123 = v76;
      v124 = v161;
      sub_260810();
      if (v158)
      {
        sub_F7CC(&v157, v159);
        sub_2E18(v159, v159[3]);
        sub_260950();
        sub_30CC(v159, &v141);
        CoverViewModel.CoverImageInfo.init(assetInfo:)(&v141, v139);
        (*(v129 + 8))(v131, v45);
        (*(v132 + 8))(v137, v133);
        (*(v40 + 8))(v135, v136);
        v146 = v139[5];
        v147 = v139[6];
        v141 = v139[0];
        v142 = v139[1];
        v143 = v139[2];
        v144 = v139[3];
        v145 = v139[4];
        *&v148 = v140;
        *(&v148 + 1) = 0x404B000000000000;
        sub_230A8(&v141);
        v153 = v145;
        v154 = v146;
        v155 = v147;
        v156 = v148;
        v149 = v141;
        v150 = v142;
        v151 = v143;
        v152 = v144;
        sub_3080(v159);
      }

      else
      {
        sub_8E80(&v157, &qword_316D40, &unk_268FC0);
        if (qword_315860 != -1)
        {
          swift_once();
        }

        v94 = sub_260D50();
        sub_B080(v94, qword_315FD0);
        v95 = v124;
        v96 = sub_260D30();
        v97 = sub_2648F0();

        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          *v98 = 138543362;
          *(v98 + 4) = v95;
          *v99 = v95;
          v100 = v95;
          _os_log_impl(&dword_0, v96, v97, "Failed to convert store asset to assetInfo: %{public}@", v98, 0xCu);
          sub_8E80(v99, &qword_316450, &qword_2681E0);
        }

        sub_2606A0();
        if (swift_dynamicCastClass())
        {
          (*(v129 + 8))(v131, v130);
          (*(v132 + 8))(v137, v133);
          (*(v40 + 8))(v135, v136);
          *&v141 = 0x4046000000000000;
          sub_23050(&v141);
        }

        else
        {
          v102 = [v95 pagesAreRTL];
          (*(v129 + 8))(v131, v130);
          (*(v132 + 8))(v137, v133);
          (*(v40 + 8))(v135, v136);
          *&v141 = 0x404B000000000000;
          BYTE8(v141) = v102;
          sub_2307C(&v141);
        }

        v153 = v145;
        v154 = v146;
        v155 = v147;
        v156 = v148;
        v149 = v141;
        v150 = v142;
        v151 = v143;
        v152 = v144;
      }

      v103 = v118;
      sub_2606A0();
      v104 = v124;
      v105 = swift_dynamicCastClass() != 0;

      v106 = v154;
      *(v103 + 4) = v153;
      *(v103 + 5) = v106;
      v107 = v156;
      *(v103 + 6) = v155;
      *(v103 + 7) = v107;
      v108 = v150;
      *v103 = v149;
      *(v103 + 1) = v108;
      v109 = v152;
      *(v103 + 2) = v151;
      *(v103 + 3) = v109;
      v110 = v125;
      v103[16] = v126;
      v103[17] = v68;
      v111 = v123;
      v103[18] = v110;
      v103[19] = v111;
      *(v103 + 160) = v105;
    }

    else
    {
      v46 = v42 == 3;
      v47 = v40;
      if (!v46)
      {
        LOBYTE(v139[0]) = 5;
        sub_10C5A0();
        sub_264DF0();
        LODWORD(v124) = v141;
        LOBYTE(v159[0]) = 0;
        sub_3FC1C();
        sub_264DF0();
        v70 = v129;
        sub_F7CC(v139, &v141);
        if (v124)
        {
          sub_2610A0();
        }

        else
        {
          sub_261090();
        }

        v74 = v162;
        v78 = *(sub_2EF0(&qword_31B7B8, &unk_277F10) + 48);
        (*(v70 + 8))(v131, v130);
        (*(v132 + 8))(v137, v133);
        (*(v47 + 8))(v23, v136);
        (*(v125 + 32))(v74, v39, v126);
        sub_F7CC(&v141, v74 + v78);
        goto LABEL_22;
      }

      LOBYTE(v141) = 8;
      v48 = sub_264DC0();
      v135 = v23;
      v63 = v48;
      v65 = v64;
      LOBYTE(v139[0]) = 5;
      sub_10C5A0();
      sub_264DB0();
      LODWORD(v120) = v141;
      v66 = type metadata accessor for FontSpec(0);
      LOBYTE(v141) = 2;
      sub_10C868(&qword_31E340, type metadata accessor for FontSpec);
      v118 = v66;
      sub_264DB0();
      LOBYTE(v159[0]) = 0;
      sub_3FC1C();
      sub_264DF0();
      v122 = 0;
      sub_F7CC(v139, &v141);
      v90 = sub_2EF0(&qword_31B7C8, &qword_270F70);
      v91 = v90[12];
      v92 = v119;
      *v119 = v63;
      v92[1] = v65;
      if (v120 == 2)
      {
        (*(v129 + 8))(v131, v130);
        (*(v132 + 8))(v137, v133);
        (*(v40 + 8))(v135, v136);
        v93 = 1;
      }

      else
      {
        if (v120)
        {
          sub_2610A0();
        }

        else
        {
          sub_261090();
        }

        (*(v129 + 8))(v131, v130);
        (*(v132 + 8))(v137, v133);
        (*(v40 + 8))(v135, v136);
        (*(v125 + 32))(v119 + v91, v121, v126);
        v93 = 0;
      }

      v112 = v119;
      (*(v125 + 56))(v119 + v91, v93, 1, v126);
      v113 = v90[20];
      sub_F7CC(&v141, v112 + v90[16]);
      v114 = v123;
      sub_22148(v124, v123, &qword_31E2F0, &qword_277EF0);
      if ((*(*(v118 - 1) + 48))(v114, 1) == 1)
      {
        sub_8E80(v123, &qword_31E2F0, &qword_277EF0);
        v115 = 0;
      }

      else
      {
        v116 = v123;
        v115 = *v123;

        sub_10C5F4(v116);
      }

      v103 = v119;
      *(v119 + v113) = v115;
    }

    swift_storeEnumTagMultiPayload();
    v117 = v103;
    v74 = v162;
    sub_10C800(v117, v162, type metadata accessor for ToolbarItemType);
    v79 = v138;
    goto LABEL_23;
  }

  v43 = v138;
  return sub_3080(v43);
}

unint64_t sub_10B098()
{
  result = qword_31E310;
  if (!qword_31E310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E310);
  }

  return result;
}

unint64_t sub_10B0EC()
{
  result = qword_31E318;
  if (!qword_31E318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E318);
  }

  return result;
}

unint64_t sub_10B140()
{
  result = qword_31E320;
  if (!qword_31E320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E320);
  }

  return result;
}

unint64_t sub_10B194()
{
  result = qword_31E328;
  if (!qword_31E328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E328);
  }

  return result;
}

unint64_t sub_10B1E8()
{
  result = qword_31E330;
  if (!qword_31E330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E330);
  }

  return result;
}

uint64_t sub_10B254(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1635017060;
  }

  else
  {
    v2 = 1684957547;
  }

  if (*a2)
  {
    v3 = 1635017060;
  }

  else
  {
    v3 = 1684957547;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_264F10();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_10B2CC()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_10B334()
{
  *v0;
  sub_264500();
}

Swift::Int sub_10B380()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_10B3F0@<X0>(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, char *a3@<X8>)
{
  v9._countAndFlagsBits = *a1;
  v4 = a1[1];
  v9._object = v4;
  v6 = sub_264D40(a2, v9);

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

void sub_10B44C(uint64_t *a1@<X8>)
{
  v2 = 1684957547;
  if (*v1)
  {
    v2 = 1635017060;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

uint64_t sub_10B474()
{
  if (*v0)
  {
    return 1635017060;
  }

  else
  {
    return 1684957547;
  }
}

uint64_t sub_10B4A4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, Swift::OpaquePointer a3@<X4>, char *a4@<X8>)
{
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  v7 = sub_264D40(a3, v10);

  if (v7 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (!v7)
  {
    v9 = 0;
  }

  *a4 = v9;
  return result;
}

uint64_t sub_10B504(uint64_t a1)
{
  v2 = sub_10C704();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10B540(uint64_t a1)
{
  v2 = sub_10C704();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10B588()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_10B680()
{
  *v0;
  *v0;
  *v0;
  sub_264500();
}

Swift::Int sub_10B764()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_10B858@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10D0F4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10B888(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7107189;
  v5 = 0xEF646E694B656761;
  v6 = 0x6D496C6F626D7973;
  v7 = 0xED0000656372756FLL;
  v8 = 0x7365527465737361;
  if (v2 != 3)
  {
    v8 = 0x7463656C65537369;
    v7 = 0xEA00000000006465;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656C746974627573;
    v3 = 0xE800000000000000;
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

uint64_t sub_10B93C()
{
  v1 = *v0;
  v2 = 7107189;
  v3 = 0x6D496C6F626D7973;
  v4 = 0x7365527465737361;
  if (v1 != 3)
  {
    v4 = 0x7463656C65537369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C746974627573;
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

uint64_t sub_10B9EC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10D0F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10BA14(uint64_t a1)
{
  v2 = sub_10C7AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10BA50(uint64_t a1)
{
  v2 = sub_10C7AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10BA8C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E694C6572616873;
  v4 = 0xE90000000000006BLL;
  if (v2 != 1)
  {
    v3 = 0x6E6F74747562;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656C67676F74;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x6E694C6572616873;
  v8 = 0xE90000000000006BLL;
  if (*a2 != 1)
  {
    v7 = 0x6E6F74747562;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x656C67676F74;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_264F10();
  }

  return v11 & 1;
}

Swift::Int sub_10BB8C()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_10BC2C()
{
  *v0;
  *v0;
  sub_264500();
}

Swift::Int sub_10BCB8()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_10BD54@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10D140(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10BD84(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE90000000000006BLL;
  v5 = 0x6E694C6572616873;
  if (v2 != 1)
  {
    v5 = 0x6E6F74747562;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656C67676F74;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t ToolbarActionMenuItemButtonType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_2EF0(&qword_316208, &qword_268BD0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v50 = v45 - v5;
  v49 = sub_260060();
  v47 = *(v49 - 8);
  v6 = *(v47 + 64);
  __chkstk_darwin(v49);
  v53 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_31E358, &qword_277F30);
  v52 = *(v8 - 8);
  v9 = *(v52 + 64);
  __chkstk_darwin(v8);
  v11 = v45 - v10;
  v12 = sub_2EF0(&qword_31E360, &unk_277F38);
  v51 = *(v12 - 8);
  v13 = *(v51 + 64);
  __chkstk_darwin(v12);
  v15 = v45 - v14;
  v16 = type metadata accessor for ToolbarActionMenuItemButtonType(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[3];
  v20 = a1[4];
  v55 = a1;
  sub_2E18(a1, v21);
  sub_10C704();
  v22 = v54;
  sub_265120();
  if (!v22)
  {
    v54 = v11;
    v45[1] = v16;
    v46 = v8;
    v23 = v52;
    v45[0] = v19;
    v24 = v51;
    v59 = 0;
    sub_10C758();
    sub_264DF0();
    v25 = v15;
    v26 = v56;
    LOBYTE(v56) = 1;
    sub_10C7AC();
    v27 = v54;
    sub_264D50();
    if (v26)
    {
      if (v26 != 1)
      {
        sub_260BD0();
        LOBYTE(v56) = 1;
        sub_10C868(&qword_315D90, &type metadata accessor for LocalizerRequest);
        sub_264DB0();
        LOBYTE(v56) = 2;
        v36 = sub_264D70();
        v53 = v37;
        v49 = v36;
        sub_2EF0(&qword_317FB8, &unk_26AA50);
        v59 = 3;
        sub_43FB8();
        sub_264DB0();
        if (v56)
        {
          v38 = v56;
          sub_260810();

          (*(v23 + 8))(v54, v46);
          (*(v24 + 8))(v25, v12);
        }

        else
        {
          (*(v23 + 8))(v54, v46);
          (*(v24 + 8))(v25, v12);
          v58 = 0;
          v56 = 0u;
          v57 = 0u;
        }

        v39 = v48;
        v40 = sub_2EF0(&qword_31BB98, &qword_271980);
        v32 = v45[0];
        v41 = (v45[0] + *(v40 + 48));
        v42 = v45[0] + *(v40 + 64);
        sub_22148(v50, v45[0], &qword_316208, &qword_268BD0);
        v43 = v53;
        *v41 = v49;
        v41[1] = v43;
        *(v42 + 32) = v58;
        v44 = v57;
        *v42 = v56;
        *(v42 + 16) = v44;
        swift_storeEnumTagMultiPayload();
        v35 = v39;
        goto LABEL_9;
      }

      LOBYTE(v56) = 0;
      sub_10C868(&qword_31E380, &type metadata accessor for URL);
      v29 = v23;
      v30 = v49;
      v31 = v46;
      sub_264DF0();
      (*(v29 + 8))(v27, v31);
      (*(v24 + 8))(v25, v12);
      v32 = v45[0];
      (*(v47 + 32))(v45[0], v53, v30);
    }

    else
    {
      LOBYTE(v56) = 4;
      v33 = v46;
      v34 = sub_264DD0();
      (*(v23 + 8))(v27, v33);
      (*(v24 + 8))(v25, v12);
      v32 = v45[0];
      *v45[0] = v34 & 1;
    }

    swift_storeEnumTagMultiPayload();
    v35 = v48;
LABEL_9:
    sub_10C800(v32, v35, type metadata accessor for ToolbarActionMenuItemButtonType);
  }

  return sub_3080(v55);
}

unint64_t sub_10C5A0()
{
  result = qword_31E338;
  if (!qword_31E338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E338);
  }

  return result;
}

uint64_t sub_10C5F4(uint64_t a1)
{
  v2 = type metadata accessor for FontSpec(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10C650()
{
  result = qword_31E348;
  if (!qword_31E348)
  {
    sub_2F9C(&qword_31BA80, &unk_277F20);
    sub_10C868(&qword_31E350, type metadata accessor for ToolbarActionMenu);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E348);
  }

  return result;
}

unint64_t sub_10C704()
{
  result = qword_31E368;
  if (!qword_31E368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E368);
  }

  return result;
}

unint64_t sub_10C758()
{
  result = qword_31E370;
  if (!qword_31E370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E370);
  }

  return result;
}

unint64_t sub_10C7AC()
{
  result = qword_31E378;
  if (!qword_31E378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E378);
  }

  return result;
}

uint64_t sub_10C800(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10C868(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10C934()
{
  result = qword_31E388;
  if (!qword_31E388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E388);
  }

  return result;
}

unint64_t sub_10C98C()
{
  result = qword_31E390;
  if (!qword_31E390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E390);
  }

  return result;
}

unint64_t sub_10C9E4()
{
  result = qword_31E398;
  if (!qword_31E398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E398);
  }

  return result;
}

unint64_t sub_10CA3C()
{
  result = qword_31E3A0;
  if (!qword_31E3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E3A0);
  }

  return result;
}

unint64_t sub_10CA94()
{
  result = qword_31E3A8;
  if (!qword_31E3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E3A8);
  }

  return result;
}

unint64_t sub_10CAEC()
{
  result = qword_31E3B0;
  if (!qword_31E3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E3B0);
  }

  return result;
}

unint64_t sub_10CB44()
{
  result = qword_31E3B8;
  if (!qword_31E3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E3B8);
  }

  return result;
}

unint64_t sub_10CB9C()
{
  result = qword_31E3C0;
  if (!qword_31E3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E3C0);
  }

  return result;
}

unint64_t sub_10CBF4()
{
  result = qword_31E3C8;
  if (!qword_31E3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E3C8);
  }

  return result;
}

unint64_t sub_10CC4C()
{
  result = qword_31E3D0;
  if (!qword_31E3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E3D0);
  }

  return result;
}

unint64_t sub_10CCA4()
{
  result = qword_31E3D8;
  if (!qword_31E3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E3D8);
  }

  return result;
}

unint64_t sub_10CCFC()
{
  result = qword_31E3E0;
  if (!qword_31E3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E3E0);
  }

  return result;
}

unint64_t sub_10CD54()
{
  result = qword_31E3E8;
  if (!qword_31E3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E3E8);
  }

  return result;
}

unint64_t sub_10CDAC()
{
  result = qword_31E3F0;
  if (!qword_31E3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E3F0);
  }

  return result;
}

unint64_t sub_10CE04()
{
  result = qword_31E3F8;
  if (!qword_31E3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E3F8);
  }

  return result;
}

unint64_t sub_10CE5C()
{
  result = qword_31E400;
  if (!qword_31E400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E400);
  }

  return result;
}

unint64_t sub_10CEB4()
{
  result = qword_31E408;
  if (!qword_31E408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E408);
  }

  return result;
}

unint64_t sub_10CF0C()
{
  result = qword_31E410;
  if (!qword_31E410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E410);
  }

  return result;
}

unint64_t sub_10CF60()
{
  result = qword_31E418;
  if (!qword_31E418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E418);
  }

  return result;
}

uint64_t sub_10CFB4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_3006B0;
  v6._object = a2;
  v4 = sub_264D40(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10D000()
{
  result = qword_31E420;
  if (!qword_31E420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E420);
  }

  return result;
}

unint64_t sub_10D054()
{
  result = qword_31E428;
  if (!qword_31E428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E428);
  }

  return result;
}

uint64_t sub_10D0A8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_3007A8;
  v6._object = a2;
  v4 = sub_264D40(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10D0F4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_300980;
  v6._object = a2;
  v4 = sub_264D40(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10D140(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_300A18;
  v6._object = a2;
  v4 = sub_264D40(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t static GridItemMetadata.recommendation(assetInfo:title:reasonDescription:titleLines:subtitleLines:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_30CC(a1, &v18);
  v17[0] = a2;
  v17[1] = a3;
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  v16[3] = &type metadata for GridItemMetadataRecommendation;
  v16[4] = sub_10D26C();
  v16[0] = swift_allocObject();
  sub_EE594(v17, v16[0] + 16);
  *a8 = 0u;
  *(a8 + 16) = 0u;
  *(a8 + 32) = 0;

  sub_200E0(v16, a8);
  *(a8 + 40) = 0;
  return sub_10D308(v17);
}

unint64_t sub_10D26C()
{
  result = qword_31E430[0];
  if (!qword_31E430[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_31E430);
  }

  return result;
}

uint64_t sub_10D2C0()
{
  v1 = v0[3];

  v2 = v0[5];

  sub_3080(v0 + 8);

  return swift_deallocObject();
}

uint64_t _CodeAnyIntentModel_KeyedBy.description.getter(void *a1)
{
  v3 = *v1;
  v4 = a1[2];
  v7 = a1[3];
  swift_getExtendedExistentialTypeMetadata();
  v5 = a1[5];
  sub_2642E0();
  swift_getWitnessTable();
  sub_264EF0();
  return 0;
}

uint64_t _CodeAnyIntentModel_KeyedBy.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  sub_30CC(a1, v12);
  type metadata accessor for CodeAnyIntentModel();
  swift_getWitnessTable();
  v7 = sub_2642F0();
  if (v3)
  {
    return sub_3080(a1);
  }

  v11[1] = __chkstk_darwin(v7);
  KeyPath = swift_getKeyPath();
  v13 = a3;
  v11[2] = v11;
  __chkstk_darwin(KeyPath);
  v12[0] = a2;
  swift_getExtendedExistentialTypeMetadata();
  v10 = sub_2642D0();

  result = sub_3080(a1);
  *v13 = v10;
  return result;
}

uint64_t sub_10D600@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2[2];
  v4 = a2[4];
  v5 = a2[5];
  return _CodeAnyIntentModel_KeyedBy.init(from:)(a1, a2[3], a3);
}

uint64_t _CodeAnyIntentModel_KeyedBy<>.init(_partiallyFrom:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_30CC(a1, v8);
  type metadata accessor for CodeAnyIntentModel();
  swift_getWitnessTable();
  sub_2642A0();
  swift_getKeyPath();
  v8[0] = a2;
  swift_getExtendedExistentialTypeMetadata();
  v6 = sub_2642D0();

  result = sub_3080(a1);
  *a3 = v6;
  return result;
}

uint64_t sub_10D774()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t ListItemAccessoryRecommendationControls.init(assetInfo:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;

  return sub_F7CC(a1, a2 + 16);
}

uint64_t ListItemAccessoryRecommendationControls.content(contextActionMenuView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_2EF0(&qword_316890, &qword_2725A0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v27 - v14;
  __chkstk_darwin(v13);
  v17 = &v27 - v16;
  *a3 = sub_261D30();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v18 = sub_2EF0(&qword_31E4B8, &qword_278A10);
  sub_10DA8C(v4, a1, a2, a3 + *(v18 + 44));
  v19 = sub_261690();
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v21(v17, 1, 1, v19);
  (*(v20 + 104))(v15, enum case for DynamicTypeSize.accessibility3(_:), v19);
  v21(v15, 0, 1, v19);
  sub_10E0D8(v15, v12);
  v22 = a3 + *(sub_2EF0(&qword_31E4C0, &qword_278A18) + 36);
  v21(v22, 1, 1, v19);
  v23 = type metadata accessor for RestrictedDynamicTypeSizeViewModifier();
  v24 = *(v23 + 20);
  v21((v22 + v24), 1, 1, v19);
  v25 = *(v23 + 24);
  *(v22 + v25) = swift_getKeyPath();
  sub_2EF0(&qword_318148, &unk_26AEE0);
  swift_storeEnumTagMultiPayload();
  sub_C5FBC(v17, v22);
  return sub_C5FBC(v12, v22 + v24);
}

uint64_t sub_10DA8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v64 = a2;
  v65 = a3;
  v56 = a4;
  v55 = sub_262730();
  v5 = *(v55 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v55);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ListItemAccessoryMoreButtonView();
  v10 = *(*(v9 - 1) + 64);
  __chkstk_darwin(v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2EF0(&qword_31E500, &qword_278B50);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v63 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v61 = &v53 - v17;
  ButtonView = type metadata accessor for ListItemAccessoryWantToReadButtonView();
  v19 = (ButtonView - 8);
  v20 = *(*(ButtonView - 8) + 64);
  v21 = __chkstk_darwin(ButtonView);
  v62 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v53 - v23;
  sub_30CC(a1 + 16, v71);
  KeyPath = swift_getKeyPath();
  v78 = 0;
  v67[0] = KeyPath;
  v68 = 0;
  v69 = swift_getKeyPath();
  v70 = 0;
  v71[40] = 1;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v59 = v74;
  v60 = v72;
  v57 = v77;
  v58 = v76;
  v81 = 1;
  v80 = v73;
  v79 = v75;
  sub_30CC(a1 + 16, &v24[v19[9]]);
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  v26 = v24;
  v27 = v19[7];
  *(v26 + v27) = swift_getKeyPath();
  sub_2EF0(&qword_317E08, &qword_26A550);
  v54 = v26;
  swift_storeEnumTagMultiPayload();
  v28 = v19[8];
  v66[0] = 0x403E000000000000;
  sub_78E78();
  sub_2612F0();
  sub_30CC(a1 + 16, &v12[v9[10]]);
  v66[0] = 0x4034000000000000;
  v29 = enum case for Font.TextStyle.subheadline(_:);
  v30 = *(v5 + 104);
  v31 = v55;
  v30(v8, enum case for Font.TextStyle.subheadline(_:), v55);
  sub_40130();
  sub_2612E0();
  v32 = v9[5];
  v66[0] = 0x4000000000000000;
  v30(v8, v29, v31);
  sub_2612E0();
  v33 = v9[6];
  *&v12[v33] = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v34 = v9[7];
  *&v12[v34] = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v35 = &v12[v9[8]];
  v36 = swift_getKeyPath();
  v82 = 0;
  *v35 = v36;
  v35[66] = 0;
  v37 = &v12[v9[9]];
  type metadata accessor for ProfileRestrictions();
  sub_10E2B8(&qword_326DC0, type metadata accessor for ProfileRestrictions);
  *v37 = sub_261900();
  v37[1] = v38;
  v39 = &v12[v9[11]];
  v40 = v65;
  *v39 = v64;
  *(v39 + 1) = v40;
  v12[v9[12]] = 0;
  sub_10E2B8(&qword_317F38, type metadata accessor for ListItemAccessoryMoreButtonView);

  v41 = v61;
  sub_262C60();
  sub_10E498(v12, type metadata accessor for ListItemAccessoryMoreButtonView);
  sub_10E300(v67, v66);
  LOBYTE(v35) = v81;
  LOBYTE(v40) = v80;
  LOBYTE(v28) = v79;
  v42 = v54;
  v43 = v62;
  sub_10E35C(v54, v62);
  v44 = v41;
  v45 = v41;
  v46 = v63;
  sub_10E3C0(v44, v63);
  v47 = v56;
  sub_10E300(v66, v56);
  *(v47 + 136) = 0;
  *(v47 + 144) = v35;
  v48 = v59;
  *(v47 + 152) = v60;
  *(v47 + 160) = v40;
  *(v47 + 168) = v48;
  *(v47 + 176) = v28;
  v49 = v57;
  *(v47 + 184) = v58;
  *(v47 + 192) = v49;
  v50 = sub_2EF0(qword_31E508, &unk_278C50);
  sub_10E35C(v43, v47 + v50[16]);
  v51 = v47 + v50[20];
  *v51 = 0;
  *(v51 + 8) = 1;
  sub_10E3C0(v46, v47 + v50[24]);
  sub_10E430(v45);
  sub_10E498(v42, type metadata accessor for ListItemAccessoryWantToReadButtonView);
  sub_10E4F8(v67);
  sub_10E430(v46);
  sub_10E498(v43, type metadata accessor for ListItemAccessoryWantToReadButtonView);
  return sub_10E4F8(v66);
}

uint64_t sub_10E0D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316890, &qword_2725A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10E184()
{
  result = qword_31E4E8;
  if (!qword_31E4E8)
  {
    sub_2F9C(&qword_31E4C0, &qword_278A18);
    sub_10E240();
    sub_10E2B8(&qword_31C258, type metadata accessor for RestrictedDynamicTypeSizeViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E4E8);
  }

  return result;
}

unint64_t sub_10E240()
{
  result = qword_31E4F0;
  if (!qword_31E4F0)
  {
    sub_2F9C(&qword_31E4F8, &qword_278B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E4F0);
  }

  return result;
}

uint64_t sub_10E2B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10E35C(uint64_t a1, uint64_t a2)
{
  ButtonView = type metadata accessor for ListItemAccessoryWantToReadButtonView();
  (*(*(ButtonView - 8) + 16))(a2, a1, ButtonView);
  return a2;
}

uint64_t sub_10E3C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31E500, &qword_278B50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10E430(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31E500, &qword_278B50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10E498(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10E550(uint64_t a1)
{
  sub_22944();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10E5F4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 32) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_10E754(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
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

      else if (v13)
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
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (((result + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t sub_10E998(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  __chkstk_darwin(TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_2636C0();
}

uint64_t sub_10EB68(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1);
  (*(v2 + 16))(&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v12 = *(a1 + 16);
  *(v5 + 16) = v12;
  (*(v2 + 32))(v5 + v4, &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_2F9C(&qword_31E590, &qword_28DB00);
  swift_getTupleTypeMetadata2();
  sub_2636B0();
  swift_getWitnessTable();
  sub_2632E0();
  sub_261730();
  sub_2F9C(&qword_3173A0, &qword_26D0C0);
  sub_261730();
  WitnessTable = swift_getWitnessTable();
  v18 = &protocol witness table for _PaddingLayout;
  v6 = swift_getWitnessTable();
  v7 = sub_7BE48();
  v15 = v6;
  v16 = v7;
  swift_getWitnessTable();
  v13 = sub_261550();
  v14 = v8;
  v9 = sub_261560();
  v10 = swift_getWitnessTable();
  sub_1609C(&v13, v9, v10);

  v13 = v19;
  v14 = v20;
  sub_1609C(&v13, v9, v10);
}

uint64_t sub_10EE38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a1;
  v49 = a5;
  v48 = sub_261180();
  v46 = *(v48 - 8);
  v8 = *(v46 + 64);
  __chkstk_darwin(v48);
  v47 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2F9C(&qword_31E590, &qword_28DB00);
  swift_getTupleTypeMetadata2();
  sub_2636B0();
  swift_getWitnessTable();
  v10 = sub_2632E0();
  v41 = *(v10 - 8);
  v11 = *(v41 + 64);
  __chkstk_darwin(v10);
  v13 = &v38 - v12;
  v14 = sub_261730();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  __chkstk_darwin(v14);
  v17 = &v38 - v16;
  sub_2F9C(&qword_3173A0, &qword_26D0C0);
  v39 = v14;
  v42 = sub_261730();
  v45 = *(v42 - 8);
  v18 = *(v45 + 64);
  v19 = __chkstk_darwin(v42);
  v38 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v43 = &v38 - v21;
  sub_261E60();
  v22 = type metadata accessor for ReadingInsightsView();
  v23 = *(a2 + *(v22 + 52));
  v50 = a3;
  v51 = a4;
  v52 = a2;
  v53 = v40;
  sub_2632D0();
  LOBYTE(v14) = sub_262510();
  sub_262540();
  sub_262540();
  if (sub_262540() != v14)
  {
    sub_262540();
  }

  v24 = *(a2 + *(v22 + 48));
  WitnessTable = swift_getWitnessTable();
  sub_262E00();
  (*(v41 + 8))(v13, v10);
  swift_getKeyPath();
  v26 = v46;
  v27 = v47;
  v28 = v48;
  (*(v46 + 104))(v47, enum case for ColorScheme.dark(_:), v48);
  v56 = WitnessTable;
  v57 = &protocol witness table for _PaddingLayout;
  v29 = v39;
  v30 = swift_getWitnessTable();
  v31 = v38;
  sub_262A90();

  (*(v26 + 8))(v27, v28);
  (*(v44 + 8))(v17, v29);
  v32 = sub_7BE48();
  v54 = v30;
  v55 = v32;
  v33 = v42;
  v34 = swift_getWitnessTable();
  v35 = v43;
  sub_1609C(v31, v33, v34);
  v36 = *(v45 + 8);
  v36(v31, v33);
  sub_1609C(v35, v33, v34);
  return (v36)(v35, v33);
}

uint64_t sub_10F384@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v61 = a4;
  v62 = a2;
  v68 = a5;
  v69 = *(a3 - 8);
  v7 = *(v69 + 64);
  v8 = __chkstk_darwin(a1);
  v67 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v66 = &v57 - v10;
  v11 = type metadata accessor for TextLockup();
  v12 = (v11 - 8);
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = (&v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = sub_2EF0(&qword_31E590, &qword_28DB00);
  v16 = *(*(v63 - 8) + 64);
  v17 = __chkstk_darwin(v63);
  v65 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v57 - v20;
  __chkstk_darwin(v19);
  v64 = &v57 - v22;
  v23 = a1[1];
  v59 = *a1;
  v24 = a1[3];
  v60 = a1[2];
  v25 = v12[15];
  v26 = sub_2625C0();
  (*(*(v26 - 8) + 56))(v15 + v25, 1, 1, v26);

  v58 = sub_261E60();
  v57 = sub_263580();
  v28 = v27;
  v29 = v12[19];
  v30 = enum case for DynamicTypeSize.accessibility2(_:);
  v31 = sub_261690();
  (*(*(v31 - 8) + 104))(v15 + v29, v30, v31);
  *v15 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v32 = v12[7];
  *(v15 + v32) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v33 = v15 + v12[8];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  v34 = v15 + v12[9];
  *v34 = swift_getKeyPath();
  v34[8] = 0;
  v35 = v15 + v12[10];
  *v35 = swift_getKeyPath();
  v35[8] = 0;
  *(v15 + v12[11]) = 5;
  v36 = (v15 + v12[12]);
  *v36 = 0;
  v36[1] = 0;
  v37 = (v15 + v12[13]);
  *v37 = v59;
  v37[1] = v23;
  v37[2] = 0;
  v38 = (v15 + v12[14]);
  *v38 = v60;
  v38[1] = v24;
  v39 = v61;
  *(v15 + v12[16]) = v58;
  v40 = (v15 + v12[17]);
  *v40 = v57;
  v40[1] = v28;
  *(v15 + v12[18]) = 0;
  sub_261420();
  v42 = v41;
  v43 = type metadata accessor for ReadingInsightsView();
  v44 = v42 * *(a1 + *(v43 + 44));
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_261830();
  sub_10FB68(v15, v21);
  v45 = v63;
  v46 = &v21[*(v63 + 36)];
  v47 = v79;
  *(v46 + 4) = v78;
  *(v46 + 5) = v47;
  *(v46 + 6) = v80;
  v48 = v75;
  *v46 = v74;
  *(v46 + 1) = v48;
  v49 = v77;
  *(v46 + 2) = v76;
  *(v46 + 3) = v49;
  v50 = v64;
  sub_10FBCC(v21, v64);
  v51 = v66;
  sub_1609C(a1 + *(v43 + 40), a3, v39);
  v52 = v65;
  sub_10FC3C(v50, v65);
  v73[0] = v52;
  v53 = v69;
  v54 = v67;
  (*(v69 + 16))(v67, v51, a3);
  v73[1] = v54;
  v72[0] = v45;
  v72[1] = a3;
  v70 = sub_10FCAC();
  v71 = v39;
  sub_10E998(v73, 2uLL, v72);
  v55 = *(v53 + 8);
  v55(v51, a3);
  sub_10FD90(v50);
  v55(v54, a3);
  return sub_10FD90(v52);
}

uint64_t sub_10F9A0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for ReadingInsightsView() - 8);
  v4 = *(*v3 + 64);
  v5 = v0 + ((*(*v3 + 80) + 32) & ~*(*v3 + 80));
  v6 = *(v5 + 8);

  v7 = *(v5 + 24);

  (*(*(v2 - 8) + 8))(v5 + v3[12], v2);

  return swift_deallocObject();
}

uint64_t sub_10FA98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for ReadingInsightsView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_10EE38(a1, v8, v5, v6, a2);
}

uint64_t sub_10FB68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextLockup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10FBCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31E590, &qword_28DB00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10FC3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31E590, &qword_28DB00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10FCAC()
{
  result = qword_31E598;
  if (!qword_31E598)
  {
    sub_2F9C(&qword_31E590, &qword_28DB00);
    sub_10FD38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E598);
  }

  return result;
}

unint64_t sub_10FD38()
{
  result = qword_31BF50;
  if (!qword_31BF50)
  {
    type metadata accessor for TextLockup();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BF50);
  }

  return result;
}

uint64_t sub_10FD90(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31E590, &qword_28DB00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10FDF8(uint64_t *a1)
{
  v1 = *a1;
  sub_2F9C(&qword_31E590, &qword_28DB00);
  swift_getTupleTypeMetadata2();
  sub_2636B0();
  swift_getWitnessTable();
  sub_2632E0();
  sub_261730();
  sub_2F9C(&qword_3173A0, &qword_26D0C0);
  sub_261730();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_7BE48();
  swift_getWitnessTable();
  sub_261560();
  return swift_getWitnessTable();
}

uint64_t _CodeAnyComponentModel_OrNil.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return sub_10FF90(a1, a2);
}

uint64_t sub_10FF90(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31E5A0, &unk_278E00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_11000C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31E5A0, &unk_278E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _CodeAnyComponentModel_OrNil.description.getter()
{
  sub_11000C(v0, &v3);
  if (v4)
  {
    sub_F7CC(&v3, v5);
    *&v3 = 0;
    *(&v3 + 1) = 0xE000000000000000;
    sub_2EF0(&qword_317250, &unk_2697A0);
    sub_264CC0();
    v1 = v3;
    sub_3080(v5);
  }

  else
  {
    sub_8E80(&v3, &qword_31E5A0, &unk_278E00);
    return 7104878;
  }

  return v1;
}

uint64_t _CodeAnyComponentModel_OrNil.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  sub_30CC(a1, &v6);
  sub_752E8();
  sub_264A70();
  sub_3080(a1);
  if (v2)
  {
    return sub_11021C(a2);
  }

  if (v8)
  {
    sub_30CC(v7, v9);
    sub_756E8(v7);
  }

  else
  {
    sub_8E80(v7, &qword_31E5A8, &qword_278E10);
    memset(v9, 0, sizeof(v9));
    v10 = 0;
  }

  return sub_10FF90(v9, a2);
}

uint64_t _CodeAnyComponentModel_OrNil.init(_partiallyFrom:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  sub_30CC(a1, v7);
  sub_752E8();
  sub_264A50();
  sub_3080(a1);
  if (v6)
  {
    sub_30CC(v5, v7);
    sub_756E8(v5);
  }

  else
  {
    sub_8E80(v5, &qword_31E5A8, &qword_278E10);
    memset(v7, 0, sizeof(v7));
    v8 = 0;
  }

  return sub_10FF90(v7, a2);
}

uint64_t sub_110320(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_110348@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = a3;
  v6 = sub_2EF0(&qword_319810, &unk_26D490);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v31[-v8];
  v10 = sub_2EF0(&qword_317280, &qword_2697E0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v31[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v17 = &v31[-v16];
  v32 = *a2;
  v18 = v3[2];
  v19 = v3[3];
  v21 = v3[4];
  v20 = v3[5];
  v34 = a1;
  sub_6DF9C(sub_6DF7C, v20, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_8E80(v9, &qword_319810, &unk_26D490);

    if (!*(v21 + 16))
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_6E174(v9, v17);
    sub_6E174(v17, v15);
    v22 = *v15;
    v23 = *(v15 + 1);
    v21 = *(v15 + 2);
    v24 = *(v10 + 48);
    v25 = sub_261690();
    (*(*(v25 - 8) + 8))(&v15[v24], v25);
    if (!*(v21 + 16))
    {
LABEL_7:

      v28 = 0x3FF0000000000000;
      goto LABEL_8;
    }
  }

  v26 = sub_D30C(v32);
  if ((v27 & 1) == 0)
  {
    goto LABEL_7;
  }

  v28 = *(*(v21 + 56) + 8 * v26);

LABEL_8:
  v30 = v33;
  *v33 = v28;
  v30[1] = 0;
  *(v30 + 16) = 0;
  return result;
}

BOOL sub_1105E0()
{
  v0 = *(sub_2EF0(&qword_317280, &qword_2697E0) + 48);
  sub_261690();
  sub_1158C8();
  return (sub_264360() & 1) == 0;
}

uint64_t sub_110664()
{
  v0 = sub_261690();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_3159C8 != -1)
  {
    swift_once();
  }

  v5 = unk_31E830;
  v6 = qword_31E838;
  v7 = qword_3159E8;
  v19 = qword_31E828;

  v18 = v5;

  if (v7 != -1)
  {
    swift_once();
  }

  v9 = qword_31E888;
  v8 = unk_31E890;
  v10 = qword_31E898;
  (*(v1 + 104))(v4, enum case for DynamicTypeSize.accessibility3(_:), v0);
  sub_2EF0(&qword_317278, &unk_278FE0);
  v11 = (sub_2EF0(&qword_317280, &qword_2697E0) - 8);
  v12 = *(*v11 + 72);
  v13 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_267D30;
  v15 = (v14 + v13);
  v16 = v11[14];
  *v15 = v9;
  v15[1] = v8;
  v15[2] = v10;
  (*(v1 + 16))(v14 + v13 + v16, v4, v0);
  v20 = v14;

  sub_113884(&v20);

  result = (*(v1 + 8))(v4, v0);
  qword_31E5B0 = 12641;
  *algn_31E5B8 = 0xE200000000000000;
  qword_31E5C0 = v19;
  unk_31E5C8 = v18;
  qword_31E5D0 = v6;
  unk_31E5D8 = v20;
  return result;
}

uint64_t sub_11093C()
{
  v0 = sub_261690();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_3159D0 != -1)
  {
    swift_once();
  }

  v5 = *algn_31E848;
  v6 = qword_31E850;
  v7 = qword_3159E8;
  v19 = qword_31E840;

  v18 = v5;

  if (v7 != -1)
  {
    swift_once();
  }

  v9 = qword_31E888;
  v8 = unk_31E890;
  v10 = qword_31E898;
  (*(v1 + 104))(v4, enum case for DynamicTypeSize.accessibility3(_:), v0);
  sub_2EF0(&qword_317278, &unk_278FE0);
  v11 = (sub_2EF0(&qword_317280, &qword_2697E0) - 8);
  v12 = *(*v11 + 72);
  v13 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_267D30;
  v15 = (v14 + v13);
  v16 = v11[14];
  *v15 = v9;
  v15[1] = v8;
  v15[2] = v10;
  (*(v1 + 16))(v14 + v13 + v16, v4, v0);
  v20 = v14;

  sub_113884(&v20);

  result = (*(v1 + 8))(v4, v0);
  qword_31E5E0 = 12897;
  *algn_31E5E8 = 0xE200000000000000;
  qword_31E5F0 = v19;
  unk_31E5F8 = v18;
  qword_31E600 = v6;
  unk_31E608 = v20;
  return result;
}

uint64_t sub_110C14()
{
  v0 = sub_261690();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_3159D8 != -1)
  {
    swift_once();
  }

  v5 = unk_31E860;
  v6 = qword_31E868;
  v7 = qword_3159E0;
  v19 = qword_31E858;

  v18 = v5;

  if (v7 != -1)
  {
    swift_once();
  }

  v9 = qword_31E870;
  v8 = *algn_31E878;
  v10 = qword_31E880;
  (*(v1 + 104))(v4, enum case for DynamicTypeSize.accessibility3(_:), v0);
  sub_2EF0(&qword_317278, &unk_278FE0);
  v11 = (sub_2EF0(&qword_317280, &qword_2697E0) - 8);
  v12 = *(*v11 + 72);
  v13 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_267D30;
  v15 = (v14 + v13);
  v16 = v11[14];
  *v15 = v9;
  v15[1] = v8;
  v15[2] = v10;
  (*(v1 + 16))(v14 + v13 + v16, v4, v0);
  v20 = v14;

  sub_113884(&v20);

  result = (*(v1 + 8))(v4, v0);
  qword_31E610 = 0x6C6C616D5361;
  *algn_31E618 = 0xE600000000000000;
  qword_31E620 = v19;
  unk_31E628 = v18;
  qword_31E630 = v6;
  unk_31E638 = v20;
  return result;
}

uint64_t sub_110EF4()
{
  v0 = sub_261690();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_3159E0 != -1)
  {
    swift_once();
  }

  v5 = *algn_31E878;
  v6 = qword_31E880;
  v7 = qword_3159D0;
  v19 = qword_31E870;

  v18 = v5;

  if (v7 != -1)
  {
    swift_once();
  }

  v9 = qword_31E840;
  v8 = *algn_31E848;
  v10 = qword_31E850;
  (*(v1 + 104))(v4, enum case for DynamicTypeSize.accessibility3(_:), v0);
  sub_2EF0(&qword_317278, &unk_278FE0);
  v11 = (sub_2EF0(&qword_317280, &qword_2697E0) - 8);
  v12 = *(*v11 + 72);
  v13 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_267D30;
  v15 = (v14 + v13);
  v16 = v11[14];
  *v15 = v9;
  v15[1] = v8;
  v15[2] = v10;
  (*(v1 + 16))(v14 + v13 + v16, v4, v0);
  v20 = v14;

  sub_113884(&v20);

  result = (*(v1 + 8))(v4, v0);
  qword_31E640 = 98;
  *algn_31E648 = 0xE100000000000000;
  qword_31E650 = v19;
  unk_31E658 = v18;
  qword_31E660 = v6;
  unk_31E668 = v20;
  return result;
}

uint64_t sub_1111CC()
{
  v0 = sub_261690();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_3159E8 != -1)
  {
    swift_once();
  }

  v5 = unk_31E890;
  v6 = qword_31E898;
  v7 = qword_3159F0;
  v19 = qword_31E888;

  v18 = v5;

  if (v7 != -1)
  {
    swift_once();
  }

  v9 = qword_31E8A0;
  v8 = *algn_31E8A8;
  v10 = qword_31E8B0;
  (*(v1 + 104))(v4, enum case for DynamicTypeSize.accessibility3(_:), v0);
  sub_2EF0(&qword_317278, &unk_278FE0);
  v11 = (sub_2EF0(&qword_317280, &qword_2697E0) - 8);
  v12 = *(*v11 + 72);
  v13 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_267D30;
  v15 = (v14 + v13);
  v16 = v11[14];
  *v15 = v9;
  v15[1] = v8;
  v15[2] = v10;
  (*(v1 + 16))(v14 + v13 + v16, v4, v0);
  v20 = v14;

  sub_113884(&v20);

  result = (*(v1 + 8))(v4, v0);
  qword_31E670 = 99;
  *algn_31E678 = 0xE100000000000000;
  qword_31E680 = v19;
  unk_31E688 = v18;
  qword_31E690 = v6;
  unk_31E698 = v20;
  return result;
}

uint64_t static ShelfGridType.c.getter@<X0>(void *a1@<X8>)
{
  if (qword_315978 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_31E678;
  v2 = qword_31E680;
  v3 = unk_31E688;
  v4 = qword_31E690;
  v5 = unk_31E698;
  *a1 = qword_31E670;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

Swift::Int sub_111550()
{
  if (qword_3159F0 != -1)
  {
    swift_once();
  }

  v0 = qword_31E8A0;
  v1 = *algn_31E8A8;
  v2 = qword_31E8B0;
  v4 = _swiftEmptyArrayStorage;

  result = sub_113884(&v4);
  qword_31E6A0 = 100;
  *algn_31E6A8 = 0xE100000000000000;
  qword_31E6B0 = v0;
  unk_31E6B8 = v1;
  qword_31E6C0 = v2;
  unk_31E6C8 = v4;
  return result;
}

uint64_t static ShelfGridType.d.getter@<X0>(void *a1@<X8>)
{
  if (qword_315980 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_31E6A8;
  v2 = qword_31E6B0;
  v3 = unk_31E6B8;
  v4 = qword_31E6C0;
  v5 = unk_31E6C8;
  *a1 = qword_31E6A0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t sub_1116D0()
{
  v0 = sub_261690();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_3159F8 != -1)
  {
    swift_once();
  }

  v5 = unk_31E8C0;
  v6 = qword_31E8C8;
  v7 = qword_3159F0;
  v19 = qword_31E8B8;

  v18 = v5;

  if (v7 != -1)
  {
    swift_once();
  }

  v9 = qword_31E8A0;
  v8 = *algn_31E8A8;
  v10 = qword_31E8B0;
  (*(v1 + 104))(v4, enum case for DynamicTypeSize.accessibility3(_:), v0);
  sub_2EF0(&qword_317278, &unk_278FE0);
  v11 = (sub_2EF0(&qword_317280, &qword_2697E0) - 8);
  v12 = *(*v11 + 72);
  v13 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_267D30;
  v15 = (v14 + v13);
  v16 = v11[14];
  *v15 = v9;
  v15[1] = v8;
  v15[2] = v10;
  (*(v1 + 16))(v14 + v13 + v16, v4, v0);
  v20 = v14;

  sub_113884(&v20);

  result = (*(v1 + 8))(v4, v0);
  qword_31E6D0 = 101;
  *algn_31E6D8 = 0xE100000000000000;
  qword_31E6E0 = v19;
  unk_31E6E8 = v18;
  qword_31E6F0 = v6;
  unk_31E6F8 = v20;
  return result;
}

Swift::Int sub_1119A8()
{
  if (qword_315A00 != -1)
  {
    swift_once();
  }

  v0 = qword_31E8D0;
  v1 = *algn_31E8D8;
  v2 = qword_31E8E0;
  v4 = _swiftEmptyArrayStorage;

  result = sub_113884(&v4);
  qword_31E700 = 102;
  *algn_31E708 = 0xE100000000000000;
  qword_31E710 = v0;
  unk_31E718 = v1;
  qword_31E720 = v2;
  unk_31E728 = v4;
  return result;
}

uint64_t static ShelfGridType.f.getter@<X0>(void *a1@<X8>)
{
  if (qword_315990 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_31E708;
  v2 = qword_31E710;
  v3 = unk_31E718;
  v4 = qword_31E720;
  v5 = unk_31E728;
  *a1 = qword_31E700;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

Swift::Int sub_111B28()
{
  if (qword_315A08 != -1)
  {
    swift_once();
  }

  v0 = qword_31E8E8;
  v1 = unk_31E8F0;
  v2 = qword_31E8F8;
  v4 = _swiftEmptyArrayStorage;

  result = sub_113884(&v4);
  qword_31E730 = 7233894;
  *algn_31E738 = 0xE300000000000000;
  qword_31E740 = v0;
  unk_31E748 = v1;
  qword_31E750 = v2;
  unk_31E758 = v4;
  return result;
}

uint64_t static ShelfGridType.fan.getter@<X0>(void *a1@<X8>)
{
  if (qword_315998 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_31E738;
  v2 = qword_31E740;
  v3 = unk_31E748;
  v4 = qword_31E750;
  v5 = unk_31E758;
  *a1 = qword_31E730;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t sub_111CAC()
{
  v0 = sub_261690();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_315A10 != -1)
  {
    swift_once();
  }

  v5 = *algn_31E908;
  v6 = qword_31E910;
  v7 = qword_3159E0;
  v19 = qword_31E900;

  v18 = v5;

  if (v7 != -1)
  {
    swift_once();
  }

  v9 = qword_31E870;
  v8 = *algn_31E878;
  v10 = qword_31E880;
  (*(v1 + 104))(v4, enum case for DynamicTypeSize.accessibility3(_:), v0);
  sub_2EF0(&qword_317278, &unk_278FE0);
  v11 = (sub_2EF0(&qword_317280, &qword_2697E0) - 8);
  v12 = *(*v11 + 72);
  v13 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_267D30;
  v15 = (v14 + v13);
  v16 = v11[14];
  *v15 = v9;
  v15[1] = v8;
  v15[2] = v10;
  (*(v1 + 16))(v14 + v13 + v16, v4, v0);
  v20 = v14;

  sub_113884(&v20);

  result = (*(v1 + 8))(v4, v0);
  qword_31E760 = 104;
  *algn_31E768 = 0xE100000000000000;
  qword_31E770 = v19;
  unk_31E778 = v18;
  qword_31E780 = v6;
  unk_31E788 = v20;
  return result;
}

Swift::Int sub_111F84()
{
  if (qword_315A18 != -1)
  {
    swift_once();
  }

  v0 = qword_31E918;
  v1 = unk_31E920;
  v2 = qword_31E928;
  v4 = _swiftEmptyArrayStorage;

  result = sub_113884(&v4);
  strcpy(&qword_31E790, "stackedGrids");
  algn_31E798[5] = 0;
  *&algn_31E798[6] = -5120;
  qword_31E7A0 = v0;
  unk_31E7A8 = v1;
  qword_31E7B0 = v2;
  unk_31E7B8 = v4;
  return result;
}

uint64_t static ShelfGridType.stackedGrids.getter@<X0>(void *a1@<X8>)
{
  if (qword_3159A8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_31E798;
  v2 = qword_31E7A0;
  v3 = unk_31E7A8;
  v4 = qword_31E7B0;
  v5 = unk_31E7B8;
  *a1 = qword_31E790;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t sub_112118()
{
  if (qword_315A20 != -1)
  {
    swift_once();
  }

  v0 = qword_31E930;
  v1 = *algn_31E938;
  v2 = qword_31E940;
  sub_2EF0(&qword_317278, &unk_278FE0);
  v3 = sub_2EF0(&qword_317280, &qword_2697E0);
  v4 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v20 = *(*(v3 - 8) + 72);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_269100;
  v6 = (v5 + v4);
  v19 = *(v3 + 48);
  v7 = qword_3159D0;
  v23 = v0;

  v22 = v1;

  v21 = v2;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = *algn_31E848;
  v9 = qword_31E850;
  *v6 = qword_31E840;
  *(v6 + 1) = v8;
  *(v6 + 2) = v9;
  v10 = enum case for DynamicTypeSize.accessibility1(_:);
  v11 = sub_261690();
  v12 = *(*(v11 - 8) + 104);
  v12(&v6[v19], v10, v11);
  v13 = &v6[v20];
  v14 = *(v3 + 48);
  v15 = qword_3159E8;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = unk_31E890;
  v17 = qword_31E898;
  *v13 = qword_31E888;
  *(v13 + 1) = v16;
  *(v13 + 2) = v17;
  v12(&v13[v14], enum case for DynamicTypeSize.accessibility3(_:), v11);
  v24 = v5;

  sub_113884(&v24);

  qword_31E7C0 = 0x7472616843706F74;
  *algn_31E7C8 = 0xE900000000000073;
  qword_31E7D0 = v23;
  unk_31E7D8 = v22;
  qword_31E7E0 = v21;
  unk_31E7E8 = v24;
  return result;
}

uint64_t static ShelfGridType.topCharts.getter@<X0>(void *a1@<X8>)
{
  if (qword_3159B0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_31E7C8;
  v2 = qword_31E7D0;
  v3 = unk_31E7D8;
  v4 = qword_31E7E0;
  v5 = unk_31E7E8;
  *a1 = qword_31E7C0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

Swift::Int sub_1124C8()
{
  if (qword_315A28 != -1)
  {
    swift_once();
  }

  v0 = qword_31E948;
  v1 = unk_31E950;
  v2 = qword_31E958;
  v4 = &_swiftEmptyArrayStorage;

  result = sub_113884(&v4);
  qword_31E7F0 = 0x6C61636974726576;
  *algn_31E7F8 = 0xE800000000000000;
  qword_31E800 = v0;
  unk_31E808 = v1;
  qword_31E810 = v2;
  unk_31E818 = v4;
  return result;
}

int *sub_1125A8()
{
  result = sub_1125C8();
  off_31E820[0] = result;
  return result;
}

void *sub_1125C8()
{
  if (qword_315958 != -1)
  {
    swift_once();
  }

  v30 = qword_31E5B0;
  v31 = *algn_31E5B8;
  v32 = qword_31E5C0;
  v33 = unk_31E5C8;
  v34 = qword_31E5D0;
  v35[0] = unk_31E5D8;
  v0 = qword_315960;

  if (v0 != -1)
  {
    swift_once();
  }

  v35[1] = qword_31E5E0;
  v35[2] = *algn_31E5E8;
  v35[3] = qword_31E5F0;
  v35[4] = unk_31E5F8;
  v35[5] = qword_31E600;
  v35[6] = unk_31E608;
  v1 = qword_315968;

  if (v1 != -1)
  {
    swift_once();
  }

  v35[7] = qword_31E610;
  v35[8] = *algn_31E618;
  v35[9] = qword_31E620;
  v35[10] = unk_31E628;
  v35[11] = qword_31E630;
  v35[12] = unk_31E638;
  v2 = qword_315970;

  if (v2 != -1)
  {
    swift_once();
  }

  v35[13] = qword_31E640;
  v35[14] = *algn_31E648;
  v35[15] = qword_31E650;
  v35[16] = unk_31E658;
  v35[17] = qword_31E660;
  v35[18] = unk_31E668;
  v3 = qword_315978;

  if (v3 != -1)
  {
    swift_once();
  }

  v35[19] = qword_31E670;
  v35[20] = *algn_31E678;
  v35[21] = qword_31E680;
  v35[22] = unk_31E688;
  v35[23] = qword_31E690;
  v35[24] = unk_31E698;
  v4 = qword_315980;

  if (v4 != -1)
  {
    swift_once();
  }

  v35[25] = qword_31E6A0;
  v35[26] = *algn_31E6A8;
  v35[27] = qword_31E6B0;
  v35[28] = unk_31E6B8;
  v35[29] = qword_31E6C0;
  v35[30] = unk_31E6C8;
  v5 = qword_315988;

  if (v5 != -1)
  {
    swift_once();
  }

  v35[31] = qword_31E6D0;
  v35[32] = *algn_31E6D8;
  v35[33] = qword_31E6E0;
  v35[34] = unk_31E6E8;
  v35[35] = qword_31E6F0;
  v35[36] = unk_31E6F8;
  v6 = qword_315990;

  if (v6 != -1)
  {
    swift_once();
  }

  v35[37] = qword_31E700;
  v35[38] = *algn_31E708;
  v35[39] = qword_31E710;
  v35[40] = unk_31E718;
  v35[41] = qword_31E720;
  v35[42] = unk_31E728;
  v7 = qword_315998;

  if (v7 != -1)
  {
    swift_once();
  }

  v35[43] = qword_31E730;
  v35[44] = *algn_31E738;
  v35[45] = qword_31E740;
  v35[46] = unk_31E748;
  v35[47] = qword_31E750;
  v35[48] = unk_31E758;
  v8 = qword_3159A0;

  if (v8 != -1)
  {
    swift_once();
  }

  v35[49] = qword_31E760;
  v35[50] = *algn_31E768;
  v35[51] = qword_31E770;
  v35[52] = unk_31E778;
  v35[53] = qword_31E780;
  v35[54] = unk_31E788;
  v9 = qword_3159A8;

  if (v9 != -1)
  {
    swift_once();
  }

  v35[55] = qword_31E790;
  v35[56] = *algn_31E798;
  v35[57] = qword_31E7A0;
  v35[58] = unk_31E7A8;
  v35[59] = qword_31E7B0;
  v35[60] = unk_31E7B8;
  v10 = qword_3159B0;

  if (v10 != -1)
  {
    swift_once();
  }

  v35[61] = qword_31E7C0;
  v35[62] = *algn_31E7C8;
  v35[63] = qword_31E7D0;
  v35[64] = unk_31E7D8;
  v35[65] = qword_31E7E0;
  v35[66] = unk_31E7E8;
  v11 = qword_3159B8;

  if (v11 != -1)
  {
    swift_once();
  }

  v35[67] = qword_31E7F0;
  v35[68] = *algn_31E7F8;
  v35[69] = qword_31E800;
  v35[70] = unk_31E808;
  v35[71] = qword_31E810;
  v35[72] = unk_31E818;
  v28 = _swiftEmptyArrayStorage;

  sub_2DA04(0, 13, 0);
  v12 = 0;
  v13 = _swiftEmptyArrayStorage;
  do
  {
    v15 = *&v29[v12 * 8 + 32];
    v14 = *(&v31 + v12 * 8);
    v16 = *(&v32 + v12 * 8);
    v17 = *(&v33 + v12 * 8);
    v18 = v35[v12 - 1];
    v19 = v35[v12];
    v28 = v13;
    v21 = v13[2];
    v20 = v13[3];
    v26 = v21 + 1;
    swift_bridgeObjectRetain_n();

    if (v21 >= v20 >> 1)
    {
      sub_2DA04((v20 > 1), v26, 1);
      v13 = v28;
    }

    v13[2] = v26;
    v22 = &v13[8 * v21];
    v22[4] = v15;
    v22[5] = v14;
    v22[6] = v15;
    v22[7] = v14;
    v22[8] = v16;
    v22[9] = v17;
    v12 += 6;
    v22[10] = v18;
    v22[11] = v19;
  }

  while (v12 != 78);
  swift_arrayDestroy();
  if (v13[2])
  {
    sub_2EF0(&qword_31E960, &qword_278FD8);
    v23 = sub_264D10();
  }

  else
  {
    v23 = &_swiftEmptyDictionarySingleton;
  }

  v27 = v23;

  sub_115434(v24, 1, &v27);

  return v27;
}

uint64_t ShelfGridType.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_30CC(a1, &v24);
  v5 = sub_2644F0();
  if (!v2)
  {
    v7 = v5;
    v8 = v6;
    if (qword_3159C0 != -1)
    {
      swift_once();
    }

    v9 = off_31E820[0];
    if (*(off_31E820[0] + &dword_10) && (v10 = sub_D410(v7, v8), (v11 & 1) != 0))
    {
      v12 = v10;

      v13 = (*&stru_20.segname[v9 + 16] + 48 * v12);
      v14 = v13[1];
      v16 = v13[2];
      v15 = v13[3];
      v17 = v13[4];
      v18 = v13[5];
      *a2 = *v13;
      a2[1] = v14;
      a2[2] = v16;
      a2[3] = v15;
      a2[4] = v17;
      a2[5] = v18;
    }

    else
    {
      v19 = sub_264C10();
      swift_allocError();
      v21 = v20;
      v22 = a1[4];
      sub_2E18(a1, a1[3]);
      sub_2650E0();
      v24 = 0;
      v25 = 0xE000000000000000;
      sub_264BC0(29);

      v24 = 0xD00000000000001BLL;
      v25 = 0x8000000000292670;
      v26._countAndFlagsBits = v7;
      v26._object = v8;
      sub_264530(v26);

      sub_264BF0();
      (*(*(v19 - 8) + 104))(v21, enum case for DecodingError.dataCorrupted(_:), v19);
      swift_willThrow();
    }
  }

  return sub_3080(a1);
}

Swift::Int sub_112FB8()
{
  v0 = sub_E4B8(&off_2FF980);
  v1 = sub_E598(&_swiftEmptyArrayStorage);
  v3 = &off_2FF478;
  result = sub_113728(&v3);
  qword_31E828 = v0;
  unk_31E830 = v3;
  qword_31E838 = v1;
  return result;
}

Swift::Int sub_113048()
{
  v0 = sub_E4B8(&off_2FFA80);
  v1 = sub_E598(&off_2FFB00);
  v3 = &off_2FF478;
  result = sub_113728(&v3);
  qword_31E840 = v0;
  *algn_31E848 = v3;
  qword_31E850 = v1;
  return result;
}

Swift::Int sub_1130D8()
{
  v0 = sub_E4B8(&off_2FFB30);
  v1 = sub_E598(&_swiftEmptyArrayStorage);
  v3 = &off_2FF478;
  result = sub_113728(&v3);
  qword_31E858 = v0;
  unk_31E860 = v3;
  qword_31E868 = v1;
  return result;
}

Swift::Int sub_113168()
{
  v0 = sub_E4B8(&off_2FFBB0);
  v1 = sub_E598(&_swiftEmptyArrayStorage);
  v3 = &off_2FF478;
  result = sub_113728(&v3);
  qword_31E870 = v0;
  *algn_31E878 = v3;
  qword_31E880 = v1;
  return result;
}

Swift::Int sub_1131F8()
{
  v0 = sub_E4B8(&off_2FFA00);
  v1 = sub_E598(&_swiftEmptyArrayStorage);
  v3 = &off_2FF478;
  result = sub_113728(&v3);
  qword_31E888 = v0;
  unk_31E890 = v3;
  qword_31E898 = v1;
  return result;
}

Swift::Int sub_113288()
{
  v0 = sub_E4B8(&off_2FFC30);
  v1 = sub_E598(&_swiftEmptyArrayStorage);
  v3 = &off_2FF478;
  result = sub_113728(&v3);
  qword_31E8A0 = v0;
  *algn_31E8A8 = v3;
  qword_31E8B0 = v1;
  return result;
}

Swift::Int sub_113318()
{
  v0 = sub_E4B8(&off_2FFD40);
  v1 = sub_E598(&off_2FFDD0);
  v3 = &off_2FFCB0;
  result = sub_113728(&v3);
  qword_31E8B8 = v0;
  unk_31E8C0 = v3;
  qword_31E8C8 = v1;
  return result;
}

Swift::Int sub_1133A8()
{
  v0 = sub_E4B8(&off_2FFE10);
  v1 = sub_E598(&off_2FFE90);
  v3 = &off_2FF478;
  result = sub_113728(&v3);
  qword_31E8D0 = v0;
  *algn_31E8D8 = v3;
  qword_31E8E0 = v1;
  return result;
}

Swift::Int sub_113438()
{
  v0 = sub_E4B8(&off_2FFF50);
  v1 = sub_E598(_swiftEmptyArrayStorage);
  v3 = &off_2FFF10;
  result = sub_113728(&v3);
  qword_31E8E8 = v0;
  unk_31E8F0 = v3;
  qword_31E8F8 = v1;
  return result;
}

Swift::Int sub_1134C8()
{
  v0 = sub_E4B8(&off_2FFF90);
  v1 = sub_E598(&_swiftEmptyArrayStorage);
  v3 = &off_2FF478;
  result = sub_113728(&v3);
  qword_31E900 = v0;
  *algn_31E908 = v3;
  qword_31E910 = v1;
  return result;
}

Swift::Int sub_113558()
{
  v0 = sub_E4B8(&off_300080);
  v1 = sub_E598(_swiftEmptyArrayStorage);
  v3 = &off_300010;
  result = sub_113728(&v3);
  qword_31E918 = v0;
  unk_31E920 = v3;
  qword_31E928 = v1;
  return result;
}

Swift::Int sub_1135E8()
{
  v0 = sub_E4B8(&off_3000F0);
  v1 = sub_E598(_swiftEmptyArrayStorage);
  v3 = &off_2FF478;
  result = sub_113728(&v3);
  qword_31E930 = v0;
  *algn_31E938 = v3;
  qword_31E940 = v1;
  return result;
}

Swift::Int sub_113678()
{
  v0 = sub_E4B8(&_swiftEmptyArrayStorage);
  v1 = sub_E598(&_swiftEmptyArrayStorage);
  v3 = &off_2FF478;
  result = sub_113728(&v3);
  qword_31E948 = v0;
  unk_31E950 = v3;
  qword_31E958 = v1;
  return result;
}

Swift::Int sub_113728(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1158A0(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_264EA0(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[16 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 1))
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 16) = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 16;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_2EF0(&qword_31E970, &unk_278FF0);
      v7 = sub_2646C0();
      v7[2] = v6;
    }

    else
    {
      v7 = &_swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_113CCC(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

Swift::Int sub_113884(void **a1)
{
  v2 = *(sub_2EF0(&qword_317280, &qword_2697E0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1158B4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_113938(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_113938(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_264EA0(v2);
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
        sub_2EF0(&qword_317280, &qword_2697E0);
        v6 = sub_2646C0();
        v6[2] = v5;
      }

      v7 = *(sub_2EF0(&qword_317280, &qword_2697E0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_114260(v8, v9, a1, v4);
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
    return sub_113A7C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_113A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = sub_2EF0(&qword_317280, &qword_2697E0);
  v8 = *(*(v38 - 8) + 64);
  v9 = __chkstk_darwin(v38);
  v37 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v28 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v28 - v16;
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v35 = -v19;
    v36 = v18;
    v21 = a1 - a3;
    v29 = v19;
    v22 = v18 + v19 * a3;
LABEL_5:
    v33 = v20;
    v34 = a3;
    v31 = v22;
    v32 = v21;
    v23 = v38;
    while (1)
    {
      sub_8198(v22, v17, &qword_317280, &qword_2697E0);
      sub_8198(v20, v13, &qword_317280, &qword_2697E0);
      v24 = *(v23 + 48);
      v25 = sub_261670();
      sub_8E80(v13, &qword_317280, &qword_2697E0);
      result = sub_8E80(v17, &qword_317280, &qword_2697E0);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v34 + 1;
        v20 = v33 + v29;
        v21 = v32 - 1;
        v22 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v26 = v37;
      sub_6E174(v22, v37);
      v23 = v38;
      swift_arrayInitWithTakeFrontToBack();
      result = sub_6E174(v26, v20);
      v20 += v35;
      v22 += v35;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_113CCC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_115330(v8);
      v8 = result;
    }

    v81 = v8 + 2;
    v82 = v8[2];
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = &v8[2 * v82];
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_114B88((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = v17 >= v16;
        ++v14;
        v16 = v17;
        if ((((v10 < v13) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 16 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v26 + v11);
            v23 = v26 + v20;
            v24 = *v22;
            v25 = *(v22 + 1);
            *v22 = *(v23 - 16);
            *(v23 - 16) = v24;
            *(v23 - 8) = v25;
          }

          ++v21;
          --v19;
          v20 -= 16;
          v11 += 16;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_E8D1C(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v35 = v8[3];
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_E8D1C((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v36;
    v37 = (v8 + 4);
    v38 = &v8[2 * v5 + 4];
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = v8[4];
          v40 = v8[5];
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = &v8[2 * v36];
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = &v37[16 * v5];
          v63 = *v61;
          v62 = *(v61 + 1);
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v65 = &v8[2 * v36];
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = &v37[16 * v5];
        v70 = *v68;
        v69 = *(v68 + 1);
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v36)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = &v37[16 * v5 - 16];
        v77 = *v76;
        v78 = &v37[16 * v5];
        v79 = *(v78 + 1);
        sub_114B88((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v76 = v77;
        *(v76 + 1) = v79;
        v80 = v8[2];
        if (v5 >= v80)
        {
          goto LABEL_101;
        }

        v36 = v80 - 1;
        result = memmove(&v37[16 * v5], v78 + 16, 16 * (v80 - 1 - v5));
        v8[2] = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = &v37[16 * v36];
      v44 = *(v43 - 8);
      v45 = *(v43 - 7);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 6);
      v47 = *(v43 - 5);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = &v8[2 * v36];
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = &v37[16 * v5];
        v74 = *v72;
        v73 = *(v72 + 1);
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7;
  v29 = v9 - v7;
LABEL_30:
  v30 = *(v27 + 16 * v7 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (v30 >= *(v32 - 1))
    {
LABEL_29:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 1);
    *(v32 - 1) = v30;
    *(v32 - 16) = v33;
    v32 -= 2;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_114260(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v108 = a1;
  v6 = sub_2EF0(&qword_317280, &qword_2697E0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v112 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v120 = &v104 - v12;
  v13 = __chkstk_darwin(v11);
  v122 = &v104 - v14;
  result = __chkstk_darwin(v13);
  v121 = &v104 - v16;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = &_swiftEmptyArrayStorage;
LABEL_99:
    a4 = *v108;
    if (!*v108)
    {
      goto LABEL_139;
    }

    v6 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v109;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = v6;
LABEL_102:
      v124 = result;
      v6 = *(result + 16);
      if (v6 >= 2)
      {
        v100 = v7;
        while (*a3)
        {
          v101 = *(result + 16 * v6);
          v102 = result;
          v7 = *(result + 16 * (v6 - 1) + 40);
          sub_114D8C(*a3 + *(v100 + 72) * v101, *a3 + *(v100 + 72) * *(result + 16 * (v6 - 1) + 32), *a3 + *(v100 + 72) * v7, a4);
          if (v33)
          {
          }

          if (v7 < v101)
          {
            goto LABEL_126;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v102 = sub_115330(v102);
          }

          if (v6 - 2 >= *(v102 + 2))
          {
            goto LABEL_127;
          }

          v103 = &v102[16 * v6];
          *v103 = v101;
          *(v103 + 1) = v7;
          v124 = v102;
          sub_1152A4(v6 - 1);
          result = v124;
          v6 = *(v124 + 16);
          if (v6 <= 1)
          {
          }
        }

        goto LABEL_137;
      }
    }

LABEL_133:
    result = sub_115330(v6);
    goto LABEL_102;
  }

  v18 = 0;
  v19 = &_swiftEmptyArrayStorage;
  v107 = a4;
  v123 = v6;
  v110 = a3;
  v105 = v7;
  while (1)
  {
    v20 = v18 + 1;
    v113 = v19;
    if (v18 + 1 >= v17)
    {
      v32 = v18 + 1;
      v33 = v109;
    }

    else
    {
      v21 = v18;
      v6 = *a3;
      v22 = *(v7 + 72);
      v23 = *a3 + v22 * v20;
      v24 = v121;
      sub_8198(v23, v121, &qword_317280, &qword_2697E0);
      v25 = v122;
      sub_8198(v6 + v22 * v21, v122, &qword_317280, &qword_2697E0);
      v26 = *(v123 + 48);
      LODWORD(v118) = sub_261670();
      sub_8E80(v25, &qword_317280, &qword_2697E0);
      result = sub_8E80(v24, &qword_317280, &qword_2697E0);
      v106 = v21;
      v27 = v21 + 2;
      v119 = v22;
      v28 = v6 + v22 * (v21 + 2);
      while (v17 != v27)
      {
        v29 = v121;
        sub_8198(v28, v121, &qword_317280, &qword_2697E0);
        v30 = v122;
        sub_8198(v23, v122, &qword_317280, &qword_2697E0);
        v31 = *(v123 + 48);
        v6 = sub_261670() & 1;
        sub_8E80(v30, &qword_317280, &qword_2697E0);
        result = sub_8E80(v29, &qword_317280, &qword_2697E0);
        ++v27;
        v28 += v119;
        v23 += v119;
        if ((v118 & 1) != v6)
        {
          v32 = v27 - 1;
          goto LABEL_12;
        }
      }

      v32 = v17;
LABEL_12:
      v18 = v106;
      a4 = v107;
      v33 = v109;
      a3 = v110;
      v7 = v105;
      if ((v118 & 1) == 0)
      {
        goto LABEL_25;
      }

      if (v32 < v106)
      {
        goto LABEL_130;
      }

      if (v106 < v32)
      {
        v34 = v119 * (v32 - 1);
        v35 = v32 * v119;
        v118 = v32;
        v36 = v32;
        v37 = v106;
        v38 = v106 * v119;
        v6 = v123;
        do
        {
          if (v37 != --v36)
          {
            v39 = *v110;
            if (!*v110)
            {
              goto LABEL_136;
            }

            sub_6E174(v39 + v38, v112);
            if (v38 < v34 || v39 + v38 >= (v39 + v35))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v38 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_6E174(v112, v39 + v34);
            v6 = v123;
          }

          ++v37;
          v34 -= v119;
          v35 -= v119;
          v38 += v119;
        }

        while (v37 < v36);
        v33 = v109;
        a3 = v110;
        v7 = v105;
        v18 = v106;
        a4 = v107;
        v32 = v118;
      }

      else
      {
LABEL_25:
        v6 = v123;
      }
    }

    v40 = a3[1];
    if (v32 >= v40)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v32, v18))
    {
      goto LABEL_129;
    }

    if (v32 - v18 >= a4)
    {
LABEL_35:
      v41 = v32;
      if (v32 < v18)
      {
        goto LABEL_128;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v18, a4))
    {
      goto LABEL_131;
    }

    if ((v18 + a4) < v40)
    {
      v40 = v18 + a4;
    }

    if (v40 < v18)
    {
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    if (v32 == v40)
    {
      goto LABEL_35;
    }

    v114 = v40;
    v109 = v33;
    v87 = *a3;
    v88 = *(v7 + 72);
    v89 = *a3 + v88 * (v32 - 1);
    v90 = -v88;
    v106 = v18;
    v91 = v18 - v32;
    v111 = v88;
    v119 = v87;
    a4 = v87 + v32 * v88;
LABEL_89:
    v117 = v89;
    v118 = v32;
    v115 = a4;
    v116 = v91;
    v92 = v89;
LABEL_90:
    v93 = v121;
    sub_8198(a4, v121, &qword_317280, &qword_2697E0);
    v94 = v122;
    sub_8198(v92, v122, &qword_317280, &qword_2697E0);
    v95 = *(v6 + 48);
    v96 = sub_261670();
    sub_8E80(v94, &qword_317280, &qword_2697E0);
    result = sub_8E80(v93, &qword_317280, &qword_2697E0);
    if (v96)
    {
      break;
    }

    v6 = v123;
LABEL_88:
    v32 = v118 + 1;
    v89 = v117 + v111;
    v91 = v116 - 1;
    a4 = v115 + v111;
    if (v118 + 1 != v114)
    {
      goto LABEL_89;
    }

    v33 = v109;
    a3 = v110;
    v7 = v105;
    v18 = v106;
    v41 = v114;
    if (v114 < v106)
    {
      goto LABEL_128;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v19 = v113;
    }

    else
    {
      result = sub_E8D1C(0, *(v113 + 2) + 1, 1, v113);
      v19 = result;
    }

    v43 = *(v19 + 2);
    v42 = *(v19 + 3);
    a4 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      result = sub_E8D1C((v42 > 1), v43 + 1, 1, v19);
      v19 = result;
    }

    *(v19 + 2) = a4;
    v44 = &v19[16 * v43];
    *(v44 + 4) = v18;
    *(v44 + 5) = v41;
    v114 = v41;
    if (!*v108)
    {
      goto LABEL_138;
    }

    if (v43)
    {
      v45 = *v108;
      v6 = v123;
      while (1)
      {
        v46 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v47 = *(v19 + 4);
          v48 = *(v19 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_56:
          if (v50)
          {
            goto LABEL_117;
          }

          v63 = &v19[16 * a4];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_120;
          }

          v69 = &v19[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_124;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = a4 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v73 = &v19[16 * a4];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_70:
        if (v68)
        {
          goto LABEL_119;
        }

        v76 = &v19[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_122;
        }

        if (v79 < v67)
        {
          goto LABEL_4;
        }

LABEL_77:
        v6 = v46 - 1;
        if (v46 - 1 >= a4)
        {
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
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (!*a3)
        {
          goto LABEL_135;
        }

        v84 = v19;
        a4 = *&v19[16 * v6 + 32];
        v85 = *&v19[16 * v46 + 40];
        sub_114D8C(*a3 + *(v7 + 72) * a4, *a3 + *(v7 + 72) * *&v19[16 * v46 + 32], *a3 + *(v7 + 72) * v85, v45);
        if (v33)
        {
        }

        if (v85 < a4)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = sub_115330(v84);
        }

        if (v6 >= *(v84 + 2))
        {
          goto LABEL_114;
        }

        v86 = &v84[16 * v6];
        *(v86 + 4) = a4;
        *(v86 + 5) = v85;
        v124 = v84;
        result = sub_1152A4(v46);
        v19 = v124;
        a4 = *(v124 + 16);
        v6 = v123;
        if (a4 <= 1)
        {
          goto LABEL_4;
        }
      }

      v51 = &v19[16 * a4 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_115;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_116;
      }

      v58 = &v19[16 * a4];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_118;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_121;
      }

      if (v62 >= v54)
      {
        v80 = &v19[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_125;
        }

        if (v49 < v83)
        {
          v46 = a4 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    v6 = v123;
LABEL_4:
    v109 = v33;
    v17 = a3[1];
    v18 = v114;
    a4 = v107;
    if (v114 >= v17)
    {
      goto LABEL_99;
    }
  }

  if (v119)
  {
    v97 = v120;
    sub_6E174(a4, v120);
    v6 = v123;
    swift_arrayInitWithTakeFrontToBack();
    sub_6E174(v97, v92);
    v92 += v90;
    a4 += v90;
    if (__CFADD__(v91++, 1))
    {
      goto LABEL_88;
    }

    goto LABEL_90;
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
  return result;
}

uint64_t sub_114B88(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v6[1] < v4[1])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 2;
    do
    {
      v17 = v5 + 2;
      if (*(v14 - 1) < *(v6 - 1))
      {
        v19 = v6 - 2;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 2, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 2;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 -= 2;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v20 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

uint64_t sub_114D8C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = a3;
  v47 = sub_2EF0(&qword_317280, &qword_2697E0);
  v7 = *(*(v47 - 8) + 64);
  v8 = __chkstk_darwin(v47);
  v46 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v12 = &v40 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = v48 - a2;
  if (v48 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v16 = (a2 - a1) / v14;
  v51 = a1;
  v50 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v18 < 1)
    {
      v27 = a4 + v18;
    }

    else
    {
      v25 = -v14;
      v26 = a4 + v18;
      v27 = a4 + v18;
      v43 = a4;
      v44 = -v14;
      v42 = a1;
      do
      {
        v40 = v27;
        v28 = a2;
        v29 = a2 + v25;
        v45 = v28;
        while (1)
        {
          v31 = v48;
          if (v28 <= a1)
          {
            v51 = v28;
            v49 = v40;
            goto LABEL_60;
          }

          v41 = v27;
          v48 += v25;
          v32 = v26 + v25;
          sub_8198(v32, v12, &qword_317280, &qword_2697E0);
          v33 = v29;
          v34 = v29;
          v35 = v12;
          v36 = v46;
          sub_8198(v34, v46, &qword_317280, &qword_2697E0);
          v37 = *(v47 + 48);
          v38 = sub_261670();
          v39 = v36;
          v12 = v35;
          sub_8E80(v39, &qword_317280, &qword_2697E0);
          sub_8E80(v35, &qword_317280, &qword_2697E0);
          if (v38)
          {
            break;
          }

          v27 = v32;
          if (v31 < v26 || v48 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v33;
            a1 = v42;
          }

          else
          {
            v29 = v33;
            a1 = v42;
            if (v31 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v32;
          v30 = v32 > v43;
          v25 = v44;
          v28 = v45;
          if (!v30)
          {
            a2 = v45;
            goto LABEL_59;
          }
        }

        if (v31 < v45 || v48 >= v45)
        {
          a2 = v33;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v41;
          a1 = v42;
          v25 = v44;
        }

        else
        {
          v27 = v41;
          a1 = v42;
          a2 = v33;
          v25 = v44;
          if (v31 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v26 > v43);
    }

LABEL_59:
    v51 = a2;
    v49 = v27;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v45 = a4 + v17;
    v49 = a4 + v17;
    if (v17 >= 1 && a2 < v48)
    {
      v44 = v14;
      do
      {
        sub_8198(a2, v12, &qword_317280, &qword_2697E0);
        v20 = v46;
        sub_8198(a4, v46, &qword_317280, &qword_2697E0);
        v21 = *(v47 + 48);
        v22 = sub_261670();
        sub_8E80(v20, &qword_317280, &qword_2697E0);
        sub_8E80(v12, &qword_317280, &qword_2697E0);
        if (v22)
        {
          v23 = a2 + v14;
          if (a1 < a2 || a1 >= v23)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v23;
        }

        else
        {
          v24 = a4 + v14;
          if (a1 < a4 || a1 >= v24)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v50 = v24;
          a4 = v24;
        }

        v14 = v44;
        a1 += v44;
        v51 = a1;
      }

      while (a4 < v45 && a2 < v48);
    }
  }

LABEL_60:
  sub_115344(&v51, &v50, &v49);
  return 1;
}

uint64_t sub_1152A4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_115330(v3);
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
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_115344(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_2EF0(&qword_317280, &qword_2697E0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_115434(uint64_t a1, char a2, void *a3)
{
  v47 = *(a1 + 16);
  if (!v47)
  {
  }

  v5 = *(a1 + 80);
  v60 = *(a1 + 64);
  v61 = v5;
  v6 = *(a1 + 48);
  v58 = *(a1 + 32);
  v59 = v6;
  v7 = *(&v61 + 1);
  v48 = v61;
  v50 = *(&v60 + 1);
  v8 = v6;
  v52 = v60;
  v54 = *(&v6 + 1);
  v9 = v58;
  sub_8198(&v58, v57, &qword_317270, &unk_2697D0);
  if (!*(&v9 + 1))
  {
  }

  v58 = v9;
  v10 = *a3;
  v12 = sub_D410(v9, *(&v9 + 1));
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v16 = v11;
  if (v10[3] >= v15)
  {
    if (a2)
    {
      if ((v11 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_14F1A0();
      if ((v16 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_14DF7C(v15, a2 & 1);
  v17 = *a3;
  v18 = sub_D410(v9, *(&v9 + 1));
  if ((v16 & 1) == (v19 & 1))
  {
    v12 = v18;
    if ((v16 & 1) == 0)
    {
LABEL_13:
      v22 = *a3;
      *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
      *(v22[6] + 16 * v12) = v9;
      v23 = (v22[7] + 48 * v12);
      *v23 = v8;
      v23[1] = v54;
      v23[2] = v52;
      v23[3] = v50;
      v23[4] = v48;
      v23[5] = v7;
      v24 = v22[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v22[2] = v26;
      if (v47 != 1)
      {
        v27 = (a1 + 96);
        v28 = 1;
        while (v28 < *(a1 + 16))
        {
          v29 = v27[3];
          v60 = v27[2];
          v61 = v29;
          v30 = v27[1];
          v58 = *v27;
          v59 = v30;
          v31 = *(&v61 + 1);
          v49 = v61;
          v51 = *(&v60 + 1);
          v32 = v30;
          v53 = v60;
          v55 = *(&v30 + 1);
          v33 = v58;
          sub_8198(&v58, v57, &qword_317270, &unk_2697D0);
          if (!*(&v33 + 1))
          {
          }

          v58 = v33;
          v34 = *a3;
          v35 = sub_D410(v33, *(&v33 + 1));
          v37 = v34[2];
          v38 = (v36 & 1) == 0;
          v25 = __OFADD__(v37, v38);
          v39 = v37 + v38;
          if (v25)
          {
            goto LABEL_26;
          }

          v40 = v36;
          if (v34[3] < v39)
          {
            sub_14DF7C(v39, 1);
            v41 = *a3;
            v35 = sub_D410(v33, *(&v33 + 1));
            if ((v40 & 1) != (v42 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v40)
          {
            goto LABEL_10;
          }

          v43 = *a3;
          *(*a3 + 8 * (v35 >> 6) + 64) |= 1 << v35;
          *(v43[6] + 16 * v35) = v33;
          v44 = (v43[7] + 48 * v35);
          *v44 = v32;
          v44[1] = v55;
          v44[2] = v53;
          v44[3] = v51;
          v44[4] = v49;
          v44[5] = v31;
          v45 = v43[2];
          v25 = __OFADD__(v45, 1);
          v46 = v45 + 1;
          if (v25)
          {
            goto LABEL_27;
          }

          ++v28;
          v43[2] = v46;
          v27 += 4;
          if (v47 == v28)
          {
          }
        }

        __break(1u);
        goto LABEL_26;
      }
    }

LABEL_10:
    v20 = swift_allocError();
    swift_willThrow();
    v62 = v20;
    swift_errorRetain();
    sub_2EF0(&qword_31E968, &qword_27B490);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_264FB0();
  __break(1u);
LABEL_29:
  v57[0] = 0;
  v57[1] = 0xE000000000000000;
  sub_264BC0(30);
  v63._object = 0x80000000002926D0;
  v63._countAndFlagsBits = 0xD00000000000001BLL;
  sub_264530(v63);
  sub_264CC0();
  v64._countAndFlagsBits = 39;
  v64._object = 0xE100000000000000;
  sub_264530(v64);
  result = sub_264CD0();
  __break(1u);
  return result;
}

unint64_t sub_1158C8()
{
  result = qword_317538;
  if (!qword_317538)
  {
    sub_261690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317538);
  }

  return result;
}

uint64_t QuickActionBuyButtonView.init(assetInfo:stretchWidth:isEnabled:localizerForAnalytics:)@<X0>(uint64_t *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a4;
  v46 = a2;
  v47 = a3;
  v45 = a1;
  v48 = a5;
  v7 = sub_262730();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for ButtonViewModel(0);
  v13 = (v12 - 8);
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v41[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for QuickActionBuyButtonViewModel(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = (v17 - 8);
  __chkstk_darwin(v17 - 8);
  v21 = &v41[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_30CC(a1, v52);
  sub_8198(a4, v50, &qword_31D240, &qword_279000);
  v22 = &v21[v19[9]];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v21[v19[10]];
  KeyPath = swift_getKeyPath();
  v53 = 0;
  *v23 = KeyPath;
  v23[66] = 0;
  v25 = v19[11];
  *&v21[v25] = swift_getKeyPath();
  sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v26 = v19[12];
  v44 = v19;
  v27 = &v21[v26];
  type metadata accessor for ProfileRestrictions();
  sub_11B8B0(&qword_326DC0, type metadata accessor for ProfileRestrictions);
  *v27 = sub_261900();
  v27[1] = v28;
  sub_30CC(v52, &v21[v19[7]]);
  v42 = _UISolariumEnabled() ^ 1;
  v29 = v13[13];
  sub_260BC0();
  type metadata accessor for ButtonViewModel.Content(0);
  swift_storeEnumTagMultiPayload();
  v30 = &v16[v13[15]];
  type metadata accessor for ButtonViewModel.ActionKind(0);
  *v30 = 0u;
  *(v30 + 1) = 0u;
  *(v30 + 4) = 0;
  swift_storeEnumTagMultiPayload();
  v49 = 0x403C000000000000;
  v31 = enum case for Font.TextStyle.subheadline(_:);
  v32 = *(v8 + 104);
  v32(v11, enum case for Font.TextStyle.subheadline(_:), v7);
  sub_40130();
  sub_2612E0();
  v33 = v13[7];
  v49 = 0x4008000000000000;
  v32(v11, v31, v7);
  sub_2612E0();
  sub_8E80(v43, &qword_31D240, &qword_279000);
  sub_3080(v45);
  sub_3080(v52);
  v34 = v13[8];
  *&v16[v34] = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v35 = v13[16];
  v36 = sub_260BD0();
  (*(*(v36 - 8) + 56))(&v16[v35], 1, 1, v36);
  v16[v13[9]] = v46;
  v16[v13[10]] = v42;
  v16[v13[11]] = 0;
  v37 = &v16[v13[12]];
  *v37 = 2;
  v37[1] = 0;
  v37[2] = 0;
  v37[3] = 0;
  v16[v13[14]] = v47;
  sub_1161F4(v16, v21, type metadata accessor for ButtonViewModel);
  v38 = &v21[v44[8]];
  v39 = v50[1];
  *v38 = v50[0];
  *(v38 + 1) = v39;
  *(v38 + 4) = v51;
  return sub_1161F4(v21, v48, type metadata accessor for QuickActionBuyButtonViewModel);
}

__n128 QuickActionBuyButtonViewModel.init(assetInfo:stretchWidth:isEnabled:localizerForAnalytics:)@<Q0>(uint64_t *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v42 = a1;
  v7 = sub_262730();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ButtonViewModel(0);
  v13 = (v12 - 8);
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for QuickActionBuyButtonViewModel(0);
  v18 = a5;
  v19 = (a5 + *(v17 + 28));
  *v19 = 0;
  v19[1] = 0;
  v20 = v17;
  v21 = a5 + *(v17 + 32);
  v22 = v18;
  KeyPath = swift_getKeyPath();
  v50 = 0;
  *v21 = KeyPath;
  *(v21 + 66) = 0;
  v24 = v20[9];
  *(v22 + v24) = swift_getKeyPath();
  sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v25 = v20[10];
  v44 = v22;
  v45 = v20;
  v26 = (v22 + v25);
  type metadata accessor for ProfileRestrictions();
  sub_11B8B0(&qword_326DC0, type metadata accessor for ProfileRestrictions);
  *v26 = sub_261900();
  v26[1] = v27;
  sub_30CC(a1, v22 + v20[5]);
  v43 = _UISolariumEnabled() ^ 1;
  v28 = v13[13];
  sub_260BC0();
  type metadata accessor for ButtonViewModel.Content(0);
  swift_storeEnumTagMultiPayload();
  v29 = &v16[v13[15]];
  type metadata accessor for ButtonViewModel.ActionKind(0);
  *v29 = 0u;
  *(v29 + 1) = 0u;
  *(v29 + 4) = 0;
  swift_storeEnumTagMultiPayload();
  v49 = 0x403C000000000000;
  v30 = enum case for Font.TextStyle.subheadline(_:);
  v31 = *(v8 + 104);
  v31(v11, enum case for Font.TextStyle.subheadline(_:), v7);
  sub_40130();
  sub_2612E0();
  v32 = v13[7];
  v49 = 0x4008000000000000;
  v31(v11, v30, v7);
  sub_2612E0();
  sub_3080(v42);
  v33 = v13[8];
  *&v16[v33] = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v34 = v13[16];
  v35 = sub_260BD0();
  (*(*(v35 - 8) + 56))(&v16[v34], 1, 1, v35);
  v16[v13[9]] = v46;
  v16[v13[10]] = v43;
  v16[v13[11]] = 0;
  v36 = &v16[v13[12]];
  *v36 = 2;
  *(v36 + 1) = 0;
  *(v36 + 2) = 0;
  *(v36 + 3) = 0;
  v16[v13[14]] = v47;
  v37 = v44;
  sub_1161F4(v16, v44, type metadata accessor for ButtonViewModel);
  v38 = v37 + v45[6];
  v39 = v48;
  result = *v48;
  v41 = *(v48 + 16);
  *v38 = *v48;
  *(v38 + 16) = v41;
  *(v38 + 32) = *(v39 + 32);
  return result;
}

uint64_t sub_1161F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t QuickActionBuyButtonView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v2 = sub_263F70();
  v86 = *(v2 - 8);
  v87 = v2;
  v3 = *(v86 + 64);
  __chkstk_darwin(v2);
  v84 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_263DD0();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v78 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2601E0();
  v75 = *(v8 - 8);
  v76 = v8;
  v9 = *(v75 + 64);
  __chkstk_darwin(v8);
  v74 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_263E10();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v77 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_261C90();
  v80 = *(v14 - 8);
  v81 = v14;
  v15 = *(v80 + 64);
  __chkstk_darwin(v14);
  v79 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2EF0(&qword_315D48, &qword_266E40);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v83 = &v71 - v19;
  v20 = sub_262730();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_2EF0(&qword_31E978, &qword_279088);
  v25 = *(*(v88 - 8) + 64);
  __chkstk_darwin(v88);
  v27 = &v71 - v26;
  v28 = type metadata accessor for ButtonView();
  sub_11BFAC(v1, &v27[v28[7]], type metadata accessor for ButtonViewModel);
  *&v100 = 0x4020000000000000;
  v29 = enum case for Font.TextStyle.subheadline(_:);
  v30 = *(v21 + 104);
  v30(v24, enum case for Font.TextStyle.subheadline(_:), v20);
  sub_40130();
  sub_2612E0();
  v31 = v28[5];
  *&v100 = 0x3FF8000000000000;
  v30(v24, v29, v20);
  v32 = v82;
  sub_2612E0();
  v33 = v28[6];
  v34 = v88;
  *&v27[v33] = swift_getKeyPath();
  sub_2EF0(&qword_319B00, &unk_26EA40);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v36 = &v27[*(v34 + 36)];
  *v36 = KeyPath;
  v36[8] = 1;
  v37 = type metadata accessor for QuickActionBuyButtonViewModel(0);
  v38 = v32 + v37[8];
  *&v113[15] = *(v38 + 63);
  v39 = *(v38 + 48);
  v112[2] = *(v38 + 32);
  *v113 = v39;
  v40 = *(v38 + 16);
  v112[0] = *v38;
  v112[1] = v40;
  if (v113[18])
  {
    v41 = *(v38 + 48);
    v97 = *(v38 + 32);
    v98 = v41;
    v99 = *(v38 + 64);
    v42 = *(v38 + 16);
    v95 = *v38;
    v96 = v42;
    v102 = v97;
    *v103 = v41;
    *&v103[15] = *(v38 + 63);
    v100 = v95;
    v101 = v42;
    sub_8198(&v100, &v90, &qword_317F48, &qword_26A9A0);
  }

  else
  {

    sub_264900();
    v43 = sub_2624B0();
    sub_260D10();

    v44 = v79;
    sub_261C80();
    swift_getAtKeyPath();
    sub_8E80(v112, &qword_317F40, &qword_26E9D0);
    (*(v80 + 8))(v44, v81);
  }

  v45 = v37[5];
  v94 = v99;
  v92 = v97;
  v93 = v98;
  v90 = v95;
  v91 = v96;
  v46 = v83;
  if (*(&v95 + 1))
  {
    if (v91 == 5)
    {
      v81 = v27;
      v47 = (v32 + v45);
      v48 = (v32 + v37[7]);
      v50 = *v48;
      v49 = v48[1];
      v73 = v50;
      v79 = v49;
      v51 = 0xE90000000000006BLL;
      v52 = 0x6F6F626F69647561;
      v53 = v47[4];
      sub_2E18(v47, v47[3]);
      v54 = sub_2609B0();
      v71 = v55;
      v72 = v54;
      v56 = v47[4];
      sub_2E18(v47, v47[3]);
      v57 = *(v56 + 8);
      v82 = sub_2606E0();
      v80 = v58;
      v59 = v47[4];
      sub_2E18(v47, v47[3]);
      sub_260860();
      v60 = sub_2609D0();
      v62 = v61;
      if (v60 == sub_2609D0() && v62 == v63)
      {
      }

      else
      {
        v65 = sub_264F10();

        if ((v65 & 1) == 0)
        {
          v52 = 0x6B6F6F6265;
          v51 = 0xE500000000000000;
        }
      }

      *&v100 = v72;
      *(&v100 + 1) = v71;
      v66 = v80;
      *&v101 = v82;
      *(&v101 + 1) = v80;
      *&v102 = 0x64695F737469;
      *(&v102 + 1) = 0xE600000000000000;
      *v103 = xmmword_273510;
      *&v103[16] = 0xE700000000000000;
      v104 = v52;
      v105 = v51;
      v106 = v73;
      v107 = v79;
      v110 = 0u;
      v108 = 0u;
      v109 = 0u;
      v111 = 0u;

      sub_8198(&v111, &v89, &qword_31C778, &qword_273528);
      if (!v66)
      {
        v67 = v74;
        sub_2601D0();
        sub_2601C0();
        (*(v75 + 8))(v67, v76);
      }

      v27 = v81;

      sub_263E00();
      sub_169820();
      sub_263DC0();
      sub_D0B04(_swiftEmptyArrayStorage);
      sub_D0B04(_swiftEmptyArrayStorage);
      sub_263E20();
      sub_8E80(&v90, &qword_317F48, &qword_26A9A0);
      sub_D0C34(&v100);
      v64 = 0;
    }

    else
    {
      sub_8E80(&v90, &qword_317F48, &qword_26A9A0);
      v64 = 1;
    }
  }

  else
  {
    v64 = 1;
  }

  v68 = sub_263E50();
  (*(*(v68 - 8) + 56))(v46, v64, 1, v68);
  v69 = v84;
  sub_263F60();
  sub_11B668();
  sub_262910();
  (*(v86 + 8))(v69, v87);
  sub_8E80(v46, &qword_315D48, &qword_266E40);
  return sub_8E80(v27, &qword_31E978, &qword_279088);
}

uint64_t sub_116BC4@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for QuickActionBuyButtonViewModel(0);
  sub_8198(v1 + *(v12 + 36), v11, &qword_317E08, &qword_26A550);
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

Swift::Void __swiftcall QuickActionBuyButtonViewModel.update()()
{
  v1 = v0;
  v203 = type metadata accessor for ButtonViewModel.ActionKind(0);
  v2 = *(*(v203 - 8) + 64);
  __chkstk_darwin(v203);
  v4 = &v173[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_260BD0();
  v6 = *(v5 - 8);
  v192 = v5;
  v193 = v6;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v183 = &v173[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v181 = &v173[-v10];
  v11 = sub_260060();
  v201 = *(v11 - 8);
  v12 = *(v201 + 64);
  __chkstk_darwin(v11);
  v177 = &v173[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_2EF0(&qword_316208, &qword_268BD0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v182 = &v173[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v184 = &v173[-v18];
  v188 = type metadata accessor for AssetAction.Kind(0);
  v19 = *(*(v188 - 8) + 64);
  __chkstk_darwin(v188);
  v189 = &v173[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_2EF0(&qword_319AC8, &qword_287AB0);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v198 = &v173[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v197 = &v173[-v25];
  v202 = type metadata accessor for ButtonViewModel.Content(0);
  v26 = *(*(v202 - 8) + 64);
  v27 = __chkstk_darwin(v202);
  v180 = &v173[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = __chkstk_darwin(v27);
  v178 = &v173[-v30];
  __chkstk_darwin(v29);
  v196 = &v173[-v31];
  v195 = sub_2607D0();
  v32 = *(v195 - 8);
  v33 = *(v32 + 64);
  v34 = __chkstk_darwin(v195);
  v194 = &v173[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v34);
  v37 = &v173[-v36];
  v38 = sub_2EF0(&qword_322C70, &qword_272AD0);
  v39 = *(*(v38 - 8) + 64);
  v40 = __chkstk_darwin(v38 - 8);
  v179 = &v173[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = __chkstk_darwin(v40);
  v191 = &v173[-v43];
  __chkstk_darwin(v42);
  v205 = &v173[-v44];
  v45 = sub_261C90();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  __chkstk_darwin(v45);
  v49 = &v173[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v50 = type metadata accessor for QuickActionBuyButtonViewModel(0);
  v51 = v1 + *(v50 + 32);
  *&v220[15] = *(v51 + 63);
  v52 = *(v51 + 48);
  v219[2] = *(v51 + 32);
  *v220 = v52;
  v53 = *(v51 + 16);
  v219[0] = *v51;
  v219[1] = v53;
  v204 = v50;
  v199 = v4;
  v200 = v11;
  if (v220[18])
  {
    v54 = v50;
    v55 = *(v51 + 48);
    *v218 = *(v51 + 32);
    *&v218[16] = v55;
    *&v218[32] = *(v51 + 64);
    v56 = *(v51 + 16);
    v216 = *v51;
    v217 = v56;
    v208[0] = *v218;
    v208[1] = v55;
    *(&v208[1] + 15) = *(v51 + 63);
    v206 = v216;
    v207 = v56;
    sub_8198(&v206, v213, &qword_317F48, &qword_26A9A0);
  }

  else
  {

    sub_264900();
    v57 = sub_2624B0();
    v54 = v204;
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_8E80(v219, &qword_317F40, &qword_26E9D0);
    (*(v46 + 8))(v49, v45);
  }

  v213[0] = v216;
  v213[1] = v217;
  v213[2] = *v218;
  v213[3] = *&v218[16];
  v214 = *&v218[32];
  v215 = v218[0];
  if (!*(&v216 + 1))
  {
    v64 = type metadata accessor for ButtonViewModel(0);
    sub_11B788(v1 + *(v64 + 44), type metadata accessor for ButtonViewModel.Content);
    swift_storeEnumTagMultiPayload();
    v65 = v1 + *(v64 + 52);
    sub_11B788(v65, type metadata accessor for ButtonViewModel.ActionKind);
    *v65 = 0u;
    *(v65 + 16) = 0u;
    *(v65 + 32) = 0;
    swift_storeEnumTagMultiPayload();
    return;
  }

  v206 = v216;
  v185 = v217;
  LOBYTE(v207) = v217;
  *(&v207 + 1) = *(&v217 + 1);
  DWORD1(v207) = DWORD1(v217);
  v175 = *(&v217 + 1);
  *(&v207 + 1) = *(&v217 + 1);
  LOBYTE(v208[0]) = v218[0];
  *(v208 + 1) = *&v218[1];
  *(&v208[1] + 1) = *&v218[17];
  BYTE1(v208[2]) = v218[33];
  v58 = (v1 + *(v54 + 20));
  v59 = v58[4];
  sub_2E18(v58, v58[3]);
  if (sub_260870())
  {
    v60 = v1 + *(v54 + 40);
    v61 = *v60;
    if (!*v60)
    {
      v172 = *(v60 + 8);
      type metadata accessor for ProfileRestrictions();
      sub_11B8B0(&qword_326DC0, type metadata accessor for ProfileRestrictions);
      sub_2618F0();
      __break(1u);
      return;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v62 = v61;
    sub_260FF0();

    v63 = v209[0];
  }

  else
  {
    v63 = 1;
  }

  v187 = type metadata accessor for ButtonViewModel(0);
  v66 = v1;
  *(v1 + *(v187 + 48)) = v63;
  v67 = v58[4];
  sub_2E18(v58, v58[3]);
  v68 = *(v67 + 8);
  v176 = sub_2606E0();
  v186 = v69;
  v70 = v58[4];
  sub_2E18(v58, v58[3]);
  sub_260860();
  v71 = sub_2609D0();
  v73 = v72;
  if (v71 == sub_2609D0() && v73 == v74)
  {
    v174 = 1;
  }

  else
  {
    v174 = sub_264F10();
  }

  v75 = v200;

  v76 = v58[4];
  sub_2E18(v58, v58[3]);
  v77 = *(v76 + 8);
  v78 = sub_260700();
  v79 = v58[4];
  sub_2E18(v58, v58[3]);
  v80 = *(v79 + 8);
  v81 = sub_260700();
  if (v81)
  {
    v82 = v81;
    v83 = [v81 bookSampleDownloadURL];

    if (v83)
    {
      v84 = v191;
      sub_260040();

      v85 = 0;
    }

    else
    {
      v85 = 1;
      v84 = v191;
    }

    (*(v201 + 56))(v84, v85, 1, v75);
    sub_22148(v84, v205, &qword_322C70, &qword_272AD0);
  }

  else
  {
    (*(v201 + 56))(v205, 1, 1, v75);
  }

  v86 = v58[4];
  sub_2E18(v58, v58[3]);
  sub_260940();
  v88 = v194;
  v87 = v195;
  (*(v32 + 104))(v194, enum case for SeriesOrdering.orderedSeries(_:), v195);
  v89 = sub_2607C0();
  v90 = *(v32 + 8);
  v90(v88, v87);
  v90(v37, v87);
  v190 = v78;
  if (v185 != 3)
  {
    v100 = v196;
    v98 = v66;
    if ((v215 & 1) == 0)
    {
      *v196 = v175;
      swift_storeEnumTagMultiPayload();
      v110 = v189;
      *v189 = v78;
      swift_storeEnumTagMultiPayload();
      v111 = v184;
      (*(v193 + 56))(v184, 1, 1, v192);
      v112 = v78;
      v93 = v197;
      sub_118738(v110, v111, &v206, v66, v176, v186, v197);

      sub_8E80(v111, &qword_316208, &qword_268BD0);
      sub_11B788(v110, type metadata accessor for AssetAction.Kind);
      sub_8E80(v213, &qword_317F48, &qword_26A9A0);
      v113 = type metadata accessor for AssetAction(0);
      (*(*(v113 - 8) + 56))(v93, 0, 1, v113);
      v94 = 0;
      v95 = 0;
      v96 = v198;
      v97 = v187;
      v99 = v100;
      goto LABEL_62;
    }

    v101 = v196;
    if (v185 <= 1)
    {
      v102 = v174;
      v96 = v198;
      if ((v174 & (v175 > 2)) == 1)
      {
        v103 = *(sub_2EF0(&qword_319AF8, &qword_279110) + 48);
        v99 = v100;
        *v100 = 0xD000000000000015;
        v100[1] = 0x80000000002926F0;
        v104 = v58[4];
        sub_2E18(v58, v58[3]);
        sub_2609A0();
        sub_260BC0();

        swift_storeEnumTagMultiPayload();
        v105 = v189;
        v106 = v190;
        *v189 = 0;
        *(v105 + 1) = 0;
        *(v105 + 16) = 1;
        *(v105 + 3) = v106;
        swift_storeEnumTagMultiPayload();
        v107 = v184;
        (*(v193 + 56))(v184, 1, 1, v192);
        v108 = v106;
        v93 = v197;
        sub_118738(v105, v107, &v206, v98, v176, v186, v197);

        sub_8E80(v107, &qword_316208, &qword_268BD0);
        sub_11B788(v105, type metadata accessor for AssetAction.Kind);
        sub_8E80(v213, &qword_317F48, &qword_26A9A0);
        v109 = type metadata accessor for AssetAction(0);
        (*(*(v109 - 8) + 56))(v93, 0, 1, v109);
      }

      else
      {
        v141 = *(sub_2EF0(&qword_31E988, &qword_279108) + 48);
        v209[2] = v208[0];
        v209[3] = v208[1];
        v210 = v208[2];
        v209[0] = v206;
        v209[1] = v207;
        v99 = v100;
        sub_119A1C(v102 & 1, v209);
        v142 = v58[4];
        sub_2E18(v58, v58[3]);
        sub_2609A0();
        sub_260BC0();

        swift_storeEnumTagMultiPayload();
        v143 = v189;
        swift_storeEnumTagMultiPayload();
        v144 = v184;
        (*(v193 + 56))(v184, 1, 1, v192);
        v93 = v197;
        sub_118738(v143, v144, &v206, v98, v176, v186, v197);

        sub_8E80(v144, &qword_316208, &qword_268BD0);
        sub_11B788(v143, type metadata accessor for AssetAction.Kind);
        v145 = type metadata accessor for AssetAction(0);
        (*(*(v145 - 8) + 56))(v93, 0, 1, v145);
        sub_8E80(v213, &qword_317F48, &qword_26A9A0);
      }

      v94 = 0;
      v95 = 0;
      v97 = v187;
      goto LABEL_62;
    }

    v114 = v58[4];
    sub_2E18(v58, v58[3]);
    v115 = sub_2609C0();
    v116 = v174;
    if (v115 == 2 || (v115 & 1) == 0)
    {
      v120 = v183;
      sub_11A54C(v174 & 1, v58, v183);
      if ((v89 & 1) == 0 || (v121 = v58[4], sub_2E18(v58, v58[3]), v120 = v183, sub_260930(), (v122 & 0x100000000) != 0))
      {
        v195 = *(sub_2EF0(&qword_31E988, &qword_279108) + 48);
        v126 = *(v193 + 16);
        v125 = v180;
        v129 = v120;
        v128 = v192;
        v126(v180, v129, v192);
        v130 = v58[4];
        sub_2E18(v58, v58[3]);
        sub_2609A0();
        sub_260BC0();
      }

      else
      {
        if (v116)
        {
          v123 = 0x6E6F687064616568;
        }

        else
        {
          v123 = 0x6761702E6B6F6F62;
        }

        v124 = *(sub_2EF0(&qword_319AF8, &qword_279110) + 48);
        v125 = v180;
        *v180 = v123;
        *(v125 + 8) = 0xEA00000000007365;
        v126 = *(v193 + 16);
        v127 = v120;
        v128 = v192;
        v126((v125 + v124), v127, v192);
      }

      swift_storeEnumTagMultiPayload();
      v99 = v101;
      sub_1161F4(v125, v101, type metadata accessor for ButtonViewModel.Content);
      v131 = v182;
      v126(v182, v183, v128);
      v132 = v131;
      (*(v193 + 56))(v131, 0, 1, v128);
      v93 = v197;
      v96 = v198;
      if (v174)
      {
        v133 = v58[4];
        sub_2E18(v58, v58[3]);
        v134 = *(v133 + 8);
        v135 = sub_260700();
        v136 = v204;
        if (v135)
        {
          v137 = v189;
          *v189 = v135;
          v138 = v135;
          swift_storeEnumTagMultiPayload();
          v139 = v138;
          sub_118738(v137, v132, &v206, v98, v176, v186, v93);

          sub_11B788(v137, type metadata accessor for AssetAction.Kind);
          v140 = 0;
        }

        else
        {

          v140 = 1;
        }

        v97 = v187;
      }

      else
      {
        v146 = v179;
        sub_8198(v205, v179, &qword_322C70, &qword_272AD0);
        v148 = v200;
        v147 = v201;
        v149 = (*(v201 + 48))(v146, 1, v200);
        v97 = v187;
        if (v149 == 1)
        {

          sub_8E80(v146, &qword_322C70, &qword_272AD0);
          v140 = 1;
        }

        else
        {
          v159 = v177;
          (*(v147 + 32))();
          v160 = *(v147 + 16);
          v161 = v189;
          v160(v189, v159, v148);
          swift_storeEnumTagMultiPayload();
          sub_118738(v161, v182, &v206, v98, v176, v186, v93);

          sub_11B788(v161, type metadata accessor for AssetAction.Kind);
          v162 = v159;
          v132 = v182;
          (*(v201 + 8))(v162, v148);
          v140 = 0;
        }

        v136 = v204;
      }

      sub_8E80(v132, &qword_316208, &qword_268BD0);
      v163 = type metadata accessor for AssetAction(0);
      (*(*(v163 - 8) + 56))(v93, v140, 1, v163);
      sub_8E80(v213, &qword_317F48, &qword_26A9A0);
      sub_8198(v98 + *(v136 + 24), &v211, &qword_31D240, &qword_279000);
      if (v212)
      {
        sub_F7CC(&v211, v209);
        v164 = v183;
LABEL_59:
        v94 = sub_260BB0();
        v95 = v166;
        sub_3080(v209);
        (*(v193 + 8))(v164, v192);
        goto LABEL_62;
      }

      (*(v193 + 8))(v183, v192);
    }

    else
    {
      sub_119D08(v174 & 1, v58, v181);
      v99 = v101;
      if ((v89 & 1) == 0 || (v117 = v58[4], sub_2E18(v58, v58[3]), sub_260930(), (v118 & 0x100000000) != 0))
      {
        v150 = *(sub_2EF0(&qword_31E988, &qword_279108) + 48);
        v119 = v178;
        v201 = *(v193 + 16);
        (v201)(v178, v181, v192);
        v151 = v58[4];
        sub_2E18(v58, v58[3]);
        sub_2609A0();
        sub_260BC0();
      }

      else
      {
        v119 = v178;
        v201 = *(v193 + 16);
        (v201)(v178, v181, v192);
      }

      v97 = v187;
      swift_storeEnumTagMultiPayload();
      sub_1161F4(v119, v101, type metadata accessor for ButtonViewModel.Content);
      v93 = v197;
      v96 = v198;
      v152 = v190;
      if (v190)
      {
        *v189 = v190;
        swift_storeEnumTagMultiPayload();
        v154 = v192;
        v153 = v193;
        v155 = v184;
        (v201)(v184, v181, v192);
        (*(v153 + 56))(v155, 0, 1, v154);
        v156 = v152;
        v157 = v189;
        sub_118738(v189, v155, &v206, v98, v176, v186, v93);

        sub_8E80(v155, &qword_316208, &qword_268BD0);
        sub_11B788(v157, type metadata accessor for AssetAction.Kind);
        v158 = 0;
      }

      else
      {

        v158 = 1;
      }

      v165 = type metadata accessor for AssetAction(0);
      (*(*(v165 - 8) + 56))(v93, v158, 1, v165);
      sub_8E80(v213, &qword_317F48, &qword_26A9A0);
      sub_8198(v98 + *(v204 + 24), &v211, &qword_31D240, &qword_279000);
      if (v212)
      {
        sub_F7CC(&v211, v209);
        v164 = v181;
        goto LABEL_59;
      }

      (*(v193 + 8))(v181, v192);
    }

    sub_8E80(&v211, &qword_31D240, &qword_279000);
    v94 = 0;
    v95 = 0;
    goto LABEL_62;
  }

  sub_8E80(v213, &qword_317F48, &qword_26A9A0);
  v91 = v196;
  swift_storeEnumTagMultiPayload();
  v92 = type metadata accessor for AssetAction(0);
  v93 = v197;
  (*(*(v92 - 8) + 56))(v197, 1, 1, v92);
  v94 = 0;
  v95 = 0;
  v96 = v198;
  v97 = v187;
  v98 = v66;
  v99 = v91;
LABEL_62:
  sub_11B7E8(v99, v98 + *(v97 + 44));
  sub_8198(v93, v96, &qword_319AC8, &qword_287AB0);
  v167 = type metadata accessor for AssetAction(0);
  if ((*(*(v167 - 8) + 48))(v96, 1, v167) == 1)
  {

    sub_8E80(v93, &qword_319AC8, &qword_287AB0);
    sub_11B788(v99, type metadata accessor for ButtonViewModel.Content);
    sub_8E80(v205, &qword_322C70, &qword_272AD0);
    sub_8E80(v96, &qword_319AC8, &qword_287AB0);
    v168 = v199;
    *v199 = 0u;
    *(v168 + 16) = 0u;
    *(v168 + 32) = 0;
  }

  else
  {
    v168 = v199;
    *(v199 + 3) = v167;
    *(v168 + 32) = sub_11B8B0(&qword_319B08, type metadata accessor for AssetAction);
    v169 = sub_10934(v168);
    sub_1161F4(v96, v169, type metadata accessor for AssetAction);

    sub_8E80(v93, &qword_319AC8, &qword_287AB0);
    sub_11B788(v99, type metadata accessor for ButtonViewModel.Content);
    sub_8E80(v205, &qword_322C70, &qword_272AD0);
  }

  swift_storeEnumTagMultiPayload();
  sub_11B84C(v168, v98 + *(v97 + 52));
  v170 = (v98 + *(v204 + 28));
  v171 = v170[1];

  *v170 = v94;
  v170[1] = v95;
}

uint64_t sub_118738@<X0>(void (*a1)(uint64_t, void, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v167 = a6;
  v168 = a5;
  v165 = a4;
  v156 = a3;
  v145 = a2;
  v163 = a7;
  v162 = type metadata accessor for AssetAction(0);
  v8 = *(*(v162 - 8) + 64);
  __chkstk_darwin(v162);
  v177 = (&v139 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v175 = sub_2601E0();
  v10 = *(v175 - 1);
  v11 = *(v10 + 64);
  __chkstk_darwin(v175);
  v159 = &v139 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2EF0(&qword_316B98, &unk_275840);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v176 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v161 = &v139 - v18;
  __chkstk_darwin(v17);
  v160 = &v139 - v19;
  v171 = type metadata accessor for QuickActionBuyButtonViewModel(0);
  v20 = *(*(v171 - 8) + 64);
  __chkstk_darwin(v171);
  v157 = &v139 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2EF0(&qword_31A0C8, &qword_26E2C0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v164 = (&v139 - v24);
  v25 = sub_263DD0();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v148 = &v139 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_263A10();
  v147 = *(v155 - 1);
  v28 = *(v147 + 64);
  __chkstk_darwin(v155);
  v146 = &v139 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2EF0(&qword_322C70, &qword_272AD0);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v144 = &v139 - v32;
  v33 = sub_2EF0(&qword_316208, &qword_268BD0);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  *&v143 = &v139 - v35;
  v36 = type metadata accessor for AssetAction.Kind(0);
  v37 = *(*(v36 - 8) + 64);
  v38 = __chkstk_darwin(v36);
  v174 = &v139 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v41 = &v139 - v40;
  v158 = sub_263AF0();
  v172 = *(v158 - 8);
  v42 = *(v172 + 64);
  v43 = __chkstk_darwin(v158);
  v179 = &v139 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v178 = &v139 - v45;
  v46 = sub_260560();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  __chkstk_darwin(v46);
  v50 = &v139 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_260600();
  v52 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51 - 8);
  v54 = &v139 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_260620();
  v170 = *(v173 - 8);
  v55 = *(v170 + 64);
  __chkstk_darwin(v173);
  v57 = &v139 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssetAction.Kind.appAnalyticsClickTargetType.getter(v54);
  v58 = *(v47 + 104);
  v150 = enum case for LinkActionType.click(_:);
  v153 = v47 + 104;
  v154 = v46;
  v149 = v58;
  v58(v50);
  v169 = v57;
  v151 = v54;
  v152 = v50;
  sub_260610();
  v166 = a1;
  sub_11BFAC(a1, v41, type metadata accessor for AssetAction.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    sub_11B788(v41, type metadata accessor for AssetAction.Kind);
    v60 = v171;
    v62 = v164;
    v61 = v165;
LABEL_5:
    v64 = v178;
    if (*(v156 + 16) == 5)
    {
      v65 = 1;
      goto LABEL_9;
    }

LABEL_14:
    sub_263AC0();
    v73 = v175;
    goto LABEL_37;
  }

  v60 = v171;
  v62 = v164;
  v61 = v165;
  if (EnumCaseMultiPayload == 6)
  {
    v63 = sub_260060();
    (*(*(v63 - 8) + 8))(v41, v63);
    goto LABEL_5;
  }

  sub_11B788(v41, type metadata accessor for AssetAction.Kind);
  v64 = v178;
  if (*(v156 + 16) != 5)
  {
    goto LABEL_14;
  }

  v65 = 0;
LABEL_9:
  sub_8198(v61 + *(v60 + 24), &v186, &qword_31D240, &qword_279000);
  if (!*(&v187 + 1))
  {
    sub_8E80(&v186, &qword_31D240, &qword_279000);
    goto LABEL_14;
  }

  v156 = v10;
  v66 = 0x6F6F626F69647561;
  sub_F7CC(&v186, v185);
  AssetAction.Kind.figaroActionType.getter(&v186);
  v142 = v186;
  LOBYTE(v183) = v186;
  v67 = *(v60 + 20);
  sub_30CC(v61 + v67, &v186);
  v141 = _s7BooksUI7MetricsO13actionDetails3for9assetInfoSDySSypGSgAC15ClickActionTypeO_14BookFoundation05AssetH0_ptFZ_0(&v183, &v186);
  sub_3080(&v186);
  v140 = v67;
  sub_30CC(v61 + v67, &v186);
  sub_2E18(&v186, *(&v187 + 1));
  sub_260860();
  v68 = sub_2609D0();
  v70 = v69;
  if (v68 == sub_2609D0() && v70 == v71)
  {

    v72 = 0xE90000000000006BLL;
  }

  else
  {
    v74 = sub_264F10();

    if (v74)
    {
      v72 = 0xE90000000000006BLL;
    }

    else
    {
      v66 = 0x6B6F6F6265;
      v72 = 0xE500000000000000;
    }
  }

  v75 = v144;
  sub_3080(&v186);
  v76 = v143;
  sub_8198(v145, v143, &qword_316208, &qword_268BD0);
  v77 = sub_260BD0();
  v78 = *(v77 - 8);
  if ((*(v78 + 48))(v76, 1, v77) == 1)
  {
    sub_8E80(v76, &qword_316208, &qword_268BD0);
    v79 = 0;
    v80 = 0;
  }

  else
  {
    v81 = v76;
    v79 = sub_260BB0();
    v80 = v82;
    (*(v78 + 8))(v81, v77);
  }

  LOBYTE(v183) = 0;
  if (v65)
  {
    v83 = 0x77656976657270;
  }

  else
  {
    v83 = 0x6E6F74747562;
  }

  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  if (v65)
  {
    v84 = 0xE700000000000000;
  }

  else
  {
    v84 = 0xE600000000000000;
  }

  v189 = v168;
  v190 = v167;
  v191 = xmmword_270040;
  v192 = v66;
  v193 = v72;
  v194 = 1;
  v195 = 0;
  v144 = v84;
  v145 = v83;
  v196 = v83;
  v197 = v84;
  v198 = v79;
  v199 = v80;
  v200 = 0uLL;
  v201 = 0uLL;
  v61 = v165;
  sub_30CC(v165 + v140, &v183);
  sub_2E18(&v183, v184);

  sub_2608C0();
  v85 = sub_260060();
  v86 = *(v85 - 8);
  if ((*(v86 + 48))(v75, 1, v85) == 1)
  {
    sub_3080(&v183);
    sub_8E80(v75, &qword_322C70, &qword_272AD0);
    v87 = 0;
    v88 = 0;
  }

  else
  {
    v87 = sub_260020();
    v88 = v89;
    (*(v86 + 8))(v75, v85);
    sub_3080(&v183);
  }

  v90 = v141;
  v91 = &_swiftEmptyDictionarySingleton;
  if (v141)
  {
    v184 = sub_2EF0(&qword_3160D0, &unk_270CF0);
    *&v183 = v90;
    sub_FBD8(&v183, v181);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v180 = &_swiftEmptyDictionarySingleton;
    sub_DC90(v181, 0x65446E6F69746361, 0xED0000736C696174, isUniquelyReferenced_nonNull_native);
    v91 = v180;
  }

  if (v88)
  {
    v184 = &type metadata for String;
    *&v183 = v87;
    *(&v183 + 1) = v88;
    sub_FBD8(&v183, v181);
    v93 = swift_isUniquelyReferenced_nonNull_native();
    v180 = v91;
    sub_DC90(v181, 0x72556E6F69746361, 0xE90000000000006CLL, v93);
    v91 = v180;
  }

  v182 = v142;
  v94 = Metrics.ClickActionType.rawValue.getter();
  v184 = &type metadata for String;
  *&v183 = v94;
  *(&v183 + 1) = v95;
  sub_FBD8(&v183, v181);
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v180 = v91;
  sub_DC90(v181, 0x79546E6F69746361, 0xEA00000000006570, v96);
  v97 = v180;
  sub_2EF0(&qword_317218, &unk_269760);
  v98 = swift_allocObject();
  v143 = xmmword_267D30;
  *(v98 + 16) = xmmword_267D30;
  *(v98 + 32) = sub_1694E0();
  v184 = sub_2EF0(&qword_319B10, &qword_2777B0);
  *&v183 = v98;
  sub_FBD8(&v183, v181);
  v99 = swift_isUniquelyReferenced_nonNull_native();
  v180 = v97;
  sub_DC90(v181, 0x6E6F697461636F6CLL, 0xE800000000000000, v99);
  if (qword_3158E0 != -1)
  {
    swift_once();
  }

  v100 = sub_2639E0();
  sub_B080(v100, qword_353F10);
  v101 = v146;
  sub_2639C0();

  sub_2EF0(&qword_3160D8, &qword_267D60);
  v102 = v147;
  v103 = *(v147 + 72);
  v104 = (*(v147 + 80) + 32) & ~*(v147 + 80);
  v105 = swift_allocObject();
  *(v105 + 16) = v143;
  v106 = v105 + v104;
  v107 = v155;
  (*(v102 + 16))(v106, v101, v155);
  sub_263DC0();
  v64 = v178;
  sub_263AD0();
  sub_98D34(&v186);
  (*(v102 + 8))(v101, v107);
  sub_3080(v185);
  v73 = v175;
  v10 = v156;
  v62 = v164;
LABEL_37:
  v108 = v172;
  v109 = v179;
  v110 = v157;
  sub_11BFAC(v61, v157, type metadata accessor for QuickActionBuyButtonViewModel);
  sub_116BC4(v62);
  sub_11B788(v110, type metadata accessor for QuickActionBuyButtonViewModel);
  if ((*(v10 + 48))(v62, 1, v73) == 1)
  {
    sub_8E80(v62, &qword_31A0C8, &qword_26E2C0);
    v156 = 0;
    v157 = 0;
  }

  else
  {
    v111 = sub_2601C0();
    v156 = v112;
    v157 = v111;
    (*(v10 + 8))(v62, v73);
  }

  v113 = v10;
  sub_30CC(v61 + *(v171 + 20), v185);
  sub_2E18(v185, v185[3]);
  LODWORD(v165) = sub_260870();
  v164 = *(v108 + 16);
  v114 = v158;
  v164(v109, v64, v158);
  v155 = type metadata accessor for AssetAction.Kind;
  sub_11BFAC(v166, v174, type metadata accessor for AssetAction.Kind);
  v115 = v170;
  v116 = v160;
  v117 = v173;
  (*(v170 + 16))(v160, v169, v173);
  v118 = *(v115 + 56);
  v171 = v115 + 56;
  v166 = v118;
  v118(v116, 0, 1, v117);
  v119 = v159;
  sub_2601D0();
  v120 = sub_2601C0();
  v122 = v121;
  (*(v113 + 8))(v119, v175);
  v123 = v177;
  *v177 = v120;
  v123[1] = v122;
  v124 = v167;
  v123[2] = v168;
  v123[3] = v124;
  v125 = v156;
  v123[4] = v157;
  v123[5] = v125;
  *(v123 + 48) = v165 & 1;
  v126 = v162;
  v164(v123 + *(v162 + 32), v179, v114);
  v127 = v174;
  sub_11BFAC(v174, v123 + *(v126 + 40), v155);
  v128 = v176;
  sub_8198(v116, v176, &qword_316B98, &unk_275840);
  v129 = *(v115 + 48);
  LODWORD(v128) = v129(v128, 1, v117);

  if (v128 == 1)
  {
    AssetAction.Kind.appAnalyticsClickTargetType.getter(v151);
    v149(v152, v150, v154);
    v175 = v129;
    v130 = v114;
    v131 = v161;
    sub_260610();
    sub_8E80(v116, &qword_316B98, &unk_275840);
    sub_11B788(v127, type metadata accessor for AssetAction.Kind);
    v132 = *(v172 + 8);
    v132(v179, v130);
    v132(v178, v130);
    v133 = v173;
    (*(v170 + 8))(v169, v173);
    v134 = v176;
    if ((v175)(v176, 1, v133) != 1)
    {
      sub_8E80(v134, &qword_316B98, &unk_275840);
    }
  }

  else
  {
    sub_8E80(v116, &qword_316B98, &unk_275840);
    sub_11B788(v127, type metadata accessor for AssetAction.Kind);
    v135 = *(v172 + 8);
    v135(v179, v114);
    v135(v178, v114);
    v136 = v170;
    v133 = v173;
    (*(v170 + 8))(v169, v173);
    v131 = v161;
    (*(v136 + 32))(v161, v176, v133);
  }

  v166(v131, 0, 1, v133);
  v137 = v177;
  sub_22148(v131, v177 + *(v126 + 36), &qword_316B98, &unk_275840);
  sub_1161F4(v137, v163, type metadata accessor for AssetAction);
  return sub_3080(v185);
}

uint64_t sub_119A1C(uint64_t a1, uint64_t a2)
{
  v3 = sub_264010();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_263FA0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + 40);
  sub_263F90();
  (*(v4 + 104))(v7, enum case for LocalizerLookupStrategy.default(_:), v3);
  sub_260B80();
  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}