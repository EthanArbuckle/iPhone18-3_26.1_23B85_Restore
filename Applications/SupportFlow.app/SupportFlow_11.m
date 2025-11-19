uint64_t sub_1001016B0(uint64_t a1)
{
  v2 = type metadata accessor for PhoneNumberOption(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10010170C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

unint64_t sub_100101750()
{
  result = qword_100192A60;
  if (!qword_100192A60)
  {
    sub_100004D48(&qword_100192A50, &qword_100131960);
    sub_1001017DC();
    sub_10005D6CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192A60);
  }

  return result;
}

unint64_t sub_1001017DC()
{
  result = qword_100192A68;
  if (!qword_100192A68)
  {
    sub_100004D48(&qword_100192A48, &qword_100131958);
    sub_100101898(&qword_10018C388, type metadata accessor for FlowStepTextView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192A68);
  }

  return result;
}

uint64_t sub_100101898(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001018E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003768(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_10010194C()
{
  result = qword_100192A70;
  if (!qword_100192A70)
  {
    sub_100004D48(&qword_100192A78, &qword_100131978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192A70);
  }

  return result;
}

uint64_t sub_1001019B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = type metadata accessor for Locale();
  v6 = sub_10000ED84(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_10000C30C();
  v9 = type metadata accessor for String.LocalizationValue();
  v10 = sub_10000ED84(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_10000C30C();
  v13 = type metadata accessor for TimezoneViewModel();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_1000B7D6C();
  State.init(wrappedValue:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_100103A30();
  v16 = String.init(localized:table:bundle:locale:comment:)();
  v18 = v17;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_100103A30();
  v19 = String.init(localized:table:bundle:locale:comment:)();
  v21 = v20;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_100103A30();
  result = String.init(localized:table:bundle:locale:comment:)();
  *a3 = v25;
  a3[1] = v26;
  a3[2] = v16;
  a3[3] = v18;
  a3[4] = v19;
  a3[5] = v21;
  a3[6] = result;
  a3[7] = v23;
  a3[8] = a1;
  a3[9] = a2;
  return result;
}

uint64_t sub_100101B9C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_100101BDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100101C5C@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v52 = sub_100003768(&qword_100192A80, &qword_100131A58);
  v2 = sub_10000AF7C(v52);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v51 - v5;
  v7 = type metadata accessor for Locale();
  v8 = sub_10000ED84(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_10000C30C();
  v11 = type metadata accessor for String.LocalizationValue();
  v12 = sub_10000ED84(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_10000C30C();
  v15 = type metadata accessor for FlowStepSectionHeaderView();
  v16 = sub_10000AF7C(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_10000C30C();
  v21 = v20 - v19;
  v22 = sub_100003768(&qword_100192A88, &qword_100131A60);
  v23 = sub_1000DCE20(v22, &v64);
  v53 = v24;
  v26 = *(v25 + 64);
  __chkstk_darwin(v23);
  v28 = &v51 - v27;
  v29 = sub_100003768(&qword_100192A90, &qword_100131A68);
  v30 = sub_1000DCE20(v29, &v65);
  v55 = v31;
  v33 = *(v32 + 64);
  __chkstk_darwin(v30);
  v35 = &v51 - v34;
  v57 = v1;
  v63 = 0;
  v62 = 1;
  *v21 = 0xD000000000000024;
  *(v21 + 8) = 0x800000010013A500;
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = 0;
  *(v21 + 40) = 1;
  __asm { FMOV            V0.2D, #20.0 }

  *(v21 + 48) = _Q0;
  v41 = type metadata accessor for FlowImage();
  swift_storeEnumTagMultiPayload();
  sub_100003CE8(v21, 0, 1, v41);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v42 = String.init(localized:table:bundle:locale:comment:)();
  v43 = (v21 + *(v15 + 20));
  *v43 = v42;
  v43[1] = v44;
  sub_10010283C(v6);
  sub_100003768(&qword_100192A98, &qword_100131A70);
  sub_10010385C(&qword_10018A8D0, type metadata accessor for FlowStepSectionHeaderView);
  sub_10000AAEC(&qword_100192AA0, &qword_100192A98, &qword_100131A70);
  sub_100103544();
  Section<>.init(header:footer:content:)();
  v58 = *v1;
  sub_100003768(&qword_100192AB0, &qword_100131A78);
  State.wrappedValue.getter();
  LOBYTE(v21) = sub_1000B9F0C();

  LOBYTE(v61) = v21 & 1;
  v45 = swift_allocObject();
  sub_100103A48(v45);
  sub_10010362C(v1, &v58);
  v46 = sub_100103664();
  v47 = v51;
  View.onChange<A>(of:initial:_:)();

  (*(v53 + 8))(v28, v47);
  v48 = swift_allocObject();
  sub_100103A48(v48);
  sub_10010362C(v1, &v58);
  *&v58 = v47;
  *(&v58 + 1) = &type metadata for Bool;
  v59 = v46;
  v60 = &protocol witness table for Bool;
  sub_1000F9F68();
  swift_getOpaqueTypeConformance2();
  v49 = v54;
  View.onForeground(perform:)();

  return (*(v55 + 8))(v35, v49);
}

uint64_t sub_1001021B8@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = sub_100003768(&qword_100192AF8, &qword_100131AB0);
  v53 = *(v2 - 8);
  v54 = v2;
  v3 = *(v53 + 64);
  __chkstk_darwin(v2);
  v51 = &v48 - v4;
  v5 = sub_100003768(&qword_100192B00, &qword_100131AB8);
  v6 = *(v5 - 8);
  v52 = v5 - 8;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5 - 8);
  v56 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v50 = &v48 - v11;
  __chkstk_darwin(v10);
  v13 = &v48 - v12;
  v14 = sub_100003768(&qword_100192B08, &qword_100131AC0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  v17 = __chkstk_darwin(v14);
  v55 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v48 - v19;
  v62[0] = *v1;
  v48 = sub_100003768(&qword_100192AB0, &qword_100131A78);
  State.projectedValue.getter();
  v21 = v63[0];
  v22 = *&v63[1];
  swift_getKeyPath();
  v63[0] = v21;
  *&v63[1] = v22;
  sub_100003768(&qword_100192B10, &qword_100131AF0);
  Binding.subscript.getter();

  Toggle.init(isOn:label:)();
  v23 = v49;
  v63[0] = *v49;
  State.wrappedValue.getter();
  v24 = sub_1000B77F4();

  KeyPath = swift_getKeyPath();
  v26 = swift_allocObject();
  *(v26 + 16) = v24 & 1;
  v27 = v20;
  v28 = &v20[*(v15 + 44)];
  *v28 = KeyPath;
  v28[1] = sub_100103968;
  v28[2] = v26;
  v29 = *(v23 + 3);
  v64 = *(v23 + 2);
  v65 = v29;
  v63[0] = *v23;

  State.wrappedValue.getter();
  v30 = sub_1000B7630();
  v32 = v31;

  if (v32)
  {
    v33 = v30;
  }

  else
  {
    v33 = 0;
  }

  v34 = 0xE000000000000000;
  if (v32)
  {
    v34 = v32;
  }

  *&v63[0] = v33;
  *(&v63[0] + 1) = v34;
  sub_10000AC24();
  v35 = v51;
  LabeledContent<>.init<A, B>(_:value:)();
  v36 = static HierarchicalShapeStyle.tertiary.getter();
  v37 = v50;
  (*(v53 + 32))(v50, v35, v54);
  *(v37 + *(v52 + 44)) = v36;
  v54 = v13;
  sub_10002CE6C(v37, v13, &qword_100192B00, &qword_100131AB8);
  v63[0] = *v23;
  State.wrappedValue.getter();
  LOBYTE(v35) = sub_1000B9F0C();

  if (v35)
  {
    sub_100103980(v63);
  }

  else
  {
    v38 = static VerticalAlignment.center.getter();
    v61 = 1;
    sub_1001030F4(v23, v63);
    memcpy(v58, v63, 0x1A0uLL);
    memcpy(v59, v63, 0x1A0uLL);
    sub_10002BE60(v58, v62, &qword_100192B18, &qword_100131B28);
    sub_10000ABCC(v59, &qword_100192B18, &qword_100131B28);
    memcpy(&v60[7], v58, 0x1A0uLL);
    v39 = v61;
    v40 = static HierarchicalShapeStyle.tertiary.getter();
    v62[0] = v38;
    LOBYTE(v62[1]) = v39;
    memcpy(&v62[1] + 1, v60, 0x1A7uLL);
    DWORD2(v62[27]) = v40;
    nullsub_1(v62);
    memcpy(v63, v62, 0x1BCuLL);
  }

  v41 = v55;
  sub_10002BE60(v27, v55, &qword_100192B08, &qword_100131AC0);
  v42 = v54;
  v43 = v56;
  sub_10002BE60(v54, v56, &qword_100192B00, &qword_100131AB8);
  memcpy(v58, v63, 0x1BCuLL);
  v44 = v57;
  sub_10002BE60(v41, v57, &qword_100192B08, &qword_100131AC0);
  v45 = sub_100003768(&qword_100192B20, &qword_100131B30);
  sub_10002BE60(v43, v44 + *(v45 + 48), &qword_100192B00, &qword_100131AB8);
  v46 = *(v45 + 64);
  memcpy(v59, v58, 0x1BCuLL);
  memcpy((v44 + v46), v58, 0x1BCuLL);
  sub_10002BE60(v59, v62, &qword_100192B28, &qword_100131B38);
  sub_10000ABCC(v42, &qword_100192B00, &qword_100131AB8);
  sub_10000ABCC(v27, &qword_100192B08, &qword_100131AC0);
  memcpy(v62, v58, 0x1BCuLL);
  sub_10000ABCC(v62, &qword_100192B28, &qword_100131B38);
  sub_10000ABCC(v43, &qword_100192B00, &qword_100131AB8);
  return sub_10000ABCC(v41, &qword_100192B08, &qword_100131AC0);
}

uint64_t sub_10010283C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100003768(&qword_100192AC0, &qword_100131A90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v64 - v6;
  v8 = sub_100003768(&qword_100192AC8, &qword_100131A98);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v64 - v10;
  v66 = sub_100003768(&qword_100192AD0, &qword_100131AA0);
  v12 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v65 = &v64 - v13;
  v14 = type metadata accessor for AttributeContainer();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = type metadata accessor for AttributedString();
  v67 = *(v16 - 8);
  v17 = *(v67 + 64);
  v18 = __chkstk_darwin(v16);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v64 - v21;
  v23 = sub_100003768(&qword_100192AD8, &qword_100131AA8);
  v69 = *(v23 - 8);
  v70 = v23;
  v24 = *(v69 + 64);
  __chkstk_darwin(v23);
  v68 = &v64 - v25;
  v72 = *v1;
  sub_100003768(&qword_100192AB0, &qword_100131A78);
  State.wrappedValue.getter();
  v26 = sub_1000B9F0C();

  if (v26)
  {
    v27 = 1;
    v28 = v70;
  }

  else
  {
    v64 = a1;
    v30 = *(v1 + 4);
    v29 = *(v1 + 5);
    sub_100003768(&qword_100188810, &unk_100121780);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100121620;
    v75 = v2[3];
    *(v31 + 56) = &type metadata for String;
    *(v31 + 64) = sub_100017A18();
    *(v31 + 32) = v2[3];
    swift_bridgeObjectRetain_n();
    String.init(format:_:)();
    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    v72 = v75;
    v32 = type metadata accessor for Locale();
    sub_100003CE8(v7, 1, 1, v32);
    sub_10010385C(&qword_100192AE0, &type metadata accessor for AttributedString);
    sub_10000AC24();
    AttributedStringProtocol.range<A>(of:options:locale:)();
    sub_10000ABCC(v7, &qword_100192AC0, &qword_100131A90);
    sub_1000401D0(&v75);
    if (sub_10000E5F0(v11, 1, v66) == 1)
    {
      v33 = &qword_100192AC8;
      v34 = &qword_100131A98;
      v35 = v11;
    }

    else
    {
      v36 = v11;
      v37 = v65;
      sub_10002CE6C(v36, v65, &qword_100192AD0, &qword_100131AA0);
      v38 = [objc_opt_self() linkColor];
      sub_10000AAEC(&qword_100192AE8, &qword_100192AD0, &qword_100131AA0);
      v39 = AttributedString.subscript.modify();
      v71 = v38;
      sub_1001038A4();
      AttributedSubstring.subscript.setter();
      v39(&v72, 0);
      v35 = v37;
      v33 = &qword_100192AD0;
      v34 = &qword_100131AA0;
    }

    sub_10000ABCC(v35, v33, v34);
    (*(v67 + 32))(v22, v20, v16);
    v40 = Text.init(_:)();
    v42 = v41;
    v44 = v43;
    static Font.caption.getter();
    v45 = Text.font(_:)();
    v47 = v46;
    v49 = v48;

    sub_10000AC78(v40, v42, v44 & 1);

    static Font.Weight.semibold.getter();
    v50 = Text.fontWeight(_:)();
    v52 = v51;
    v54 = v53;
    sub_10000AC78(v45, v47, v49 & 1);

    *&v72 = static Color.gray.getter();
    v55 = Text.foregroundStyle<A>(_:)();
    v57 = v56;
    v59 = v58;
    v61 = v60;
    sub_10000AC78(v50, v52, v54 & 1);

    *&v72 = v55;
    *(&v72 + 1) = v57;
    v73 = v59 & 1;
    v74 = v61;
    v62 = v68;
    View.onTapGesture(count:perform:)();
    sub_10000AC78(v55, v57, v59 & 1);

    v28 = v70;
    a1 = v64;
    (*(v69 + 32))(v64, v62, v70);
    v27 = 0;
  }

  return sub_100003CE8(a1, v27, 1, v28);
}

uint64_t sub_100102F44(uint64_t a1)
{
  *(v1 + 40) = a1;
  type metadata accessor for MainActor();
  *(v1 + 48) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100102FDC, v3, v2);
}

uint64_t sub_100102FDC()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);

  *(v0 + 16) = *v2;
  sub_100003768(&qword_100192AB0, &qword_100131A78);
  State.wrappedValue.getter();
  v3 = *(v0 + 32);
  sub_1000B9F7C();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100103074@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1001030F4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v37[120] = 1;
  memcpy(&v37[7], __src, 0x70uLL);
  v33 = *a1;
  sub_100003768(&qword_100192AB0, &qword_100131A78);
  State.wrappedValue.getter();
  v4 = sub_1000B7424();
  v6 = v5;

  *&v33 = v4;
  *(&v33 + 1) = v6;
  sub_10000AC24();
  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  v24 = v12;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  LOBYTE(v4) = v11 & 1;
  v36[128] = v11 & 1;
  v33 = *a1;
  State.wrappedValue.getter();
  v13 = sub_1000B7438();
  v15 = v14;

  *&v33 = v13;
  *(&v33 + 1) = v15;
  v16 = Text.init<A>(_:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  static Alignment.trailing.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v20 &= 1u;
  v36[120] = v20;
  v27[0] = v7;
  v27[1] = v9;
  LOBYTE(v27[2]) = v4;
  v27[3] = v24;
  memcpy(&v27[4], v26, 0x70uLL);
  v28[0] = v16;
  v28[1] = v18;
  LOBYTE(v28[2]) = v20;
  v28[3] = v22;
  memcpy(&v28[4], v25, 0x70uLL);
  *a2 = 0;
  *(a2 + 8) = 1;
  memcpy((a2 + 9), v37, 0x77uLL);
  memcpy((a2 + 128), v27, 0x90uLL);
  memcpy((a2 + 272), v28, 0x90uLL);
  v29[0] = v16;
  v29[1] = v18;
  v30 = v20;
  v31 = v22;
  memcpy(v32, v25, sizeof(v32));
  sub_10002BE60(v27, &v33, &qword_10018B540, &qword_100125D90);
  sub_10002BE60(v28, &v33, &qword_10018B540, &qword_100125D90);
  sub_10000ABCC(v29, &qword_10018B540, &qword_100125D90);
  *&v33 = v7;
  *(&v33 + 1) = v9;
  v34 = v4;
  v35 = v24;
  memcpy(v36, v26, 0x70uLL);
  return sub_10000ABCC(&v33, &qword_10018B540, &qword_100125D90);
}

uint64_t sub_100103428()
{
  v0 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v5 - v2;
  URL.init(string:)();
  sub_10001BBBC(v3);
  return sub_10000ABCC(v3, &qword_100188EE0, &unk_100122AE0);
}

unint64_t sub_100103544()
{
  result = qword_100192AA8;
  if (!qword_100192AA8)
  {
    sub_100004D48(&qword_100192A80, &qword_100131A58);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192AA8);
  }

  return result;
}

uint64_t sub_1001035FC()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = *(v0 + 88);
    return v1();
  }

  return result;
}

unint64_t sub_100103664()
{
  result = qword_100192AB8;
  if (!qword_100192AB8)
  {
    sub_100004D48(&qword_100192A88, &qword_100131A60);
    sub_10010385C(&qword_10018A8D0, type metadata accessor for FlowStepSectionHeaderView);
    sub_10000AAEC(&qword_100192AA0, &qword_100192A98, &qword_100131A70);
    sub_100103544();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192AB8);
  }

  return result;
}

uint64_t sub_100103760()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[9];

  if (v0[10])
  {
    v6 = v0[11];
  }

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1001037C8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000D870;

  return sub_100102F44(v0 + 16);
}

uint64_t sub_10010385C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001038A4()
{
  result = qword_100192AF0;
  if (!qword_100192AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192AF0);
  }

  return result;
}

uint64_t sub_100103900@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100103988()
{
  sub_100004D48(&qword_100192A90, &qword_100131A68);
  sub_100004D48(&qword_100192A88, &qword_100131A60);
  sub_100103664();
  sub_1000F9F68();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

void *sub_100103A48(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, v1, 0x50uLL);
}

uint64_t sub_100103A94(uint64_t a1, char a2)
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

double sub_100103BD4@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{

  v10 = sub_100103C4C(a1, a2 & 1);
  *a5 = a3;
  *(a5 + 8) = a4;
  *(a5 + 16) = v10;
  result = 0.0;
  *(a5 + 24) = 0u;
  *(a5 + 40) = 0u;
  return result;
}

id *sub_100103C4C(uint64_t a1, char a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v8 = String.init(localized:table:bundle:locale:comment:)();
  sub_1001040F0(v8, v9, 4);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v10 = String.init(localized:table:bundle:locale:comment:)();
  sub_1001040F0(v10, v11, 5);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v12 = String.init(localized:table:bundle:locale:comment:)();
  sub_1001040F0(v12, v13, 6);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_100103A94(a1, a2 & 1);
  v14 = sub_10010C5D0();

  if (v14)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v15 = String.init(localized:table:bundle:locale:comment:)();
    sub_1001040F0(v15, v16, 7);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17 = String.init(localized:table:bundle:locale:comment:)();
  sub_1001040F0(v17, v18, 8);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return _swiftEmptyArrayStorage;
}

uint64_t sub_1001040F0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003768(&qword_1001889F0, &qword_100121D20);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v27 - v13;
  v15 = type metadata accessor for FlowImage();
  sub_100003CE8(v14, 1, 1, v15);
  UUID.init()();
  v16 = UUID.uuidString.getter();
  v18 = v17;
  (*(v7 + 8))(v10, v6);
  v19 = type metadata accessor for OptionInfoItem();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  v23 = v22 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_nextStep;
  *(v22 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_nextStep + 24) = &type metadata for AirPodsStepProvider;
  *(v23 + 32) = sub_100004C8C();
  *v23 = a3;
  v24 = (v22 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_onSelected);
  *v24 = 0;
  v24[1] = 0;
  v25 = sub_1000EBC54(v16, v18, v14, a1, a2, 0, 0);

  return v25;
}

uint64_t sub_1001042F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ImageResource();
    v9 = a1 + *(a3 + 40);

    return sub_10000E5F0(v9, a2, v8);
  }
}

