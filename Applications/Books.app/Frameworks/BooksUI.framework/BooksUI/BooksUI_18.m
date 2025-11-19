uint64_t sub_1D4380@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v39 = a8;
  KeyPath = a3;
  v45 = a6;
  v46 = a9;
  v37 = a1;
  v43 = a5;
  v44 = a10;
  v47 = a6;
  v48 = a7;
  v49 = a8;
  v50 = a10;
  v36 = type metadata accessor for ShelfCollage2();
  v13 = *(v36 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v36);
  v16 = &v34 - v15;
  v17 = sub_2F9C(&qword_31D528, &qword_2755F0);
  v41 = v17;
  v38 = sub_8E38(&qword_324928, &qword_31D528, &qword_2755F0);
  v47 = v17;
  v48 = &type metadata for AnyHashable;
  v49 = a7;
  v50 = v38;
  v51 = &protocol witness table for AnyHashable;
  v18 = sub_2633D0();
  v42 = *(v18 - 8);
  v19 = *(v42 + 64);
  __chkstk_darwin(v18);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v35 = &v34 - v23;
  v47 = v37;
  v48 = a2;
  v49 = KeyPath;
  v50 = a4;
  KeyPath = swift_getKeyPath();
  v24 = v16;
  v25 = v16;
  v26 = v36;
  (*(v13 + 16))(v25, v43, v36);
  v27 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v28 = swift_allocObject();
  *(v28 + 2) = v45;
  *(v28 + 3) = a7;
  v29 = v44;
  *(v28 + 4) = v39;
  *(v28 + 5) = v29;
  (*(v13 + 32))(&v28[v27], v24, v26);
  swift_unknownObjectRetain();
  sub_2633B0();
  WitnessTable = swift_getWitnessTable();
  v31 = v35;
  sub_1609C(v21, v18, WitnessTable);
  v32 = *(v42 + 8);
  v32(v21, v18);
  sub_1609C(v31, v18, WitnessTable);
  return (v32)(v31, v18);
}

uint64_t sub_1D46DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(a1);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v25 - v15;
  v25[0] = v17;
  v25[1] = v18;
  v25[2] = v19;
  v25[3] = v20;
  v21 = a2 + *(type metadata accessor for ShelfCollage2() + 60);
  v22 = *(v21 + 8);
  (*v21)(a1);
  sub_1609C(v13, a4, a6);
  v23 = *(v10 + 8);
  v23(v13, a4);
  sub_1609C(v16, a4, a6);
  return (v23)(v16, a4);
}

uint64_t ComponentView.init(_:content:)(uint64_t a1)
{
  sub_30CC(a1, v3);
  sub_260AF0();
  return sub_1D48B8(a1);
}

