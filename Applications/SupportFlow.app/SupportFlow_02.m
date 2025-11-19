unint64_t sub_10002EA50()
{
  result = qword_10018A690;
  if (!qword_10018A690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A690);
  }

  return result;
}

unint64_t sub_10002EAA4()
{
  result = qword_10018A698;
  if (!qword_10018A698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A698);
  }

  return result;
}

uint64_t sub_10002EAF8(char a1)
{
  v2 = sub_100003768(&qword_10018A6B8, &qword_1001248F0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = v26 - v4;
  v6 = type metadata accessor for Locale();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  sub_10000C30C();
  v8 = type metadata accessor for String.LocalizationValue();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  sub_10000C30C();
  v10 = type metadata accessor for FlowProgressView();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  sub_10000C30C();
  v14 = (v13 - v12);
  if (a1)
  {
    type metadata accessor for SupportHandoffUserConsentViewModel(0);
    sub_10002F0C0(&qword_10018A6C0, type metadata accessor for SupportHandoffUserConsentViewModel);
    *v5 = Environment.init<A>(_:)();
    v5[8] = v15 & 1;
    swift_storeEnumTagMultiPayload();
    sub_10002F2DC();
    sub_10002F0C0(v16, v17);
    sub_10002F108();
    return sub_10002F2F4();
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v19 = String.init(localized:table:bundle:locale:comment:)();
    v21 = v20;
    v26[0] = 0;
    State.init(wrappedValue:)();
    v22 = v26[2];
    v14[4] = v26[1];
    v14[5] = v22;
    v23 = v14 + *(v10 + 28);
    AccessibilityFocusState.init<>()();
    *v14 = v19;
    v14[1] = v21;
    v14[2] = 0;
    v14[3] = 0;
    sub_10002F15C(v14, v5);
    swift_storeEnumTagMultiPayload();
    sub_10002F2DC();
    sub_10002F0C0(v24, v25);
    sub_10002F108();
    sub_10002F2F4();
    return sub_10002F1C0(v14);
  }
}

uint64_t sub_10002EDF0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100175D50, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002EE44(char a1)
{
  if (a1)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 0x676E697461657263;
  }
}

uint64_t sub_10002EE88(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1000E48F8();
}

uint64_t sub_10002EEAC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002EDF0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10002EEDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002EE44(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10002EF08@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1000E7154();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_10002EF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10002EF9C()
{
  result = qword_10018A6A0;
  if (!qword_10018A6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A6A0);
  }

  return result;
}

unint64_t sub_10002EFF0()
{
  result = qword_10018A6A8;
  if (!qword_10018A6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A6A8);
  }

  return result;
}

unint64_t sub_10002F06C()
{
  result = qword_10018A6B0;
  if (!qword_10018A6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A6B0);
  }

  return result;
}

uint64_t sub_10002F0C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10002F108()
{
  result = qword_10018A6C8;
  if (!qword_10018A6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A6C8);
  }

  return result;
}

uint64_t sub_10002F15C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowProgressView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F1C0(uint64_t a1)
{
  v2 = type metadata accessor for FlowProgressView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10002F220()
{
  result = qword_10018A6D0;
  if (!qword_10018A6D0)
  {
    sub_100004D48(&qword_10018A6D8, &qword_1001248F8);
    sub_10002F0C0(&qword_100189260, type metadata accessor for FlowProgressView);
    sub_10002F108();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A6D0);
  }

  return result;
}

uint64_t sub_10002F2F4()
{

  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_10002F314@<X0>(uint64_t **a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  v9 = *v2;
  v10 = v2[1];
  v11 = v2[2];
  v12 = v2[3];
  v14 = v2[4];
  v13 = v2[5];
  v15 = a1[2];
  v16 = a1[3];
  v17 = *v15;
  v18 = v15[2];
  v27 = v15[1];
  v28 = v15[3];
  v20 = v15[4];
  v19 = v15[5];
  v21 = *v16;
  v29 = v16[1];
  v22 = v16[2];
  v23 = v16[3];
  v24 = v16[4];
  v25 = v16[5];
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v9;
  a2[7] = v10;
  a2[8] = v11;
  a2[9] = v12;
  a2[10] = v14;
  a2[11] = v13;
  a2[12] = v17;
  a2[13] = v27;
  a2[14] = v18;
  a2[15] = v28;
  a2[16] = v20;
  a2[17] = v19;
  a2[18] = v21;
  a2[19] = v29;
  a2[20] = v22;
  a2[21] = v23;
  a2[22] = v24;
  a2[23] = v25;

  sub_100032C08(v9, v10);
}

uint64_t sub_10002F438@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0x402C000000000000;
  *(a1 + 16) = 0;
  v3 = sub_100003768(&qword_10018A7E8, &qword_100124AD8);
  sub_10002F4F4(v1, a1 + *(v3 + 44));
  v4 = (a1 + *(sub_100003768(&qword_10018A7F0, &qword_100124AE0) + 36));
  v5 = *(sub_100003768(&qword_10018A7F8, &qword_100124AE8) + 28);
  static SymbolRenderingMode.monochrome.getter();
  v6 = type metadata accessor for SymbolRenderingMode();
  sub_100003CE8(v4 + v5, 0, 1, v6);
  result = swift_getKeyPath();
  *v4 = result;
  return result;
}

uint64_t sub_10002F4F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_100003768(qword_10018A760, &qword_100124970);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v29 - v5;
  v7 = sub_100003768(&qword_10018A800, &qword_100124B20);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = (&v29 - v13);
  v15 = a1[4];
  v16 = a1[5];

  v17 = Image.init(_internalSystemName:)();
  v18 = type metadata accessor for Font.Design();
  sub_100003CE8(v6, 1, 1, v18);
  v19 = static Font.system(size:weight:design:)();
  sub_10000ABCC(v6, qword_10018A760, &qword_100124970);
  KeyPath = swift_getKeyPath();
  v21 = v14 + *(sub_100003768(&qword_10018A808, &qword_100124B58) + 36);
  TintShapeStyle.init()();
  *v14 = v17;
  v14[1] = KeyPath;
  v14[2] = v19;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v22 = (v14 + *(v8 + 44));
  v23 = v34;
  *v22 = v33;
  v22[1] = v23;
  v22[2] = v35;
  v24 = static HorizontalAlignment.leading.getter();
  LOBYTE(v38[0]) = 1;
  sub_10002F850(a1, v36);
  *&v32[7] = v36[0];
  *&v32[23] = v36[1];
  *&v32[39] = v36[2];
  *&v32[55] = v36[3];
  LOBYTE(v19) = v38[0];
  v25 = swift_getKeyPath();
  v30 = v12;
  sub_10000EC9C(v14, v12, &qword_10018A800, &qword_100124B20);
  v26 = v31;
  sub_10000EC9C(v12, v31, &qword_10018A800, &qword_100124B20);
  v27 = *(sub_100003768(&qword_10018A810, &qword_100124B90) + 48);
  v37[0] = v24;
  v37[1] = 0;
  LOBYTE(v37[2]) = v19;
  memcpy(&v37[2] + 1, v32, 0x47uLL);
  v37[11] = v25;
  v37[12] = 2;
  LOBYTE(v37[13]) = 0;
  memcpy((v26 + v27), v37, 0x69uLL);
  sub_10000EC9C(v37, v38, &qword_10018A818, &qword_100124B98);
  sub_10000ABCC(v14, &qword_10018A800, &qword_100124B20);
  v38[0] = v24;
  v38[1] = 0;
  v39 = v19;
  memcpy(v40, v32, sizeof(v40));
  v41 = v25;
  v42 = 2;
  v43 = 0;
  sub_10000ABCC(v38, &qword_10018A818, &qword_100124B98);
  return sub_10000ABCC(v30, &qword_10018A800, &qword_100124B20);
}

uint64_t sub_10002F850@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = *a1;
  v40 = a1[1];
  sub_10000AC24();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  static Font.Weight.bold.getter();
  v9 = Text.fontWeight(_:)();
  v37 = v10;
  v12 = v11;
  v14 = v13;
  sub_10000AC78(v4, v6, v8 & 1);

  if (a1[3])
  {
    v39 = a1[2];
    v41 = a1[3];

    v15 = Text.init<A>(_:)();
    v17 = v16;
    v19 = v18;
    static Font.subheadline.getter();
    v20 = Text.font(_:)();
    v35 = v12;
    v22 = v21;
    v36 = v14;
    v24 = v23;

    sub_10000AC78(v15, v17, v19 & 1);

    static HierarchicalShapeStyle.secondary.getter();
    v25 = Text.foregroundStyle<A>(_:)();
    v27 = v26;
    LOBYTE(v15) = v28;
    v30 = v29;
    v31 = v24 & 1;
    v14 = v36;
    v32 = v22;
    v12 = v35;
    sub_10000AC78(v20, v32, v31);

    v33 = v15 & 1;
    sub_100017564(v25, v27, v15 & 1);
  }

  else
  {
    v25 = 0;
    v27 = 0;
    v33 = 0;
    v30 = 0;
  }

  sub_100017564(v9, v37, v12 & 1);

  sub_100033128(v25, v27, v33, v30);
  sub_10003316C(v25, v27, v33, v30);
  *a2 = v9;
  *(a2 + 8) = v37;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = v25;
  *(a2 + 40) = v27;
  *(a2 + 48) = v33;
  *(a2 + 56) = v30;
  sub_10003316C(v25, v27, v33, v30);
  sub_10000AC78(v9, v37, v12 & 1);
}

uint64_t sub_10002FACC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_10002F438(a1);
}

uint64_t sub_10002FB08(uint64_t a1)
{
  sub_100004D48(&qword_10018A820, &qword_100124BA0);
  v3 = *(a1 + 16);
  sub_100004D48(&qword_10018A828, &qword_100124BA8);
  type metadata accessor for ModifiedContent();
  sub_100004D48(&qword_100189DC0, &qword_100124BB0);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  sub_100006A70();
  swift_getWitnessTable();
  v4 = type metadata accessor for HStack();
  v5 = sub_100008780(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v5);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v19[-v13];
  static VerticalAlignment.top.getter();
  v15 = *(a1 + 24);
  v20 = v3;
  v21 = v15;
  v22 = v1;
  HStack.init(alignment:spacing:content:)();
  sub_10003349C();
  WitnessTable = swift_getWitnessTable();
  sub_1000C6A00(v12, v4, WitnessTable);
  v17 = *(v7 + 8);
  v17(v12, v4);
  sub_1000C6A00(v14, v4, WitnessTable);
  return (v17)(v14, v4);
}

uint64_t sub_10002FD34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a3;
  v40 = a4;
  v37 = *(a2 - 8);
  v6 = *(v37 + 64);
  __chkstk_darwin(a1);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004D48(&qword_10018A828, &qword_100124BA8);
  v9 = type metadata accessor for ModifiedContent();
  v38 = *(v9 - 8);
  v10 = *(v38 + 64);
  __chkstk_darwin(v9);
  v35 = &v33 - v11;
  sub_100004D48(&qword_100189DC0, &qword_100124BB0);
  v12 = type metadata accessor for ModifiedContent();
  v39 = *(v12 - 8);
  v13 = *(v39 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v36 = &v33 - v17;
  v18 = static HorizontalAlignment.leading.getter();
  LOBYTE(__dst[0]) = 1;
  sub_10003024C(a1, v50);
  *&v49[7] = v50[0];
  *&v49[23] = v50[1];
  *&v49[39] = v50[2];
  *&v49[55] = v50[3];
  v19 = __dst[0];
  KeyPath = swift_getKeyPath();
  v51[0] = v18;
  v51[1] = 0;
  LOBYTE(v51[2]) = v19;
  v21 = memcpy(&v51[2] + 1, v49, 0x47uLL);
  v51[11] = KeyPath;
  LOBYTE(v51[12]) = 0;
  v22 = *(a1 + 40);
  (*(a1 + 32))(v21);
  __dst[0] = static HierarchicalShapeStyle.secondary.getter();
  v24 = v34;
  v23 = v35;
  View.foregroundStyle<A>(_:)();
  (*(v37 + 8))(v8, a2);
  v25 = sub_10000AAEC(&qword_10018A830, &qword_10018A828, &qword_100124BA8);
  v48[5] = v24;
  v48[6] = v25;
  WitnessTable = swift_getWitnessTable();
  View.multilineTextAlignment(_:)();
  (*(v38 + 8))(v23, v9);
  v27 = sub_10000AAEC(&qword_100189DB8, &qword_100189DC0, &qword_100124BB0);
  v48[3] = WitnessTable;
  v48[4] = v27;
  v28 = swift_getWitnessTable();
  v29 = v36;
  sub_1000C6A00(v16, v12, v28);
  v30 = v39;
  v31 = *(v39 + 8);
  v31(v16, v12);
  memcpy(v47, v51, 0x61uLL);
  v45 = 0x4030000000000000;
  v46 = 0;
  v48[0] = v47;
  v48[1] = &v45;
  (*(v30 + 16))(v16, v29, v12);
  v48[2] = v16;
  sub_10000EC9C(v51, __dst, &qword_10018A820, &qword_100124BA0);
  v44[0] = sub_100003768(&qword_10018A820, &qword_100124BA0);
  v44[1] = &type metadata for Spacer;
  v44[2] = v12;
  v41 = sub_1000331C4();
  v42 = &protocol witness table for Spacer;
  v43 = v28;
  sub_1000C2BF0(v48, 3, v44);
  sub_10000ABCC(v51, &qword_10018A820, &qword_100124BA0);
  v31(v29, v12);
  v31(v16, v12);
  memcpy(__dst, v47, 0x61uLL);
  return sub_10000ABCC(__dst, &qword_10018A820, &qword_100124BA0);
}

uint64_t sub_10003024C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = *a1;
  v40 = a1[1];
  sub_10000AC24();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  static Font.Weight.bold.getter();
  v9 = Text.fontWeight(_:)();
  v11 = v10;
  v37 = v12;
  v14 = v13;
  sub_10000AC78(v4, v6, v8 & 1);

  v15 = a1[3];
  if (!v15)
  {
    goto LABEL_6;
  }

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = a1[2] & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v39 = a1[2];
    v41 = a1[3];

    v17 = Text.init<A>(_:)();
    v19 = v18;
    v21 = v20;
    static Font.subheadline.getter();
    Font.bold()();

    v22 = Text.font(_:)();
    v36 = v14;
    v35 = v23;
    v25 = v24;

    sub_10000AC78(v17, v19, v21 & 1);

    static HierarchicalShapeStyle.secondary.getter();
    v26 = Text.foregroundStyle<A>(_:)();
    v28 = v27;
    LOBYTE(v17) = v29;
    v31 = v30;
    v32 = v25 & 1;
    v14 = v36;
    sub_10000AC78(v22, v35, v32);

    v33 = v17 & 1;
    sub_100017564(v26, v28, v17 & 1);
  }

  else
  {
LABEL_6:
    v26 = 0;
    v28 = 0;
    v33 = 0;
    v31 = 0;
  }

  sub_100017564(v9, v11, v37 & 1);

  sub_100033128(v26, v28, v33, v31);
  sub_10003316C(v26, v28, v33, v31);
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v37 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = v26;
  *(a2 + 40) = v28;
  *(a2 + 48) = v33;
  *(a2 + 56) = v31;
  sub_10003316C(v26, v28, v33, v31);
  sub_10000AC78(v9, v11, v37 & 1);
}

uint64_t sub_1000304F4(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_10002FB08(a1);
}

void sub_100030530()
{
  v1 = 0;
  v2 = *(v0 + *(type metadata accessor for HandoffBundle() + 44));
  v3 = *(v2 + 16);
  v4 = _swiftEmptyArrayStorage;
LABEL_2:
  for (i = (v2 + 40 + 32 * v1); ; i += 4)
  {
    if (v3 == v1)
    {
      sub_100003768(&qword_10018A748, &qword_100124960);
      sub_10000AAEC(&qword_10018A750, &qword_10018A748, &qword_100124960);
      BidirectionalCollection<>.joined(separator:)();

      return;
    }

    if (v1 >= *(v2 + 16))
    {
      break;
    }

    v6 = *(i - 1);
    v7 = *i;
    swift_bridgeObjectRetain_n();
    v8 = sub_10009A9A8();
    if (v8 != 18)
    {
      v9 = sub_1000306F0(v8);
      v11 = v10;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = v4[2];
        sub_1000CFF70();
        v4 = v15;
      }

      v12 = v4[2];
      if (v12 >= v4[3] >> 1)
      {
        sub_1000CFF70();
        v4 = v16;
      }

      ++v1;
      v4[2] = (v12 + 1);
      v13 = &v4[2 * v12];
      v13[4] = v9;
      v13[5] = v11;
      goto LABEL_2;
    }

    ++v1;
  }

  __break(1u);
}