uint64_t sub_100104394(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ImageResource();
    v8 = v5 + *(a4 + 40);

    return sub_100003CE8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AirPodsDeviceInfo()
{
  result = qword_100192B88;
  if (!qword_100192B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100104460()
{
  sub_10000E928();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ImageResource();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10010450C()
{
  sub_100096D74();
  sub_100025A50();
  v2 = sub_100025A24(*(v1 + 168));
  if (sub_100114848(v2))
  {
    sub_100105684();
    __chkstk_darwin(v3);
    sub_100025A64();
    *(v0 - 32) = &type metadata for ForgotPasswordStepProvider;
    *(v0 - 24) = sub_1001056C0();
    *(v0 - 16) = sub_10000B138();
    *(v0 - 8) = sub_1001056A8(&qword_100192F38);
    swift_getKeyPath();
    sub_100025A3C();
    __chkstk_darwin(v4);
    sub_100025A0C();
    sub_100105690();
    sub_100109038();

    sub_10010569C();
    sub_100053050();
  }

  else
  {
    sub_100105674();
    sub_100053050();
  }
}

void sub_100104628()
{
  sub_100096D74();
  sub_100025A50();
  v2 = sub_100025A24(*(v1 + 168));
  if (sub_100114848(v2))
  {
    sub_100105684();
    __chkstk_darwin(v3);
    sub_100025A64();
    *(v0 - 32) = &type metadata for MailStepProvider;
    *(v0 - 24) = sub_1001056C0();
    *(v0 - 16) = sub_1000257D8();
    *(v0 - 8) = sub_1001056A8(&qword_10018A110);
    swift_getKeyPath();
    sub_100025A3C();
    __chkstk_darwin(v4);
    sub_100025A0C();
    sub_100105690();
    sub_100109120();

    sub_10010569C();
    sub_100053050();
  }

  else
  {
    sub_100105674();
    sub_100053050();
  }
}

void sub_100104744()
{
  sub_100096D74();
  sub_100025A50();
  v2 = sub_100025A24(*(v1 + 168));
  if (sub_100114848(v2))
  {
    sub_100105684();
    __chkstk_darwin(v3);
    sub_100025A64();
    *(v0 - 32) = &type metadata for CompromisedAccountStepProvider;
    *(v0 - 24) = sub_1001056C0();
    *(v0 - 16) = sub_100010248();
    *(v0 - 8) = sub_1001056A8(&qword_100192F18);
    swift_getKeyPath();
    sub_100025A3C();
    __chkstk_darwin(v4);
    sub_100025A0C();
    sub_100105690();
    sub_100109150();

    sub_10010569C();
    sub_100053050();
  }

  else
  {
    sub_100105674();
    sub_100053050();
  }
}

void sub_100104860()
{
  sub_100096D74();
  sub_100025A50();
  v2 = sub_100025A24(*(v1 + 168));
  if (sub_100114848(v2))
  {
    sub_100105684();
    __chkstk_darwin(v3);
    sub_100025A64();
    *(v0 - 32) = &type metadata for WiFiStepProvider;
    *(v0 - 24) = sub_1001056C0();
    *(v0 - 16) = sub_10000737C();
    *(v0 - 8) = sub_1001056A8(&qword_10018A178);
    swift_getKeyPath();
    sub_100025A3C();
    __chkstk_darwin(v4);
    sub_100025A0C();
    sub_100105690();
    sub_100114874();

    sub_10010569C();
    sub_100053050();
  }

  else
  {
    sub_100105674();
    sub_100053050();
  }
}

void sub_10010497C()
{
  sub_100096D74();
  sub_100025A50();
  v2 = sub_100025A24(*(v1 + 168));
  if (sub_100114848(v2))
  {
    sub_100105684();
    __chkstk_darwin(v3);
    sub_100025A64();
    *(v0 - 32) = &type metadata for BatteryStepProvider;
    *(v0 - 24) = sub_1001056C0();
    *(v0 - 16) = sub_10006EFF8();
    *(v0 - 8) = sub_1001056A8(&qword_10018A158);
    swift_getKeyPath();
    sub_100025A3C();
    __chkstk_darwin(v4);
    sub_100025A0C();
    sub_100105690();
    sub_1001091B0();

    sub_10010569C();
    sub_100053050();
  }

  else
  {
    sub_100105674();
    sub_100053050();
  }
}

void sub_100104A98()
{
  sub_100096D74();
  sub_100025A50();
  v2 = sub_100025A24(*(v1 + 168));
  if (sub_100114848(v2))
  {
    sub_100105684();
    __chkstk_darwin(v3);
    sub_100025A64();
    *(v0 - 32) = &type metadata for DisabledAccountStepProvider;
    *(v0 - 24) = sub_1001056C0();
    *(v0 - 16) = sub_1000219CC();
    *(v0 - 8) = sub_1001056A8(&qword_100192F28);
    swift_getKeyPath();
    sub_100025A3C();
    __chkstk_darwin(v4);
    sub_100025A0C();
    sub_100105690();
    sub_1001091E0();

    sub_10010569C();
    sub_100053050();
  }

  else
  {
    sub_100105674();
    sub_100053050();
  }
}

void sub_100104BB4()
{
  sub_100096D74();
  sub_100025A50();
  v2 = sub_100025A24(*(v1 + 168));
  if (sub_100114848(v2))
  {
    sub_100105684();
    __chkstk_darwin(v3);
    sub_100025A64();
    *(v0 - 32) = &type metadata for PurchasesStepProvider;
    *(v0 - 24) = sub_1001056C0();
    *(v0 - 16) = sub_1000258DC();
    *(v0 - 8) = sub_1001056A8(&qword_10018A158);
    swift_getKeyPath();
    sub_100025A3C();
    __chkstk_darwin(v4);
    sub_100025A0C();
    sub_100105690();
    sub_100109210();

    sub_10010569C();
    sub_100053050();
  }

  else
  {
    sub_100105674();
    sub_100053050();
  }
}

void sub_100104CD0()
{
  sub_100096D74();
  sub_100025A50();
  v2 = sub_100025A24(*(v1 + 168));
  if (sub_100114848(v2))
  {
    sub_100105684();
    __chkstk_darwin(v3);
    sub_100025A64();
    *(v0 - 32) = &type metadata for MessagesStepProvider;
    *(v0 - 24) = sub_1001056C0();
    *(v0 - 16) = sub_10001362C();
    *(v0 - 8) = sub_1001056A8(&qword_10018A130);
    swift_getKeyPath();
    sub_100025A3C();
    __chkstk_darwin(v4);
    sub_100025A0C();
    sub_100105690();
    sub_100109240();

    sub_10010569C();
    sub_100053050();
  }

  else
  {
    sub_100105674();
    sub_100053050();
  }
}

uint64_t sub_100104DEC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 168));
  v6 = v5[1];
  v7 = sub_100114848(*v5);
  if (v7)
  {
    __chkstk_darwin(v7);
    sub_100003768(&qword_10018A148, &qword_100131EE0);
    sub_1000BC544();
    sub_1001055F4(&qword_10018A158, &qword_10018A148, &qword_100131EE0);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100109270();
  }

  else
  {
    *v5 = a1;
    v5[1] = a2;
  }
}

uint64_t sub_100104F78()
{
  sub_100025A50();
  *(v1 + *(v3 + 144)) = 0;
  sub_1000A3190();
  sub_100105660(*(v4 + 152));
  sub_100105660(*(v5 + 160));
  sub_100105660(*(v6 + 168));
  *(v1 + *(v7 + 176)) = 0;
  sub_1000A3190();
  *(v1 + *(v8 + 184)) = 1;
  sub_1000A3190();
  *(v1 + *(v9 + 192)) = 0;
  sub_1000A3190();
  v11 = v1 + *(v10 + 200);
  ObservationRegistrar.init()();
  v12 = qword_1001A57E0;
  v13 = type metadata accessor for SupportFlowIdentifier();
  sub_10000AF7C(v13);
  (*(v14 + 32))(v1 + v12, v2);
  *(v1 + qword_1001A57E8) = &type metadata for ScreenRepairStepProvider;
  sub_1000A3190();
  *(v1 + *(v15 + 136)) = v0;
  sub_1000A3190();
  v17 = (v1 + *(v16 + 128));
  *v17 = &type metadata for DefaultStepOverrideProvider;
  v17[1] = v0;
  v17[2] = 0;
  v17[3] = 0;

  return v1;
}

uint64_t sub_1001050E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000A3190();
  *(v4 + *(v8 + 144)) = 0;
  sub_1000A3190();
  sub_100105660(*(v9 + 152));
  sub_100105660(*(v10 + 160));
  sub_100105660(*(v11 + 168));
  *(v4 + *(v12 + 176)) = 0;
  sub_1000A3190();
  *(v4 + *(v13 + 184)) = v14;
  sub_1000A3190();
  *(v4 + *(v15 + 192)) = 0;
  sub_1000A3190();
  v17 = v4 + *(v16 + 200);
  ObservationRegistrar.init()();
  v18 = qword_1001A57E0;
  v19 = type metadata accessor for SupportFlowIdentifier();
  sub_10000AF7C(v19);
  (*(v20 + 32))(v4 + v18, a1);
  *(v4 + qword_1001A57E8) = a4;
  sub_1000A3190();
  *(v4 + *(v21 + 136)) = a2;
  sub_1000A3190();
  v23 = (v4 + *(v22 + 128));
  *v23 = &type metadata for DefaultStepOverrideProvider;
  v23[1] = a2;
  v23[2] = 0;
  v23[3] = 0;

  return v4;
}

void sub_100105248()
{
  sub_100096D74();
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_10000C30C();
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_10000C30C();
  v6 = type metadata accessor for SupportFlowIdentifier();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_10000C30C();
  v11 = v10 - v9;
  ObservationRegistrar.init()();
  (*(v7 + 104))(v11, enum case for SupportFlowIdentifier.accountPhoneNumber(_:), v6);

  sub_1001050E4(v11, v1, 3, &type metadata for TrustedPhoneNumberStepProvider);
  swift_retain_n();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_100106978();
  if (qword_100188238 != -1)
  {
    swift_once();
  }

  v12 = qword_1001A57D0;
  v13 = *algn_1001A57D8;

  sub_100104DEC(v12, v13);
  sub_100108404(0);

  sub_100053050();
}

uint64_t sub_10010548C()
{
  v1 = qword_100192BD8;
  v2 = type metadata accessor for ObservationRegistrar();
  sub_10000AF7C(v2);
  v4 = *(v3 + 8);

  return v4(v0 + v1);
}