uint64_t sub_1D4904(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

void sub_1D4948()
{
  sub_1D4BEC();
  if (v0 <= 0x3F)
  {
    sub_260C50();
    if (v1 <= 0x3F)
    {
      sub_15D3D8(319, &unk_3198D8, &type metadata for CGFloat, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_16D28();
        if (v3 <= 0x3F)
        {
          sub_15D3D8(319, &qword_31D880, &type metadata for ShelfGridBreakpoint, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1D4A70(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_260C50();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

void *sub_1D4B30(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_260C50();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1D4BEC()
{
  if (!qword_3249B8[0])
  {
    sub_2F9C(&qword_31D528, &qword_2755F0);
    v0 = sub_2646F0();
    if (!v1)
    {
      atomic_store(v0, qword_3249B8);
    }
  }
}

uint64_t sub_1D4C78(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  sub_2F9C(&qword_324920, &unk_285D40);
  sub_2F9C(&qword_31D528, &qword_2755F0);
  sub_8E38(&qword_324928, &qword_31D528, &qword_2755F0);
  sub_2633D0();
  swift_getWitnessTable();
  sub_2632E0();
  sub_2F9C(&qword_322DC8, &qword_285D50);
  sub_261730();
  sub_2F9C(&qword_319848, &unk_26D5A0);
  sub_261730();
  sub_8E38(qword_324930, &qword_324920, &unk_285D40);
  sub_2633D0();
  swift_getWitnessTable();
  sub_8E38(&qword_322DD0, &qword_322DC8, &qword_285D50);
  swift_getWitnessTable();
  sub_8E38(&qword_319850, &qword_319848, &unk_26D5A0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for ColumnHStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_261120();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_262490();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_261730();
  swift_getOpaqueTypeConformance2();
  sub_EFAB0();
  return swift_getWitnessTable();
}

uint64_t sub_1D5154@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = v5[2];
  v11 = v5[3];
  v13 = v5[4];
  v12 = v5[5];
  v14 = *(type metadata accessor for ShelfCollage2() - 8);
  return sub_1D3DA8(a1, a2, a3, a4, v5 + ((*(v14 + 80) + 48) & ~*(v14 + 80)), v10, v11, a5, v13, v12);
}

uint64_t sub_1D5228()
{
  v1 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1D5260(void *a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  return v2(*a1, a1[1], a1[2], a1[3], a1[4]);
}

uint64_t sub_1D52D8(void *a1)
{
  v1 = a1[4];
  sub_2E18(a1, a1[3]);
  return sub_263B90();
}

uint64_t sub_1D5320()
{
  v9 = *(v0 + 16);
  v10 = *(v0 + 32);
  v1 = (type metadata accessor for ShelfCollage2() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 48) & ~*(*v1 + 80)));
  v4 = *v3;

  v5 = v1[15];
  v6 = sub_260C50();
  (*(*(v6 - 8) + 8))(&v3[v5], v6);
  v7 = *&v3[v1[17] + 8];

  sub_4054(*&v3[v1[18]], v3[v1[18] + 8]);
  return swift_deallocObject();
}

uint64_t sub_1D543C(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for ShelfCollage2() - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_1D46DC(a1, v8, v3, v4, v5, v6);
}

unint64_t sub_1D5538()
{
  result = qword_322DE0;
  if (!qword_322DE0)
  {
    sub_261DE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322DE0);
  }

  return result;
}

uint64_t PlainToolbarIconView.init(kind:)@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = *(type metadata accessor for PlainToolbarIconView() + 20);
  *&a2[v4] = swift_getKeyPath();
  sub_2EF0(&qword_318F68, &qword_26C578);
  result = swift_storeEnumTagMultiPayload();
  *a2 = v3;
  return result;
}

uint64_t type metadata accessor for PlainToolbarIconView()
{
  result = qword_324AB0;
  if (!qword_324AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5654@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_318F68, &qword_26C578);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for PlainToolbarIconView();
  sub_1D5F1C(v1 + *(v12 + 20), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1D5F8C(v11, a1);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t PlainToolbarIconView.body.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  v4 = *(type metadata accessor for SymbolImage() + 20);
  *&a1[v4] = swift_getKeyPath();
  sub_2EF0(&qword_3190A0, &unk_283550);
  swift_storeEnumTagMultiPayload();
  *a1 = v3;
  v5 = sub_1D58BC();
  KeyPath = swift_getKeyPath();
  result = sub_2EF0(&qword_324A50, &qword_285FF0);
  v8 = &a1[*(result + 36)];
  *v8 = KeyPath;
  v8[1] = v5;
  return result;
}

uint64_t sub_1D58BC()
{
  v1 = sub_2EF0(&qword_318458, &unk_26B270);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v18 - v3;
  v5 = sub_262730();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FontConstants.Navigation(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0 == 6)
  {

    return static Font.headline.getter(v12);
  }

  else
  {
    sub_1D5654(v14);
    (*(v6 + 104))(v9, enum case for Font.TextStyle.callout(_:), v5);
    v15 = sub_2625C0();
    (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
    sub_262650();
    v16 = sub_262680();
    sub_179B10(v4);
    (*(v6 + 8))(v9, v5);
    sub_1D5EC0(v14);
    return v16;
  }
}

uint64_t sub_1D5B2C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 248)
  {
    v4 = *a1;
    if (v4 >= 8)
    {
      return v4 - 7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_2EF0(&qword_318FA0, &unk_286050);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1D5BF4(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 248)
  {
    *result = a2 + 7;
  }

  else
  {
    v7 = sub_2EF0(&qword_318FA0, &unk_286050);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1D5CA0()
{
  sub_1D5D1C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D5D1C()
{
  if (!qword_319010)
  {
    type metadata accessor for FontConstants.Navigation(255);
    v0 = sub_2611E0();
    if (!v1)
    {
      atomic_store(v0, &qword_319010);
    }
  }
}

unint64_t sub_1D5D78()
{
  result = qword_324AE8;
  if (!qword_324AE8)
  {
    sub_2F9C(&qword_324A50, &qword_285FF0);
    sub_1D5E04();
    sub_1D5E5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324AE8);
  }

  return result;
}

unint64_t sub_1D5E04()
{
  result = qword_324AF0;
  if (!qword_324AF0)
  {
    type metadata accessor for SymbolImage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324AF0);
  }

  return result;
}

unint64_t sub_1D5E5C()
{
  result = qword_317580;
  if (!qword_317580)
  {
    sub_2F9C(&qword_317588, &qword_26B7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317580);
  }

  return result;
}

uint64_t sub_1D5EC0(uint64_t a1)
{
  v2 = type metadata accessor for FontConstants.Navigation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5F1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_318F68, &qword_26C578);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5F8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FontConstants.Navigation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static FlowActionDestination<>.newCardSet(focusedAdamID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

uint64_t sub_1D5FFC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x4164657375636F66;
  }

  else
  {
    v4 = 0x536472614377656ELL;
  }

  if (v3)
  {
    v5 = 0xEA00000000007465;
  }

  else
  {
    v5 = 0xED000044496D6164;
  }

  if (*a2)
  {
    v6 = 0x4164657375636F66;
  }

  else
  {
    v6 = 0x536472614377656ELL;
  }

  if (*a2)
  {
    v7 = 0xED000044496D6164;
  }

  else
  {
    v7 = 0xEA00000000007465;
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

Swift::Int sub_1D60B4()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_1D6148()
{
  *v0;
  sub_264500();
}

Swift::Int sub_1D61C8()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_1D6258@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_301488;
  v8._object = v3;
  v5 = sub_264D40(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1D62B8(uint64_t *a1@<X8>)
{
  v2 = 0x536472614377656ELL;
  if (*v1)
  {
    v2 = 0x4164657375636F66;
  }

  v3 = 0xEA00000000007465;
  if (*v1)
  {
    v3 = 0xED000044496D6164;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D6308()
{
  if (*v0)
  {
    result = 0x4164657375636F66;
  }

  else
  {
    result = 0x536472614377656ELL;
  }

  *v0;
  return result;
}

uint64_t sub_1D6354@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_301488;
  v9._object = a2;
  v6 = sub_264D40(v5, v9);

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

uint64_t sub_1D63B8(uint64_t a1)
{
  v2 = sub_1D6940();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1D63F4(uint64_t a1)
{
  v2 = sub_1D6940();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1D6430()
{
  sub_265050();
  sub_264500();
  return sub_265080();
}

Swift::Int sub_1D64B4()
{
  sub_265050();
  sub_264500();
  return sub_265080();
}

uint64_t sub_1D6510@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_3014D8;
  v7._object = v3;
  v5 = sub_264D40(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1D65B0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_301510;
  v8._object = a2;
  v6 = sub_264D40(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_1D6608(uint64_t a1)
{
  v2 = sub_1D6994();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1D6644(uint64_t a1)
{
  v2 = sub_1D6994();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FlowAction.NewCardSetDestination.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v26 = a2;
  v4 = sub_2EF0(&qword_324AF8, &qword_286080);
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  __chkstk_darwin(v4);
  v7 = &v24 - v6;
  v27 = sub_2EF0(&qword_324B00, &qword_286088);
  v8 = *(v27 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v27);
  v11 = &v24 - v10;
  v12 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_1D6940();
  sub_265120();
  if (!v2)
  {
    v14 = v8;
    v15 = v26;
    v30 = 0;
    if (sub_264E10())
    {
      v28 = 0;
      sub_1D6994();
      sub_264D50();
      v18 = v7;
      v19 = v4;
      v20 = sub_264DC0();
      v22 = v21;
      (*(v25 + 8))(v18, v19);
      (*(v14 + 8))(v11, v27);
      v23 = v20;
    }

    else
    {
      v29 = 1;
      v16 = v27;
      v23 = sub_264DC0();
      v22 = v17;
      (*(v8 + 8))(v11, v16);
    }

    *v15 = v23;
    v15[1] = v22;
  }

  return sub_3080(a1);
}

unint64_t sub_1D6940()
{
  result = qword_324B08;
  if (!qword_324B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324B08);
  }

  return result;
}

unint64_t sub_1D6994()
{
  result = qword_324B10;
  if (!qword_324B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324B10);
  }

  return result;
}

unint64_t sub_1D69E8(uint64_t a1)
{
  result = sub_1D6A10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6A10()
{
  result = qword_324B18;
  if (!qword_324B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324B18);
  }

  return result;
}

unint64_t sub_1D6AB0()
{
  result = qword_324B20;
  if (!qword_324B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324B20);
  }

  return result;
}

unint64_t sub_1D6B08()
{
  result = qword_324B28;
  if (!qword_324B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324B28);
  }

  return result;
}

unint64_t sub_1D6B60()
{
  result = qword_324B30;
  if (!qword_324B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324B30);
  }

  return result;
}

unint64_t sub_1D6BB8()
{
  result = qword_324B38;
  if (!qword_324B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324B38);
  }

  return result;
}

unint64_t sub_1D6C10()
{
  result = qword_324B40;
  if (!qword_324B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324B40);
  }

  return result;
}

unint64_t sub_1D6C68()
{
  result = qword_324B48;
  if (!qword_324B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324B48);
  }

  return result;
}

uint64_t sub_1D6CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
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
    v8 = sub_260BD0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D6D88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_260BD0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for NavigationTitleForNonRootPage()
{
  result = qword_324BA8;
  if (!qword_324BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6E74()
{
  sub_3E7AC();
  if (v0 <= 0x3F)
  {
    sub_260BD0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D6F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v28 = a2;
  v29 = sub_2EF0(&qword_324BE0, &qword_286450);
  v26 = *(v29 - 8);
  v3 = *(v26 + 64);
  __chkstk_darwin(v29);
  v5 = &v26 - v4;
  v6 = sub_2EF0(&qword_324BE8, &qword_286458);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v26 - v8;
  v10 = sub_261C90();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v2;
  if (*(v2 + 8) == 1)
  {
    if ((v15 & 1) == 0)
    {
LABEL_3:
      v16 = *(type metadata accessor for NavigationTitleForNonRootPage() + 20);
      v17 = sub_2EF0(&qword_324BF0, &qword_286460);
      v18 = sub_1D72C8();
      sub_262920();
      v19 = v26;
      v20 = v29;
      (*(v26 + 16))(v9, v5, v29);
      swift_storeEnumTagMultiPayload();
      v30 = v17;
      v31 = v18;
      swift_getOpaqueTypeConformance2();
      sub_261F80();
      return (*(v19 + 8))(v5, v20);
    }
  }

  else
  {
    v22 = *v2;

    sub_264900();
    v23 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v15, 0);
    (*(v11 + 8))(v14, v10);
    if (v30 != 1)
    {
      goto LABEL_3;
    }
  }

  v24 = sub_2EF0(&qword_324BF0, &qword_286460);
  (*(*(v24 - 8) + 16))(v9, v27, v24);
  swift_storeEnumTagMultiPayload();
  v25 = sub_1D72C8();
  v30 = v24;
  v31 = v25;
  swift_getOpaqueTypeConformance2();
  return sub_261F80();
}

unint64_t sub_1D72C8()
{
  result = qword_324BF8;
  if (!qword_324BF8)
  {
    sub_2F9C(&qword_324BF0, &qword_286460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324BF8);
  }

  return result;
}

unint64_t sub_1D7330()
{
  result = qword_324C00;
  if (!qword_324C00)
  {
    sub_2F9C(&qword_324C08, &qword_286468);
    sub_1D72C8();
    sub_2F9C(&qword_324BF0, &qword_286460);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324C00);
  }

  return result;
}

double static ListItemViewModel.recommendationsPage(sectionName:assetInfo:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a3[4];
  sub_2E18(a3, a3[3]);
  v9 = *(v8 + 8);
  v10 = sub_2606E0();
  v12 = v11;
  sub_30CC(a3, &v20);
  KeyPath = swift_getKeyPath();
  v19 = 0;
  sub_30CC(a3, a4 + 8);
  *(a4 + 48) = 0x407F400000000000;
  *(a4 + 56) = 2;
  *(a4 + 64) = 0x407F400000000000;
  *(a4 + 72) = 3;

  static ListItemMetadata.recommendationsPage(assetInfo:)(a3, a4 + 80);
  v17[3] = &type metadata for ListItemAccessoryRecommendationControls;
  v17[4] = sub_1D7610();
  v17[0] = swift_allocObject();
  sub_1D76A8(&KeyPath, v17[0] + 16);
  sub_30CC(a3, a4 + 408);
  sub_30CC(a3, v16);
  v13 = type metadata accessor for ListItemViewModel();
  CardInfo.init(with:alwaysPresentNewCardSet:)(v16, 1, a4 + *(v13 + 40));
  sub_1D7704(&KeyPath);
  *(a4 + 392) = 0;
  *(a4 + 360) = 0u;
  *(a4 + 376) = 0u;
  *a4 = 2;
  sub_82704(v17, a4 + 360);
  *(a4 + 400) = 0;
  v14 = a4 + *(v13 + 44);
  *v14 = 0xD000000000000014;
  *(v14 + 8) = 0x80000000002947B0;
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  result = 0.0;
  *(v14 + 96) = 0u;
  *(v14 + 112) = 0u;
  *(v14 + 64) = 0u;
  *(v14 + 80) = 0u;
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0u;
  *(v14 + 128) = v10;
  *(v14 + 136) = v12;
  *(v14 + 144) = 2;
  return result;
}

unint64_t sub_1D7610()
{
  result = qword_324C10;
  if (!qword_324C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324C10);
  }

  return result;
}

uint64_t sub_1D7664()
{
  sub_4054(*(v0 + 16), *(v0 + 24));
  sub_3080((v0 + 32));

  return swift_deallocObject();
}

uint64_t PaddleView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v2 = sub_2EF0(&qword_324C18, &qword_286498);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v64 = &v56[-v4];
  v5 = sub_2EF0(&qword_324C20, &qword_2864A0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v56[-v7];
  v59 = sub_2EF0(&qword_324C28, &qword_2864A8);
  v9 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v11 = &v56[-v10];
  v60 = sub_2EF0(&qword_324C30, &qword_2864B0);
  v12 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v14 = &v56[-v13];
  v58 = sub_2EF0(&qword_324C38, &qword_2864B8);
  v15 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v17 = &v56[-v16];
  v61 = sub_2EF0(&qword_324C40, &qword_2864C0);
  v18 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v63 = &v56[-v19];
  v20 = *v1;
  v62 = v1[1];
  v21 = v1[2];
  v57 = v20;
  v22 = sub_2630B0();
  if (v21)
  {
    v23 = sub_262120();
  }

  else
  {
    v23 = sub_262130();
  }

  v24 = v23;
  v25 = &v8[*(v5 + 36)];
  v26 = *(sub_2EF0(&qword_317530, &qword_26FCC0) + 28);
  v27 = enum case for Image.Scale.large(_:);
  v28 = sub_2630F0();
  (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
  *v25 = swift_getKeyPath();
  *v8 = v22;
  *(v8 + 2) = v24;
  v29 = sub_262570();
  KeyPath = swift_getKeyPath();
  sub_22148(v8, v11, &qword_324C20, &qword_2864A0);
  v31 = &v11[*(v59 + 36)];
  *v31 = KeyPath;
  v31[1] = v29;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  sub_22148(v11, v14, &qword_324C28, &qword_2864A8);
  v32 = &v14[*(v60 + 36)];
  v33 = v67;
  *v32 = v66;
  v32[1] = v33;
  v32[2] = v68;
  v34 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v36 = v35;
  v37 = &v17[*(v58 + 36)];
  v38 = v62;
  if (v62)
  {
    v39 = 256;
  }

  else
  {
    v39 = 0;
  }

  v40 = v39 | (v21 << 16) | v57;
  v41 = &v17[*(v58 + 36)];
  sub_1D7D04(v40);
  v42 = &v37[*(sub_2EF0(&qword_324C48, &qword_286528) + 36)];
  *v42 = v34;
  v42[1] = v36;
  sub_22148(v14, v17, &qword_324C30, &qword_2864B0);
  v43 = v63;
  v44 = &v63[*(v61 + 36)];
  v45 = enum case for RoundedCornerStyle.continuous(_:);
  v46 = sub_261DD0();
  (*(*(v46 - 8) + 104))(v44, v45, v46);
  v44[*(sub_2EF0(&qword_324C50, &qword_286530) + 36)] = 0;
  sub_22148(v17, v43, &qword_324C38, &qword_2864B8);
  v47 = swift_getKeyPath();
  if (v38)
  {
    v48 = v64;
    sub_2634D0();
    v49 = 0;
  }

  else
  {
    v49 = 1;
    v48 = v64;
  }

  v50 = sub_2634E0();
  (*(*(v50 - 8) + 56))(v48, v49, 1, v50);
  v51 = sub_2EF0(&qword_324C58, &qword_286568);
  v52 = v65;
  v53 = (v65 + *(v51 + 36));
  v54 = sub_2EF0(&qword_324C60, &qword_286570);
  sub_22148(v48, v53 + *(v54 + 28), &qword_324C18, &qword_286498);
  *v53 = v47;
  return sub_22148(v43, v52, &qword_324C40, &qword_2864C0);
}

uint64_t sub_1D7D04(int a1)
{
  v2 = sub_2EF0(&qword_324CD8, &qword_286760);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (&v36 - v4);
  v6 = sub_2EF0(&qword_324CE0, &qword_286768);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v36 - v8;
  v10 = sub_263390();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2EF0(&qword_31A6F0, &qword_26F6C8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v36 - v19;
  if ((a1 & 0x100) != 0)
  {
    *v5 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    v5[1] = v24;
    v25 = sub_2EF0(&qword_324CE8, &qword_286770);
    sub_1D8154(a1 & 0xFF0101, v5 + *(v25 + 44));
    v26 = v5 + *(v2 + 36);
    v27 = enum case for RoundedCornerStyle.continuous(_:);
    v28 = sub_261DD0();
    (*(*(v28 - 8) + 104))(v26, v27, v28);
    *&v26[*(sub_2EF0(&qword_324CF0, &qword_286778) + 36)] = 256;
    v29 = &qword_286760;
    sub_8198(v5, v9, &qword_324CD8, &qword_286760);
    swift_storeEnumTagMultiPayload();
    sub_8E38(&qword_31B630, &qword_31A6F0, &qword_26F6C8);
    sub_1D8B78();
    sub_261F80();
    v30 = v5;
    v31 = &qword_324CD8;
  }

  else
  {
    v21 = enum case for RoundedCornerStyle.continuous(_:);
    v22 = sub_261DD0();
    (*(*(v22 - 8) + 104))(v13, v21, v22);
    if (BYTE2(a1) >= 2u)
    {
      if (BYTE2(a1) == 2)
      {
        v32 = [objc_opt_self() tertiarySystemFillColor];
      }

      else
      {
        v32 = [objc_opt_self() systemFillColor];
      }

      v33 = v32;
      v23 = sub_262EE0();
    }

    else
    {
      v23 = sub_262FA0();
    }

    v34 = v23;
    sub_86B68(v13, v17);
    *&v17[*(v14 + 52)] = v34;
    *&v17[*(v14 + 56)] = 256;
    v29 = &qword_26F6C8;
    sub_22148(v17, v20, &qword_31A6F0, &qword_26F6C8);
    sub_8198(v20, v9, &qword_31A6F0, &qword_26F6C8);
    swift_storeEnumTagMultiPayload();
    sub_8E38(&qword_31B630, &qword_31A6F0, &qword_26F6C8);
    sub_1D8B78();
    sub_261F80();
    v30 = v20;
    v31 = &qword_31A6F0;
  }

  return sub_8E80(v30, v31, v29);
}

uint64_t sub_1D8154@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_2EF0(&qword_324D18, &qword_286788);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - v7;
  v9 = sub_2EF0(&qword_324D20, &qword_286790);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v16 = &v24 - v14;
  if ((a1 & 0x100) != 0)
  {
    sub_2634D0();
    *&v8[*(v4 + 56)] = 256;
    sub_22148(v8, v16, &qword_324D18, &qword_286788);
    (*(v5 + 56))(v16, 0, 1, v4, v17);
  }

  else
  {
    (*(v5 + 56))(&v24 - v14, 1, 1, v4, v15);
  }

  if (BYTE2(a1) > 1u)
  {
    if (BYTE2(a1) != 2)
    {
      v19 = [objc_opt_self() systemFillColor];
      goto LABEL_10;
    }

LABEL_8:
    v19 = [objc_opt_self() tertiarySystemFillColor];
LABEL_10:
    v20 = v19;
    v18 = sub_262EE0();
    goto LABEL_11;
  }

  if ((a1 & 0x100) != 0)
  {
    goto LABEL_8;
  }

  v18 = sub_262FA0();
LABEL_11:
  v21 = v18;
  sub_8198(v16, v12, &qword_324D20, &qword_286790);
  sub_8198(v12, a2, &qword_324D20, &qword_286790);
  v22 = a2 + *(sub_2EF0(&qword_324D28, &qword_286798) + 48);
  *v22 = v21;
  *(v22 + 8) = 256;

  sub_8E80(v16, &qword_324D20, &qword_286790);

  return sub_8E80(v12, &qword_324D20, &qword_286790);
}

uint64_t sub_1D83E0(uint64_t a1)
{
  v2 = sub_2EF0(&qword_324C18, &qword_286498);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_8198(a1, &v6 - v4, &qword_324C18, &qword_286498);
  return sub_261B10();
}

unint64_t sub_1D84C8()
{
  result = qword_324C68;
  if (!qword_324C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324C68);
  }

  return result;
}

unint64_t sub_1D8520()
{
  result = qword_324C70;
  if (!qword_324C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324C70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PaddleView(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = v4 - 2;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

unint64_t sub_1D8634()
{
  result = qword_324C78;
  if (!qword_324C78)
  {
    sub_2F9C(&qword_324C58, &qword_286568);
    sub_1D86EC();
    sub_8E38(&qword_324CC8, &qword_324C60, &qword_286570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324C78);
  }

  return result;
}

unint64_t sub_1D86EC()
{
  result = qword_324C80;
  if (!qword_324C80)
  {
    sub_2F9C(&qword_324C40, &qword_2864C0);
    sub_1D87A4();
    sub_8E38(&qword_324CC0, &qword_324C50, &qword_286530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324C80);
  }

  return result;
}

unint64_t sub_1D87A4()
{
  result = qword_324C88;
  if (!qword_324C88)
  {
    sub_2F9C(&qword_324C38, &qword_2864B8);
    sub_1D885C();
    sub_8E38(&qword_324CB8, &qword_324C48, &qword_286528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324C88);
  }

  return result;
}

unint64_t sub_1D885C()
{
  result = qword_324C90;
  if (!qword_324C90)
  {
    sub_2F9C(&qword_324C30, &qword_2864B0);
    sub_1D88E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324C90);
  }

  return result;
}

unint64_t sub_1D88E8()
{
  result = qword_324C98;
  if (!qword_324C98)
  {
    sub_2F9C(&qword_324C28, &qword_2864A8);
    sub_1D89A0();
    sub_8E38(&qword_317580, &qword_317588, &qword_26B7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324C98);
  }

  return result;
}

unint64_t sub_1D89A0()
{
  result = qword_324CA0;
  if (!qword_324CA0)
  {
    sub_2F9C(&qword_324C20, &qword_2864A0);
    sub_1D8A58();
    sub_8E38(&qword_317590, &qword_317530, &qword_26FCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324CA0);
  }

  return result;
}

unint64_t sub_1D8A58()
{
  result = qword_324CA8;
  if (!qword_324CA8)
  {
    sub_2F9C(&qword_324CB0, &qword_2866E8);
    sub_8E38(&qword_3239B0, &qword_3239B8, &qword_283AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324CA8);
  }

  return result;
}

unint64_t sub_1D8B24()
{
  result = qword_324CD0;
  if (!qword_324CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324CD0);
  }

  return result;
}

unint64_t sub_1D8B78()
{
  result = qword_324CF8;
  if (!qword_324CF8)
  {
    sub_2F9C(&qword_324CD8, &qword_286760);
    sub_8E38(&qword_324D00, &qword_324D08, &qword_286780);
    sub_8E38(&qword_324D10, &qword_324CF0, &qword_286778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324CF8);
  }

  return result;
}

BooksUI::ImageFilter::Environment_optional __swiftcall ImageFilter.Environment.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_301548;
  v8._object = object;
  v5 = sub_264D40(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t ImageFilter.Environment.rawValue.getter()
{
  v1 = 0x646168536B726164;
  if (*v0 == 1)
  {
    v1 = 0;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746867696ELL;
  }
}

uint64_t sub_1D8D10(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE000000000000000;
  v4 = 0x646168536B726164;
  if (v2 == 1)
  {
    v4 = 0;
  }

  else
  {
    v3 = 0xEA0000000000776FLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746867696ELL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE000000000000000;
  v8 = 0x646168536B726164;
  if (*a2 == 1)
  {
    v8 = 0;
  }

  else
  {
    v7 = 0xEA0000000000776FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746867696ELL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
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

Swift::Int sub_1D8DF8()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_1D8E8C()
{
  *v0;
  *v0;
  sub_264500();
}

Swift::Int sub_1D8F0C()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

void sub_1D8FA8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE000000000000000;
  v5 = 0x646168536B726164;
  if (v2 == 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = 0xEA0000000000776FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746867696ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

Swift::String __swiftcall ImageFilter.build()()
{
  LODWORD(v1) = *v0 | (*(v0 + 2) << 16);
  if (!(*(v0 + 2) >> 6))
  {
    v12 = sub_E9098(0, 1, 1, _swiftEmptyArrayStorage);
    v14 = *(v12 + 2);
    v13 = *(v12 + 3);
    if (v14 >= v13 >> 1)
    {
      v12 = sub_E9098((v13 > 1), v14 + 1, 1, v12);
    }

    *(v12 + 2) = v14 + 1;
    v15 = &v12[16 * v14];
    v16 = 0xE500000000000000;
    *(v15 + 4) = 0x7265766F63;
    *(v15 + 5) = 0xE500000000000000;
    v49 = v12;
    if (v1)
    {
      v17 = &off_301600;
    }

    else
    {
      v17 = &off_301650;
    }

    sub_1D9738(v17);
    if (BYTE1(v1))
    {
      if (BYTE1(v1) == 1)
      {
        v4 = 0;
        v16 = 0xE000000000000000;
      }

      else
      {
        v4 = 0x646168536B726164;
        v16 = 0xEA0000000000776FLL;
      }
    }

    else
    {
      v4 = 0x746867696ELL;
    }

    v2 = v49;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_E9098(0, *(v49 + 2) + 1, 1, v49);
    }

    v29 = *(v2 + 2);
    v28 = *(v2 + 3);
    v6 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      v2 = sub_E9098((v28 > 1), v29 + 1, 1, v2);
    }

    *(v2 + 2) = v6;
    v30 = &v2[16 * v29];
    *(v30 + 4) = v4;
    *(v30 + 5) = v16;
    if ((v1 & 0x10000) == 0)
    {
      goto LABEL_45;
    }

    v1 = 0xEA00000000006465;
    v26 = *(v2 + 3);
    v27 = v29 + 2;
    if ((v29 + 2) <= (v26 >> 1))
    {
      goto LABEL_31;
    }

    goto LABEL_39;
  }

  if (*(v0 + 2) >> 6 != 1)
  {
    v2 = sub_E9098(0, 1, 1, _swiftEmptyArrayStorage);
    v4 = *(v2 + 2);
    v18 = *(v2 + 3);
    v19 = v18 >> 1;
    v20 = v4 + 1;
    if (v18 >> 1 <= v4)
    {
      v2 = sub_E9098((v18 > 1), v4 + 1, 1, v2);
      v18 = *(v2 + 3);
      v19 = v18 >> 1;
    }

    *(v2 + 2) = v20;
    v21 = &v2[16 * v4];
    *(v21 + 4) = 0x7265766F63;
    *(v21 + 5) = 0xE500000000000000;
    v6 = v4 + 2;
    if (v19 < (v4 + 2))
    {
      v2 = sub_E9098((v18 > 1), v4 + 2, 1, v2);
    }

    *(v2 + 2) = v6;
    v22 = &v2[16 * v20];
    *(v22 + 4) = 6710384;
    *(v22 + 5) = 0xE300000000000000;
    if (v1)
    {
      if (v1 == 1)
      {
        v23 = 0;
        v1 = 0xE000000000000000;
      }

      else
      {
        v23 = 0x646168536B726164;
        v1 = 0xEA0000000000776FLL;
      }
    }

    else
    {
      v1 = 0xE500000000000000;
      v23 = 0x746867696ELL;
    }

    v31 = *(v2 + 3);
    v27 = v4 + 3;
    if ((v4 + 3) > (v31 >> 1))
    {
      v2 = sub_E9098((v31 > 1), v4 + 3, 1, v2);
    }

    goto LABEL_44;
  }

  v2 = sub_E9098(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  v5 = v3 >> 1;
  v6 = v4 + 1;
  if (v3 >> 1 <= v4)
  {
LABEL_59:
    v2 = sub_E9098((v3 > 1), v6, 1, v2);
    v3 = *(v2 + 3);
    v5 = v3 >> 1;
  }

  *(v2 + 2) = v6;
  v7 = &v2[16 * v4];
  *(v7 + 4) = 0x7265766F63;
  *(v7 + 5) = 0xE500000000000000;
  v8 = v4 + 2;
  if (v5 < (v4 + 2))
  {
    v2 = sub_E9098((v3 > 1), v4 + 2, 1, v2);
  }

  *(v2 + 2) = v8;
  v9 = &v2[16 * v6];
  *(v9 + 4) = 0x6F6F626F69647561;
  *(v9 + 5) = 0xE90000000000006BLL;
  if (v1)
  {
    if (v1 == 1)
    {
      v10 = 0;
      v11 = 0xE000000000000000;
    }

    else
    {
      v10 = 0x646168536B726164;
      v11 = 0xEA0000000000776FLL;
    }
  }

  else
  {
    v11 = 0xE500000000000000;
    v10 = 0x746867696ELL;
  }

  v24 = *(v2 + 3);
  v6 = v4 + 3;
  if ((v4 + 3) > (v24 >> 1))
  {
    v2 = sub_E9098((v24 > 1), v4 + 3, 1, v2);
  }

  *(v2 + 2) = v6;
  v25 = &v2[16 * v8];
  *(v25 + 4) = v10;
  *(v25 + 5) = v11;
  if ((v1 & 0x100) == 0)
  {
    goto LABEL_45;
  }

  v1 = 0xEA00000000006465;
  v26 = *(v2 + 3);
  v27 = v4 + 4;
  if ((v4 + 4) > (v26 >> 1))
  {
LABEL_39:
    v2 = sub_E9098((v26 > 1), v27, 1, v2);
  }

LABEL_31:
  v23 = 0x7463697274736572;
LABEL_44:
  *(v2 + 2) = v27;
  v32 = &v2[16 * v6];
  *(v32 + 4) = v23;
  *(v32 + 5) = v1;
LABEL_45:
  v33 = 0;
  v34 = *(v2 + 2);
  v35 = _swiftEmptyArrayStorage;
LABEL_46:
  v3 = &v2[16 * v33 + 40];
  while (v34 != v33)
  {
    if (v33 >= *(v2 + 2))
    {
      __break(1u);
      goto LABEL_59;
    }

    ++v33;
    v36 = *(v3 - 8);
    v1 = *v3;
    v3 += 16;
    v37 = HIBYTE(v1) & 0xF;
    if ((v1 & 0x2000000000000000) == 0)
    {
      v37 = v36 & 0xFFFFFFFFFFFFLL;
    }

    if (v37)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v6 = &v48;
        sub_2DAA4(0, v35[2] + 1, 1);
        v35 = v48;
      }

      v40 = v35[2];
      v39 = v35[3];
      v4 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        v6 = &v48;
        sub_2DAA4((v39 > 1), v40 + 1, 1);
        v35 = v48;
      }

      v35[2] = v4;
      v41 = &v35[2 * v40];
      v41[4] = v36;
      v41[5] = v1;
      goto LABEL_46;
    }
  }

  v48 = v35;
  sub_2EF0(&qword_3160B0, &qword_267D40);
  sub_8E38(&qword_3160B8, &qword_3160B0, &qword_267D40);
  v42 = sub_264340();
  v44 = v43;

  v45 = v42;
  v46 = v44;
  result._object = v46;
  result._countAndFlagsBits = v45;
  return result;
}

uint64_t sub_1D9618(uint64_t result, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(result + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  v12 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(v11 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v6 = result;
  if (!*(v11 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_2EF0(a3, a4);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return result;
  }

  v13 = *(v6 + 16);
  v14 = __OFADD__(v13, v5);
  v15 = v13 + v5;
  if (!v14)
  {
    *(v6 + 16) = v15;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D9738(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_E9098(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1D982C(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_E9AE8(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_2EF0(&qword_3160D0, &unk_270CF0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_1D9934()
{
  result = qword_324D30;
  if (!qword_324D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324D30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImageFilter(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFD)
  {
    if ((a2 + 33030146) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16252930;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16252930;
      }
    }
  }

  if ((((*(a1 + 2) >> 6) | (4 * ((*a1 >> 4) & 0xFC0 | (*a1 >> 2) | (((*(a1 + 2) >> 1) & 0x1F) << 12)))) ^ 0x7FFFFu) >= 0x7FFFD)
  {
    v4 = -1;
  }

  else
  {
    v4 = ((*(a1 + 2) >> 6) | (4 * ((*a1 >> 4) & 0xFC0 | (*a1 >> 2) | (((*(a1 + 2) >> 1) & 0x1F) << 12)))) ^ 0x7FFFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ImageFilter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33030146) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0x7FFFD)
  {
    v3 = 0;
  }

  if (a2 > 0x7FFFD)
  {
    *result = a2 + 2;
    *(result + 2) = (a2 - 524286) >> 16;
    if (v3)
    {
      v4 = ((a2 - 524286) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      v5 = ((-a2 >> 2) & 0x1FFFF) - (a2 << 17);
      *(result + 2) = ((32 * v5) & 0xFE0000) >> 16;
      *result = (16 * v5) & 0xFC00 | (4 * (v5 & 0x3F));
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unsigned __int16 *sub_1D9B34(unsigned __int16 *result)
{
  v1 = ((*result | (*(result + 2) << 16)) >> 16) & 0x3F;
  *(result + 2) &= 0x3Fu;
  return result;
}

unsigned __int16 *sub_1D9B4C(unsigned __int16 *result, int a2)
{
  v2 = (*result | (*(result + 2) << 16)) & 0x10303 | (a2 << 22);
  *result &= 0x303u;
  *(result + 2) = BYTE2(v2);
  return result;
}

double StarRatingView.init(rating:)@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  result = 0.0;
  *(a1 + 8) = xmmword_2868C0;
  *(a1 + 24) = 0x4008000000000000;
  return result;
}

uint64_t StarRatingView.body.getter()
{
  v1 = sub_262370();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2EF0(&qword_324D48, &qword_2868D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v16 - v8;
  v10 = *v0;
  v11 = v0[1];
  v12 = v0[2];
  v13 = v0[3];
  *v9 = sub_261D30();
  *(v9 + 1) = 0x4000000000000000;
  v9[16] = 0;
  v14 = sub_2EF0(&qword_324D50, &qword_2868D8);
  sub_1D9D94(&v9[*(v14 + 44)], v10, v11, v12, v13);
  sub_262340();
  sub_8E38(&qword_324D58, &qword_324D48, &qword_2868D0);
  sub_262C70();
  (*(v2 + 8))(v5, v1);
  return sub_8E80(v9, &qword_324D48, &qword_2868D0);
}

void sub_1D9D94(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v66 = a1;
  v65 = sub_2EF0(&qword_324D60, &qword_286960);
  v9 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v11 = &v53 - v10;
  v12 = sub_2EF0(&qword_324D68, &qword_286968);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v53 - v18;
  __chkstk_darwin(v20);
  v22 = &v53 - v21;
  __chkstk_darwin(v23);
  v25 = &v53 - v24;
  v26 = sub_2EF0(&qword_324D70, &unk_286970);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v30 = (&v53 - v29);
  if (a4 < a2 || a2 < a3)
  {
    v52 = swift_allocObject();
    *(v52 + 16) = 0xD000000000000027;
    *(v52 + 24) = 0x8000000000294810;
    *v30 = sub_1F458;
    v30[1] = v52;
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_316968, &qword_268A00);
    sub_8E38(&qword_316970, &qword_316968, &qword_268A00);
    sub_8E38(&qword_324D80, &qword_324D60, &qword_286960);
    sub_261F80();
    return;
  }

  v31 = floor(a2);
  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v31 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v31 < 0)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v59 = v28;
  v60 = v12;
  v61 = &v53 - v29;
  v58 = v13;
  v64 = v11;
  v68 = 0;
  v69 = v31;
  swift_getKeyPath();
  sub_2EF0(&qword_31BEA8, &qword_271FD0);
  sub_C092C();
  v63 = v25;
  sub_2633B0();
  v67 = 0;
  v32 = 0;
  v62 = 0;
  v33 = 0;
  v34 = 0;
  v35 = a2 - v31;
  if (v35 > 0.0)
  {
    v36 = sub_2630B0();
    v33 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    v34 = v37;
    v38 = swift_allocObject();
    v38[2] = a2;
    v38[3] = a3;
    v38[4] = a4;
    v38[5] = a5;
    v38[6] = v35;
    v67 = v36;

    v62 = v38;

    v32 = sub_1DA80C;
  }

  v39 = a4 - a2;
  if (COERCE__INT64(fabs(a4 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

  if (v39 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v39 < 9.22337204e18)
  {
    if ((v39 & 0x8000000000000000) == 0)
    {
      v68 = 0;
      v69 = v39;
      v54 = v19;
      v40 = v16;
      v41 = v32;
      swift_getKeyPath();
      v57 = v22;
      sub_2633B0();
      v42 = v58;
      v43 = *(v58 + 16);
      v44 = v33;
      v45 = v60;
      v43(v19, v63, v60);
      v43(v40, v22, v45);
      v46 = v64;
      v43(v64, v19, v45);
      v47 = sub_2EF0(&qword_324D78, &qword_286998);
      v48 = (v46 + *(v47 + 48));
      v49 = v67;
      *v48 = v67;
      v48[1] = v41;
      v48[2] = v62;
      v48[3] = v44;
      v48[4] = v34;
      v43((v46 + *(v47 + 64)), v40, v45);
      v55 = v44;
      v56 = v41;
      sub_1DA70C(v49);
      v50 = *(v42 + 8);
      v50(v40, v45);
      sub_1DA74C(v49);
      v50(v54, v45);
      v51 = v64;
      sub_1DA78C(v64, v61);
      swift_storeEnumTagMultiPayload();
      sub_2EF0(&qword_316968, &qword_268A00);
      sub_8E38(&qword_316970, &qword_316968, &qword_268A00);
      sub_8E38(&qword_324D80, &qword_324D60, &qword_286960);
      sub_261F80();
      sub_1DA74C(v67);
      sub_8E80(v51, &qword_324D60, &qword_286960);
      v50(v57, v45);
      v50(v63, v45);
      return;
    }

    goto LABEL_22;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_1DA514@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2630B0();
  *a1 = result;
  return result;
}

double sub_1DA554@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2630B0();
  sub_261420();
  sub_261420();
  sub_263580();
  sub_2613A0();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  result = *&v8;
  *(a1 + 40) = v8;
  *(a1 + 56) = 0;
  return result;
}

uint64_t sub_1DA630@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2630B0();
  *a1 = result;
  return result;
}

uint64_t sub_1DA674()
{
  sub_2F9C(&qword_324D48, &qword_2868D0);
  sub_8E38(&qword_324D58, &qword_324D48, &qword_2868D0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1DA70C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DA74C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DA78C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_324D60, &qword_286960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1DA80C@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  return sub_1DA554(a1);
}

uint64_t sub_1DA81C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t String.sizedURLFromTemplatedURL(cropCode:size:contentsScale:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D2>)
{
  v50 = a1;
  v13 = sub_2EF0(&qword_322C70, &qword_272AD0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v45 - v15;
  sub_2649D0();
  v19 = round(v18);
  v55 = a3;
  v56 = a4;
  v53 = 8222587;
  v54 = 0xE300000000000000;
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v46 = a3;
  v20 = round(v17);
  v6 = 8217467;
  v51 = v19;
  v51 = sub_264EB0();
  v52 = v21;
  sub_10A84();
  v7 = &type metadata for String;
  v22 = sub_264AA0();
  v24 = v23;

  v55 = v22;
  v56 = v24;
  v53 = 8218747;
  v54 = 0xE300000000000000;
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_9;
  }

  v47 = a4;
  v49 = a5;
  v51 = v20;
  v51 = sub_264EB0();
  v52 = v25;
  v26 = sub_264AA0();
  v27 = a2;
  v29 = v28;

  v55 = v26;
  v56 = v29;
  v53 = 8217467;
  v54 = 0xE300000000000000;
  v51 = v50;
  v52 = v27;
  v48 = v27;
  v30 = sub_264AA0();
  v32 = v31;

  v55 = v30;
  v56 = v32;
  v53 = 8218235;
  v54 = 0xE300000000000000;
  v51 = 6778986;
  v52 = 0xE300000000000000;
  sub_264AA0();

  sub_260050();

  v7 = sub_260060();
  v6 = *(v7 - 1);
  if ((*(v6 + 48))(v16, 1, v7) != 1)
  {
    v43 = v49;
    (*(v6 + 32))(v49, v16, v7);
    v42 = 0;
    return (*(v6 + 56))(v43, v42, 1, v7);
  }

  sub_17EBC(v16);
  if (qword_315878 != -1)
  {
    goto LABEL_20;
  }

LABEL_9:
  v33 = sub_260D50();
  sub_B080(v33, qword_316018);
  v34 = v47;

  v35 = v48;

  v36 = sub_260D30();
  v37 = sub_2648F0();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v38 = 136315906;
    *(v38 + 4) = sub_191368(v46, v34, &v55);
    *(v38 + 12) = 2080;
    v39 = sub_2649C0();
    v41 = sub_191368(v39, v40, &v55);

    *(v38 + 14) = v41;
    *(v38 + 22) = 2048;
    *(v38 + 24) = a6;
    *(v38 + 32) = 2080;
    *(v38 + 34) = sub_191368(v50, v35, &v55);
    _os_log_impl(&dword_0, v36, v37, "Invalid templated URL: %s with size: %s, contentsScale: %f, cropCode: %s", v38, 0x2Au);
    swift_arrayDestroy();
  }

  v42 = 1;
  v43 = v49;
  return (*(v6 + 56))(v43, v42, 1, v7);
}

uint64_t sub_1DAE00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_316C00, &qword_26A520);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v16 - v11);
  sub_186994(v2, &v16 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1DEF58(v12, a1, type metadata accessor for ColorConstants);
  }

  v14 = *v12;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t ShelfBackgroundViewModel.Externals.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_3080(a1);
  *a2 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  return swift_storeEnumTagMultiPayload();
}

uint64_t ShelfBackgroundViewModel.init(kind:ignoreShelf:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  *(a3 + 8) = *a1;
  *(a3 + 16) = v4;
  *a3 = a2;
  v5 = *(type metadata accessor for ShelfBackgroundViewModel(0) + 24);
  *(a3 + v5) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DB0D0()
{
  v0 = type metadata accessor for ShelfBackgroundViewModel(0);
  sub_B600(v0, qword_324D88);
  v1 = sub_B080(v0, qword_324D88);
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *v1 = 0;
  v2 = *(v0 + 24);
  *(v1 + v2) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static ShelfBackgroundViewModel.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_315AD0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ShelfBackgroundViewModel(0);
  v3 = sub_B080(v2, qword_324D88);
  return sub_1DB288(v3, a1, type metadata accessor for ShelfBackgroundViewModel);
}

unint64_t ShelfBackgroundViewModel.kind.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  v3 = *(v1 + 16);
  *(a1 + 8) = v3;
  return sub_1DB208(v2, v3);
}

unint64_t sub_1DB208(unint64_t result, char a2)
{
  if (a2 == 2 || a2 == 1)
  {
  }

  if (!a2)
  {
    return sub_1DB22C(result);
  }

  return result;
}

unint64_t sub_1DB22C(unint64_t result)
{
  if (result >= 5)
  {
  }

  return result;
}

uint64_t sub_1DB288(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DB310(char a1, uint64_t a2)
{
  v5 = type metadata accessor for ColorConstants.Environment(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 8) > 1u)
  {
    if (*(v2 + 8) != 2)
    {
LABEL_11:
      v13 = sub_262FA0();
      return sub_2613B0();
    }

    swift_getAtKeyPath();
    v12 = v13;
  }

  else
  {
    if (!*(v2 + 8))
    {
      if (*v2)
      {
        v13 = *v2;
LABEL_10:
        sub_1DB288(a2, v8, type metadata accessor for ColorConstants.Environment);
        v9 = sub_1DB504();
        v10 = sub_261180();
        (*(*(v10 - 8) + 8))(v8, v10);
        return v9;
      }

      if (a1)
      {
        v13 = 0;
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    v13 = *v2;
  }

  return sub_2613B0();
}

uint64_t sub_1DB484()
{
  v1 = *v0;
  if (*(v0 + 8) > 1u)
  {
    if (*(v0 + 8) == 2)
    {
      v4 = *v0;
      return sub_1DBC1C();
    }
  }

  else if (*(v0 + 8))
  {
    v3 = *v0;
    return sub_1DBC1C();
  }

  sub_262FA0();
  return sub_2613B0();
}

uint64_t sub_1DB504()
{
  v1 = sub_262F00();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261180();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v10 = __chkstk_darwin(v6);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v0;
  if (*v0 <= 1)
  {
    if (!v13)
    {
      v27 = enum case for ColorScheme.light(_:);
      v28 = v7[13];
      v29 = v9;
      (v28)(v12, enum case for ColorScheme.light(_:), v9, v10);
      v30 = sub_261170();
      v31 = v7[1];
      v32 = v29;
      v31(v12, v29);
      v16 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
      if ((v30 & 1) == 0)
      {
        v33 = sub_263000();

        v16 = v33;
      }

      v28(v12, v27, v32);

      v34 = sub_261170();
      v31(v12, v32);
      v23 = sub_262F80();
      if (v34)
      {
        v35 = sub_263000();

        v23 = v35;
      }

      goto LABEL_12;
    }

    if (v13 == 1)
    {
      v17 = enum case for Color.RGBColorSpace.sRGB(_:);
      v18 = *(v2 + 104);
      (v18)(v5, enum case for Color.RGBColorSpace.sRGB(_:), v1, v10);
      v16 = sub_263060();
      v18(v5, v17, v1);

      goto LABEL_11;
    }

LABEL_18:
    v36 = *v0;
    v37[1] = sub_263040();
    return sub_2613B0();
  }

  if (v13 == 2)
  {
    v19 = enum case for Color.RGBColorSpace.sRGB(_:);
    v20 = *(v2 + 104);
    (v20)(v5, enum case for Color.RGBColorSpace.sRGB(_:), v1, v10);
    v16 = sub_263060();
    v20(v5, v19, v1);

    goto LABEL_11;
  }

  if (v13 == 3)
  {
    v21 = enum case for Color.RGBColorSpace.sRGB(_:);
    v22 = *(v2 + 104);
    (v22)(v5, enum case for Color.RGBColorSpace.sRGB(_:), v1, v10);
    v16 = sub_263060();
    v22(v5, v21, v1);

    goto LABEL_11;
  }

  if (v13 != 4)
  {
    goto LABEL_18;
  }

  v14 = enum case for Color.RGBColorSpace.sRGB(_:);
  v15 = *(v2 + 104);
  (v15)(v5, enum case for Color.RGBColorSpace.sRGB(_:), v1, v10);
  v16 = sub_263060();
  v15(v5, v14, v1);

LABEL_11:
  v23 = sub_263060();
LABEL_12:
  sub_2EF0(&qword_3205C0, &qword_27C958);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_269100;
  *(v24 + 32) = v16;
  *(v24 + 40) = v23;

  sub_263700();
  sub_263710();
  sub_263470();
  sub_261590();
  v25 = sub_2613B0();

  return v25;
}

BOOL ShelfBackgroundViewModel.BackgroundKind.requiresBlendForButtons.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 >= 3)
  {
    v3 = 3;
  }

  else
  {
    sub_1DB208(v1, v2);
    v3 = v2;
  }

  sub_1DDE58(v1, v3);
  sub_1DDE58(0, 3);
  return v2 < 3;
}

uint64_t ShelfBackgroundViewModel.BackgroundKind.requiresBlendForText.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 > 2)
  {
    sub_1DDE58(v1, 3);
    v4 = 3;
    goto LABEL_5;
  }

  sub_1DB208(v1, v2);
  sub_1DDE58(v1, v2);
  sub_1DDE58(0, 3);
  if (!v2)
  {
    if (v1)
    {
      sub_1DB208(v1, 0);
      sub_1DB22C(v1);
      sub_1DB22C(v1);
      sub_1DDE7C(v1);
      sub_1DDE7C(0);
      sub_1DDE58(v1, 0);
      sub_1DDE58(0, 0);
      v3 = v1;
      goto LABEL_8;
    }

    sub_1DDE7C(0);
    sub_1DDE7C(0);
    sub_1DDE58(0, 0);
    sub_1DDE58(0, 0);
    v4 = 0;
LABEL_5:
    sub_1DDE58(0, v4);
    return 0;
  }

  sub_1DB208(v1, v2);
  sub_1DDE58(v1, v2);
  v3 = 0;
LABEL_8:
  sub_1DDE58(v3, 0);
  return 1;
}

uint64_t sub_1DBC1C()
{
  v0 = sub_262F00();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_2EF0(&qword_324FA0, &unk_2871C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v17[-v7];
  sub_2EF0(&qword_3205C0, &qword_27C958);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_269100;
  v10 = enum case for Color.RGBColorSpace.sRGB(_:);
  v11 = *(v1 + 104);
  v11(v4, enum case for Color.RGBColorSpace.sRGB(_:), v0);
  *(v9 + 32) = sub_263060();
  v11(v4, v10, v0);
  *(v9 + 40) = sub_263060();
  sub_263700();
  sub_263710();
  sub_263470();
  sub_261590();
  v12 = *(v5 + 36);
  v13 = enum case for BlendMode.overlay(_:);
  v14 = sub_263640();
  (*(*(v14 - 8) + 104))(&v8[v12], v13, v14);
  v15 = v18;
  *v8 = *&v17[8];
  *(v8 + 1) = v15;
  *(v8 + 4) = v19;
  sub_8E38(&qword_324FA8, &qword_324FA0, &unk_2871C0);
  return sub_2613B0();
}

uint64_t sub_1DBEC4(uint64_t a1)
{
  v3 = sub_261180();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ColorConstants.Environment(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  if (*(v1 + 8) > 1u)
  {
    if (*(v1 + 8) != 2)
    {
LABEL_8:
      sub_1DB288(a1, v11, type metadata accessor for ColorConstants.Environment);
      (*(v4 + 104))(v7, enum case for ColorScheme.dark(_:), v3);
      v13 = sub_261170();
      v21 = *(v4 + 8);
      v21(v7, v3);
      v21(v11, v3);
      return v13 & 1;
    }

    swift_getAtKeyPath();
    *&v14 = Color.rgbaComponents.getter();
    v16 = v15;
    v28 = v17;
    v29 = v14;

    v18 = v16 * 255.0 * (v16 * 255.0 * 0.587);
    *&v19.f64[0] = v28;
    *&v19.f64[1] = v29;
    v20 = vmulq_f64(v19, vdupq_n_s64(0x406FE00000000000uLL));
LABEL_10:
    v26 = vmulq_f64(v20, vmulq_f64(v20, xmmword_26BA40));
    v13 = sqrt(v26.f64[0] + v26.f64[1] + v18) < 205.0;
    return v13 & 1;
  }

  if (*(v1 + 8))
  {
LABEL_9:
    v22 = *v1;
    v23 = Color.rgbaComponents.getter();
    v18 = v24 * 255.0 * (v24 * 255.0 * 0.587);
    v25.f64[1] = v23;
    v20 = vmulq_f64(v25, vdupq_n_s64(0x406FE00000000000uLL));
    goto LABEL_10;
  }

  if ((v12 - 1) >= 4)
  {
    if (!v12)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v13 = 1;
  return v13 & 1;
}

uint64_t ShelfBackgroundViewModel.isDark(colorConstants:)(uint64_t a1)
{
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  sub_1DB208(v4, v5);
  LOBYTE(a1) = sub_1DBEC4(a1);
  sub_1DDE58(v4, v5);
  return a1 & 1;
}

uint64_t sub_1DC1A4()
{
  v1 = 1684957547;
  if (*v0 != 1)
  {
    v1 = 0x6C616E7265747865;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x685365726F6E6769;
  }
}

uint64_t sub_1DC204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DED50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DC22C(uint64_t a1)
{
  v2 = sub_1DE060();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1DC268(uint64_t a1)
{
  v2 = sub_1DE060();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ShelfBackgroundViewModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for ShelfBackgroundViewModel.Externals(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_324DA0, &unk_286A30);
  v8 = *(v7 - 8);
  v30 = v7;
  v31 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = type metadata accessor for ShelfBackgroundViewModel(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_1DE060();
  v29 = v11;
  v17 = v32;
  sub_265120();
  if (v17)
  {
    return sub_3080(a1);
  }

  v32 = a1;
  v26 = v6;
  v27 = v15;
  v38 = 0;
  sub_2EF0(&qword_316BD8, &qword_268BC0);
  sub_8E38(&qword_316BE0, &qword_316BD8, &qword_268BC0);
  v18 = v29;
  v19 = v30;
  sub_264DB0();
  v20 = v27;
  *v27 = v37 & 1;
  v36 = 1;
  sub_1DE0B4();
  sub_264DF0();
  v21 = v31;
  v22 = v34;
  *(v20 + 8) = v33;
  *(v20 + 16) = v22;
  v35 = 2;
  sub_1DE3B8(&qword_324DB8, type metadata accessor for ShelfBackgroundViewModel.Externals);
  v23 = v26;
  sub_264DF0();
  (*(v21 + 8))(v18, v19);
  sub_1DEF58(v23, v20 + *(v12 + 24), type metadata accessor for ShelfBackgroundViewModel.Externals);
  sub_1DB288(v20, v28, type metadata accessor for ShelfBackgroundViewModel);
  sub_3080(v32);
  return sub_1DE108(v20);
}

Swift::Int sub_1DC6B4()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_1DC760()
{
  *v0;
  *v0;
  sub_264500();
}

Swift::Int sub_1DC7F8()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_1DC8A0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DEE74(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1DC8D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEF746E6569646172;
  v5 = 0x47746C7561666564;
  if (v2 != 1)
  {
    v5 = 0xD00000000000001ELL;
    v4 = 0x800000000028FDE0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DC938(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x47746C7561666564;
  v4 = 0xEF746E6569646172;
  v5 = 0x800000000028FDE0;
  if (v2 != 1)
  {
    v3 = 0xD00000000000001ELL;
    v4 = 0x800000000028FDE0;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 1701736302;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 0x47746C7561666564;
  if (*a2 == 1)
  {
    v5 = 0xEF746E6569646172;
  }

  else
  {
    v8 = 0xD00000000000001ELL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_264F10();
  }

  return v11 & 1;
}

uint64_t sub_1DCAA4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x61745364696C6F73;
  v4 = 0xEB00000000636974;
  if (v2 != 1)
  {
    v3 = 0x6E794464696C6F73;
    v4 = 0xEC00000063696D61;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x746E656964617267;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x61745364696C6F73;
  v8 = 0xEB00000000636974;
  if (*a2 != 1)
  {
    v7 = 0x6E794464696C6F73;
    v8 = 0xEC00000063696D61;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x746E656964617267;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
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

Swift::Int sub_1DCBC8()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_1DCC7C()
{
  *v0;
  *v0;
  sub_264500();
}

Swift::Int sub_1DCD1C()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_1DCDCC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DEEC0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1DCDFC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEB00000000636974;
  v5 = 0x61745364696C6F73;
  if (v2 != 1)
  {
    v5 = 0x6E794464696C6F73;
    v4 = 0xEC00000063696D61;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746E656964617267;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DCE6C()
{
  v1 = 0x61745364696C6F73;
  if (*v0 != 1)
  {
    v1 = 0x6E794464696C6F73;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E656964617267;
  }
}

uint64_t sub_1DCED8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DEEC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCF00(uint64_t a1)
{
  v2 = sub_1DE20C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1DCF3C(uint64_t a1)
{
  v2 = sub_1DE20C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ShelfBackgroundViewModel.BackgroundKind.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v68 = a2;
  v4 = sub_2EF0(&qword_324DC0, &unk_286A40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v57 - v7;
  v9 = sub_264C00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_30CC(a1, v65);
  sub_1DE164();
  sub_1DE1B8();
  sub_264660();
  if (!v2)
  {
    KeyPath = v64;
    if (v64)
    {
      if (v64 == 1)
      {
        KeyPath = 0;
        v18 = 0;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        v18 = 2;
      }
    }

    else
    {
      v18 = 3;
    }

    goto LABEL_15;
  }

  v61 = v2;
  v60 = v4;
  v59 = v5;
  v15 = a1[3];
  v14 = a1[4];
  v62 = a1;
  sub_2E18(a1, v15);
  v16 = sub_1DE20C();
  sub_265120();
  v58 = v8;
  v19 = sub_264E00();
  v20 = (2 * *(v19 + 16)) | 1;
  v65[0] = v19;
  v65[1] = v19 + 32;
  v66 = 0;
  v67 = v20;
  v21 = sub_AFAC();
  if (v21 == 3 || v66 != v67 >> 1)
  {
    v24 = v60;
    v25 = v58;
    sub_264D60();
    sub_264BF0();
    v26 = sub_264C10();
    swift_allocError();
    v28 = v27;
    v29 = *(sub_2EF0(&qword_315CD0, &qword_266E00) + 48);
    *v28 = &type metadata for ShelfBackgroundViewModel.BackgroundKind;
    (*(v10 + 16))(&v28[v29], v13, v9);
    (*(*(v26 - 8) + 104))(v28, enum case for DecodingError.typeMismatch(_:), v26);
    swift_willThrow();

    (*(v59 + 8))(v25, v24);
    (*(v10 + 8))(v13, v9);
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = v21;
    if (!v21)
    {
      v63 = 0;
      sub_1DE260();
      v33 = v60;
      v34 = v58;
      sub_264DF0();
      (*(v59 + 8))(v34, v33);

      swift_unknownObjectRelease();
      KeyPath = v64;
LABEL_26:
      a1 = v62;
LABEL_15:
      v31 = v68;
      *v68 = KeyPath;
      *(v31 + 8) = v18;
      v30 = a1;
      return sub_3080(v30);
    }

    v22 = v58;
    if (v21 == 1)
    {
      LOBYTE(v64) = 1;
      v23 = sub_264DC0();
      v38 = Color.init(hexString:)(v23, v37);
      if (v38)
      {
        v39 = v38;
        (*(v59 + 8))(v22, v60);

        swift_unknownObjectRelease();
        KeyPath = v39;
        goto LABEL_26;
      }

      v45 = sub_264C10();
      swift_allocError();
      v46 = v22;
      v48 = v47;
      v49 = v60;
      v50 = sub_264D60();
      sub_2EF0(&qword_31D510, &qword_286A50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_267D30;
      *(inited + 56) = &type metadata for ShelfBackgroundViewModel.BackgroundKind.CodingKeys;
      *(inited + 64) = v16;
      *(inited + 32) = 1;
      v64 = v50;
      sub_1D95C8(inited);
    }

    else
    {
      LOBYTE(v64) = 2;
      v35 = sub_264DC0();
      if (qword_315AD8 != -1)
      {
        v55 = v35;
        v56 = v36;
        swift_once();
        v35 = v55;
        v36 = v56;
      }

      v40 = qword_354040;
      if (*(qword_354040 + 16))
      {
        v41 = sub_D410(v35, v36);
        v43 = v42;

        if (v43)
        {
          v44 = *(*(v40 + 56) + 8 * v41);

          (*(v59 + 8))(v58, v60);
          swift_unknownObjectRelease();
          KeyPath = v44;
          goto LABEL_26;
        }
      }

      else
      {
      }

      v45 = sub_264C10();
      swift_allocError();
      v48 = v52;
      v49 = v60;
      v46 = v58;
      v53 = sub_264D60();
      sub_2EF0(&qword_31D510, &qword_286A50);
      v54 = swift_initStackObject();
      *(v54 + 16) = xmmword_267D30;
      *(v54 + 56) = &type metadata for ShelfBackgroundViewModel.BackgroundKind.CodingKeys;
      *(v54 + 64) = v16;
      *(v54 + 32) = 2;
      v64 = v53;
      sub_1D95C8(v54);
    }

    sub_264BF0();
    (*(*(v45 - 8) + 104))(v48, enum case for DecodingError.dataCorrupted(_:), v45);
    swift_willThrow();

    (*(v59 + 8))(v46, v49);
    swift_unknownObjectRelease();
  }

  v30 = v62;
  return sub_3080(v30);
}

uint64_t sub_1DD7CC@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() secondarySystemBackgroundColor];
  result = sub_263070();
  *a1 = result;
  return result;
}

Swift::Int sub_1DD82C()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_1DD8F4()
{
  *v0;
  *v0;
  *v0;
  sub_264500();
}

Swift::Int sub_1DD9A8()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_1DDA6C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DEF0C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1DDA9C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x746C7561666564;
  v5 = 0xE400000000000000;
  v6 = 1818322292;
  v7 = 0xE300000000000000;
  v8 = 6579570;
  if (v2 != 3)
  {
    v8 = 1702194274;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6B63616C62;
    v3 = 0xE500000000000000;
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

uint64_t ShelfBackgroundViewModel.BackgroundKind.Gradient.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_30CC(a1, v14);
  sub_1DE2B8();
  sub_1DE30C();
  sub_264660();
  if (v2)
  {
    sub_30CC(a1, v14);
    v5 = sub_2644F0();
    v7 = Color.init(hexString:)(v5, v6);
    if (v7)
    {
      v8 = v7;

      *a2 = v8;
    }

    else
    {
      v9 = sub_264C10();
      swift_allocError();
      v11 = v10;
      v12 = a1[4];
      sub_2E18(a1, a1[3]);
      sub_2650E0();
      sub_264BF0();
      (*(*(v9 - 8) + 104))(v11, enum case for DecodingError.dataCorrupted(_:), v9);
      swift_willThrow();
    }
  }

  else
  {
    *a2 = v14[47];
  }

  return sub_3080(a1);
}

uint64_t _s7BooksUI24ShelfBackgroundViewModelV0D4KindO8GradientO2eeoiySbAG_AGtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 <= 1)
  {
    if (v2)
    {
      if (v2 != 1)
      {
LABEL_17:
        if (v3 >= 5)
        {
          sub_1DB22C(*a2);
          sub_1DB22C(v2);
          v4 = sub_262F10();
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      if (v3 == 1)
      {
        v2 = 1;
        v4 = 1;
        goto LABEL_19;
      }
    }

    else if (!v3)
    {
      v2 = 0;
      v4 = 1;
      goto LABEL_19;
    }

LABEL_18:
    sub_1DB22C(*a2);
    sub_1DB22C(v2);
    v4 = 0;
    goto LABEL_19;
  }

  if (v2 == 2)
  {
    if (v3 == 2)
    {
      v4 = 1;
      v2 = 2;
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v2 == 3)
  {
    if (v3 == 3)
    {
      v4 = 1;
      v2 = 3;
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v2 != 4)
  {
    goto LABEL_17;
  }

  if (v3 != 4)
  {
    goto LABEL_18;
  }

  v4 = 1;
  v2 = 4;
LABEL_19:
  sub_1DDE7C(v2);
  sub_1DDE7C(v3);
  return v4 & 1;
}

unint64_t sub_1DDE58(unint64_t result, char a2)
{
  if (a2 == 2 || a2 == 1)
  {
  }

  if (!a2)
  {
    return sub_1DDE7C(result);
  }

  return result;
}

unint64_t sub_1DDE7C(unint64_t result)
{
  if (result >= 5)
  {
  }

  return result;
}

uint64_t _s7BooksUI24ShelfBackgroundViewModelV0D4KindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (v5 == 2)
      {
        sub_264AE0();
        sub_1DB208(v4, 2);
        sub_1DB208(v2, 2);
        LOBYTE(v5) = sub_264AD0();
        sub_1DDE58(v2, 2);
        sub_1DDE58(v4, 2);
        return v5 & 1;
      }
    }

    else if (v5 == 3 && v4 == 0)
    {
      sub_1DDE58(*a1, 3);
      sub_1DDE58(0, 3);
      LOBYTE(v5) = 1;
      return v5 & 1;
    }

LABEL_14:
    sub_1DB208(*a2, *(a2 + 8));
    sub_1DB208(v2, v3);
    sub_1DDE58(v2, v3);
    sub_1DDE58(v4, v5);
    LOBYTE(v5) = 0;
    return v5 & 1;
  }

  if (*(a1 + 8))
  {
    if (v5 == 1)
    {
      sub_1DB208(*a2, 1);
      sub_1DB208(v2, 1);
      LOBYTE(v5) = sub_262F10();
      sub_1DDE58(v2, 1);
      sub_1DDE58(v4, 1);
      return v5 & 1;
    }

    goto LABEL_14;
  }

  if (*(a2 + 8))
  {
    goto LABEL_14;
  }

  v8 = *a2;
  v9 = v2;
  sub_1DB208(v4, 0);
  sub_1DB208(v2, 0);
  sub_1DB208(v4, 0);
  sub_1DB208(v2, 0);
  v5 = _s7BooksUI24ShelfBackgroundViewModelV0D4KindO8GradientO2eeoiySbAG_AGtFZ_0(&v9, &v8);
  sub_1DDE58(v2, 0);
  sub_1DDE58(v4, 0);
  sub_1DDE58(v4, 0);
  sub_1DDE58(v2, 0);
  return v5 & 1;
}

unint64_t sub_1DE060()
{
  result = qword_324DA8;
  if (!qword_324DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324DA8);
  }

  return result;
}

unint64_t sub_1DE0B4()
{
  result = qword_324DB0;
  if (!qword_324DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324DB0);
  }

  return result;
}

uint64_t sub_1DE108(uint64_t a1)
{
  v2 = type metadata accessor for ShelfBackgroundViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DE164()
{
  result = qword_324DC8;
  if (!qword_324DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324DC8);
  }

  return result;
}

unint64_t sub_1DE1B8()
{
  result = qword_324DD0;
  if (!qword_324DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324DD0);
  }

  return result;
}

unint64_t sub_1DE20C()
{
  result = qword_324DD8;
  if (!qword_324DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324DD8);
  }

  return result;
}

unint64_t sub_1DE260()
{
  result = qword_324DE0;
  if (!qword_324DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324DE0);
  }

  return result;
}

unint64_t sub_1DE2B8()
{
  result = qword_324DE8;
  if (!qword_324DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324DE8);
  }

  return result;
}

unint64_t sub_1DE30C()
{
  result = qword_324DF0;
  if (!qword_324DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324DF0);
  }

  return result;
}

uint64_t sub_1DE360(uint64_t a1)
{
  result = sub_1DE3B8(&qword_324DF8, type metadata accessor for ShelfBackgroundViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DE3B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DE448(uint64_t a1)
{
  result = sub_1DE3B8(&qword_324E30, type metadata accessor for ShelfBackgroundViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DE4CC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v10 = type metadata accessor for ShelfBackgroundViewModel.Externals(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1DE58C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for ShelfBackgroundViewModel.Externals(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1DE62C()
{
  sub_22994();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ShelfBackgroundViewModel.Externals(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1DE6CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316F68, &unk_269C50);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DE758(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316F68, &unk_269C50);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1DE7D4()
{
  sub_C4F38();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1DE840(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DE858(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t getEnumTagSinglePayload for HVStackKind(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for HVStackKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DE900(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1DE928(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DE980(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void *sub_1DE9D0(void *result, int a2)
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

unint64_t sub_1DEA44()
{
  result = qword_324F60;
  if (!qword_324F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324F60);
  }

  return result;
}

unint64_t sub_1DEA9C()
{
  result = qword_324F68;
  if (!qword_324F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324F68);
  }

  return result;
}

unint64_t sub_1DEAF0(uint64_t a1)
{
  result = sub_1DE164();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DEB1C()
{
  result = qword_324F70;
  if (!qword_324F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324F70);
  }

  return result;
}

unint64_t sub_1DEB70(uint64_t a1)
{
  result = sub_1DE2B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DEB9C()
{
  result = qword_324F78;
  if (!qword_324F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324F78);
  }

  return result;
}

unint64_t sub_1DEBF4()
{
  result = qword_324F80;
  if (!qword_324F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324F80);
  }

  return result;
}

unint64_t sub_1DEC4C()
{
  result = qword_324F88;
  if (!qword_324F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324F88);
  }

  return result;
}

unint64_t sub_1DECA4()
{
  result = qword_324F90;
  if (!qword_324F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324F90);
  }

  return result;
}

unint64_t sub_1DECFC()
{
  result = qword_324F98;
  if (!qword_324F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324F98);
  }

  return result;
}

uint64_t sub_1DED50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x685365726F6E6769 && a2 == 0xEB00000000666C65;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C616E7265747865 && a2 == 0xE900000000000073)
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

uint64_t sub_1DEE74(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_3016A0;
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

uint64_t sub_1DEEC0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_301708;
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

uint64_t sub_1DEF0C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_301770;
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

uint64_t sub_1DEF58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void __swiftcall GridItemMetadataTitleWithSubtitle.init(title:subtitle:titleLines:subtitleLines:)(BooksUI::GridItemMetadataTitleWithSubtitle *__return_ptr retstr, Swift::String title, Swift::String_optional subtitle, Swift::Int titleLines, Swift::Int subtitleLines)
{
  retstr->title = title;
  retstr->subtitle = subtitle;
  retstr->titleLines = titleLines;
  retstr->subtitleLines = subtitleLines;
}

uint64_t sub_1DEFD4()
{
  v1 = 0x656C746974;
  v2 = 0x6E694C656C746974;
  if (*v0 != 2)
  {
    v2 = 0x656C746974627573;
  }

  if (*v0)
  {
    v1 = 0x656C746974627573;
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

uint64_t sub_1DF04C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF740(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF074(uint64_t a1)
{
  v2 = sub_1DF370();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1DF0B0(uint64_t a1)
{
  v2 = sub_1DF370();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GridItemMetadataTitleWithSubtitle.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2EF0(&qword_324FB0, &qword_2871D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_1DF370();
  sub_265120();
  if (v2)
  {
    return sub_3080(a1);
  }

  v27 = 0;
  v11 = sub_264DC0();
  v13 = v12;
  v23 = v11;
  v26 = 1;
  v14 = sub_264D70();
  v16 = v15;
  v22 = v14;
  v25 = 2;
  v21 = sub_264DE0();
  v24 = 3;
  v18 = sub_264DE0();
  (*(v6 + 8))(v9, v5);
  v19 = v22;
  *a2 = v23;
  a2[1] = v13;
  a2[2] = v19;
  a2[3] = v16;
  a2[4] = v21;
  a2[5] = v18;

  sub_3080(a1);
}

unint64_t sub_1DF370()
{
  result = qword_324FB8;
  if (!qword_324FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324FB8);
  }

  return result;
}

uint64_t GridItemMetadataTitleWithSubtitle.content(contextActionMenuView:)@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = sub_2EF0(&qword_324FC0, &qword_2871D8);
  v6 = a1 + v5[11];
  *v6 = v4;
  *(v6 + 1) = v3;
  v7 = *(v1 + 2);
  *(v6 + 1) = *(v1 + 1);
  *(v6 + 2) = v7;
  *a1 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v8 = v5[9];
  *(a1 + v8) = swift_getKeyPath();
  sub_2EF0(&qword_316C08, &unk_26AEF0);
  swift_storeEnumTagMultiPayload();
  v9 = v5[10];
  *(a1 + v9) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
}

unint64_t sub_1DF500(uint64_t a1)
{
  result = sub_1DF528();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DF528()
{
  result = qword_324FC8;
  if (!qword_324FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324FC8);
  }

  return result;
}

unint64_t sub_1DF5C4()
{
  result = qword_325018;
  if (!qword_325018)
  {
    sub_2F9C(&qword_324FC0, &qword_2871D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325018);
  }

  return result;
}

unint64_t sub_1DF63C()
{
  result = qword_325020;
  if (!qword_325020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325020);
  }

  return result;
}

unint64_t sub_1DF694()
{
  result = qword_325028;
  if (!qword_325028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325028);
  }

  return result;
}

unint64_t sub_1DF6EC()
{
  result = qword_325030;
  if (!qword_325030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325030);
  }

  return result;
}

uint64_t sub_1DF740(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E694C656C746974 && a2 == 0xEA00000000007365 || (sub_264F10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xED000073656E694CLL)
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

uint64_t SeriesCardCoverStackLayout.init(covers:containingWidth:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = a1;
  v6 = *(a1 + 16);
  if (v6 >= 4)
  {
    sub_C8914(a1, a1 + 32, 0, 7uLL);
    v8 = v7;

    v6 = *(v8 + 16);
    v4 = v8;
  }

  if (!v6)
  {

    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v9 = v4[7];
  v124 = v4[6];
  v125 = v9;
  v10 = v4[9];
  v126 = v4[8];
  v127 = v10;
  v11 = v4[3];
  v120 = v4[2];
  v121 = v11;
  v12 = v4[5];
  v122 = v4[4];
  v123 = v12;
  memmove(__dst, v4 + 2, 0x80uLL);
  v13 = sub_2F8B8(__dst);
  v14 = sub_2F950(__dst);
  if (v13)
  {
    v15 = 1.0;
    if (v13 != 1)
    {
      v15 = 0.641025641;
    }
  }

  else
  {
    v15 = *(v14 + 16);
    sub_5757C(&v120, &v103);
  }

  v17 = a3 * 0.73 / v15;

  v18 = 0;
  v19 = _swiftEmptyArrayStorage;
  do
  {
    v20 = (v18 << 7) | 0x20;
    v21 = v18;
    while (1)
    {
      v22 = *(v4 + 2);
      if (v21 >= v22)
      {
        __break(1u);
LABEL_52:
        __break(1u);
        return result;
      }

      v23 = *(v4 + v20);
      v24 = *(v4 + v20 + 16);
      v25 = *(v4 + v20 + 48);
      v97 = *(v4 + v20 + 32);
      v98 = v25;
      v95 = v23;
      v96 = v24;
      v26 = *(v4 + v20 + 64);
      v27 = *(v4 + v20 + 80);
      v28 = *(v4 + v20 + 112);
      v101 = *(v4 + v20 + 96);
      v102 = v28;
      v99 = v26;
      v100 = v27;
      v30 = *(v4 + v20 + 32);
      v29 = *(v4 + v20 + 48);
      v32 = *(v4 + v20);
      v31 = *(v4 + v20 + 16);
      v34 = *(v4 + v20 + 96);
      v33 = *(v4 + v20 + 112);
      v36 = *(v4 + v20 + 64);
      v35 = *(v4 + v20 + 80);
      v103 = v21;
      v108 = v36;
      v109 = v35;
      v110 = v34;
      v111 = v33;
      v104 = v32;
      v105 = v31;
      v106 = v30;
      v107 = v29;
      v114 = v122;
      v115 = v123;
      v112 = v120;
      v113 = v121;
      v118 = v126;
      v119 = v127;
      v116 = v124;
      v117 = v125;
      v37 = sub_2F8B8(&v112);
      v38 = sub_2F950(&v112);
      if (!v37)
      {
        v39 = *(v38 + 16);
        if (v21 <= 2)
        {
          break;
        }

        goto LABEL_18;
      }

      v39 = 1.0;
      if (v37 != 1)
      {
        v39 = 0.641025641;
      }

      if (v21 <= 2)
      {
        break;
      }

LABEL_18:
      ++v21;
      sub_5757C(&v95, v86);
      result = sub_1DFE84(&v103);
      v20 += 128;
      if (v6 == v21)
      {
        goto LABEL_29;
      }
    }

    v91 = v108;
    v92 = v109;
    v93 = v110;
    v94 = v111;
    v87 = v104;
    v88 = v105;
    v89 = v106;
    v90 = v107;
    v86[0] = v104;
    v86[1] = v105;
    v86[2] = v106;
    v86[3] = v107;
    v86[4] = v108;
    v86[5] = v109;
    v86[6] = v110;
    v86[7] = v111;
    v40 = sub_2F8B8(v86);
    v41 = sub_2F950(v86);
    if (v40)
    {
      v42 = 1.0;
      if (v40 != 1)
      {
        v42 = 0.641025641;
      }
    }

    else
    {
      v42 = *(v41 + 16);
    }

    v82 = v91;
    v83 = v92;
    v84 = v93;
    v85 = v94;
    v78 = v87;
    v79 = v88;
    v80 = v89;
    v81 = v90;
    sub_5757C(&v95, v77);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_E9768(0, *(v19 + 2) + 1, 1, v19);
      v19 = result;
    }

    v44 = *(v19 + 2);
    v43 = *(v19 + 3);
    if (v44 >= v43 >> 1)
    {
      result = sub_E9768((v43 > 1), v44 + 1, 1, v19);
      v19 = result;
    }

    v18 = v21 + 1;
    *(v19 + 2) = v44 + 1;
    v45 = &v19[168 * v44];
    v45[32] = v21;
    v46 = *&v77[3];
    *(v45 + 33) = *v77;
    *(v45 + 9) = v46;
    *(v45 + 5) = v22;
    *(v45 + 6) = v17;
    *(v45 + 7) = v39;
    *(v45 + 8) = v42;
    v47 = v78;
    v48 = v79;
    v49 = v80;
    *(v45 + 120) = v81;
    *(v45 + 104) = v49;
    *(v45 + 88) = v48;
    *(v45 + 72) = v47;
    v50 = v82;
    v51 = v83;
    v52 = v84;
    *(v45 + 184) = v85;
    *(v45 + 168) = v52;
    *(v45 + 152) = v51;
    *(v45 + 136) = v50;
  }

  while (v6 - 1 != v21);
LABEL_29:
  sub_2F8C4(&v120);

  v53 = *(v4 + 2);
  if (v53 > 1)
  {
    memmove(&v103, v4 + 2, 0x80uLL);
    v54 = sub_2F8B8(&v103);
    result = sub_2F950(&v103);
    if (!v54)
    {
      if (*(result + 64))
      {
        v58 = *(result + 96);
        v59 = *(result + 104);
        v60 = 2;
        while (v53)
        {
          v61 = v4[v60];
          v62 = v4[v60 + 1];
          v63 = v4[v60 + 3];
          v97 = v4[v60 + 2];
          v98 = v63;
          v95 = v61;
          v96 = v62;
          v64 = v4[v60 + 4];
          v65 = v4[v60 + 5];
          v66 = v4[v60 + 7];
          v101 = v4[v60 + 6];
          v102 = v66;
          v99 = v64;
          v100 = v65;
          memmove(&v112, &v4[v60], 0x80uLL);
          v67 = sub_2F8B8(&v112);
          v68 = sub_2F950(&v112);
          if (v67)
          {
            sub_2F8C4(&v95);
            goto LABEL_31;
          }

          if (!v68[8])
          {
            goto LABEL_31;
          }

          if (!v59)
          {
            goto LABEL_31;
          }

          v69 = v68[13];
          if (!v69)
          {
            goto LABEL_31;
          }

          result = v68[12];
          if (result != v58 || v69 != v59)
          {
            result = sub_264F10();
            if ((result & 1) == 0)
            {
              goto LABEL_31;
            }
          }

          --v53;
          v60 += 8;
          if (!--v6)
          {
            v70 = v4[7];
            v99 = v4[6];
            v100 = v70;
            v71 = v4[9];
            v101 = v4[8];
            v102 = v71;
            v72 = v4[3];
            v95 = v4[2];
            v96 = v72;
            v73 = v4[5];
            v97 = v4[4];
            v98 = v73;
            sub_5757C(&v95, &v87);

            v116 = v99;
            v117 = v100;
            v118 = v101;
            v119 = v102;
            v112 = v95;
            v113 = v96;
            v114 = v97;
            v115 = v98;
            v74 = sub_2F8B8(&v112);
            v75 = sub_2F950(&v112);
            if (!v74 && v75[8] && (v57 = v75[13]) != 0)
            {
              v56 = v75[12];
              v76 = v75[13];

              result = sub_2F8C4(&v95);
              v55 = 1;
            }

            else
            {
              result = sub_2F8C4(&v95);
              v56 = 0;
              v57 = 0xE000000000000000;
              v55 = 1;
            }

            goto LABEL_32;
          }
        }

        goto LABEL_52;
      }
    }
  }

LABEL_31:

  v55 = 0;
  v56 = 0;
  v57 = 0xE000000000000000;
LABEL_32:
  *a2 = a3;
  *(a2 + 8) = v17;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = v19;
  *(a2 + 40) = v55;
  *(a2 + 48) = v56;
  *(a2 + 56) = v57;
  return result;
}

double SeriesCardCoverStackLayout.intrinsicSize.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

double SeriesCardCoverStackLayout.centeringOffset.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t sub_1DFE84(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31C400, &qword_287460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s7BooksUI26SeriesCardCoverStackLayoutV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = *(a2 + 40);
  v10 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a1 + 40);
  v13 = *(a1 + 24);
  v12 = *(a1 + 32);
  v14 = sub_C80DC(*(a1 + 16), *(a2 + 16));
  result = 0;
  if (v14)
  {
    v15 = v13 == v10 && v12 == v9;
    if (v15 && ((v8 ^ v11) & 1) == 0)
    {
      if (v4 == v6 && v5 == v7)
      {
        return 1;
      }

      else
      {

        return sub_264F10();
      }
    }
  }

  return result;
}

unint64_t sub_1DFFE0()
{
  result = qword_325038;
  if (!qword_325038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325038);
  }

  return result;
}

unint64_t sub_1E0034(uint64_t a1)
{
  result = sub_1E005C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E005C()
{
  result = qword_325088;
  if (!qword_325088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325088);
  }

  return result;
}

uint64_t AssetMetadataRatingInfo.init(assetInfo:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[4];
  sub_2E18(a1, a1[3]);
  v5 = *(v4 + 8);
  v6 = sub_260700();
  if (v6)
  {
    v7 = v6;
    [v6 averageRating];
    v9 = v8;

    v10 = v9 == 0.0;
    if (v9 == 0.0)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = v9 * 5.0;
    }
  }

  else
  {
    v11 = 0.0;
    v10 = 1;
  }

  v12 = a1[4];
  sub_2E18(a1, a1[3]);
  v13 = *(v12 + 8);
  v14 = sub_260700();
  if (v14 && ((v15 = v14, v16 = [v14 ratingCount], v15, !v16) ? (v17 = 1) : (v17 = v10), (v17 & 1) == 0))
  {
    *a2 = v11;
    *(a2 + 8) = v16;
    *(a2 + 16) = 0;

    return sub_3080(a1);
  }

  else
  {
    result = sub_3080(a1);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
  }

  return result;
}

BooksUI::AssetMetadataRatingInfo __swiftcall AssetMetadataRatingInfo.init(averageRating:ratingCount:)(Swift::Double averageRating, Swift::UInt ratingCount)
{
  *v2 = averageRating;
  *(v2 + 8) = ratingCount;
  result.averageRating = averageRating;
  result.ratingCount = ratingCount;
  return result;
}

uint64_t AssetMetadataRatingInfo.formattedAverageRating(with:)(void *a1)
{
  v3 = sub_263D20();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = a1[4];
  sub_2E18(a1, a1[3]);
  isa = sub_264780().super.super.isa;
  (*(v4 + 104))(v7, enum case for LocalizerContext.standalone(_:), v3);
  v11 = sub_264220();

  (*(v4 + 8))(v7, v3);
  return v11;
}

uint64_t AssetMetadataRatingInfo.formattedRatingCount(with:)(void *a1)
{
  v2 = *(v1 + 8);
  v3 = a1[4];
  sub_2E18(a1, a1[3]);
  return sub_2641E0();
}

uint64_t sub_1E03E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E0428(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_1E04A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v98 = a1;
  v97 = sub_264010();
  v96 = *(v97 - 8);
  v3 = *(v96 + 64);
  __chkstk_darwin(v97);
  v95 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2EF0(&qword_325090, &qword_287648);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v94 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v93 = &v85 - v9;
  v109 = sub_263FA0();
  v107 = *(v109 - 8);
  v10 = *(v107 + 64);
  __chkstk_darwin(v109);
  v90 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v106 = &v85 - v13;
  v105 = sub_263D20();
  v104 = *(v105 - 8);
  v14 = *(v104 + 8);
  __chkstk_darwin(v105);
  v103 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_262370();
  v102 = *(v110 - 8);
  v16 = *(v102 + 64);
  __chkstk_darwin(v110);
  v18 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2EF0(&qword_31AB88, &qword_287650);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = &v85 - v21;
  v92 = sub_2EF0(&qword_325098, &unk_287658);
  v91 = *(v92 - 8);
  v23 = *(v91 + 64);
  __chkstk_darwin(v92);
  v25 = &v85 - v24;
  v26 = v1[2];
  v108 = v1[3];
  v113 = v26;
  v114 = v108;
  v27 = sub_1E1018(&v113, v1 + 4);
  v100 = v28;
  v30 = v29;
  v101 = v31;
  v32 = &v22[*(v19 + 36)];
  v33 = *(sub_2EF0(&qword_317530, &qword_26FCC0) + 28);
  v34 = enum case for Image.Scale.small(_:);
  v35 = sub_2630F0();
  (*(*(v35 - 8) + 104))(v32 + v33, v34, v35);
  *v32 = swift_getKeyPath();
  v36 = v100;
  *v22 = v27;
  *(v22 + 1) = v36;
  v22[16] = v30 & 1;
  *(v22 + 3) = v101;
  sub_262340();
  v37 = sub_93DBC();
  v89 = v25;
  v88 = v19;
  v87 = v37;
  sub_262C70();
  (*(v102 + 8))(v18, v110);
  sub_8E80(v22, &qword_31AB88, &qword_287650);
  sub_2EF0(&qword_317240, &qword_269790);
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_269100;
  v101 = v2[7];
  v102 = v2[8];
  v100 = sub_2E18(v2 + 4, v101);
  v99 = "e or color hex string";
  v86 = sub_2EF0(&qword_31ACF0, &unk_26FF60);
  inited = swift_initStackObject();
  v85 = xmmword_267D30;
  *(inited + 16) = xmmword_267D30;
  *(inited + 32) = 0x5265676172657661;
  v39 = inited + 32;
  *(inited + 40) = 0xED0000676E697461;
  v40 = v2[8];
  sub_2E18(v2 + 4, v2[7]);
  isa = sub_264780().super.super.isa;
  v42 = v104;
  v43 = v103;
  v44 = v105;
  (*(v104 + 13))(v103, enum case for LocalizerContext.standalone(_:), v105);
  v45 = sub_264220();
  v47 = v46;

  (*(v42 + 1))(v43, v44);
  *(inited + 48) = v45;
  *(inited + 56) = v47;
  sub_F13C(inited);
  v48 = v107;
  swift_setDeallocating();
  sub_8E80(v39, &qword_31ACF8, &qword_273580);
  v49 = v106;
  sub_263F90();
  v50 = v49;
  v51 = sub_264250();
  v53 = v52;

  v54 = *(v48 + 8);
  v55 = v50;
  v54(v50, v109);
  v56 = v110;
  *(v110 + 32) = v51;
  *(v56 + 40) = v53;
  v57 = v2[7];
  v58 = v2[8];
  result = sub_2E18(v2 + 4, v57);
  if (v108 < 0)
  {
    __break(1u);
  }

  else
  {
    v103 = result;
    v60 = swift_initStackObject();
    v102 = v58;
    v61 = v60;
    *(v60 + 16) = v85;
    *(v60 + 32) = 0x746E756F63;
    v62 = v60 + 32;
    *(v60 + 40) = 0xE500000000000000;
    v105 = v48 + 8;
    v104 = v54;
    v63 = v2[8];
    sub_2E18(v2 + 4, v2[7]);
    v101 = v57;
    v100 = "Rating: @@averageRating@@";
    *(v61 + 48) = sub_2641E0();
    *(v61 + 56) = v64;
    v65 = sub_F13C(v61);
    swift_setDeallocating();
    sub_8E80(v62, &qword_31ACF8, &qword_273580);
    v66 = v55;
    sub_263F90();
    v67 = v90;
    sub_263F90();
    v68 = *(v48 + 56);
    v69 = v93;
    v70 = v109;
    v68(v93, 1, 1, v109);
    v71 = v94;
    v68(v94, 1, 1, v70);
    v72 = v96;
    v73 = v95;
    v74 = v97;
    (*(v96 + 104))(v95, enum case for LocalizerLookupStrategy.default(_:), v97);
    v75 = sub_AF8D4(v108, 0xD000000000000021, v100 | 0x8000000000000000, v65, v66, v67, v69, v71, v73, v101, v102);
    v108 = v76;

    (*(v72 + 8))(v73, v74);
    sub_8E80(v71, &qword_325090, &qword_287648);
    sub_8E80(v69, &qword_325090, &qword_287648);
    v77 = v104;
    v104(v67, v70);
    v77(v66, v70);
    v78 = v110;
    v79 = v108;
    *(v110 + 48) = v75;
    *(v78 + 56) = v79;
    v113 = v78;
    sub_2EF0(&qword_3160B0, &qword_267D40);
    sub_8E38(&qword_3160B8, &qword_3160B0, &qword_267D40);
    v80 = sub_264340();
    v82 = v81;

    v113 = v80;
    v114 = v82;
    v111 = v88;
    v112 = v87;
    swift_getOpaqueTypeConformance2();
    sub_10A84();
    v83 = v92;
    v84 = v89;
    sub_262C00();

    return (*(v91 + 8))(v84, v83);
  }

  return result;
}

uint64_t sub_1E1018(uint64_t a1, void *a2)
{
  v3 = v2;
  v66 = a2;
  v63 = sub_261C90();
  v62 = *(v63 - 8);
  v4 = *(v62 + 64);
  __chkstk_darwin(v63);
  v61 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_263FA0();
  v68 = *(v69 - 8);
  v6 = *(v68 + 64);
  __chkstk_darwin(v69);
  v67 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_263D20();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2630B0();
  v13 = sub_262900();
  v15 = v14;
  v17 = v16;
  v65 = sub_262820();
  v19 = v18;
  v21 = v20;
  v64 = v22;
  sub_39DBC(v13, v15, v17 & 1);

  v23 = *(v3 + 16);
  v24 = *(v3 + 64);
  sub_2E18((v3 + 32), *(v3 + 56));
  isa = sub_264780().super.super.isa;
  (*(v9 + 104))(v12, enum case for LocalizerContext.standalone(_:), v8);
  sub_264220();

  (*(v9 + 8))(v12, v8);
  v26 = v65;
  v73 = sub_262820();
  v72 = v27;
  v71 = v28;
  v70 = v29;

  sub_39DBC(v26, v19, v21 & 1);

  v30 = v66[3];
  v65 = v66[4];
  sub_2E18(v66, v30);
  sub_2EF0(&qword_31ACF0, &unk_26FF60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267D30;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x8000000000294980;
  v32 = *(v3 + 24);
  v33 = *(v3 + 64);
  sub_2E18((v3 + 32), *(v3 + 56));
  *(inited + 48) = sub_2641E0();
  *(inited + 56) = v34;
  sub_F13C(inited);
  swift_setDeallocating();
  sub_8E80(inited + 32, &qword_31ACF8, &qword_273580);
  v35 = v67;
  sub_263F90();
  sub_264250();
  v37 = v36;

  (*(v68 + 8))(v35, v69);
  v38 = *v3;
  v39 = *(v3 + 8) == 1;
  v66 = v37;
  if (v39)
  {
    if (v38)
    {
LABEL_6:
      v55 = sub_262820();
      v57 = v56;
      v59 = v58;
      _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
      v49 = sub_2627E0();

      v50 = v59 & 1;
      v51 = v55;
      v52 = v57;
      goto LABEL_7;
    }
  }

  else
  {

    sub_264900();
    v53 = sub_2624B0();
    sub_260D10();

    v54 = v61;
    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v38, 0);
    (*(v62 + 8))(v54, v63);
    if (v74 == 1)
    {
      goto LABEL_6;
    }
  }

  _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  v40 = sub_2627E0();
  v68 = v41;
  LODWORD(v69) = v42;

  v74 = sub_262130();
  v43 = sub_2627F0();
  v45 = v44;
  v47 = v46;
  v48 = v40;
  v49 = sub_262820();
  sub_39DBC(v43, v45, v47 & 1);

  v50 = v69 & 1;
  v51 = v48;
  v52 = v68;
LABEL_7:
  sub_39DBC(v51, v52, v50);

  sub_39DBC(v73, v72, v71 & 1);

  return v49;
}

unint64_t sub_1E1798()
{
  result = qword_3250A0;
  if (!qword_3250A0)
  {
    sub_2F9C(qword_3250A8, &unk_287698);
    sub_2F9C(&qword_31AB88, &qword_287650);
    sub_93DBC();
    swift_getOpaqueTypeConformance2();
    sub_18B4CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3250A0);
  }

  return result;
}

uint64_t View.environment<A>(_:binding:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a5;
  v23 = a2;
  v8 = *(*a1 + class metadata base offset for WritableKeyPath + 8);
  v9 = sub_263380();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v22 - v12;
  v14 = type metadata accessor for EnvironmentBindingViewModifier();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v22 - v18;
  (*(v10 + 16))(v13, v23, v9, v17);
  v25 = a3;
  v26 = v8;
  v27 = a4;
  KeyPath = swift_getKeyPath();
  sub_1E1A7C(a1, v13, KeyPath, v19);

  sub_262E30();
  return (*(v15 + 8))(v19, v14);
}

uint64_t sub_1E1A7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X8>)
{
  v7 = *a1;
  v8 = *a3;
  *a4 = a1;
  v9 = *(v8 + class metadata base offset for KeyPath);
  v10 = *(v7 + class metadata base offset for WritableKeyPath + 8);
  v11 = type metadata accessor for EnvironmentBindingViewModifier();
  v12 = *(v11 + 36);
  v13 = sub_263380();
  result = (*(*(v13 - 8) + 32))(&a4[v12], a2, v13);
  *&a4[*(v11 + 40)] = a3;
  return result;
}

uint64_t sub_1E1B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v35 = a1;
  v36 = a3;
  v31 = *(a2 + 24);
  v34 = *(v31 - 8);
  v6 = *(v34 + 64);
  __chkstk_darwin(a1);
  v33 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 16);
  v32 = *(v9 - 8);
  v10 = *(v32 + 64);
  __chkstk_darwin(v11);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  sub_2620B0();
  v30[1] = sub_262410();
  v14 = sub_261730();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v30 - v20;
  v30[0] = *v3;
  v22 = *(a2 + 36);
  sub_263380();
  sub_263320();
  v23 = *(v4 + *(a2 + 40));
  v24 = v33;
  swift_getAtKeyPath();
  (*(v32 + 8))(v13, v9);
  WitnessTable = swift_getWitnessTable();
  sub_262A90();
  (*(v34 + 8))(v24, v31);
  v26 = swift_getWitnessTable();
  v37 = WitnessTable;
  v38 = v26;
  v27 = swift_getWitnessTable();
  sub_1609C(v18, v14, v27);
  v28 = *(v15 + 8);
  v28(v18, v14);
  sub_1609C(v21, v14, v27);
  return (v28)(v21, v14);
}

uint64_t View.environment<A, B>(_:binding:_:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v23[2] = a5;
  v23[1] = a4;
  v8 = *a1;
  v9 = *(*a3 + class metadata base offset for KeyPath);
  v10 = sub_263380();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v23 - v13;
  v15 = *(v8 + class metadata base offset for WritableKeyPath + 8);
  v16 = type metadata accessor for EnvironmentBindingViewModifier();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = v23 - v20;
  (*(v11 + 16))(v14, a2, v10, v19);
  sub_1E1A7C(a1, v14, a3, v21);

  sub_262E30();
  return (*(v17 + 8))(v21, v16);
}

uint64_t sub_1E2114(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  type metadata accessor for EnvironmentBindingViewModifier();
  sub_261730();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E21A8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  type metadata accessor for EnvironmentBindingViewModifier();
  sub_261730();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E2240(uint64_t a1)
{
  sub_261C90();
  v2 = *(a1 + 24);
  result = sub_264CB0();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 16);
    result = sub_263380();
    if (v6 <= 0x3F)
    {
      result = sub_265150();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1E2308(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = *(v4 + 80);
  if (v5 >= 0)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = v7 | 7;
  if (v8 >= a2)
  {
    goto LABEL_31;
  }

  v10 = ((*(*(*(a3 + 16) - 8) + 64) - (((-17 - v7) | v7) + ((-9 - v7) | v9)) + 5) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = a2 - v8;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_31;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_31:
    if (v8 != 0x7FFFFFFF)
    {
      return (*(v4 + 48))((v7 + ((((a1 + v9 + 8) & ~v9) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7);
    }

    v19 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v8 + (v12 | v18) + 1;
}

void *sub_1E2490(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  if (v6 >= 0)
  {
    v7 = 0x7FFFFFFF;
  }

  v8 = *(v5 + 80);
  v9 = ((-2 - ((((-9 - v8) | v8) & 0xFFFFFFFFFFFFFFF8) + ((-17 - v8) | v8) - *(*(*(a4 + 16) - 8) + 64))) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((-2 - ((((-9 - v8) | v8) & 0xFFFFFFF8) + ((-17 - v8) | v8) - *(*(*(a4 + 16) - 8) + 64))) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
LABEL_19:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_35;
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

        goto LABEL_35;
      }

      if (!a2)
      {
        return result;
      }

LABEL_35:
      if (v7 == 0x7FFFFFFF)
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *result = v18;
      }

      else
      {
        v19 = *(v5 + 56);
        v20 = (v8 + ((((result + (v8 | 7) + 8) & ~(v8 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8;

        return v19(v20);
      }

      return result;
    }
  }

  if (((-2 - ((((-9 - v8) | v8) & 0xFFFFFFF8) + ((-17 - v8) | v8) - *(*(*(a4 + 16) - 8) + 64))) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((-2 - ((((-9 - v8) | v8) & 0xFFFFFFF8) + ((-17 - v8) | v8) - *(*(*(a4 + 16) - 8) + 64))) & 0xFFFFFFF8) != 0xFFFFFFF8)
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

uint64_t sub_1E26E8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for EnvironmentBindingViewModifier();
  swift_getWitnessTable();
  sub_2620B0();
  sub_262410();
  sub_261730();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E27DC()
{
  sub_264500();
}

uint64_t sub_1E290C()
{
  sub_264500();
}

uint64_t sub_1E2A48()
{
  sub_264500();
}

uint64_t sub_1E2BA0()
{
  sub_264500();
}

Swift::Int sub_1E2CE0()
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

Swift::Int sub_1E2E34()
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

Swift::Int sub_1E2F88()
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

Swift::Int sub_1E3098()
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

Swift::Int sub_1E31D8()
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

Swift::Int sub_1E3328(uint64_t a1, char a2)
{
  sub_265050();
  sub_265070(qword_287948[a2]);
  return sub_265080();
}

Swift::Int sub_1E3378()
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

Swift::Int sub_1E346C()
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

Swift::Int sub_1E3578()
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t SingleBookLockupModel.init(preheader:title:subtitle:ratingInfo:reviewDescription:assetInfo:signature:userLightColorText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 *a11, uint64_t a12, uint64_t a13, char a14)
{
  v15 = *(a7 + 16);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = *a7;
  *(a9 + 64) = v15;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  result = sub_F7CC(a11, a9 + 88);
  *(a9 + 128) = a12;
  *(a9 + 136) = a13;
  *(a9 + 144) = a14;
  return result;
}

uint64_t SingleBookLockupModel.assetID.getter()
{
  v1 = v0[15];
  sub_2E18(v0 + 11, v0[14]);
  v2 = *(v1 + 8);
  return sub_2606E0();
}

uint64_t sub_1E372C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E43FC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1E375C(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000065;
  v3 = *v1;
  v4 = 0xE900000000000072;
  v5 = 0x6564616568657270;
  v6 = 0x727574616E676973;
  if (v3 != 6)
  {
    v6 = 0xD000000000000011;
    v2 = 0x800000000028FE80;
  }

  v7 = 0xE800000000000000;
  v8 = 0x656372756F736572;
  if (v3 != 4)
  {
    v8 = 0xD000000000000011;
    v7 = 0x800000000028FE60;
  }

  if (*v1 > 5u)
  {
    v7 = v2;
  }

  else
  {
    v6 = v8;
  }

  v9 = 0xE800000000000000;
  v10 = 0x656C746974627573;
  if (v3 != 2)
  {
    v10 = 0x6E49676E69746172;
    v9 = 0xEA00000000006F66;
  }

  if (*v1)
  {
    v5 = 0x656C746974;
    v4 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v5 = v10;
    v4 = v9;
  }

  if (*v1 <= 3u)
  {
    v11 = v5;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 <= 3u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v7;
  }

  *a1 = v11;
  a1[1] = v12;
}

unint64_t sub_1E3868()
{
  v1 = *v0;
  v2 = 0x6564616568657270;
  v3 = 0x727574616E676973;
  if (v1 != 6)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x656372756F736572;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974627573;
  if (v1 != 2)
  {
    v5 = 0x6E49676E69746172;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E3970@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E43FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E3998(uint64_t a1)
{
  v2 = sub_1E4058();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1E39D4(uint64_t a1)
{
  v2 = sub_1E4058();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SingleBookLockupModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2EF0(&qword_325130, &unk_287740);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v37 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v65 = a1;
  sub_2E18(a1, v10);
  sub_1E4058();
  sub_265120();
  if (!v2)
  {
    v49 = a2;
    v50 = v6;
    sub_2EF0(&qword_316DD0, &qword_2692C0);
    LOBYTE(v53) = 0;
    sub_1E40AC();
    sub_264DF0();
    v12 = v5;
    v13 = v55;
    v14 = v56;
    LOBYTE(v55) = 1;
    v45 = sub_264DC0();
    v46 = v13;
    v47 = v14;
    v48 = v15;
    LOBYTE(v55) = 2;
    v43 = sub_264DC0();
    v44 = v16;
    LOBYTE(v53) = 5;
    sub_264DF0();
    v17 = v47;
    v18 = v55;
    v42 = v56;
    LOBYTE(v53) = 6;
    sub_264DF0();
    v41 = v18;
    v19 = v55;
    v20 = v56;
    LOBYTE(v55) = 7;
    v21 = sub_264DD0();
    v22 = v50;
    v39 = v21;
    v40 = v20;
    sub_2EF0(&qword_317FB8, &unk_26AA50);
    LOBYTE(v53) = 4;
    sub_43FB8();
    sub_264DF0();
    v38 = v19;
    v24 = v43;
    v25 = v55;
    sub_260810();
    if (v54)
    {
      sub_F7CC(&v53, &v55);
      sub_30CC(&v55, v62 + 8);
      *&v57 = v46;
      *(&v57 + 1) = v17;
      *&v58 = v45;
      *(&v58 + 1) = v48;
      *&v59 = v24;
      *(&v59 + 1) = v44;
      sub_30CC(&v55, &v53);
      AssetMetadataRatingInfo.init(assetInfo:)(&v53, &v51);

      sub_3080(&v55);
      (*(v22 + 8))(v9, v12);
      v60 = v51;
      LOBYTE(v61) = v52;
      *(&v61 + 1) = v41;
      *&v62[0] = v42;
      *&v63 = v38;
      *(&v63 + 1) = v40;
      v26 = v39 & 1;
      v64 = v39 & 1;
      v27 = v62[2];
      v28 = v49;
      *(v49 + 96) = v62[1];
      *(v28 + 112) = v27;
      *(v28 + 128) = v63;
      *(v28 + 144) = v26;
      v29 = v60;
      *(v28 + 32) = v59;
      *(v28 + 48) = v29;
      v30 = v62[0];
      *(v28 + 64) = v61;
      *(v28 + 80) = v30;
      v31 = v58;
      *v28 = v57;
      *(v28 + 16) = v31;
    }

    else
    {

      sub_1E4128(&v53);
      v32 = v22;
      v33 = sub_264C10();
      swift_allocError();
      v35 = v34;
      v49 = sub_264D60();
      sub_4401C();
      swift_allocError();
      *v36 = 0;
      sub_264BF0();
      (*(*(v33 - 8) + 104))(v35, enum case for DecodingError.dataCorrupted(_:), v33);
      swift_willThrow();

      (*(v32 + 8))(v9, v12);
    }
  }

  return sub_3080(v65);
}

unint64_t sub_1E4058()
{
  result = qword_325138;
  if (!qword_325138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325138);
  }

  return result;
}

unint64_t sub_1E40AC()
{
  result = qword_325140;
  if (!qword_325140)
  {
    sub_2F9C(&qword_316DD0, &qword_2692C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325140);
  }

  return result;
}

uint64_t sub_1E4128(uint64_t a1)
{
  v2 = sub_2EF0(&qword_316D40, &unk_268FC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E4190(uint64_t a1)
{
  result = sub_1E41B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E41B8()
{
  result = qword_325148;
  if (!qword_325148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325148);
  }

  return result;
}

uint64_t sub_1E4224(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E426C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E42F8()
{
  result = qword_325150;
  if (!qword_325150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325150);
  }

  return result;
}

unint64_t sub_1E4350()
{
  result = qword_325158;
  if (!qword_325158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325158);
  }

  return result;
}

unint64_t sub_1E43A8()
{
  result = qword_325160;
  if (!qword_325160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325160);
  }

  return result;
}

uint64_t sub_1E43FC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_301808;
  v6._object = a2;
  v4 = sub_264D40(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

uint64_t BuyButtonViewModelBase.init<>(buttonType:longCaptionAlignment:assetInfo:)@<X0>(__int16 *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a3;
  v49 = sub_262730();
  v8 = *(v49 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v49);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BuyButtonExternals();
  v13 = (v12 - 8);
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = (&v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *a1;
  v50 = *a2;
  sub_30CC(a3, v53);
  *v16 = swift_getKeyPath();
  v47 = sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v18 = (v16 + v13[7]);
  type metadata accessor for ProfileRestrictions();
  sub_1E8F54(&qword_326DC0, type metadata accessor for ProfileRestrictions);
  *v18 = sub_261900();
  v18[1] = v19;
  v20 = v13[8];
  KeyPath = swift_getKeyPath();
  v46 = v16;
  *(v16 + v20) = KeyPath;
  sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v22 = v16 + v13[9];
  v23 = swift_getKeyPath();
  v54 = 0;
  *v22 = v23;
  v22[66] = 0;
  v45 = sub_2EF0(&qword_31A2C0, &qword_2844F0);
  *(a4 + *(v45 + 36)) = v17;
  v24 = (v17 >> 8) & 1;
  if (v17 < 0)
  {
    v24 = 2;
  }

  v43 = v24;
  v44 = (v17 & 0x8080) == 128;
  sub_7F460(v17, v52);
  v25 = type metadata accessor for ButtonViewModel(0);
  v26 = v25[11];
  sub_260BC0();
  type metadata accessor for ButtonViewModel.Content(0);
  type metadata accessor for ButtonViewModel.ActionKind(0);
  v42 = v52[0];
  v41 = v52[1];
  swift_storeEnumTagMultiPayload();
  v27 = a4 + v25[13];
  *(v27 + 32) = 0;
  *v27 = 0u;
  *(v27 + 16) = 0u;
  swift_storeEnumTagMultiPayload();
  v51 = 0x403C000000000000;
  v28 = enum case for Font.TextStyle.subheadline(_:);
  v29 = *(v8 + 104);
  v30 = v49;
  v29(v11, enum case for Font.TextStyle.subheadline(_:), v49);
  sub_40130();
  sub_2612E0();
  v31 = v25[5];
  v51 = 0x4008000000000000;
  v29(v11, v28, v30);
  sub_2612E0();
  sub_3080(v48);
  v32 = v25[6];
  *(a4 + v32) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v33 = v25[14];
  v34 = sub_260BD0();
  (*(*(v34 - 8) + 56))(a4 + v33, 1, 1, v34);
  v35 = v44;
  *(a4 + v25[7]) = v43;
  *(a4 + v25[8]) = 0;
  *(a4 + v25[9]) = v35;
  v36 = (a4 + v25[10]);
  v37 = v41;
  *v36 = v42;
  v36[1] = v37;
  *(a4 + v25[12]) = 1;
  v38 = v45;
  *(a4 + *(v45 + 40)) = v50;
  v39 = v38;
  sub_F7CC(v53, a4 + *(v38 + 44));
  return sub_1E8DE8(v46, a4 + *(v39 + 48), type metadata accessor for BuyButtonExternals);
}

uint64_t type metadata accessor for BuyButtonExternals()
{
  result = qword_3251F0;
  if (!qword_3251F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BuyButtonViewModelBase.accessibilityHint.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_264010();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_263FA0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ButtonViewModel(0);
  if (*(v2 + *(v15 + 48)) == 1)
  {
    v41 = v11;
    v42 = v6;
    __chkstk_darwin(v15);
    *(&v40 - 1) = *(a1 + 16);
    KeyPath = swift_getKeyPath();
    swift_getWitnessTable();
    ViewModelWithExternals.subscript.getter(KeyPath);

    v48 = v43;
    v49 = v44;
    v50 = v45;
    v51 = v46;
    v52 = v47;
    if (*(&v43 + 1) && (v17 = v49, sub_8E80(&v48, &qword_317F48, &qword_26A9A0), v17 == 5))
    {
      v18 = (v2 + *(a1 + 44));
      v19 = v18[4];
      sub_2E18(v18, v18[3]);
      v20 = sub_2609C0();
      if (v20 == 2 || (v20 & 1) == 0)
      {
        v26 = v18[4];
        sub_2E18(v18, v18[3]);
        v27 = *(v26 + 8);
        v28 = sub_260700();
        v29 = v41;
        if (v28 && (v30 = v28, v31 = [v28 priceFormatted], v30, v31))
        {
          v32 = sub_264460();
          v34 = v33;

          v40 = "ow store details and buy";
          sub_2EF0(&qword_31ACF0, &unk_26FF60);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_267D30;
          *(inited + 32) = 0x6563697270;
          v36 = inited + 32;
          *(inited + 40) = 0xE500000000000000;
          *(inited + 48) = v32;
          *(inited + 56) = v34;
          sub_F13C(inited);
          swift_setDeallocating();
          sub_8E80(v36, &qword_31ACF8, &qword_273580);
          sub_263F90();
          v37 = v42;
          (*(v42 + 104))(v9, enum case for LocalizerLookupStrategy.default(_:), v5);
          sub_260B80();

          (*(v37 + 8))(v9, v5);
        }

        else
        {
          sub_263F90();
          v38 = v42;
          (*(v42 + 104))(v9, enum case for LocalizerLookupStrategy.default(_:), v5);
          sub_260B80();
          (*(v38 + 8))(v9, v5);
        }

        (*(v29 + 8))(v14, v10);
      }

      else
      {
        sub_263F90();
        v21 = v42;
        (*(v42 + 104))(v9, enum case for LocalizerLookupStrategy.default(_:), v5);
        sub_260B80();
        (*(v21 + 8))(v9, v5);
        (*(v41 + 8))(v14, v10);
      }

      v39 = sub_260BD0();
      return (*(*(v39 - 8) + 56))(a2, 0, 1, v39);
    }

    else
    {
      v25 = sub_260BD0();
      return (*(*(v25 - 8) + 56))(a2, 1, 1, v25);
    }
  }

  else
  {
    v22 = sub_260BD0();
    v23 = *(*(v22 - 8) + 56);

    return v23(a2, 1, 1, v22);
  }
}

uint64_t BuyButtonViewModelBase.caption.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v4 = sub_2EF0(&qword_31A158, &qword_26E3F8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v45 = &v43 - v6;
  v7 = sub_2601B0();
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = *(v46 + 64);
  __chkstk_darwin(v7);
  v43 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v44 = &v43 - v10;
  v11 = sub_264010();
  v49 = *(v11 - 8);
  v12 = *(v49 + 64);
  __chkstk_darwin(v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_263FA0();
  v48 = *(v15 - 8);
  v16 = *(v48 + 64);
  __chkstk_darwin(v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (v2 + *(a1 + 44));
  v20 = v19[4];
  sub_2E18(v19, v19[3]);
  v21 = sub_260870();
  if (v21)
  {
    __chkstk_darwin(v21);
    *(&v43 - 1) = *(a1 + 16);
    KeyPath = swift_getKeyPath();
    swift_getWitnessTable();
    ViewModelWithExternals.subscript.getter(KeyPath);

    v23 = v52;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_260FF0();

    if ((v51 & 1) == 0)
    {
      sub_263F90();
      v35 = v49;
      (*(v49 + 104))(v14, enum case for LocalizerLookupStrategy.default(_:), v11);
      v34 = v50;
      sub_260B80();
      (*(v35 + 8))(v14, v11);
      (*(v48 + 8))(v18, v15);
LABEL_10:
      v33 = 0;
      goto LABEL_11;
    }
  }

  v24 = v19[4];
  sub_2E18(v19, v19[3]);
  v25 = *(v24 + 8);
  v26 = sub_260700();
  if (!v26)
  {
    goto LABEL_7;
  }

  v27 = v26;
  v28 = [v26 isPreorder];

  if (!v28)
  {
    goto LABEL_7;
  }

  v29 = v19[4];
  sub_2E18(v19, v19[3]);
  v30 = v45;
  sub_2608D0();
  v32 = v46;
  v31 = v47;
  if ((*(v46 + 48))(v30, 1, v47) != 1)
  {
    v36 = *(v32 + 32);
    v37 = v44;
    v36(v44, v30, v31);
    v38 = v43;
    (*(v32 + 16))(v43, v37, v31);
    v39 = (*(v32 + 80) + 16) & ~*(v32 + 80);
    v40 = swift_allocObject();
    v36((v40 + v39), v38, v31);
    v34 = v50;
    sub_260B70();

    (*(v32 + 8))(v37, v31);
    goto LABEL_10;
  }

  sub_8E80(v30, &qword_31A158, &qword_26E3F8);
LABEL_7:
  v33 = 1;
  v34 = v50;
LABEL_11:
  v41 = sub_260BD0();
  return (*(*(v41 - 8) + 56))(v34, v33, 1, v41);
}

uint64_t BuyButtonExternals.colors.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_316C00, &qword_26A520);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v16 - v11);
  sub_8198(v2, &v16 - v11, &qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1E8DE8(v12, a1, type metadata accessor for ColorConstants);
  }

  v14 = *v12;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

id BuyButtonExternals.profileRestrictions.getter()
{
  v1 = v0 + *(type metadata accessor for BuyButtonExternals() + 20);
  v2 = *v1;
  if (*v1)
  {

    return v2;
  }

  else
  {
    v4 = *(v1 + 8);
    type metadata accessor for ProfileRestrictions();
    sub_1E8F54(&qword_326DC0, type metadata accessor for ProfileRestrictions);
    result = sub_2618F0();
    __break(1u);
  }

  return result;
}

uint64_t BuyButtonExternals.$profileRestrictions.getter()
{
  v1 = (v0 + *(type metadata accessor for BuyButtonExternals() + 20));
  v2 = *v1;
  v3 = v1[1];
  v4 = type metadata accessor for ProfileRestrictions();
  v5 = sub_1E8F54(&qword_326DC0, type metadata accessor for ProfileRestrictions);

  return EnvironmentObject.projectedValue.getter(v2, v3, v4, v5);
}

uint64_t BuyButtonExternals.referenceId.getter@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for BuyButtonExternals();
  sub_8198(v1 + *(v12 + 24), v11, &qword_317E08, &qword_26A550);
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

uint64_t BuyButtonExternals.assetState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = (v1 + *(type metadata accessor for BuyButtonExternals() + 28));
  *&v22[15] = *(v8 + 63);
  v9 = v8[3];
  v21[2] = v8[2];
  *v22 = v9;
  v10 = v8[1];
  v21[0] = *v8;
  v21[1] = v10;
  if (v22[18])
  {
    v11 = v8[2];
    v12 = v8[3];
    *(a1 + 32) = v11;
    *(a1 + 48) = v12;
    *(a1 + 64) = *(v8 + 32);
    v14 = *v8;
    v13 = v8[1];
    *a1 = *v8;
    *(a1 + 16) = v13;
    v19[2] = v11;
    v20[0] = v12;
    *(v20 + 15) = *(v8 + 63);
    v19[0] = v14;
    v19[1] = v13;
    return sub_8198(v19, v18, &qword_317F48, &qword_26A9A0);
  }

  else
  {

    sub_264900();
    v16 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_8E80(v21, &qword_317F40, &qword_26E9D0);
    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t BuyButtonExternals.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for BuyButtonExternals();
  v3 = (a1 + v2[5]);
  type metadata accessor for ProfileRestrictions();
  sub_1E8F54(&qword_326DC0, type metadata accessor for ProfileRestrictions);
  *v3 = sub_261900();
  v3[1] = v4;
  v5 = v2[6];
  *(a1 + v5) = swift_getKeyPath();
  sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v6 = a1 + v2[7];
  result = swift_getKeyPath();
  *v6 = result;
  v6[66] = 0;
  return result;
}

id sub_1E5CD0(uint64_t a1)
{
  v2 = v1 + *(a1 + 20);
  v3 = *v2;
  if (*v2)
  {

    return v3;
  }

  else
  {
    v5 = *(v2 + 8);
    type metadata accessor for ProfileRestrictions();
    sub_1E8F54(&qword_326DC0, type metadata accessor for ProfileRestrictions);
    result = sub_2618F0();
    __break(1u);
  }

  return result;
}

uint64_t BuyButtonViewModelBase.assetID.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v3 = v2[4];
  sub_2E18(v2, v2[3]);
  v4 = *(v3 + 8);
  return sub_2606E0();
}

void sub_1E5E0C(uint64_t a1@<X8>)
{
  v2 = *v1;
  if ((v2 & 0x80000000) == 0)
  {
    if ((v2 & 0x80) != 0)
    {
      v4 = (v2 & 1) == 0;
      v3 = 2;
      if (v4)
      {
        v3 = 0;
      }

      goto LABEL_13;
    }

    if (*v1 != 1)
    {
      if (!*v1)
      {
LABEL_5:
        *a1 = 0u;
        *(a1 + 16) = 0u;
        return;
      }

      goto LABEL_8;
    }

LABEL_9:
    v3 = 1;
    goto LABEL_13;
  }

  if (*v1 == 1)
  {
    goto LABEL_9;
  }

  if (!*v1)
  {
    goto LABEL_5;
  }

LABEL_8:
  v3 = 2;
LABEL_13:
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

Swift::Void __swiftcall BuyButtonViewModelBase.update()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for ButtonViewModel.ActionKind(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v202 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261180();
  v205 = *(v8 - 8);
  v206 = v8;
  v9 = *(v205 + 64);
  __chkstk_darwin(v8);
  v213 = &v202 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ColorConstants.Environment(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v212 = &v202 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2EF0(&qword_316208, &qword_268BD0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v210 = &v202 - v16;
  v17 = type metadata accessor for ColorConstants(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v211 = &v202 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v204 = &v202 - v21;
  __chkstk_darwin(v22);
  v215 = &v202 - v23;
  v24 = sub_264010();
  v222 = *(v24 - 8);
  v25 = *(v222 + 64);
  __chkstk_darwin(v24);
  v220 = &v202 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_263FA0();
  v223 = *(v27 - 8);
  v224 = v27;
  v28 = *(v223 + 64);
  __chkstk_darwin(v27);
  v225 = &v202 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v221 = &v202 - v31;
  v232 = type metadata accessor for ButtonViewModel.Content(0);
  v32 = *(*(v232 - 1) + 64);
  __chkstk_darwin(v232);
  v214 = (&v202 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v34);
  v218 = &v202 - v35;
  __chkstk_darwin(v36);
  v217 = &v202 - v37;
  v228 = type metadata accessor for AssetAction.Kind(0);
  v38 = *(*(v228 - 8) + 64);
  __chkstk_darwin(v228);
  v229 = (&v202 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = sub_2EF0(&qword_319AC8, &qword_287AB0);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40 - 8);
  v235 = &v202 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v234 = &v202 - v44;
  __chkstk_darwin(v45);
  v230 = &v202 - v46;
  __chkstk_darwin(v47);
  v245 = &v202 - v48;
  v49 = (v1 + *(v3 + 44));
  v50 = v49[4];
  sub_2E18(v49, v49[3]);
  sub_260860();
  v51 = sub_2609D0();
  v53 = v52;
  if (v51 == sub_2609D0() && v53 == v54)
  {
    LODWORD(v227) = 1;
  }

  else
  {
    LODWORD(v227) = sub_264F10();
  }

  v226 = v24;
  v240 = v2;

  v55 = v49[4];
  sub_2E18(v49, v49[3]);
  v56 = sub_260870();
  v236 = v7;
  v237 = v4;
  if (v56)
  {
    __chkstk_darwin(v56);
    v58 = *(v3 + 16);
    v57 = *(v3 + 24);
    *(&v202 - 2) = v58;
    *(&v202 - 1) = v57;
    v246 = v57;
    KeyPath = swift_getKeyPath();
    swift_getWitnessTable();
    v60 = v240;
    ViewModelWithExternals.subscript.getter(KeyPath);

    v61 = v262;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_260FF0();

    LODWORD(v231) = v257 ^ 1;
    v62 = v245;
  }

  else
  {
    LODWORD(v231) = 0;
    v58 = *(v3 + 16);
    v246 = *(v3 + 24);
    v62 = v245;
    v60 = v240;
  }

  v63 = *(v3 + 36);
  v64 = (*(v60 + v63) & 0x8080) == 128;
  v65 = type metadata accessor for ButtonViewModel(0);
  v216 = v65[9];
  *(v60 + v216) = v64;
  LOWORD(v257) = *(v60 + v63);
  sub_1E5E0C(&v262);
  v66 = (v60 + v65[10]);
  v67 = v66[1];
  v68 = v66[2];
  v69 = v66[3];
  sub_185B20(*v66);
  v70 = v263;
  *v66 = v262;
  *(v66 + 1) = v70;
  v219 = v66;
  v71 = v49[4];
  sub_2E18(v49, v49[3]);
  v72 = *(v71 + 8);
  v238 = sub_260700();
  v73 = type metadata accessor for AssetAction(0);
  v233 = *(v73 - 8);
  v243 = *(v233 + 56);
  v244 = v73;
  v239 = v233 + 56;
  v243(v62, 1, 1);
  v241 = v65;
  v74 = v65[14];
  sub_8E80(v60 + v74, &qword_316208, &qword_268BD0);
  v75 = sub_260BD0();
  v76 = *(v75 - 8);
  v208 = *(v76 + 56);
  v209 = v74;
  v207 = v76 + 56;
  v77 = v208(v60 + v74, 1, 1, v75);
  __chkstk_darwin(v77);
  v78 = v246;
  *(&v202 - 2) = v58;
  *(&v202 - 1) = v78;
  v79 = swift_getKeyPath();
  WitnessTable = swift_getWitnessTable();
  ViewModelWithExternals.subscript.getter(v79);

  v262 = v257;
  v263 = v258;
  v264 = v259;
  v265 = v260;
  v266 = v261;
  v81 = v3;
  if (*(&v257 + 1))
  {
    v82 = v263;
    v80 = sub_8E80(&v262, &qword_317F48, &qword_26A9A0);
  }

  else
  {
    v82 = 6;
  }

  __chkstk_darwin(v80);
  v83 = v246;
  *(&v202 - 2) = v58;
  *(&v202 - 1) = v83;
  v84 = swift_getKeyPath();
  ViewModelWithExternals.subscript.getter(v84);

  v252 = v247;
  v253 = v248;
  v254 = v249;
  v255 = v250;
  v256 = v251;
  if (*(&v247 + 1))
  {
    v85 = *(&v253 + 1);
    v86 = v254;
    sub_8E80(&v252, &qword_317F48, &qword_26A9A0);
    v87 = v241;
    if (v82 == 4)
    {
LABEL_13:
      v88 = (v60 + v87[11]);
      sub_1E8E9C(v88, type metadata accessor for ButtonViewModel.Content);
      *v88 = 0xD000000000000015;
      v88[1] = 0x80000000002926F0;
      swift_storeEnumTagMultiPayload();
      v89 = v227 & 1;
      v90 = v229;
      *v229 = 0;
      *(v90 + 8) = 0;
      *(v90 + 16) = v89;
      v91 = v238;
      *(v90 + 24) = v238;
LABEL_22:
      swift_storeEnumTagMultiPayload();
      v100 = v91;
      v101 = v58;
      v102 = v230;
      sub_1E793C(v90, v60, v101, v246, v230);
      sub_1E8E9C(v90, type metadata accessor for AssetAction.Kind);
      v103 = v245;
      sub_8E80(v245, &qword_319AC8, &qword_287AB0);
      (v243)(v102, 0, 1, v244);
      sub_22148(v102, v103, &qword_319AC8, &qword_287AB0);
      v104 = v231;
      goto LABEL_54;
    }

    if ((v86 & 1) == 0)
    {
      v99 = *(v241 + 11);
      sub_1E8E9C(v60 + v99, type metadata accessor for ButtonViewModel.Content);
      *(v60 + v99) = v85;
      swift_storeEnumTagMultiPayload();
      v91 = v238;
      v90 = v229;
      *v229 = v238;
      goto LABEL_22;
    }

    if (v85 > 2)
    {
      if (v85 == 3)
      {
        goto LABEL_13;
      }
    }

    else if ((v85 - 1) >= 2)
    {
      v92 = v221;
      sub_263F90();
      sub_263F90();
      v93 = v222;
      v94 = v220;
      v95 = v226;
      (*(v222 + 104))(v220, enum case for LocalizerLookupStrategy.default(_:), v226);
      v96 = v217;
      sub_260B80();
      (*(v93 + 8))(v94, v95);
      v97 = v224;
      v98 = *(v223 + 8);
      v98(v225, v224);
      v98(v92, v97);
      swift_storeEnumTagMultiPayload();
      sub_1E8D80(v96, v60 + v87[11], type metadata accessor for ButtonViewModel.Content);
      v91 = v238;
      v90 = v229;
      *v229 = v238;
      goto LABEL_22;
    }

    if (v82 >= 2)
    {
      if (v82 != 2)
      {
        if (v82 == 3)
        {
          goto LABEL_30;
        }

        goto LABEL_41;
      }

      goto LABEL_38;
    }

LABEL_31:
    WitnessTable = v58;
    v105 = (v222 + 104);
    v106 = (v222 + 8);
    v107 = (v223 + 8);
    if (v227)
    {
      v241 = "Books.Button.Read";
    }

    else
    {
      v241 = "Books.Button.Get";
    }

    v108 = v221;
    sub_263F90();
    v109 = v225;
    sub_263F90();
    v110 = v220;
    v111 = v226;
    (*v105)(v220, enum case for LocalizerLookupStrategy.default(_:), v226);
    v112 = v108;
    v113 = v218;
    sub_260B80();
    (*v106)(v110, v111);
    v114 = *v107;
    v115 = v224;
    (*v107)(v109, v224);
    v114(v112, v115);
    swift_storeEnumTagMultiPayload();
    sub_1E8D80(v113, v60 + v87[11], type metadata accessor for ButtonViewModel.Content);
    v116 = v229;
    swift_storeEnumTagMultiPayload();
    v117 = v230;
    sub_1E793C(v116, v60, WitnessTable, v246, v230);
    sub_1E8E9C(v116, type metadata accessor for AssetAction.Kind);
    v103 = v245;
    sub_8E80(v245, &qword_319AC8, &qword_287AB0);
    (v243)(v117, 0, 1, v244);
    sub_22148(v117, v103, &qword_319AC8, &qword_287AB0);
    v118 = v219;
    v119 = *v219;
    v120 = v219[1];
    v121 = v219[2];
    v122 = v219[3];
    if (*v219 == 2)
    {
      v123 = v219[3];
      sub_185B20(2uLL);
      sub_185B20(2uLL);
    }

    else
    {
      v124 = v219[2];
      v125 = v219[3];
      sub_185734(*v219);
      sub_185B20(v119);
      sub_185B20(2uLL);
      v126 = v118[1];
      v127 = v118[2];
      v128 = v118[3];
      sub_185B20(*v118);
      *v118 = 0u;
      *(v118 + 1) = 0u;
    }

    v91 = v238;
    v104 = v231;
    goto LABEL_54;
  }

  v87 = v241;
  if (v82 > 2)
  {
    if (v82 == 3)
    {
LABEL_30:
      sub_1E8E9C(v60 + v87[11], type metadata accessor for ButtonViewModel.Content);
      swift_storeEnumTagMultiPayload();
      v103 = v245;
      v91 = v238;
      v104 = v231;
      goto LABEL_54;
    }

    if (v82 == 4)
    {
      goto LABEL_13;
    }

LABEL_41:
    v136 = v49[4];
    sub_2E18(v49, v49[3]);
    v137 = sub_2609C0();
    v203 = v81;
    if (v137 == 2 || (v137 & 1) == 0)
    {
      v140 = v49[4];
      sub_2E18(v49, v49[3]);
      v141 = sub_260920();
      v139 = v225;
      if (v142)
      {
        v143 = v217;
        v144 = v141;
        v145 = v142;
        sub_260BC0();
        swift_storeEnumTagMultiPayload();
        v146 = v241;
        sub_1E8D80(v143, v60 + *(v241 + 11), type metadata accessor for ButtonViewModel.Content);
        v232 = "Books.Button.Buy";
        sub_2EF0(&qword_31ACF0, &unk_26FF60);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_267D30;
        *(inited + 32) = 0x6563697270;
        v148 = inited + 32;
        *(inited + 40) = 0xE500000000000000;
        *(inited + 48) = v144;
        *(inited + 56) = v145;
        v227 = sub_F13C(inited);
        v87 = v146;
        swift_setDeallocating();
        sub_8E80(v148, &qword_31ACF8, &qword_273580);
        v149 = v221;
        sub_263F90();
        v150 = v222;
        v151 = v220;
        (*(v222 + 104))(v220, enum case for LocalizerLookupStrategy.default(_:), v226);
        v152 = v210;
        sub_260B80();

        (*(v150 + 8))(v151, v226);
        (*(v223 + 8))(v149, v224);
        v208(v152, 0, 1, v75);
        sub_D0CC8(v152, v60 + v209);
        goto LABEL_50;
      }

      v138 = v221;
      sub_263F90();
    }

    else
    {
      v138 = v221;
      sub_263F90();
      v139 = v225;
    }

    sub_263F90();
    v168 = v222;
    v169 = v220;
    v170 = v226;
    (*(v222 + 104))(v220, enum case for LocalizerLookupStrategy.default(_:), v226);
    v171 = v217;
    sub_260B80();
    (*(v168 + 8))(v169, v170);
    v172 = v224;
    v173 = *(v223 + 8);
    v173(v139, v224);
    v173(v138, v172);
    swift_storeEnumTagMultiPayload();
    v87 = v241;
    sub_1E8D80(v171, v60 + *(v241 + 11), type metadata accessor for ButtonViewModel.Content);
LABEL_50:
    v103 = v245;
    v104 = v231;
    v91 = v238;
    if (v238)
    {
      v174 = [v238 isPreorder];
      if (v174)
      {
        *(v60 + v216) = 0;
        __chkstk_darwin(v174);
        v175 = v246;
        *(&v202 - 2) = v58;
        *(&v202 - 1) = v175;
        v176 = swift_getKeyPath();
        v177 = v204;
        ViewModelWithExternals.subscript.getter(v176);

        v241 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
        v231 = type metadata accessor for ColorConstants;
        sub_1E8E9C(v177, type metadata accessor for ColorConstants);
        v232 = sub_262FD0();
        sub_262FD0();
        v227 = sub_263000();

        __chkstk_darwin(v178);
        *(&v202 - 2) = v58;
        *(&v202 - 1) = v175;
        v60 = v240;
        v179 = swift_getKeyPath();
        v180 = v211;
        ViewModelWithExternals.subscript.getter(v179);
        v103 = v245;

        sub_1EA4D8(v180, v212, type metadata accessor for ColorConstants.Environment);
        v181 = v205;
        v182 = v206;
        (*(v205 + 104))(v213, enum case for ColorScheme.dark(_:), v206);
        sub_1E8F54(&qword_3183A0, &type metadata accessor for ColorScheme);
        sub_264390();
        v183 = *(v181 + 8);
        v183(v213, v182);
        v183(v212, v182);
        _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
        v184 = sub_263000();
        v91 = v238;

        sub_1E8E9C(v211, v231);
        v185 = v219;
        v186 = v219[1];
        v187 = v219[2];
        v188 = v219[3];
        sub_185B20(*v219);
        v189 = v232;
        *v185 = v241;
        v185[1] = v189;
        v185[2] = v227;
        v185[3] = v184;
      }

      v190 = v229;
      *v229 = v91;
      swift_storeEnumTagMultiPayload();
      v191 = v91;
      v192 = v58;
      v193 = v230;
      sub_1E793C(v190, v60, v192, v246, v230);
      sub_1E8E9C(v190, type metadata accessor for AssetAction.Kind);
      sub_8E80(v103, &qword_319AC8, &qword_287AB0);
      (v243)(v193, 0, 1, v244);
      sub_22148(v193, v103, &qword_319AC8, &qword_287AB0);
    }

    goto LABEL_54;
  }

  if (v82 < 2)
  {
    goto LABEL_31;
  }

LABEL_38:
  v129 = v49[4];
  sub_2E18(v49, v49[3]);
  sub_260920();
  v203 = v81;
  if (v130)
  {

    v131 = v214;
    *v214 = 0x72616D6B63656863;
    v131[1] = 0xE90000000000006BLL;
    v132 = v131;
    v133 = v49[4];
    sub_2E18(v49, v49[3]);
    sub_260920();
    if (!v134)
    {
      __break(1u);
      return;
    }

    v135 = v132 + *(sub_2EF0(&qword_319AF8, &qword_279110) + 48);
    sub_260BC0();
  }

  else
  {
    v153 = v214;
    *v214 = 0x72616D6B63656863;
    v153[1] = 0xE90000000000006BLL;
    v132 = v153;
  }

  v104 = v231;
  v154 = v246;
  swift_storeEnumTagMultiPayload();
  v155 = v240;
  v156 = sub_1E8D80(v132, v240 + v87[11], type metadata accessor for ButtonViewModel.Content);
  *(v155 + v216) = 0;
  __chkstk_darwin(v156);
  *(&v202 - 2) = v58;
  *(&v202 - 1) = v154;
  v157 = swift_getKeyPath();
  v158 = v215;
  ViewModelWithExternals.subscript.getter(v157);

  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_1E8E9C(v158, type metadata accessor for ColorConstants);
  v246 = sub_263000();

  sub_262FD0();
  v232 = sub_263000();

  sub_262FD0();
  v159 = sub_263000();

  __chkstk_darwin(v160);
  *(&v202 - 2) = v58;
  *(&v202 - 1) = v154;
  v60 = v155;
  v161 = swift_getKeyPath();
  ViewModelWithExternals.subscript.getter(v161);
  v87 = v241;

  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_1E8E9C(v158, type metadata accessor for ColorConstants);
  v162 = sub_263000();

  v163 = v219;
  v164 = v219[1];
  v165 = v219[2];
  v166 = v219[3];
  sub_185B20(*v219);
  v103 = v245;
  v167 = v232;
  *v163 = v246;
  v163[1] = v167;
  v163[2] = v159;
  v163[3] = v162;
  v91 = v238;
LABEL_54:
  v194 = v244;
  if (v104)
  {
    sub_8E80(v103, &qword_319AC8, &qword_287AB0);
    (v243)(v103, 1, 1, v194);
  }

  v195 = v234;
  sub_8198(v103, v234, &qword_319AC8, &qword_287AB0);
  v196 = *(v233 + 48);
  v197 = v196(v195, 1, v194);
  v198 = v236;
  if (v197 == 1)
  {

    sub_8E80(v195, &qword_319AC8, &qword_287AB0);
    *v198 = 0u;
    *(v198 + 16) = 0u;
    *(v198 + 32) = 0;
  }

  else
  {
    *(v236 + 3) = v194;
    *(v198 + 32) = sub_1E8F54(&qword_319B08, type metadata accessor for AssetAction);
    v199 = sub_10934(v198);
    sub_1E8DE8(v195, v199, type metadata accessor for AssetAction);
  }

  swift_storeEnumTagMultiPayload();
  sub_1E8D80(v198, v60 + v87[13], type metadata accessor for ButtonViewModel.ActionKind);
  v200 = v235;
  sub_22148(v103, v235, &qword_319AC8, &qword_287AB0);
  v201 = v196(v200, 1, v194) != 1;
  sub_8E80(v200, &qword_319AC8, &qword_287AB0);
  *(v60 + v87[12]) = v201;
}

uint64_t sub_1E793C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v157 = a5;
  v162 = type metadata accessor for AssetAction(0);
  v9 = *(*(v162 - 8) + 64);
  __chkstk_darwin(v162);
  v168 = (&v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v167 = sub_2601E0();
  v154 = *(v167 - 8);
  v11 = v154[8];
  __chkstk_darwin(v167);
  v153 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_260560();
  v169 = *(v161 - 8);
  v13 = *(v169 + 64);
  __chkstk_darwin(v161);
  v160 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_260600();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v159 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2EF0(&qword_316B98, &unk_275840);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v155 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v156 = &v134 - v22;
  __chkstk_darwin(v23);
  v158 = &v134 - v24;
  v25 = type metadata accessor for AssetAction.Kind(0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v166 = &v134 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2EF0(&qword_31A0C8, &qword_26E2C0);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v149 = &v134 - v30;
  v31 = sub_263DD0();
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v145 = &v134 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_263A10();
  v144 = *(v146 - 8);
  v34 = *(v144 + 8);
  __chkstk_darwin(v146);
  v143 = &v134 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2EF0(&qword_322C70, &qword_272AD0);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v39 = &v134 - v38;
  v150 = a3;
  v151 = a4;
  v40 = type metadata accessor for BuyButtonViewModelBase();
  v41 = *(v40 - 8);
  v42 = v41[8];
  __chkstk_darwin(v40);
  v147 = (&v134 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v44);
  v142 = (&v134 - v45);
  __chkstk_darwin(v46);
  v48 = &v134 - v47;
  v49 = sub_263AF0();
  v164 = *(v49 - 8);
  v165 = v49;
  v50 = *(v164 + 64);
  __chkstk_darwin(v49);
  v170 = &v134 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v171 = &v134 - v53;
  v152 = a1;
  AssetAction.Kind.figaroActionType.getter(&v188);
  LODWORD(v136) = v188;
  LOBYTE(v177) = v188;
  v54 = *(v40 + 44);
  sub_30CC(a2 + v54, &v188);
  v135 = _s7BooksUI7MetricsO13actionDetails3for9assetInfoSDySSypGSgAC15ClickActionTypeO_14BookFoundation05AssetH0_ptFZ_0(&v177, &v188);
  sub_3080(&v188);
  v139 = v41[2];
  v140 = v41 + 2;
  v139(v48, a2, v40);
  v55 = &v48[*(v40 + 44)];
  v56 = *(v55 + 4);
  sub_2E18(v55, *(v55 + 3));
  v57 = *(v56 + 8);
  v137 = sub_2606E0();
  v138 = v58;
  v59 = v41[1];
  v148 = (v41 + 1);
  v141 = v59;
  v59(v48, v40);
  v60 = a2;
  v163 = v54;
  sub_30CC(a2 + v54, &v188);
  sub_2E18(&v188, *(&v189 + 1));
  sub_2608C0();
  v61 = sub_260060();
  v62 = *(v61 - 8);
  if ((*(v62 + 48))(v39, 1, v61) == 1)
  {
    sub_3080(&v188);
    sub_8E80(v39, &qword_322C70, &qword_272AD0);
    v63 = 0;
    v64 = 0;
  }

  else
  {
    v65 = sub_260020();
    v64 = v66;
    (*(v62 + 8))(v39, v61);
    v63 = v65;
    sub_3080(&v188);
  }

  v67 = v60;
  sub_30CC(v60 + v163, &v188);
  sub_30CC(&v188, &v175);
  sub_97050(&v175, 0x6C6C6950797562, 0xE700000000000000, 0, &v177);
  sub_3080(&v188);
  v196 = v185;
  v197 = v186;
  v198 = v187;
  v192 = v181;
  v193 = v182;
  v194 = v183;
  v195 = v184;
  v188 = v177;
  v189 = v178;
  v190 = v179;
  v191 = v180;
  v68 = &_swiftEmptyDictionarySingleton;
  v69 = v135;
  if (v135)
  {
    v176 = sub_2EF0(&qword_3160D0, &unk_270CF0);
    *&v175 = v69;
    sub_FBD8(&v175, v173);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v172 = &_swiftEmptyDictionarySingleton;
    sub_DC90(v173, 0x65446E6F69746361, 0xED0000736C696174, isUniquelyReferenced_nonNull_native);
    v68 = v172;
  }

  if (v64)
  {
    v176 = &type metadata for String;
    *&v175 = v63;
    *(&v175 + 1) = v64;
    sub_FBD8(&v175, v173);
    v71 = swift_isUniquelyReferenced_nonNull_native();
    v172 = v68;
    sub_DC90(v173, 0x72556E6F69746361, 0xE90000000000006CLL, v71);
    v68 = v172;
  }

  v174 = v136;
  v72 = Metrics.ClickActionType.rawValue.getter();
  v176 = &type metadata for String;
  *&v175 = v72;
  *(&v175 + 1) = v73;
  sub_FBD8(&v175, v173);
  v74 = swift_isUniquelyReferenced_nonNull_native();
  v172 = v68;
  sub_DC90(v173, 0x79546E6F69746361, 0xEA00000000006570, v74);
  v75 = v172;
  sub_2EF0(&qword_317218, &unk_269760);
  v76 = swift_allocObject();
  v136 = xmmword_267D30;
  *(v76 + 16) = xmmword_267D30;
  *(v76 + 32) = sub_1694E0();
  v176 = sub_2EF0(&qword_319B10, &qword_2777B0);
  *&v175 = v76;
  sub_FBD8(&v175, v173);
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v172 = v75;
  sub_DC90(v173, 0x6E6F697461636F6CLL, 0xE800000000000000, v77);
  if (qword_3158E0 != -1)
  {
    swift_once();
  }

  v78 = sub_2639E0();
  sub_B080(v78, qword_353F10);
  v79 = v143;
  sub_2639C0();

  sub_2EF0(&qword_3160D8, &qword_267D60);
  v80 = v144;
  v81 = *(v144 + 9);
  v82 = (*(v144 + 80) + 32) & ~*(v144 + 80);
  v83 = swift_allocObject();
  *(v83 + 16) = v136;
  v84 = v83 + v82;
  v85 = v146;
  v80[2](v84, v79, v146);
  sub_263DC0();
  sub_263AD0();
  sub_98D34(&v188);
  (v80[1])(v79, v85);
  v86 = v142;
  v87 = v60;
  v88 = v139;
  v139(v142, v87, v40);
  v89 = v86 + *(v40 + 44);
  v90 = *(v89 + 4);
  sub_2E18(v89, *(v89 + 3));
  v91 = *(v90 + 8);
  v92 = sub_2606E0();
  v145 = v93;
  v146 = v92;
  v94 = v86;
  v95 = v141;
  v141(v94, v40);
  v96 = v147;
  v97 = v88(v147, v67, v40);
  __chkstk_darwin(v97);
  v98 = v151;
  *(&v134 - 2) = v150;
  *(&v134 - 1) = v98;
  KeyPath = swift_getKeyPath();
  swift_getWitnessTable();
  v100 = v149;
  ViewModelWithExternals.subscript.getter(KeyPath);

  v95(v96, v40);
  v101 = v154;
  v102 = v167;
  v103 = (v154[6])(v100, 1, v167);
  v104 = v164;
  if (v103 == 1)
  {
    sub_8E80(v100, &qword_31A0C8, &qword_26E2C0);
    v150 = 0;
    v151 = 0;
  }

  else
  {
    v105 = sub_2601C0();
    v150 = v106;
    v151 = v105;
    (v101[1])(v100, v102);
  }

  v107 = v169;
  v108 = v159;
  sub_30CC(v67 + v163, &v177);
  sub_2E18(&v177, *(&v178 + 1));
  LODWORD(v149) = sub_260870();
  v148 = *(v104 + 16);
  v148(v170, v171, v165);
  v147 = type metadata accessor for AssetAction.Kind;
  sub_1EA4D8(v152, v166, type metadata accessor for AssetAction.Kind);
  AssetAction.Kind.appAnalyticsClickTargetType.getter(v108);
  v109 = *(v107 + 104);
  v169 = v107 + 104;
  LODWORD(v152) = enum case for LinkActionType.click(_:);
  v144 = v109;
  v109(v160);
  v110 = v158;
  sub_260610();
  v111 = sub_260620();
  v112 = *(v111 - 8);
  v113 = *(v112 + 56);
  v163 = v112 + 56;
  v154 = v113;
  (v113)(v110, 0, 1, v111);
  v114 = v153;
  sub_2601D0();
  v115 = sub_2601C0();
  v117 = v116;
  (v101[1])(v114, v167);
  v118 = v168;
  *v168 = v115;
  v118[1] = v117;
  v119 = v165;
  v120 = v110;
  v121 = v145;
  v118[2] = v146;
  v118[3] = v121;
  v122 = v150;
  v118[4] = v151;
  v118[5] = v122;
  *(v118 + 48) = v149 & 1;
  v123 = v162;
  v148(v118 + *(v162 + 32), v170, v119);
  v124 = v118 + *(v123 + 40);
  v125 = v166;
  sub_1EA4D8(v166, v124, v147);
  v126 = v155;
  sub_8198(v110, v155, &qword_316B98, &unk_275840);
  v127 = *(v112 + 48);
  if (v127(v126, 1, v111) == 1)
  {
    v128 = v125;
    AssetAction.Kind.appAnalyticsClickTargetType.getter(v159);
    (v144)(v160, v152, v161);
    v129 = v156;
    v123 = v162;
    sub_260610();
    sub_8E80(v158, &qword_316B98, &unk_275840);
    sub_1E8E9C(v128, type metadata accessor for AssetAction.Kind);
    v130 = *(v164 + 8);
    v130(v170, v119);
    v130(v171, v119);
    if (v127(v126, 1, v111) != 1)
    {
      sub_8E80(v126, &qword_316B98, &unk_275840);
    }
  }

  else
  {
    sub_8E80(v120, &qword_316B98, &unk_275840);
    sub_1E8E9C(v125, type metadata accessor for AssetAction.Kind);
    v131 = *(v164 + 8);
    v131(v170, v119);
    v131(v171, v119);
    v129 = v156;
    (*(v112 + 32))(v156, v126, v111);
  }

  (v154)(v129, 0, 1, v111);
  v132 = v168;
  sub_22148(v129, v168 + *(v123 + 36), &qword_316B98, &unk_275840);
  sub_1E8DE8(v132, v157, type metadata accessor for AssetAction);
  return sub_3080(&v177);
}

__n128 sub_1E8984@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a1 + a2 - 8) + 32))(v6, *(a1 + a2 - 16));
  v4 = v6[3];
  *(a3 + 32) = v6[2];
  *(a3 + 48) = v4;
  *(a3 + 64) = v7;
  result = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = result;
  return result;
}

__n128 sub_1E8A00(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1E8A24(void *a1)
{
  v2 = sub_263FA0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  v14[3] = a1[4];
  v8 = sub_2E18(a1, v7);
  v14[1] = "ate";
  v14[2] = v8;
  sub_2EF0(&qword_31ACF0, &unk_26FF60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267D30;
  *(inited + 32) = 1702125924;
  *(inited + 40) = 0xE400000000000000;
  v10 = a1[4];
  sub_2E18(a1, a1[3]);
  *(inited + 48) = sub_264230();
  *(inited + 56) = v11;
  sub_F13C(inited);
  swift_setDeallocating();
  sub_8E80(inited + 32, &qword_31ACF8, &qword_273580);
  sub_263F90();
  v12 = sub_264250();

  (*(v3 + 8))(v6, v2);
  return v12;
}

Swift::Int sub_1E8C40(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_265050();
  a4(v6);
  return sub_265080();
}

uint64_t sub_1E8C84()
{
  v1 = sub_2601B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E8D0C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 24))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

uint64_t sub_1E8D80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E8DE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E8E9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E8EFC(uint64_t a1)
{
  result = sub_1E8F54(&qword_325168, type metadata accessor for BuyButtonExternals);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E8F54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E8FB8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E9090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_316F68, &unk_269C50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20));
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

  else
  {
    v12 = sub_2EF0(&qword_31A040, &unk_279210);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1E91EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2EF0(&qword_316F68, &unk_269C50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  else
  {
    v11 = sub_2EF0(&qword_31A040, &unk_279210);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1E9328()
{
  sub_C4F38();
  if (v0 <= 0x3F)
  {
    sub_95884();
    if (v1 <= 0x3F)
    {
      sub_78DC8(319, &qword_31A0C0, &qword_31A0C8, &qword_26E2C0);
      if (v2 <= 0x3F)
      {
        sub_78DC8(319, &qword_31A6A0, &qword_317F48, &qword_26A9A0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1E940C(uint64_t a1)
{
  result = type metadata accessor for ButtonViewModel(319);
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    result = type metadata accessor for BuyButtonViewModelBase.ButtonType();
    if (v6 <= 0x3F)
    {
      result = type metadata accessor for BuyButtonViewModelBase.LongCaptionAlignment();
      if (v7 <= 0x3F)
      {
        result = sub_44744();
        if (v8 <= 0x3F)
        {
          result = swift_checkMetadataState();
          if (v9 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E94F8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v54 = sub_2EF0(&qword_318288, &unk_27F080);
  v4 = *(v54 - 8);
  v59 = v4;
  v5 = *(v4 + 84);
  v6 = *(sub_261180() - 8);
  v7 = *(v6 + 64);
  if (v7 <= 8)
  {
    v7 = 8;
  }

  v56 = v7;
  v8 = *(sub_260BD0() - 8);
  v9 = *(v8 + 64);
  v10 = *(v8 + 80);
  v11 = v10;
  v12 = ((v11 + 24) & ~v11) + v9;
  if (v9 > v12)
  {
    v12 = *(v8 + 64);
  }

  if (v12 <= ((v10 + 16) & ~v10) + v9)
  {
    v12 = ((v10 + 16) & ~v10) + v9;
  }

  if (v12 <= ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v12 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v12 <= ((v9 + v10) & ~v10) + v9)
  {
    v12 = ((v9 + v10) & ~v10) + v9;
  }

  if (v12 <= 0x10)
  {
    v13 = 16;
  }

  else
  {
    v13 = v12;
  }

  v14 = 248 - (2u >> (8 * v13));
  if (v13 > 3)
  {
    v14 = 248;
  }

  v55 = v5;
  if (v5 <= v14)
  {
    v5 = v14;
  }

  v15 = *(sub_260060() - 8);
  if (*(v15 + 64) <= 0x28uLL)
  {
    v16 = 40;
  }

  else
  {
    v16 = *(v15 + 64);
  }

  v53 = v8;
  v17 = *(v8 + 84);
  v18 = v17 - 1;
  if (!v17)
  {
    v18 = 0;
  }

  if (v5 <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v5;
  }

  if (v19 <= 0x7FFFFFFC)
  {
    v20 = 2147483644;
  }

  else
  {
    v20 = v19;
  }

  v21 = *(*(a3 + 16) - 8);
  v22 = *(v21 + 84);
  v23 = *(v4 + 64);
  v24 = *(v4 + 80);
  v25 = *(v15 + 80);
  v26 = *(v21 + 80);
  v27 = *(v21 + 64);
  if (v20 <= v22)
  {
    v28 = *(v21 + 84);
  }

  else
  {
    v28 = v20;
  }

  if (v28 <= 0x7FFFFFFF)
  {
    v29 = 0x7FFFFFFF;
  }

  else
  {
    v29 = v28;
  }

  if (v17)
  {
    v30 = v9;
  }

  else
  {
    v30 = v9 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v31 = *(v6 + 80) & 0xF8 | 7;
  v32 = v10 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v33 = v10 + 32;
  v34 = v25 & 0xF8 | 7;
  v35 = v13 + v34 + 2;
  v36 = v16 + v10 + 1;
  v37 = v30 + ((v36 + ((v35 + ((v33 + ((v56 + 11 + ((v23 + v31 + ((v23 + v24) & ~v24)) & ~v31)) & 0xFFFFFFFFFFFFFFF8)) & v32)) & ~v34)) & ~v10);
  v38 = v26 + 40;
  if (a2 <= v29)
  {
    goto LABEL_62;
  }

  v39 = (v38 + ((v37 + 10) & 0xFFFFFFFFFFFFFFF8)) & ~v26;
  v40 = v39 + v27;
  v41 = 8 * (v39 + v27);
  if (v40 <= 3)
  {
    v44 = ((a2 - v29 + ~(-1 << v41)) >> v41) + 1;
    if (HIWORD(v44))
    {
      v42 = *(a1 + v40);
      if (!v42)
      {
        goto LABEL_62;
      }

      goto LABEL_49;
    }

    if (v44 > 0xFF)
    {
      v42 = *(a1 + v40);
      if (!*(a1 + v40))
      {
        goto LABEL_62;
      }

      goto LABEL_49;
    }

    if (v44 < 2)
    {
LABEL_62:
      if (v19 == v29)
      {
        if (v55 == v20)
        {
          v48 = *(v59 + 48);

          return v48(a1, v55, v54);
        }

        else
        {
          v51 = (*(v53 + 48))((v36 + ((v35 + ((v33 + ((v56 + 11 + ((((a1 + v23 + v24) & ~v24) + v23 + v31) & ~v31)) & 0xFFFFFFFFFFFFFFF8)) & v32)) & ~v34)) & ~v11);
          if (v51 >= 2)
          {
            return v51 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
        v49 = (a1 + v37 + 10) & 0xFFFFFFFFFFFFFFF8;
        if ((v28 & 0x80000000) != 0)
        {
          v52 = *(v21 + 48);

          return v52((v38 + v49) & ~v26, v22);
        }

        else
        {
          v50 = *(v49 + 24);
          if (v50 >= 0xFFFFFFFF)
          {
            LODWORD(v50) = -1;
          }

          return (v50 + 1);
        }
      }
    }
  }

  v42 = *(a1 + v40);
  if (!*(a1 + v40))
  {
    goto LABEL_62;
  }

LABEL_49:
  v45 = (v42 - 1) << v41;
  if (v40 > 3)
  {
    v45 = 0;
  }

  if (v40)
  {
    if (v40 <= 3)
    {
      v46 = v40;
    }

    else
    {
      v46 = 4;
    }

    if (v46 > 2)
    {
      if (v46 == 3)
      {
        v47 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v47 = *a1;
      }
    }

    else if (v46 == 1)
    {
      v47 = *a1;
    }

    else
    {
      v47 = *a1;
    }
  }

  else
  {
    v47 = 0;
  }

  return v29 + (v47 | v45) + 1;
}

void sub_1E9A6C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v52 = sub_2EF0(&qword_318288, &unk_27F080);
  v5 = *(v52 - 8);
  v59 = v5;
  v6 = *(v5 + 84);
  v7 = *(sub_261180() - 8);
  v8 = *(v7 + 64);
  if (v8 <= 8)
  {
    v8 = 8;
  }

  v54 = v8;
  v51 = sub_260BD0();
  v58 = *(v51 - 8);
  v9 = *(v58 + 64);
  v10 = *(v58 + 80);
  v11 = ((v10 + 24) & ~v10) + v9;
  if (v9 > v11)
  {
    v11 = *(*(v51 - 8) + 64);
  }

  if (v11 <= ((v10 + 16) & ~v10) + v9)
  {
    v11 = ((v10 + 16) & ~v10) + v9;
  }

  if (v11 <= ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v11 <= ((v9 + v10) & ~v10) + v9)
  {
    v11 = ((v9 + v10) & ~v10) + v9;
  }

  if (v11 <= 0x10)
  {
    v12 = 16;
  }

  else
  {
    v12 = v11;
  }

  v13 = 248 - (2u >> (8 * v12));
  if (v12 > 3)
  {
    v13 = 248;
  }

  v53 = v6;
  if (v6 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v6;
  }

  v15 = 0;
  v16 = *(sub_260060() - 8);
  if (*(v16 + 64) <= 0x28uLL)
  {
    v17 = 40;
  }

  else
  {
    v17 = *(v16 + 64);
  }

  v18 = *(v58 + 84);
  v19 = v18 - 1;
  if (!v18)
  {
    v19 = 0;
  }

  if (v14 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v14;
  }

  v21 = *(*(a4 + 16) - 8);
  if (v20 <= 0x7FFFFFFC)
  {
    v22 = 2147483644;
  }

  else
  {
    v22 = v20;
  }

  v23 = *(*(a4 + 16) - 8);
  v24 = *(v5 + 64);
  v25 = *(v5 + 80);
  v26 = *(v7 + 80);
  v27 = *(v16 + 80);
  v28 = *(v21 + 80);
  if (v22 <= *(v21 + 84))
  {
    v29 = *(v21 + 84);
  }

  else
  {
    v29 = v22;
  }

  if (v29 <= 0x7FFFFFFF)
  {
    v30 = 0x7FFFFFFF;
  }

  else
  {
    v30 = v29;
  }

  v31 = v26 & 0xF8 | 7;
  v32 = v10 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v33 = v27 & 0xF8 | 7;
  v34 = v12 + v33 + 2;
  v35 = v17 + v10 + 1;
  v36 = (v35 + ((v34 + ((v10 + 32 + ((v54 + 11 + ((v24 + v31 + ((v24 + v25) & ~v25)) & ~v31)) & 0xFFFFFFFFFFFFFFF8)) & v32)) & ~v33)) & ~v10;
  if (!v18)
  {
    ++v9;
  }

  v37 = v36 + v9;
  v38 = ((v28 + 40 + ((v36 + v9 + 10) & 0xFFFFFFFFFFFFFFF8)) & ~v28) + *(v21 + 64);
  if (a3 > v30)
  {
    v15 = 1;
    if (v38 <= 3)
    {
      v39 = ((a3 - v30 + ~(-1 << (8 * v38))) >> (8 * v38)) + 1;
      if (v39 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v39 < 2)
      {
        v15 = 0;
      }

      if (HIWORD(v39))
      {
        v15 = 4;
      }
    }
  }

  v40 = a2;
  if (v30 < a2)
  {
    v41 = ~v30 + a2;
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
            if (v15 > 1)
            {
LABEL_82:
              if (v15 == 2)
              {
                *&a1[v38] = v42;
              }

              else
              {
                *&a1[v38] = v42;
              }

              return;
            }
          }

          else
          {
            *a1 = v41;
            if (v15 > 1)
            {
              goto LABEL_82;
            }
          }

          goto LABEL_79;
        }

        *a1 = v43;
        a1[2] = BYTE2(v43);
      }

      if (v15 > 1)
      {
        goto LABEL_82;
      }
    }

    else
    {
      bzero(a1, v38);
      *a1 = v41;
      v42 = 1;
      if (v15 > 1)
      {
        goto LABEL_82;
      }
    }

LABEL_79:
    if (v15)
    {
      a1[v38] = v42;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *&a1[v38] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_63;
    }

    *&a1[v38] = 0;
LABEL_62:
    if (!a2)
    {
      return;
    }

    goto LABEL_63;
  }

  if (!v15)
  {
    goto LABEL_62;
  }

  a1[v38] = 0;
  if (!a2)
  {
    return;
  }

LABEL_63:
  if (v20 == v30)
  {
    if (v22 >= a2)
    {
      if (v53 == v22)
      {
        v46 = *(v59 + 56);
        v47 = a1;
        v18 = v53;
        v48 = v52;
      }

      else
      {
        v46 = *(v58 + 56);
        v47 = (v35 + ((v34 + ((v10 + 32 + ((v54 + 11 + (((&a1[v24 + v25] & ~v25) + v24 + v31) & ~v31)) & 0xFFFFFFFFFFFFFFF8)) & v32)) & ~v33)) & ~v10;
        v40 = a2 + 1;
        v48 = v51;
      }

      v46(v47, v40, v18, v48);
    }

    else
    {
      v44 = ~v22 + a2;
      if (v37 < 4)
      {
        if (v37)
        {
          v50 = v44 & ~(-1 << (8 * v37));
          bzero(a1, v37);
          if (v37 == 3)
          {
            *a1 = v50;
            a1[2] = BYTE2(v50);
          }

          else if (v37 == 2)
          {
            *a1 = v50;
          }

          else
          {
            *a1 = v44;
          }
        }
      }

      else
      {
        bzero(a1, v37);
        *a1 = v44;
      }
    }
  }

  else
  {
    v45 = &a1[v37 + 10] & 0xFFFFFFFFFFFFFFF8;
    if ((v29 & 0x80000000) != 0)
    {
      v49 = *(v23 + 56);

      v49((v28 + 40 + v45) & ~v28);
    }

    else if ((a2 & 0x80000000) != 0)
    {
      *(v45 + 8) = 0u;
      *(v45 + 24) = 0u;
      *v45 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v45 + 24) = a2 - 1;
    }
  }
}

uint64_t sub_1EA114(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFFF)
  {
    goto LABEL_17;
  }

  if (a2 + 61441 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 61441 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 61441;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 61441;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 61441;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 15) | (2 * ((*a1 >> 4) & 0x7E0 | (*a1 >> 2) & 0x1F))) ^ 0xFFF;
  if (v6 >= 0xFFE)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *sub_1EA1C0(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 61441 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 61441 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFFE)
  {
    v5 = ((a2 - 4095) >> 16) + 1;
    *result = a2 - 4095;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    v6 = ((-a2 >> 1) & 0x7FF) - (a2 << 11);
    *result = (16 * v6) & 0xFE00 | (4 * (v6 & 0x1F));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1EA2B8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3F)
  {
    goto LABEL_17;
  }

  if (a2 + 193 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 193) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 193;
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

      return (*a1 | (v4 << 8)) - 193;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 193;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x3E | (*a1 >> 7)) ^ 0x3F;
  if (v6 >= 0x3E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t sub_1EA358(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 193 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 193) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3F)
  {
    v4 = 0;
  }

  if (a2 > 0x3E)
  {
    v5 = ((a2 - 63) >> 8) + 1;
    *result = a2 - 63;
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
    *result = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}