id sub_1000306F0(char a1)
{
  v2 = type metadata accessor for Locale();
  v3 = sub_10000ED84(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000C30C();
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = sub_10000ED84(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_10000C30C();
  switch(a1)
  {
    case 1:
    case 2:
    case 6:
    case 10:
    case 11:
    case 14:
    case 16:
      sub_100033474();
      sub_10001ECEC();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      goto LABEL_13;
    case 3:

      return sub_100021394();
    case 4:

      return sub_1000214D0();
    case 9:
    case 17:
      sub_10001ECEC();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      goto LABEL_13;
    case 12:
      sub_10001ECEC();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      goto LABEL_13;
    case 15:
      sub_100033474();
      sub_10001ECEC();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
LABEL_13:
      sub_100017B50();
      break;
    default:
      sub_100033474();
      sub_10001ECEC();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      sub_100017B50();
      break;
  }

  return String.init(localized:table:bundle:locale:comment:)();
}

void sub_100030B64()
{
  v1 = type metadata accessor for Locale();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v35 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = *(v0 + *(type metadata accessor for HandoffBundle() + 44));
  v10 = *(v9 + 16);
  v30[0] = "SETTINGS_DISABLED";
  v30[1] = " data handoff summary view.";
  v11 = v9 + 48;
  v12 = _swiftEmptyArrayStorage;
  v13 = -v10;
  v34 = v9 + 48;
LABEL_2:
  v14 = (v11 + 32 * v8++);
  while (v13 + v8 != 1)
  {
    if ((v8 - 1) >= *(v9 + 16))
    {
      __break(1u);
      return;
    }

    v16 = *(v14 - 2);
    v15 = *(v14 - 1);
    v17 = *v14;
    swift_bridgeObjectRetain_n();
    v18 = sub_10009A9A8();
    if (v18 != 18)
    {
      v19 = sub_1000306F0(v18);
      v32 = v20;
      v33 = v19;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v31 = String.init(localized:table:bundle:locale:comment:)();
      v22 = v21;
      v23 = v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = v12[2];
        sub_1000D0110();
        v12 = v28;
      }

      v24 = v12[2];
      if (v24 >= v12[3] >> 1)
      {
        sub_1000D0110();
        v12 = v29;
      }

      v12[2] = (v24 + 1);
      v25 = &v12[6 * v24];
      v25[4] = v16;
      v25[5] = v15;
      v26 = v32;
      v25[6] = v33;
      v25[7] = v26;
      v25[8] = v31;
      v25[9] = v22;
      v4 = v23;
      v11 = v34;
      goto LABEL_2;
    }

    ++v8;
    v14 += 32;
  }
}

uint64_t sub_100030E8C()
{
  v1 = type metadata accessor for Locale();
  v2 = sub_10000ED84(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_10000C30C();
  v69[2] = v6 - v5;
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = sub_10000ED84(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_10000C30C();
  v69[1] = v12 - v11;
  v13 = type metadata accessor for WelcomeListItem();
  v14 = sub_100008780(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v14);
  v21 = v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v70 = v69 - v23;
  v24 = __chkstk_darwin(v22);
  v69[0] = v69 - v25;
  __chkstk_darwin(v24);
  v27 = v69 - v26;
  v77 = v0;
  sub_100003768(&qword_10018A6E0, &qword_100124900);
  v28 = sub_1000317E4();
  sub_100033484();
  sub_10000AAEC(v29, &qword_10018A6E0, &qword_100124900);
  v76 = v28;
  WelcomeListItem.init<A, B>(collapsedView:expandedView:)();
  sub_1000D0208();
  v31 = v30;
  v32 = *(v30 + 16);
  if (v32 >= *(v30 + 24) >> 1)
  {
    sub_1000334B4();
    v31 = v65;
  }

  *(v31 + 16) = v32 + 1;
  v34 = *(v16 + 32);
  v33 = v16 + 32;
  v74 = (*(v33 + 48) + 32) & ~*(v33 + 48);
  v75 = v34;
  v73 = *(v33 + 40);
  v34(v31 + v74 + v73 * v32, v27, v13);
  sub_100030B64();
  v36 = *(v35 + 16);

  v71 = v21;
  v72 = v13;
  if (v36)
  {
    v38 = __chkstk_darwin(v37);
    v69[-2] = v0;
    __chkstk_darwin(v38);
    v39 = v0;
    v69[-2] = v0;
    sub_100003768(&qword_10018A6F8, &qword_100124908);
    sub_100033484();
    sub_10000AAEC(v40, &qword_10018A6F8, &qword_100124908);
    v41 = v69[0];
    WelcomeListItem.init<A, B>(collapsedView:expandedView:)();
    v42 = *(v31 + 16);
    if (v42 >= *(v31 + 24) >> 1)
    {
      sub_1000334B4();
      v31 = v67;
    }

    v13 = v72;
    v43 = v73;
    *(v31 + 16) = v42 + 1;
    v75(v31 + v74 + v42 * v43, v41, v13);
    v0 = v39;
  }

  v44 = type metadata accessor for HandoffBundle();
  v45 = v0 + v44[5];
  v46 = *(v45 + 8);
  if (v46)
  {
    v69[0] = v0;
    v48 = *(v45 + 16);
    v47 = *(v45 + 24);
    v78[0] = *v45;
    v78[1] = v46;
    v78[2] = v48;
    v78[3] = v47;
    v49 = *(v45 + 48);
    v79 = *(v45 + 32);
    v80 = v49;
    v81 = *(v45 + 64);
    sub_1000334E4();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v50 = String.init(localized:table:bundle:locale:comment:)();
    v51 = __chkstk_darwin(v50);
    v69[-2] = v51;
    v69[-1] = v52;
    __chkstk_darwin(v51);
    v69[-2] = v78;
    sub_100003768(&qword_10018A708, &qword_100124910);
    sub_100033484();
    sub_10000AAEC(v53, &qword_10018A708, &qword_100124910);
    v54 = v70;
    WelcomeListItem.init<A, B>(collapsedView:expandedView:)();

    v55 = *(v31 + 16);
    if (v55 >= *(v31 + 24) >> 1)
    {
      sub_1000334B4();
      v31 = v68;
    }

    v13 = v72;
    v56 = v73;
    *(v31 + 16) = v55 + 1;
    v75(v31 + v74 + v55 * v56, v54, v13);
  }

  sub_1000334D8(v44[12]);
  if (v57 || (sub_1000334D8(v44[6]), v58) || (sub_1000334D8(v44[7]), v59) || (sub_1000334D8(v44[8]), v60) || (sub_1000334D8(v44[9]), v61))
  {
    v62 = v71;
    WelcomeListItem.init<A>(customTitleView:)();
    v63 = *(v31 + 16);
    if (v63 >= *(v31 + 24) >> 1)
    {
      sub_1000D0208();
      v31 = v66;
    }

    *(v31 + 16) = v63 + 1;
    v75(v31 + v74 + v63 * v73, v62, v13);
  }

  return v31;
}

uint64_t sub_10003156C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v6 = String.init(localized:table:bundle:locale:comment:)();
  v8 = v7;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = result;
  *(a1 + 24) = v10;
  strcpy((a1 + 32), "iphone.sizes");
  *(a1 + 45) = 0;
  *(a1 + 46) = -5120;
  return result;
}

void *sub_100031700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.center.getter();
  v10 = 0;
  sub_100031838(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  sub_10000EC9C(__dst, &v7, &qword_10018A758, &qword_100124968);
  sub_10000ABCC(v12, &qword_10018A758, &qword_100124968);
  memcpy(&v9[7], __dst, 0x60uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x67uLL);
}

unint64_t sub_1000317E4()
{
  result = qword_10018A6E8;
  if (!qword_10018A6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A6E8);
  }

  return result;
}

uint64_t sub_100031838@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HandoffBundle();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = type metadata accessor for Locale();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20[0] = String.init(localized:table:bundle:locale:comment:)();
  v12 = v11;
  sub_100032CD4(a1, v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_100032D3C(v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v15 = String.init(localized:table:bundle:locale:comment:)();
  v17 = v16;
  sub_100032CD4(a1, v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = swift_allocObject();
  sub_100032D3C(v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v13);
  *a2 = v20[0];
  a2[1] = v12;
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = sub_100032DA0;
  a2[5] = v14;
  a2[6] = v15;
  a2[7] = v17;
  a2[8] = 0;
  a2[9] = 0;
  a2[10] = sub_100032F20;
  a2[11] = v18;

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_100031AF0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003768(qword_10018A760, &qword_100124970);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v24 - v4;
  v6 = sub_100025AAC(7);
  v8 = v7;
  sub_100025AAC(3);

  sub_100025AAC(5);

  sub_100025AAC(0);

  v24[2] = v6;
  v24[3] = v8;
  sub_10000AC24();
  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  v14 = enum case for Font.Design.monospaced(_:);
  v15 = type metadata accessor for Font.Design();
  (*(*(v15 - 8) + 104))(v5, v14, v15);
  sub_100003CE8(v5, 0, 1, v15);
  v16 = Text.fontDesign(_:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_10000AC78(v9, v11, v13 & 1);

  result = sub_10000ABCC(v5, qword_10018A760, &qword_100124970);
  *a1 = v16;
  *(a1 + 8) = v18;
  *(a1 + 16) = v20 & 1;
  *(a1 + 24) = v22;
  return result;
}

uint64_t sub_100031CB8@<X0>(uint64_t a1@<X8>)
{
  sub_100025AAC(7);

  sub_100025AAC(3);
  sub_100025AAC(5);

  sub_100025AAC(0);

  sub_10000AC24();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

void sub_100031D54(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v6 = String.init(localized:table:bundle:locale:comment:)();
  v8 = v7;
  sub_100030530();
  *a1 = v6;
  a1[1] = v8;
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = 0x322E686374697773;
  a1[5] = 0xE800000000000000;
}

uint64_t sub_100031E8C@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = 0;
  v2 = *(sub_100003768(&qword_10018A720, &qword_100124928) + 44);
  sub_100030B64();
  swift_getKeyPath();
  sub_100003768(&qword_10018A728, &qword_100124950);
  sub_100003768(&qword_10018A730, &qword_100124958);
  sub_10000AAEC(&qword_10018A738, &qword_10018A728, &qword_100124950);
  sub_10000AAEC(&qword_10018A740, &qword_10018A730, &qword_100124958);
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_100031FEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v8 = a1[4];
  v7 = a1[5];
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = v3;
  v9[4] = v6;
  v9[5] = v5;
  v9[6] = v8;
  v9[7] = v7;
  *a2 = v6;
  a2[1] = v5;
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = sub_100032CA0;
  a2[5] = v9;
  swift_bridgeObjectRetain_n();
}

uint64_t sub_100032094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  sub_10000AC24();

  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_100032100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Locale();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  *a3 = String.init(localized:table:bundle:locale:comment:)();
  *(a3 + 8) = v10;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  strcpy((a3 + 32), "apple.account");
  *(a3 + 46) = -4864;
}

void *sub_10003224C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.center.getter();
  v10 = 0;
  sub_100032328(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  sub_10000EC9C(__dst, &v7, &qword_10018A718, &qword_100124918);
  sub_10000ABCC(v12, &qword_10018A718, &qword_100124918);
  memcpy(&v9[7], __dst, 0xC0uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0xC7uLL);
}

uint64_t sub_100032328@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v3 = type metadata accessor for Locale();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v7 = String.init(localized:table:bundle:locale:comment:)();
  v29 = v8;
  v30 = v7;
  v28 = swift_allocObject();
  memcpy((v28 + 16), a1, 0x50uLL);
  v43 = a1[1];
  v9 = *(&v43 + 1);
  if (*(&v43 + 1))
  {
    v10 = v43;
    sub_100032AB4(a1, v42);
    sub_10000EC9C(&v43, v42, &qword_10018A518, &qword_100124920);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v27 = String.init(localized:table:bundle:locale:comment:)();
    v12 = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    *(v13 + 24) = v9;
    v14 = v12;

    v25 = v13;

    v26 = sub_100032C00;
  }

  else
  {
    sub_100032AB4(a1, v42);
    v26 = 0;
    v27 = 0;
    v14 = 0;
    v25 = 0;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v15 = String.init(localized:table:bundle:locale:comment:)();
  v23 = v16;
  v24 = v15;
  v22 = swift_allocObject();
  memcpy((v22 + 16), a1, 0x50uLL);
  sub_100032AB4(a1, v42);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17 = String.init(localized:table:bundle:locale:comment:)();
  v19 = v18;
  v20 = swift_allocObject();
  memcpy((v20 + 16), a1, 0x50uLL);
  v40[0] = v30;
  v40[1] = v29;
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = sub_100032AAC;
  v40[5] = v28;
  v34 = v27;
  v35 = v14;
  v36 = 0;
  v37 = 0;
  v38 = v26;
  v39 = v25;
  v41[0] = v40;
  v41[1] = &v34;
  v33[0] = v24;
  v33[1] = v23;
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = sub_100032B10;
  v33[5] = v22;
  v41[2] = v33;
  v32[0] = v17;
  v32[1] = v19;
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = sub_100032B70;
  v32[5] = v20;
  v41[3] = v32;
  sub_10002F314(v41, a2);
  sub_100032AB4(a1, v42);
  sub_100032B78(v27, v14);

  sub_100032B78(v34, v35);
}

uint64_t sub_1000327C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  sub_10000AC24();

  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_10003282C@<X0>(uint64_t a1@<X8>)
{
  sub_10000AC24();

  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100032898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  sub_10000AC24();

  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_100032904@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v6 = String.init(localized:table:bundle:locale:comment:)();
  v8 = v7;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  *a1 = v6;
  a1[1] = v8;
  a1[2] = result;
  a1[3] = v10;
  a1[4] = 0xD000000000000017;
  a1[5] = 0x8000000100135270;
  return result;
}

uint64_t sub_100032B18()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100032B78(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100032BC8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100032C00@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10003282C(a1);
}

uint64_t sub_100032C08(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100032C58()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100032CA0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v6[0] = *(v1 + 16);
  v6[1] = v2;
  v7 = v3;
  v8 = v4;
  return sub_100032094(v6, a1);
}

uint64_t sub_100032CD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HandoffBundle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100032D3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HandoffBundle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100032DB8()
{
  v1 = type metadata accessor for HandoffBundle();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for ContactType();
  sub_10000AF7C(v6);
  (*(v7 + 8))(v0 + v3);
  v8 = (v0 + v3 + v1[5]);
  if (v8[1])
  {

    v9 = v8[3];

    v10 = v8[5];

    v11 = v8[7];

    v12 = v8[9];
  }

  v13 = *(v5 + v1[6]);

  v14 = *(v5 + v1[7]);

  v15 = *(v5 + v1[8]);

  v16 = *(v5 + v1[9]);

  v17 = *(v5 + v1[10]);

  v18 = *(v5 + v1[11]);

  v19 = *(v5 + v1[12]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100032F38(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for HandoffBundle();
  sub_10000ED84(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

uint64_t sub_100032FB8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100033014(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100033054(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100033128(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100017564(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10003316C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000AC78(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_1000331C4()
{
  result = qword_10018A838;
  if (!qword_10018A838)
  {
    sub_100004D48(&qword_10018A820, &qword_100124BA0);
    sub_10000AAEC(&qword_10018A840, &qword_10018A848, &qword_100124BE8);
    sub_10000AAEC(&qword_100189DB8, &qword_100189DC0, &qword_100124BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A838);
  }

  return result;
}

unint64_t sub_1000332AC()
{
  result = qword_10018A850;
  if (!qword_10018A850)
  {
    sub_100004D48(&qword_10018A7F0, &qword_100124AE0);
    sub_10000AAEC(&qword_10018A858, &qword_10018A860, &unk_100124BF0);
    sub_10000AAEC(&qword_10018A868, &qword_10018A7F8, &qword_100124AE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A850);
  }

  return result;
}

uint64_t sub_100033390(uint64_t *a1)
{
  v1 = *a1;
  sub_100004D48(&qword_10018A820, &qword_100124BA0);
  sub_100004D48(&qword_10018A828, &qword_100124BA8);
  sub_100006AA0();
  type metadata accessor for ModifiedContent();
  sub_100004D48(&qword_100189DC0, &qword_100124BB0);
  sub_100006AA0();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  sub_100006A70();
  swift_getWitnessTable();
  sub_100006AA0();
  type metadata accessor for HStack();
  sub_10003349C();

  return swift_getWitnessTable();
}

void sub_1000334B4()
{

  sub_1000D0208();
}

uint64_t sub_1000334F8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100033510(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100033524(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100033564(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1000335D8()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 8);
  v6 = *v0;
  v11 = *v0;
  v7 = v12;

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001F65C(&v11);
    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_100033724()
{
  v8 = *v0;
  v9 = *(v0 + 8);
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_allocObject();
  v5 = *(v0 + 1);
  *(v4 + 16) = *v0;
  *(v4 + 32) = v5;
  *(v4 + 48) = v0[4];
  sub_100033974(&v8, v7);

  sub_100006568(v2);
  return Button.init(action:label:)();
}

uint64_t sub_100033858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*(a1 + 16) + OBJC_IVAR____TtC11SupportFlow10ActionInfo_text);
  v8 = *v3;
  v9 = v3[1];
  sub_10000AC24();

  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_1000338D8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_100033724();
}

uint64_t sub_100033914()
{
  v1 = v0[2];

  v2 = v0[4];

  if (v0[5])
  {
    v3 = v0[6];
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100033974(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_100189B30, &unk_100123800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000339E8()
{
  result = qword_10018A870;
  if (!qword_10018A870)
  {
    sub_100004D48(&qword_10018A878, &qword_100124D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A870);
  }

  return result;
}

uint64_t sub_100033A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, NSObject *a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a1;
  v52 = a3;
  v50 = a4;
  v5 = sub_100003768(&qword_10018A880, &qword_100124D20);
  v6 = sub_100008780(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = (&v48 - v11);
  v13 = sub_100003768(&qword_10018A888, &qword_100124D28);
  v14 = sub_100008780(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v14);
  v20 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v48 - v22;
  v49 = v21;
  v24 = *(v21 + 48);
  *v12 = 1;
  (*(v8 + 104))(v12, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v5);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v8 + 8))(v12, v5);
  out_token = 0;
  sub_100034078(v23, v20);
  v25 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v26 = swift_allocObject();
  v27 = v26 + v25;
  v28 = v51;
  sub_10003420C(v20, v27);
  v59 = sub_10003427C;
  v60 = v26;
  aBlock = _NSConcreteStackBlock;
  v56 = 1107296256;
  v57 = sub_1000342F8;
  v58 = &unk_1001795E8;
  v29 = _Block_copy(&aBlock);

  v30 = String.utf8CString.getter();
  v31 = notify_register_dispatch((v30 + 32), &out_token, v52, v29);

  _Block_release(v29);
  if (v31)
  {
    aBlock = 0;
    v56 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    aBlock = 0xD00000000000001ELL;
    v56 = 0x8000000100135C10;
    v53 = v28;
    v54 = a2;

    v32._countAndFlagsBits = String.init<A>(reflecting:)();
    String.append(_:)(v32);

    v33._countAndFlagsBits = 0x746C75736572202CLL;
    v33._object = 0xE900000000000020;
    String.append(_:)(v33);
    LODWORD(v53) = v31;
    v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v34);

    v35 = aBlock;
    v36 = v56;
    sub_100034364();
    swift_allocError();
    *v37 = v35;
    v37[1] = v36;
    swift_willThrow();
    return sub_1000343B8(v23);
  }

  else
  {
    sub_100034078(v23, v20);
    v39 = v49;
    v40 = *(v49 + 48);
    v41 = out_token;
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    *(v42 + 24) = v28;
    *(v42 + 32) = a2;

    v43 = sub_100003768(&qword_10018A898, &qword_10012D140);
    AsyncStream.Continuation.onTermination.setter();
    v44 = *(*(v43 - 8) + 8);
    v44(&v20[v40], v43);
    v45 = sub_100003768(&qword_10018A890, &unk_100124D30);
    v46 = *(v45 - 8);
    (*(v46 + 8))(v20, v45);
    sub_10003420C(v23, v20);
    v47 = *(v39 + 48);
    (*(v46 + 32))(v50, v20, v45);
    return (v44)(&v20[v47], v43);
  }
}

uint64_t sub_100033F70()
{
  v0 = sub_100003768(&qword_10018A8A8, &qword_100124D40);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - v3;
  v5 = *(sub_100003768(&qword_10018A888, &qword_100124D28) + 48);
  sub_100003768(&qword_10018A898, &qword_10012D140);
  AsyncStream.Continuation.yield(_:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100034078(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018A888, &qword_100124D28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000340E8()
{
  v1 = (sub_100003768(&qword_10018A888, &qword_100124D28) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_100003768(&qword_10018A890, &unk_100124D30);
  sub_10000C31C(v5);
  (*(v6 + 8))(v0 + v3);
  v7 = v1[14];
  v8 = sub_100003768(&qword_10018A898, &qword_10012D140);
  sub_10000C31C(v8);
  (*(v9 + 8))(v0 + v3 + v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10003420C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018A888, &qword_100124D28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003427C()
{
  v0 = *(*(sub_100003768(&qword_10018A888, &qword_100124D28) - 8) + 80);

  return sub_100033F70();
}

uint64_t sub_1000342F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_10003434C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100034364()
{
  result = qword_10018A8A0;
  if (!qword_10018A8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A8A0);
  }

  return result;
}

uint64_t sub_1000343B8(uint64_t a1)
{
  v2 = sub_100003768(&qword_10018A888, &qword_100124D28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100034420(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = notify_cancel(a2);
  if (result)
  {
    v13 = result;
    static Logger.supportFlowApp.getter();

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21[2] = a4;
      v22 = v17;
      *v16 = 136446466;
      v21[1] = a3;

      v18 = String.init<A>(reflecting:)();
      v20 = sub_10009CACC(v18, v19, &v22);

      *(v16 + 4) = v20;
      *(v16 + 12) = 1026;
      *(v16 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to cancel stream for %{public}s, result %{public}u", v16, 0x12u);
      sub_1000086BC(v17);
    }

    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

uint64_t sub_10003460C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003469C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = qword_100188390;

  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_1001A59A0;
  v7 = *algn_1001A59A8;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 48) = 0;
  *(a3 + 56) = v8;
  *(a3 + 64) = v7;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
}

uint64_t sub_10003476C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 72) = &type metadata for MessagesStepProvider;
  *(a1 + 80) = sub_10001362C();
  *(a1 + 48) = 9;
  type metadata accessor for FlowViewDataProvider(0);
  sub_10000B550();
  result = Environment.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  *(a1 + 32) = 0xD000000000000016;
  *(a1 + 40) = 0x8000000100135C30;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return result;
}

unint64_t sub_100034800()
{
  result = qword_10018A8B0;
  if (!qword_10018A8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A8B0);
  }

  return result;
}

uint64_t sub_100034880@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = type metadata accessor for PlainButtonStyle();
  v34 = sub_100008780(v1);
  v35 = v2;
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ListSectionSpacing();
  v8 = sub_100008780(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003768(&qword_10018A8B8, &qword_100124F50);
  v16 = sub_10000AF7C(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v19 = sub_100003768(&qword_10018A8C0, &unk_100124F58);
  v20 = sub_10000AF7C(v19);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v33 - v23;
  sub_100034DF0();
  sub_100003768(&qword_10018A558, &unk_100124490);
  sub_1000350A8();
  sub_10002C170();
  Section<>.init(header:content:)();
  static ListSectionSpacing.custom(_:)();
  v25 = *(sub_100003768(&qword_10018A8D8, &qword_100124F68) + 36);
  (*(v10 + 16))(&v24[v25], v14, v7);
  sub_100003CE8(&v24[v25], 0, 1, v7);
  KeyPath = swift_getKeyPath();
  v27 = &v24[*(v19 + 36)];
  v28 = *(sub_100003768(&qword_100188FE8, &qword_100124FA0) + 28);
  (*(v10 + 32))(v27 + v28, v14, v7);
  sub_100003CE8(v27 + v28, 0, 1, v7);
  *v27 = KeyPath;
  PlainButtonStyle.init()();
  sub_10003519C();
  sub_100035550();
  sub_1000353A4(v29, v30);
  v31 = v34;
  View.buttonStyle<A>(_:)();
  (*(v35 + 8))(v6, v31);
  return sub_1000353EC(v24);
}

uint64_t sub_100034BCC()
{
  v0 = type metadata accessor for PlacardInfoItemType(0);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v12 - v5;
  if (qword_100188100 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for URL();
  v8 = sub_10000C2D4(v7, qword_1001A5698);
  (*(*(v7 - 8) + 16))(v6, v8, v7);
  swift_storeEnumTagMultiPayload();
  if (qword_1001881D8 != -1)
  {
    swift_once();
  }

  v9 = qword_1001A5758;
  type metadata accessor for PlacardInfoItem(0);
  sub_10001029C(v6, v4);

  v10 = sub_1000EFDB8(v4, 0, 0);

  sub_100035454(v6, type metadata accessor for PlacardInfoItemType);
  v12[1] = v10;
  v13 = 0;
  v14 = v9;
  v15 = v9;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  static String.stepSectionFallbackContactSupport.getter();
  sub_10002C22C();
  View.accessibilityIdentifier(_:)();
}

uint64_t sub_100034DF0()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for FlowStepSectionHeaderView();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100188438 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for ImageResource();
  v9 = sub_10000C2D4(v8, qword_1001A5B00);
  (*(*(v8 - 8) + 16))(v7, v9, v8);
  v10 = type metadata accessor for FlowAsset();
  __asm { FMOV            V0.2D, #20.0 }

  *&v7[*(v10 + 20)] = _Q0;
  *&v7[*(v10 + 24)] = 0x4018000000000000;
  v16 = type metadata accessor for FlowImage();
  swift_storeEnumTagMultiPayload();
  sub_100003CE8(v7, 0, 1, v16);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17 = String.init(localized:table:bundle:locale:comment:)();
  v18 = &v7[*(v4 + 20)];
  *v18 = v17;
  v18[1] = v19;
  static String.stepSectionFallbackContactSupportHeader.getter();
  sub_1000353A4(&qword_10018A8D0, type metadata accessor for FlowStepSectionHeaderView);
  View.accessibilityIdentifier(_:)();

  return sub_100035454(v7, type metadata accessor for FlowStepSectionHeaderView);
}

unint64_t sub_1000350A8()
{
  result = qword_10018A8C8;
  if (!qword_10018A8C8)
  {
    sub_100004D48(&qword_10018A8B8, &qword_100124F50);
    sub_1000353A4(&qword_10018A8D0, type metadata accessor for FlowStepSectionHeaderView);
    sub_1000353A4(&qword_1001887F8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A8C8);
  }

  return result;
}

unint64_t sub_10003519C()
{
  result = qword_10018A8E0;
  if (!qword_10018A8E0)
  {
    sub_100004D48(&qword_10018A8C0, &unk_100124F58);
    sub_100035254();
    sub_10000AAEC(&qword_100189010, &qword_100188FE8, &qword_100124FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A8E0);
  }

  return result;
}

unint64_t sub_100035254()
{
  result = qword_10018A8E8;
  if (!qword_10018A8E8)
  {
    sub_100004D48(&qword_10018A8D8, &qword_100124F68);
    sub_10003530C();
    sub_10000AAEC(&qword_100189000, &qword_100189008, &qword_100122380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A8E8);
  }

  return result;
}

unint64_t sub_10003530C()
{
  result = qword_10018A8F0;
  if (!qword_10018A8F0)
  {
    sub_100004D48(&qword_10018A8F8, &qword_100124FA8);
    sub_1000350A8();
    sub_10002C170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A8F0);
  }

  return result;
}

uint64_t sub_1000353A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000353EC(uint64_t a1)
{
  v2 = sub_100003768(&qword_10018A8C0, &unk_100124F58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100035454(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10000AF7C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1000354AC()
{
  sub_100004D48(&qword_10018A8C0, &unk_100124F58);
  type metadata accessor for PlainButtonStyle();
  sub_10003519C();
  sub_100035550();
  sub_1000353A4(v0, v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100035568()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1001A5710 = result;
  *algn_1001A5718 = v5;
  return result;
}

uint64_t sub_100035688()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1001A5720 = result;
  *algn_1001A5728 = v5;
  return result;
}

unint64_t sub_1000357A8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100175978, v2);

  if (v3 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000357F4(char a1)
{
  result = 21825;
  switch(a1)
  {
    case 1:
      result = 1094939238;
      break;
    case 2:
      result = 16707;
      break;
    case 3:
      result = 18499;
      break;
    case 4:
      result = 20035;
      break;
    case 5:
      result = 17732;
      break;
    case 6:
      result = 21317;
      break;
    case 7:
      result = 16967;
      break;
    case 8:
      result = 17737;
      break;
    case 9:
      result = 20041;
      break;
    case 10:
      result = 21577;
      break;
    case 11:
      result = 22605;
      break;
    case 12:
      result = 23118;
      break;
    case 13:
      result = 18259;
      break;
    case 14:
      result = 21333;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000358FC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000357A8(*a1);
  *a2 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for MessagesServiceProvider(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
        JUMPOUT(0x1000359F8);
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100035A30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000357F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100035A60()
{
  result = qword_10018A908;
  if (!qword_10018A908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A908);
  }

  return result;
}

uint64_t sub_100035B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_10003CF80();
  sub_100035EC0(a1, a2, a3, a4, a5, v19, a7, a8, a9);
  return sub_10000ABCC(a6, &qword_100189310, &qword_1001221A0);
}

uint64_t sub_100035BD0()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = sub_100008780(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v0;
  v10 = *(v0 + 8);

  if ((v10 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v4 + 8))(v8, v1);
    return v13[1];
  }

  return v9;
}

uint64_t sub_100035D04()
{
  v0 = sub_100003768(&qword_10018A530, &qword_100124440);
  sub_10000AF7C(v0);
  v2 = *(v1 + 64);
  sub_10000ED78();
  __chkstk_darwin(v3);
  sub_10003CF80();
  State.init(wrappedValue:)();
  sub_10003DCCC();
  return sub_10000ABCC(v4, v5, v6);
}

uint64_t sub_100035DBC()
{
  sub_100003768(&qword_10018A518, &qword_100124920);
  State.init(wrappedValue:)();
  return v1;
}

uint64_t sub_100035E44()
{
  v1 = sub_100035BD0();
  v2 = v0[2];
  v3 = v0[3];
  v4 = sub_1000FE640(v0[4], v0[5]);
  v5 = *(v1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_supportContentCoordinator);
  v7 = sub_100052134(v2, v3, v4, v6);

  return v7;
}

__n128 sub_100035EC0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v35 = a7;
  v36 = a8;
  v34 = a5;
  v15 = sub_100003768(&qword_10018A530, &qword_100124440);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v33 - v17;
  type metadata accessor for FlowViewDataProvider(0);
  sub_10003CCEC(&qword_1001886D0, type metadata accessor for FlowViewDataProvider);
  *a9 = Environment.init<A>(_:)();
  *(a9 + 8) = v19 & 1;
  v20 = type metadata accessor for FlowStepStackView();
  v21 = v20[14];
  v22 = type metadata accessor for HandoffBundle();
  sub_100003CE8(v18, 1, 1, v22);
  sub_100035D04();
  v23 = (a9 + v20[15]);
  *v23 = sub_100035DBC();
  v23[1] = v24;
  v23[2] = v25;
  v26 = (a9 + v20[16]);
  v27 = sub_100035E08();
  *v26 = v28;
  v26[1] = v27;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  if (!a4)
  {
    a4 = sub_1000FF880(&_swiftEmptyArrayStorage);
    a3 = 0;
  }

  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = v34;
  result = *a6;
  v30 = *(a6 + 16);
  *(a9 + 56) = *a6;
  *(a9 + 72) = v30;
  v32 = v35;
  v31 = v36;
  *(a9 + 88) = *(a6 + 32);
  *(a9 + 96) = v32;
  *(a9 + 104) = v31;
  return result;
}

uint64_t sub_100036088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v166 = a2;
  v3 = sub_100003768(&qword_10018A9C0, &qword_100125168);
  sub_10000ED84(v3);
  v5 = *(v4 + 64);
  sub_10000ED78();
  __chkstk_darwin(v6);
  sub_10003DC84();
  v165 = v7;
  v173 = a1;
  sub_10003DBE4();
  v177 = v8;
  v175 = *(v9 + 64);
  __chkstk_darwin(v10);
  v164 = v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_100004D48(&qword_10018A9C8, &qword_100125170);
  v197 = sub_100004D48(&qword_10018A9D0, &qword_100125178);
  v174 = *(a1 + 16);
  v198 = type metadata accessor for Optional();
  v199 = sub_100004D48(&qword_10018A9D8, &qword_100125180);
  v200 = sub_100004D48(&qword_10018A9E0, &qword_100125188);
  v201 = sub_100004D48(&qword_10018A9E8, &qword_100125190);
  sub_10003DCF0();
  v12 = type metadata accessor for TupleView();
  v168 = v12;
  sub_100006A70();
  WitnessTable = swift_getWitnessTable();
  v196 = &type metadata for String;
  v197 = v12;
  v198 = &protocol witness table for String;
  v199 = WitnessTable;
  v13 = type metadata accessor for List();
  sub_100008780(v13);
  v160 = v14;
  v16 = *(v15 + 64);
  sub_10000ED78();
  __chkstk_darwin(v17);
  sub_10003DC84();
  v151 = v18;
  v134 = v13;
  v19 = type metadata accessor for ModifiedContent();
  sub_100008780(v19);
  v169 = v20;
  v22 = *(v21 + 64);
  sub_10000ED78();
  __chkstk_darwin(v23);
  sub_10003DC84();
  v149 = v24;
  sub_100004D48(&qword_10018A9F0, &qword_100125198);
  v143 = v19;
  v25 = type metadata accessor for ModifiedContent();
  sub_100008780(v25);
  v170 = v26;
  v28 = *(v27 + 64);
  sub_10000ED78();
  __chkstk_darwin(v29);
  sub_10003DC84();
  v156 = v30;
  sub_100004D48(&qword_10018A9F8, &qword_1001251A0);
  v148 = v25;
  v31 = type metadata accessor for ModifiedContent();
  sub_100008780(v31);
  v163 = v32;
  v34 = *(v33 + 64);
  sub_10000ED78();
  __chkstk_darwin(v35);
  sub_10003DC84();
  v171 = v36;
  sub_10003DC3C();
  v37 = swift_getWitnessTable();
  v133 = v37;
  v38 = sub_10000F4E8();
  v194 = v37;
  v195 = v38;
  v39 = swift_getWitnessTable();
  v138 = v39;
  sub_10003DC24();
  v41 = sub_10000AAEC(v40, &qword_10018A9F0, &qword_100125198);
  v192 = v39;
  v193 = v41;
  v42 = swift_getWitnessTable();
  v140 = v42;
  sub_10003DC0C();
  v44 = sub_10000AAEC(v43, &qword_10018A9F8, &qword_1001251A0);
  v190 = v42;
  v191 = v44;
  v45 = swift_getWitnessTable();
  v196 = v31;
  v197 = v45;
  v145 = v31;
  v146 = v45;
  v46 = v45;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_10003DBE4();
  v162 = v48;
  v50 = *(v49 + 64);
  sub_10000ED78();
  __chkstk_darwin(v51);
  sub_10003DC84();
  v172 = v52;
  v53 = type metadata accessor for HandoffBundle();
  v54 = type metadata accessor for SupportHandoffUserConsentView();
  v196 = v31;
  v197 = v46;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10003DC6C();
  v58 = sub_10003CCEC(v56, v57);
  sub_10003DC54();
  v61 = sub_10003CCEC(v59, v60);
  v196 = OpaqueTypeMetadata2;
  v197 = v53;
  v62 = OpaqueTypeMetadata2;
  v141 = OpaqueTypeMetadata2;
  v142 = v53;
  v63 = v53;
  v198 = v54;
  v199 = OpaqueTypeConformance2;
  v135 = v54;
  v136 = v61;
  v139 = OpaqueTypeConformance2;
  v200 = v58;
  v201 = v61;
  v137 = v58;
  v64 = swift_getOpaqueTypeMetadata2();
  v155 = v64;
  sub_10003DBE4();
  v161 = v65;
  v67 = *(v66 + 64);
  sub_10000ED78();
  __chkstk_darwin(v68);
  sub_10003DC84();
  v144 = v69;
  v70 = sub_100004D48(&qword_10018A518, &qword_100124920);
  v154 = v70;
  v196 = v62;
  v197 = v63;
  v198 = v54;
  v199 = OpaqueTypeConformance2;
  v200 = v58;
  v201 = v61;
  v71 = swift_getOpaqueTypeConformance2();
  v153 = v71;
  v152 = sub_10003BF10();
  v196 = v64;
  v197 = v70;
  v198 = v71;
  v199 = v152;
  v157 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v72 = swift_getOpaqueTypeMetadata2();
  v158 = sub_100008780(v72);
  v159 = v73;
  v75 = *(v74 + 64);
  v76 = __chkstk_darwin(v158);
  v147 = v129 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v76);
  v150 = v129 - v78;
  v79 = v173;
  v80 = v176;
  v81 = (v176 + *(v173 + 60));
  v82 = *v81;
  v131 = v81[1];
  v132 = v82;
  v130 = v81[2];
  v187 = v82;
  v188 = v131;
  v189 = v130;
  v129[1] = sub_100003768(&qword_10018AA28, &qword_1001251A8);
  State.projectedValue.getter();
  v83 = *(v79 + 24);
  v84 = v174;
  v184 = v174;
  v185 = v83;
  v85 = v83;
  v186 = v80;
  v86 = v80;
  List.init(selection:content:)();
  v87 = v149;
  View.flowListStyle()();
  v88 = *(v160 + 8);
  v89 = sub_10003DCE4();
  v90(v89);
  v181 = v84;
  v182 = v85;
  v183 = v86;
  sub_100003768(&qword_10018AA30, &qword_1001251B0);
  sub_10003C934(&qword_10018AA38, &qword_10018AA30, &qword_1001251B0, sub_10003BFA4);
  static Alignment.center.getter();
  v91 = v143;
  View.overlay<A>(alignment:content:)();
  (*(v169 + 8))(v87, v91);
  v178 = v84;
  v179 = v85;
  v92 = v84;
  v129[0] = v85;
  v180 = v86;
  sub_100003768(&qword_10018AA60, &qword_1001251C8);
  sub_10003C068();
  static HorizontalAlignment.center.getter();
  View.safeAreaInset<A>(edge:alignment:spacing:content:)();
  v93 = *(v170 + 1);
  v94 = sub_10003DCE4();
  v95(v94);
  v96 = v177;
  v97 = *(v177 + 16);
  v169 = v177 + 16;
  v170 = v97;
  v98 = v164;
  v99 = v173;
  v97(v164, v86, v173);
  v168 = *(v96 + 80);
  v100 = (v168 + 32) & ~v168;
  v101 = swift_allocObject();
  v102 = v92;
  *(v101 + 16) = v92;
  *(v101 + 24) = v85;
  v103 = *(v96 + 32);
  v177 = v96 + 32;
  WitnessTable = v103;
  v104 = v99;
  v103(v101 + v100, v98, v99);
  v105 = v171;
  v106 = v145;
  View.onLoad(perform:)();

  (*(v163 + 8))(v105, v106);
  v107 = *(v104 + 56);
  sub_100003768(qword_10018A910, &unk_1001250D0);
  v108 = v176;
  v109 = v165;
  State.projectedValue.getter();
  v170(v98, v108, v104);
  v110 = swift_allocObject();
  *(v110 + 16) = v102;
  v111 = v129[0];
  *(v110 + 24) = v129[0];
  v112 = v104;
  WitnessTable(v110 + v100, v98, v104);
  swift_checkMetadataState();
  v113 = v144;
  v114 = v141;
  v115 = v172;
  View.sheet<A, B>(item:onDismiss:content:)();

  sub_10000ABCC(v109, &qword_10018A9C0, &qword_100125168);
  (*(v162 + 8))(v115, v114);
  v196 = v132;
  v197 = v131;
  v198 = v130;
  State.wrappedValue.getter();
  v196 = v187;
  v197 = v188;
  v170(v98, v176, v112);
  v116 = swift_allocObject();
  *(v116 + 16) = v174;
  *(v116 + 24) = v111;
  WitnessTable(v116 + v100, v98, v112);
  v117 = v147;
  v119 = v154;
  v118 = v155;
  v121 = v152;
  v120 = v153;
  View.onChange<A>(of:initial:_:)();

  (*(v161 + 8))(v113, v118);
  v196 = v118;
  v197 = v119;
  v198 = v120;
  v199 = v121;
  v122 = swift_getOpaqueTypeConformance2();
  v123 = v158;
  sub_1000C6A00(v117, v158, v122);
  v124 = *(v159 + 8);
  v124(v117, v123);
  v125 = sub_10003DCE4();
  sub_1000C6A00(v125, v126, v122);
  v127 = sub_10003DCE4();
  return (v124)(v127);
}

uint64_t sub_100036D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v136 = a4;
  v135 = sub_100003768(&qword_10018A9E0, &qword_100125188);
  v7 = *(*(v135 - 8) + 64);
  v8 = __chkstk_darwin(v135);
  v137 = v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v154 = v119 - v10;
  v128 = type metadata accessor for ListSectionSpacing();
  v127 = *(v128 - 8);
  v11 = *(v127 + 64);
  __chkstk_darwin(v128);
  v126 = v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for FlowStepContentOption();
  v13 = *(*(v123 - 8) + 64);
  __chkstk_darwin(v123);
  v124 = v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_100003768(&qword_10018AB40, &qword_100125280);
  v15 = *(*(v132 - 8) + 64);
  __chkstk_darwin(v132);
  v125 = v119 - v16;
  v134 = sub_100003768(&qword_10018A9D8, &qword_100125180);
  v17 = *(*(v134 - 8) + 64);
  v18 = __chkstk_darwin(v134);
  v150 = v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = v119 - v21;
  v122 = *(a2 - 8);
  v23 = *(v122 + 64);
  v24 = __chkstk_darwin(v20);
  v121 = v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v120 = v119 - v26;
  v148 = type metadata accessor for Optional();
  v143 = *(v148 - 8);
  v27 = *(v143 + 64);
  v28 = __chkstk_darwin(v148);
  v146 = v119 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v153 = v119 - v30;
  v31 = type metadata accessor for FlowStepMainContentView();
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v130 = v119 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100003768(&qword_10018AB48, &qword_100125288);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v129 = v119 - v36;
  v37 = sub_100003768(&qword_10018AB50, &qword_100125290);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37 - 8);
  v40 = v119 - v39;
  v133 = sub_100003768(&qword_10018A9D0, &qword_100125178);
  v41 = *(*(v133 - 8) + 64);
  v42 = __chkstk_darwin(v133);
  v145 = v119 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v152 = v119 - v44;
  v149 = a3;
  v138 = type metadata accessor for FlowStepStackView();
  sub_100035BD0();
  v45 = *(a1 + 16);
  v46 = *(a1 + 24);
  v151 = a1;
  v47 = sub_10008D804(v45, v46);

  v147 = v22;
  if (v47)
  {
    v48 = v34;
    v49 = qword_1001881D8;

    if (v49 != -1)
    {
      swift_once();
    }

    v50 = qword_1001A5758;
    v51 = objc_opt_self();

    v52 = [v51 systemBackgroundColor];
    v53 = Color.init(_:)();

    v54 = static Color.clear.getter();

    v142 = v50;

    v140 = v54;

    v141 = v53;

    v139 = 1;
    v34 = v48;
  }

  else
  {
    v139 = 0;
    v142 = 0;
    v140 = 0;
    v141 = 0;
  }

  v144 = v47;

  v55 = v151;
  sub_100035BD0();
  v56 = sub_10008D788(v45, v46);

  v131 = v56;
  if (v56)
  {
    v57 = v56;
    v58 = v56;
  }

  else
  {
    v59 = v55[4];
    v60 = v55[5];
    sub_1000FE780();
    v61 = type metadata accessor for ImageResource();
    v62 = 1;
    v63 = sub_10000E5F0(v40, 1, v61);
    sub_10000ABCC(v40, &qword_10018AB50, &qword_100125290);
    if (v63 == 1)
    {
      v64 = v152;
      v55 = v151;
      goto LABEL_12;
    }

    v58 = [objc_allocWithZone(TPSContent) init];
    v57 = 0;
    v55 = v151;
  }

  v65 = v57;
  sub_100035BD0();
  v66 = v55[4];
  v60 = v55[5];
  sub_1000868AC();
  v68 = v67;
  v70 = v69;

  v71 = v130;
  sub_10005A5EC(v58, v68, v70, v130);
  LOBYTE(v68) = static Edge.Set.all.getter();
  v72 = v71;
  v73 = v129;
  sub_10003CF1C(v72, v129);
  v74 = &v73[*(v34 + 36)];
  *v74 = v68;
  *(v74 + 8) = 0u;
  *(v74 + 24) = 0u;
  v74[40] = 1;
  v64 = v152;
  sub_10003D260();
  v62 = 0;
LABEL_12:
  v119[2] = v60;
  v75 = 1;
  sub_100003CE8(v64, v62, 1, v34);
  v76 = v55[12];
  v77 = v149;
  v78 = v146;
  v119[1] = v76;
  if (v76)
  {
    v79 = v55[13];

    v81 = v121;
    v76(v80);
    sub_1000068F8(v76);
    v82 = v120;
    sub_1000C6A00(v81, a2, v77);
    v83 = v122;
    v84 = *(v122 + 8);
    v84(v81, a2);
    sub_1000C6A00(v82, a2, v77);
    v84(v82, a2);
    (*(v83 + 32))(v78, v81, a2);
    v75 = 0;
  }

  v85 = 1;
  sub_100003CE8(v78, v75, 1, a2);
  sub_10000625C(v78, v153);
  v86 = *(v143 + 8);
  v130 = v143 + 8;
  v129 = v86;
  (v86)(v78, v148);
  v87 = v138;
  v88 = sub_100035E44();
  if (v88)
  {
    v89 = v88;
    v90 = v124;
    swift_storeEnumTagMultiPayload();
    sub_1000FF9FC();
    v92 = v91;
    sub_10003D310(v90, type metadata accessor for FlowStepContentOption);
    v93 = v132;
    if (v92)
    {
      v94 = *(v89 + 16);
    }

    else
    {
      v94 = 3;
    }

    v96 = v147;
    v97 = v126;
    static ListSectionSpacing.custom(_:)();
    v98 = *(sub_100003768(&qword_10018AB90, &qword_100125298) + 36);
    v99 = v127;
    v100 = v125;
    v101 = v128;
    (*(v127 + 16))(&v125[v98], v97, v128);
    sub_100003CE8(v100 + v98, 0, 1, v101);
    *v100 = v89;
    v100[1] = v94;
    KeyPath = swift_getKeyPath();
    v103 = (v100 + *(v93 + 36));
    v104 = *(sub_100003768(&qword_100188FE8, &qword_100124FA0) + 28);
    (*(v99 + 32))(v103 + v104, v97, v101);
    sub_100003CE8(v103 + v104, 0, 1, v101);
    *v103 = KeyPath;
    sub_10003D260();
    v85 = 0;
    v87 = v138;
    v95 = v96;
  }

  else
  {
    v95 = v147;
    v93 = v132;
  }

  sub_100003CE8(v95, v85, 1, v93);
  sub_100037E88(v87, v154);
  if (qword_100188360 != -1)
  {
    swift_once();
  }

  v105 = qword_1001A5950;
  if (!qword_1001A5950)
  {
    goto LABEL_26;
  }

  swift_getKeyPath();

  v106 = sub_1000FBFA4();

  if ((v106 & 1) == 0)
  {

    v105 = 0;
LABEL_26:
    v109 = 0;
    v110 = 0;
    v112 = 0;
    v111 = 0;
    goto LABEL_27;
  }

  sub_10003851C(&v168);

  v105 = v168;
  v107 = v171;
  v108 = v172;
  v109 = v169;
  v110 = v170;
  sub_100017564(v168, v169, v170);
  v111 = v108;

  v112 = v107;

LABEL_27:
  v151 = v105;
  v168 = v144;
  v169 = v139;
  v170 = v142;
  v171 = v140;
  v173 = 0;
  v174 = 0;
  v172 = v141;
  v175[0] = &v168;
  v113 = v145;
  sub_10003CF80();
  v175[1] = v113;
  v114 = v148;
  (*(v143 + 16))(v78, v153, v148);
  v175[2] = v78;
  v115 = v150;
  sub_10003CF80();
  v175[3] = v115;
  v116 = v137;
  sub_10003CF80();
  v163 = v105;
  v164 = v109;
  v165 = v110;
  v166 = v112;
  v167 = v111;
  v175[4] = v116;
  v175[5] = &v163;
  v162[0] = sub_100003768(&qword_10018A9C8, &qword_100125170);
  v162[1] = v133;
  v162[2] = v114;
  v162[3] = v134;
  v162[4] = v135;
  v162[5] = sub_100003768(&qword_10018A9E8, &qword_100125190);
  v156 = sub_10003C934(&qword_10018AB58, &qword_10018A9C8, &qword_100125170, sub_10002C22C);
  v157 = sub_10003C934(&qword_10018AB60, &qword_10018A9D0, &qword_100125178, sub_10003C9B0);
  v155 = v149;
  WitnessTable = swift_getWitnessTable();
  v159 = sub_10003C934(&qword_10018AB78, &qword_10018A9D8, &qword_100125180, sub_10003CA6C);
  v160 = sub_10003C934(&qword_10018ABA0, &qword_10018A9E0, &qword_100125188, sub_10003CC30);
  v161 = sub_10003C934(&qword_10018ABC8, &qword_10018A9E8, &qword_100125190, sub_10003CD88);
  sub_1000C2BF0(v175, 6, v162);
  sub_10003CE40(v144, v139, v142, v140, v141, 0);
  sub_10003CEBC(v151, v109, v110, v112);

  sub_10000ABCC(v154, &qword_10018A9E0, &qword_100125188);
  sub_10000ABCC(v147, &qword_10018A9D8, &qword_100125180);
  v117 = v129;
  (v129)(v153, v114);
  sub_10000ABCC(v152, &qword_10018A9D0, &qword_100125178);
  sub_10003CEBC(v163, v164, v165, v166);
  sub_10000ABCC(v116, &qword_10018A9E0, &qword_100125188);
  sub_10000ABCC(v150, &qword_10018A9D8, &qword_100125180);
  (v117)(v146, v114);
  sub_10000ABCC(v145, &qword_10018A9D0, &qword_100125178);
  return sub_10003CE40(v168, v169, v170, v171, v172, v173);
}

uint64_t sub_100037E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v65 = a2;
  v55 = type metadata accessor for FlowStepContentOption();
  v5 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v57 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_100003768(&qword_10018ABF0, &qword_100125310);
  v7 = *(*(v63 - 8) + 64);
  v8 = __chkstk_darwin(v63);
  v64 = &v52 - v9;
  v60 = a1;
  v58 = *(a1 - 8);
  v10 = *(v58 + 64);
  __chkstk_darwin(v8);
  v54 = v11;
  v56 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for ContactOptionsView();
  v12 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  v61 = (&v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_100003768(&qword_10018ABF8, &qword_100125318);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v52 - v16;
  v18 = sub_100003768(&qword_10018AC00, &qword_100125320);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18);
  v53 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v52 - v23;
  __chkstk_darwin(v22);
  v59 = &v52 - v25;
  sub_100035BD0();
  v26 = *(v2 + 16);
  v27 = *(v2 + 24);
  sub_1000FE640(*(v3 + 32), *(v3 + 40));
  sub_100087500();

  if (sub_10000E5F0(v17, 1, v18) == 1)
  {
    v28 = v65;
    sub_10000ABCC(v17, &qword_10018ABF8, &qword_100125318);
    v29 = v57;
    swift_storeEnumTagMultiPayload();
    sub_1000FF9FC();
    v31 = v30;
    sub_10003D310(v29, type metadata accessor for FlowStepContentOption);
    if (v31)
    {
      swift_storeEnumTagMultiPayload();
      sub_10003CCEC(&qword_10018ABB8, type metadata accessor for ContactOptionsView);
      sub_10003CD34();
      _ConditionalContent<>.init(storage:)();
      v32 = 0;
    }

    else
    {
      v32 = 1;
    }
  }

  else
  {
    v33 = v59;
    sub_10003D260();
    sub_10003CF80();
    sub_10003CFD8(*&v24[*(v18 + 48)], *&v24[*(v18 + 48) + 8]);
    v34 = v53;
    sub_10003CF80();
    v35 = (v34 + *(v18 + 48));
    v36 = v35[1];
    v57 = *v35;
    v37 = v58;
    v38 = v56;
    v39 = v60;
    (*(v58 + 16))(v56, v3, v60);
    v40 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = *(v39 + 16);
    (*(v37 + 32))(v41 + v40, v38, v39);
    type metadata accessor for FlowViewDataProvider(0);
    sub_10003CCEC(&qword_1001886D0, type metadata accessor for FlowViewDataProvider);
    v42 = Environment.init<A>(_:)();
    v44 = v61;
    v43 = v62;
    *v61 = v42;
    *(v44 + 8) = v45 & 1;
    v46 = v43[5];
    sub_10003D260();
    v47 = (v44 + v43[6]);
    *v47 = v57;
    v47[1] = v36;
    v48 = (v44 + v43[7]);
    *v48 = sub_10003D1F0;
    v48[1] = v41;
    sub_10000ABCC(v34, &qword_100189108, &unk_1001226E0);
    sub_10003D2B8();
    swift_storeEnumTagMultiPayload();
    sub_10003CCEC(&qword_10018ABB8, type metadata accessor for ContactOptionsView);
    sub_10003CD34();
    v49 = v65;
    _ConditionalContent<>.init(storage:)();
    sub_10003D310(v44, type metadata accessor for ContactOptionsView);
    sub_10000ABCC(v33, &qword_10018AC00, &qword_100125320);
    v32 = 0;
    v28 = v49;
  }

  v50 = sub_100003768(&qword_10018ABB0, &qword_1001252A0);
  return sub_100003CE8(v28, v32, 1, v50);
}

uint64_t sub_10003851C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for FlowViewDataProvider(0);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = sub_1000FE640(v5, v6);
  v9 = sub_1000877E8(v3, v4, v7, v8);
  v11 = v10;

  if (v3 == v9 && v4 == v11)
  {

    goto LABEL_8;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
LABEL_8:
    v22._countAndFlagsBits = v3;
    v22._object = v4;
    String.append(_:)(v22);
    goto LABEL_9;
  }

  _StringGuts.grow(_:)(48);

  v14._countAndFlagsBits = v3;
  v14._object = v4;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0xD000000000000017;
  v15._object = 0x8000000100135D80;
  String.append(_:)(v15);
  v16 = sub_1000FE640(v5, v6);
  v18 = sub_1000877E8(v3, v4, v16, v17);
  v20 = v19;

  v21._countAndFlagsBits = v18;
  v21._object = v20;
  String.append(_:)(v21);

LABEL_9:
  static HierarchicalShapeStyle.secondary.getter();
  v23 = Text.foregroundStyle<A>(_:)();
  v25 = v24;
  v27 = v26;

  static Font.footnote.getter();
  v28 = Text.font(_:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;

  sub_10000AC78(v23, v25, v27 & 1);

  static Color.clear.getter();
  result = AnyView.init<A>(_:)();
  *a1 = v28;
  *(a1 + 8) = v30;
  *(a1 + 16) = v32 & 1;
  *(a1 + 24) = v34;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1000387D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100003768(&qword_10018AA48, &qword_1001251B8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v17[-v7 - 8];
  if (*(v2 + 48) || (sub_10003CF80(), v9 = v18, sub_10000ABCC(v17, &qword_100189310, &qword_1001221A0), v9))
  {
    *v8 = static HorizontalAlignment.center.getter();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v10 = sub_100003768(&qword_10018AA90, &qword_1001251F8);
    sub_100039E3C(v2, *(a1 + 16), *(a1 + 24), &v8[*(v10 + 44)]);
    v11 = static Edge.Set.bottom.getter();
    v12 = static SafeAreaRegions.all.getter();
    v13 = &v8[*(v5 + 36)];
    *v13 = v12;
    v13[8] = v11;
    sub_10003C37C();
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  return sub_100003CE8(a2, v14, 1, v5);
}

double sub_100038928@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Color.clear.getter();
  v5 = (a1 + *(type metadata accessor for FlowStepStackView() + 64));
  v7 = *v5;
  v8 = v5[1];
  sub_100003768(&qword_100189560, &qword_1001251F0);
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a2 = v4;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  result = *&v11;
  *(a2 + 40) = v11;
  return result;
}

uint64_t sub_100038A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100038AA8, v5, v4);
}

uint64_t sub_100038AA8()
{
  sub_10003DCD8();
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  type metadata accessor for FlowStepStackView();
  sub_100038B20();
  sub_10000875C();

  return v5();
}

void sub_100038B20()
{
  v1 = v0;
  v59 = type metadata accessor for DeviceExpertTroubleshooting.ActionType();
  v55 = *(v59 - 8);
  v2 = *(v55 + 64);
  __chkstk_darwin(v59);
  v58 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v57 = &v48 - v6;
  v7 = type metadata accessor for HMTSolution.Article();
  v61 = *(v7 - 8);
  v8 = *(v61 + 64);
  __chkstk_darwin(v7);
  v60 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FlowStepContentOption();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100035BD0();
  v15 = v0[3];
  v56 = v0[2];
  v16 = sub_1000FE640(v0[4], v0[5]);
  v17 = *(v14 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_supportContentCoordinator);
  v19 = sub_100052134(v56, v15, v16, v18);

  if (v19)
  {
    v20 = v61;
    swift_storeEnumTagMultiPayload();
    sub_1000FF9FC();
    v22 = v21;
    sub_10003D310(v13, type metadata accessor for FlowStepContentOption);
    v23 = v7;
    if (v22)
    {
      v24 = *(v19 + 16);
    }

    else
    {
      v24 = 3;
    }

    sub_100039DAC(v24, v19);
    v49 = v28;
    v29 = (v27 >> 1) - v26;
    if (v27 >> 1 != v26)
    {
      if ((v27 >> 1) <= v26)
      {
        __break(1u);
        return;
      }

      v31 = *(v20 + 16);
      v30 = v20 + 16;
      v56 = v31;
      v32 = *(v30 + 56);
      v61 = v30;
      v54 = (v30 - 8);
      HIDWORD(v53) = enum case for DeviceExpertTroubleshooting.ActionType.suggested(_:);
      v51 = (v55 + 8);
      v52 = (v55 + 104);
      v55 = v32;
      v33 = v25 + v26 * v32;
      v50 = v23;
      v34 = v57;
      do
      {
        v35 = v60;
        v36 = v50;
        v56(v60, v33, v50);
        sub_100035BD0();
        v37 = v1;
        v38 = HMTSolution.Article.id.getter();
        v40 = v39;
        HMTSolution.Article.url.getter();
        (*v54)(v35, v36);
        v42 = v58;
        v41 = v59;
        (*v52)(v58, HIDWORD(v53), v59);
        v43 = v38;
        v1 = v37;
        sub_100085DC0(v43, v40, v34, v42, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);

        (*v51)(v42, v41);
        sub_10000ABCC(v34, &qword_100188EE0, &unk_100122AE0);
        v33 += v55;
        --v29;
      }

      while (v29);
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_100038F20@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v19 = a4;
  v7 = type metadata accessor for FlowStepStackView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - v10;
  v12 = type metadata accessor for HandoffBundle();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_100035BD0();
  sub_10003D2B8();
  (*(v8 + 16))(v11, a1, v7);
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  (*(v8 + 32))(v16 + v15, v11, v7);
  return sub_100040724(v14, sub_10003C364, v16, v19);
}

uint64_t sub_1000390F0()
{
  v0 = sub_100003768(&qword_10018A530, &qword_100124440);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  __chkstk_darwin(v2);
  v4 = &v8 - v3;
  v5 = type metadata accessor for HandoffBundle();
  sub_100003CE8(v4, 1, 1, v5);
  v6 = *(type metadata accessor for FlowStepStackView() + 56);
  sub_10003CF80();
  sub_100003768(qword_10018A910, &unk_1001250D0);
  State.wrappedValue.setter();
  return sub_10000ABCC(v4, &qword_10018A530, &qword_100124440);
}

uint64_t sub_100039224(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = type metadata accessor for FlowStepStackView();
  return sub_100039270(v2, v3, v4);
}

uint64_t sub_100039270(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3)
{
  v4 = v3;
  v64 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v61 = *(v7 - 8);
  v8 = *(v61 + 64);
  __chkstk_darwin(v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v60 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *(a3 - 8);
  v16 = *(v57 + 64);
  __chkstk_darwin(v14);
  v55 = v17;
  v56 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DispatchTime();
  v59 = *(v62 - 8);
  v18 = *(v59 + 64);
  v19 = __chkstk_darwin(v62);
  v54 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v58 = &v48 - v21;
  v22 = type metadata accessor for HMTSolution.Article();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  result = __chkstk_darwin(v22);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a2;
  if (a2)
  {
    v63 = a3;
    result = sub_100035E44();
    if (result)
    {
      v28 = result;
      v49 = v4;
      v50 = v12;
      v51 = v10;
      v52 = v11;
      v53 = v7;
      v29 = 0;
      v30 = *(result + 16);
      v31 = (v23 + 8);
      while (1)
      {
        if (v30 == v29)
        {
        }

        if (v29 >= *(v28 + 16))
        {
          break;
        }

        (*(v23 + 16))(v27, v28 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v29, v22);
        if (HMTSolution.Article.id.getter() == v64 && v32 == v65)
        {

          (*v31)(v27, v22);
          v35 = v63;
LABEL_14:

          sub_10003C2F0();
          v36 = v35;
          v37 = static OS_dispatch_queue.main.getter();
          v38 = v54;
          static DispatchTime.now()();
          v39 = v58;
          + infix(_:_:)();
          v65 = *(v59 + 8);
          v65(v38, v62);
          v41 = v56;
          v40 = v57;
          (*(v57 + 16))(v56, v49, v36);
          v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
          v43 = swift_allocObject();
          *(v43 + 16) = *(v36 + 16);
          (*(v40 + 32))(v43 + v42, v41, v36);
          aBlock[4] = sub_10003C334;
          aBlock[5] = v43;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100039D68;
          aBlock[3] = &unk_100179928;
          v44 = _Block_copy(aBlock);
          v45 = v60;
          static DispatchQoS.unspecified.getter();
          v66 = _swiftEmptyArrayStorage;
          sub_10003CCEC(&qword_10018AA78, &type metadata accessor for DispatchWorkItemFlags);
          sub_100003768(&qword_10018AA80, &unk_1001251E0);
          sub_10000AAEC(&qword_10018AA88, &qword_10018AA80, &unk_1001251E0);
          v46 = v51;
          v47 = v53;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
          _Block_release(v44);

          (*(v61 + 8))(v46, v47);
          (*(v50 + 8))(v45, v52);
          v65(v39, v62);
        }

        ++v29;
        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

        result = (*v31)(v27, v22);
        v35 = v63;
        if (v34)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000398E0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_100003768(&qword_10018A530, &qword_100124440) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[8] = v6;
  v3[9] = v5;

  return _swift_task_switch(sub_1000399C0, v6, v5);
}

uint64_t sub_1000399C0()
{
  sub_100025A94();
  v1 = v0[4];
  v0[10] = sub_100035BD0();
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_100039A64;
  v3 = v0[6];
  v4 = v0[2];

  return sub_100086A60();
}

uint64_t sub_100039A64()
{
  sub_100025A94();
  v3 = *(*v1 + 88);
  v2 = *v1;
  sub_10000870C();
  *v4 = v2;
  v2[12] = v0;

  if (v0)
  {
    v5 = v2[8];
    v6 = v2[9];
    v7 = sub_100039C74;
  }

  else
  {
    v8 = v2[10];

    v5 = v2[8];
    v6 = v2[9];
    v7 = sub_100039B74;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100039B74()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];

  v6 = type metadata accessor for HandoffBundle();
  sub_100003CE8(v2, 0, 1, v6);
  v7 = *(v5 + 56);
  sub_10003CF80();
  sub_100003768(qword_10018A910, &unk_1001250D0);
  State.wrappedValue.setter();
  sub_10000ABCC(v2, &qword_10018A530, &qword_100124440);

  sub_10000875C();

  return v8();
}

uint64_t sub_100039C74()
{
  sub_10003DCD8();
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];

  sub_10000875C();
  v6 = v0[12];

  return v5();
}

uint64_t sub_100039CF8(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for FlowStepStackView() + 60));
  v3 = *v1;
  v4 = *(v1 + 2);
  sub_100003768(&qword_10018AA28, &qword_1001251A8);
  return State.wrappedValue.setter();
}

uint64_t sub_100039D68(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_100039DAC(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    v4 = sub_10001797C(0, a1, *(a2 + 16), a2);
    if (v5)
    {
      v6 = v3;
    }

    else
    {
      v6 = v4;
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      sub_1000178D8(0, v6, a2);

      sub_10003DCCC();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_100039E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v28 = a1;
  v29 = a3;
  v31 = a4;
  v30 = type metadata accessor for BarMagicPocketStyle();
  v5 = *(v30 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v30);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003768(&qword_10018AA98, &qword_100125200);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  v14 = sub_100003768(&qword_10018AAA0, &qword_100125208);
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = __chkstk_darwin(v14);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v28 - v20;
  v32 = a2;
  v33 = v29;
  v34 = v28;
  sub_100003768(&qword_10018AAA8, &qword_100125210);
  sub_10003C3E8();
  GlassEffectContainer.init(spacing:content:)();
  static BarMagicPocketStyle.automatic.getter();
  sub_10000AAEC(&qword_10018AAD8, &qword_10018AA98, &qword_100125200);
  View.scrollPocketTag_v1(style:)();
  (*(v5 + 8))(v8, v30);
  (*(v10 + 8))(v13, v9);
  v22 = v15[2];
  v22(v19, v21, v14);
  v23 = v31;
  *v31 = 0;
  *(v23 + 8) = 1;
  v24 = v23;
  v25 = sub_100003768(&qword_10018AAE0, &qword_100125230);
  v22(&v24[*(v25 + 48)], v19, v14);
  v26 = v15[1];
  v26(v21, v14);
  return (v26)(v19, v14);
}

uint64_t sub_10003A18C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  v7 = type metadata accessor for FlowStepStackView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v35 - v10;
  v12 = sub_100003768(&qword_10018AAC0, &qword_100125218);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v35 - v15;
  *v16 = static HorizontalAlignment.center.getter();
  *(v16 + 1) = 0x4024000000000000;
  v16[16] = 0;
  v17 = sub_100003768(&qword_10018AAE8, &qword_100125238);
  sub_10003A494(a1, a2, a3, &v16[*(v17 + 44)]);
  (*(v8 + 16))(v11, a1, v7);
  v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  (*(v8 + 32))(v19 + v18, v11, v7);
  v20 = &v16[*(v13 + 44)];
  *v20 = sub_10003B0F8;
  *(v20 + 1) = 0;
  *(v20 + 2) = sub_10003C558;
  *(v20 + 3) = v19;
  sub_100003768(&qword_10018AAF0, &qword_100125240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100122C90;
  LOBYTE(v19) = static Edge.Set.horizontal.getter();
  *(inited + 32) = v19;
  v22 = static Edge.Set.bottom.getter();
  *(inited + 33) = v22;
  v23 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v19)
  {
    v23 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v22)
  {
    v23 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = v35;
  sub_10003D260();
  result = sub_100003768(&qword_10018AAA8, &qword_100125210);
  v34 = v32 + *(result + 36);
  *v34 = v23;
  *(v34 + 8) = v25;
  *(v34 + 16) = v27;
  *(v34 + 24) = v29;
  *(v34 + 32) = v31;
  *(v34 + 40) = 0;
  return result;
}

uint64_t sub_10003A494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v71 = sub_100003768(&qword_10018AAF8, &qword_100125248);
  v8 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v69 = v63 - v9;
  v77 = sub_100003768(&qword_10018AB00, &qword_100125250);
  v10 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v70 = v63 - v11;
  v12 = sub_100003768(&qword_10018AB08, &qword_100125258);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v79 = v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v78 = v63 - v16;
  v67 = a2;
  v68 = a3;
  v17 = type metadata accessor for FlowStepStackView();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = v63 - v20;
  v22 = type metadata accessor for GlassProminentButtonStyle();
  v64 = *(v22 - 8);
  v65 = v22;
  v23 = *(v64 + 64);
  __chkstk_darwin(v22);
  v25 = v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100003768(&qword_10018AB10, &qword_100125260);
  v27 = *(*(v26 - 1) + 64);
  __chkstk_darwin(v26);
  v29 = v63 - v28;
  v72 = sub_100003768(&qword_10018AB18, &qword_100125268);
  v30 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v66 = v63 - v31;
  v32 = sub_100003768(&qword_10018AB20, &qword_100125270);
  v33 = *(*(v32 - 8) + 64);
  v34 = __chkstk_darwin(v32 - 8);
  v75 = v63 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v73 = v17;
  v74 = v63 - v36;
  v37 = *(a1 + 48);
  v76 = a1;
  if (v37)
  {
    v63[1] = a4;
    swift_retain_n();
    GlassProminentButtonStyle.init()();
    (*(v18 + 16))(v21, a1, v17);
    v38 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v39 = (v19 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    v41 = v68;
    *(v40 + 16) = v67;
    *(v40 + 24) = v41;
    (*(v18 + 32))(v40 + v38, v21, v17);
    *(v40 + v39) = v37;
    type metadata accessor for FlowViewDataProvider(0);
    sub_10003CCEC(&qword_1001886D0, type metadata accessor for FlowViewDataProvider);

    *v29 = Environment.init<A>(_:)();
    v29[8] = v42 & 1;
    *(v29 + 2) = v37;
    v44 = v64;
    v43 = v65;
    (*(v64 + 16))(&v29[v26[10]], v25, v65);
    *&v29[v26[11]] = 0;
    if (qword_1001881D8 != -1)
    {
      swift_once();
    }

    v45 = qword_1001A5758;
    v46 = *(v44 + 8);

    v46(v25, v43);
    *&v29[v26[12]] = v45;
    v47 = &v29[v26[13]];
    *v47 = sub_10003C7E0;
    v47[1] = v40;
    static String.stepPrimaryActionButton.getter();
    sub_10000AAEC(&qword_10018AB38, &qword_10018AB10, &qword_100125260);
    View.accessibilityIdentifier(_:)();

    sub_10000ABCC(v29, &qword_10018AB10, &qword_100125260);
    v48 = v74;
    sub_10003D260();
    v49 = 0;
  }

  else
  {
    v49 = 1;
    v48 = v74;
  }

  v50 = 1;
  sub_100003CE8(v48, v49, 1, v72);
  sub_10003CF80();
  v51 = v81;
  sub_10000ABCC(v80, &qword_100189310, &qword_1001221A0);
  if (v51)
  {
    v52 = sub_10003AE3C(v73);
    v53 = v71;
    v54 = v69;
    v55 = &v69[*(v71 + 40)];
    GlassButtonStyle.init()();
    type metadata accessor for FlowViewDataProvider(0);
    sub_10003CCEC(&qword_1001886D0, type metadata accessor for FlowViewDataProvider);
    *v54 = Environment.init<A>(_:)();
    *(v54 + 8) = v56 & 1;
    *(v54 + 16) = v52;
    *(v54 + v53[11]) = 0;
    *(v54 + v53[12]) = 0;
    v57 = (v54 + v53[13]);
    *v57 = 0;
    v57[1] = 0;
    static String.stepNextButton.getter();
    sub_10000AAEC(&qword_10018AB30, &qword_10018AAF8, &qword_100125248);
    View.accessibilityIdentifier(_:)();

    sub_10000ABCC(v54, &qword_10018AAF8, &qword_100125248);
    v58 = v78;
    sub_10003D260();
    v50 = 0;
  }

  else
  {
    v58 = v78;
  }

  sub_100003CE8(v58, v50, 1, v77);
  v59 = v75;
  sub_10003CF80();
  v60 = v79;
  sub_10003CF80();
  sub_10003CF80();
  v61 = *(sub_100003768(&qword_10018AB28, &qword_100125278) + 48);
  sub_10003CF80();
  sub_10000ABCC(v58, &qword_10018AB08, &qword_100125258);
  sub_10000ABCC(v48, &qword_10018AB20, &qword_100125270);
  sub_10000ABCC(v60, &qword_10018AB08, &qword_100125258);
  return sub_10000ABCC(v59, &qword_10018AB20, &qword_100125270);
}

uint64_t sub_10003AD18(uint64_t a1)
{
  v2 = type metadata accessor for DeviceExpertTroubleshooting.ActionType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100035BD0();
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  (*(v3 + 104))(v6, enum case for DeviceExpertTroubleshooting.ActionType.executed(_:), v2);
  sub_10008577C();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_10003AE3C(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1);
  v5 = type metadata accessor for Locale();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for ActionInfoDestination(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v14 = sub_1000FE8D0(*(v1 + 32), *(v1 + 40));
  if (!v13)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v14 = String.init(localized:table:bundle:locale:comment:)();
  }

  v15 = v13;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  (*(v3 + 16))(v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  v16 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = *(a1 + 16);
  (*(v3 + 32))(v17 + v16, v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v18 = type metadata accessor for ActionInfo(0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  return sub_1000EDD44(v12, v14, v15, 1, v22, sub_10003C880, v17);
}

uint64_t sub_10003B0F8@<X0>(void *a1@<X8>)
{
  result = GeometryProxy.size.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10003B124(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for FlowStepStackView() + 64));
  v5 = *v3;
  v6 = v3[1];
  sub_100003768(&qword_100189560, &qword_1001251F0);
  return State.wrappedValue.setter();
}

uint64_t sub_10003B1A4()
{
  sub_10003CF80();
  if (!v4)
  {
    return sub_10000ABCC(&v3, &qword_100189310, &qword_1001221A0);
  }

  sub_10003C91C(&v3, v5);
  v0 = v5[4];
  sub_100025734(v5, v5[3]);
  sub_100035BD0();
  v1 = *(*(v0 + 8) + 8);
  sub_10008D638();

  return sub_1000086BC(v5);
}

uint64_t sub_10003B260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v26 = a1;
  v5 = type metadata accessor for ContactType();
  v25 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FlowStepStackView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = sub_100003768(&qword_1001888B0, &qword_1001228F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v25 - v16;
  v18 = type metadata accessor for TaskPriority();
  sub_100003CE8(v17, 1, 1, v18);
  (*(v10 + 16))(v13, a2, v9);
  (*(v6 + 16))(v8, v26, v5);
  type metadata accessor for MainActor();
  v19 = static MainActor.shared.getter();
  v20 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v21 = (v11 + *(v6 + 80) + v20) & ~*(v6 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = v19;
  *(v22 + 3) = &protocol witness table for MainActor;
  v23 = v28;
  *(v22 + 4) = v27;
  *(v22 + 5) = v23;
  (*(v10 + 32))(&v22[v20], v13, v9);
  (*(v6 + 32))(&v22[v21], v8, v25);
  sub_100085200();
}

uint64_t sub_10003B520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for Logger();
  v5[2] = v7;
  v8 = *(v7 - 8);
  v5[3] = v8;
  v9 = *(v8 + 64) + 15;
  v5[4] = swift_task_alloc();
  v5[5] = type metadata accessor for MainActor();
  v5[6] = static MainActor.shared.getter();
  v10 = swift_task_alloc();
  v5[7] = v10;
  v11 = type metadata accessor for FlowStepStackView();
  *v10 = v5;
  v10[1] = sub_10003B660;

  return sub_1000398E0(a5, v11);
}

uint64_t sub_10003B660()
{
  sub_10003DCD8();
  v2 = v0;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *v1;
  sub_10000870C();
  *v7 = v6;
  *(v8 + 64) = v2;

  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v11 = sub_10003B810;
  }

  else
  {
    v11 = sub_10003B7B0;
  }

  return _swift_task_switch(v11, v10, v9);
}

uint64_t sub_10003B7B0()
{
  sub_100025A94();
  v1 = *(v0 + 48);

  v2 = *(v0 + 32);

  sub_10000875C();

  return v3();
}

uint64_t sub_10003B810()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[4];

  static Logger.supportFlowApp.getter();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Presenting privacy sheet for hand-off failed: %@", v8, 0xCu);
    sub_10000ABCC(v9, &qword_100189390, &qword_1001241D0);
  }

  else
  {
    v11 = v0[8];
  }

  (*(v0[3] + 8))(v0[4], v0[2]);
  v12 = v0[4];

  sub_10000875C();

  return v13();
}

uint64_t sub_10003B9A0()
{
  sub_100025AAC(7);
  sub_100025AAC(3);

  sub_100025AAC(5);

  sub_100025AAC(0);

  return sub_10000AFAC();
}

uint64_t sub_10003BA00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10003B9A0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_10003BA48()
{
  sub_10003BDB4(319, &qword_100189460, type metadata accessor for FlowViewDataProvider, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_10003BDB4(319, &qword_10018A998, type metadata accessor for ActionInfo, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10003BE18(319, &qword_100189710, &unk_100189718, &unk_100129EC0, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_10003BE18(319, &qword_10018A9A0, &qword_10018A9A8, qword_100125100, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_10003BE18(319, &qword_10018A9B0, &qword_10018A530, &qword_100124440, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_10003BE18(319, &qword_10018A9B8, &qword_10018A518, &qword_100124920, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              sub_10003BE7C();
              if (v6 <= 0x3F)
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

uint64_t sub_10003BC80(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100003768(qword_10018A910, &unk_1001250D0);
    v9 = a1 + *(a3 + 56);

    return sub_10000E5F0(v9, a2, v8);
  }
}

uint64_t sub_10003BD28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100003768(qword_10018A910, &unk_1001250D0);
    v8 = v5 + *(a4 + 56);

    return sub_100003CE8(v8, a2, a2, v7);
  }

  return result;
}

void sub_10003BDB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10003BE18(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100004D48(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_10003BE7C()
{
  if (!qword_100189478)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100189478);
    }
  }
}

unint64_t sub_10003BF10()
{
  result = qword_10018AA20;
  if (!qword_10018AA20)
  {
    sub_100004D48(&qword_10018A518, &qword_100124920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018AA20);
  }

  return result;
}

uint64_t sub_10003BF98@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_10003879C(a1);
}

unint64_t sub_10003BFA4()
{
  result = qword_10018AA40;
  if (!qword_10018AA40)
  {
    sub_100004D48(&qword_10018AA48, &qword_1001251B8);
    sub_10000AAEC(&qword_10018AA50, &qword_10018AA58, &qword_1001251C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018AA40);
  }

  return result;
}

double sub_10003C05C@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_100038928(v1[4], a1);
}

unint64_t sub_10003C068()
{
  result = qword_10018AA68;
  if (!qword_10018AA68)
  {
    sub_100004D48(&qword_10018AA60, &qword_1001251C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018AA68);
  }

  return result;
}

uint64_t sub_10003C0F0()
{
  sub_10003DCD8();
  v4 = sub_10003DC90();
  sub_10000ED84(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10003DBE0;

  return sub_100038A0C(v1 + v6, v0, v2);
}

uint64_t sub_10003C1C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = type metadata accessor for FlowStepStackView();
  sub_10000ED84(v5);
  v7 = v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_100038F20(v7, v3, v4, a1);
}

uint64_t sub_10003C258(uint64_t a1, uint64_t *a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = type metadata accessor for FlowStepStackView();
  sub_10000ED84(v7);
  v9 = *(v8 + 80);

  return sub_100039224(a1, a2);
}

unint64_t sub_10003C2F0()
{
  result = qword_10018AA70;
  if (!qword_10018AA70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10018AA70);
  }

  return result;
}

uint64_t sub_10003C34C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003C37C()
{
  sub_100012478();
  v1 = sub_100003768(&qword_10018AA48, &qword_1001251B8);
  sub_10000AF7C(v1);
  v3 = *(v2 + 32);
  v4 = sub_10000AFAC();
  v5(v4);
  return v0;
}

unint64_t sub_10003C3E8()
{
  result = qword_10018AAB0;
  if (!qword_10018AAB0)
  {
    sub_100004D48(&qword_10018AAA8, &qword_100125210);
    sub_10003C474();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018AAB0);
  }

  return result;
}

unint64_t sub_10003C474()
{
  result = qword_10018AAB8;
  if (!qword_10018AAB8)
  {
    sub_100004D48(&qword_10018AAC0, &qword_100125218);
    sub_10000AAEC(&qword_10018AAC8, &qword_10018AAD0, &unk_100125220);
    sub_10000AAEC(&qword_100189548, &qword_100189550, &unk_100122B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018AAB8);
  }

  return result;
}

uint64_t sub_10003C558()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_10003DCCC();
  v3 = type metadata accessor for FlowStepStackView();
  sub_10000ED84(v3);
  v5 = *(v4 + 80);
  v6 = sub_10003DCB0();

  return sub_10003B124(v6, v7);
}

uint64_t sub_10003C5C8()
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = type metadata accessor for FlowStepStackView();
  sub_10003DBF4(v5);
  v7 = *(v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v10 = *(v9 + 64);
  v11 = (v1 + v8);
  v12 = *(v1 + v8);

  v13 = *(v1 + v8 + 24);

  v14 = *(v1 + v8 + 40);

  v15 = *(v1 + v8 + 48);

  if (*(v1 + v8 + 80))
  {
    sub_1000086BC(v11 + 7);
  }

  if (v11[12])
  {
    v16 = v11[13];
  }

  v17 = v11 + v0[14];
  v18 = type metadata accessor for HandoffBundle();
  if (!sub_10003DD10(v18))
  {
    v19 = type metadata accessor for ContactType();
    sub_10000AF7C(v19);
    (*(v20 + 8))(v17);
    v21 = &v17[v2[5]];
    if (*(v21 + 1))
    {

      v22 = *(v21 + 3);

      v23 = *(v21 + 5);

      v24 = *(v21 + 7);

      v25 = *(v21 + 9);
    }

    v26 = *&v17[v2[6]];

    v27 = *&v17[v2[7]];

    v28 = *&v17[v2[8]];

    v29 = *&v17[v2[9]];

    v30 = *&v17[v2[10]];

    v31 = *&v17[v2[11]];

    v32 = *&v17[v2[12]];
  }

  v33 = (v10 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = *&v17[*(sub_100003768(qword_10018A910, &unk_1001250D0) + 28)];

  v35 = v11 + v0[15];
  v36 = *(v35 + 1);

  v37 = *(v35 + 2);

  v38 = *(v11 + v0[16] + 8);

  v39 = *(v1 + v33);

  return _swift_deallocObject(v1, v33 + 8, v7 | 7);
}

uint64_t sub_10003C7E0()
{
  v1 = *(sub_10003DC90() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10003AD18(v0 + v2);
}

uint64_t sub_10003C898(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v4 = sub_10003DC90();
  sub_10000ED84(v4);
  v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return a1(v6, v1, v3);
}

uint64_t sub_10003C91C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10003C934(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10003C9B0()
{
  result = qword_10018AB68;
  if (!qword_10018AB68)
  {
    sub_100004D48(&qword_10018AB48, &qword_100125288);
    sub_10003CCEC(&qword_10018AB70, type metadata accessor for FlowStepMainContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018AB68);
  }

  return result;
}

unint64_t sub_10003CA6C()
{
  result = qword_10018AB80;
  if (!qword_10018AB80)
  {
    sub_100004D48(&qword_10018AB40, &qword_100125280);
    sub_10003CB24();
    sub_10000AAEC(&qword_100189010, &qword_100188FE8, &qword_100124FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018AB80);
  }

  return result;
}

unint64_t sub_10003CB24()
{
  result = qword_10018AB88;
  if (!qword_10018AB88)
  {
    sub_100004D48(&qword_10018AB90, &qword_100125298);
    sub_10003CBDC();
    sub_10000AAEC(&qword_100189000, &qword_100189008, &qword_100122380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018AB88);
  }

  return result;
}

unint64_t sub_10003CBDC()
{
  result = qword_10018AB98;
  if (!qword_10018AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018AB98);
  }

  return result;
}

unint64_t sub_10003CC30()
{
  result = qword_10018ABA8;
  if (!qword_10018ABA8)
  {
    sub_100004D48(&qword_10018ABB0, &qword_1001252A0);
    sub_10003CCEC(&qword_10018ABB8, type metadata accessor for ContactOptionsView);
    sub_10003CD34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018ABA8);
  }

  return result;
}

uint64_t sub_10003CCEC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10003CD34()
{
  result = qword_10018ABC0;
  if (!qword_10018ABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018ABC0);
  }

  return result;
}

unint64_t sub_10003CD88()
{
  result = qword_10018ABD0;
  if (!qword_10018ABD0)
  {
    sub_100004D48(&qword_10018ABD8, &qword_1001252A8);
    sub_10000AAEC(&qword_10018ABE0, &qword_10018ABE8, &qword_1001252B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018ABD0);
  }

  return result;
}

uint64_t sub_10003CE40(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {

    return sub_1000068F8(a6);
  }

  return result;
}

uint64_t sub_10003CEBC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000AC78(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10003CF1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowStepMainContentView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003CF80()
{
  sub_100012478();
  v3 = sub_100003768(v1, v2);
  sub_10000AF7C(v3);
  v5 = *(v4 + 16);
  v6 = sub_10000AFAC();
  v7(v6);
  return v0;
}

uint64_t sub_10003CFD8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_10003CFEC()
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = type metadata accessor for FlowStepStackView();
  sub_10003DBF4(v5);
  v7 = *(v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v10 = *(v9 + 64);
  v11 = (v1 + v8);
  v12 = *(v1 + v8);

  v13 = *(v1 + v8 + 24);

  v14 = *(v1 + v8 + 40);

  v15 = *(v1 + v8 + 48);

  if (*(v1 + v8 + 80))
  {
    sub_1000086BC(v11 + 7);
  }

  if (v11[12])
  {
    v16 = v11[13];
  }

  v17 = v11 + v0[14];
  v18 = type metadata accessor for HandoffBundle();
  if (!sub_10003DD10(v18))
  {
    v19 = type metadata accessor for ContactType();
    sub_10000AF7C(v19);
    (*(v20 + 8))(v17);
    v21 = &v17[v2[5]];
    if (*(v21 + 1))
    {

      v22 = *(v21 + 3);

      v23 = *(v21 + 5);

      v24 = *(v21 + 7);

      v25 = *(v21 + 9);
    }

    v26 = *&v17[v2[6]];

    v27 = *&v17[v2[7]];

    v28 = *&v17[v2[8]];

    v29 = *&v17[v2[9]];

    v30 = *&v17[v2[10]];

    v31 = *&v17[v2[11]];

    v32 = *&v17[v2[12]];
  }

  v33 = *&v17[*(sub_100003768(qword_10018A910, &unk_1001250D0) + 28)];

  v34 = v11 + v0[15];
  v35 = *(v34 + 1);

  v36 = *(v34 + 2);

  v37 = *(v11 + v0[16] + 8);

  return _swift_deallocObject(v1, v8 + v10, v7 | 7);
}

uint64_t sub_10003D1F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_10003DCCC();
  v3 = type metadata accessor for FlowStepStackView();
  sub_10000ED84(v3);
  v5 = *(v4 + 80);
  v6 = sub_10003DCB0();

  return sub_10003B260(v6, v7, v8, v9);
}

uint64_t sub_10003D260()
{
  sub_100012478();
  v3 = sub_100003768(v1, v2);
  sub_10000AF7C(v3);
  v5 = *(v4 + 32);
  v6 = sub_10000AFAC();
  v7(v6);
  return v0;
}

uint64_t sub_10003D2B8()
{
  sub_100012478();
  v2 = v1(0);
  sub_10000AF7C(v2);
  v4 = *(v3 + 16);
  v5 = sub_10000AFAC();
  v6(v5);
  return v0;
}

uint64_t sub_10003D310(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10000AF7C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10003D368()
{
  v2 = *(v1 + 4);
  v3 = *(v1 + 5);
  v4 = type metadata accessor for FlowStepStackView();
  sub_10003DBF4(v4);
  v6 = *(v5 + 80);
  v7 = (v6 + 48) & ~v6;
  v41 = *(v8 + 64);
  v43 = type metadata accessor for ContactType();
  sub_100008780(v43);
  v10 = v9;
  v11 = *(v9 + 80);
  v42 = *(v12 + 64);
  v13 = *(v1 + 2);
  swift_unknownObjectRelease();
  v14 = &v1[v7];
  v15 = *&v1[v7];

  v16 = *&v1[v7 + 24];

  v17 = *&v1[v7 + 40];

  v18 = *&v1[v7 + 48];

  if (*&v1[v7 + 80])
  {
    sub_1000086BC(v14 + 7);
  }

  if (v14[12])
  {
    v19 = v14[13];
  }

  v20 = v14 + v0[14];
  v21 = type metadata accessor for HandoffBundle();
  if (!sub_10000E5F0(v20, 1, v21))
  {
    (*(v10 + 8))(v20, v43);
    v22 = (v20 + v21[5]);
    if (v22[1])
    {

      v23 = v22[3];

      v24 = v22[5];

      v25 = v22[7];

      v26 = v22[9];
    }

    v27 = *(v20 + v21[6]);

    v28 = *(v20 + v21[7]);

    v29 = *(v20 + v21[8]);

    v30 = *(v20 + v21[9]);

    v31 = *(v20 + v21[10]);

    v32 = *(v20 + v21[11]);

    v33 = *(v20 + v21[12]);
  }

  v34 = (v7 + v41 + v11) & ~v11;
  v35 = *(v20 + *(sub_100003768(qword_10018A910, &unk_1001250D0) + 28));

  v36 = v14 + v0[15];
  v37 = *(v36 + 1);

  v38 = *(v36 + 2);

  v39 = *(v14 + v0[16] + 8);

  (*(v10 + 8))(&v1[v34], v43);

  return _swift_deallocObject(v1, v34 + v42, v6 | v11 | 7);
}

uint64_t sub_10003D5F8(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = *(type metadata accessor for FlowStepStackView() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = type metadata accessor for ContactType();
  sub_10000ED84(v10);
  v12 = (v8 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_10003D760;

  return sub_10003B520(a1, v13, v14, v1 + v8, v1 + v12);
}

uint64_t sub_10003D760()
{
  sub_100025A94();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_10000870C();
  *v3 = v2;

  sub_10000875C();

  return v4();
}

uint64_t sub_10003D844(uint64_t *a1)
{
  v1 = *a1;
  sub_100004D48(&qword_10018A9C8, &qword_100125170);
  sub_100004D48(&qword_10018A9D0, &qword_100125178);
  type metadata accessor for Optional();
  sub_100004D48(&qword_10018A9D8, &qword_100125180);
  sub_100004D48(&qword_10018A9E0, &qword_100125188);
  sub_100004D48(&qword_10018A9E8, &qword_100125190);
  sub_10003DCF0();
  type metadata accessor for TupleView();
  sub_100006A70();
  swift_getWitnessTable();
  type metadata accessor for List();
  type metadata accessor for ModifiedContent();
  sub_100004D48(&qword_10018A9F0, &qword_100125198);
  type metadata accessor for ModifiedContent();
  sub_100004D48(&qword_10018A9F8, &qword_1001251A0);
  type metadata accessor for ModifiedContent();
  sub_10003DC3C();
  swift_getWitnessTable();
  sub_10000F4E8();
  swift_getWitnessTable();
  sub_10003DC24();
  sub_10000AAEC(v2, &qword_10018A9F0, &qword_100125198);
  swift_getWitnessTable();
  sub_10003DC0C();
  sub_10000AAEC(v3, &qword_10018A9F8, &qword_1001251A0);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for HandoffBundle();
  type metadata accessor for SupportHandoffUserConsentView();
  swift_getOpaqueTypeConformance2();
  sub_10003DC6C();
  sub_10003CCEC(v4, v5);
  sub_10003DC54();
  sub_10003CCEC(v6, v7);
  swift_getOpaqueTypeMetadata2();
  sub_100004D48(&qword_10018A518, &qword_100124920);
  swift_getOpaqueTypeConformance2();
  sub_10003BF10();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10003DC90()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return type metadata accessor for FlowStepStackView();
}

uint64_t sub_10003DCF0()
{

  return swift_getTupleTypeMetadata();
}

uint64_t sub_10003DD10(uint64_t a1)
{

  return sub_10000E5F0(v1, 1, a1);
}

uint64_t sub_10003DD44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowSymbol();

  return sub_10000E5F0(a1, a2, v4);
}

uint64_t sub_10003DDA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowSymbol();

  return sub_100003CE8(a1, a2, a2, v4);
}

uint64_t type metadata accessor for FlowSymbolView()
{
  result = qword_10018AC60;
  if (!qword_10018AC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003DE38()
{
  result = type metadata accessor for FlowSymbol();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_10003DEC0@<D0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003768(&qword_10018AC98, &qword_1001253A8);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v41 - v10;
  v41 = sub_100003768(&qword_10018ACA0, &qword_1001253B0);
  v12 = sub_10000AF7C(v41);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v41 - v15;
  v17 = *v1;
  v18 = *(v1 + 1);

  Image.init(_internalSystemName:)();
  (*(v3 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v2);
  v19 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v6, v2);
  v20 = &v11[*(sub_100003768(&qword_10018ACA8, &qword_1001253B8) + 36)];
  v21 = *(sub_100003768(&qword_10018A7F8, &qword_100124AE8) + 28);
  v22 = type metadata accessor for FlowSymbol();
  v23 = v22[5];
  v24 = type metadata accessor for SymbolRenderingMode();
  sub_10000AF7C(v24);
  (*(v25 + 16))(v20 + v21, &v1[v23], v24);
  sub_100003CE8(v20 + v21, 0, 1, v24);
  *v20 = swift_getKeyPath();
  *v11 = v19;
  *(v11 + 1) = 0;
  *(v11 + 8) = 1;
  v26 = v22[6];
  KeyPath = swift_getKeyPath();
  v28 = &v11[*(v8 + 44)];
  v29 = *(sub_100003768(&qword_10018ACB0, &qword_100125420) + 28);
  v30 = type metadata accessor for Image.Scale();
  sub_10000AF7C(v30);
  (*(v31 + 16))(v28 + v29, &v1[v26]);
  *v28 = KeyPath;
  v32 = v22[7];
  if (*&v1[v32])
  {
    v33 = *&v1[v32];
  }

  else
  {
    v33 = static Color.secondary.getter();
  }

  sub_10003E294(v11, v16, &qword_10018AC98, &qword_1001253A8);
  *&v16[*(v41 + 36)] = v33;
  v34 = &v1[v22[8]];
  v35 = *v34;
  v36 = *(v34 + 1);

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v37 = v42;
  sub_10003E294(v16, v42, &qword_10018ACA0, &qword_1001253B0);
  v38 = (v37 + *(sub_100003768(&qword_10018ACB8, &qword_100125428) + 36));
  v39 = v44;
  *v38 = v43;
  v38[1] = v39;
  result = *&v45;
  v38[2] = v45;
  return result;
}

uint64_t sub_10003E294(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003768(a3, a4);
  sub_10000AF7C(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

unint64_t sub_10003E2F8()
{
  result = qword_10018ACC0;
  if (!qword_10018ACC0)
  {
    sub_100004D48(&qword_10018ACB8, &qword_100125428);
    sub_10003E384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018ACC0);
  }

  return result;
}

unint64_t sub_10003E384()
{
  result = qword_10018ACC8;
  if (!qword_10018ACC8)
  {
    sub_100004D48(&qword_10018ACA0, &qword_1001253B0);
    sub_10003E43C();
    sub_10000AAEC(&qword_10018ACE8, &qword_10018ACF0, &unk_100125430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018ACC8);
  }

  return result;
}

unint64_t sub_10003E43C()
{
  result = qword_10018ACD0;
  if (!qword_10018ACD0)
  {
    sub_100004D48(&qword_10018AC98, &qword_1001253A8);
    sub_10003E4F4();
    sub_10000AAEC(&qword_10018ACE0, &qword_10018ACB0, &qword_100125420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018ACD0);
  }

  return result;
}

unint64_t sub_10003E4F4()
{
  result = qword_10018ACD8;
  if (!qword_10018ACD8)
  {
    sub_100004D48(&qword_10018ACA8, &qword_1001253B8);
    sub_100010DA8();
    sub_10000AAEC(&qword_10018A868, &qword_10018A7F8, &qword_100124AE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018ACD8);
  }

  return result;
}

uint64_t sub_10003E5D8@<X0>(__int16 a1@<W1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
  }

  v10 = sub_10010BDF0();
  v12 = v11;

  if (qword_100188380 != -1)
  {
    swift_once();
  }

  v14 = qword_1001A5980;
  v13 = *algn_1001A5988;
  *(a2 + 40) = &type metadata for AirPodsStepProvider;
  v15 = sub_100004C8C();
  *(a2 + 16) = HIBYTE(a1);
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 48) = v15;
  *(a2 + 56) = v14;
  *(a2 + 64) = v13;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
}

unint64_t sub_10003E7BC()
{
  v1 = type metadata accessor for SupportActionInfoType();
  v2 = sub_10000AF7C(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_10000C30C();
  v7 = v6 - v5;
  sub_10003EBB8(v0, v6 - v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = 0xD000000000000015;
  }

  else
  {
    v8 = 0x736E6F6974706FLL;
  }

  sub_10003EE8C(v7);
  return v8;
}

unint64_t sub_10003E880@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10003E7BC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10003E8A8(uint64_t a1)
{
  v2 = type metadata accessor for ActionInfoDestination(0);
  v3 = sub_10000AF7C(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000C30C();
  v8 = v7 - v6;
  v9 = type metadata accessor for SupportActionInfoType();
  v10 = sub_10000AF7C(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_10000C30C();
  v15 = v14 - v13;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_10000C30C();
  v21 = v20 - v19;
  sub_10003EBB8(a1, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v17 + 32))(v21, v15, v16);
  if (EnumCaseMultiPayload == 1)
  {
    if (qword_100188170 != -1)
    {
      swift_once();
    }

    v23 = &qword_10018AD08;
  }

  else
  {
    if (qword_100188168 != -1)
    {
      swift_once();
    }

    v23 = &qword_10018ACF8;
  }

  v24 = *v23;
  v25 = v23[1];

  (*(v17 + 16))(v8, v21, v16);
  swift_storeEnumTagMultiPayload();
  v32[3] = v9;
  v32[4] = sub_10003EF94(&qword_10018AD18);
  v26 = sub_10003EE2C(v32);
  sub_10003EBB8(a1, v26);
  v27 = type metadata accessor for ActionInfo(0);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = sub_1000EDD44(v8, v24, v25, 1, v32, 0, 0);
  sub_10003EE8C(a1);
  (*(v17 + 8))(v21, v16);
  return v30;
}

uint64_t type metadata accessor for SupportActionInfoType()
{
  result = qword_10018AD90;
  if (!qword_10018AD90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003EBB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SupportActionInfoType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003EC1C()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_10018ACF8 = result;
  unk_10018AD00 = v5;
  return result;
}

uint64_t sub_10003ED24()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_10018AD08 = result;
  unk_10018AD10 = v5;
  return result;
}

uint64_t *sub_10003EE2C(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_10003EE8C(uint64_t a1)
{
  v2 = type metadata accessor for SupportActionInfoType();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003EEF0()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10003EF50(uint64_t a1)
{
  result = sub_10003EF94(&qword_10018ADC8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10003EF94(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SupportActionInfoType();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10003F004(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    return v11[1];
  }

  return a1;
}

double sub_10003F144@<D0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ActionInfoType(0);
  v9 = sub_10000AF7C(v8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v36 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v37 = &v35 - v14;
  v15 = sub_100003768(&qword_10018ADD0, &unk_1001256A0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v35 - v21;
  __chkstk_darwin(v20);
  v24 = &v35 - v23;
  v25 = *(sub_10003F004(a1, a2 & 1) + qword_1001A58A8);
  sub_10003F548(v25);

  if (v25 == 10 || (sub_1000136E0(a3), v26 = sub_100058B18(v25, a3), sub_10003F67C(a3), sub_10003F68C(v25), (v26 & 1) == 0))
  {
    if (qword_100188378 != -1)
    {
      swift_once();
    }

    v27 = *algn_1001A5978;
    v38 = qword_1001A5970;
  }

  else
  {
    v38 = 0;
    v27 = 0;
  }

  *v24 = 0;
  swift_storeEnumTagMultiPayload();
  sub_100003CE8(v24, 0, 1, v8);
  sub_10003F004(a1, a2 & 1);
  v28 = sub_1000DEC54(a3, 1);

  v41[3] = &type metadata for MessagesStepProvider;
  v41[4] = sub_10001362C();
  v41[0] = v28;
  sub_10000EC9C(v24, v22, &qword_10018ADD0, &unk_1001256A0);
  sub_10000EC9C(v41, v39, &qword_100189310, &qword_1001221A0);
  sub_10000EC9C(v22, v19, &qword_10018ADD0, &unk_1001256A0);
  if (sub_10000E5F0(v19, 1, v8) == 1)
  {
    sub_10000ABCC(v22, &qword_10018ADD0, &unk_1001256A0);
    sub_10000ABCC(v24, &qword_10018ADD0, &unk_1001256A0);
    sub_10000ABCC(v41, &qword_100189310, &qword_1001221A0);
    v29 = 0;
  }

  else
  {
    v30 = v37;
    sub_10003F558(v19, v37);
    type metadata accessor for ActionInfo(0);
    v31 = v36;
    sub_10003F5BC(v30, v36);
    v29 = sub_1000ED69C(v31, 1, 0, 0);
    sub_10003F620(v30);
    sub_10000ABCC(v22, &qword_10018ADD0, &unk_1001256A0);
    sub_10000ABCC(v24, &qword_10018ADD0, &unk_1001256A0);
    sub_10000ABCC(v41, &qword_100189310, &qword_1001221A0);
  }

  *a4 = 0xD000000000000015;
  *(a4 + 8) = 0x8000000100135E70;
  *(a4 + 64) = v27;
  *(a4 + 72) = v29;
  result = *v39;
  v33 = v39[1];
  *(a4 + 16) = v39[0];
  *(a4 + 32) = v33;
  v34 = v38;
  *(a4 + 48) = v40;
  *(a4 + 56) = v34;
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
  return result;
}

unint64_t sub_10003F548(unint64_t result)
{
  if (result != 10)
  {
    return sub_1000136E0(result);
  }

  return result;
}

uint64_t sub_10003F558(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionInfoType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003F5BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionInfoType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003F620(uint64_t a1)
{
  v2 = type metadata accessor for ActionInfoType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10003F67C(unint64_t result)
{
  if (result >= 0xA)
  {
  }

  return result;
}

unint64_t sub_10003F68C(unint64_t result)
{
  if (result != 10)
  {
    return sub_10003F67C(result);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CompromisedAccountStepProvider(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10003F768);
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

double sub_10003F7BC@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 1:
      sub_1000B6FB4(&v77);
      v81 = *v78;
      v80 = *&v78[8];
      v66 = v77;
      v70 = *v78;
      v71 = *&v78[16];
      LOBYTE(v72) = v79;
      BYTE1(v72) = 1;

      sub_10004009C(&v81, v74);
      sub_10004010C(&v80, v74);
      sub_10003FF68();
      v37 = sub_10003FFBC();
      sub_100005960(v37, &_s13ResetPasswordVN_0, &_s10ReviewInfoVN, v38, v37, v39, v40, v41, v66);
      _ConditionalContent<>.init(storage:)();
      sub_1000402E0();
      sub_1000402C8(v42, v43, v44, v45, v46, v47, v48, v49, v67, v70, *(&v70 + 1), v71, v72, v73, v74[0]);
      sub_100003768(&qword_10018AE08, &qword_100125840);
      sub_100003768(&qword_10018AE10, &qword_100125848);
      sub_10003FEDC();
      v50 = sub_100040010();
      sub_100005960(v50, v51, v52, v53, v50, v54, v55, v56, v68);
      _ConditionalContent<>.init(storage:)();

      sub_100040168(&v81);
      sub_1000401D0(&v80);
      goto LABEL_8;
    case 2:
      sub_1000402B4();
      v64 = v18;
      sub_10003FE34();
      v19 = sub_10003FE88();
      sub_100005960(v19, &_s13VerifyDevicesVN, &_s14ContactSupportVN, v20, v19, v21, v22, v23, v64);
      _ConditionalContent<>.init(storage:)();
      goto LABEL_5;
    case 3:
      sub_1000402B4();
      v65 = v24 - 4;
      sub_10003FE34();
      v25 = sub_10003FE88();
      sub_100005960(v25, &_s13VerifyDevicesVN, &_s14ContactSupportVN, v26, v25, v27, v28, v29, v65);
      _ConditionalContent<>.init(storage:)();
LABEL_5:
      v63 = *&v74[0];
      goto LABEL_6;
    default:
      sub_1000402B4();
      v61 = v4;
      v69 = v3;
      LOWORD(v72) = 0;
      sub_10003FF68();
      v5 = sub_10003FFBC();
      sub_100005960(v5, &_s13ResetPasswordVN_0, &_s10ReviewInfoVN, v6, v5, v7, v8, v9, v61);
      _ConditionalContent<>.init(storage:)();
      sub_1000402E0();
      sub_1000402C8(v10, v11, v12, v13, v14, v15, v16, v17, v62, v69, 1, 0, v72, v73, v74[0]);
LABEL_6:
      sub_100003768(&qword_10018AE08, &qword_100125840);
      sub_100003768(&qword_10018AE10, &qword_100125848);
      sub_10003FEDC();
      v30 = sub_100040010();
      sub_100005960(v30, v31, v32, v33, v30, v34, v35, v36, v63);
      _ConditionalContent<>.init(storage:)();
LABEL_8:
      result = *v74;
      v58 = v74[1];
      v59 = v75;
      v60 = v76;
      *a2 = v74[0];
      *(a2 + 16) = v58;
      *(a2 + 32) = v59;
      *(a2 + 34) = v60;
      return result;
  }
}

unint64_t sub_10003FAC4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100175F70, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10003FB10(char a1)
{
  result = 0xD000000000000022;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000026;
      break;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10003FBBC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003FAC4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10003FBEC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10003FB10(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_10003FC18(void *a1@<X8>)
{
  v3 = *v1;
  sub_1000E799C();
  *a1 = v4;
  a1[1] = v5;
}

unint64_t sub_10003FC78()
{
  result = qword_10018ADD8;
  if (!qword_10018ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018ADD8);
  }

  return result;
}

uint64_t sub_10003FCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10003FD34()
{
  result = qword_10018ADE0;
  if (!qword_10018ADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018ADE0);
  }

  return result;
}

unint64_t sub_10003FD88()
{
  result = qword_10018ADE8;
  if (!qword_10018ADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018ADE8);
  }

  return result;
}

unint64_t sub_10003FDE0()
{
  result = qword_10018ADF0;
  if (!qword_10018ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018ADF0);
  }

  return result;
}

unint64_t sub_10003FE34()
{
  result = qword_10018ADF8;
  if (!qword_10018ADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018ADF8);
  }

  return result;
}

unint64_t sub_10003FE88()
{
  result = qword_10018AE00;
  if (!qword_10018AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018AE00);
  }

  return result;
}

unint64_t sub_10003FEDC()
{
  result = qword_10018AE18;
  if (!qword_10018AE18)
  {
    sub_100004D48(&qword_10018AE08, &qword_100125840);
    sub_10003FF68();
    sub_10003FFBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018AE18);
  }

  return result;
}

unint64_t sub_10003FF68()
{
  result = qword_10018AE20;
  if (!qword_10018AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018AE20);
  }

  return result;
}

unint64_t sub_10003FFBC()
{
  result = qword_10018AE28;
  if (!qword_10018AE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018AE28);
  }

  return result;
}

unint64_t sub_100040010()
{
  result = qword_10018AE30;
  if (!qword_10018AE30)
  {
    sub_100004D48(&qword_10018AE10, &qword_100125848);
    sub_10003FE34();
    sub_10003FE88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018AE30);
  }

  return result;
}

uint64_t sub_10004009C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018AE38, &qword_100125850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100040168(uint64_t a1)
{
  v2 = sub_100003768(&qword_10018AE38, &qword_100125850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100040228()
{
  result = qword_10018AE40;
  if (!qword_10018AE40)
  {
    sub_100004D48(&qword_10018AE48, &qword_100125858);
    sub_10003FEDC();
    sub_100040010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018AE40);
  }

  return result;
}

uint64_t sub_1000402F4()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_10000C30C();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_10000C30C();
  v4 = type metadata accessor for SupportFlowIdentifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10000C30C();
  v9 = v8 - v7;
  ObservationRegistrar.init()();
  (*(v5 + 104))(v9, enum case for SupportFlowIdentifier.compromisedAccount(_:), v4);

  sub_1001056F4();
  v11 = v10;
  swift_retain_n();
  sub_100107F8C(0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_100105F38();
  if (qword_100188238 != -1)
  {
    swift_once();
  }

  sub_100104744();

  return v11;
}

uint64_t sub_100040544()
{
  v1 = qword_10018AE50;
  v2 = type metadata accessor for ObservationRegistrar();
  sub_10000C31C(v2);
  v4 = *(v3 + 8);

  return v4(v0 + v1);
}

uint64_t sub_1000405A0()
{
  v0 = sub_10011484C();
  v1 = qword_10018AE50;
  v2 = type metadata accessor for ObservationRegistrar();
  sub_10000C31C(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t type metadata accessor for CompromisedAccountFlowViewModel()
{
  result = qword_10018AE80;
  if (!qword_10018AE80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100040684()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100040724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v32 = a2;
  v7 = type metadata accessor for HandoffBundle();
  v8 = sub_10000ED84(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003768(&qword_10018B188, &qword_1001258A0);
  v14 = sub_10000AF7C(v13);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v32 - v20;
  LOBYTE(v33) = 0;
  sub_100046238();
  v22 = v35;
  *(a4 + 16) = v34;
  *(a4 + 24) = v22;
  LOBYTE(v33) = 0;
  sub_100046238();
  v23 = v35;
  *(a4 + 32) = v34;
  *(a4 + 40) = v23;
  v24 = *(type metadata accessor for SupportHandoffUserConsentView() + 28);
  v25 = type metadata accessor for HandoffErrorAlert(0);
  sub_100003CE8(v21, 1, 1, v25);
  sub_1000409DC(v21, v19);
  State.init(wrappedValue:)();
  sub_100044F98(v21, &qword_10018B188, &qword_1001258A0);
  sub_1000450F4();
  v26 = swift_allocObject();
  *(v26 + 16) = v32;
  *(v26 + 24) = a3;
  v27 = type metadata accessor for SupportHandoffUserConsentViewModel(0);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();

  v33 = sub_100081488(a1, v12, sub_100040A84, v26);
  sub_100046238();

  result = sub_1000454F4();
  v31 = v35;
  *a4 = v34;
  *(a4 + 8) = v31;
  return result;
}

uint64_t type metadata accessor for SupportHandoffUserConsentView()
{
  result = qword_10018B1F0;
  if (!qword_10018B1F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000409DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018B188, &qword_1001258A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100040A4C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100040A84()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100040AAC()
{
  v1 = sub_100003768(&qword_10018B248, &qword_100125920);
  v2 = sub_10000ED84(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = *v0;
  v7 = v0[1];
  sub_100003768(&qword_10018B250, &qword_100125928);
  State.projectedValue.getter();
  swift_getKeyPath();
  sub_100003768(&qword_10018B258, &qword_100125958);
  Binding.subscript.getter();

  sub_100003768(&qword_10018B260, &qword_100125960);
  sub_100004D48(&qword_10018B268, &qword_100125968);
  sub_100004D48(&qword_10018B270, &qword_100125970);
  sub_100004D48(&qword_10018B278, &qword_100125978);
  type metadata accessor for HandoffErrorAlert(255);
  sub_100004D48(&qword_10018B280, &qword_100125980);
  type metadata accessor for AppleAccountSignInView(255);
  sub_100004D48(&qword_10018B288, &qword_100125988);
  sub_100004D48(&qword_10018B290, &qword_100125990);
  sub_100004D48(&qword_10018B298, &qword_100125998);
  sub_100004D48(&qword_10018B2A0, &qword_1001259A0);
  sub_100044D7C();
  sub_100004D48(&qword_10018B2B8, &qword_1001259A8);
  sub_10000AAEC(&qword_10018B2C0, &qword_10018B2B8, &qword_1001259A8);
  sub_1000461AC();
  sub_1000461AC();
  sub_10002EA50();
  type metadata accessor for SupportHandoffUserConsentViewModel(255);
  sub_10002EAA4();
  sub_100044EE4(&qword_10018A6C0, type metadata accessor for SupportHandoffUserConsentViewModel);
  sub_1000461AC();
  sub_1000461AC();
  sub_100044EE4(&qword_10018B2C8, type metadata accessor for AppleAccountSignInView);
  sub_1000461AC();
  sub_10000AAEC(&qword_10018B2D0, &qword_10018B270, &qword_100125970);
  sub_100044E68();
  sub_1000461AC();
  return NavigationStack.init<>(path:root:)();
}

uint64_t sub_100040EE8()
{
  sub_10004620C();
  v2 = type metadata accessor for NavigationPath();
  v3 = sub_100008780(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v1);
  v9 = *v0;
  return sub_10007E5EC(v7);
}

uint64_t sub_100040FA0@<X0>(ValueMetadata **a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = sub_100003768(&qword_10018B188, &qword_1001258A0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v73 = &v58 - v5;
  v6 = type metadata accessor for SupportHandoffUserConsentView();
  v7 = *(v6 - 8);
  v71 = v6 - 8;
  v76 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v81 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for WelcomeView();
  v63 = *(v62 - 8);
  v9 = *(v63 + 64);
  __chkstk_darwin(v62);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_100003768(&qword_10018B298, &qword_100125998);
  v12 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v61 = &v58 - v13;
  v66 = sub_100003768(&qword_10018B288, &qword_100125988);
  v67 = *(v66 - 8);
  v14 = *(v67 + 64);
  __chkstk_darwin(v66);
  v64 = &v58 - v15;
  v68 = sub_100003768(&qword_10018B280, &qword_100125980);
  v69 = *(v68 - 8);
  v16 = *(v69 + 64);
  __chkstk_darwin(v68);
  v79 = &v58 - v17;
  v70 = sub_100003768(&qword_10018B268, &qword_100125968);
  v72 = *(v70 - 8);
  v18 = *(v72 + 64);
  __chkstk_darwin(v70);
  v80 = &v58 - v19;
  v20 = a1[1];
  v84 = *a1;
  v21 = v84;
  v85 = v20;
  sub_100003768(&qword_10018B250, &qword_100125928);
  State.wrappedValue.getter();
  v22 = type metadata accessor for ShareDataWelcomeContent();
  v87 = v22;
  v88 = sub_100044EE4(&qword_10018B2E0, type metadata accessor for ShareDataWelcomeContent);
  v23 = sub_10003EE2C(&v84);
  sub_1000450F4();

  v90 = v21;
  v91 = v20;
  State.wrappedValue.getter();
  v24 = sub_10007E7F4();

  *(v23 + *(v22 + 20)) = v24;
  v78 = type metadata accessor for SupportHandoffUserConsentView;
  sub_1000450F4();
  v75 = *(v7 + 80);
  v25 = (v75 + 16) & ~v75;
  swift_allocObject();
  v77 = type metadata accessor for SupportHandoffUserConsentView;
  sub_100045338();
  WelcomeView.init(content:actionHandler:)();
  static String.stepPrivacySheet.getter();
  sub_100044EE4(&qword_10018B2B0, &type metadata accessor for WelcomeView);
  v26 = v61;
  v27 = v62;
  View.accessibilityIdentifier(_:)();

  (*(v63 + 8))(v11, v27);
  v83 = a1;
  v59 = a1;
  v28 = sub_100003768(&qword_10018B2A0, &qword_1001259A0);
  v29 = sub_100044D7C();
  v30 = sub_100004D48(&qword_10018B2B8, &qword_1001259A8);
  v31 = sub_10000AAEC(&qword_10018B2C0, &qword_10018B2B8, &qword_1001259A8);
  v84 = v30;
  v85 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v64;
  v34 = v65;
  View.toolbar<A>(content:)();
  sub_100044F98(v26, &qword_10018B298, &qword_100125998);
  sub_1000450F4();
  v60 = v25;
  swift_allocObject();
  sub_100045338();
  v35 = sub_100003768(&qword_10018B290, &qword_100125990);
  v84 = v34;
  v85 = v28;
  v86 = v29;
  v87 = OpaqueTypeConformance2;
  v36 = swift_getOpaqueTypeConformance2();
  v63 = sub_10002EA50();
  v37 = type metadata accessor for SupportHandoffUserConsentViewModel(255);
  v38 = sub_10002EAA4();
  v39 = sub_100044EE4(&qword_10018A6C0, type metadata accessor for SupportHandoffUserConsentViewModel);
  v84 = &type metadata for SupportHandoffStepProvider;
  v85 = v37;
  v86 = v38;
  v87 = v39;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = v66;
  View.navigationDestination<A, B>(for:destination:)();

  (*(v67 + 8))(v33, v41);
  v42 = v59;
  v43 = v59[3];
  LOBYTE(v90) = *(v59 + 16);
  v91 = v43;
  v67 = sub_100003768(&qword_100189B68, &qword_1001239F0);
  State.projectedValue.getter();
  LODWORD(v64) = v86;
  sub_1000450F4();
  swift_allocObject();
  sub_100045338();
  v65 = type metadata accessor for AppleAccountSignInView(0);
  v84 = v41;
  v85 = &type metadata for SupportHandoffStepProvider;
  v86 = v35;
  v87 = v36;
  v88 = v63;
  v89 = v40;
  v75 = swift_getOpaqueTypeConformance2();
  v44 = sub_100044EE4(&qword_10018B2C8, type metadata accessor for AppleAccountSignInView);
  v45 = v79;
  v46 = v68;
  View.sheet<A>(isPresented:onDismiss:content:)();

  (*(v69 + 8))(v45, v46);
  v81 = sub_1000435EC();
  v79 = v47;
  LODWORD(v77) = v48;
  v78 = v49;
  v50 = v42[5];
  LOBYTE(v90) = *(v42 + 32);
  v91 = v50;
  State.projectedValue.getter();
  LODWORD(v76) = v86;
  v51 = *(v71 + 36);
  sub_100003768(&qword_10018B190, &qword_1001258A8);
  v52 = v73;
  State.wrappedValue.getter();
  v82 = v42;
  sub_100003768(&qword_10018B270, &qword_100125970);
  sub_100003768(&qword_10018B278, &qword_100125978);
  type metadata accessor for HandoffErrorAlert(0);
  v84 = v46;
  v85 = v65;
  v86 = v75;
  v87 = v44;
  swift_getOpaqueTypeConformance2();
  sub_10000AAEC(&qword_10018B2D0, &qword_10018B270, &qword_100125970);
  sub_100044E68();
  v53 = v70;
  LOBYTE(v35) = v77;
  v54 = v80;
  v55 = v81;
  v56 = v79;
  View.alert<A, B, C>(_:isPresented:presenting:actions:message:)();

  sub_10000AC78(v55, v56, v35 & 1);

  sub_100044F98(v52, &qword_10018B188, &qword_1001258A0);
  return (*(v72 + 8))(v54, v53);
}

uint64_t sub_100041C08(uint64_t a1)
{
  v2 = type metadata accessor for WelcomeAction();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SupportHandoffUserConsentView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = sub_100003768(&qword_1001888B0, &qword_1001228F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v18 - v11;
  v13 = type metadata accessor for TaskPriority();
  sub_100003CE8(v12, 1, 1, v13);
  sub_1000450F4();
  (*(v3 + 16))(v5, a1, v2);
  type metadata accessor for MainActor();
  v14 = static MainActor.shared.getter();
  v15 = (v8 + *(v3 + 80) + ((*(v7 + 80) + 32) & ~*(v7 + 80))) & ~*(v3 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = &protocol witness table for MainActor;
  sub_100045338();
  (*(v3 + 32))(v16 + v15, v5, v2);
  sub_100085200();
}

uint64_t sub_100041EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v6 = type metadata accessor for WelcomeAction.WelcomeActionType();
  v5[19] = v6;
  v7 = *(v6 - 8);
  v5[20] = v7;
  v8 = *(v7 + 64) + 15;
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[23] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[24] = v10;
  v5[25] = v9;

  return _swift_task_switch(sub_100041FA0, v10, v9);
}

uint64_t sub_100041FA0()
{
  v1 = *(v0 + 136);
  v33 = v1[1];
  v34 = *v1;
  *(v0 + 48) = *v1;
  *(v0 + 56) = v33;
  sub_100003768(&qword_10018B250, &qword_100125928);
  State.wrappedValue.getter();
  v2 = *(v0 + 112);
  v3 = sub_10007E7F4();

  if (v3)
  {
    v4 = enum case for WelcomeAction.WelcomeActionType.primary(_:);
  }

  else
  {
    v6 = *(v0 + 168);
    v5 = *(v0 + 176);
    v7 = *(v0 + 152);
    v8 = *(v0 + 160);
    v9 = *(v0 + 144);
    WelcomeAction.type.getter();
    v4 = enum case for WelcomeAction.WelcomeActionType.primary(_:);
    (*(v8 + 104))(v6, enum case for WelcomeAction.WelcomeActionType.primary(_:), v7);
    LOBYTE(v9) = static WelcomeAction.WelcomeActionType.== infix(_:_:)();
    v10 = *(v8 + 8);
    v10(v6, v7);
    v10(v5, v7);
    if (v9)
    {
      v11 = *(v0 + 184);
      v12 = *(v0 + 136);

      v13 = *(v12 + 24);
      *(v0 + 96) = *(v12 + 16);
      *(v0 + 104) = v13;
      *(v0 + 268) = 1;
      sub_100003768(&qword_100189B68, &qword_1001239F0);
      State.wrappedValue.setter();
      v15 = *(v0 + 168);
      v14 = *(v0 + 176);

      sub_10000875C();
      sub_100046280();

      __asm { BRAA            X1, X16 }
    }
  }

  *(v0 + 264) = v4;
  v19 = *(v0 + 168);
  v18 = *(v0 + 176);
  v20 = *(v0 + 152);
  v21 = *(v0 + 160);
  v22 = *(v0 + 144);
  WelcomeAction.type.getter();
  v23 = *(v21 + 104);
  *(v0 + 208) = v23;
  *(v0 + 216) = (v21 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v23(v19, v4, v20);
  static WelcomeAction.WelcomeActionType.== infix(_:_:)();
  v24 = *(v21 + 8);
  *(v0 + 224) = v24;
  *(v0 + 232) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v19, v20);
  v24(v18, v20);
  *(v0 + 64) = v34;
  *(v0 + 72) = v33;
  State.wrappedValue.getter();
  v25 = *(*(v0 + 120) + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel_dataProvider);

  v26 = sub_10008A620();
  v28 = v27;
  v29 = type metadata accessor for SupportFlowSession();
  if (!sub_10000E5F0(v28, 1, v29))
  {
    SupportFlowSession.warmHandoff.setter();
  }

  (v26)(v0 + 16, 0);

  *(v0 + 80) = v34;
  *(v0 + 88) = v33;
  State.wrappedValue.getter();
  *(v0 + 240) = *(v0 + 128);
  v30 = swift_task_alloc();
  *(v0 + 248) = v30;
  *v30 = v0;
  v30[1] = sub_1000422F0;
  sub_100046280();

  return sub_10007E834();
}

uint64_t sub_1000422F0()
{
  sub_100025A94();
  sub_10004622C();
  v3 = v2;
  sub_1000461C8();
  *v4 = v3;
  v6 = *(v5 + 248);
  v7 = *v1;
  sub_10000870C();
  *v8 = v7;
  v3[32] = v0;

  if (v0)
  {
    v9 = v3[24];
    v10 = v3[25];
    v11 = sub_100042460;
  }

  else
  {
    v12 = v3[30];

    v9 = v3[24];
    v10 = v3[25];
    v11 = sub_1000423F8;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_1000423F8()
{
  sub_100025A94();
  v1 = v0[23];

  v3 = v0[21];
  v2 = v0[22];

  sub_10000875C();

  return v4();
}

void sub_100042460()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 224);
  v15 = *(v0 + 216);
  v4 = *(v0 + 208);
  v5 = *(v0 + 264);
  v7 = *(v0 + 176);
  v6 = *(v0 + 184);
  v8 = *(v0 + 168);
  v9 = *(v0 + 144);
  v10 = *(v0 + 152);
  v16 = *(v0 + 136);
  v17 = *(v0 + 256);

  WelcomeAction.type.getter();
  v4(v8, v5, v10);
  LOBYTE(v9) = static WelcomeAction.WelcomeActionType.== infix(_:_:)();
  v3(v8, v10);
  v3(v7, v10);
  sub_100042570(v17, (v9 & 1) == 0);

  v12 = *(v0 + 168);
  v11 = *(v0 + 176);

  sub_10000875C();
  sub_100046280();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_100042570(uint64_t a1, int a2)
{
  v31 = a2;
  v32 = a1;
  v3 = type metadata accessor for SupportHandoffUserConsentView();
  v4 = v3 - 8;
  v30 = *(v3 - 8);
  v5 = *(v30 + 64);
  __chkstk_darwin(v3);
  v6 = type metadata accessor for HandoffBundle();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003768(&qword_10018B188, &qword_1001258A0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v29 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v28 - v14;
  v17 = v2[1];
  v34 = *v2;
  v16 = v34;
  v35 = v17;
  sub_100003768(&qword_10018B250, &qword_100125928);
  State.wrappedValue.getter();
  sub_10008094C();

  v18 = v2[5];
  LOBYTE(v34) = *(v2 + 32);
  v35 = v18;
  LOBYTE(v33) = 1;
  sub_100003768(&qword_100189B68, &qword_1001239F0);
  State.wrappedValue.setter();
  v34 = v16;
  v35 = v17;
  State.wrappedValue.getter();
  sub_1000450F4();

  v19 = type metadata accessor for HandoffErrorAlert(0);
  v20 = v19[5];
  v21 = type metadata accessor for ContactType();
  (*(*(v21 - 8) + 16))(&v15[v20], v9, v21);
  sub_1000454F4();
  sub_1000450F4();
  v22 = (*(v30 + 80) + 17) & ~*(v30 + 80);
  v23 = swift_allocObject();
  v24 = v31 & 1;
  *(v23 + 16) = v31 & 1;
  sub_100045338();
  *v15 = v32;
  v15[v19[6]] = v24;
  v25 = &v15[v19[7]];
  *v25 = sub_100045858;
  v25[1] = v23;
  sub_100003CE8(v15, 0, 1, v19);
  v26 = *(v4 + 36);
  sub_1000409DC(v15, v29);
  swift_errorRetain();
  sub_100003768(&qword_10018B190, &qword_1001258A8);
  State.wrappedValue.setter();
  return sub_100044F98(v15, &qword_10018B188, &qword_1001258A0);
}

uint64_t sub_100042920(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_100003768(&qword_10018B2B8, &qword_1001259A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10[-v7];
  static ToolbarItemPlacement.topBarTrailing.getter();
  v11 = a1;
  sub_100003768(&qword_10018B318, &unk_10012ED70);
  sub_10000AAEC(&qword_10018B320, &qword_10018B318, &unk_10012ED70);
  ToolbarItem<>.init(placement:content:)();
  sub_10000AAEC(&qword_10018B2C0, &qword_10018B2B8, &qword_1001259A8);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100042B0C()
{
  v0 = type metadata accessor for SupportHandoffUserConsentView();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0 - 8);
  sub_1000450F4();
  v3 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  swift_allocObject();
  sub_100045338();
  sub_100003768(&qword_10018B328, &unk_100125A30);
  sub_100045D24();
  return Button.init(action:label:)();
}

uint64_t sub_100042C74(uint64_t *a1)
{
  v5 = *a1;
  v6 = a1[1];
  sub_100003768(&qword_10018B250, &qword_100125928);
  State.wrappedValue.getter();
  v1 = sub_10008094C();
  v2 = *(v4 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel_dismissAction + 8);
  (*(v4 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel_dismissAction))(v1);
}

uint64_t sub_100042CEC@<X0>(uint64_t *a1@<X8>)
{
  v2 = Image.init(systemName:)();
  v3 = (a1 + *(sub_100003768(&qword_10018B328, &unk_100125A30) + 36));
  v4 = *(sub_100003768(&qword_10018ACB0, &qword_100125420) + 28);
  v5 = enum case for Image.Scale.large(_:);
  v6 = type metadata accessor for Image.Scale();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  result = swift_getKeyPath();
  *v3 = result;
  *a1 = v2;
  return result;
}

uint64_t sub_100042DC4(char *a1, uint64_t *a2)
{
  v5 = *a1;
  v3 = *a2;
  v4 = a2[1];
  sub_100003768(&qword_10018B250, &qword_100125928);
  State.wrappedValue.getter();
  type metadata accessor for SupportHandoffUserConsentViewModel(0);
  sub_10002EAA4();
  sub_100044EE4(&qword_10018A6C0, type metadata accessor for SupportHandoffUserConsentViewModel);
  View.environment<A>(_:)();
}

uint64_t sub_100042EA4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SupportHandoffUserConsentView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_1000450F4();
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_100045338();
  *a1 = swift_getKeyPath();
  sub_100003768(&qword_10018B310, &qword_10012A550);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for AppleAccountSignInView(0);
  v8 = (a1 + *(result + 20));
  *v8 = sub_100045544;
  v8[1] = v6;
  return result;
}

id sub_100043008(uint64_t *a1)
{
  v2 = type metadata accessor for SupportHandoffUserConsentView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_100003768(&qword_1001888B0, &qword_1001228F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = a1[3];
  LOBYTE(v21) = *(a1 + 16);
  v22 = v9;
  LOBYTE(v20) = 0;
  sub_100003768(&qword_100189B68, &qword_1001239F0);
  State.wrappedValue.setter();
  v10 = a1[1];
  v21 = *a1;
  v22 = v10;
  sub_100003768(&qword_10018B250, &qword_100125928);
  State.wrappedValue.getter();
  v11 = *(v20 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel_dataProvider);

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v13 = result;
    v14 = [result aa_primaryAppleAccount];

    sub_100089A64(v14);

    v15 = type metadata accessor for TaskPriority();
    sub_100003CE8(v8, 1, 1, v15);
    sub_1000450F4();
    type metadata accessor for MainActor();
    v16 = static MainActor.shared.getter();
    v17 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = &protocol witness table for MainActor;
    sub_100045338();
    sub_100085200();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000432A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_100043340, v6, v5);
}

uint64_t sub_100043340()
{
  sub_100025A94();
  v1 = v0[5];
  v3 = *v1;
  v2 = v1[1];
  v0[2] = v3;
  v0[3] = v2;
  sub_100003768(&qword_10018B250, &qword_100125928);
  State.wrappedValue.getter();
  v0[9] = v0[4];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_100043404;

  return sub_10007E834();
}

uint64_t sub_100043404()
{
  sub_100025A94();
  sub_10004622C();
  v3 = v2;
  sub_1000461C8();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_10000870C();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    v9 = v3[7];
    v10 = v3[8];
    v11 = sub_100043564;
  }

  else
  {
    v12 = v3[9];

    v9 = v3[7];
    v10 = v3[8];
    v11 = sub_10004350C;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_10004350C()
{
  sub_100025A94();
  v1 = *(v0 + 48);

  sub_10000875C();

  return v2();
}

uint64_t sub_100043564()
{
  v1 = v0[11];
  v2 = v0[9];
  v4 = v0[5];
  v3 = v0[6];

  sub_100042570(v1, 0);

  sub_10000875C();

  return v5();
}

uint64_t sub_1000435EC()
{
  v0 = type metadata accessor for HandoffErrorAlert(0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = &v11[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_100003768(&qword_10018B188, &qword_1001258A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11[-v6];
  v8 = *(type metadata accessor for SupportHandoffUserConsentView() + 28);
  sub_100003768(&qword_10018B190, &qword_1001258A8);
  State.wrappedValue.getter();
  if (sub_10000E5F0(v7, 1, v0))
  {
    sub_100044F98(v7, &qword_10018B188, &qword_1001258A0);
  }

  else
  {
    sub_1000450F4();
    sub_100044F98(v7, &qword_10018B188, &qword_1001258A0);
    v9 = v3[*(v0 + 24)];
    sub_1000454F4();
  }

  LocalizedStringKey.init(stringLiteral:)();
  return Text.init(_:tableName:bundle:comment:)();
}

uint64_t sub_100043808@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v49 = a2;
  v3 = sub_100003768(&qword_10018B2E8, &unk_1001259B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v45 = &v39 - v5;
  v6 = sub_100003768(&qword_10018A878, &qword_100124D10);
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = *(v47 + 64);
  v8 = __chkstk_darwin(v6);
  v46 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v51 = &v39 - v10;
  v11 = type metadata accessor for HandoffErrorAlert(0);
  v41 = *(v11 - 8);
  v12 = *(v41 + 64);
  __chkstk_darwin(v11 - 8);
  v13 = type metadata accessor for SupportHandoffUserConsentView();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v44 = sub_100003768(&qword_10018B2F0, &qword_1001259C0);
  v50 = *(v44 - 8);
  v16 = v50[8];
  v17 = __chkstk_darwin(v44);
  v43 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v39 - v19;
  v42 = type metadata accessor for SupportHandoffUserConsentView;
  sub_1000450F4();
  sub_1000450F4();
  v21 = (((*(v14 + 80) + 16) & ~*(v14 + 80)) + v15 + *(v41 + 80)) & ~*(v41 + 80);
  swift_allocObject();
  sub_100045338();
  sub_100045338();
  v52 = a1;
  sub_100003768(&qword_10018B2F8, &qword_1001259C8);
  sub_100045460();
  v22 = v20;
  v40 = v20;
  Button.init(action:label:)();
  v23 = v45;
  static ButtonRole.cancel.getter();
  v24 = type metadata accessor for ButtonRole();
  sub_100003CE8(v23, 0, 1, v24);
  sub_1000450F4();
  swift_allocObject();
  sub_100045338();
  v25 = v51;
  Button.init(role:action:label:)();
  v26 = v50[2];
  v27 = v43;
  v28 = v22;
  v29 = v44;
  v26(v43, v28, v44);
  v30 = v46;
  v31 = v47;
  v32 = *(v47 + 16);
  v33 = v48;
  v32(v46, v25, v48);
  v34 = v49;
  v26(v49, v27, v29);
  v35 = sub_100003768(&qword_10018B308, &qword_1001259D0);
  v32(&v34[*(v35 + 48)], v30, v33);
  v36 = *(v31 + 8);
  v36(v51, v33);
  v37 = v50[1];
  v37(v40, v29);
  v36(v30, v33);
  return (v37)(v27, v29);
}

uint64_t sub_100043DB0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = static Bool.isInternal.getter();
  if (result)
  {
    _StringGuts.grow(_:)(18);
    v5._object = 0x8000000100135F40;
    v5._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v5);
    v8 = *a1;
    sub_100003768(&qword_100189398, &unk_100122910);
    result = _print_unlocked<A, B>(_:_:)();
    v6 = 0xE000000000000000;
    v7 = _swiftEmptyArrayStorage;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  *a2 = 0;
  a2[1] = v6;
  a2[2] = 0;
  a2[3] = v7;
  return result;
}

uint64_t sub_100043E88(char a1)
{
  v2 = type metadata accessor for SupportHandoffUserConsentView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_100003768(&qword_1001888B0, &qword_1001228F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  sub_100003CE8(v8, 1, 1, v9);
  sub_1000450F4();
  type metadata accessor for MainActor();
  v10 = static MainActor.shared.getter();
  v11 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  *(v12 + 32) = a1 & 1;
  sub_100045338();
  sub_100085200();
}

uint64_t sub_100044050(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 64) = a5;
  *(v5 + 144) = a4;
  type metadata accessor for MainActor();
  *(v5 + 72) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 80) = v7;
  *(v5 + 88) = v6;

  return _swift_task_switch(sub_1000440EC, v7, v6);
}

uint64_t sub_1000440EC()
{
  sub_100025A94();
  v1 = *(v0 + 64);
  v3 = *v1;
  v2 = v1[1];
  if (*(v0 + 144))
  {
    *(v0 + 16) = v3;
    *(v0 + 24) = v2;
    sub_100003768(&qword_10018B250, &qword_100125928);
    State.wrappedValue.getter();
    *(v0 + 120) = *(v0 + 48);
    v4 = swift_task_alloc();
    *(v0 + 128) = v4;
    *v4 = v0;
    v4[1] = sub_1000443A8;

    return sub_10007E834();
  }

  else
  {
    *(v0 + 32) = v3;
    *(v0 + 40) = v2;
    sub_100003768(&qword_10018B250, &qword_100125928);
    State.wrappedValue.getter();
    *(v0 + 96) = *(v0 + 56);
    v6 = swift_task_alloc();
    *(v0 + 104) = v6;
    *v6 = v0;
    v6[1] = sub_100044248;

    return sub_100080B18();
  }
}

uint64_t sub_100044248()
{
  sub_100025A94();
  sub_10004622C();
  v3 = v2;
  sub_1000461C8();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  sub_10000870C();
  *v8 = v7;
  v3[14] = v0;

  if (v0)
  {
    v9 = v3[10];
    v10 = v3[11];
    v11 = sub_1000444B0;
  }

  else
  {
    v12 = v3[12];

    v9 = v3[10];
    v10 = v3[11];
    v11 = sub_100044350;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_100044350()
{
  sub_100025A94();
  v1 = *(v0 + 72);

  sub_10000875C();

  return v2();
}

uint64_t sub_1000443A8()
{
  sub_100025A94();
  sub_10004622C();
  v3 = v2;
  sub_1000461C8();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  sub_10000870C();
  *v8 = v7;
  v3[17] = v0;

  if (v0)
  {
    v9 = v3[10];
    v10 = v3[11];
    v11 = sub_100044538;
  }

  else
  {
    v12 = v3[15];

    v9 = v3[10];
    v10 = v3[11];
    v11 = sub_100046164;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_1000444B0()
{
  v1 = v0[14];
  v2 = v0[12];
  v4 = v0[8];
  v3 = v0[9];

  sub_100042570(v1, 1);

  sub_10000875C();

  return v5();
}

uint64_t sub_100044538()
{
  v1 = v0[17];
  v2 = v0[15];
  v4 = v0[8];
  v3 = v0[9];

  sub_100042570(v1, 1);

  sub_10000875C();

  return v5();
}

uint64_t sub_1000445C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018B188, &qword_1001258A0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v18[-v9];
  v11 = *(a1 + 40);
  v18[16] = *(a1 + 32);
  v19 = v11;
  v18[15] = 0;
  sub_100003768(&qword_100189B68, &qword_1001239F0);
  State.wrappedValue.setter();
  v12 = type metadata accessor for HandoffErrorAlert(0);
  sub_100003CE8(v10, 1, 1, v12);
  v13 = *(type metadata accessor for SupportHandoffUserConsentView() + 28);
  sub_1000409DC(v10, v8);
  sub_100003768(&qword_10018B190, &qword_1001258A8);
  State.wrappedValue.setter();
  v14 = sub_100044F98(v10, &qword_10018B188, &qword_1001258A0);
  v15 = a2 + *(v12 + 28);
  v16 = *(v15 + 8);
  return (*v15)(v14);
}

double sub_100044738@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + *(type metadata accessor for HandoffErrorAlert(0) + 24));
  LocalizedStringKey.init(stringLiteral:)();
  Text.init(_:tableName:bundle:comment:)();
  _ConditionalContent<>.init(storage:)();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_100044870(uint64_t a1)
{
  v2 = sub_100003768(&qword_10018B188, &qword_1001258A0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = *(a1 + 40);
  v13[16] = *(a1 + 32);
  v14 = v9;
  v13[15] = 0;
  sub_100003768(&qword_100189B68, &qword_1001239F0);
  State.wrappedValue.setter();
  v10 = type metadata accessor for HandoffErrorAlert(0);
  sub_100003CE8(v8, 1, 1, v10);
  v11 = *(type metadata accessor for SupportHandoffUserConsentView() + 28);
  sub_1000409DC(v8, v6);
  sub_100003768(&qword_10018B190, &qword_1001258A8);
  State.wrappedValue.setter();
  return sub_100044F98(v8, &qword_10018B188, &qword_1001258A0);
}

uint64_t sub_1000449C0@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100044A54(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100003768(&qword_10018B190, &qword_1001258A8);
    v9 = a1 + *(a3 + 28);

    return sub_10000E5F0(v9, a2, v8);
  }
}

void *sub_100044AFC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100003768(&qword_10018B190, &qword_1001258A8);
    v8 = v5 + *(a4 + 28);

    return sub_100003CE8(v8, a2, a2, v7);
  }

  return result;
}

void sub_100044B88()
{
  sub_100044C24();
  if (v0 <= 0x3F)
  {
    sub_100044C7C();
    if (v1 <= 0x3F)
    {
      sub_100044CCC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100044C24()
{
  if (!qword_10018B200)
  {
    type metadata accessor for SupportHandoffUserConsentViewModel(255);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_10018B200);
    }
  }
}

void sub_100044C7C()
{
  if (!qword_10018B208)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_10018B208);
    }
  }
}

void sub_100044CCC()
{
  if (!qword_10018B210)
  {
    sub_100004D48(&qword_10018B188, &qword_1001258A0);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_10018B210);
    }
  }
}

unint64_t sub_100044D7C()
{
  result = qword_10018B2A8;
  if (!qword_10018B2A8)
  {
    sub_100004D48(&qword_10018B298, &qword_100125998);
    sub_100044EE4(&qword_10018B2B0, &type metadata accessor for WelcomeView);
    sub_100044EE4(&qword_1001887F8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B2A8);
  }

  return result;
}

unint64_t sub_100044E68()
{
  result = qword_10018B2D8;
  if (!qword_10018B2D8)
  {
    sub_100004D48(&qword_10018B278, &qword_100125978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B2D8);
  }

  return result;
}

uint64_t sub_100044EE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100044F2C()
{
  sub_100046268();
  v1 = type metadata accessor for SupportHandoffUserConsentView();
  sub_10000ED84(v1);
  v3 = *(v2 + 80);
  sub_100046274();

  return sub_100041C08(v0);
}

uint64_t sub_100044F98(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003768(a2, a3);
  sub_10000C31C(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_100044FF0(char *a1)
{
  v3 = type metadata accessor for SupportHandoffUserConsentView();
  sub_10000ED84(v3);
  v5 = *(v4 + 80);
  sub_100046274();

  return sub_100042DC4(a1, (v1 + v6));
}

uint64_t sub_100045068@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SupportHandoffUserConsentView();
  sub_10000ED84(v2);
  v4 = *(v3 + 80);
  sub_100046274();

  return sub_100042EA4(a1);
}

uint64_t sub_1000450F4()
{
  v2 = sub_10004620C();
  v4 = v3(v2);
  sub_10000AF7C(v4);
  (*(v5 + 16))(v0, v1);
  return v0;
}

uint64_t sub_10004514C()
{
  v2 = type metadata accessor for SupportHandoffUserConsentView();
  sub_100046254(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = type metadata accessor for HandoffErrorAlert(0);
  sub_100008780(v8);
  v10 = *(v9 + 80);
  v12 = *(v11 + 64);
  v13 = *(v0 + v5);

  v14 = *(v0 + v5 + 8);

  v15 = *(v0 + v5 + 24);

  v16 = *(v0 + v5 + 40);

  v17 = (v0 + v5 + *(v1 + 36));
  if (!sub_10000E5F0(v17, 1, v8))
  {
    v18 = *v17;

    v19 = *(v8 + 20);
    v20 = type metadata accessor for ContactType();
    sub_10000C31C(v20);
    (*(v21 + 8))(&v17[v19]);
    v22 = *&v17[*(v8 + 28) + 8];
  }

  v23 = (v5 + v7 + v10) & ~v10;
  v24 = *&v17[*(sub_100003768(&qword_10018B190, &qword_1001258A8) + 28)];

  v25 = *(v0 + v23);

  v26 = *(v8 + 20);
  v27 = type metadata accessor for ContactType();
  sub_10000C31C(v27);
  (*(v28 + 8))(v0 + v23 + v26);
  v29 = *(v0 + v23 + *(v8 + 28) + 8);

  return _swift_deallocObject(v0, v23 + v12, v4 | v10 | 7);
}

uint64_t sub_100045338()
{
  v2 = sub_10004620C();
  v4 = v3(v2);
  sub_10000AF7C(v4);
  (*(v5 + 32))(v0, v1);
  return v0;
}

uint64_t sub_100045390()
{
  v1 = *(type metadata accessor for SupportHandoffUserConsentView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for HandoffErrorAlert(0);
  sub_10000ED84(v4);
  v6 = v0 + ((v2 + v3 + *(v5 + 80)) & ~*(v5 + 80));

  return sub_1000445C4(v0 + v2, v6);
}

unint64_t sub_100045460()
{
  result = qword_10018B300;
  if (!qword_10018B300)
  {
    sub_100004D48(&qword_10018B2F8, &qword_1001259C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B300);
  }

  return result;
}

uint64_t sub_1000454F4()
{
  v1 = sub_100046268();
  v3 = v2(v1);
  sub_10000C31C(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_100045560()
{
  v4 = type metadata accessor for SupportHandoffUserConsentView();
  sub_100046168(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = *(v7 + 64);
  v9 = *(v1 + 16);
  swift_unknownObjectRelease();
  sub_1000462B4();
  v10 = v2[1];

  v11 = v2[3];

  v12 = v2[5];

  v13 = sub_1000461D4();
  if (!sub_10004617C(v13))
  {
    v14 = *v0;

    v15 = sub_10004629C();
    sub_10000C31C(v15);
    (*(v16 + 8))(&v0[v3]);
    sub_1000461F0();
  }

  v17 = sub_100003768(&qword_10018B190, &qword_1001258A8);
  sub_1000462CC(v17);
  v18 = sub_10004619C();

  return _swift_deallocObject(v18, v19, v20);
}

uint64_t sub_100045670()
{
  sub_100046268();
  v2 = type metadata accessor for SupportHandoffUserConsentView();
  sub_10000ED84(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100046160;
  sub_10004621C();

  return sub_1000432A8(v8, v9, v10, v11);
}

uint64_t sub_100045750()
{
  v3 = type metadata accessor for SupportHandoffUserConsentView();
  sub_100046168(v3);
  v5 = (*(v4 + 80) + 17) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  sub_1000462B4();
  v8 = v1[1];

  v9 = v1[3];

  v10 = v1[5];

  v11 = sub_1000461D4();
  if (!sub_10004617C(v11))
  {
    v12 = *v0;

    v13 = sub_10004629C();
    sub_10000C31C(v13);
    (*(v14 + 8))(&v0[v2]);
    sub_1000461F0();
  }

  v15 = sub_100003768(&qword_10018B190, &qword_1001258A8);
  sub_1000462CC(v15);
  v16 = sub_10004619C();

  return _swift_deallocObject(v16, v17, v18);
}

uint64_t sub_100045858()
{
  v1 = type metadata accessor for SupportHandoffUserConsentView();
  sub_10000ED84(v1);
  v3 = *(v2 + 80);
  v4 = *(v0 + 16);

  return sub_100043E88(v4);
}

uint64_t sub_1000458B8()
{
  v4 = type metadata accessor for SupportHandoffUserConsentView();
  sub_100046168(v4);
  v6 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v8 = *(v7 + 64);
  v9 = *(v1 + 16);
  swift_unknownObjectRelease();
  sub_1000462B4();
  v10 = v2[1];

  v11 = v2[3];

  v12 = v2[5];

  v13 = sub_1000461D4();
  if (!sub_10004617C(v13))
  {
    v14 = *v0;

    v15 = sub_10004629C();
    sub_10000C31C(v15);
    (*(v16 + 8))(&v0[v3]);
    sub_1000461F0();
  }

  v17 = sub_100003768(&qword_10018B190, &qword_1001258A8);
  sub_1000462CC(v17);
  v18 = sub_10004619C();

  return _swift_deallocObject(v18, v19, v20);
}

uint64_t sub_1000459C8()
{
  sub_100046268();
  v2 = type metadata accessor for SupportHandoffUserConsentView();
  sub_10000ED84(v2);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100045AB0;
  sub_10004621C();

  return sub_100044050(v9, v10, v11, v7, v12);
}

uint64_t sub_100045AB0()
{
  sub_100025A94();
  sub_10004622C();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_10000870C();
  *v4 = v3;

  sub_10000875C();

  return v5();
}

uint64_t sub_100045B98()
{
  v3 = type metadata accessor for SupportHandoffUserConsentView();
  sub_100046168(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  sub_1000462B4();
  v8 = v1[1];

  v9 = v1[3];

  v10 = v1[5];

  v11 = sub_1000461D4();
  if (!sub_10004617C(v11))
  {
    v12 = *v0;

    v13 = sub_10004629C();
    sub_10000C31C(v13);
    (*(v14 + 8))(&v0[v2]);
    sub_1000461F0();
  }

  v15 = sub_100003768(&qword_10018B190, &qword_1001258A8);
  sub_1000462CC(v15);
  v16 = sub_10004619C();

  return _swift_deallocObject(v16, v17, v18);
}

uint64_t sub_100045CB8(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for SupportHandoffUserConsentView();
  sub_10000ED84(v2);
  v4 = *(v3 + 80);
  sub_100046274();

  return a1(v1 + v5);
}

unint64_t sub_100045D24()
{
  result = qword_10018B330;
  if (!qword_10018B330)
  {
    sub_100004D48(&qword_10018B328, &unk_100125A30);
    sub_10000AAEC(&qword_10018ACE0, &qword_10018ACB0, &qword_100125420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B330);
  }

  return result;
}

uint64_t sub_100045DE4()
{
  v2 = type metadata accessor for SupportHandoffUserConsentView();
  sub_100046254(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = type metadata accessor for WelcomeAction();
  sub_100008780(v8);
  v10 = v9;
  v11 = *(v9 + 80);
  v28 = *(v12 + 64);
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();
  v14 = *(v0 + v5);

  v15 = *(v0 + v5 + 8);

  v16 = *(v0 + v5 + 24);

  v17 = *(v0 + v5 + 40);

  v18 = (v0 + v5 + *(v1 + 36));
  v19 = type metadata accessor for HandoffErrorAlert(0);
  if (!sub_10000E5F0(v18, 1, v19))
  {
    v20 = *v18;

    v21 = *(v19 + 20);
    v22 = type metadata accessor for ContactType();
    sub_10000C31C(v22);
    (*(v23 + 8))(&v18[v21]);
    v24 = *&v18[*(v19 + 28) + 8];
  }

  v25 = (v5 + v7 + v11) & ~v11;
  v26 = *&v18[*(sub_100003768(&qword_10018B190, &qword_1001258A8) + 28)];

  (*(v10 + 8))(v0 + v25, v8);

  return _swift_deallocObject(v0, v25 + v28, v4 | v11 | 7);
}

uint64_t sub_100045FC4()
{
  v2 = *(type metadata accessor for SupportHandoffUserConsentView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for WelcomeAction();
  sub_10000ED84(v5);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100046160;
  sub_10004621C();

  return sub_100041EA0(v11, v12, v13, v14, v15);
}

uint64_t sub_10004617C(uint64_t a1)
{

  return sub_10000E5F0(v1, 1, a1);
}

uint64_t sub_1000461AC()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000461D4()
{
  v3 = v1 + *(v0 + 36);

  return type metadata accessor for HandoffErrorAlert(0);
}

uint64_t sub_1000461F0()
{
  v3 = *(v0 + *(v1 + 28) + 8);
}

uint64_t sub_100046238()
{

  return State.init(wrappedValue:)();
}

uint64_t sub_10004629C()
{
  v2 = *(v0 + 20);

  return type metadata accessor for ContactType();
}

uint64_t sub_1000462B4()
{
  v3 = *(v0 + v1);
}

uint64_t sub_1000462CC(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 28));
}

uint64_t sub_100046310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = qword_100188388;

  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_1001A5990;
  v9 = *algn_1001A5998;
  *(a4 + 40) = &type metadata for DisabledAccountStepProvider;
  v11 = sub_1000219CC();
  *(a4 + 16) = a3;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 48) = v11;
  *(a4 + 56) = v10;
  *(a4 + 64) = v9;
  *(a4 + 72) = 0;
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
}

uint64_t sub_100046400@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = static VerticalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = sub_100003768(&qword_10018B348, &qword_100125C00);
  return sub_100046468(a1, a2 & 1, a3 + *(v6 + 44));
}

uint64_t sub_100046468@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v46 = a3;
  v5 = sub_100003768(&qword_10018B350, &qword_100125C08);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v45 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v44 = (&v43 - v9);
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003768(&qword_10018B358, &qword_100125C10);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v43 - v20;
  sub_100046A7C(&v43 - v20);
  if (a2)
  {
    v52[12] = a1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v11 + 8))(v14, v10);
  }

  sub_1000619E8(v53);

  if (v54 && (v23 = v53[90], sub_10001D724(v53, &qword_10018B388, &qword_100125C38), (v23 & 1) != 0))
  {
    v24 = static HorizontalAlignment.leading.getter();
    LOBYTE(v52[0]) = 1;
    sub_100046D2C(a1, a2 & 1, v49);
    *&v47[7] = v49[0];
    *&v47[23] = v49[1];
    *&v47[39] = v49[2];
    *&v47[55] = v49[3];
    v48[0] = 0;
    v50[0] = v24;
    v50[1] = 0;
    LOBYTE(v50[2]) = v52[0];
    memcpy(&v50[2] + 1, v47, 0x47uLL);
    LOBYTE(v50[11]) = 0;
  }

  else
  {
    if (a2)
    {
      *&v49[0] = a1;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v25 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v11 + 8))(v14, v10);
    }

    v26 = sub_100061AD4();
    v28 = v27;

    v52[0] = v26;
    v52[1] = v28;
    sub_10000AC24();
    v29 = Text.init<A>(_:)();
    v48[0] = v30 & 1;
    v51 = 1;
    v50[0] = v29;
    v50[1] = v31;
    LOBYTE(v50[2]) = v30 & 1;
    v50[3] = v32;
    LOBYTE(v50[11]) = 1;
  }

  sub_100003768(&qword_10018B360, &qword_100125C18);
  sub_10000AAEC(&qword_10018B368, &qword_10018B360, &qword_100125C18);
  _ConditionalContent<>.init(storage:)();
  v33 = static VerticalAlignment.bottom.getter();
  v34 = v44;
  *v44 = v33;
  *(v34 + 8) = 0;
  *(v34 + 16) = 1;
  v35 = sub_100003768(&qword_10018B370, &qword_100125C20);
  sub_100047130(a1, a2 & 1, v34 + *(v35 + 44));
  v36 = v21;
  sub_100006578(v21, v19, &qword_10018B358, &qword_100125C10);
  memcpy(v48, v52, sizeof(v48));
  v37 = v45;
  sub_100006578(v34, v45, &qword_10018B350, &qword_100125C08);
  v38 = v46;
  sub_100006578(v19, v46, &qword_10018B358, &qword_100125C10);
  v39 = sub_100003768(&qword_10018B378, &qword_100125C28);
  v40 = v39[12];
  memcpy(v49, v48, 0x59uLL);
  memcpy((v38 + v40), v48, 0x59uLL);
  v41 = v38 + v39[16];
  *v41 = 0;
  *(v41 + 8) = 1;
  sub_100006578(v37, v38 + v39[20], &qword_10018B350, &qword_100125C08);
  sub_100006578(v49, v50, &qword_10018B380, &qword_100125C30);
  sub_10001D724(v34, &qword_10018B350, &qword_100125C08);
  sub_10001D724(v36, &qword_10018B358, &qword_100125C10);
  sub_10001D724(v37, &qword_10018B350, &qword_100125C08);
  memcpy(v50, v48, 0x59uLL);
  sub_10001D724(v50, &qword_10018B380, &qword_100125C30);
  return sub_10001D724(v19, &qword_10018B358, &qword_100125C10);
}

uint64_t sub_100046A7C@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v20 = type metadata accessor for AccessibilityTraits();
  v18 = *(v20 - 8);
  v1 = *(v18 + 64);
  __chkstk_darwin(v20);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100003768(&qword_10018B358, &qword_100125C10);
  v4 = *(*(v17 - 8) + 64);
  v5 = __chkstk_darwin(v17);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000484E4(v10, v11);

  v12 = Image.init(uiImage:)();
  v13 = static Color.accentColor.getter();
  KeyPath = swift_getKeyPath();
  v21 = v12;
  v22 = KeyPath;
  v23 = v13;
  static String.networkAssociationStateImage.getter();
  sub_100003768(&qword_10018B3E0, &qword_100125CA8);
  sub_100048828();
  View.accessibilityIdentifier(_:)();

  LocalizedStringKey.init(stringLiteral:)();
  ModifiedContent<>.accessibilityLabel(_:)();

  sub_10001D724(v7, &qword_10018B358, &qword_100125C10);
  static AccessibilityTraits.isImage.getter();
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  (*(v18 + 8))(v3, v20);
  return sub_10001D724(v9, &qword_10018B358, &qword_100125C10);
}

uint64_t sub_100046D2C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v44 = a1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v10, v6);
  }

  v12 = sub_100061AD4();
  v14 = v13;

  v41 = v12;
  v42 = v14;
  sub_10000AC24();
  v15 = Text.init<A>(_:)();
  v37 = v16;
  v38 = v15;
  HIDWORD(v36) = v17;
  v39 = v18;
  v41 = sub_100046FE4();
  v42 = v19;
  v20 = Text.init<A>(_:)();
  v22 = v21;
  v24 = v23;
  static Font.caption.getter();
  v25 = Text.font(_:)();
  v27 = v26;
  LOBYTE(v12) = v28;
  v30 = v29;

  sub_10000AC78(v20, v22, v24 & 1);

  v31 = BYTE4(v36) & 1;
  v40 = BYTE4(v36) & 1;
  LOBYTE(v41) = BYTE4(v36) & 1;
  LOBYTE(v20) = v12 & 1;
  v43 = v12 & 1;
  v33 = v37;
  v32 = v38;
  *a3 = v38;
  *(a3 + 8) = v33;
  *(a3 + 16) = v31;
  *(a3 + 24) = v39;
  *(a3 + 32) = v25;
  *(a3 + 40) = v27;
  *(a3 + 48) = v20;
  *(a3 + 56) = v30;
  v34 = v32;
  sub_100017564(v32, v33, v31);

  sub_100017564(v25, v27, v20);

  sub_10000AC78(v25, v27, v20);

  sub_10000AC78(v34, v33, v40);
}

uint64_t sub_100046FE4()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  sub_100048590();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_100047130@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v78 = a3;
  v77 = sub_100003768(&qword_10018B398, &qword_100125C40);
  v5 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v74 = &v71 - v6;
  v80 = sub_100003768(&qword_10018B3A0, &qword_100125C48);
  v7 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v9 = &v71 - v8;
  v10 = sub_100003768(&qword_10018B3A8, &qword_100125C50);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v73 = &v71 - v12;
  v13 = sub_100003768(&qword_10018B3B0, &qword_100125C58);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v81 = &v71 - v18;
  v19 = sub_100003768(&qword_10018B3B8, &qword_100125C60);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = &v71 - v21;
  v76 = type metadata accessor for EnvironmentValues();
  v75 = *(v76 - 8);
  v23 = *(v75 + 64);
  __chkstk_darwin(v76);
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100003768(&qword_10018B3C0, &qword_100125C68);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v79 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v71 - v30;

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v32 = static Log.runtimeIssuesLog.getter();
    v72 = v25;
    v33 = v22;
    v34 = a1;
    v35 = a2;
    v36 = v10;
    v37 = v9;
    v38 = v31;
    v39 = v32;
    os_log(_:dso:log:_:_:)();

    v31 = v38;
    v9 = v37;
    v10 = v36;
    a2 = v35;
    a1 = v34;
    v22 = v33;
    v25 = v72;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v75 + 8))(v25, v76);
  }

  sub_1000619E8(v82);

  if (v83 && (v40 = v82[88], sub_10001D724(v82, &qword_10018B388, &qword_100125C38), (v40 & 1) != 0))
  {
    v41 = 1;
  }

  else
  {
    sub_1000478D8(v22);
    v42 = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v43 = &v22[*(v19 + 36)];
    *v43 = v42;
    *(v43 + 1) = v44;
    *(v43 + 2) = v45;
    *(v43 + 3) = v46;
    *(v43 + 4) = v47;
    v43[40] = 0;
    sub_1000485D4(v22, v31);
    v41 = 0;
  }

  v48 = v81;
  sub_100003CE8(v31, v41, 1, v19);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v49 = v31;
    v50 = a1;
    v51 = a2;
    v52 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    a2 = v51;
    a1 = v50;
    v31 = v49;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v75 + 8))(v25, v76);
  }

  sub_1000619E8(v84);

  if (v86 && (v53 = v85, sub_10001D724(v84, &qword_10018B388, &qword_100125C38), (v53 & 1) != 0))
  {
    v54 = v31;
    v55 = v73;
    sub_100047CC4(v73);
    v56 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v57 = v55 + *(v10 + 36);
    *v57 = v56;
    *(v57 + 8) = v58;
    *(v57 + 16) = v59;
    *(v57 + 24) = v60;
    *(v57 + 32) = v61;
    *(v57 + 40) = 0;
    v62 = &qword_10018B3A8;
    v63 = &qword_100125C50;
    sub_100006578(v55, v9, &qword_10018B3A8, &qword_100125C50);
    swift_storeEnumTagMultiPayload();
    sub_100048644();
    sub_1000486D0();
    _ConditionalContent<>.init(storage:)();
    v64 = v55;
    v31 = v54;
  }

  else
  {
    v65 = v74;
    sub_100047F1C(a1, a2 & 1, v74);
    v62 = &qword_10018B398;
    v63 = &qword_100125C40;
    sub_100006578(v65, v9, &qword_10018B398, &qword_100125C40);
    swift_storeEnumTagMultiPayload();
    sub_100048644();
    sub_1000486D0();
    _ConditionalContent<>.init(storage:)();
    v64 = v65;
  }

  sub_10001D724(v64, v62, v63);
  v66 = v79;
  sub_100006578(v31, v79, &qword_10018B3C0, &qword_100125C68);
  sub_100006578(v48, v17, &qword_10018B3B0, &qword_100125C58);
  v67 = v31;
  v68 = v78;
  sub_100006578(v66, v78, &qword_10018B3C0, &qword_100125C68);
  v69 = sub_100003768(&qword_10018B3D8, &qword_100125C70);
  sub_100006578(v17, v68 + *(v69 + 48), &qword_10018B3B0, &qword_100125C58);
  sub_10001D724(v48, &qword_10018B3B0, &qword_100125C58);
  sub_10001D724(v67, &qword_10018B3C0, &qword_100125C68);
  sub_10001D724(v17, &qword_10018B3B0, &qword_100125C58);
  return sub_10001D724(v66, &qword_10018B3C0, &qword_100125C68);
}

uint64_t sub_1000478D8@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = type metadata accessor for AccessibilityTraits();
  v22 = *(v1 - 8);
  v23 = v1;
  v2 = *(v22 + 64);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Image.ResizingMode();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100003768(&qword_10018B398, &qword_100125C40);
  v10 = *(*(v21 - 8) + 64);
  v11 = __chkstk_darwin(v21);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v20 - v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000484E4(v16, v17);

  Image.init(uiImage:)();
  (*(v6 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v5);
  v18 = Image.resizable(capInsets:resizingMode:)();

  (*(v6 + 8))(v9, v5);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v26[38] = v30;
  *&v26[22] = v29;
  *&v26[6] = v28;
  *(&v25[2] + 2) = *v26;
  v27 = 1;
  v25[0] = v18;
  v25[1] = 0;
  LOWORD(v25[2]) = 1;
  *(&v25[4] + 2) = *&v26[16];
  *(&v25[6] + 2) = *&v26[32];
  v25[8] = *(&v30 + 1);
  static String.secureNetworkImage.getter();
  sub_100003768(&qword_1001890C0, &qword_1001225F0);
  sub_100010D1C();
  View.accessibilityIdentifier(_:)();

  memcpy(__dst, v25, 0x48uLL);
  sub_10001D724(__dst, &qword_1001890C0, &qword_1001225F0);
  LocalizedStringKey.init(stringLiteral:)();
  ModifiedContent<>.accessibilityLabel(_:)();

  sub_10001D724(v13, &qword_10018B398, &qword_100125C40);
  static AccessibilityTraits.isImage.getter();
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  (*(v22 + 8))(v4, v23);
  return sub_10001D724(v15, &qword_10018B398, &qword_100125C40);
}

uint64_t sub_100047CC4@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = type metadata accessor for AccessibilityTraits();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003768(&qword_100189D70, &qword_100123EB8);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v16 - v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000484E4(v13, v14);

  v16[1] = Image.init(uiImage:)();
  static String.personalHotspotImage.getter();
  View.accessibilityIdentifier(_:)();

  LocalizedStringKey.init(stringLiteral:)();
  ModifiedContent<>.accessibilityLabel(_:)();

  sub_10001D724(v10, &qword_100189D70, &qword_100123EB8);
  static AccessibilityTraits.isImage.getter();
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  (*(v2 + 8))(v5, v1);
  return sub_10001D724(v12, &qword_100189D70, &qword_100123EB8);
}

uint64_t sub_100047F1C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v5 = type metadata accessor for AccessibilityTraits();
  v24 = *(v5 - 8);
  v25 = v5;
  v6 = *(v24 + 64);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Image.ResizingMode();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100003768(&qword_10018B398, &qword_100125C40);
  v14 = *(*(v23 - 8) + 64);
  v15 = __chkstk_darwin(v23);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v22 - v18;
  sub_1000482E8(a1, a2 & 1);
  Image.init(uiImage:)();
  (*(v10 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v9);
  v20 = Image.resizable(capInsets:resizingMode:)();

  (*(v10 + 8))(v13, v9);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v28[38] = v32;
  *&v28[22] = v31;
  *&v28[6] = v30;
  *(&v27[2] + 2) = *v28;
  v29 = 1;
  v27[0] = v20;
  v27[1] = 0;
  LOWORD(v27[2]) = 1;
  *(&v27[4] + 2) = *&v28[16];
  *(&v27[6] + 2) = *&v28[32];
  v27[8] = *(&v32 + 1);
  static String.wifiSignalBarsImage.getter();
  sub_100003768(&qword_1001890C0, &qword_1001225F0);
  sub_100010D1C();
  View.accessibilityIdentifier(_:)();

  memcpy(__dst, v27, 0x48uLL);
  sub_10001D724(__dst, &qword_1001890C0, &qword_1001225F0);
  LocalizedStringKey.init(stringLiteral:)();
  ModifiedContent<>.accessibilityLabel(_:)();

  sub_10001D724(v17, &qword_10018B398, &qword_100125C40);
  static AccessibilityTraits.isImage.getter();
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  (*(v24 + 8))(v8, v25);
  return sub_10001D724(v19, &qword_10018B398, &qword_100125C40);
}

void sub_1000482E8(uint64_t a1, char a2)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v4 + 8))(v7, v3);
  }

  sub_100061A74();

  WFScaleRSSI();
  v9 = WFSignalBarsFromScaledRSSI();
  v10 = [objc_opt_self() sharedImageCache];
  if (v10)
  {
    v11 = v10;
    if (v9 / 3.0 <= 3.0)
    {
      v12 = v9 / 3.0;
    }

    else
    {
      v12 = 1.0;
    }

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = sub_1000487AC(v12, v13, v14, v11);

    if (v15)
    {
      [v15 imageWithRenderingMode:2];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000484E4(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedImageCache];
  if (v4)
  {
    v5 = v4;
    v6 = sub_10004875C(a1, a2, v4);

    if (v6)
    {
      [v6 imageWithRenderingMode:2];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_100048590()
{
  result = qword_10018B390;
  if (!qword_10018B390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10018B390);
  }

  return result;
}

uint64_t sub_1000485D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018B3B8, &qword_100125C60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100048644()
{
  result = qword_10018B3C8;
  if (!qword_10018B3C8)
  {
    sub_100004D48(&qword_10018B3A8, &qword_100125C50);
    sub_1000235EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B3C8);
  }

  return result;
}

unint64_t sub_1000486D0()
{
  result = qword_10018B3D0;
  if (!qword_10018B3D0)
  {
    sub_100004D48(&qword_10018B398, &qword_100125C40);
    sub_100010D1C();
    sub_1000233C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B3D0);
  }

  return result;
}

id sub_10004875C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a3 imageNamed:v4];

  return v5;
}

id sub_1000487AC(double a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();

  v7 = [a4 imageNamed:v6 variableValue:a1];

  return v7;
}

unint64_t sub_100048828()
{
  result = qword_10018B3E8;
  if (!qword_10018B3E8)
  {
    sub_100004D48(&qword_10018B3E0, &qword_100125CA8);
    sub_10000AAEC(&qword_1001895D0, &qword_1001895D8, &qword_10012F6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B3E8);
  }

  return result;
}

uint64_t sub_100048938(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100003768(&qword_10018B400, &unk_100125CC0);
    v9 = a1 + *(a3 + 40);

    return sub_10000E5F0(v9, a2, v8);
  }
}

uint64_t sub_1000489E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v7 = sub_100003768(&qword_10018B400, &unk_100125CC0);
    v8 = v5 + *(a4 + 40);

    return sub_100003CE8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for FlowStepTextView()
{
  result = qword_10018B460;
  if (!qword_10018B460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100048AB8()
{
  sub_100048D58(319, &qword_100189460, type metadata accessor for FlowViewDataProvider, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100048D58(319, &qword_10018B470, type metadata accessor for CGSize, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_100048D0C(319, &qword_100188F68);
      if (v2 <= 0x3F)
      {
        sub_100048C64();
        if (v3 <= 0x3F)
        {
          sub_100048CC8();
          if (v4 <= 0x3F)
          {
            sub_100048D0C(319, &qword_10018B490);
            if (v5 <= 0x3F)
            {
              sub_100048D58(319, &unk_10018B498, &type metadata accessor for ConstellationContentParagraphStyle, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
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

void sub_100048C64()
{
  if (!qword_10018B478)
  {
    sub_100004D48(&qword_10018B480, &qword_100125CE8);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10018B478);
    }
  }
}

unint64_t sub_100048CC8()
{
  result = qword_10018B488;
  if (!qword_10018B488)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10018B488);
  }

  return result;
}

void sub_100048D0C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_100048D58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100048DD8()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = sub_100008780(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_10000C30C();
  v9 = v8 - v7;
  v10 = *v0;
  v11 = *(v0 + 8);

  if ((v11 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v4 + 8))(v9, v1);
    return v14;
  }

  return v10;
}

uint64_t sub_100048F04@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FlowStepTextView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  sub_10004903C(*(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), a1);
  sub_100049A64(v1, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_100049BF8(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  result = sub_100003768(&qword_10018B4E0, &qword_100125D40);
  v9 = (a1 + *(result + 36));
  *v9 = sub_100015898;
  v9[1] = 0;
  v9[2] = sub_100049C5C;
  v9[3] = v7;
  return result;
}

uint64_t sub_10004903C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v122 = a5;
  v130 = a6;
  v10 = sub_100003768(&qword_10018B4F0, &qword_100125D50);
  sub_10000ED84(v10);
  v12 = *(v11 + 64);
  sub_10000ED78();
  __chkstk_darwin(v13);
  sub_10003DC84();
  v114 = v14;
  v15 = sub_100003768(&qword_10018B400, &unk_100125CC0);
  sub_10000ED84(v15);
  v17 = *(v16 + 64);
  sub_10000ED78();
  __chkstk_darwin(v18);
  v20 = v113 - v19;
  v21 = type metadata accessor for ConstellationContentParagraphStyle();
  v22 = sub_100008780(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v22);
  sub_10000C30C();
  v29 = v28 - v27;
  v30 = sub_100003768(&qword_10018B4F8, &unk_100125D58);
  sub_10000ED84(v30);
  v32 = *(v31 + 64);
  sub_10000ED78();
  __chkstk_darwin(v33);
  sub_10003DC84();
  v116 = v34;
  v35 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  sub_10000ED84(v35);
  v37 = *(v36 + 64);
  sub_10000ED78();
  __chkstk_darwin(v38);
  sub_10003DC84();
  v120 = v39;
  v40 = type metadata accessor for ConstellationContentView();
  v41 = sub_100008780(v40);
  v117 = v42;
  v118 = v41;
  v44 = *(v43 + 64);
  __chkstk_darwin(v41);
  sub_10000C30C();
  v115 = v46 - v45;
  v126 = sub_100003768(&qword_10018B500, &qword_100125D68);
  v47 = sub_10000AF7C(v126);
  v49 = *(v48 + 64);
  v50 = __chkstk_darwin(v47);
  v52 = v113 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v119 = v113 - v53;
  v128 = sub_100003768(&qword_10018B508, &qword_100125D70);
  sub_10000AF7C(v128);
  v55 = *(v54 + 64);
  sub_10000ED78();
  __chkstk_darwin(v56);
  sub_10003DC84();
  v129 = v57;
  v123 = sub_100003768(&qword_10018B510, &qword_100125D78);
  sub_10000AF7C(v123);
  v59 = *(v58 + 64);
  sub_10000ED78();
  __chkstk_darwin(v60);
  sub_10003DC84();
  v124 = v61;
  v127 = sub_100003768(&qword_10018B518, &qword_100125D80);
  sub_10000AF7C(v127);
  v63 = *(v62 + 64);
  sub_10000ED78();
  __chkstk_darwin(v64);
  sub_10003DC84();
  v125 = v65;
  if (!a2)
  {
    goto LABEL_19;
  }

  v66 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v66 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v66)
  {
LABEL_19:
    if (a3)
    {
      v98 = sub_100109984(a3);
      if (v98)
      {
        if (v98[2])
        {
          v99 = v121;
          sub_100048DD8();
          v100 = sub_10008AB00();
          v113[1] = v101;
          v113[2] = v100;

          v102 = type metadata accessor for URL();
          sub_100003CE8(v120, 1, 1, v102);
          v103 = type metadata accessor for FlowStepTextView();
          sub_10000EC9C(v99 + *(v103 + 40), v20, &qword_10018B400, &unk_100125CC0);
          if (sub_10000E5F0(v20, 1, v21) == 1)
          {
            (*(v24 + 104))(v29, enum case for ConstellationContentParagraphStyle.newline(_:), v21);
            if (sub_10000E5F0(v20, 1, v21) != 1)
            {
              sub_10000ABCC(v20, &qword_10018B400, &unk_100125CC0);
            }
          }

          else
          {
            (*(v24 + 32))(v29, v20, v21);
          }

          v105 = type metadata accessor for Locale.Language();
          memset(v131, 0, sizeof(v131));
          v132 = 0;
          sub_100003CE8(v114, 1, 1, v105);
          defaultParagraphSpacing.getter();

          v106 = a4;
          v107 = v116;
          ConstellationContentAttributes.init(font:foregroundColor:accentColor:titleGradientStyle:textAlignment:paragraphSpacing:paragraphStyle:numberOfLines:lineBreakMode:symbolScale:useForegroundColorForSymbol:displayLinkStyle:typeSettingLanguage:supportsLinks:)();
          v108 = type metadata accessor for ConstellationContentAttributes();
          sub_100003CE8(v107, 0, 1, v108);
          v109 = *(v121 + 32);
          v133[0] = *(v121 + 16);
          *&v133[1] = v109;
          sub_100003768(&qword_10018B4E8, &qword_100125D48);
          State.wrappedValue.getter();
          v110 = v115;
          ConstellationContentView.init(rawContent:language:assetsBaseURL:assetFileInfoManager:attributes:size:maxWidth:textIsSelectable:delegate:)();
          static Alignment.leading.getter();
          sub_10004A138();
          (*(v117 + 32))(v52, v110, v118);
          memcpy(&v52[*(v126 + 36)], v133, 0x70uLL);
          v111 = v119;
          sub_100049F48(v52, v119);
          sub_10000EC9C(v111, v124, &qword_10018B500, &qword_100125D68);
          swift_storeEnumTagMultiPayload();
          sub_100003768(&qword_10018B530, &qword_100125D88);
          sub_100049D54();
          sub_100049E64();
          v112 = v125;
          _ConditionalContent<>.init(storage:)();
          sub_10004A16C();
          swift_storeEnumTagMultiPayload();
          sub_100049CC8();
          _ConditionalContent<>.init(storage:)();
          sub_10000ABCC(v112, &qword_10018B518, &qword_100125D80);
          v95 = v111;
          v96 = &qword_10018B500;
          v97 = &qword_100125D68;
          return sub_10000ABCC(v95, v96, v97);
        }
      }
    }

    swift_storeEnumTagMultiPayload();
    sub_100049CC8();
    return _ConditionalContent<>.init(storage:)();
  }

  *&v133[0] = a1;
  *(&v133[0] + 1) = a2;
  sub_10000AC24();

  v67 = Text.init<A>(_:)();
  v69 = v68;
  v71 = v70;
  v72 = a4;
  Font.init(_:)();
  v73 = Text.font(_:)();
  v75 = v74;
  v77 = v76;

  sub_10000AC78(v67, v69, v71 & 1);

  v78 = Text.foregroundColor(_:)();
  v80 = v79;
  v82 = v81;
  v84 = v83;
  sub_10000AC78(v73, v75, v77 & 1);

  static Alignment.leading.getter();
  sub_10004A138();
  v82 &= 1u;
  v134 = v82;
  v85 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v135 = 0;
  *&v133[0] = v78;
  *(&v133[0] + 1) = v80;
  LOBYTE(v133[1]) = v82;
  *(&v133[1] + 1) = v84;
  memcpy(&v133[2], __src, 0x70uLL);
  LOBYTE(v133[9]) = v85;
  *(&v133[9] + 1) = *v136;
  DWORD1(v133[9]) = *&v136[3];
  *(&v133[9] + 1) = v87;
  *&v133[10] = v89;
  *(&v133[10] + 1) = v91;
  *&v133[11] = v93;
  BYTE8(v133[11]) = 0;
  memcpy(v124, v133, 0xB9uLL);
  swift_storeEnumTagMultiPayload();
  sub_10000EC9C(v133, v131, &qword_10018B530, &qword_100125D88);
  sub_100003768(&qword_10018B530, &qword_100125D88);
  sub_100049D54();
  sub_100049E64();
  v94 = v125;
  _ConditionalContent<>.init(storage:)();
  sub_10004A16C();
  swift_storeEnumTagMultiPayload();
  sub_100049CC8();
  _ConditionalContent<>.init(storage:)();
  sub_10000ABCC(v133, &qword_10018B530, &qword_100125D88);
  v95 = v94;
  v96 = &qword_10018B518;
  v97 = &qword_100125D80;
  return sub_10000ABCC(v95, v96, v97);
}

uint64_t sub_1000499FC(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v3 = *a1;
  sub_100003768(&qword_10018B4E8, &qword_100125D48);
  return State.wrappedValue.setter();
}

uint64_t sub_100049A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowStepTextView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100049AC8()
{
  v1 = (type metadata accessor for FlowStepTextView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 32);

  v7 = *(v0 + v3 + 48);

  v8 = *(v0 + v3 + 56);

  v9 = *(v0 + v3 + 72);

  v10 = v1[12];
  v11 = type metadata accessor for ConstellationContentParagraphStyle();
  if (!sub_10000E5F0(v0 + v3 + v10, 1, v11))
  {
    (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100049BF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowStepTextView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100049C5C(uint64_t *a1)
{
  v3 = type metadata accessor for FlowStepTextView();
  sub_10000ED84(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_1000499FC(a1, v5);
}

unint64_t sub_100049CC8()
{
  result = qword_10018B520;
  if (!qword_10018B520)
  {
    sub_100004D48(&qword_10018B518, &qword_100125D80);
    sub_100049D54();
    sub_100049E64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B520);
  }

  return result;
}

unint64_t sub_100049D54()
{
  result = qword_10018B528;
  if (!qword_10018B528)
  {
    sub_100004D48(&qword_10018B530, &qword_100125D88);
    sub_100049DE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B528);
  }

  return result;
}

unint64_t sub_100049DE0()
{
  result = qword_10018B538;
  if (!qword_10018B538)
  {
    sub_100004D48(&qword_10018B540, &qword_100125D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B538);
  }

  return result;
}

unint64_t sub_100049E64()
{
  result = qword_10018B548;
  if (!qword_10018B548)
  {
    sub_100004D48(&qword_10018B500, &qword_100125D68);
    sub_100049EF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B548);
  }

  return result;
}

unint64_t sub_100049EF0()
{
  result = qword_10018B550;
  if (!qword_10018B550)
  {
    type metadata accessor for ConstellationContentView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B550);
  }

  return result;
}

uint64_t sub_100049F48(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018B500, &qword_100125D68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100049FBC()
{
  result = qword_10018B558;
  if (!qword_10018B558)
  {
    sub_100004D48(&qword_10018B4E0, &qword_100125D40);
    sub_10004A048();
    sub_10004A0D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B558);
  }

  return result;
}

unint64_t sub_10004A048()
{
  result = qword_10018B560;
  if (!qword_10018B560)
  {
    sub_100004D48(&qword_10018B568, &qword_100125D98);
    sub_100049CC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B560);
  }

  return result;
}

unint64_t sub_10004A0D4()
{
  result = qword_100189548;
  if (!qword_100189548)
  {
    sub_100004D48(&qword_100189550, &unk_100122B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189548);
  }

  return result;
}

uint64_t sub_10004A138()
{

  return _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
}

uint64_t sub_10004A16C()
{
  v5 = *(v0 + 144);

  return sub_10000EC9C(v3, v5, v1, v2);
}

uint64_t sub_10004A190(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_10004A1E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_10004A270@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PlacardInfoItemType(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  type metadata accessor for PlacardInfoItem(0);
  swift_storeEnumTagMultiPayload();
  v8 = *(v1 + 40);
  v9 = *(v2 + 48);
  sub_100006568(*(v2 + 40));
  v10 = sub_1000EFDB8(v7, v8, v9);
  sub_10000B4E0(v2, v16);
  sub_100003768(&qword_10018B570, &qword_100125E78);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100125DA0;
  *(v11 + 32) = v10;
  sub_10000B4E0(v16, a1 + 40);
  type metadata accessor for FlowViewDataProvider(0);
  sub_10000B550();
  v12 = Environment.init<A>(_:)();
  LOBYTE(v7) = v13;
  result = sub_10001035C(v16);
  *a1 = v12;
  *(a1 + 8) = v7 & 1;
  strcpy((a1 + 16), "VPN_DETECTED");
  *(a1 + 29) = 0;
  *(a1 + 30) = -5120;
  *(a1 + 32) = v11;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return result;
}

unint64_t sub_10004A3F0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100175FF0, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10004A444(char a1)
{
  result = 0x4379726574746162;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x6574737572547369;
      break;
    case 4:
      result = 0x7373615068747561;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10004A574@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004A3F0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10004A5A4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10004A444(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10004A5EC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10004A43C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A614(uint64_t a1)
{
  v2 = sub_10004B298();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004A650(uint64_t a1)
{
  v2 = sub_10004B298();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004A68C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100003768(&qword_10018B588, &qword_100125F38);
  v6 = sub_100008780(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v33 - v11;
  v13 = a1[4];
  sub_100025734(a1, a1[3]);
  sub_10004B298();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000086BC(a1);
  }

  LOBYTE(v38) = 0;
  sub_10004B2EC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v14 = v41;
  v15 = v42;
  v53 = v43;
  sub_10004BC30(1);
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v51 = v15;
  v17 = sub_10004A990(v16);
  if (v17 == 13)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  sub_10004BC30(2);
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v37 = v18;
  LOBYTE(v20) = BatteryDiagnosticsReport.PerformanceMitigation.init(rawValue:)(v19);
  if (v20 == 5)
  {
    v21 = 1;
  }

  else
  {
    v21 = v20;
  }

  sub_10004BC30(6);
  v36 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_10004BC30(3);
  v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  sub_10004BC30(4);
  v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v52 = 5;
  v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v34 &= 1u;
  v35 &= 1u;
  v23 = v22;
  v24 = v12;
  v26 = v25;
  (*(v8 + 8))(v24, v5);
  *&v38 = v14;
  v27 = v21;
  HIDWORD(v33) = v21;
  BYTE8(v38) = v51;
  v28 = v53;
  BYTE9(v38) = v53;
  v29 = v37;
  BYTE10(v38) = v37;
  BYTE11(v38) = v27;
  v30 = v36;
  *&v39 = v36;
  BYTE8(v39) = v35;
  BYTE9(v39) = v34;
  *&v40 = v23;
  *(&v40 + 1) = v26;
  sub_10004B340(&v38, &v41);
  sub_1000086BC(a1);
  v41 = v14;
  v42 = v51;
  v43 = v28;
  v44 = v29;
  v45 = BYTE4(v33);
  v46 = v30;
  v47 = v35;
  v48 = v34;
  v49 = v23;
  v50 = v26;
  result = sub_10004B378(&v41);
  v32 = v39;
  *a2 = v38;
  a2[1] = v32;
  a2[2] = v40;
  return result;
}