uint64_t sub_1001054EC()
{
  v0 = sub_10011484C();
  v1 = qword_100192BD8;
  v2 = type metadata accessor for ObservationRegistrar();
  sub_10000AF7C(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t type metadata accessor for TrustedPhoneNumberFlowViewModel()
{
  result = qword_100192C08;
  if (!qword_100192C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_1001055E8(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1001055F4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100105660(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
  v3 = *v1;
}

uint64_t sub_100105674()
{
  *v3 = v1;
  v3[1] = v0;
  return v2;
}

uint64_t sub_1001056A8(unint64_t *a1)
{

  return sub_1001055F4(a1, v1, v2);
}

uint64_t sub_1001056C0()
{

  return sub_100003768(v0, v1);
}

void sub_100105734()
{
  sub_100096D74();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_1000A3190();
  *(v0 + *(v11 + 144)) = 0;
  sub_1000A3190();
  sub_100105660(*(v12 + 152));
  sub_100105660(*(v13 + 160));
  sub_100105660(*(v14 + 168));
  *(v0 + *(v15 + 176)) = 0;
  sub_1000A3190();
  *(v0 + *(v16 + 184)) = 10;
  sub_1000A3190();
  *(v0 + *(v17 + 192)) = 0;
  sub_1000A3190();
  v19 = v0 + *(v18 + 200);
  ObservationRegistrar.init()();
  v20 = qword_1001A57E0;
  v21 = type metadata accessor for SupportFlowIdentifier();
  sub_10000AF7C(v21);
  (*(v22 + 32))(v0 + v20, v10);
  *(v0 + qword_1001A57E8) = &type metadata for MessagesStepProvider;
  sub_1000A3190();
  v24 = (v0 + *(v23 + 128));
  *v24 = v8;
  v24[1] = v6;
  v24[2] = v4;
  v24[3] = v2;
  sub_1000A3190();
  *(v0 + *(v25 + 136)) = v6;

  sub_100053050();
}

void sub_1001058A4()
{
  sub_100096D74();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_1000A3190();
  *(v0 + *(v13 + 144)) = 0;
  sub_1000A3190();
  sub_100105660(*(v14 + 152));
  sub_100105660(*(v15 + 160));
  sub_100105660(*(v16 + 168));
  *(v0 + *(v17 + 176)) = 0;
  sub_1000A3190();
  *(v0 + *(v18 + 184)) = v19;
  sub_1000A3190();
  *(v0 + *(v20 + 192)) = 0;
  sub_1000A3190();
  v22 = v0 + *(v21 + 200);
  ObservationRegistrar.init()();
  v23 = qword_1001A57E0;
  v24 = type metadata accessor for SupportFlowIdentifier();
  sub_10000AF7C(v24);
  (*(v25 + 32))(v0 + v23, v12);
  *(v0 + qword_1001A57E8) = v2;
  sub_1000A3190();
  v27 = (v0 + *(v26 + 128));
  *v27 = v10;
  v27[1] = v8;
  v27[2] = v6;
  v27[3] = v4;
  sub_1000A3190();
  *(v0 + *(v28 + 136)) = v8;

  sub_100053050();
}

uint64_t sub_100105A10()
{
  v1 = qword_1001A57E0;
  v2 = type metadata accessor for SupportFlowIdentifier();
  sub_10000AF7C(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1000A3190();
  v5 = (v0 + *(v4 + 128));
  v6 = v5[1];
  v7 = v5[2];
  v8 = v5[3];

  v9 = sub_100077FE8();
  sub_1000C6A08(v9);
  sub_1000A3190();
  v11 = *(v0 + *(v10 + 136));

  sub_1000A3190();
  sub_100114C08(*(v12 + 152));
  sub_1000A3190();
  sub_100114C08(*(v13 + 160));
  sub_1000A3190();
  sub_100114C08(*(v14 + 168));
  sub_1000A3190();
  v16 = *(v0 + *(v15 + 176));

  sub_1000A3190();
  sub_10003F68C(*(v0 + *(v17 + 184)));
  sub_1000A3190();
  v19 = *(v0 + *(v18 + 192));

  sub_1000A3190();
  v21 = *(v20 + 200);
  v22 = type metadata accessor for ObservationRegistrar();
  sub_10000AF7C(v22);
  (*(v23 + 8))(v0 + v21);
  return v0;
}

uint64_t sub_100105B78()
{
  v1 = qword_1001A57E0;
  v2 = type metadata accessor for SupportFlowIdentifier();
  sub_10000AF7C(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1000A3190();
  v5 = (v0 + *(v4 + 128));
  v6 = v5[1];
  v7 = v5[2];
  v8 = v5[3];

  v9 = sub_100077FE8();
  sub_1000C6A08(v9);
  sub_1000A3190();
  v11 = *(v0 + *(v10 + 136));

  sub_1000A3190();
  sub_100114C08(*(v12 + 152));
  sub_1000A3190();
  sub_100114C08(*(v13 + 160));
  sub_1000A3190();
  sub_100114C08(*(v14 + 168));
  sub_1000A3190();
  v16 = *(v0 + *(v15 + 176));

  sub_1000A3190();
  v18 = *(v0 + *(v17 + 192));

  sub_1000A3190();
  v20 = *(v19 + 200);
  v21 = type metadata accessor for ObservationRegistrar();
  sub_10000AF7C(v21);
  (*(v22 + 8))(v0 + v20);
  return v0;
}

void sub_100105CC8()
{
  sub_100096D74();
  sub_100025A50();
  if (sub_100114958(*(v1 + 160)))
  {
    sub_100105684();
    __chkstk_darwin(v2);
    sub_100025A64();
    *(v0 - 32) = &type metadata for ForgotPasswordStepProvider;
    v3 = sub_100025A88();
    *(v0 - 24) = sub_100003768(v3, v4);
    *(v0 - 16) = sub_10000B138();
    sub_100114898();
    *(v0 - 8) = sub_100114B2C(v5);
    swift_getKeyPath();
    sub_100025A3C();
    __chkstk_darwin(v6);
    sub_100025A0C();
    sub_100105690();
    sub_100109068();

    sub_10010569C();
    sub_100053050();
  }

  else
  {
    sub_100105674();
    sub_100053050();
  }
}

void sub_100105E00()
{
  sub_100096D74();
  sub_100025A50();
  if (sub_100114958(*(v1 + 160)))
  {
    sub_100105684();
    __chkstk_darwin(v2);
    sub_100025A64();
    *(v0 - 32) = &type metadata for MailStepProvider;
    v3 = sub_100025A88();
    *(v0 - 24) = sub_100003768(v3, v4);
    *(v0 - 16) = sub_1000257D8();
    sub_100114898();
    *(v0 - 8) = sub_100114B2C(v5);
    swift_getKeyPath();
    sub_100025A3C();
    __chkstk_darwin(v6);
    sub_100025A0C();
    sub_100105690();
    sub_100109068();

    sub_10010569C();
    sub_100053050();
  }

  else
  {
    sub_100105674();
    sub_100053050();
  }
}

void sub_100105F38()
{
  sub_100096D74();
  sub_100025A50();
  if (sub_100114958(*(v1 + 160)))
  {
    sub_100105684();
    __chkstk_darwin(v2);
    sub_100025A64();
    *(v0 - 32) = &type metadata for CompromisedAccountStepProvider;
    v3 = sub_100025A88();
    *(v0 - 24) = sub_100003768(v3, v4);
    *(v0 - 16) = sub_100010248();
    sub_100114898();
    *(v0 - 8) = sub_100114B2C(v5);
    swift_getKeyPath();
    sub_100025A3C();
    __chkstk_darwin(v6);
    sub_100025A0C();
    sub_100105690();
    sub_100109068();

    sub_10010569C();
    sub_100053050();
  }

  else
  {
    sub_100105674();
    sub_100053050();
  }
}

void sub_100106070()
{
  sub_100096D74();
  sub_100025A50();
  if (sub_100114958(*(v1 + 160)))
  {
    sub_100105684();
    __chkstk_darwin(v2);
    sub_100025A64();
    *(v0 - 32) = &type metadata for WiFiStepProvider;
    v3 = sub_100025A88();
    *(v0 - 24) = sub_100003768(v3, v4);
    *(v0 - 16) = sub_10000737C();
    sub_100114898();
    *(v0 - 8) = sub_100114B2C(v5);
    swift_getKeyPath();
    sub_100025A3C();
    __chkstk_darwin(v6);
    sub_100025A0C();
    sub_100105690();
    sub_100109068();

    sub_10010569C();
    sub_100053050();
  }

  else
  {
    sub_100105674();
    sub_100053050();
  }
}

void sub_1001061A8()
{
  sub_100096D74();
  sub_100025A50();
  if (sub_100114958(*(v1 + 160)))
  {
    sub_100105684();
    __chkstk_darwin(v2);
    sub_100025A64();
    *(v0 - 32) = &type metadata for BatteryStepProvider;
    v3 = sub_100025A88();
    *(v0 - 24) = sub_100003768(v3, v4);
    *(v0 - 16) = sub_10006EFF8();
    sub_100114898();
    *(v0 - 8) = sub_100114B2C(v5);
    swift_getKeyPath();
    sub_100025A3C();
    __chkstk_darwin(v6);
    sub_100025A0C();
    sub_100105690();
    sub_100109068();

    sub_10010569C();
    sub_100053050();
  }

  else
  {
    sub_100105674();
    sub_100053050();
  }
}

void sub_1001062E0()
{
  sub_100096D74();
  sub_100025A50();
  if (sub_100114958(*(v1 + 160)))
  {
    sub_100105684();
    __chkstk_darwin(v2);
    sub_100025A64();
    *(v0 - 32) = &type metadata for ScreenRepairStepProvider;
    v3 = sub_100025A88();
    *(v0 - 24) = sub_100003768(v3, v4);
    *(v0 - 16) = sub_1001145B4();
    sub_100114898();
    *(v0 - 8) = sub_100114B2C(v5);
    swift_getKeyPath();
    sub_100025A3C();
    __chkstk_darwin(v6);
    sub_100025A0C();
    sub_100105690();
    sub_100109068();

    sub_10010569C();
    sub_100053050();
  }

  else
  {
    sub_100105674();
    sub_100053050();
  }
}

void sub_100106418()
{
  sub_100096D74();
  sub_100025A50();
  if (sub_100114958(*(v1 + 160)))
  {
    sub_100105684();
    __chkstk_darwin(v2);
    sub_100025A64();
    *(v0 - 32) = &type metadata for DisabledAccountStepProvider;
    v3 = sub_100025A88();
    *(v0 - 24) = sub_100003768(v3, v4);
    *(v0 - 16) = sub_1000219CC();
    sub_100114898();
    *(v0 - 8) = sub_100114B2C(v5);
    swift_getKeyPath();
    sub_100025A3C();
    __chkstk_darwin(v6);
    sub_100025A0C();
    sub_100105690();
    sub_100109068();

    sub_10010569C();
    sub_100053050();
  }

  else
  {
    sub_100105674();
    sub_100053050();
  }
}

void sub_100106550()
{
  sub_100096D74();
  sub_100025A50();
  if (sub_100114958(*(v1 + 160)))
  {
    sub_100105684();
    __chkstk_darwin(v2);
    sub_100025A64();
    *(v0 - 32) = &type metadata for PurchasesStepProvider;
    v3 = sub_100025A88();
    *(v0 - 24) = sub_100003768(v3, v4);
    *(v0 - 16) = sub_1000258DC();
    sub_100114898();
    *(v0 - 8) = sub_100114B2C(v5);
    swift_getKeyPath();
    sub_100025A3C();
    __chkstk_darwin(v6);
    sub_100025A0C();
    sub_100105690();
    sub_100109068();

    sub_10010569C();
    sub_100053050();
  }

  else
  {
    sub_100105674();
    sub_100053050();
  }
}

void sub_100106688()
{
  sub_100096D74();
  sub_100025A50();
  if (sub_100114958(*(v1 + 160)))
  {
    sub_100105684();
    __chkstk_darwin(v2);
    sub_100025A64();
    *(v0 - 32) = &type metadata for MessagesStepProvider;
    v3 = sub_100025A88();
    *(v0 - 24) = sub_100003768(v3, v4);
    *(v0 - 16) = sub_10001362C();
    sub_100114898();
    *(v0 - 8) = sub_100114B2C(v5);
    swift_getKeyPath();
    sub_100025A3C();
    __chkstk_darwin(v6);
    sub_100025A0C();
    sub_100105690();
    sub_100109068();

    sub_10010569C();
    sub_100053050();
  }

  else
  {
    sub_100105674();
    sub_100053050();
  }
}

uint64_t sub_1001067C0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 160));
  v6 = sub_100109764(*v5, v5[1], a1, a2);
  if (v6)
  {
    __chkstk_darwin(v6);
    sub_100003768(&qword_1001933D8, &qword_100131D90);
    sub_100004C8C();
    sub_10000AAEC(&qword_1001933E0, &qword_1001933D8, &qword_100131D90);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100109068();
  }

  else
  {
    *v5 = a1;
    v5[1] = a2;
  }
}

void sub_100106978()
{
  sub_100096D74();
  sub_100025A50();
  if (sub_100114958(*(v1 + 160)))
  {
    sub_100105684();
    __chkstk_darwin(v2);
    sub_100025A64();
    *(v0 - 32) = &type metadata for TrustedPhoneNumberStepProvider;
    v3 = sub_100025A88();
    *(v0 - 24) = sub_100003768(v3, v4);
    *(v0 - 16) = sub_1000BC544();
    sub_100114898();
    *(v0 - 8) = sub_100114B2C(v5);
    swift_getKeyPath();
    sub_100025A3C();
    __chkstk_darwin(v6);
    sub_100025A0C();
    sub_100105690();
    sub_100109068();

    sub_10010569C();
    sub_100053050();
  }

  else
  {
    sub_100105674();
    sub_100053050();
  }
}

uint64_t sub_100106AB0()
{
  v1 = v0;
  sub_100003768(&qword_100192F30, &unk_100131CC0);
  sub_10000B138();
  sub_10000AAEC(&qword_100192F38, &qword_100192F30, &unk_100131CC0);
  swift_getKeyPath();
  v2 = *(*v0 + 200);
  sub_10000AAEC(&qword_100193438, &qword_100193440, &qword_100131EF8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(*v1 + 184);
  swift_beginAccess();
  return *(v1 + v3);
}

uint64_t sub_100106BE4()
{
  v1 = v0;
  sub_100003768(&qword_10018A100, &unk_100123FA0);
  sub_1000257D8();
  sub_10000AAEC(&qword_10018A110, &qword_10018A100, &unk_100123FA0);
  swift_getKeyPath();
  v2 = *(*v0 + 200);
  sub_10000AAEC(&qword_10018A118, &qword_10018A120, &unk_100123FB0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(*v1 + 184);
  swift_beginAccess();
  return *(v1 + v3);
}

uint64_t sub_100106D18()
{
  v1 = v0;
  sub_100003768(&qword_1001933D8, &qword_100131D90);
  sub_100004C8C();
  sub_10000AAEC(&qword_1001933E0, &qword_1001933D8, &qword_100131D90);
  swift_getKeyPath();
  v2 = *(*v0 + 200);
  sub_10000AAEC(&qword_1001933E8, &qword_1001933F0, &qword_100131D98);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(*v1 + 184);
  swift_beginAccess();
  return *(v1 + v3);
}

uint64_t sub_100106E4C()
{
  v1 = v0;
  sub_100003768(&qword_10018A148, &qword_100131EE0);
  sub_10006EFF8();
  sub_10000AAEC(&qword_10018A158, &qword_10018A148, &qword_100131EE0);
  swift_getKeyPath();
  v2 = *(*v0 + 200);
  sub_10000AAEC(&qword_10018D1E0, &qword_10018D1E8, &qword_1001287E0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(*v1 + 184);
  swift_beginAccess();
  return *(v1 + v3);
}

unint64_t sub_100106F80()
{
  v1 = v0;
  sub_100003768(&qword_10018A128, &unk_100131CD0);
  sub_10001362C();
  sub_10000AAEC(&qword_10018A130, &qword_10018A128, &unk_100131CD0);
  swift_getKeyPath();
  v2 = *(*v0 + 200);
  sub_10000AAEC(&qword_10018A138, &qword_10018A140, &unk_100123FC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(*v1 + 184);
  swift_beginAccess();
  v4 = *(v1 + v3);
  sub_10003F548(v4);
  return v4;
}

uint64_t sub_1001070C0()
{
  v1 = v0;
  sub_100003768(&qword_10018A170, &unk_100127780);
  sub_10000737C();
  sub_10000AAEC(&qword_10018A178, &qword_10018A170, &unk_100127780);
  swift_getKeyPath();
  v2 = *(*v0 + 200);
  sub_10000AAEC(&qword_10018A180, &qword_10018A188, &unk_100123FE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(*v1 + 184);
  swift_beginAccess();
  return *(v1 + v3);
}

uint64_t sub_1001071F4()
{
  v1 = v0;
  sub_100003768(&qword_100192F10, &unk_100131CB0);
  sub_100010248();
  sub_10000AAEC(&qword_100192F18, &qword_100192F10, &unk_100131CB0);
  swift_getKeyPath();
  v2 = *(*v0 + 200);
  sub_10000AAEC(&qword_1001934A0, &qword_1001934A8, &unk_100131FC8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(*v1 + 184);
  swift_beginAccess();
  return *(v1 + v3);
}

uint64_t sub_100107328()
{
  v1 = v0;
  sub_100003768(&qword_10018A148, &qword_100131EE0);
  sub_1001145B4();
  sub_10000AAEC(&qword_10018A158, &qword_10018A148, &qword_100131EE0);
  swift_getKeyPath();
  v2 = *(*v0 + 200);
  sub_10000AAEC(&qword_1001934C8, &qword_1001934D0, &unk_100131FF0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(*v1 + 184);
  swift_beginAccess();
  return *(v1 + v3);
}

uint64_t sub_10010745C()
{
  v1 = v0;
  sub_100003768(&qword_100192F20, &unk_100131FE0);
  sub_1000219CC();
  sub_10000AAEC(&qword_100192F28, &qword_100192F20, &unk_100131FE0);
  swift_getKeyPath();
  v2 = *(*v0 + 200);
  sub_10000AAEC(&qword_1001934B0, &qword_1001934B8, &qword_100131FD8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(*v1 + 184);
  swift_beginAccess();
  return *(v1 + v3);
}

uint64_t sub_100107590()
{
  v1 = v0;
  sub_100003768(&qword_10018A148, &qword_100131EE0);
  sub_1000258DC();
  sub_10000AAEC(&qword_10018A158, &qword_10018A148, &qword_100131EE0);
  swift_getKeyPath();
  v2 = *(*v0 + 200);
  sub_10000AAEC(&qword_10018A160, &qword_10018A168, &unk_100123FD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(*v1 + 184);
  swift_beginAccess();
  return *(v1 + v3);
}

uint64_t sub_1001076C4()
{
  v1 = v0;
  sub_100003768(&qword_10018A148, &qword_100131EE0);
  sub_1000BC544();
  sub_10000AAEC(&qword_10018A158, &qword_10018A148, &qword_100131EE0);
  swift_getKeyPath();
  v2 = *(*v0 + 200);
  sub_10000AAEC(&qword_100193490, &qword_100193498, &qword_100131FC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(*v1 + 184);
  swift_beginAccess();
  return *(v1 + v3);
}

uint64_t sub_1001077F8(uint64_t a1)
{
  sub_100114944(a1);
  v5 = *(v4 + 184);
  sub_1001149A4();
  v6 = sub_100114A98();
  if (sub_1001092A0(v6, v7))
  {
    sub_1001149F0();
    __chkstk_darwin(v8);
    sub_100114994();
    *(v3 - 32) = &type metadata for ForgotPasswordStepProvider;
    *(v3 - 24) = sub_100114B14();
    *(v3 - 16) = sub_10000B138();
    sub_100114898();
    *(v3 - 8) = sub_100114B44(v9);
    swift_getKeyPath();
    sub_100114930();
    __chkstk_darwin(v10);
    sub_100114900();
    sub_100105690();
    sub_100109068();
  }

  else
  {
    *(v2 + v5) = v1;
    return sub_10010AABC();
  }
}

uint64_t sub_100107914(uint64_t a1)
{
  sub_100114944(a1);
  v5 = *(v4 + 184);
  sub_1001149A4();
  v6 = sub_100114A98();
  if (sub_1001092E8(v6, v7))
  {
    sub_1001149F0();
    __chkstk_darwin(v8);
    sub_100114994();
    *(v3 - 32) = &type metadata for MailStepProvider;
    *(v3 - 24) = sub_100114B14();
    *(v3 - 16) = sub_1000257D8();
    sub_100114898();
    *(v3 - 8) = sub_100114B44(v9);
    swift_getKeyPath();
    sub_100114930();
    __chkstk_darwin(v10);
    sub_100114900();
    sub_100105690();
    sub_100109068();
  }

  else
  {
    *(v2 + v5) = v1;
    return sub_10010AC5C();
  }
}

uint64_t sub_100107A30(char a1)
{
  v3 = *(*v1 + 184);
  swift_beginAccess();
  v4 = sub_100109394(*(v1 + v3), a1);
  if (v4)
  {
    __chkstk_darwin(v4);
    sub_100003768(&qword_1001933D8, &qword_100131D90);
    sub_100004C8C();
    sub_10000AAEC(&qword_1001933E0, &qword_1001933D8, &qword_100131D90);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100109068();
  }

  else
  {
    *(v1 + v3) = a1;
    return sub_10010AD3C();
  }
}

uint64_t sub_100107BB8(uint64_t a1)
{
  sub_100114944(a1);
  v5 = *(v4 + 184);
  sub_1001149A4();
  v6 = sub_100114A98();
  if (sub_100109440(v6, v7))
  {
    sub_1001149F0();
    __chkstk_darwin(v8);
    sub_100114994();
    *(v3 - 32) = &type metadata for BatteryStepProvider;
    *(v3 - 24) = sub_100114B14();
    *(v3 - 16) = sub_10006EFF8();
    sub_100114898();
    *(v3 - 8) = sub_100114B44(v9);
    swift_getKeyPath();
    sub_100114930();
    __chkstk_darwin(v10);
    sub_100114900();
    sub_100105690();
    sub_100109068();
  }

  else
  {
    *(v2 + v5) = v1;
    return sub_10010AE1C();
  }
}

void sub_100107CD4()
{
  sub_100096D74();
  v2 = v1;
  v14 = v1;
  sub_1000A3190();
  v4 = *(v3 + 184);
  swift_beginAccess();
  v5 = *(v0 + v4);
  sub_10003F548(v5);
  v6 = sub_100096908();
  v8 = sub_100109488(v6, v7);
  v9 = sub_10003F68C(v5);
  if (v8)
  {
    __chkstk_darwin(v9);
    sub_100003768(&qword_10018A128, &unk_100131CD0);
    sub_10001362C();
    sub_100114898();
    sub_10000AAEC(v10, &qword_10018A128, &unk_100131CD0);
    swift_getKeyPath();
    sub_1001149F0();
    __chkstk_darwin(v11);
    sub_100096768();
    *(v12 - 16) = v0;
    *(v12 - 8) = &v14;
    sub_100105690();
    sub_100109068();

    sub_10003F68C(v2);
  }

  else
  {
    v13 = *(v0 + v4);
    *(v0 + v4) = v2;
    sub_10003F548(v2);
    sub_10003F68C(v13);
    sub_10010AF94();
    sub_10003F68C(v2);
  }

  sub_100053050();
}

uint64_t sub_100107E70(uint64_t a1)
{
  sub_100114944(a1);
  v5 = *(v4 + 184);
  sub_1001149A4();
  v6 = sub_100114A98();
  if (sub_1001094CC(v6, v7))
  {
    sub_1001149F0();
    __chkstk_darwin(v8);
    sub_100114994();
    *(v3 - 32) = &type metadata for WiFiStepProvider;
    *(v3 - 24) = sub_100114B14();
    *(v3 - 16) = sub_10000737C();
    sub_100114898();
    *(v3 - 8) = sub_100114B44(v9);
    swift_getKeyPath();
    sub_100114930();
    __chkstk_darwin(v10);
    sub_100114900();
    sub_100105690();
    sub_100109068();
  }

  else
  {
    *(v2 + v5) = v1;
    return sub_10010B074();
  }
}

uint64_t sub_100107F8C(uint64_t a1)
{
  sub_100114944(a1);
  v5 = *(v4 + 184);
  sub_1001149A4();
  v6 = sub_100114A98();
  if (sub_10010957C(v6, v7))
  {
    sub_1001149F0();
    __chkstk_darwin(v8);
    sub_100114994();
    *(v3 - 32) = &type metadata for CompromisedAccountStepProvider;
    *(v3 - 24) = sub_100114B14();
    *(v3 - 16) = sub_100010248();
    sub_100114898();
    *(v3 - 8) = sub_100114B44(v9);
    swift_getKeyPath();
    sub_100114930();
    __chkstk_darwin(v10);
    sub_100114900();
    sub_100105690();
    sub_100109068();
  }

  else
  {
    *(v2 + v5) = v1;
    return sub_10010B154();
  }
}

uint64_t sub_1001080A8(char a1)
{
  v3 = a1 & 1;
  sub_1000A3190();
  v5 = *(v4 + 184);
  sub_1001149A4();
  if (*(v1 + v5) == v3)
  {
    *(v1 + v5) = v3;
    return sub_10010B2C8();
  }

  else
  {
    sub_1001149F0();
    __chkstk_darwin(v6);
    sub_100114994();
    *(v2 - 32) = &type metadata for ScreenRepairStepProvider;
    *(v2 - 24) = sub_100114B14();
    *(v2 - 16) = sub_1001145B4();
    sub_100114898();
    *(v2 - 8) = sub_100114B44(v7);
    swift_getKeyPath();
    sub_100114930();
    __chkstk_darwin(v8);
    sub_100114900();
    sub_100105690();
    sub_100109068();
  }
}

uint64_t sub_1001081CC(uint64_t a1)
{
  sub_100114944(a1);
  v5 = *(v4 + 184);
  sub_1001149A4();
  v6 = sub_100114A98();
  if (sub_1001095C4(v6, v7))
  {
    sub_1001149F0();
    __chkstk_darwin(v8);
    sub_100114994();
    *(v3 - 32) = &type metadata for DisabledAccountStepProvider;
    *(v3 - 24) = sub_100114B14();
    *(v3 - 16) = sub_1000219CC();
    sub_100114898();
    *(v3 - 8) = sub_100114B44(v9);
    swift_getKeyPath();
    sub_100114930();
    __chkstk_darwin(v10);
    sub_100114900();
    sub_100105690();
    sub_100109068();
  }

  else
  {
    *(v2 + v5) = v1;
    return sub_10010B39C();
  }
}

uint64_t sub_1001082E8(uint64_t a1)
{
  sub_100114944(a1);
  v5 = *(v4 + 184);
  sub_1001149A4();
  v6 = sub_100114A98();
  if (sub_100109670(v6, v7))
  {
    sub_1001149F0();
    __chkstk_darwin(v8);
    sub_100114994();
    *(v3 - 32) = &type metadata for PurchasesStepProvider;
    *(v3 - 24) = sub_100114B14();
    *(v3 - 16) = sub_1000258DC();
    sub_100114898();
    *(v3 - 8) = sub_100114B44(v9);
    swift_getKeyPath();
    sub_100114930();
    __chkstk_darwin(v10);
    sub_100114900();
    sub_100105690();
    sub_100109068();
  }

  else
  {
    *(v2 + v5) = v1;
    return sub_10010B47C();
  }
}

uint64_t sub_100108404(uint64_t a1)
{
  sub_100114944(a1);
  v5 = *(v4 + 184);
  sub_1001149A4();
  v6 = sub_100114A98();
  if (sub_10010971C(v6, v7))
  {
    sub_1001149F0();
    __chkstk_darwin(v8);
    sub_100114994();
    *(v3 - 32) = &type metadata for TrustedPhoneNumberStepProvider;
    *(v3 - 24) = sub_100114B14();
    *(v3 - 16) = sub_1000BC544();
    sub_100114898();
    *(v3 - 8) = sub_100114B44(v9);
    swift_getKeyPath();
    sub_100114930();
    __chkstk_darwin(v10);
    sub_100114900();
    sub_100105690();
    sub_100109068();
  }

  else
  {
    *(v2 + v5) = v1;
    return sub_10010B55C();
  }
}

uint64_t sub_100108520()
{
  sub_100003768(&qword_100192F30, &unk_100131CC0);
  sub_10000B138();
  sub_10000AAEC(&qword_100192F38, &qword_100192F30, &unk_100131CC0);
  swift_getKeyPath();
  sub_100109068();
}

uint64_t sub_100108610()
{
  sub_100114B14();
  sub_100057DB0();
  sub_100114898();
  sub_100114B44(v0);
  swift_getKeyPath();
  sub_100114B7C();
  sub_100109068();
}

uint64_t sub_1001086D8()
{
  sub_100003768(&qword_10018A100, &unk_100123FA0);
  sub_1000257D8();
  sub_10000AAEC(&qword_10018A110, &qword_10018A100, &unk_100123FA0);
  swift_getKeyPath();
  sub_100109068();
}

uint64_t sub_1001087C8()
{
  sub_100003768(&qword_1001933D8, &qword_100131D90);
  sub_100004C8C();
  sub_10000AAEC(&qword_1001933E0, &qword_1001933D8, &qword_100131D90);
  swift_getKeyPath();
  sub_100109068();
}

uint64_t sub_1001088B8()
{
  sub_100003768(&qword_10018A148, &qword_100131EE0);
  sub_10006EFF8();
  sub_10000AAEC(&qword_10018A158, &qword_10018A148, &qword_100131EE0);
  swift_getKeyPath();
  sub_100109068();
}

uint64_t sub_1001089A8()
{
  sub_100003768(&qword_10018A128, &unk_100131CD0);
  sub_10001362C();
  sub_10000AAEC(&qword_10018A130, &qword_10018A128, &unk_100131CD0);
  swift_getKeyPath();
  sub_100109068();
}

uint64_t sub_100108A98()
{
  sub_100003768(&qword_10018A170, &unk_100127780);
  sub_10000737C();
  sub_10000AAEC(&qword_10018A178, &qword_10018A170, &unk_100127780);
  swift_getKeyPath();
  sub_100109068();
}

uint64_t sub_100108B88()
{
  sub_100003768(&qword_100192F10, &unk_100131CB0);
  sub_100010248();
  sub_10000AAEC(&qword_100192F18, &qword_100192F10, &unk_100131CB0);
  swift_getKeyPath();
  sub_100109068();
}

uint64_t sub_100108C78()
{
  sub_100003768(&qword_10018A148, &qword_100131EE0);
  sub_1001145B4();
  sub_10000AAEC(&qword_10018A158, &qword_10018A148, &qword_100131EE0);
  swift_getKeyPath();
  sub_100109068();
}

uint64_t sub_100108D68()
{
  sub_100003768(&qword_100192F20, &unk_100131FE0);
  sub_1000219CC();
  sub_10000AAEC(&qword_100192F28, &qword_100192F20, &unk_100131FE0);
  swift_getKeyPath();
  sub_100109068();
}

uint64_t sub_100108E58()
{
  sub_100003768(&qword_10018A148, &qword_100131EE0);
  sub_1000258DC();
  sub_10000AAEC(&qword_10018A158, &qword_10018A148, &qword_100131EE0);
  swift_getKeyPath();
  sub_100109068();
}

uint64_t sub_100108F48()
{
  sub_100003768(&qword_10018A148, &qword_100131EE0);
  sub_1000BC544();
  sub_10000AAEC(&qword_10018A158, &qword_10018A148, &qword_100131EE0);
  swift_getKeyPath();
  sub_100109068();
}

uint64_t sub_100109068()
{
  sub_100114BAC();
  sub_1000A3190();
  v1 = *(v0 + 200);
  sub_10000AAEC(v2, v3, v4);
  return sub_100114AC8();
}

BOOL sub_1001092A0(char a1, char a2)
{
  v2 = a1 == 4;
  if (a2 != 4)
  {
    v2 = 0;
  }

  if (a1 != 4 && a2 != 4)
  {
    v2 = sub_1000E39D8();
  }

  return (v2 & 1) == 0;
}

BOOL sub_1001092E8(char a1, char a2)
{
  v2 = a2 == 5 && a1 == 5;
  if (a1 != 5 && a2 != 5)
  {
    v5 = sub_1000260C8(a1);
    v7 = v6;
    if (v5 == sub_1000260C8(a2) && v7 == v8)
    {
      v2 = 1;
    }

    else
    {
      v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return (v2 & 1) == 0;
}

BOOL sub_100109394(char a1, char a2)
{
  v2 = a2 == 15 && a1 == 15;
  if (a1 != 15 && a2 != 15)
  {
    v5 = sub_10009F288(a1);
    v7 = v6;
    if (v5 == sub_10009F288(a2) && v7 == v8)
    {
      v2 = 1;
    }

    else
    {
      v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return (v2 & 1) == 0;
}

BOOL sub_100109440(char a1, char a2)
{
  v2 = a1 == 4;
  if (a2 != 4)
  {
    v2 = 0;
  }

  if (a1 != 4 && a2 != 4)
  {
    v2 = sub_1000E4628(a1, a2);
  }

  return (v2 & 1) == 0;
}

BOOL sub_100109488(uint64_t a1, unint64_t a2)
{
  v3 = a2 == 10 && a1 == 10;
  if (a1 != 10 && a2 != 10)
  {
    v3 = sub_100058B18(a1, a2);
  }

  return (v3 & 1) == 0;
}

BOOL sub_1001094CC(char a1, char a2)
{
  v2 = a2 == 9 && a1 == 9;
  if (a1 != 9 && a2 != 9)
  {
    v5 = sub_10001A768(a1);
    v7 = v6;
    if (v5 == sub_10001A768(a2) && v7 == v8)
    {
      v2 = 1;
    }

    else
    {
      v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return (v2 & 1) == 0;
}

BOOL sub_10010957C(unsigned __int8 a1, char a2)
{
  v2 = a1 == 4;
  if (a2 != 4)
  {
    v2 = 0;
  }

  if (a1 != 4 && a2 != 4)
  {
    v2 = sub_1000E34FC(a1, a2);
  }

  return (v2 & 1) == 0;
}

BOOL sub_1001095C4(char a1, char a2)
{
  v2 = a2 == 7 && a1 == 7;
  if (a1 != 7 && a2 != 7)
  {
    v5 = sub_10001CEE4(a1);
    v7 = v6;
    if (v5 == sub_10001CEE4(a2) && v7 == v8)
    {
      v2 = 1;
    }

    else
    {
      v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return (v2 & 1) == 0;
}

BOOL sub_100109670(char a1, char a2)
{
  v2 = a2 == 11 && a1 == 11;
  if (a1 != 11 && a2 != 11)
  {
    sub_1000D3CC0(a1);
    v6 = v5;
    v8 = v7;
    sub_1000D3CC0(a2);
    if (v6 == v10 && v8 == v9)
    {
      v2 = 1;
    }

    else
    {
      v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return (v2 & 1) == 0;
}

BOOL sub_10010971C(unsigned __int8 a1, char a2)
{
  v2 = a1 == 3;
  if (a2 != 3)
  {
    v2 = 0;
  }

  if (a1 != 3 && a2 != 3)
  {
    v2 = sub_1000E3424(a1, a2);
  }

  return (v2 & 1) == 0;
}

BOOL sub_100109764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (a2 | a4) == 0;
  if (a2 && a4)
  {
    if (a1 == a3 && a2 == a4)
    {
      v5 = 1;
    }

    else
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return (v5 & 1) == 0;
}

uint64_t sub_1001097E4()
{
  sub_100114BAC();
  v4 = sub_10011351C(v3);
  v6 = v5;
  v8 = v7;
  v9 = sub_10011357C(v2);
  v11 = v10;
  v13 = v12;
  v14 = sub_1001137C8(v4, v6, v8 & 1, v9, v10, v12 & 1);
  sub_1001140AC(v9, v11, v13 & 1);
  v15 = sub_100114B9C();
  if (v14)
  {
    sub_1001140AC(v15, v16, v17);
    return 0;
  }

  else
  {
    sub_1001135D0(v15, v16, v17, v2, v1, v0);
    v18 = v19;
    v20 = sub_100114B9C();
    sub_1001140AC(v20, v21, v22);
  }

  return v18;
}

uint64_t sub_1001098CC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = a2(0);
  v9 = v8;
  if (v7)
  {
    sub_1001147C4(a1 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)), a4, a3);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return sub_100003CE8(a4, v10, 1, v9);
}

id *sub_100109984(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1000D127C(0, v2, 0);
  v3 = (a1 + 32);
  v4 = _swiftEmptyArrayStorage;
  if (v2)
  {
    while (1)
    {
      v11 = *v3;

      sub_100114B14();
      v5 = sub_100025A88();
      sub_100003768(v5, v6);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        sub_1000D127C((v7 > 1), v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = (v8 + 1);
      _swiftEmptyArrayStorage[v8 + 4] = v10;
      ++v3;
      if (!--v2)
      {
        return v4;
      }
    }

    return 0;
  }

  return v4;
}

id *sub_100109ACC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v11 = _swiftEmptyArrayStorage;
  v6 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  v7 = a1 + 32;
  if (!v6)
  {
    return v11;
  }

  while (1)
  {
    sub_10001E894(v7, v10);
    sub_100025778(0, a2, a3);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v8 = v11[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v7 += 32;
    if (!--v6)
    {
      return v11;
    }
  }

  return 0;
}

uint64_t sub_100109BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  sub_100113334(&qword_100193420, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v5 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100109CC4;

  return dispatch thunk of AsyncIteratorProtocol.next()(a1);
}

uint64_t sub_100109CC4()
{
  sub_10003DCD8();
  sub_10004622C();
  v3 = v2;
  sub_100052FD4();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *(v5 + 24);
  v8 = *v1;
  sub_10000870C();
  *v9 = v8;
  v3[6] = v0;

  if (v0)
  {
    if (v7)
    {
      v10 = v3[3];
      v11 = v3[4];
      swift_getObjectType();
      v12 = dispatch thunk of Actor.unownedExecutor.getter();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    v18 = sub_100109E54;
  }

  else
  {
    if (v7)
    {
      v15 = v3[3];
      v16 = v3[4];
      swift_getObjectType();
      v12 = dispatch thunk of Actor.unownedExecutor.getter();
      v14 = v17;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    v18 = sub_100109E30;
  }

  return _swift_task_switch(v18, v12, v14);
}

uint64_t sub_100109E54()
{
  sub_100025A94();
  *(v0 + 16) = *(v0 + 48);
  sub_100003768(&qword_100189398, &unk_100122910);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  sub_10000875C();

  return v1();
}

uint64_t sub_100109F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27[0] = a6;
  v7 = v6;
  v11 = sub_100003768(&qword_1001888B0, &qword_1001228F0);
  sub_10000ED84(v11);
  v13 = *(v12 + 64);
  sub_10000ED78();
  __chkstk_darwin(v14);
  v16 = v27 - v15;
  sub_10000EC9C(a1, v27 - v15, &qword_1001888B0, &qword_1001228F0);
  v17 = type metadata accessor for TaskPriority();
  if (sub_10000E5F0(v16, 1, v17) == 1)
  {
    sub_10000ABCC(v16, &qword_1001888B0, &qword_1001228F0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v17 - 8) + 8))(v16, v17);
  }

  if (*(a3 + 16))
  {
    v18 = *(a3 + 24);
    v19 = *(a3 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v20 = dispatch thunk of Actor.unownedExecutor.getter();
    v22 = v21;
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v23 = *v7;
  sub_100096BD0();
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  *(v24 + 24) = a3;
  v25 = (v22 | v20);
  if (v22 | v20)
  {
    v28[0] = 0;
    v28[1] = 0;
    v25 = v28;
    v28[2] = v20;
    v28[3] = v22;
  }

  v27[1] = 1;
  v27[2] = v25;
  v27[3] = v23;
  swift_task_create();
}

BOOL sub_10010A0FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_10010A128(int a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_10010A154()
{
  sub_100025A94();
  v1[8] = v0;
  v2 = sub_100003768(&qword_100191860, &qword_100131D50);
  sub_10000ED84(v2);
  v4 = *(v3 + 64);
  v1[9] = sub_100052FA4();
  v5 = type metadata accessor for AirPodsDeviceInfo();
  v1[10] = v5;
  sub_10000ED84(v5);
  v7 = *(v6 + 64);
  v1[11] = sub_100052FA4();
  v8 = type metadata accessor for ContinuousClock();
  v1[12] = v8;
  sub_100052F6C(v8);
  v1[13] = v9;
  v11 = *(v10 + 64);
  v1[14] = sub_100052FA4();
  type metadata accessor for MainActor();
  v1[15] = sub_10006F3C8();
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100096AF8();
  v1[16] = v12;
  v1[17] = v13;
  v14 = sub_100096AEC();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_10010A270()
{
  sub_10003DCD8();
  if (qword_100188360 != -1)
  {
    sub_100114A1C();
  }

  if (qword_1001A5950)
  {
    swift_getKeyPath();
    v1 = sub_1000FBFA4();

    if (v1)
    {
      v2 = *(v0 + 112);
      static Bool.disableMinimumLoadTime.getter();
      static Duration.seconds(_:)();
      static Clock<>.continuous.getter();
      v3 = sub_10004F530(&dword_100131E10);
      *(v0 + 144) = v3;
      *v3 = v0;
      v3[1] = sub_10010A544;
      v4 = *(v0 + 112);
      v5 = sub_100077FE8();

      return v27(v5);
    }
  }

  v7 = *(v0 + 80);
  v8 = *(v0 + 64);
  sub_10010CBFC(*(v0 + 72));
  v9 = sub_100082B98();
  v11 = sub_10000E5F0(v9, v10, v7);
  v12 = *(v0 + 72);
  if (v11 == 1)
  {
    v13 = *(v0 + 120);

    sub_10000ABCC(v12, &qword_100191860, &qword_100131D50);
LABEL_12:
    v17 = 0;
LABEL_13:
    v18 = *(v0 + 112);
    v19 = *(v0 + 88);
    v20 = *(v0 + 72);

    sub_1000E2A30();

    return v21(v17 & 1);
  }

  v14 = *(v0 + 88);
  sub_1000EAABC(*(v0 + 72), v14);
  v15 = *v14;
  *(v0 + 160) = v15;
  if (sub_10010A128(v15, &off_100176478))
  {
    v16 = *(v0 + 120);
    sub_1000EAB94(*(v0 + 88));

    goto LABEL_12;
  }

  v22 = *(v0 + 64);
  v23 = sub_10010B94C();
  v17 = sub_100082E24(v15, v23);

  if (v17 != 2)
  {
    v26 = *(v0 + 120);
    sub_1000EAB94(*(v0 + 88));

    goto LABEL_13;
  }

  v24 = swift_task_alloc();
  *(v0 + 152) = v24;
  *v24 = v0;
  v24[1] = sub_10010A748;
  v25 = *(v0 + 64);

  return sub_10010FBD4();
}

uint64_t sub_10010A544()
{
  sub_10004F4F8();
  v2 = *v1;
  v3 = *v1;
  sub_10000870C();
  *v4 = v3;
  v5 = v2[18];
  *v4 = *v1;

  v6 = v2[14];
  v7 = v2[13];
  v8 = v2[12];
  if (v0)
  {

    (*(v7 + 8))(v6, v8);
    v9 = v3[16];
    v10 = v3[17];
    v11 = sub_100114854;
  }

  else
  {
    (*(v7 + 8))(v6, v8);
    v9 = v3[16];
    v10 = v3[17];
    v11 = sub_10010A6CC;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_10010A6CC()
{
  sub_100025A94();
  v1 = v0[15];

  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[9];

  sub_1000E2A30();

  return v5(1);
}

uint64_t sub_10010A748()
{
  sub_100025A94();
  sub_100096CD0();
  sub_100052FD4();
  *v3 = v2;
  v4 = *(v0 + 152);
  v5 = *v1;
  sub_100114B6C();
  *v6 = v5;
  *(v8 + 164) = v7;

  sub_100096D54();
  v10 = *(v9 + 136);
  v11 = *(v0 + 128);

  return _swift_task_switch(sub_10010A854, v11, v10);
}

uint64_t sub_10010A854()
{
  v1 = *(v0 + 164);
  v2 = *(v0 + 160);
  v3 = *(v0 + 120);
  v4 = *(v0 + 64);

  swift_getKeyPath();
  *(v0 + 40) = v4;
  sub_1001148C8();
  sub_100113334(v5, v6);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 48) = v4;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v7 = qword_100192F40;
  swift_beginAccess();
  v8 = *(v4 + v7);
  swift_isUniquelyReferenced_nonNull_native();
  v26 = *(v4 + v7);
  sub_100052BC4(v1, v2);
  *(v4 + v7) = v26;
  swift_endAccess();
  *(v0 + 56) = v4;
  swift_getKeyPath();
  sub_100096908();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  if (qword_100188398 != -1)
  {
    sub_1001148E0();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C2D4(v9, qword_1001A59B0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (sub_100114BC8(v11))
  {
    v12 = *(v0 + 164);
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    v13[1] = v12;
    sub_100114B5C();
    _os_log_impl(v14, v15, v16, v17, v18, 8u);
    sub_100008744();
  }

  v19 = *(v0 + 88);

  sub_1000EAB94(v19);
  v20 = *(v0 + 164);
  v21 = *(v0 + 112);
  v22 = *(v0 + 88);
  v23 = *(v0 + 72);

  sub_1000E2A30();

  return v24(v20);
}

uint64_t sub_10010AABC()
{
  v1 = sub_100106AB0();
  if (v1 != 4)
  {
    v8[0] = v1;
    sub_100084C74();
    AnyView.init<A>(_:)();
  }

  sub_100108520();
  result = sub_100106AB0();
  if (result != 4)
  {
    v3 = *(v0 + *(*v0 + 136));
    v4 = sub_10008A620();
    v6 = v5;
    v7 = type metadata accessor for SupportFlowSession();
    if (!sub_10000E5F0(v6, 1, v7))
    {
      SupportFlowSession.currentStepId.setter();
    }

    return (v4)(v8, 0);
  }

  return result;
}

uint64_t sub_10010AC5C()
{
  v1 = sub_100106BE4();
  if (v1 != 5)
  {
    v8[0] = v1;
    sub_10002629C();
    AnyView.init<A>(_:)();
  }

  sub_1001086D8();
  result = sub_100106BE4();
  if (result != 5)
  {
    v3 = *(v0 + *(*v0 + 136));
    v4 = sub_10008A620();
    v6 = v5;
    v7 = type metadata accessor for SupportFlowSession();
    if (!sub_10000E5F0(v6, 1, v7))
    {
      sub_1000E71A4();
      SupportFlowSession.currentStepId.setter();
    }

    return (v4)(v8, 0);
  }

  return result;
}

uint64_t sub_10010AD3C()
{
  v1 = sub_100106D18();
  if (v1 != 15)
  {
    v9[0] = v1;
    sub_100004984();
    AnyView.init<A>(_:)();
  }

  sub_1001087C8();
  result = sub_100106D18();
  if (result != 15)
  {
    v3 = result;
    v4 = *(v0 + *(*v0 + 136));
    v5 = sub_10008A620();
    v7 = v6;
    v8 = type metadata accessor for SupportFlowSession();
    if (!sub_10000E5F0(v7, 1, v8))
    {
      sub_10009F288(v3);
      SupportFlowSession.currentStepId.setter();
    }

    return (v5)(v9, 0);
  }

  return result;
}

uint64_t sub_10010AE1C()
{
  v1 = sub_100106E4C();
  if (v1 != 4)
  {
    v8[0] = v1;
    sub_100005444();
    AnyView.init<A>(_:)();
  }

  sub_1001088B8();
  result = sub_100106E4C();
  if (result != 4)
  {
    v3 = *(v0 + *(*v0 + 136));
    v4 = sub_10008A620();
    v6 = v5;
    v7 = type metadata accessor for SupportFlowSession();
    if (!sub_10000E5F0(v6, 1, v7))
    {
      SupportFlowSession.currentStepId.setter();
    }

    return (v4)(v8, 0);
  }

  return result;
}

unint64_t sub_10010AF94()
{
  v1 = sub_100106F80();
  if (v1 != 10)
  {
    v9[0] = v1;
    sub_100058F18();
    AnyView.init<A>(_:)();
  }

  sub_1001089A8();
  result = sub_100106F80();
  if (result != 10)
  {
    v3 = result;
    v4 = *(v0 + *(*v0 + 136));
    v5 = sub_10008A620();
    v7 = v6;
    v8 = type metadata accessor for SupportFlowSession();
    if (!sub_10000E5F0(v7, 1, v8))
    {
      sub_100058208(v3);
      SupportFlowSession.currentStepId.setter();
    }

    (v5)(v9, 0);
    return sub_10003F68C(v3);
  }

  return result;
}

uint64_t sub_10010B074()
{
  v1 = sub_1001070C0();
  if (v1 != 9)
  {
    v9[0] = v1;
    sub_10001A9E8();
    AnyView.init<A>(_:)();
  }

  sub_100108A98();
  result = sub_1001070C0();
  if (result != 9)
  {
    v3 = result;
    v4 = *(v0 + *(*v0 + 136));
    v5 = sub_10008A620();
    v7 = v6;
    v8 = type metadata accessor for SupportFlowSession();
    if (!sub_10000E5F0(v7, 1, v8))
    {
      sub_1000E7240(v3);
      SupportFlowSession.currentStepId.setter();
    }

    return (v5)(v9, 0);
  }

  return result;
}

uint64_t sub_10010B154()
{
  v1 = sub_1001071F4();
  if (v1 != 4)
  {
    v8[0] = v1;
    sub_10001F364();
    AnyView.init<A>(_:)();
  }

  sub_100108B88();
  result = sub_1001071F4();
  if (result != 4)
  {
    v3 = *(v0 + *(*v0 + 136));
    v4 = sub_10008A620();
    v6 = v5;
    v7 = type metadata accessor for SupportFlowSession();
    if (!sub_10000E5F0(v6, 1, v7))
    {
      SupportFlowSession.currentStepId.setter();
    }

    return (v4)(v8, 0);
  }

  return result;
}

uint64_t sub_10010B2C8()
{
  if ((sub_100107328() & 1) == 0)
  {
    sub_100021F94();
    AnyView.init<A>(_:)();
  }

  sub_100108C78();
  result = sub_100107328();
  if ((result & 1) == 0)
  {
    v2 = *(v0 + *(*v0 + 136));
    v3 = sub_10008A620();
    v5 = v4;
    v6 = type metadata accessor for SupportFlowSession();
    if (!sub_10000E5F0(v5, 1, v6))
    {
      SupportFlowSession.currentStepId.setter();
    }

    return (v3)(&v7, 0);
  }

  return result;
}

uint64_t sub_10010B39C()
{
  v1 = sub_10010745C();
  if (v1 != 7)
  {
    v8[0] = v1;
    sub_10001D138();
    AnyView.init<A>(_:)();
  }

  sub_100108D68();
  result = sub_10010745C();
  if (result != 7)
  {
    v3 = *(v0 + *(*v0 + 136));
    v4 = sub_10008A620();
    v6 = v5;
    v7 = type metadata accessor for SupportFlowSession();
    if (!sub_10000E5F0(v6, 1, v7))
    {
      sub_1000E7888();
      SupportFlowSession.currentStepId.setter();
    }

    return (v4)(v8, 0);
  }

  return result;
}

uint64_t sub_10010B47C()
{
  v1 = sub_100107590();
  if (v1 != 11)
  {
    v9[0] = v1;
    sub_10001BB68();
    AnyView.init<A>(_:)();
  }

  sub_100108E58();
  result = sub_100107590();
  if (result != 11)
  {
    v3 = result;
    v4 = *(v0 + *(*v0 + 136));
    v5 = sub_10008A620();
    v7 = v6;
    v8 = type metadata accessor for SupportFlowSession();
    if (!sub_10000E5F0(v7, 1, v8))
    {
      sub_1000E7488(v3);
      SupportFlowSession.currentStepId.setter();
    }

    return (v5)(v9, 0);
  }

  return result;
}

uint64_t sub_10010B55C()
{
  v1 = sub_1001076C4();
  if (v1 != 3)
  {
    v8[0] = v1;
    sub_1000D5B08();
    AnyView.init<A>(_:)();
  }

  sub_100108F48();
  result = sub_1001076C4();
  if (result != 3)
  {
    v3 = *(v0 + *(*v0 + 136));
    v4 = sub_10008A620();
    v6 = v5;
    v7 = type metadata accessor for SupportFlowSession();
    if (!sub_10000E5F0(v6, 1, v7))
    {
      SupportFlowSession.currentStepId.setter();
    }

    return (v4)(v8, 0);
  }

  return result;
}

uint64_t sub_10010B6C4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 32);
  v7 = type metadata accessor for Optional();
  sub_100008780(v7);
  v9 = *(v8 + 64);
  sub_10000ED78();
  __chkstk_darwin(v10);
  sub_100017BAC();
  v12 = *(v11 + 16);
  v13 = sub_100096BC4();
  v14(v13);
  v15 = *a2;
  return sub_1000A135C(v4);
}

unint64_t sub_10010B778(uint64_t a1, unint64_t a2)
{
  v4 = *(*a1 + 184);
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  sub_10003F548(a2);
  sub_10003F68C(v5);
  return sub_10010AF94();
}

uint64_t sub_10010B804(uint64_t a1, char a2)
{
  v4 = *(*a1 + 184);
  swift_beginAccess();
  *(a1 + v4) = a2 & 1;
  return sub_10010B2C8();
}

uint64_t sub_10010B878(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  v6 = *(*a1 + 184);
  v7 = swift_beginAccess();
  *(a1 + v6) = a2;
  return a3(v7);
}

uint64_t sub_10010B8F8(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_1000A15B0();
  *v1 = result;
  return result;
}

uint64_t sub_10010B920(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1000A1634();
}

uint64_t sub_10010B94C()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1001148C8();
  v4 = sub_100113334(v2, v3);
  sub_100114A50(v4, v5, v6, v7, v8, v9, v10, v11, v15, v0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = qword_100192F40;
  sub_100114C74();
  v13 = *(v1 + v12);
}

uint64_t sub_10010B9E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_10010BA10(v4);
}

uint64_t sub_10010BA10(uint64_t a1)
{
  v3 = qword_100192F40;
  swift_beginAccess();
  if (sub_100113F08(*(v1 + v3), a1))
  {
    v4 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    swift_getKeyPath();
    sub_1001149F0();
    __chkstk_darwin(v6);
    sub_100096768();
    *(v7 - 16) = v1;
    *(v7 - 8) = a1;
    sub_100105690();
    sub_10010F474();
  }
}

uint64_t sub_10010BADC(uint64_t a1, uint64_t a2)
{
  v4 = qword_100192F40;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

uint64_t sub_10010BB4C()
{
  swift_getKeyPath();
  sub_1001148C8();
  v3 = sub_100113334(v1, v2);
  sub_100114A50(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v0 + qword_100192F48);
}

uint64_t sub_10010BBE0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_10010BC0C();
}

uint64_t sub_10010BC0C()
{
  swift_getKeyPath();
  sub_100114B7C();
  sub_10010F474();
}

uint64_t sub_10010BC78(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + qword_100192F48);
  *(a1 + qword_100192F48) = a2;
}

uint64_t sub_10010BCBC()
{
  swift_getKeyPath();
  sub_1001148C8();
  v3 = sub_100113334(v1, v2);
  sub_100114A50(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + qword_100192F50);
}

uint64_t sub_10010BD4C(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + qword_100192F50) == (result & 1))
  {
    *(v1 + qword_100192F50) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100096768();
    *(v4 - 16) = v1;
    *(v4 - 8) = v2;
    sub_100105690();
    sub_10010F474();
  }

  return result;
}

uint64_t sub_10010BDF0()
{
  v2 = type metadata accessor for AirPodsDeviceInfo();
  v3 = sub_10000AF7C(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_100114918();
  v6 = sub_100003768(&qword_100191860, &qword_100131D50);
  sub_10000ED84(v6);
  v8 = *(v7 + 64);
  sub_10000ED78();
  __chkstk_darwin(v9);
  sub_100017BAC();
  sub_10010CBFC(v1);
  v10 = sub_100082B98();
  if (!sub_10000E5F0(v10, v11, v2))
  {
    sub_1001148B0();
    v14 = sub_100096908();
    sub_1001147C4(v14, v15, v16);
    sub_10000ABCC(v1, &qword_100191860, &qword_100131D50);
    sub_100114A3C();
    if (!(!v19 & v18))
    {
      v20 = 1 << v17;
      if ((v20 & 0xA5) != 0)
      {
        v13 = 0xE900000000000034;
LABEL_9:
        sub_1000EAB94(v0);
        v12 = 0x5F53444F50524941;
        goto LABEL_10;
      }

      if ((v20 & 0xC000) != 0)
      {
        v13 = 0xED0000335F4F5250;
        goto LABEL_9;
      }
    }

    v13 = 0xEB000000004F5250;
    goto LABEL_9;
  }

  sub_10000ABCC(v1, &qword_100191860, &qword_100131D50);
  v12 = 0;
  v13 = 0;
LABEL_10:
  type metadata accessor for FlowViewDataProvider(0);
  sub_10009E06C();
  sub_1000877E8(0xD000000000000011, v21, v12, v13);
  sub_100114AA4();
  return sub_1001149E0();
}

uint64_t sub_10010BF80@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AirPodsDeviceInfo();
  v3 = sub_10000AF7C(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000C30C();
  v8 = (v7 - v6);
  v9 = sub_100003768(&qword_100191860, &qword_100131D50);
  sub_10000ED84(v9);
  v11 = *(v10 + 64);
  sub_10000ED78();
  __chkstk_darwin(v12);
  v14 = &v21 - v13;
  sub_10010CBFC(&v21 - v13);
  if (sub_10000E5F0(v14, 1, v2))
  {
    sub_10000ABCC(v14, &qword_100191860, &qword_100131D50);
    type metadata accessor for ImageResource();
    sub_100053004();
    return sub_100003CE8(v15, v16, v17, v18);
  }

  else
  {
    sub_1001148B0();
    sub_1001147C4(v14, v8, v20);
    sub_10000ABCC(v14, &qword_100191860, &qword_100131D50);
    sub_100082EB8(*v8, a1);
    return sub_1000EAB94(v8);
  }
}

uint64_t sub_10010C0C0()
{
  v2 = type metadata accessor for AirPodsDeviceInfo();
  v3 = sub_10000AF7C(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_100114918();
  v6 = sub_100003768(&qword_100191860, &qword_100131D50);
  sub_10000ED84(v6);
  v8 = *(v7 + 64);
  sub_10000ED78();
  __chkstk_darwin(v9);
  sub_100017BAC();
  sub_10010CBFC(v1);
  v10 = sub_100082B98();
  if (sub_10000E5F0(v10, v11, v2))
  {
    sub_10000ABCC(v1, &qword_100191860, &qword_100131D50);
    sub_100114BBC();
  }

  else
  {
    sub_1001148B0();
    v12 = sub_100096908();
    sub_1001147C4(v12, v13, v14);
    sub_10000ABCC(v1, &qword_100191860, &qword_100131D50);
    sub_1000830E4(*v0);
    sub_1000EAB94(v0);
  }

  type metadata accessor for FlowViewDataProvider(0);
  sub_10009E06C();
  sub_1001149FC(28, v15);
  sub_100114AA4();
  return sub_1001149E0();
}

uint64_t sub_10010C1F0()
{
  v2 = type metadata accessor for AirPodsDeviceInfo();
  v3 = sub_10000AF7C(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_100114918();
  v6 = sub_100003768(&qword_100191860, &qword_100131D50);
  sub_10000ED84(v6);
  v8 = *(v7 + 64);
  sub_10000ED78();
  __chkstk_darwin(v9);
  sub_100017BAC();
  sub_10010CBFC(v1);
  v10 = sub_100082B98();
  if (sub_10000E5F0(v10, v11, v2))
  {
    sub_10000ABCC(v1, &qword_100191860, &qword_100131D50);
    sub_100114BBC();
  }

  else
  {
    sub_1001148B0();
    v12 = sub_100096908();
    sub_1001147C4(v12, v13, v14);
    sub_10000ABCC(v1, &qword_100191860, &qword_100131D50);
    sub_1000830E4(*v0);
    sub_1000EAB94(v0);
  }

  type metadata accessor for FlowViewDataProvider(0);
  sub_10009E06C();
  sub_1001149FC(22, v15);
  sub_100114AA4();
  return sub_1001149E0();
}

uint64_t sub_10010C320()
{
  v2 = type metadata accessor for AirPodsDeviceInfo();
  v3 = sub_10000AF7C(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_100114918();
  v6 = sub_100003768(&qword_100191860, &qword_100131D50);
  sub_10000ED84(v6);
  v8 = *(v7 + 64);
  sub_10000ED78();
  __chkstk_darwin(v9);
  sub_100017BAC();
  sub_10010CBFC(v1);
  v10 = sub_100082B98();
  if (sub_10000E5F0(v10, v11, v2))
  {
    sub_10000ABCC(v1, &qword_100191860, &qword_100131D50);
    sub_100114BBC();
  }

  else
  {
    sub_1001148B0();
    v12 = sub_100096908();
    sub_1001147C4(v12, v13, v14);
    sub_10000ABCC(v1, &qword_100191860, &qword_100131D50);
    sub_100114A3C();
    sub_1000EAB94(v0);
  }

  type metadata accessor for FlowViewDataProvider(0);
  sub_10009E06C();
  sub_1001149FC(20, v15);
  sub_100114AA4();
  return sub_1001149E0();
}

uint64_t sub_10010C478()
{
  v2 = type metadata accessor for AirPodsDeviceInfo();
  v3 = sub_10000AF7C(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_100114918();
  v6 = sub_100003768(&qword_100191860, &qword_100131D50);
  sub_10000ED84(v6);
  v8 = *(v7 + 64);
  sub_10000ED78();
  __chkstk_darwin(v9);
  sub_100017BAC();
  sub_10010CBFC(v1);
  v10 = sub_100082B98();
  if (sub_10000E5F0(v10, v11, v2))
  {
    sub_10000ABCC(v1, &qword_100191860, &qword_100131D50);
    sub_100114BBC();
  }

  else
  {
    sub_1001148B0();
    v12 = sub_100096908();
    sub_1001147C4(v12, v13, v14);
    sub_10000ABCC(v1, &qword_100191860, &qword_100131D50);
    sub_100114A3C();
    sub_1000EAB94(v0);
  }

  type metadata accessor for FlowViewDataProvider(0);
  sub_10009E06C();
  sub_1001149FC(24, v15);
  sub_100114AA4();
  return sub_1001149E0();
}

BOOL sub_10010C5D0()
{
  v2 = type metadata accessor for AirPodsDeviceInfo();
  v3 = sub_10000AF7C(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_100114918();
  v6 = sub_100003768(&qword_100191860, &qword_100131D50);
  sub_10000ED84(v6);
  v8 = *(v7 + 64);
  sub_10000ED78();
  __chkstk_darwin(v9);
  sub_100017BAC();
  sub_10010CBFC(v1);
  v10 = sub_100082B98();
  if (sub_10000E5F0(v10, v11, v2))
  {
    sub_10000ABCC(v1, &qword_100191860, &qword_100131D50);
    return 0;
  }

  else
  {
    sub_1001148B0();
    v13 = sub_100096908();
    sub_1001147C4(v13, v14, v15);
    sub_10000ABCC(v1, &qword_100191860, &qword_100131D50);
    v12 = sub_10010A128(*v0, &off_1001766C8);
    sub_1000EAB94(v0);
  }

  return v12;
}

void sub_10010C6E4()
{
  v0 = type metadata accessor for AirPodsDeviceInfo();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = (&v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100003768(&qword_100191860, &qword_100131D50);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v27 - v10;
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  if (qword_100188398 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000C2D4(v14, qword_1001A59B0);

  v27 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v27, v15))
  {
    v16 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v16 = 136315650;
    sub_10010CBFC(v13);
    if (sub_10000E5F0(v13, 1, v0))
    {
      sub_10000ABCC(v13, &qword_100191860, &qword_100131D50);
      v17 = 0;
      v18 = 0xE000000000000000;
    }

    else
    {
      sub_1001147C4(v13, v3, type metadata accessor for AirPodsDeviceInfo);
      sub_10000ABCC(v13, &qword_100191860, &qword_100131D50);
      v17 = v3[3];
      v18 = v3[4];

      sub_1000EAB94(v3);
    }

    v20 = sub_10009CACC(v17, v18, &v28);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    sub_10010CBFC(v11);
    if (sub_10000E5F0(v11, 1, v0))
    {
      sub_10000ABCC(v11, &qword_100191860, &qword_100131D50);
    }

    else
    {
      sub_1001147C4(v11, v3, type metadata accessor for AirPodsDeviceInfo);
      sub_10000ABCC(v11, &qword_100191860, &qword_100131D50);
      v21 = v3[5];
      v22 = v3[6];

      sub_1000EAB94(v3);
      if (v22)
      {
LABEL_14:
        v23 = sub_10009CACC(v21, v22, &v28);

        *(v16 + 14) = v23;
        *(v16 + 22) = 2080;
        sub_10010CBFC(v8);
        if (sub_10000E5F0(v8, 1, v0))
        {
          sub_10000ABCC(v8, &qword_100191860, &qword_100131D50);
        }

        else
        {
          sub_1001147C4(v8, v3, type metadata accessor for AirPodsDeviceInfo);
          sub_10000ABCC(v8, &qword_100191860, &qword_100131D50);
          v24 = v3[9];
          v25 = v3[10];

          sub_1000EAB94(v3);
          if (v25)
          {
            goto LABEL_18;
          }
        }

        v24 = 0;
        v25 = 0xE000000000000000;
LABEL_18:
        v26 = sub_10009CACC(v24, v25, &v28);

        *(v16 + 24) = v26;
        _os_log_impl(&_mh_execute_header, v27, v15, "Current Device: current device set to %s, model %s, serial number %s", v16, 0x20u);
        swift_arrayDestroy();

        return;
      }
    }

    v21 = 0;
    v22 = 0xE000000000000000;
    goto LABEL_14;
  }

  v19 = v27;
}

uint64_t sub_10010CB80(uint64_t a1)
{
  v3 = qword_100192F58;
  swift_beginAccess();
  sub_10011337C(a1, v1 + v3);
  swift_endAccess();
  sub_10010C6E4();
  return sub_10000ABCC(a1, &qword_100191860, &qword_100131D50);
}

uint64_t sub_10010CBFC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  sub_1001148C8();
  v6 = sub_100113334(v4, v5);
  sub_100114A50(v6, v7, v8, v9, v10, v11, v12, v13, v16, v1);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = qword_100192F58;
  sub_100114C74();
  return sub_10000EC9C(v2 + v14, a1, &qword_100191860, &qword_100131D50);
}

uint64_t sub_10010CCAC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100003768(&qword_100191860, &qword_100131D50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - v6;
  sub_10000EC9C(a1, &v10 - v6, &qword_100191860, &qword_100131D50);
  v8 = *a2;
  return sub_10010CD58(v7);
}

uint64_t sub_10010CD58(uint64_t a1)
{
  swift_getKeyPath();
  sub_100114B7C();
  sub_10010F474();

  return sub_10000ABCC(a1, &qword_100191860, &qword_100131D50);
}

uint64_t sub_10010CDD4(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003768(&qword_100191860, &qword_100131D50);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v8 - v5;
  sub_10000EC9C(a2, &v8 - v5, &qword_100191860, &qword_100131D50);
  return sub_10010CB80(v6);
}

void sub_10010CE88()
{
  sub_100096D74();
  v1 = type metadata accessor for Locale();
  v2 = sub_10000ED84(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_10000C30C();
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = sub_10000ED84(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_10000C30C();
  v9 = type metadata accessor for SupportFlowIdentifier();
  v10 = sub_100008780(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_10000C30C();
  v17 = v16 - v15;
  *(v0 + qword_100192F40) = Dictionary.init(dictionaryLiteral:)();
  *(v0 + qword_100192F48) = 0;
  *(v0 + qword_100192F50) = 0;
  type metadata accessor for AirPodsDeviceInfo();
  sub_100053004();
  sub_100003CE8(v18, v19, v20, v21);
  ObservationRegistrar.init()();
  (*(v12 + 104))(v17, enum case for SupportFlowIdentifier.airPods(_:), v9);

  sub_1001058A4();

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_10004F504();
  v22 = String.init(localized:table:bundle:locale:comment:)();
  sub_1001067C0(v22, v23);

  sub_100053050();
}

uint64_t sub_10010D0CC()
{
  sub_100025A94();
  v1[2] = v0;
  v2 = sub_100003768(&qword_100191860, &qword_100131D50);
  sub_10000ED84(v2);
  v4 = *(v3 + 64);
  v1[3] = sub_100052FA4();
  type metadata accessor for MainActor();
  v1[4] = sub_10006F3C8();
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100096AF8();
  v1[5] = v5;
  v1[6] = v6;
  v7 = sub_100096AEC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10010D178()
{
  sub_100025A94();
  if (qword_100188360 != -1)
  {
    sub_100114A1C();
  }

  if (qword_1001A5950 && sub_1000EC900())
  {
    v1 = v0[4];
    v2 = v0[2];

    sub_10010BC0C();
    v3 = v0[2];
    v4 = sub_10010BB4C();
    if (v4)
    {
      v5 = *(v4 + 16);

      if (v5 == 1)
      {
        v6 = v0[2];
        v7 = sub_10010BB4C();
        v8 = v0[3];
        if (v7)
        {
          sub_10011497C();
          sub_1001098CC(v9, v10, v11, v8);
        }

        else
        {
          type metadata accessor for AirPodsDeviceInfo();
          sub_100053004();
          sub_100003CE8(v14, v15, v16, v17);
        }

        v18 = v0[2];
        sub_10010CD58(v0[3]);
      }
    }

    v19 = v0[3];

    sub_10000875C();

    return v20();
  }

  else
  {
    v12 = swift_task_alloc();
    v0[7] = v12;
    *v12 = v0;
    sub_10006F33C(v12);

    return sub_10010E698();
  }
}

uint64_t sub_10010D2E4()
{
  sub_100025A94();
  sub_100096CD0();
  v2 = *(v0 + 56);
  v3 = *v1;
  sub_10000870C();
  *v4 = v3;

  sub_100096D54();
  v6 = *(v5 + 48);
  v7 = *(v0 + 40);

  return _swift_task_switch(sub_10010D3F0, v7, v6);
}

uint64_t sub_10010D3F0()
{
  sub_100025A94();
  v1 = v0[4];

  v2 = v0[2];
  v3 = sub_10010BB4C();
  if (v3)
  {
    v4 = *(v3 + 16);

    if (v4 == 1)
    {
      v5 = v0[2];
      v6 = sub_10010BB4C();
      v7 = v0[3];
      if (v6)
      {
        sub_10011497C();
        sub_1001098CC(v8, v9, v10, v7);
      }

      else
      {
        type metadata accessor for AirPodsDeviceInfo();
        sub_100053004();
        sub_100003CE8(v11, v12, v13, v14);
      }

      v15 = v0[2];
      sub_10010CD58(v0[3]);
    }
  }

  v16 = v0[3];

  sub_10000875C();

  return v17();
}

uint64_t sub_10010D4B8()
{
  v2 = type metadata accessor for AirPodsDeviceInfo();
  v3 = sub_10000AF7C(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_100114918();
  v6 = sub_100003768(&qword_100191860, &qword_100131D50);
  v7 = sub_10000ED84(v6);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  v15 = sub_10010BB4C();
  if (v15 && (v16 = *(v15 + 16), , v16))
  {
    if (v16 == 1)
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }
  }

  else
  {
    v17 = sub_10010BCBC() & 1;
  }

  sub_100107A30(v17);
  result = sub_10010BB4C();
  if (result)
  {
    v19 = result;
    if (*(result + 16) == 1)
    {
      sub_10011497C();
      sub_1001098CC(v19, v20, v21, v14);

      sub_10010CD58(v14);
      sub_1000A3190();
      v23 = *(v1 + *(v22 + 136));
      sub_10010CBFC(v12);
      if (sub_10000E5F0(v12, 1, v2))
      {
        sub_10000ABCC(v12, &qword_100191860, &qword_100131D50);
        sub_100114BBC();
      }

      else
      {
        sub_1001148B0();
        sub_1001147C4(v12, v0, v24);
        sub_10000ABCC(v12, &qword_100191860, &qword_100131D50);
        v1 = *(v0 + 72);
        v2 = *(v0 + 80);

        sub_1000EAB94(v0);
      }

      return sub_10008ADD4(v1, v2);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10010D6BC()
{
  sub_100025A94();
  *(v1 + 16) = v0;
  type metadata accessor for MainActor();
  *(v1 + 24) = sub_10006F3C8();
  sub_10006F37C();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10010D744, v3, v2);
}

uint64_t sub_10010D744()
{
  sub_10003DCD8();
  v1 = *(v0 + 24);

  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 16);
    v5 = [v2 enabled];

    sub_10010BD4C(v5);
  }

  v6 = *(v0 + 16);
  sub_1000A3190();
  v8 = *(v6 + *(v7 + 136));
  sub_10010BCBC();
  sub_100085FE4();
  sub_10000875C();

  return v9();
}

uint64_t sub_10010D818()
{
  sub_100025A94();
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100096AF8();
  v0[4] = v1;
  v0[5] = v2;
  v3 = sub_100096AEC();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10010D8A0()
{
  sub_100025A94();
  v1 = v0[2];
  v2 = static MainActor.shared.getter();
  v0[6] = v2;
  v3 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_10010D97C;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v4, &type metadata for ()[8], &type metadata for ()[8], v2, &protocol witness table for MainActor, &unk_100131DD8, 0, &type metadata for ()[8]);
}

uint64_t sub_10010D97C()
{
  sub_10003DCD8();
  sub_100096CD0();
  v2 = v0[7];
  v3 = v0[6];
  v4 = *v1;
  sub_10000870C();
  *v5 = v4;

  sub_100096D54();
  v7 = *(v6 + 40);
  v8 = v0[4];

  return _swift_task_switch(sub_10006D0B4, v8, v7);
}

uint64_t sub_10010DAAC(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = *(*(sub_100003768(&qword_1001888B0, &qword_1001228F0) - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v2[4] = type metadata accessor for MainActor();
  v2[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[6] = v5;
  v2[7] = v4;

  return _swift_task_switch(sub_10010DB80, v5, v4);
}

uint64_t sub_10010DB80()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = type metadata accessor for TaskPriority();
  v5 = sub_100082B98();
  sub_100003CE8(v5, v6, 1, v4);
  sub_100096BD0();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_100109F1C(v2, &unk_100131DF0, v7, &unk_10017FBF8, &type metadata for ()[8], &unk_100131E20);
  sub_10000ABCC(v2, &qword_1001888B0, &qword_1001228F0);
  v8 = sub_100082B98();
  sub_100003CE8(v8, v9, 1, v4);
  sub_100096BD0();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  sub_100109F1C(v2, &unk_100131E00, v10, &unk_10017FBF8, &type metadata for ()[8], &unk_100131E20);
  sub_10000ABCC(v2, &qword_1001888B0, &qword_1001228F0);
  v11 = static MainActor.shared.getter();
  v0[8] = v11;
  v12 = async function pointer to TaskGroup.next(isolation:)[1];
  v13 = swift_task_alloc();
  v0[9] = v13;
  v14 = sub_100003768(&qword_100193400, &qword_100131E08);
  *v13 = v0;
  v13[1] = sub_10010DD78;
  v15 = v0[2];

  return TaskGroup.next(isolation:)(v0 + 10, v11, &protocol witness table for MainActor, v14);
}

uint64_t sub_10010DD78()
{
  sub_10003DCD8();
  sub_100096CD0();
  v2 = v0[9];
  v3 = v0[8];
  v4 = *v1;
  sub_10000870C();
  *v5 = v4;

  sub_100096D54();
  v7 = *(v6 + 56);
  v8 = v0[6];

  return _swift_task_switch(sub_10010DEA8, v8, v7);
}

uint64_t sub_10010DEA8()
{
  sub_100025A94();
  v1 = v0[5];
  v2 = v0[2];
  v3 = v0[3];

  v4 = *v2;
  TaskGroup.cancelAll()();

  sub_10000875C();

  return v5();
}

uint64_t sub_10010DF20()
{
  v1 = *(*(sub_100003768(&qword_100193418, &qword_100131E28) - 8) + 64) + 15;
  v0[3] = swift_task_alloc();
  v2 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v0[4] = v2;
  v3 = *(v2 - 8);
  v0[5] = v3;
  v4 = *(v3 + 64) + 15;
  v0[6] = swift_task_alloc();

  return _swift_task_switch(sub_10010E014, 0, 0);
}

uint64_t sub_10010E014()
{
  sub_10003DCD8();
  v1 = v0[6];
  v2 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  v3 = sub_10004F530(dword_100131E30);
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_10010E10C;
  v4 = v0[6];
  v5 = v0[3];
  sub_10004F504();

  return v7();
}

uint64_t sub_10010E10C()
{
  sub_100025A94();
  sub_10004622C();
  v3 = *(v2 + 56);
  v4 = *v1;
  sub_10000870C();
  *v5 = v4;

  if (!v0)
  {
    sub_10004F504();

    return _swift_task_switch(v7, v8, v9);
  }

  return result;
}

uint64_t sub_10010E208()
{
  sub_100025A94();
  v1 = v0[3];
  (*(v0[5] + 8))(v0[6], v0[4]);
  v2 = type metadata accessor for Notification();
  if (sub_10000E5F0(v1, 1, v2) != 1)
  {
    sub_10000ABCC(v0[3], &qword_100193418, &qword_100131E28);
  }

  v3 = v0[6];
  v4 = v0[3];

  sub_10000875C();

  return v5();
}

uint64_t sub_10010E2BC()
{
  v1 = type metadata accessor for ContinuousClock();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_10010E378, 0, 0);
}

uint64_t sub_10010E378()
{
  sub_100025A94();
  v1 = *(v0 + 32);
  static Clock<>.continuous.getter();
  v2 = sub_10004F530(&dword_100131E10);
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_10010E42C;
  v3 = *(v0 + 32);
  sub_10004F504();

  return v5();
}

uint64_t sub_10010E42C()
{
  sub_10004F4F8();
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;
  sub_10000870C();
  *v5 = v4;

  v6 = v2[4];
  v7 = v2[3];
  v8 = v2[2];
  if (v0)
  {

    v9 = *(v7 + 8);
  }

  else
  {
    v12 = *(v7 + 8);
  }

  v10 = sub_100077FE8();
  v11(v10);
  sub_10004F504();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_10010E5AC()
{
  sub_10003DCD8();
  if (qword_100188398 != -1)
  {
    sub_1001148E0();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C2D4(v1, qword_1001A59B0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (sub_100114BC8(v3))
  {
    *swift_slowAlloc() = 0;
    sub_100114B5C();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_100008744();
  }

  v9 = *(v0 + 32);

  sub_10000875C();

  return v10();
}

uint64_t sub_10010E698()
{
  sub_100025A94();
  v1[2] = v0;
  v2 = sub_100003768(&qword_100191860, &qword_100131D50);
  sub_10000ED84(v2);
  v4 = *(v3 + 64);
  v1[3] = sub_100052FA4();
  v5 = type metadata accessor for AirPodsDeviceInfo();
  v1[4] = v5;
  sub_100052F6C(v5);
  v1[5] = v6;
  v8 = *(v7 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[8] = sub_10006F3C8();
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100096AF8();
  v1[9] = v9;
  v1[10] = v10;
  v11 = sub_100096AEC();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10010E7A4()
{
  v2 = [objc_opt_self() sharedInstance];
  *(v0 + 88) = v2;
  if (!v2)
  {
    v14 = *(v0 + 64);

    goto LABEL_33;
  }

  if ([v2 available])
  {
    v3 = *(v0 + 64);

    v4 = *(v0 + 16);
    sub_10010BD4C([*(v0 + 88) enabled]);
    if (qword_100188398 != -1)
    {
      goto LABEL_37;
    }

    while (1)
    {
      v5 = *(v0 + 16);
      v6 = type metadata accessor for Logger();
      sub_10000C2D4(v6, qword_1001A59B0);

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.debug.getter();
      v9 = os_log_type_enabled(v7, v8);
      v10 = *(v0 + 16);
      if (v9)
      {
        v11 = swift_slowAlloc();
        *v11 = 67109120;
        v11[1] = sub_10010BCBC() & 1;

        sub_100114C54(&_mh_execute_header, v12, v13, "Bluetooth enabled: %{BOOL}d");
        sub_100008744();
      }

      else
      {
        v26 = *(v0 + 16);
      }

      v27 = *(v0 + 16);
      v28 = sub_10010BCBC();
      v29 = *(v0 + 88);
      if ((v28 & 1) == 0)
      {
        break;
      }

      v30 = sub_100112EB4(v29);
      if (!v30)
      {
        goto LABEL_30;
      }

      sub_100109ACC(v30, &qword_1001933F8, BluetoothDevice_ptr);
      sub_10006F37C();

      if (!v27)
      {
        goto LABEL_30;
      }

      v67 = *(v0 + 40);
      sub_1000C9794(v27);
      sub_100114C20();
      v68 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v8 == v1)
        {

LABEL_30:
          v53 = *(v0 + 16);
          sub_10010BC0C();
          v54 = sub_10010BB4C();
          v55 = *(v0 + 88);
          if (v54)
          {
            sub_100114B8C();
            v58 = *(v57 + *(v56 + 136));
            v60 = *(v59 + 16);

            sub_100085FE4();
          }

LABEL_33:
          v62 = *(v0 + 48);
          v61 = *(v0 + 56);
          v63 = *(v0 + 24);

          sub_10000875C();
          sub_100046280();

          __asm { BRAA            X1, X16 }
        }

        v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v31 = v51;
        v32 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        v34 = *(v0 + 24);
        v33 = *(v0 + 32);
        sub_10010F320(v51, v34);
        if (sub_10000E5F0(v34, 1, v33) == 1)
        {
          v35 = *(v0 + 24);

          sub_10000ABCC(v35, &qword_100191860, &qword_100131D50);
          ++v1;
        }

        else
        {
          v37 = *(v0 + 48);
          v36 = *(v0 + 56);
          sub_1000EAABC(*(v0 + 24), v36);
          sub_1001148B0();
          sub_1001147C4(v36, v37, v38);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100114BE4();
          }

          sub_100114AF8();
          v66 = v39;
          if (v40)
          {
            sub_100114C34();
            v68 = v52;
          }

          v42 = *(v0 + 48);
          v41 = *(v0 + 56);

          v43 = sub_1000EAB94(v41);
          sub_100114A60(v43, v44, v45, v46, v47, v48, v49, v50, v66, v67, v68);
          v1 = v32;
        }
      }

      __break(1u);
      __break(1u);
LABEL_37:
      sub_1001148E0();
    }

    goto LABEL_33;
  }

  if (qword_100188398 != -1)
  {
    sub_1001148E0();
  }

  v15 = type metadata accessor for Logger();
  sub_10000C2D4(v15, qword_1001A59B0);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (sub_100114BC8(v17))
  {
    *swift_slowAlloc() = 0;
    sub_100114B5C();
    _os_log_impl(v18, v19, v20, v21, v22, 2u);
    sub_100008744();
  }

  v23 = swift_task_alloc();
  *(v0 + 96) = v23;
  *v23 = v0;
  v23[1] = sub_10010EC0C;
  sub_100046280();

  return sub_10010D818();
}

uint64_t sub_10010EC0C()
{
  sub_100025A94();
  sub_100096CD0();
  v2 = *(v0 + 96);
  v3 = *v1;
  sub_10000870C();
  *v4 = v3;

  sub_100096D54();
  v6 = *(v5 + 80);
  v7 = *(v0 + 72);

  return _swift_task_switch(sub_10010ED18, v7, v6);
}

void sub_10010ED18()
{
  v2 = *(v0 + 64);

  v3 = *(v0 + 16);
  sub_10010BD4C([*(v0 + 88) enabled]);
  if (qword_100188398 != -1)
  {
LABEL_25:
    sub_1001148E0();
  }

  v4 = *(v0 + 16);
  v5 = type metadata accessor for Logger();
  sub_10000C2D4(v5, qword_1001A59B0);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 16);
  if (v8)
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    v10[1] = sub_10010BCBC() & 1;

    sub_100114C54(&_mh_execute_header, v11, v12, "Bluetooth enabled: %{BOOL}d");
    sub_100008744();
  }

  else
  {
    v13 = *(v0 + 16);
  }

  v14 = *(v0 + 16);
  v15 = sub_10010BCBC();
  v16 = *(v0 + 88);
  if (v15)
  {
    v17 = sub_100112EB4(*(v0 + 88));
    if (v17)
    {
      sub_100109ACC(v17, &qword_1001933F8, BluetoothDevice_ptr);
      sub_10006F37C();

      if (v14)
      {
        v53 = *(v0 + 40);
        sub_1000C9794(v14);
        sub_100114C20();
        v54 = _swiftEmptyArrayStorage;
        while (v7 != v1)
        {
          v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v18 = v38;
          v19 = v1 + 1;
          if (__OFADD__(v1, 1))
          {
            __break(1u);
            __break(1u);
            goto LABEL_25;
          }

          v21 = *(v0 + 24);
          v20 = *(v0 + 32);
          sub_10010F320(v38, v21);
          if (sub_10000E5F0(v21, 1, v20) == 1)
          {
            v22 = *(v0 + 24);

            sub_10000ABCC(v22, &qword_100191860, &qword_100131D50);
            ++v1;
          }

          else
          {
            v24 = *(v0 + 48);
            v23 = *(v0 + 56);
            sub_1000EAABC(*(v0 + 24), v23);
            sub_1001148B0();
            sub_1001147C4(v23, v24, v25);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_100114BE4();
            }

            sub_100114AF8();
            v52 = v26;
            if (v27)
            {
              sub_100114C34();
              v54 = v39;
            }

            v29 = *(v0 + 48);
            v28 = *(v0 + 56);

            v30 = sub_1000EAB94(v28);
            sub_100114A60(v30, v31, v32, v33, v34, v35, v36, v37, v52, v53, v54);
            v1 = v19;
          }
        }
      }
    }

    v40 = *(v0 + 16);
    sub_10010BC0C();
    v41 = sub_10010BB4C();
    v16 = *(v0 + 88);
    if (v41)
    {
      sub_100114B8C();
      v44 = *(v43 + *(v42 + 136));
      v46 = *(v45 + 16);

      sub_100085FE4();
    }
  }

  v48 = *(v0 + 48);
  v47 = *(v0 + 56);
  v49 = *(v0 + 24);

  sub_10000875C();
  sub_100046280();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_10010F044()
{
  sub_100025A94();
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = sub_10006F3C8();
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100096AF8();
  v1[4] = v2;
  v1[5] = v3;
  v4 = sub_100096AEC();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10010F1AC()
{
  sub_100025A94();
  sub_100096CD0();
  v2 = *(v0 + 48);
  v3 = *v1;
  sub_10000870C();
  *v4 = v3;

  sub_100096D54();
  v6 = *(v5 + 40);
  v7 = *(v0 + 32);

  return _swift_task_switch(sub_10010F2B8, v7, v6);
}

uint64_t sub_10010F2B8()
{
  sub_100025A94();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  if (sub_10010BCBC())
  {
    v3 = *(v0 + 16);
    sub_10010D4B8();
  }

  sub_10000875C();

  return v4();
}

uint64_t sub_10010F320@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = [a1 productId];
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = sub_100083500(result);
  if (v5 != 9)
  {
    v10 = v5;
    result = [a1 productId];
    if ((result & 0x80000000) == 0)
    {
      v11 = result;
      result = sub_10004F314(a1);
      v28 = result;
      if (v12)
      {
        v13 = v12;
        v14 = sub_1000831E0(v10);
        v26 = v15;
        v27 = v14;
        v25 = sub_1000835F4(1u);
        v17 = v16;
        v18 = sub_1000835F4(0xAu);
        v20 = v19;
        v21 = sub_1000835F4(3u);
        v23 = v22;
        v24 = type metadata accessor for AirPodsDeviceInfo();
        sub_1000832D8(v10, a2 + *(v24 + 40));
        *a2 = v11;
        *(a2 + 8) = v28;
        *(a2 + 16) = v13;
        *(a2 + 24) = v27;
        *(a2 + 32) = v26;
        *(a2 + 40) = v25;
        *(a2 + 48) = v17;
        *(a2 + 56) = v18;
        *(a2 + 64) = v20;
        *(a2 + 72) = v21;
        *(a2 + 80) = v23;
        v6 = a2;
        v7 = 0;
        v8 = 1;
        v9 = v24;
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
      return result;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  type metadata accessor for AirPodsDeviceInfo();
  sub_100053004();
LABEL_7:

  return sub_100003CE8(v6, v7, v8, v9);
}

uint64_t sub_10010F474()
{
  sub_100114BAC();
  sub_1001148C8();
  sub_100113334(v0, v1);
  return sub_100114AC8();
}

uint64_t sub_10010F4F4()
{
  v1 = *(v0 + qword_100192F40);

  v2 = *(v0 + qword_100192F48);

  sub_10000ABCC(v0 + qword_100192F58, &qword_100191860, &qword_100131D50);
  v3 = qword_100192F60;
  v4 = type metadata accessor for ObservationRegistrar();
  sub_10000AF7C(v4);
  v6 = *(v5 + 8);

  return v6(v0 + v3);
}

uint64_t sub_10010F594()
{
  v0 = sub_100105B78();
  v1 = *(v0 + qword_100192F40);

  v2 = *(v0 + qword_100192F48);

  sub_10000ABCC(v0 + qword_100192F58, &qword_100191860, &qword_100131D50);
  v3 = qword_100192F60;
  v4 = type metadata accessor for ObservationRegistrar();
  sub_10000AF7C(v4);
  (*(v5 + 8))(v0 + v3);
  return v0;
}

uint64_t sub_10010F634()
{
  v0 = sub_10010F594();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for AirPodsFlowViewModel()
{
  result = qword_100192F90;
  if (!qword_100192F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10010F6D4()
{
  sub_10010F7C4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for ObservationRegistrar();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

void sub_10010F7C4()
{
  if (!qword_100192FA0)
  {
    type metadata accessor for AirPodsDeviceInfo();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100192FA0);
    }
  }
}

__n128 sub_10010F848(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_10010FBD4()
{
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_10010FC6C, v3, v2);
}

uint64_t sub_10010FC6C()
{
  v26 = v0;
  v1 = v0[2];
  v2 = sub_10011035C();
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = v0[2];

    v7 = sub_1001104C8(v4, v5);
    v0[6] = v7;

    if (v7)
    {
      v9 = v0[2];
      v0[7] = sub_10010F854(v8);
      v0[8] = v10;
      if (v10)
      {
        if (qword_100188398 != -1)
        {
          sub_1001148E0();
        }

        v11 = type metadata accessor for Logger();
        sub_10000C2D4(v11, qword_1001A59B0);

        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v25 = v15;
          *v14 = 136315138;
          v16 = sub_10009CACC(v4, v5, &v25);

          *(v14 + 4) = v16;
          _os_log_impl(&_mh_execute_header, v12, v13, "Current device version: %s", v14, 0xCu);
          sub_1000086BC(v15);
          sub_100008744();
          sub_100008744();
        }

        else
        {
        }

        v22 = swift_task_alloc();
        v0[9] = v22;
        *v22 = v0;
        sub_10006F33C(v22);
        v23 = sub_100077FE8();

        return sub_100110ABC(v23, v24);
      }

      v19 = v0[3];
    }

    else
    {
      v18 = v0[3];
    }
  }

  else
  {
    v17 = v0[3];
  }

  sub_1000E2A30();

  return v20(0);
}

uint64_t sub_10010FEE8()
{
  sub_100025A94();
  sub_100096CD0();
  sub_100052FD4();
  *v3 = v2;
  v4 = *(v0 + 72);
  v5 = *v1;
  sub_100114B6C();
  *v6 = v5;
  *(v8 + 96) = v7;

  sub_100096D54();
  v10 = *(v9 + 40);
  v11 = *(v0 + 32);

  return _swift_task_switch(sub_10010FFF4, v11, v10);
}

uint64_t sub_10010FFF4()
{
  sub_100025A94();
  if (*(v0 + 96) == 1)
  {
    v1 = *(v0 + 64);
    v2 = swift_task_alloc();
    *(v0 + 80) = v2;
    *v2 = v0;
    v2[1] = sub_1001100EC;
    v3 = *(v0 + 56);
    v4 = *(v0 + 16);

    return sub_100110E10(v3, v1);
  }

  else
  {
    v6 = *(v0 + 64);
    v7 = *(v0 + 48);
    v8 = *(v0 + 24);

    sub_1000E2A30();

    return v9(0);
  }
}

uint64_t sub_1001100EC()
{
  sub_10003DCD8();
  sub_100096CD0();
  sub_100052FD4();
  *v3 = v2;
  v4 = v0[10];
  v5 = v0[8];
  v6 = *v1;
  sub_100114B6C();
  *v7 = v6;
  *(v9 + 88) = v8;

  sub_100096D54();
  v11 = *(v10 + 40);
  v12 = v0[4];

  return _swift_task_switch(sub_10011021C, v12, v11);
}

void sub_10011021C()
{
  v1 = v0[11];
  v2 = v0[3];

  if (v1)
  {
    v3 = v0[11];
    v4 = sub_1000C9794(v3);
    v5 = 0;
    while (1)
    {
      if (v4 == v5)
      {
        v10 = v0[6];

        v12 = 0;
        goto LABEL_13;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v8 = v0[2];
      LOBYTE(v8) = sub_100111174(v6, v0[6]);

      ++v5;
      if (v8)
      {
        v11 = v0[6];

        v12 = 1;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
    v12 = 0;
    v9 = v0[6];
LABEL_13:

    sub_1000E2A30();

    v13(v12);
  }
}

uint64_t sub_10011035C()
{
  v0 = sub_100003768(&qword_100191860, &qword_100131D50);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v14 - v2;
  v4 = type metadata accessor for AirPodsDeviceInfo();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010CBFC(v3);
  if (sub_10000E5F0(v3, 1, v4) == 1)
  {
    sub_10000ABCC(v3, &qword_100191860, &qword_100131D50);
    return 0;
  }

  else
  {
    sub_1000EAABC(v3, v7);
    if (*(v7 + 8))
    {
      v8 = *(v7 + 7);
      v9 = *(v7 + 8);

      v10 = static String.airPodsVersionOverride.getter();
      v12 = v11;
      sub_1000EAB94(v7);
      if (v12)
      {

        return v10;
      }
    }

    else
    {
      sub_1000EAB94(v7);
      return 0;
    }
  }

  return v8;
}

uint64_t sub_1001104C8(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = sub_100112AA4();
  v4 = v3;
  sub_100114400();
  v5 = Dictionary.init(dictionaryLiteral:)();
  v6 = v4 >> 14;

  for (i = v2; i >> 14 != v6; i = Substring.index(after:)())
  {
    Substring.subscript.getter();
    v8 = Character.isNumber.getter();

    if ((v8 & 1) == 0)
    {
      v6 = i >> 14;
      break;
    }
  }

  if (v6 < v2 >> 14)
  {
    __break(1u);
    goto LABEL_43;
  }

  v52 = v5;
  v10 = Substring.subscript.getter();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  if ((v10 ^ v12) < 0x4000)
  {
LABEL_43:

    goto LABEL_16;
  }

  v17 = sub_10011382C(v10, v12, v14, v16, 10);
  if ((v18 & 0x100) != 0)
  {

    v19 = sub_10011242C(v10, v12, v14, v16, 10);
    v21 = v20;

    if ((v21 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

  if (v18)
  {
    goto LABEL_43;
  }

  v19 = v17;
LABEL_15:
  swift_isUniquelyReferenced_nonNull_native();
  sub_100052AD4(v19, 0);
  v22 = Substring.distance(from:to:)();

  v2 = sub_100016B0C(v22, v2, v4);
  v4 = v23;
LABEL_16:
  if ((v4 ^ v2) >= 0x4000)
  {
    Substring.subscript.getter();
    if (Character.isUppercase.getter())
    {
      v24 = sub_10011171C();
      v26 = v25;

      if ((v26 & 1) == 0)
      {
        swift_isUniquelyReferenced_nonNull_native();
        sub_100052AD4(v24, 1u);
        v2 = sub_100016B0C(1uLL, v2, v4);
        v4 = v27;
      }
    }

    else
    {
    }
  }

  v28 = v4 >> 14;

  for (j = v2; j >> 14 != v28; j = result)
  {
    Substring.subscript.getter();
    v31 = Character.isNumber.getter();

    if ((v31 & 1) == 0)
    {
      v28 = j >> 14;
      break;
    }

    result = Substring.index(after:)();
  }

  if (v28 >= v2 >> 14)
  {
    v32 = Substring.subscript.getter();
    v34 = v33;
    v36 = v35;
    v38 = v37;

    if ((v32 ^ v34) >= 0x4000)
    {
      v39 = sub_10011382C(v32, v34, v36, v38, 10);
      if ((v40 & 0x100) != 0)
      {

        v41 = sub_10011242C(v32, v34, v36, v38, 10);
        v43 = v42;

        if ((v43 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      else if ((v40 & 1) == 0)
      {
        v41 = v39;
LABEL_33:
        swift_isUniquelyReferenced_nonNull_native();
        sub_100052AD4(v41, 2u);
        v44 = Substring.distance(from:to:)();

        v2 = sub_100016B0C(v44, v2, v4);
        v4 = v45;
        goto LABEL_34;
      }
    }

LABEL_34:
    v9 = v52;
    if (v4 ^ v2) >> 14 && (Substring.subscript.getter(), , (Character.isLowercase.getter()))
    {
      v46 = sub_10011171C();
      v48 = v47;

      if (v48)
      {
        sub_100083810(3u);
        if (v49)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v51 = *(v52 + 24);
          sub_100003768(&qword_10018BA40, &unk_1001269F0);
          _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v51);
          v9 = v52;
          _NativeDictionary._delete(at:)();
        }
      }

      else
      {
        swift_isUniquelyReferenced_nonNull_native();
        sub_100052AD4(v46, 3u);
      }
    }

    else
    {
    }

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_100110ABC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for MainActor();
  v2[5] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[6] = v4;
  v2[7] = v3;

  return _swift_task_switch(sub_100110B58, v4, v3);
}

uint64_t sub_100110B58()
{
  sub_10004F4F8();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = static MainActor.shared.getter();
  v0[8] = v4;
  v5 = swift_task_alloc();
  v0[9] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_100110C68;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 11, v4, &protocol witness table for MainActor, 0xD000000000000019, 0x800000010013A8A0, sub_1001142F4, v5, &type metadata for Bool);
}

uint64_t sub_100110C68()
{
  sub_10003DCD8();
  sub_100096CD0();
  v2 = v0[10];
  v3 = v0[9];
  v4 = v0[8];
  v5 = *v1;
  sub_10000870C();
  *v6 = v5;

  sub_100096D54();
  v8 = *(v7 + 56);
  v9 = v0[6];

  return _swift_task_switch(sub_100110DB4, v9, v8);
}

uint64_t sub_100110DB4()
{
  sub_100025A94();
  v1 = *(v0 + 40);

  v2 = *(v0 + 88);
  sub_1000E2A30();

  return v3();
}

uint64_t sub_100110E10(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v2[5] = type metadata accessor for MainActor();
  v2[6] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[7] = v4;
  v2[8] = v3;

  return _swift_task_switch(sub_100110EAC, v4, v3);
}

uint64_t sub_100110EAC()
{
  sub_10004F4F8();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = static MainActor.shared.getter();
  v0[9] = v4;
  v5 = swift_task_alloc();
  v0[10] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v7 = swift_task_alloc();
  v0[11] = v7;
  v8 = sub_100003768(&qword_100193460, &qword_100131F70);
  *v7 = v0;
  v7[1] = sub_100110FCC;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, v4, &protocol witness table for MainActor, 0xD000000000000011, 0x800000010013A880, sub_100114194, v5, v8);
}

uint64_t sub_100110FCC()
{
  sub_10003DCD8();
  sub_100096CD0();
  v2 = v0[11];
  v3 = v0[10];
  v4 = v0[9];
  v5 = *v1;
  sub_10000870C();
  *v6 = v5;

  sub_100096D54();
  v8 = *(v7 + 64);
  v9 = v0[7];

  return _swift_task_switch(sub_100111118, v9, v8);
}

uint64_t sub_100111118()
{
  sub_100025A94();
  v1 = *(v0 + 48);

  v2 = *(v0 + 16);
  sub_1000E2A30();

  return v3();
}

uint64_t sub_100111174(void *a1, uint64_t a2)
{
  if ([a1 state] == 3)
  {
    return 0;
  }

  result = sub_100112E48(a1);
  if (result)
  {
    v5 = sub_100111454(result);

    if (v5)
    {
      sub_100082C6C(0x646C697542, 0xE500000000000000, v5, v23);

      if (v24)
      {
        if (swift_dynamicCast())
        {

          v6 = sub_1001104C8(v21, v22);

          if (v6)
          {
            if (qword_100188398 != -1)
            {
              swift_once();
            }

            v7 = type metadata accessor for Logger();
            sub_10000C2D4(v7, qword_1001A59B0);

            v8 = Logger.logObject.getter();
            v9 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v8, v9))
            {
              v10 = swift_slowAlloc();
              v11 = swift_slowAlloc();
              v23[0] = v11;
              *v10 = 136315138;
              v12 = sub_10009CACC(v21, v22, v23);

              *(v10 + 4) = v12;
              _os_log_impl(&_mh_execute_header, v8, v9, "Build found on server: %s", v10, 0xCu);
              sub_1000086BC(v11);
            }

            else
            {
            }

            for (i = 0; i != 4; ++i)
            {
              v14 = *(&off_1001764E0 + i + 32);
              if (*(v6 + 16) && (v15 = sub_100083810(*(&off_1001764E0 + i + 32)), (v16 & 1) != 0))
              {
                v17 = *(*(v6 + 56) + 8 * v15);
              }

              else
              {
                v17 = 0;
              }

              if (*(a2 + 16) && (v18 = sub_100083810(v14), (v19 & 1) != 0))
              {
                v20 = *(*(a2 + 56) + 8 * v18);
                if (v20 < v17)
                {
                  goto LABEL_29;
                }

                if (v17 < v20)
                {
                  break;
                }
              }

              else if (v17)
              {
LABEL_29:

                return 1;
              }
            }
          }
        }
      }

      else
      {
        sub_10000ABCC(v23, &unk_10018A520, &unk_100124310);
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_100111454(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003768(&qword_100193450, &qword_100131F60);
    v2 = static _DictionaryStorage.allocate(capacity:)();
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
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_100083B68(*(a1 + 48) + 40 * v10, __src);
    sub_10001E894(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_100083B68(__dst, v21);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_10001E894(&__dst[40], v22);
    sub_10000ABCC(__dst, &qword_100193458, &qword_100131F68);
    v23 = v20;
    sub_1000BBF20(v22, v24);
    v11 = v23;
    sub_1000BBF20(v24, v25);
    sub_1000BBF20(v25, &v23);
    result = sub_100083754(v11, *(&v11 + 1));
    v12 = result;
    if (v13)
    {
      v14 = v2[6] + 16 * result;
      v15 = *(v14 + 8);
      *v14 = v11;

      v16 = (v2[7] + 32 * v12);
      sub_1000086BC(v16);
      result = sub_1000BBF20(&v23, v16);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v11;
      result = sub_1000BBF20(&v23, (v2[7] + 32 * result));
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_23;
      }

      v2[2] = v19;
      v8 = v9;
    }
  }

  sub_10000ABCC(__dst, &qword_100193458, &qword_100131F68);

  return 0;
}

uint64_t sub_10011171C()
{
  v0 = Character.isUppercase.getter();
  v1 = Character.asciiValue.getter();
  if ((v1 & 0x100) != 0)
  {
    return 0;
  }

  v2 = v1;
  v3 = Character.asciiValue.getter();

  if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  if (((v2 - v3) & 0xFFFFFF00) != 0)
  {
    __break(1u);
  }

  else if ((((((v0 & 1) == 0) + (v2 - v3)) >> 8) & 1) == 0)
  {
    return (((v0 & 1) == 0) + v2 - v3);
  }

  __break(1u);
  return result;
}

void sub_1001117CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003768(&qword_100193478, &qword_100131F80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - v9;
  v11 = [objc_allocWithZone(MADownloadOptions) init];
  [v11 setDiscretionary:0];
  [v11 setAllowsCellularAccess:1];
  v12 = objc_opt_self();
  (*(v7 + 16))(v10, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v10, v6);
  aBlock[4] = sub_100114388;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100111A44;
  aBlock[3] = &unk_10017FCB0;
  v15 = _Block_copy(aBlock);
  v16 = v11;

  sub_100112F10(a2, a3, v11, v15, v12);
  _Block_release(v15);
}

void sub_100111A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003768(&qword_100193468, &qword_100131F78);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - v9;
  objc_allocWithZone(MAAssetQuery);

  v11 = sub_100111E58(a2, a3);
  if (v11)
  {
    v12 = v11;
    [v11 returnTypes:2];
    (*(v7 + 16))(v10, a1, v6);
    v13 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    (*(v7 + 32))(v14 + v13, v10, v6);
    aBlock[4] = sub_100114260;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100111CCC;
    aBlock[3] = &unk_10017FC60;
    v15 = _Block_copy(aBlock);
    v16 = v12;

    [v16 queryMetaData:v15];
    _Block_release(v15);
  }

  else
  {
    aBlock[0] = 0;
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100111C6C(uint64_t a1, void *a2)
{
  if (!a1)
  {
    sub_100112F80(a2);
  }

  sub_100003768(&qword_100193468, &qword_100131F78);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100111CD4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

_UNKNOWN **sub_100111D2C@<X0>(void *a1@<X8>)
{
  result = sub_10011170C();
  *a1 = result;
  return result;
}

uint64_t sub_100111D54()
{
  v0 = type metadata accessor for SupportFlowIdentifier();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  sub_10000C270(v5, qword_1001A59B0);
  sub_10000C2D4(v5, qword_1001A59B0);
  (*(v1 + 104))(v4, enum case for SupportFlowIdentifier.airPods(_:), v0);
  return Logger.init(flowId:)();
}

id sub_100111E58(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithType:v3];

  return v4;
}

uint64_t sub_100111EBC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100094CC8;

  return v7(a1);
}

uint64_t sub_100111FB4()
{
  sub_10004F4F8();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *(v1 + 56) = v0;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v1 + 64) = v12;
  sub_100052F6C(v12);
  *(v1 + 72) = v13;
  v15 = *(v14 + 64) + 15;
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 40) = v11;
  *(v1 + 48) = v9;
  *(v1 + 16) = v7;
  *(v1 + 24) = v5;
  *(v1 + 32) = v3 & 1;
  sub_10004F504();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_1001120A4()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_100113334(&qword_100193408, &type metadata accessor for ContinuousClock);
  sub_100077FE8();
  dispatch thunk of Clock.now.getter();
  sub_100113334(&qword_100193410, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v0[12] = *(v4 + 8);
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8 = sub_100025A88();
  v9(v8);
  v10 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = sub_10011222C;
  v12 = v0[11];
  v13 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v12, v0 + 2, v6, v7);
}

uint64_t sub_10011222C()
{
  sub_10004F4F8();
  sub_10004622C();
  v3 = v2;
  sub_100052FD4();
  *v4 = v3;
  v6 = v5[14];
  v7 = v5[13];
  v8 = v5[12];
  v9 = v5[11];
  v10 = v5[8];
  v11 = *v1;
  sub_10000870C();
  *v12 = v11;
  v3[15] = v0;

  v8(v9, v10);
  if (v0)
  {
    sub_10004F504();

    return _swift_task_switch(v13, v14, v15);
  }

  else
  {
    v17 = v3[10];
    v16 = v3[11];

    sub_10000875C();

    return v18();
  }
}

uint64_t sub_1001123C8()
{
  sub_100025A94();
  v2 = v0[10];
  v1 = v0[11];

  sub_10000875C();
  v4 = v0[15];

  return v3();
}

unsigned __int8 *sub_10011242C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v71 = a1;
  v72 = a2;
  v73 = a3;
  v74 = a4;
  sub_100114454();

  result = String.init<A>(_:)();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_100112A3C();
    v42 = v41;

    v9 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v24 = v10 - 1;
        if (v10 != 1)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v16 = 0;
            v28 = result + 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_129;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              if (!is_mul_ok(v16, a5))
              {
                goto LABEL_128;
              }

              v31 = v16 * a5;
              v32 = v29 + v30;
              v23 = __CFADD__(v31, v32);
              v16 = v31 + v32;
              if (v23)
              {
                goto LABEL_128;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_47:
            v20 = v16;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v20 = 0;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_129;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            if (!is_mul_ok(v36, a5))
            {
              goto LABEL_128;
            }

            v39 = v36 * a5;
            v40 = v37 + v38;
            v23 = __CFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_128;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_129;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            if (!is_mul_ok(v16, a5))
            {
              goto LABEL_128;
            }

            v21 = v16 * a5;
            v22 = v18 + v19;
            v23 = v21 >= v22;
            v16 = v21 - v22;
            if (!v23)
            {
              goto LABEL_128;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v20 = 0;
LABEL_129:

        return v20;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v43 = HIBYTE(v9) & 0xF;
  v71 = v8;
  v72 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v71;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_129;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          if (!is_mul_ok(v45, a5))
          {
            goto LABEL_128;
          }

          v69 = v45 * a5;
          v70 = v67 + v68;
          v23 = __CFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_128;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v71 + 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_129;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          if (!is_mul_ok(v45, a5))
          {
            goto LABEL_128;
          }

          v52 = v45 * a5;
          v53 = v50 + v51;
          v23 = v52 >= v53;
          v45 = v52 - v53;
          if (!v23)
          {
            goto LABEL_128;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v71 + 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_129;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        if (!is_mul_ok(v45, a5))
        {
          goto LABEL_128;
        }

        v61 = v45 * a5;
        v62 = v59 + v60;
        v23 = __CFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_128;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_127:
      v20 = v45;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1001129C0(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
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
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
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

uint64_t sub_100112A3C()
{
  v0 = sub_100112AA4();
  v4 = sub_100112AD8(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100112AD8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_10009CED8(v9, 0);
  v12 = sub_100112C38(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_100112C38(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
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
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1001129C0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1001129C0(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_100112E48(void *a1)
{
  v1 = [a1 attributes];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100112EB4(void *a1)
{
  v1 = [a1 pairedDevices];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_100112F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = String._bridgeToObjectiveC()();
  [a5 startCatalogDownload:v8 options:a3 then:a4];
}

uint64_t sub_100112F80(void *a1)
{
  v1 = [a1 results];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_100025778(0, &qword_100193470, MAAsset_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10011309C(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_1000A15B0();
  *v1 = result;
  return result;
}

uint64_t sub_1001130CC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_100096BD0();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100113100()
{
  sub_10003DCD8();
  sub_100096D0C();
  v0 = swift_task_alloc();
  v1 = sub_100096790(v0);
  *v1 = v2;
  v1[1] = sub_100046160;
  sub_1001149CC();

  return sub_10010DF20();
}

uint64_t sub_100113190()
{
  sub_10003DCD8();
  sub_100096D0C();
  v0 = swift_task_alloc();
  v1 = sub_100096790(v0);
  *v1 = v2;
  v1[1] = sub_100045AB0;
  sub_1001149CC();

  return sub_10010E2BC();
}

uint64_t sub_100113220()
{
  v1 = *(v0 + 24);

  sub_100096BD0();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100113254()
{
  sub_10003DCD8();
  sub_100096D0C();
  v0 = swift_task_alloc();
  v1 = sub_100096790(v0);
  *v1 = v2;
  v1[1] = sub_100046160;
  v3 = sub_1001149CC();

  return v4(v3);
}

uint64_t sub_100113334(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10011337C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_100191860, &qword_100131D50);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001133EC(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_10010BCBC();
  *v1 = result & 1;
  return result;
}

uint64_t sub_100113458(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_10010BB4C();
  *v1 = result;
  return result;
}

uint64_t sub_10011351C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.startIndex.getter();
  }

  v3 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_10011357C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.endIndex.getter();
  }

  result = 1 << *(a1 + 32);
  v3 = *(a1 + 36);
  return result;
}

void sub_1001135D0(uint64_t a1, int a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v7 = a5;
  v9 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_100096BC4();
      __CocoaSet.element(at:)();
      sub_100025778(0, v7, a6);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100025778(0, a5, a6);
    sub_100096BC4();
    if (__CocoaSet.Index.age.getter() == *(a4 + 36))
    {
      sub_100096BC4();
      __CocoaSet.Index.element.getter();
      swift_dynamicCast();
      v7 = v16;
      v10 = NSObject._rawHashValue(seed:)(*(a4 + 40));
      v11 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v9 = v10 & v11;
        if (((*(a4 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
        {
          goto LABEL_22;
        }

        v12 = *(*(a4 + 48) + 8 * v9);
        v13 = static NSObject.== infix(_:_:)();

        if (v13)
        {
          goto LABEL_15;
        }

        v10 = v9 + 1;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_15:
  }

  v14 = *(*(a4 + 48) + 8 * v9);

  v15 = v14;
}

uint64_t sub_1001137C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      if (a2 == a5)
      {
        return a1 == a4;
      }

      __break(1u);
    }

    goto LABEL_8;
  }

  if ((a6 & 1) == 0)
  {
LABEL_8:
    __break(1u);
    return static __CocoaSet.Index.== infix(_:_:)(a1, a2, a3, a4);
  }

  a3 = a4;
  a4 = a5;
  return static __CocoaSet.Index.== infix(_:_:)(a1, a2, a3, a4);
}

uint64_t sub_10011382C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = sub_100113908(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_100113908(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, int64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_1001129C0(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_97;
    }

    result = String.UTF8View._foreignDistance(from:to:)();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_1001129C0(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_1001129C0(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_93;
  }

  if (v23 < a4 >> 16)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_92;
  }

  if (v24 < v18)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a7 + 48;
        v40 = a7 + 55;
        v41 = a7 + 87;
        if (a7 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v42 = v25 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v35 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v35;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            if (!is_mul_ok(v30, a7))
            {
              return 0;
            }

            v46 = v30 * a7;
            v47 = v44 + v45;
            v38 = __CFADD__(v46, v47);
            v30 = v46 + v47;
            if (v38)
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_96;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v48 = a7 + 48;
      v49 = a7 + 55;
      v50 = a7 + 87;
      if (a7 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v51 = *v25;
          if (v51 < 0x30 || v51 >= v48)
          {
            if (v51 < 0x41 || v51 >= v49)
            {
              v35 = 0;
              if (v51 < 0x61 || v51 >= v50)
              {
                return v35;
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

          if (!is_mul_ok(v30, a7))
          {
            return 0;
          }

          v53 = v30 * a7;
          v54 = v51 + v52;
          v38 = __CFADD__(v53, v54);
          v30 = v53 + v54;
          if (v38)
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          if (!is_mul_ok(v30, a7))
          {
            return 0;
          }

          v36 = v30 * a7;
          v37 = v33 + v34;
          v38 = v36 >= v37;
          v30 = v36 - v37;
          if (!v38)
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
  return result;
}

void sub_100113D88(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v6 = 0;
    v7 = 1 << *(a1 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(a1 + 64);
    v10 = (v7 + 63) >> 6;
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v14 = v11 | (v6 << 6);
      v15 = (*(a1 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      v18 = *(*(a1 + 56) + 8 * v14);

      v19 = v18;
      v20 = sub_100083754(v16, v17);
      v22 = v21;

      if ((v22 & 1) == 0)
      {

        return;
      }

      sub_100025778(0, a3, a4);
      v23 = *(*(a2 + 56) + 8 * v20);
      v24 = static NSObject.== infix(_:_:)();

      if ((v24 & 1) == 0)
      {
        return;
      }
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        return;
      }

      v13 = *(a1 + 64 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

unint64_t sub_100113F08(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + v12);
    result = sub_10008387C(*(*(v3 + 48) + 4 * v12));
    if ((v14 & 1) == 0 || v13 != *(*(a2 + 56) + result))
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100114010(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_10010B94C();
  *v1 = result;
  return result;
}

uint64_t sub_1001140AC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1001140F0()
{
  sub_10003DCD8();
  sub_100096D0C();
  v0 = swift_task_alloc();
  v1 = sub_100096790(v0);
  *v1 = v2;
  v1[1] = sub_100045AB0;
  v3 = sub_1001149CC();

  return v4(v3);
}

uint64_t sub_10011419C()
{
  v1 = sub_100003768(&qword_100193468, &qword_100131F78);
  sub_100008780(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_100114260(uint64_t a1)
{
  v3 = sub_100003768(&qword_100193468, &qword_100131F78);
  sub_10000ED84(v3);
  v5 = *(v4 + 80);
  v6 = *(v1 + 16);

  return sub_100111C6C(a1, v6);
}

uint64_t sub_1001142DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001142FC()
{
  v1 = sub_100003768(&qword_100193478, &qword_100131F80);
  sub_10000AF7C(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100114388()
{
  v0 = sub_100003768(&qword_100193478, &qword_100131F80);
  sub_10000ED84(v0);
  v2 = *(v1 + 80);

  return sub_1001119F0();
}

unint64_t sub_100114400()
{
  result = qword_100193480;
  if (!qword_100193480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193480);
  }

  return result;
}

unint64_t sub_100114454()
{
  result = qword_100193488;
  if (!qword_100193488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193488);
  }

  return result;
}

unint64_t sub_1001145B4()
{
  result = qword_1001934C0;
  if (!qword_1001934C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001934C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FirmwareVersionKey(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1001146F0);
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

unint64_t sub_100114770()
{
  result = qword_1001934E8;
  if (!qword_1001934E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001934E8);
  }

  return result;
}

uint64_t sub_1001147C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_10000AF7C(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1001148E0()
{

  return swift_once();
}

uint64_t sub_100114944(uint64_t result)
{
  *(v2 - 49) = result;
  v3 = *v1;
  return result;
}

BOOL sub_100114958@<W0>(uint64_t a1@<X8>)
{
  v5 = *(v2 + a1);
  v6 = *(v2 + a1 + 8);

  return sub_100109764(v5, v6, v3, v1);
}

uint64_t sub_1001149A4()
{

  return swift_beginAccess();
}

uint64_t sub_1001149FC(uint64_t a1, uint64_t a2)
{
  v5 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return sub_1000877E8(v5, a2, v2, v3);
}

uint64_t sub_100114A1C()
{

  return swift_once();
}

uint64_t sub_100114A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(a11 + 16) = a9;
  v14 = a11 + ((*(a10 + 80) + 32) & ~*(a10 + 80)) + *(a10 + 72) * v11;

  return sub_1000EAABC(v12, v14);
}

uint64_t sub_100114AA4()
{
}

uint64_t sub_100114AC8()
{

  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void sub_100114AF8()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
}

uint64_t sub_100114B14()
{

  return sub_100003768(v0, v1);
}

uint64_t sub_100114B2C(unint64_t *a1)
{

  return sub_10000AAEC(a1, v1, v2);
}

uint64_t sub_100114B44(unint64_t *a1)
{

  return sub_10000AAEC(a1, v1, v2);
}

BOOL sub_100114BC8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_100114BE4()
{
  v2 = *(v0 + 16) + 1;

  sub_1000D0BBC();
}

uint64_t sub_100114C08@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

void sub_100114C34()
{

  sub_1000D0BBC();
}

void sub_100114C54(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 8u);
}

uint64_t sub_100114C74()
{

  return swift_beginAccess();
}

uint64_t sub_100114CC0(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = sub_100008780(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v11, v4);
    return v14[1];
  }

  return a1;
}

id sub_100114DF4@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a2 & 1;
  sub_100114F14(a1, a2 & 1, a3, a4, a5);
  KeyPath = swift_getKeyPath();
  v10 = a5 + *(sub_100003768(&qword_1001934F0, &qword_1001321D8) + 36);
  *v10 = KeyPath;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  v11 = sub_100114CC0(a1, v8);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v8;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  v13 = (a5 + *(sub_100003768(&qword_1001934F8, &qword_1001321E0) + 36));
  *v13 = &type metadata for FlowListOverrideProvider;
  v13[1] = v11;
  v13[2] = sub_10011694C;
  v13[3] = v12;

  return a3;
}

uint64_t sub_100114F14@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a3;
  v50 = a4;
  v61 = a5;
  v7 = type metadata accessor for ContentMessageView();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v55 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003768(&qword_100193508, &qword_1001321F0);
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = *(v53 + 64);
  __chkstk_darwin(v10);
  v51 = &v47 - v12;
  v60 = sub_100003768(&qword_100193510, &qword_1001321F8);
  v13 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v52 = &v47 - v14;
  v59 = sub_100003768(&qword_100193518, &qword_100132200);
  v15 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v17 = &v47 - v16;
  v18 = sub_100003768(&qword_100193520, &qword_100132208);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = &v47 - v20;
  v58 = sub_100003768(&qword_100193528, &qword_100132210);
  v22 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v24 = &v47 - v23;
  v25 = type metadata accessor for FlowProgressView();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = &v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a2;
  v30 = a2 & 1;
  v31 = a1;
  sub_100114CC0(a1, v30);
  v32 = sub_10008AB14();

  if (v32)
  {
    v62 = 0;
    State.init(wrappedValue:)();
    v33 = v64;
    *(v28 + 4) = v63;
    *(v28 + 5) = v33;
    v34 = &v28[*(v25 + 28)];
    AccessibilityFocusState.init<>()();
    *v28 = 0u;
    *(v28 + 1) = 0u;
    sub_10002F15C(v28, v21);
    swift_storeEnumTagMultiPayload();
    sub_100116AD0(&qword_100189260);
    sub_100116AD0(&qword_10018FE00);
    _ConditionalContent<>.init(storage:)();
    sub_10000EC9C(v24, v17, &qword_100193528, &qword_100132210);
    swift_storeEnumTagMultiPayload();
    sub_1001169E4();
    sub_100116B14();
    _ConditionalContent<>.init(storage:)();
    sub_10000ABCC(v24, &qword_100193528, &qword_100132210);
    return sub_10002F1C0(v28);
  }

  else
  {
    v36 = v57;
    v48 = v17;
    sub_100114CC0(a1, v29 & 1);
    v37 = sub_10008A430();

    if (v37)
    {
      v39 = v37;
      v40 = v55;
      ContentMessageView.init(with:maxWidth:)();
      v41 = v56;
      (*(v56 + 16))(v21, v40, v36);
      swift_storeEnumTagMultiPayload();
      sub_100116AD0(&qword_100189260);
      sub_100116AD0(&qword_10018FE00);
      _ConditionalContent<>.init(storage:)();
      sub_10000EC9C(v24, v48, &qword_100193528, &qword_100132210);
      swift_storeEnumTagMultiPayload();
      sub_1001169E4();
      sub_100116B14();
      _ConditionalContent<>.init(storage:)();

      sub_10000ABCC(v24, &qword_100193528, &qword_100132210);
      return (*(v41 + 8))(v40, v36);
    }

    else
    {
      __chkstk_darwin(v38);
      *(&v47 - 4) = v31;
      v42 = v29 & 1;
      *(&v47 - 24) = v29 & 1;
      v43 = v50;
      *(&v47 - 2) = v49;
      *(&v47 - 1) = v43;
      sub_100003768(&qword_100193530, &qword_100132218);
      sub_100117724(&unk_100193538);
      v44 = v51;
      List<>.init(content:)();
      sub_100114CC0(v31, v42);
      type metadata accessor for FlowViewDataProvider(0);
      sub_100117724(&unk_100193540);
      sub_100116AD0(&qword_1001886D0);
      v45 = v52;
      v46 = v54;
      View.environment<A>(_:)();

      (*(v53 + 8))(v44, v46);
      sub_10011697C(v45, v48);
      swift_storeEnumTagMultiPayload();
      sub_1001169E4();
      sub_100116B14();
      _ConditionalContent<>.init(storage:)();
      return sub_100116C60(v45);
    }
  }
}

uint64_t sub_1001156E8@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v50 = a5;
  v49 = sub_100003768(&qword_100193558, &qword_100132220);
  v47 = *(v49 - 8);
  v9 = *(v47 + 64);
  v10 = __chkstk_darwin(v49);
  v48 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v42 - v12;
  v14 = sub_100003768(&qword_100193560, &qword_100132228);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v46 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v42 - v18;
  v20 = sub_100003768(&qword_100193568, &qword_100132230);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v42 - v25;
  sub_100003768(&qword_100193570, &qword_100132238);
  sub_100116CC0();
  v44 = v26;
  Section<>.init(content:)();
  v27 = a2 & 1;
  v42 = v19;
  sub_100115C24(a1, a2 & 1, v19);
  sub_100114CC0(a1, a2 & 1);
  v28 = sub_10008C6FC();

  sub_10002CBE8(v28);
  v51 = v29;
  KeyPath = swift_getKeyPath();
  v30 = swift_allocObject();
  *(v30 + 16) = a1;
  *(v30 + 24) = v27;
  *(v30 + 32) = a3;
  *(v30 + 40) = a4;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_100116E88;
  *(v31 + 24) = v30;

  v32 = a3;
  sub_100003768(&qword_100193588, &qword_100132260);
  sub_100003768(&qword_100193590, &qword_100132268);
  sub_100117724(&unk_100193598);
  sub_100116ED8(&unk_1001935A0);
  sub_100116F18();
  ForEach<>.init(_:id:content:)();

  v43 = v24;
  sub_10000EC9C(v26, v24, &qword_100193568, &qword_100132230);
  v33 = v46;
  sub_10000EC9C(v19, v46, &qword_100193560, &qword_100132228);
  v34 = v47;
  v35 = v48;
  v36 = *(v47 + 16);
  v37 = v49;
  v36(v48, v13, v49);
  v38 = v50;
  sub_10000EC9C(v24, v50, &qword_100193568, &qword_100132230);
  v39 = sub_100003768(&qword_100193600, &qword_100132298);
  sub_10000EC9C(v33, v38 + *(v39 + 48), &qword_100193560, &qword_100132228);
  v36((v38 + *(v39 + 64)), v35, v37);
  v40 = *(v34 + 8);
  v40(v13, v37);
  sub_10000ABCC(v42, &qword_100193560, &qword_100132228);
  sub_10000ABCC(v44, &qword_100193568, &qword_100132230);
  v40(v35, v37);
  sub_10000ABCC(v33, &qword_100193560, &qword_100132228);
  return sub_10000ABCC(v43, &qword_100193568, &qword_100132230);
}

uint64_t sub_100115C24@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_100003768(&qword_100193590, &qword_100132268);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  sub_100114CC0(a1, a2 & 1);
  v11 = sub_10008C4CC();

  if (v11)
  {
    type metadata accessor for FlowViewDataProvider(0);
    v12 = sub_100090E74(v11);
    v14 = v13;
    v15 = a3;
    v16 = [v11 collections];
    sub_100025778(0, &qword_10018E470, TPSCollection_ptr);
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = v17;
    v18 = swift_allocObject();
    v18[2] = v11;
    v18[3] = v12;
    v18[4] = v14;
    sub_100003768(&qword_100193608, &qword_1001322A0);
    sub_100003768(&qword_1001935B8, &qword_100132270);
    sub_100117724(&unk_100193610);
    sub_100116F9C();
    sub_100116ED8(&unk_100193618);
    ForEach<>.init(_:content:)();
    (*(v7 + 32))(v15, v10, v6);
    return sub_100003CE8(v15, 0, 1, v6);
  }

  else
  {

    return sub_100003CE8(a3, 1, 1, v6);
  }
}

uint64_t sub_100115EF4(uint64_t a1)
{
  sub_10004FC38(a1, v2);
  sub_100003768(&qword_100193500, &qword_1001321E8);
  return swift_dynamicCast();
}

uint64_t sub_100115F48@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100003768(&qword_100193648, &qword_100132318);
  swift_storeEnumTagMultiPayload();
  v2 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  result = sub_100003768(&qword_100193570, &qword_100132238);
  v12 = a1 + *(result + 36);
  *v12 = v2;
  *(v12 + 1) = v4;
  *(v12 + 2) = v6;
  *(v12 + 3) = v8;
  *(v12 + 4) = v10;
  v12[40] = 0;
  return result;
}

uint64_t sub_100115FF8(uint64_t a1, void *a2)
{
  type metadata accessor for FlowViewDataProvider(0);
  v3 = sub_100090E74(a2);
  v5 = v4;
  v6 = [a2 collections];
  sub_100025778(0, &qword_10018E470, TPSCollection_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = v3;
  v7[4] = v5;
  v8 = a2;
  sub_100003768(&qword_100193608, &qword_1001322A0);
  sub_100003768(&qword_1001935B8, &qword_100132270);
  sub_100117724(&unk_100193610);
  sub_100116F9C();
  sub_100116ED8(&unk_100193618);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1001161A4(void **a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100003768(&qword_1001935C8, &qword_100132278);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v13 = *a1;
  sub_1001165D8(v13, a2, a3, a4, &v12[-v10]);
  sub_100003768(&qword_1001935F8, &qword_100132290);
  sub_100117060();
  sub_100117724(&unk_1001935F0);
  return Section<>.init(header:content:)();
}

uint64_t sub_1001162E8(void *a1)
{
  v1 = a1;
  sub_100003768(&qword_100193620, &qword_1001322A8);
  sub_100025778(0, &qword_10018E470, TPSCollection_ptr);
  sub_10011722C(&unk_100193628);
  sub_100116ED8(&qword_100192540);
  return NavigationLink<>.init<A>(value:label:)();
}

uint64_t sub_1001163FC(void *a1)
{
  v2 = sub_100003768(&qword_100193638, &qword_1001322B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (&v14 - v4);
  *v5 = swift_getKeyPath();
  sub_100003768(&qword_10018C120, &qword_100127308);
  swift_storeEnumTagMultiPayload();
  *(v5 + *(type metadata accessor for FlowListItemView() + 20)) = a1;
  v6 = v5 + *(v2 + 36);
  v6[32] = 0;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v7 = a1;
  static String.landingListTopicFormat.getter();
  sub_100003768(&qword_100188810, &unk_100121780);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100121620;
  v9 = [v7 identifier];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100017A18();
  *(v8 + 32) = v10;
  *(v8 + 40) = v12;
  String.init(format:_:)();

  sub_1001172DC();
  View.accessibilityIdentifier(_:)();

  return sub_10000ABCC(v5, &qword_100193638, &qword_1001322B0);
}

uint64_t sub_1001165D8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_100003768(&qword_1001935D8, &qword_100132280);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v31 - v12;
  v14 = [a2 collections];
  sub_100025778(0, &qword_10018E470, TPSCollection_ptr);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (sub_100114850(v15))
  {
    sub_100096700(0, (v15 & 0xC000000000000001) == 0, v15);
    if ((v15 & 0xC000000000000001) != 0)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v16 = *(v15 + 32);
    }

    v17 = v16;

    v18 = a1;
    v19 = static NSObject.== infix(_:_:)();

    if (v19)
    {
      v35 = a3;
      v36 = a4;
      sub_10000AC24();

      v20 = Text.init<A>(_:)();
      v32 = v21;
      v33 = v20;
      v34 = v22;
      v35 = v20;
      v36 = v21;
      v24 = v23 & 1;
      v37 = v23 & 1;
      v38 = v22;
      static String.landingListCategoryFormat.getter();
      sub_100003768(&qword_100188810, &unk_100121780);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_100121620;
      v26 = [v18 identifier];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      *(v25 + 56) = &type metadata for String;
      *(v25 + 64) = sub_100017A18();
      *(v25 + 32) = v27;
      *(v25 + 40) = v29;
      String.init(format:_:)();

      sub_100003768(&qword_1001935E8, &qword_100132288);
      sub_100117110();
      View.accessibilityIdentifier(_:)();

      sub_10000AC78(v33, v32, v24);

      sub_1001171B4(v13, a5);
      return sub_100003CE8(a5, 0, 1, v10);
    }
  }

  else
  {
  }

  return sub_100003CE8(a5, 1, 1, v10);
}

uint64_t sub_10011694C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  return sub_100115EF4(a1);
}

uint64_t sub_10011697C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_100193510, &qword_1001321F8);
  sub_10000AF7C(v4);
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1001169E4()
{
  result = qword_100193548;
  if (!qword_100193548)
  {
    sub_100004D48(&qword_100193528, &qword_100132210);
    sub_100116AD0(&qword_100189260);
    sub_100116AD0(&qword_10018FE00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193548);
  }

  return result;
}

unint64_t sub_100116AD0(uint64_t a1)
{
  result = sub_100117774(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_100116B14()
{
  result = qword_100193550;
  if (!qword_100193550)
  {
    sub_100004D48(&qword_100193510, &qword_1001321F8);
    sub_100004D48(&qword_100193508, &qword_1001321F0);
    type metadata accessor for FlowViewDataProvider(255);
    sub_100117724(&unk_100193540);
    sub_100116AD0(&qword_1001886D0);
    swift_getOpaqueTypeConformance2();
    sub_10000F4E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193550);
  }

  return result;
}

uint64_t sub_100116C60(uint64_t a1)
{
  v2 = sub_100003768(&qword_100193510, &qword_1001321F8);
  sub_10000AF7C(v2);
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_100116CC0()
{
  result = qword_100193578;
  if (!qword_100193578)
  {
    sub_100004D48(&qword_100193570, &qword_100132238);
    sub_100116AD0(&unk_100193580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193578);
  }

  return result;
}

uint64_t sub_100116D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = sub_100008780(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v16 - v12;
  (*(v14 + 16))(&v16 - v12, a1);
  return a6(v13);
}

uint64_t sub_100116E40()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100116E88(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  return sub_100115FF8(a1, a2);
}

uint64_t sub_100116EA0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100116ED8(uint64_t a1)
{
  result = sub_100117774(a1);
  if (!result)
  {
    sub_100025778(255, v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_100116F18()
{
  result = qword_1001935A8;
  if (!qword_1001935A8)
  {
    sub_100004D48(&qword_100193590, &qword_100132268);
    sub_100116F9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001935A8);
  }

  return result;
}

unint64_t sub_100116F9C()
{
  result = qword_1001935B0;
  if (!qword_1001935B0)
  {
    sub_100004D48(&qword_1001935B8, &qword_100132270);
    sub_100117060();
    sub_100117724(&unk_1001935F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001935B0);
  }

  return result;
}

unint64_t sub_100117060()
{
  result = qword_1001935C0;
  if (!qword_1001935C0)
  {
    sub_100004D48(&qword_1001935C8, &qword_100132278);
    sub_10011722C(&unk_1001935D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001935C0);
  }

  return result;
}

unint64_t sub_100117110()
{
  result = qword_1001935E0;
  if (!qword_1001935E0)
  {
    sub_100004D48(&qword_1001935E8, &qword_100132288);
    sub_10000F5CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001935E0);
  }

  return result;
}

uint64_t sub_1001171B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_1001935D8, &qword_100132280);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10011722C(uint64_t a1)
{
  result = sub_100117774(a1);
  if (!result)
  {
    v6 = v5;
    sub_100004D48(v3, v4);
    v6();
    sub_100116AD0(&qword_1001887F8);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1001172DC()
{
  result = qword_100193630;
  if (!qword_100193630)
  {
    sub_100004D48(&qword_100193638, &qword_1001322B0);
    sub_100116AD0(&unk_100193640);
    sub_100117724(&qword_100188910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193630);
  }

  return result;
}

uint64_t sub_100117428()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1001174D0()
{
  result = qword_100193650;
  if (!qword_100193650)
  {
    sub_100004D48(&qword_1001934F8, &qword_1001321E0);
    sub_100117588();
    sub_100117724(&unk_100193680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193650);
  }

  return result;
}

unint64_t sub_100117588()
{
  result = qword_100193658;
  if (!qword_100193658)
  {
    sub_100004D48(&qword_1001934F0, &qword_1001321D8);
    sub_100117614();
    sub_1000BFF34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193658);
  }

  return result;
}

unint64_t sub_100117614()
{
  result = qword_100193660;
  if (!qword_100193660)
  {
    sub_100004D48(&qword_100193668, &qword_100132320);
    sub_100117698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193660);
  }

  return result;
}

unint64_t sub_100117698()
{
  result = qword_100193670;
  if (!qword_100193670)
  {
    sub_100004D48(&qword_100193678, &qword_100132328);
    sub_1001169E4();
    sub_100116B14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193670);
  }

  return result;
}

unint64_t sub_100117724(uint64_t a1)
{
  result = sub_100117774(a1);
  if (!result)
  {
    sub_100004D48(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_100117788(char a1)
{
  v2 = type metadata accessor for SupportFlowIdentifier();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for SupportFlowIdentifier.messages(_:), v2);
  v7 = SupportFlowIdentifier.rawValue.getter();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v16[0] = v7;
  v16[1] = v9;

  v10._countAndFlagsBits = 95;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);

  v11 = (a1 & 1) == 0;
  if (a1)
  {
    v12 = 0x73676E6974746573;
  }

  else
  {
    v12 = 0x7070416E65706FLL;
  }

  if (v11)
  {
    v13 = 0xE700000000000000;
  }

  else
  {
    v13 = 0xE800000000000000;
  }

  v14._countAndFlagsBits = v12;
  v14._object = v13;
  String.append(_:)(v14);

  return v16[0];
}

uint64_t sub_10011790C()
{
  v1 = type metadata accessor for SupportActionInfoType();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003EBB8(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v6 = 0xD000000000000015;
  }

  else
  {
    v6 = 0x736E6F6974706FLL;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v7 = 0x8000000100135E50;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  sub_10003EE8C(v4);
  v10[0] = 0x5F74726F70707573;
  v10[1] = 0xE800000000000000;
  v8._countAndFlagsBits = v6;
  v8._object = v7;
  String.append(_:)(v8);

  return v10[0];
}

uint64_t sub_100117A2C(char a1)
{
  v2 = type metadata accessor for SupportFlowIdentifier();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for SupportFlowIdentifier.mail(_:), v2);
  v7 = SupportFlowIdentifier.rawValue.getter();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v16[0] = v7;
  v16[1] = v9;

  v10._countAndFlagsBits = 95;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);

  v11 = (a1 & 1) == 0;
  if (a1)
  {
    v12 = 0x73746E756F636361;
  }

  else
  {
    v12 = 0x53746E756F636361;
  }

  if (v11)
  {
    v13 = 0xEF73676E69747465;
  }

  else
  {
    v13 = 0xE800000000000000;
  }

  v14._countAndFlagsBits = v12;
  v14._object = v13;
  String.append(_:)(v14);

  return v16[0];
}

uint64_t sub_100117C84()
{
  v0 = type metadata accessor for SupportFlowIdentifier();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SupportFlowIdentifier.battery(_:), v0);
  v5 = SupportFlowIdentifier.rawValue.getter();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  v11[0] = v5;
  v11[1] = v7;

  v8._countAndFlagsBits = 95;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x73676E6974746573;
  v9._object = 0xE800000000000000;
  String.append(_:)(v9);

  return v11[0];
}

uint64_t sub_100117E94(char a1)
{
  v2 = type metadata accessor for SupportFlowIdentifier();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for SupportFlowIdentifier.purchases(_:), v2);
  v7 = SupportFlowIdentifier.rawValue.getter();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v15[0] = v7;
  v15[1] = v9;

  v10._countAndFlagsBits = 95;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);

  if (a1)
  {
    if (a1 == 1)
    {
      v11 = 0xD000000000000013;
    }

    else
    {
      v11 = 0x6573616863727570;
    }

    if (a1 == 1)
    {
      v12 = 0x80000001001329E0;
    }

    else
    {
      v12 = 0xEF79726F74736948;
    }
  }

  else
  {
    v12 = 0xED0000746E656D79;
    v11 = 0x615065676E616863;
  }

  v13._countAndFlagsBits = v11;
  v13._object = v12;
  String.append(_:)(v13);

  return v15[0];
}

uint64_t sub_100118170(char a1)
{
  v2 = type metadata accessor for SupportFlowIdentifier();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for SupportFlowIdentifier.softwareUpdate(_:), v2);
  v7 = SupportFlowIdentifier.rawValue.getter();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v16[0] = v7;
  v16[1] = v9;

  v10._countAndFlagsBits = 95;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);

  v11 = (a1 & 1) == 0;
  if (a1)
  {
    v12 = 0xD000000000000010;
  }

  else
  {
    v12 = 0x616470556F747561;
  }

  if (v11)
  {
    v13 = 0xEB00000000736574;
  }

  else
  {
    v13 = 0x8000000100132FD0;
  }

  v14._countAndFlagsBits = v12;
  v14._object = v13;
  String.append(_:)(v14);

  return v16[0];
}

uint64_t sub_1001183B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_1001889F0, &qword_100121D20);

  return sub_10000E5F0(a1, a2, v4);
}

uint64_t sub_100118420(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_1001889F0, &qword_100121D20);

  return sub_100003CE8(a1, a2, a2, v4);
}

uint64_t type metadata accessor for FlowImageView()
{
  result = qword_1001936E8;
  if (!qword_1001936E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001184C4()
{
  sub_100029144();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10011854C@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v30 = sub_100003768(&qword_100193720, &qword_100132408);
  sub_10000AF7C(v30);
  v2 = *(v1 + 64);
  sub_10000ED78();
  __chkstk_darwin(v3);
  v5 = v29 - v4;
  v6 = sub_100003768(&qword_100193728, &qword_100132410);
  sub_10000AF7C(v6);
  v8 = *(v7 + 64);
  sub_10000ED78();
  __chkstk_darwin(v9);
  v11 = v29 - v10;
  v12 = sub_100003768(&qword_100193730, &qword_100132418);
  sub_10000AF7C(v12);
  v14 = *(v13 + 64);
  sub_10000ED78();
  __chkstk_darwin(v15);
  v17 = v29 - v16;
  v18 = *(*(sub_100003768(&qword_1001889F0, &qword_100121D20) - 8) + 64);
  sub_10000ED78();
  __chkstk_darwin(v19);
  v21 = v29 - v20;
  v22 = type metadata accessor for FlowImage();
  v23 = sub_10000AF7C(v22);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000EC9C(v29[1], v21, &qword_1001889F0, &qword_100121D20);
  if (sub_10000E5F0(v21, 1, v22) == 1)
  {
    sub_10000ABCC(v21, &qword_1001889F0, &qword_100121D20);
    swift_storeEnumTagMultiPayload();
    sub_100119018();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    sub_1001194FC(v21, v27, type metadata accessor for FlowImage);
    sub_100118878(v27, v11);
    sub_100119160();
    View.accessibilityHidden(_:)();
    sub_10000ABCC(v11, &qword_100193728, &qword_100132410);
    v17[*(v12 + 36)] = 1;
    sub_10000EC9C(v17, v5, &qword_100193730, &qword_100132418);
    swift_storeEnumTagMultiPayload();
    sub_100119018();
    _ConditionalContent<>.init(storage:)();
    sub_10000ABCC(v17, &qword_100193730, &qword_100132418);
    return sub_1001195BC(v27, type metadata accessor for FlowImage);
  }
}

uint64_t sub_100118878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v44 = a2;
  v45 = type metadata accessor for FlowSymbolView();
  v2 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FlowSymbol();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_100003768(&qword_100193798, &qword_100132438);
  v9 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v11 = &v40 - v10;
  v12 = sub_100003768(&qword_1001937A0, &qword_100132440);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v40 - v14;
  v43 = sub_100003768(&qword_100193770, &qword_100132430);
  v16 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v18 = &v40 - v17;
  v40 = type metadata accessor for FlowAssetView();
  v19 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FlowAsset();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for FlowImage();
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v29 = &v40 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10011955C(v41, v29, type metadata accessor for FlowImage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v31 = *v29;
      v32 = *(v29 + 1);
      v49[0] = *(v29 + 17);
      *(v49 + 3) = *(v29 + 5);
      v33 = *(v29 + 3);
      v34 = *(v29 + 3);
      v47 = *(v29 + 2);
      v48 = v34;
      v35 = v29[16];
      *&__src[0] = swift_getKeyPath();
      BYTE8(__src[0]) = 0;
      *&__src[1] = v31;
      *(&__src[1] + 1) = v32;
      LOBYTE(__src[2]) = v35;
      *(&__src[2] + 1) = v49[0];
      DWORD1(__src[2]) = *(v49 + 3);
      *(&__src[2] + 1) = v33;
      __src[3] = v47;
      __src[4] = v48;
      memcpy(v15, __src, 0x50uLL);
      swift_storeEnumTagMultiPayload();
      sub_1001194A0();
      v36 = v33;
      sub_100010CE4(__src, v46);
      sub_1001193B0(&qword_100193778, type metadata accessor for FlowAssetView);
      sub_10011935C();
      _ConditionalContent<>.init(storage:)();
      sub_10000EC9C(v18, v11, &qword_100193770, &qword_100132430);
      swift_storeEnumTagMultiPayload();
      sub_1001192A0();
      sub_1001193B0(&qword_100193788, type metadata accessor for FlowSymbolView);
      _ConditionalContent<>.init(storage:)();
      sub_1001194A8(__src);
      sub_100010CD4();

      return sub_10000ABCC(v18, &qword_100193770, &qword_100132430);
    }

    sub_1001194FC(v29, v8, type metadata accessor for FlowSymbol);
    sub_10011955C(v8, v4, type metadata accessor for FlowSymbol);
    sub_10011955C(v4, v11, type metadata accessor for FlowSymbolView);
    swift_storeEnumTagMultiPayload();
    sub_1001192A0();
    sub_1001193B0(&qword_100193788, type metadata accessor for FlowSymbolView);
    _ConditionalContent<>.init(storage:)();
    sub_1001195BC(v4, type metadata accessor for FlowSymbolView);
    v38 = type metadata accessor for FlowSymbol;
    v39 = v8;
  }

  else
  {
    sub_1001194FC(v29, v25, type metadata accessor for FlowAsset);
    sub_10011955C(v25, v21, type metadata accessor for FlowAsset);
    sub_10011955C(v21, v15, type metadata accessor for FlowAssetView);
    swift_storeEnumTagMultiPayload();
    sub_1001193B0(&qword_100193778, type metadata accessor for FlowAssetView);
    sub_10011935C();
    _ConditionalContent<>.init(storage:)();
    sub_10000EC9C(v18, v11, &qword_100193770, &qword_100132430);
    swift_storeEnumTagMultiPayload();
    sub_1001192A0();
    sub_1001193B0(&qword_100193788, type metadata accessor for FlowSymbolView);
    _ConditionalContent<>.init(storage:)();
    sub_10000ABCC(v18, &qword_100193770, &qword_100132430);
    sub_1001195BC(v21, type metadata accessor for FlowAssetView);
    v38 = type metadata accessor for FlowAsset;
    v39 = v25;
  }

  return sub_1001195BC(v39, v38);
}

unint64_t sub_100119018()
{
  result = qword_100193738;
  if (!qword_100193738)
  {
    sub_100004D48(&qword_100193730, &qword_100132418);
    sub_1001190A4();
    sub_1001193F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193738);
  }

  return result;
}

unint64_t sub_1001190A4()
{
  result = qword_100193740;
  if (!qword_100193740)
  {
    sub_100004D48(&qword_100193748, &qword_100132420);
    sub_100119160();
    sub_1001193B0(&qword_1001887F8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193740);
  }

  return result;
}

unint64_t sub_100119160()
{
  result = qword_100193750;
  if (!qword_100193750)
  {
    sub_100004D48(&qword_100193728, &qword_100132410);
    sub_1001191E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193750);
  }

  return result;
}

unint64_t sub_1001191E4()
{
  result = qword_100193758;
  if (!qword_100193758)
  {
    sub_100004D48(&qword_100193760, &qword_100132428);
    sub_1001192A0();
    sub_1001193B0(&qword_100193788, type metadata accessor for FlowSymbolView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193758);
  }

  return result;
}

unint64_t sub_1001192A0()
{
  result = qword_100193768;
  if (!qword_100193768)
  {
    sub_100004D48(&qword_100193770, &qword_100132430);
    sub_1001193B0(&qword_100193778, type metadata accessor for FlowAssetView);
    sub_10011935C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193768);
  }

  return result;
}

unint64_t sub_10011935C()
{
  result = qword_100193780;
  if (!qword_100193780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193780);
  }

  return result;
}

uint64_t sub_1001193B0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001193F8()
{
  result = qword_100193790;
  if (!qword_100193790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193790);
  }

  return result;
}

uint64_t sub_10011944C@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.displayScale.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1001194FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_10000AF7C(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_10011955C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_10000AF7C(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1001195BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10000AF7C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_100119618()
{
  result = qword_1001937A8;
  if (!qword_1001937A8)
  {
    sub_100004D48(&qword_1001937B0, &qword_100132478);
    sub_100119018();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001937A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GeneralPlacardInfoItemType(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x100119750);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100119788()
{
  v0 = type metadata accessor for UUID();
  v29 = *(v0 - 8);
  v30 = v0;
  v1 = *(v29 + 64);
  __chkstk_darwin(v0);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003768(&qword_1001889F0, &qword_100121D20);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v28 - v9;
  v11 = type metadata accessor for FlowImage();
  sub_100003CE8(v10, 1, 1, v11);
  if (qword_1001883C0 != -1)
  {
    swift_once();
  }

  v12 = sub_10000C2D4(v11, qword_1001937F0);
  sub_100053ED8(v12, v8);
  sub_1000B2330(v10);
  sub_100003CE8(v8, 0, 1, v11);
  sub_1000B2398(v8, v10);
  if (qword_1001883A0 != -1)
  {
    swift_once();
  }

  v13 = qword_1001937B8;
  v14 = unk_1001937C0;
  v15 = qword_1001883A8;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_1001937C8;
  v17 = unk_1001937D0;
  v18 = qword_1001883B8;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_1001937E8;
  sub_1000295B0(v10, v8);
  v32 = &type metadata for GeneralPlacardInfoItemType;
  v33 = sub_10011A0C8();
  swift_retain_n();
  UUID.init()();
  v20 = UUID.uuidString.getter();
  v22 = v21;
  (*(v29 + 8))(v3, v30);
  v23 = type metadata accessor for PlacardInfoItem(0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = sub_1000F04E8(0, v20, v22, v8, v13, v14, v16, v17, v19, v31);

  sub_1000B2330(v10);
  return v26;
}

BOOL sub_100119AB8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100177478, v2);

  return v3 != 0;
}

BOOL sub_100119B0C@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100119AB8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100119B64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000E7750();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100119B8C(uint64_t a1)
{
  result = sub_100119BB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100119BB4()
{
  result = qword_100193808;
  if (!qword_100193808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193808);
  }

  return result;
}

unint64_t sub_100119C0C()
{
  result = qword_100193810;
  if (!qword_100193810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193810);
  }

  return result;
}

uint64_t sub_100119C60()
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
  qword_1001937B8 = result;
  unk_1001937C0 = v5;
  return result;
}

uint64_t sub_100119D68()
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
  qword_1001937C8 = result;
  unk_1001937D0 = v5;
  return result;
}

uint64_t sub_100119E70()
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
  qword_1001937D8 = result;
  unk_1001937E0 = v5;
  return result;
}

uint64_t sub_100119F78()
{
  type metadata accessor for ActionInfo(0);
  if (qword_1001883B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1001937D8;
  v1 = unk_1001937E0;

  v2 = sub_1000EDA28(v0, v1, 0xD00000000000004DLL, 0x800000010013AA00);

  qword_1001937E8 = v2;
  return result;
}

uint64_t sub_10011A024()
{
  v0 = type metadata accessor for FlowImage();
  sub_10000C270(v0, qword_1001937F0);
  v1 = sub_10000C2D4(v0, qword_1001937F0);
  v1->i64[0] = 0xD00000000000001ALL;
  v1->i64[1] = 0x800000010013AB40;
  v1[1].i8[0] = 0;
  v1[1].i64[1] = 0;
  v1[2].i64[0] = 0;
  v1[2].i8[8] = 1;
  v1[3] = vdupq_n_s64(0x4046000000000000uLL);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_10011A0C8()
{
  result = qword_100193818;
  if (!qword_100193818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193818);
  }

  return result;
}

uint64_t sub_10011A148(uint64_t a1, char a2)
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

uint64_t sub_10011A288@<X0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100058208(a3);
  v10 = v9;
  v11 = a2 & 1;
  sub_10011A148(a1, a2 & 1);
  v12 = sub_1000DEC54(a3, 0);

  *(a4 + 72) = &type metadata for MessagesStepProvider;
  *(a4 + 80) = sub_10001362C();
  *(a4 + 48) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v11;
  *(v13 + 32) = a3;
  type metadata accessor for FlowViewDataProvider(0);

  sub_1000136E0(a3);
  sub_10000B550();
  *a4 = Environment.init<A>(_:)();
  *(a4 + 8) = v14 & 1;
  if (qword_1001881C8 != -1)
  {
    swift_once();
  }

  *(a4 + 16) = qword_1001A5738;

  sub_100003768(&qword_10018A630, &qword_100128450);
  result = State.init(wrappedValue:)();
  *(a4 + 96) = v13;
  *(a4 + 104) = v16;
  *(a4 + 112) = v17;
  *(a4 + 120) = v18;
  *(a4 + 32) = v8;
  *(a4 + 40) = v10;
  *(a4 + 24) = 0;
  *(a4 + 88) = sub_10011A4DC;
  return result;
}

uint64_t sub_10011A42C(uint64_t a1, char a2, unint64_t a3)
{
  sub_10011A148(a1, a2 & 1);
  sub_1000DF334(a3);
}

uint64_t sub_10011A494()
{
  v1 = *(v0 + 16);

  if (*(v0 + 32) >= 0xAuLL)
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10011A4F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_10011A534(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10011A5B8()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

void *sub_10011A6F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ActionInfoType(0);
  v36 = *(v4 - 8);
  v5 = v36;
  v6 = *(v36 + 64);
  v7 = __chkstk_darwin(v4);
  v37 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v35 - v10;
  __chkstk_darwin(v9);
  v13 = &v35 - v12;
  v14 = v2[5];
  v40 = v2[4];
  v39 = v14;
  *(&v35 - v12) = 1;
  swift_storeEnumTagMultiPayload();
  sub_100003768(&qword_1001888B8, &unk_100121B70);
  v15 = *(type metadata accessor for FlowStepContentOption() - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  v35 = xmmword_100121620;
  *(v18 + 16) = xmmword_100121620;
  v19 = (v18 + v17);
  v20 = v2[3];
  *v19 = v2[2];
  v19[1] = v20;
  swift_storeEnumTagMultiPayload();

  v38 = sub_1000FF880(v18);
  sub_10000B4E0((v2 + 6), v45);
  sub_10011AE1C(v2, v44);
  sub_10011B058();
  v21 = swift_allocObject();
  sub_10011B03C(v21);
  sub_100003768(&qword_10018C108, &unk_10012AB40);
  v22 = *(v5 + 72);
  v23 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v35;
  sub_10003F5BC(v13, v24 + v23);
  sub_10000B4E0(v45, v43);
  sub_10000B4E0(v43, v42);
  v41 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  type metadata accessor for ActionInfo(0);
  sub_10003F5BC(v24 + v23, v11);
  swift_setDeallocating();
  sub_10006EB94();
  v25 = v37;
  sub_10003F5BC(v11, v37);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_10011AE58;
  *(v26 + 24) = v21;

  sub_1000ED69C(v25, 1, sub_10005A438, v26);
  sub_10003F620(v11);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v27 = v41[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v28 = v41;
  sub_10000B4E0(v42, a1 + 56);
  type metadata accessor for FlowViewDataProvider(0);
  sub_10000B550();
  v29 = Environment.init<A>(_:)();
  LOBYTE(v25) = v30;

  sub_10001D724(v42, &qword_100189310, &qword_1001221A0);
  sub_10001D724(v43, &qword_100189310, &qword_1001221A0);
  sub_10001D724(v45, &qword_100189310, &qword_1001221A0);
  sub_10003F620(v13);
  *a1 = v29;
  *(a1 + 8) = v25 & 1;
  v31 = v39;
  *(a1 + 16) = v40;
  *(a1 + 24) = v31;
  *(a1 + 32) = v28;
  *(a1 + 40) = 0;
  *(a1 + 48) = v38;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  sub_10011AE1C(v2, v44);
  sub_10011B058();
  v32 = swift_allocObject();
  sub_10011B03C(v32);
  *(a1 + 112) = sub_10011AEC8;
  *(a1 + 120) = v32;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  sub_10011AE1C(v2, v44);
  sub_10011B058();
  v33 = swift_allocObject();
  result = sub_10011B03C(v33);
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = sub_10011AF34;
  *(a1 + 168) = v33;
  return result;
}

uint64_t sub_10011ABD4(uint64_t a1)
{
  v2 = sub_100003768(&qword_100189750, &qword_10012CC00);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v10 - v4;
  sub_10011A5B8();
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  static ReentrySignal.resetNetworkSettings.getter();
  v8 = type metadata accessor for ReentrySignal();
  sub_100003CE8(v5, 0, 1, v8);
  sub_100085E7C();

  return sub_10001D724(v5, &qword_100189750, &qword_10012CC00);
}

uint64_t sub_10011ACB8(uint64_t *a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8) == 1)
  {
    v10[1] = *a1;
  }

  else
  {
    v7 = *a1;

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  return static DeviceEventCoordinator.clearReentryNotification()();
}

uint64_t sub_10011AE58()
{
  v1 = *(v0 + 104);
  if (v1)
  {
    v2 = *(v0 + 112);
    return v1();
  }

  return result;
}

uint64_t sub_10011AE88()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10011AED0()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[7];

  if (v0[11])
  {
    sub_1000086BC(v0 + 8);
  }

  if (v0[13])
  {
    v4 = v0[14];
  }

  sub_10011B058();

  return _swift_deallocObject(v5, v6, v7);
}

uint64_t sub_10011AFB0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

void *sub_10011B03C(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, (v1 - 232), 0x68uLL);
}

id sub_10011B098()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100193840 = result;
  return result;
}

uint64_t sub_10011B128()
{
  v0 = type metadata accessor for ImageResource();
  sub_10000C270(v0, qword_1001A59F8);
  sub_10011B6B0();
  if (qword_1001883C8 != -1)
  {
    sub_10011B690();
  }

  v1 = qword_100193840;
  sub_10011B6D0();
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10011B1C8()
{
  v0 = type metadata accessor for ImageResource();
  sub_10000C270(v0, qword_1001A5A28);
  sub_10011B6B0();
  if (qword_1001883C8 != -1)
  {
    sub_10011B690();
  }

  v1 = qword_100193840;
  sub_10011B6D0();
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10011B24C()
{
  v0 = type metadata accessor for ImageResource();
  sub_10000C270(v0, qword_1001A5A40);
  sub_10011B6B0();
  if (qword_1001883C8 != -1)
  {
    sub_10011B690();
  }

  v1 = qword_100193840;
  sub_10011B6D0();
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10011B33C()
{
  v0 = type metadata accessor for ImageResource();
  sub_10000C270(v0, qword_1001A5AA0);
  sub_10011B6B0();
  if (qword_1001883C8 != -1)
  {
    sub_10011B690();
  }

  v1 = qword_100193840;
  sub_10011B6D0();
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10011B3EC(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for ImageResource();
  sub_10000C270(v3, a2);
  sub_10000C2D4(v3, a2);
  if (qword_1001883C8 != -1)
  {
    sub_10011B690();
  }

  v4 = qword_100193840;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10011B480()
{
  v0 = type metadata accessor for ImageResource();
  sub_10000C270(v0, qword_1001A5AD0);
  sub_10011B6B0();
  if (qword_1001883C8 != -1)
  {
    sub_10011B690();
  }

  v1 = qword_100193840;
  sub_10011B6D0();
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10011B504()
{
  v0 = type metadata accessor for ImageResource();
  sub_10000C270(v0, qword_1001A5AE8);
  sub_10011B6B0();
  if (qword_1001883C8 != -1)
  {
    sub_10011B690();
  }

  v1 = qword_100193840;
  sub_10011B6D0();
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10011B588()
{
  v0 = type metadata accessor for ImageResource();
  sub_10000C270(v0, qword_1001A5B00);
  sub_10011B6B0();
  if (qword_1001883C8 != -1)
  {
    sub_10011B690();
  }

  v1 = qword_100193840;
  sub_10011B6D0();
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10011B60C()
{
  v0 = type metadata accessor for ImageResource();
  sub_10000C270(v0, qword_1001A5B18);
  sub_10011B6B0();
  if (qword_1001883C8 != -1)
  {
    sub_10011B690();
  }

  v1 = qword_100193840;
  sub_10011B6D0();
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10011B690()
{

  return swift_once();
}

uint64_t sub_10011B6F8(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_1001A5658 == -1)
  {
    if (qword_1001A5660)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_10011BBC0();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1001A5660)
    {
      return _availability_version_check();
    }
  }

  if (qword_1001A5650 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_10011BBD8();
    a3 = v10;
    a4 = v9;
    v8 = dword_1001A5640 < v11;
    if (dword_1001A5640 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1001A5644 > a3)
      {
        return 1;
      }

      if (dword_1001A5644 >= a3)
      {
        return dword_1001A5648 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_1001A5640 < a2;
  if (dword_1001A5640 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_10011B88C(uint64_t result)
{
  v1 = qword_1001A5660;
  if (qword_1001A5660)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_1001A5660 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_1001A5640, &dword_1001A5644, &dword_1001A5648);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}

Swift::Int_optional __swiftcall DeviceEventCoordinator.recentSoftwareUpdateErrorCode()()
{
  updated = DeviceEventCoordinator.recentSoftwareUpdateErrorCode()();
  result.value = updated;
  result.is_nil = v1;
  return result;
}

uint64_t GeneratedContent.value<A>(_:forProperty:)()
{
  return GeneratedContent.value<A>(_:forProperty:)();
}

{
  return GeneratedContent.value<A>(_:forProperty:)();
}

uint64_t ModifiedContent<>.accessibilityLabel(_:)()
{
  return ModifiedContent<>.accessibilityLabel(_:)();
}

{
  return ModifiedContent<>.accessibilityLabel(_:)();
}

uint64_t View.onChange<A>(of:initial:_:)()
{
  return View.onChange<A>(of:initial:_:)();
}

{
  return View.onChange<A>(of:initial:_:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t Substring.subscript.getter()
{
  return Substring.subscript.getter();
}

{
  return Substring.subscript.getter();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}