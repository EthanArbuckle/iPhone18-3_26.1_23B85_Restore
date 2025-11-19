uint64_t sub_1006F0D1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v42 = a1;
  v47 = a2;
  v41 = type metadata accessor for Font.TextStyle();
  v2 = *(v41 - 8);
  __chkstk_darwin(v41);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10022C350(&qword_100CD3868);
  __chkstk_darwin(v43);
  v6 = &v38 - v5;
  v45 = sub_10022C350(&qword_100CD3870);
  v40 = *(v45 - 8);
  __chkstk_darwin(v45);
  v39 = &v38 - v7;
  v8 = sub_10022C350(&qword_100CD3878);
  __chkstk_darwin(v8 - 8);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v44 = &v38 - v11;
  v12 = objc_opt_self();
  v13 = [v12 mainBundle];
  v54._object = 0x8000000100ADBC20;
  v14._countAndFlagsBits = 0x736572705F776F4CLL;
  v14._object = 0xEC00000065727573;
  v15._countAndFlagsBits = 7827276;
  v15._object = 0xE300000000000000;
  v54._countAndFlagsBits = 0xD00000000000002ELL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v54);

  v16 = [v12 mainBundle];
  v55._object = 0x8000000100ADBC50;
  v17._countAndFlagsBits = 0x6572705F68676948;
  v17._object = 0xED00006572757373;
  v55._countAndFlagsBits = 0xD00000000000002FLL;
  v18._countAndFlagsBits = 1751607624;
  v18._object = 0xE400000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v55);

  v19 = String.count.getter();

  if (v19 > 4)
  {

    goto LABEL_5;
  }

  v20 = String.count.getter();

  if (v20 >= 5)
  {
LABEL_5:
    v27 = static VerticalAlignment.lastTextBaseline.getter();
    v51 = 1;
    sub_1006F1CA8(v42, v49);
    memcpy(v52, v49, 0x69uLL);
    memcpy(__dst, v49, 0x69uLL);
    sub_1000302D8(v52, &v48, &qword_100CD3880);
    sub_10003FDA0(__dst, &qword_100CD3880);
    memcpy(&v50[7], v52, 0x69uLL);
    v28 = v51;
    v29 = v41;
    (*(v2 + 104))(v4, enum case for Font.TextStyle.subheadline(_:), v41);
    static Font.Weight.semibold.getter();
    v30 = static Font.system(_:weight:)();
    (*(v2 + 8))(v4, v29);
    KeyPath = swift_getKeyPath();
    *v6 = v27;
    *(v6 + 1) = 0;
    v6[16] = v28;
    memcpy(v6 + 17, v50, 0x70uLL);
    *(v6 + 17) = KeyPath;
    *(v6 + 18) = v30;
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CD3888);
    v32 = sub_10022E824(&qword_100CD3890);
    v33 = sub_1006F39F8();
    v49[0] = v32;
    v49[1] = v33;
    swift_getOpaqueTypeConformance2();
    sub_1006F3AE0();
    v26 = v44;
    _ConditionalContent<>.init(storage:)();
    goto LABEL_6;
  }

  v21 = v39;
  sub_1006F1388(v39);
  v22 = v40;
  v23 = v45;
  (*(v40 + 16))(v6, v21, v45);
  swift_storeEnumTagMultiPayload();
  sub_10022C350(&qword_100CD3888);
  v24 = sub_10022E824(&qword_100CD3890);
  v25 = sub_1006F39F8();
  __dst[0] = v24;
  __dst[1] = v25;
  swift_getOpaqueTypeConformance2();
  sub_1006F3AE0();
  v26 = v44;
  _ConditionalContent<>.init(storage:)();
  (*(v22 + 8))(v21, v23);
LABEL_6:
  v34 = v46;
  sub_1000302D8(v26, v46, &qword_100CD3878);
  v35 = v47;
  *v47 = 0;
  *(v35 + 8) = 1;
  v36 = sub_10022C350(&qword_100CD38C8);
  sub_1000302D8(v34, v35 + *(v36 + 48), &qword_100CD3878);
  sub_10003FDA0(v26, &qword_100CD3878);
  return sub_10003FDA0(v34, &qword_100CD3878);
}

uint64_t sub_1006F1388@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v29 = type metadata accessor for TypesettingLanguageAwareLineHeightRatio();
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CD3890);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v26 = static VerticalAlignment.lastTextBaseline.getter();
  v33 = 1;
  sub_1006F1974(v31);
  memcpy(v34, v31, 0xC9uLL);
  memcpy(v35, v31, 0xC9uLL);
  sub_1000302D8(v34, &v30, &qword_100CD38D0);
  sub_10003FDA0(v35, &qword_100CD38D0);
  memcpy(&v32[7], v34, 0xC9uLL);
  v25 = v33;
  v24 = static Font.subheadline.getter();
  v23 = static Font.footnote.getter();
  v11 = (v1 + *(type metadata accessor for PressureComponentContentView(0) + 20));
  v12 = *v11;
  if (*(v11 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v13 = v5;
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v12, 0);
    (*(v13 + 8))(v7, v4);
    LOBYTE(v12) = v31[0];
  }

  v15 = &v10[*(v8 + 36)];
  v16 = type metadata accessor for FontWithSmallVariantModifier();
  v17 = *(v16 + 24);
  v18 = enum case for Font.Leading.tight(_:);
  v19 = type metadata accessor for Font.Leading();
  (*(*(v19 - 8) + 104))(v15 + v17, v18, v19);
  sub_10001B350(v15 + v17, 0, 1, v19);
  v20 = v23;
  *v15 = v24;
  v15[1] = v20;
  *(v15 + *(v16 + 28)) = v12 & 1;
  *v10 = v26;
  *(v10 + 1) = 0;
  v10[16] = v25;
  memcpy(v10 + 17, v32, 0xD0uLL);
  static TypesettingLanguageAwareLineHeightRatio.disable.getter();
  sub_1006F39F8();
  View.typesettingLanguageAwareLineHeightRatio(_:isEnabled:)();
  (*(v27 + 8))(v3, v29);
  return sub_10003FDA0(v10, &qword_100CD3890);
}

uint64_t sub_1006F1768@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CD3920);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  v9 = *(type metadata accessor for RoundedRectangle() + 20);
  v10 = enum case for RoundedCornerStyle.continuous(_:);
  v11 = type metadata accessor for RoundedCornerStyle();
  (*(*(v11 - 8) + 104))(&v8[v9], v10, v11);
  __asm { FMOV            V0.2D, #2.0 }

  *v8 = _Q0;
  v17 = static Color.white.getter();
  v18 = sub_10022C350(&qword_100CBDCE8);
  *&v8[*(v18 + 52)] = v17;
  *&v8[*(v18 + 56)] = 256;
  KeyPath = swift_getKeyPath();
  v20 = &v8[*(sub_10022C350(&qword_100CD3928) + 36)];
  *v20 = xmmword_100A7A3F0;
  *(v20 + 1) = xmmword_100A7A400;
  *(v20 + 4) = KeyPath;
  v20[40] = 0;
  *&v8[*(v3 + 44)] = xmmword_100A7A410;
  sub_1000302D8(v8, v5, &qword_100CD3920);
  sub_1000302D8(v5, a1, &qword_100CD3920);
  v21 = a1 + *(sub_10022C350(&qword_100CD3930) + 48);
  *v21 = 0;
  *(v21 + 8) = 1;
  sub_10003FDA0(v8, &qword_100CD3920);
  return sub_10003FDA0(v5, &qword_100CD3920);
}

uint64_t sub_1006F1974@<X0>(uint64_t a1@<X8>)
{
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v54._object = 0x8000000100ADBC20;
  v3._countAndFlagsBits = 0x736572705F776F4CLL;
  v3._object = 0xEC00000065727573;
  v4._countAndFlagsBits = 7827276;
  v4._object = 0xE300000000000000;
  v54._countAndFlagsBits = 0xD00000000000002ELL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v54);

  sub_10002D5A4();
  v5 = Text.init<A>(_:)();
  v20 = v6;
  v21 = v5;
  v8 = v7;
  v19 = v9;
  KeyPath = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v49 = 1;
  v48 = v42;
  v47 = v44;
  v10 = [v1 mainBundle];
  v55._object = 0x8000000100ADBC50;
  v11._countAndFlagsBits = 0x6572705F68676948;
  v11._object = 0xED00006572757373;
  v55._countAndFlagsBits = 0xD00000000000002FLL;
  v12._countAndFlagsBits = 1751607624;
  v12._object = 0xE400000000000000;
  object = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v55)._object;

  v29 = object;
  LOBYTE(v52[0]) = 0;
  v39 = 0;
  v40 = 1;
  *&v36 = v21;
  *(&v36 + 1) = v20;
  LOBYTE(v37) = v8 & 1;
  *(&v37 + 1) = v19;
  *v38 = KeyPath;
  *&v38[8] = 1;
  v38[16] = 0;
  *&v38[17] = 257;
  v41[0] = &v39;
  v41[1] = &v36;
  v28 = 0;
  LOBYTE(v29) = 1;
  v30 = v41[5];
  v31 = v42;
  v32 = v43;
  v33 = v44;
  v34 = v45;
  v35 = v46;
  *&v25 = Text.init<A>(_:)();
  *(&v25 + 1) = v14;
  LOBYTE(v26) = v15 & 1;
  *(&v26 + 1) = v16;
  *v27 = swift_getKeyPath();
  *&v27[8] = 1;
  v27[16] = 0;
  *&v27[17] = 257;
  v41[2] = &v28;
  v41[3] = &v25;
  v23 = 0;
  v24 = 1;
  v41[4] = &v23;
  sub_1003E9560(v41, a1);
  v50[0] = v25;
  v50[1] = v26;
  v51[0] = *v27;
  *(v51 + 15) = *&v27[15];
  sub_10003FDA0(v50, &qword_100CACF40);
  v52[0] = v36;
  v52[1] = v37;
  v53[0] = *v38;
  *(v53 + 15) = *&v38[15];
  return sub_10003FDA0(v52, &qword_100CACF40);
}

uint64_t sub_1006F1CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Image.init(systemName:)();
  v9 = (a1 + *(type metadata accessor for PressureComponentContentView(0) + 20));
  v10 = *v9;
  if (*(v9 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v10, 0);
    (*(v5 + 8))(v7, v4);
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v12 = v36;
  v13 = v38;
  v14 = v40;
  v15 = v41;
  v35 = 1;
  v34 = v37;
  v33 = v39;
  v16 = Image.init(systemName:)();
  v29 = v8;
  v30 = 0;
  v31 = 1;
  v32[0] = &v30;
  v32[1] = &v29;
  v21 = 0;
  v22 = v35;
  v23 = v12;
  v24 = v34;
  v25 = v13;
  v26 = v33;
  v27 = v14;
  v28 = v15;
  v20 = v16;
  v32[2] = &v21;
  v32[3] = &v20;
  v18 = 0;
  v19 = 1;
  v32[4] = &v18;
  sub_1003E96A0(v32, a2);
}

void *sub_1006F1F5C@<X0>(uint64_t a1@<X8>)
{
  v3 = static VerticalAlignment.center.getter();
  v9 = 0;
  sub_1006F2030(v1, __src);
  memcpy(__dst, __src, 0x161uLL);
  memcpy(v11, __src, 0x161uLL);
  sub_1000302D8(__dst, &v6, &qword_100CD3778);
  sub_10003FDA0(v11, &qword_100CD3778);
  memcpy(&v8[7], __dst, 0x161uLL);
  v4 = v9;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  return memcpy((a1 + 17), v8, 0x168uLL);
}

uint64_t sub_1006F2030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5)
  {
    sub_10022C350(&qword_100CB59A8);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100A2D320;
    v7 = static Axis.Set.horizontal.getter();
    *(v6 + 32) = v7;
    v8 = static Axis.Set.vertical.getter();
    *(v6 + 33) = v8;
    v9 = Axis.Set.init(rawValue:)();
    Axis.Set.init(rawValue:)();
    if (Axis.Set.init(rawValue:)() != v7)
    {
      v9 = Axis.Set.init(rawValue:)();
    }

    Axis.Set.init(rawValue:)();
    if (Axis.Set.init(rawValue:)() != v8)
    {
      v9 = Axis.Set.init(rawValue:)();
    }

    sub_1006F2398(a1, __src);
    memcpy(__dst, __src, 0x140uLL);
    memcpy(v14, __src, 0x140uLL);
    sub_1000302D8(__dst, v18, &qword_100CD3780);
    sub_10003FDA0(v14, &qword_100CD3780);
    memcpy(&v17[7], __dst, 0x140uLL);
    LOBYTE(__src[0]) = v9;
    memcpy(__src + 1, v17, 0x147uLL);
    __src[41] = 0x3FF0000000000000;
    sub_1006F3814(__src);
  }

  else
  {
    v10 = static HorizontalAlignment.leading.getter();
    v16[0] = 1;
    sub_1006F2920(a1, __src);
    memcpy(__dst, __src, 0x90uLL);
    memcpy(v14, __src, 0x90uLL);
    sub_1000302D8(__dst, v18, &qword_100CD37D0);
    sub_10003FDA0(v14, &qword_100CD37D0);
    memcpy(&v12[7], __dst, 0x90uLL);
    __src[0] = v10;
    __src[1] = 0;
    LOBYTE(__src[2]) = v16[0];
    memcpy(&__src[2] + 1, v12, 0x97uLL);
    __src[21] = 0x3FF0000000000000;
    sub_1006F39E8(__src);
  }

  memcpy(v16, __src, 0x151uLL);
  sub_10022C350(&qword_100CD3788);
  sub_10022C350(&qword_100CD3790);
  sub_1006F3820();
  sub_1006F3904();
  _ConditionalContent<>.init(storage:)();
  memcpy(v16, v18, 0x151uLL);
  memcpy(v14, v18, 0x151uLL);
  memcpy(__src, v18, 0x151uLL);
  __dst[344] = 0;
  memcpy(a2, __src, 0x158uLL);
  *(a2 + 344) = 0;
  *(a2 + 352) = 0;
  sub_1000302D8(v14, __dst, &qword_100CD37C8);
  return sub_10003FDA0(v16, &qword_100CD37C8);
}

uint64_t sub_1006F2398@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = static VerticalAlignment.lastTextBaseline.getter();
  sub_1006F2614(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v15, __src, sizeof(v15));
  sub_1000302D8(__dst, v19, &qword_100CD37E0);
  sub_10003FDA0(v15, &qword_100CD37E0);
  memcpy(&v13[7], __dst, 0x78uLL);
  v5 = static HorizontalAlignment.leading.getter();
  LOBYTE(v7[0]) = 1;
  sub_1006F2920(a1, __src);
  memcpy(v16, __src, sizeof(v16));
  memcpy(v17, __src, sizeof(v17));
  sub_1000302D8(v16, v19, &qword_100CD37D0);
  sub_10003FDA0(v17, &qword_100CD37D0);
  memcpy(&v12[7], v16, 0x90uLL);
  v18[0] = v4;
  v18[1] = 0x4030000000000000;
  LOBYTE(v18[2]) = 0;
  memcpy(&v18[2] + 1, v13, 0x7FuLL);
  LOWORD(v18[18]) = 257;
  memcpy(v11, v18, 0x92uLL);
  v19[0] = v5;
  v19[1] = 0;
  LOBYTE(v19[2]) = 1;
  memcpy(&v19[2] + 1, v12, 0x97uLL);
  memcpy(&v11[152], v19, 0xA8uLL);
  memcpy(a2, v11, 0x140uLL);
  __src[0] = v5;
  __src[1] = 0;
  LOBYTE(__src[2]) = 1;
  memcpy(&__src[2] + 1, v12, 0x97uLL);
  sub_1000302D8(v18, v7, &qword_100CD37E8);
  sub_1000302D8(v19, v7, &qword_100CD37A8);
  sub_10003FDA0(__src, &qword_100CD37A8);
  v7[0] = v4;
  v7[1] = 0x4030000000000000;
  v8 = 0;
  memcpy(v9, v13, sizeof(v9));
  v10 = 257;
  return sub_10003FDA0(v7, &qword_100CD37E8);
}

uint64_t sub_1006F2614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1006F27CC(a1, __src);
  v20 = static Font.largeTitle.getter();
  KeyPath = swift_getKeyPath();
  v4 = (a1 + *(type metadata accessor for PressureComponentViewModel() + 28));
  v5 = v4[1];
  v23[0] = *v4;
  v23[1] = v5;
  sub_10002D5A4();

  v6 = Text.init<A>(_:)();
  v8 = v7;
  v10 = v9;
  static Font.subheadline.getter();
  v11 = Text.font(_:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_10010CD64(v6, v8, v10 & 1);

  memcpy(__dst, __src, 0x48uLL);
  __dst[9] = KeyPath;
  __dst[10] = v20;
  memcpy(a2, __dst, 0x58uLL);
  *(a2 + 88) = v11;
  *(a2 + 96) = v13;
  *(a2 + 104) = v15 & 1;
  *(a2 + 112) = v17;
  sub_1000302D8(__dst, v23, &qword_100CD37F0);
  sub_10010CD54(v11, v13, v15 & 1);

  sub_10010CD64(v11, v13, v15 & 1);

  memcpy(v23, __src, 0x48uLL);
  v23[9] = KeyPath;
  v23[10] = v20;
  return sub_10003FDA0(v23, &qword_100CD37F0);
}

uint64_t sub_1006F27CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1006F2B50(a1, &v18);
  v4 = v18;
  v5 = BYTE1(v19);
  v6 = v19;
  v7 = (a1 + *(type metadata accessor for PressureComponentViewModel() + 24));
  v8 = v7[1];
  v18 = *v7;
  v19 = v8;
  sub_10002D5A4();

  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  KeyPath = swift_getKeyPath();
  LOBYTE(v18) = v5;
  v13 &= 1u;
  v21 = v13;
  v20 = 0;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 9) = v5;
  *(a2 + 16) = v9;
  *(a2 + 24) = v11;
  *(a2 + 32) = v13;
  *(a2 + 40) = v15;
  *(a2 + 48) = KeyPath;
  *(a2 + 56) = 1;
  *(a2 + 64) = 0;
  j__swift_retain_1();
  sub_10010CD54(v9, v11, v13);

  sub_10010CD64(v9, v11, v13);

  return j__swift_release();
}

uint64_t sub_1006F2920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = static VerticalAlignment.center.getter();
  LOBYTE(v27) = 1;
  sub_1006F27CC(a1, __src);
  memcpy(&v23[7], __src, 0x41uLL);
  v19 = v27;
  v21 = static Font.largeTitle.getter();
  KeyPath = swift_getKeyPath();
  v4 = (a1 + *(type metadata accessor for PressureComponentViewModel() + 28));
  v5 = v4[1];
  v27 = *v4;
  v28 = v5;
  sub_10002D5A4();

  v6 = Text.init<A>(_:)();
  v8 = v7;
  v10 = v9;
  static Font.subheadline.getter();
  v11 = Text.font(_:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_10010CD64(v6, v8, v10 & 1);

  v26[0] = v22;
  v26[1] = 0;
  LOBYTE(v26[2]) = v19;
  memcpy(&v26[2] + 1, v23, 0x48uLL);
  *(&v26[11] + 1) = *v25;
  HIDWORD(v26[11]) = *&v25[3];
  v26[12] = KeyPath;
  v26[13] = v21;
  memcpy(a2, v26, 0x70uLL);
  *(a2 + 112) = v11;
  *(a2 + 120) = v13;
  *(a2 + 128) = v15 & 1;
  *(a2 + 136) = v17;
  sub_1000302D8(v26, &v27, &qword_100CD37D8);
  sub_10010CD54(v11, v13, v15 & 1);

  sub_10010CD64(v11, v13, v15 & 1);

  v27 = v22;
  v28 = 0;
  v29 = v19;
  memcpy(v30, v23, sizeof(v30));
  *v31 = *v25;
  *&v31[3] = *&v25[3];
  v32 = KeyPath;
  v33 = v21;
  return sub_10003FDA0(&v27, &qword_100CD37D8);
}

uint64_t sub_1006F2B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PressureTrend();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  (*(v6 + 16))(v9 - v8, a1, v4);
  v11 = (*(v6 + 88))(v10, v4);
  if (v11 == enum case for PressureTrend.rising(_:) || v11 == enum case for PressureTrend.falling(_:))
  {
    Image.init(systemName:)();

    _ConditionalContent<>.init(storage:)();
    sub_10022C350(&qword_100CBFAD8);
    sub_1004DCAA0();
    _ConditionalContent<>.init(storage:)();

LABEL_6:
    *a2 = v13;
    *(a2 + 8) = v14;
    *(a2 + 9) = v15;
    return result;
  }

  if (v11 == enum case for PressureTrend.steady(_:))
  {
    Image.init(systemName:)();
    sub_10022C350(&qword_100CBFAD8);
    sub_1004DCAA0();
    result = _ConditionalContent<>.init(storage:)();
    goto LABEL_6;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1006F2DCC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ColorRenderingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GradientArcView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  sub_1006EF034(v2, &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GradientArcView);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = swift_allocObject();
  sub_1006F3EB8(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  (*(v5 + 104))(v7, enum case for ColorRenderingMode.nonLinear(_:), v4);
  Canvas<>.init(opaque:colorMode:rendersAsynchronously:renderer:)();
  sub_10022C350(&qword_100CBD8C8);
  Canvas.rendersAsynchronously.setter();
  Canvas.rendersFirstFrameAsynchronously.setter();
  v13 = a1 + *(sub_10022C350(&qword_100CD39F8) + 36);
  *v13 = 0x3FF0000000000000;
  *(v13 + 8) = 0;
  result = sub_10022C350(&qword_100CD3A00);
  *(a1 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_1006F300C(uint64_t a1, uint64_t a2)
{
  v16 = type metadata accessor for EnvironmentValues();
  v3 = *(v16 - 8);
  __chkstk_darwin(v16);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GraphicsContext.Shading();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006F3344(a2);
  Path.init(ellipseIn:)();
  static GraphicsContext.Shading.conicGradient(_:center:angle:options:)();

  GraphicsContext.fill(_:with:style:)();
  sub_1001A8674(v17);
  v10 = *(v7 + 8);
  v10(v9, v6);
  GraphicsContext.blendMode.setter();
  v11 = a2 + *(type metadata accessor for GradientArcView(0) + 24);
  v12 = *v11;
  if (*(v11 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v12, 0);
    (*(v3 + 8))(v5, v16);
  }

  Path.init(ellipseIn:)();
  static Color.clear.getter();
  static GraphicsContext.Shading.color(_:)();

  GraphicsContext.fill(_:with:style:)();
  sub_1001A8674(v18);
  return (v10)(v9, v6);
}

uint64_t sub_1006F3344(uint64_t a1)
{
  v2 = type metadata accessor for Color.RGBColorSpace();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PressureTrend();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GradientArcView(0);
  (*(v7 + 16))(v9, a1 + *(v10 + 20), v6);
  v11 = (*(v7 + 88))(v9, v6);
  if (v11 == enum case for PressureTrend.rising(_:))
  {
    sub_10022C350(&qword_100CAC3F8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A3BBA0;
    v13 = enum case for Color.RGBColorSpace.sRGB(_:);
    v14 = *(v3 + 104);
    v14(v5, enum case for Color.RGBColorSpace.sRGB(_:), v2);
    Color.init(_:white:opacity:)();
    *(v12 + 32) = Gradient.Stop.init(color:location:)();
    *(v12 + 40) = v15;
    v14(v5, v13, v2);
    Color.init(_:white:opacity:)();
    *(v12 + 48) = Gradient.Stop.init(color:location:)();
    *(v12 + 56) = v16;
    v14(v5, v13, v2);
LABEL_5:
    Color.init(_:white:opacity:)();
    *(v12 + 64) = Gradient.Stop.init(color:location:)();
    *(v12 + 72) = v21;
    return Gradient.init(stops:)();
  }

  if (v11 == enum case for PressureTrend.falling(_:))
  {
    sub_10022C350(&qword_100CAC3F8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A3BBA0;
    v17 = enum case for Color.RGBColorSpace.sRGB(_:);
    v18 = *(v3 + 104);
    v18(v5, enum case for Color.RGBColorSpace.sRGB(_:), v2);
    Color.init(_:white:opacity:)();
    *(v12 + 32) = Gradient.Stop.init(color:location:)();
    *(v12 + 40) = v19;
    v18(v5, v17, v2);
    Color.init(_:white:opacity:)();
    *(v12 + 48) = Gradient.Stop.init(color:location:)();
    *(v12 + 56) = v20;
    v18(v5, v17, v2);
    goto LABEL_5;
  }

  if (v11 == enum case for PressureTrend.steady(_:))
  {
    sub_10022C350(&qword_100CAC3F8);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100A3B020;
    v23 = enum case for Color.RGBColorSpace.sRGB(_:);
    v24 = *(v3 + 104);
    v24(v5, enum case for Color.RGBColorSpace.sRGB(_:), v2);
    Color.init(_:white:opacity:)();
    *(v22 + 32) = Gradient.Stop.init(color:location:)();
    *(v22 + 40) = v25;
    v24(v5, v23, v2);
    Color.init(_:white:opacity:)();
    *(v22 + 48) = Gradient.Stop.init(color:location:)();
    *(v22 + 56) = v26;
    v24(v5, v23, v2);
    Color.init(_:white:opacity:)();
    *(v22 + 64) = Gradient.Stop.init(color:location:)();
    *(v22 + 72) = v27;
    v24(v5, v23, v2);
    Color.init(_:white:opacity:)();
    *(v22 + 80) = Gradient.Stop.init(color:location:)();
    *(v22 + 88) = v28;
    return Gradient.init(stops:)();
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

unint64_t sub_1006F3820()
{
  result = qword_100CD3798;
  if (!qword_100CD3798)
  {
    sub_10022E824(&qword_100CD3788);
    sub_10023FBF4(&qword_100CD37A0, &qword_100CD37A8);
    sub_10023FBF4(&qword_100CA47C8, &qword_100CA47D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD3798);
  }

  return result;
}

unint64_t sub_1006F3904()
{
  result = qword_100CD37B0;
  if (!qword_100CD37B0)
  {
    sub_10022E824(&qword_100CD3790);
    sub_10023FBF4(&qword_100CD37B8, &unk_100CD37C0);
    sub_10023FBF4(&qword_100CA47C8, &qword_100CA47D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD37B0);
  }

  return result;
}

unint64_t sub_1006F39F8()
{
  result = qword_100CD3898;
  if (!qword_100CD3898)
  {
    sub_10022E824(&qword_100CD3890);
    sub_10023FBF4(&qword_100CD38A0, &unk_100CD38A8);
    sub_1006EEFCC(&qword_100CBB8D0, type metadata accessor for FontWithSmallVariantModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD3898);
  }

  return result;
}

unint64_t sub_1006F3AE0()
{
  result = qword_100CD38B0;
  if (!qword_100CD38B0)
  {
    sub_10022E824(&qword_100CD3888);
    sub_10023FBF4(&qword_100CD38B8, &unk_100CD38C0);
    sub_10023FBF4(&qword_100CA53B8, &qword_100CA53C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD38B0);
  }

  return result;
}

unint64_t sub_1006F3BC4()
{
  result = qword_100CD38F0;
  if (!qword_100CD38F0)
  {
    sub_10022E824(&qword_100CD38E0);
    sub_1006F3CAC(&qword_100CD38F8, &unk_100CD3900, &unk_100A7A7E0, sub_1006F3D24);
    sub_1006EEFCC(&qword_100CBB8D0, type metadata accessor for FontWithSmallVariantModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD38F0);
  }

  return result;
}

uint64_t sub_1006F3CAC(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_100003A24(0, a2);
    sub_10022E824(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1006F3D24()
{
  result = qword_100CD3908;
  if (!qword_100CD3908)
  {
    sub_10022E824(&qword_100CD3910);
    sub_1004DCAA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD3908);
  }

  return result;
}

void sub_1006F3DF8()
{
  type metadata accessor for PressureTrend();
  if (v0 <= 0x3F)
  {
    sub_10009BE44(319, &qword_100CE0E20);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1006F3EB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GradientArcView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006F3F1C()
{
  v2 = sub_100017580();
  v3 = *(type metadata accessor for GradientArcView(v2) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1006F300C(v0, v4);
}

unint64_t sub_1006F3FA0()
{
  result = qword_100CD3A08;
  if (!qword_100CD3A08)
  {
    sub_10022E824(&qword_100CD3A00);
    sub_1006F402C();
    sub_1006F40E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD3A08);
  }

  return result;
}

unint64_t sub_1006F402C()
{
  result = qword_100CD3A10;
  if (!qword_100CD3A10)
  {
    sub_10022E824(&qword_100CD39F8);
    sub_10023FBF4(&qword_100CBD8F0, &qword_100CBD8C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD3A10);
  }

  return result;
}

unint64_t sub_1006F40E4()
{
  result = qword_100CD3A18;
  if (!qword_100CD3A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD3A18);
  }

  return result;
}

uint64_t sub_1006F4148@<X0>(_OWORD *a1@<X1>, uint64_t a2@<X8>)
{
  memcpy(__dst, a1, sizeof(__dst));
  v4 = a1[7];
  v18 = a1[5];
  v19 = v4;
  v5 = *(&v18 + 1);
  *a2 = v18;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(a2 + 32) = 0;
  type metadata accessor for LocationComponentHeaderViewModel(0);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for LocationComponentContainerViewModel();
  memcpy((a2 + v6[5]), a1, 0x70uLL);
  type metadata accessor for LocationComponentViewModel();
  swift_storeEnumTagMultiPayload();
  v7 = a2 + v6[8];
  v8 = *(sub_10022C350(&qword_100CA6690) + 48);
  v9 = enum case for DetailCondition.precipitationTotal(_:);
  v10 = type metadata accessor for DetailCondition();
  (*(*(v10 - 8) + 104))(v7, v9, v10);
  *(v7 + v8) = 0;
  v11 = type metadata accessor for LocationComponentAction(0);
  swift_storeEnumTagMultiPayload();
  v12 = sub_100019DBC();
  sub_10001B350(v12, v13, v14, v11);
  sub_100428584(__dst, v16);
  sub_100358150(&v18, v16);
  sub_100358150(&v19, v16);
  sub_10013D288();
  result = Dictionary.init(dictionaryLiteral:)();
  *(a2 + v6[6]) = 256;
  *(a2 + v6[7]) = result;
  return result;
}

uint64_t sub_1006F4338()
{
  v1 = v0;
  v2 = type metadata accessor for DateInterval();
  v35 = *(v2 - 8);
  v36 = v2;
  __chkstk_darwin(v2);
  v34 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v4 - 8);
  v39 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v38 = &v32 - v7;
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  __chkstk_darwin(v18);
  v20 = &v32 - v19;
  __chkstk_darwin(v21);
  v23 = &v32 - v22;
  v24 = *(type metadata accessor for TrackExposureModifier() + 28);
  sub_10022C350(&qword_100CBB758);
  v37 = v24;
  State.wrappedValue.getter();
  if (sub_100024D10(v10, 1, v11) == 1)
  {
    return sub_1001AEDF4(v10);
  }

  (*(v12 + 32))(v23, v10, v11);
  Date.init()();
  Date.distance(to:)();
  if (*(v1 + 8) <= v26)
  {
    v27 = *(v1 + 16);
    v32 = *(v1 + 24);
    v33 = v27;
    v28 = *(v12 + 16);
    v28(v17, v23, v11);
    v28(v14, v20, v11);
    v29 = v34;
    DateInterval.init(start:end:)();
    v33(v29);
    (*(v35 + 8))(v29, v36);
  }

  v30 = v38;
  sub_10001B350(v38, 1, 1, v11);
  sub_1000D47CC(v30, v39);
  State.wrappedValue.setter();
  sub_1001AEDF4(v30);
  v31 = *(v12 + 8);
  v31(v20, v11);
  return (v31)(v23, v11);
}

uint64_t sub_1006F46F4(uint64_t a1)
{
  v2 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v17[-v6];
  __chkstk_darwin(v8);
  v10 = &v17[-v9];
  v11 = (a1 + *(type metadata accessor for TrackExposureModifier() + 32));
  v12 = *v11;
  v13 = *(v11 + 1);
  v17[16] = v12;
  v18 = v13;
  sub_10022C350(&qword_100CA5A80);
  result = State.wrappedValue.getter();
  if (v17[15] == 1)
  {
    sub_10022C350(&qword_100CBB758);
    State.wrappedValue.getter();
    v15 = type metadata accessor for Date();
    v16 = sub_100024D10(v10, 1, v15);
    result = sub_1001AEDF4(v10);
    if (v16 == 1)
    {
      Date.init()();
      sub_10001B350(v7, 0, 1, v15);
      sub_1000D47CC(v7, v4);
      State.wrappedValue.setter();
      return sub_1001AEDF4(v7);
    }
  }

  return result;
}

uint64_t sub_1006F48AC()
{
  v1 = *(type metadata accessor for TrackExposureModifier() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1006F46F4(v2);
}

unint64_t sub_1006F4968()
{
  result = qword_100CD3B90;
  if (!qword_100CD3B90)
  {
    sub_10022E824(&qword_100CD3B88);
    sub_10022E824(&qword_100CD3B78);
    sub_1001CF210();
    swift_getOpaqueTypeConformance2();
    sub_100636EA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD3B90);
  }

  return result;
}

uint64_t sub_1006F4A3C(uint64_t a1)
{
  v1 = *(a1 + 96);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1006F4A5C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 97))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = ((*(a1 + 96) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 96) >> 1) & 0x1F))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1006F4AA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 64) = 0u;
      *(result + 80) = 0u;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 96) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1006F4B34(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 96) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0;
    v2 = 0x80;
  }

  *(result + 96) = v2;
  return result;
}

uint64_t sub_1006F4B84(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1) | (a1[3] << 16);
  v4 = a1[96];
  if (v4 >> 6)
  {
    v5 = *(a1 + 1);
    v6 = *(a1 + 1);
    v8 = *(a1 + 1);
    v7 = *(a1 + 2);
    v10 = *(a1 + 3);
    v9 = *(a1 + 4);
    v11 = *(a1 + 5);
    if (v4 >> 6 != 1)
    {
      v24 = v2 | (v3 << 8) | (v5 << 32);
      if (v4 != 128 || (v25 = vorrq_s8(vorrq_s8(v11, v10), vorrq_s8(v9, v7)), v24 | *&vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL)) | v8 | v6 | *(&v8 + 1)))
      {
        v28 = a2[96];
        if ((v28 & 0xC0) != 0x80)
        {
          return 0;
        }

        if (v28 != 128 || *a2 != 1)
        {
          return 0;
        }

        v30 = vorrq_s8(vorrq_s8(*(a2 + 2), *(a2 + 4)), vorrq_s8(*(a2 + 3), *(a2 + 5)));
        if (*&vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL)) | *(a2 + 3) | *(a2 + 2) | *(a2 + 1))
        {
          return 0;
        }
      }

      else
      {
        v26 = a2[96];
        if ((v26 & 0xC0) != 0x80)
        {
          return 0;
        }

        if (v26 != 128)
        {
          return 0;
        }

        v27 = vorrq_s8(vorrq_s8(vorrq_s8(*(a2 + 2), *(a2 + 4)), vorrq_s8(*(a2 + 3), *(a2 + 5))), vorrq_s8(*a2, *(a2 + 1)));
        if (vorr_s8(*v27.i8, *&vextq_s8(v27, v27, 8uLL)))
        {
          return 0;
        }
      }

      return 1;
    }

    v12 = a2[96];
    if ((v12 & 0xC0) == 0x40)
    {
      v14 = *a2;
      v13 = *(a2 + 1);
      v15 = *(a2 + 2);
      v16 = *(a2 + 3);
      v18 = *(a2 + 4);
      v17 = *(a2 + 5);
      v20 = *(a2 + 6);
      v19 = *(a2 + 7);
      v21 = *(a2 + 4);
      if (v4)
      {
        v22 = *(a2 + 5);
        v49 = v2;
        v50 = v3;
        v51 = BYTE2(v3);
        v52 = v5;
        v53 = v6;
        v54 = v8;
        v55 = v7;
        v56 = v10;
        v57 = v9;
        v58 = v11;
        if ((v12 & 1) == 0)
        {
          return 0;
        }

        v39 = v14;
        v40 = v13;
        v41 = v15;
        v42 = v16;
        v43 = v18;
        v44 = v17;
        v45 = v20;
        v46 = v19;
        v47 = v21;
        v48 = v22;
        if ((sub_1005F7E98(&v49, &v39) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v49 = v2;
        v50 = v3;
        v51 = BYTE2(v3);
        v52 = v5;
        v53 = v6;
        v54 = v8;
        v55 = v7;
        v56 = v10;
        v57.i64[0] = v9.i64[0];
        if (v12)
        {
          return 0;
        }

        v39 = v14;
        v40 = v13;
        v41 = v15;
        v42 = v16;
        v43 = v18;
        v44 = v17;
        v45 = v20;
        v46 = v19;
        *&v47 = v21;
        if ((sub_1006F4F30(&v49, &v39) & 1) == 0)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  else
  {
    if (a2[96] > 0x3Fu || ((v2 ^ *a2) & 1) != 0)
    {
      return 0;
    }

    v23 = *(a2 + 1) | (a2[3] << 16);
    if (*(a1 + 1) == 2)
    {
      if (*(a2 + 1) == 2)
      {
        return 1;
      }
    }

    else if (*(a1 + 1) == 3)
    {
      if (*(a2 + 1) == 3)
      {
        return 1;
      }
    }

    else
    {
      if (*(a2 + 1) & 0xFE) == 2 || ((v23 ^ v3) & 1) != 0 || (((v23 ^ v3) >> 8))
      {
        return 0;
      }

      v32 = a2[3];
      v33 = PredictedLocationsAuthorizationState.rawValue.getter(a1[3]);
      v35 = v34;
      if (v33 == PredictedLocationsAuthorizationState.rawValue.getter(v32) && v35 == v36)
      {

        return 1;
      }

      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v38)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1006F4E90(void *__src, _BYTE *a2)
{
  if (*(__src + 96))
  {
    memcpy(__dst, __src, sizeof(__dst));
    if (a2[96])
    {
      memcpy(v5, a2, sizeof(v5));
      v3 = sub_1005F7E98(__dst, v5);
      return v3 & 1;
    }

LABEL_5:
    v3 = 0;
    return v3 & 1;
  }

  if (a2[96])
  {
    goto LABEL_5;
  }

  return sub_1006F4F30(__src, a2);
}

uint64_t sub_1006F4F30(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 33);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 33);
  v35 = *(a2 + 34);
  v36 = *(a1 + 34);
  v12 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  v33 = *(a2 + 35);
  v34 = *(a1 + 35);
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v13 = v4 == v8 && v5 == v9;
  if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((v6 ^ v10))
  {
    return 0;
  }

  if ((v7 ^ v11))
  {
    return 0;
  }

  if ((v36 ^ v35))
  {
    return 0;
  }

  if ((v34 ^ v33))
  {
    return 0;
  }

  sub_1009EA0D4();
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v15 = *(a1 + 48);
  v16 = *(a2 + 48);
  if (v15 == 2)
  {
    if (v16 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v16 == 2 || ((v16 ^ v15) & 1) != 0)
    {
      return result;
    }
  }

  v18 = *(a2 + 49);
  v19 = PredictedLocationsAuthorizationState.rawValue.getter(*(a1 + 49));
  v21 = v20;
  if (v19 == PredictedLocationsAuthorizationState.rawValue.getter(v18) && v21 == v22)
  {
  }

  else
  {
    v24 = sub_10001F23C();

    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  v25 = *(a2 + 50);
  v26 = LocationAuthorizationState.rawValue.getter(*(a1 + 50));
  v28 = v27;
  if (v26 == LocationAuthorizationState.rawValue.getter(v25) && v28 == v29)
  {
  }

  else
  {
    v31 = sub_10001F23C();

    if ((v31 & 1) == 0)
    {
      return 0;
    }
  }

  if (sub_1000BA238(*(a1 + 51), *(a2 + 51)) & 1) == 0 || ((*(a1 + 52) ^ *(a2 + 52)) & 1) != 0 || ((*(a1 + 53) ^ *(a2 + 53)))
  {
    return 0;
  }

  if (*(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64))
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1006F51A8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 97))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 96);
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

uint64_t sub_1006F51E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

void sub_1006F52B4()
{
  sub_10010F3E4(319, &qword_100CB64B8, &type metadata accessor for DynamicTypeSize);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

BOOL sub_1006F5368()
{
  v1 = *(v0 + 8);
  result = 0;
  if (*(v1 + 16))
  {
    v2 = *(type metadata accessor for ComparisonCapsuleViewModel.Row(0) - 8);
    if (*(v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 24))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1006F53E0@<X0>(uint64_t a1@<X8>)
{
  v31[3] = a1;
  v31[2] = sub_10022C350(&qword_100CD3C28);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = v31 - v4;
  v31[0] = sub_10022C350(&qword_100CD3C30);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = v31 - v7;
  v31[1] = sub_10022C350(&qword_100CD3C38);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v9);
  sub_1000249D0();
  v10 = type metadata accessor for DynamicTypeSize();
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v31 - v17;
  type metadata accessor for ComparisonCapsuleView(0);
  v19 = v1;
  sub_10011A1CC();
  (*(v12 + 104))(v15, enum case for DynamicTypeSize.accessibility1(_:), v10);
  v20 = static DynamicTypeSize.< infix(_:_:)();
  v21 = *(v12 + 8);
  v21(v15, v10);
  v21(v18, v10);
  v22 = static Axis.Set.horizontal.getter();
  if (v20)
  {
    *v2 = v22;
    v23 = sub_10022C350(&qword_100CD3C58);
    sub_1006F5770(v19, &v2[*(v23 + 44)]);
    v24 = &qword_100CD3C38;
    sub_1000302D8(v2, v8, &qword_100CD3C38);
    swift_storeEnumTagMultiPayload();
    sub_100008D38();
    sub_10023FBF4(v25, &qword_100CD3C38);
    sub_10023FBF4(&qword_100CD3C50, &qword_100CD3C28);
    sub_10003C770();
    _ConditionalContent<>.init(storage:)();
    v26 = v2;
  }

  else
  {
    *v5 = v22;
    v27 = sub_10022C350(&qword_100CD3C40);
    sub_1006F5B18(v19, &v5[*(v27 + 44)]);
    v24 = &qword_100CD3C28;
    sub_1000302D8(v5, v8, &qword_100CD3C28);
    swift_storeEnumTagMultiPayload();
    sub_100008D38();
    sub_10023FBF4(v28, v29);
    sub_10023FBF4(&qword_100CD3C50, &qword_100CD3C28);
    sub_10003C770();
    _ConditionalContent<>.init(storage:)();
    v26 = v5;
  }

  return sub_10003FDA0(v26, v24);
}

uint64_t sub_1006F5770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ComparisonCapsuleCompactGridView(0);
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  v10 = sub_10022C350(&qword_100CD3C60);
  __chkstk_darwin(v10 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  v16 = *a1;
  v17 = *(a1 + 8);
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  v20 = *(a1 + 32);
  if (sub_1006F5368())
  {
    v25 = 0x3FF0000000000000;
    v26 = 0x4010000000000000;
    sub_10014AB54();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    ScaledValue.init(wrappedValue:step:)();
    v21 = &v9[*(v4 + 20)];
    *v21 = v16;
    *(v21 + 1) = v17;
    *(v21 + 2) = v18;
    *(v21 + 3) = v19;
    *(v21 + 4) = v20;
    v9[*(v4 + 24)] = 1;
    sub_1006FB734(v9, v15, type metadata accessor for ComparisonCapsuleCompactGridView);
    sub_10001B350(v15, 0, 1, v4);
  }

  else
  {
    sub_10001B350(v15, 1, 1, v4);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
  }

  v25 = 0x3FF0000000000000;
  v26 = 0x4010000000000000;
  sub_10014AB54();

  ScaledValue.init(wrappedValue:step:)();
  v22 = &v9[*(v4 + 20)];
  *v22 = v16;
  *(v22 + 1) = v17;
  *(v22 + 2) = v18;
  *(v22 + 3) = v19;
  *(v22 + 4) = v20;
  v9[*(v4 + 24)] = 0;
  sub_1000302D8(v15, v12, &qword_100CD3C60);
  sub_1006FB638(v9, v6, type metadata accessor for ComparisonCapsuleCompactGridView);
  *a2 = v16;
  *(a2 + 8) = v17;
  *(a2 + 16) = v18;
  *(a2 + 24) = v19;
  *(a2 + 32) = v20;
  *(a2 + 40) = 0;
  *(a2 + 48) = v16;
  *(a2 + 56) = v17;
  *(a2 + 64) = v18;
  *(a2 + 72) = v19;
  *(a2 + 80) = v20;
  *(a2 + 88) = 1;
  v23 = sub_10022C350(&qword_100CD3C68);
  sub_1000302D8(v12, a2 + *(v23 + 64), &qword_100CD3C60);
  sub_1006FB638(v6, a2 + *(v23 + 80), type metadata accessor for ComparisonCapsuleCompactGridView);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_1006FB6DC(v9, type metadata accessor for ComparisonCapsuleCompactGridView);
  sub_10003FDA0(v15, &qword_100CD3C60);
  sub_1006FB6DC(v6, type metadata accessor for ComparisonCapsuleCompactGridView);
  sub_10003FDA0(v12, &qword_100CD3C60);
  swift_bridgeObjectRelease_n();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1006F5B18@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = type metadata accessor for ComparisonCapsuleCompactGridView(0);
  __chkstk_darwin(v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v52 = &v43 - v7;
  v8 = sub_10022C350(&qword_100CD3C60);
  __chkstk_darwin(v8 - 8);
  v51 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v43 - v11;
  v13 = 1;
  if (sub_1006F5368())
  {
    v14 = v12;
    v15 = *a1;
    v16 = *(a1 + 1);
    v17 = *(a1 + 2);
    v18 = *(a1 + 3);
    v19 = *(a1 + 4);
    v53 = 0x3FF0000000000000;
    v54 = 0x4010000000000000;
    sub_10014AB54();

    v20 = v52;
    ScaledValue.init(wrappedValue:step:)();
    v21 = v20 + *(v3 + 20);
    *v21 = v15;
    v12 = v14;
    *(v21 + 8) = v16;
    *(v21 + 16) = v17;
    *(v21 + 24) = v18;
    *(v21 + 32) = v19;
    *(v20 + *(v3 + 24)) = 1;
    sub_1006FB734(v20, v14, type metadata accessor for ComparisonCapsuleCompactGridView);
    v13 = 0;
  }

  sub_10001B350(v12, v13, 1, v3);
  v22 = *a1;
  v23 = *(a1 + 1);
  v24 = *(a1 + 2);
  v25 = *(a1 + 3);
  v26 = *(a1 + 4);
  v53 = 0x3FF0000000000000;
  v54 = 0x4010000000000000;
  sub_10014AB54();

  ScaledValue.init(wrappedValue:step:)();
  v27 = &v5[*(v3 + 20)];
  *v27 = v22;
  *(v27 + 1) = v23;
  *(v27 + 2) = v24;
  *(v27 + 3) = v25;
  *(v27 + 4) = v26;
  v28 = *(v3 + 24);
  v50 = v5;
  v5[v28] = 0;
  v29 = sub_1006F5368();
  v44 = v22;
  if (v29)
  {
    v47 = v26;
    v48 = v25;

    v46 = 1;
    v30 = v22;
    v31 = v23;
    v32 = v24;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v47 = 0;
    v48 = 0;
    v46 = 0;
  }

  v33 = v51;
  sub_1000302D8(v12, v51, &qword_100CD3C60);
  v45 = v12;
  v34 = v52;
  sub_1006FB638(v50, v52, type metadata accessor for ComparisonCapsuleCompactGridView);
  v35 = v33;
  v36 = v49;
  sub_1000302D8(v35, v49, &qword_100CD3C60);
  v37 = sub_10022C350(&qword_100CD3C70);
  sub_1006FB638(v34, v36 + v37[12], type metadata accessor for ComparisonCapsuleCompactGridView);
  v38 = v36 + v37[16];
  *v38 = v30;
  *(v38 + 8) = v31;
  v43 = v32;
  v40 = v47;
  v39 = v48;
  *(v38 + 16) = v32;
  *(v38 + 24) = v39;
  *(v38 + 32) = v40;
  *(v38 + 40) = v46;
  v41 = v36 + v37[20];
  *v41 = v44;
  *(v41 + 8) = v23;
  *(v41 + 16) = v24;
  *(v41 + 24) = v25;
  *(v41 + 32) = v26;
  *(v41 + 40) = 0;

  sub_1006F5F84(v30, v31);

  sub_1006FB6DC(v50, type metadata accessor for ComparisonCapsuleCompactGridView);
  sub_10003FDA0(v45, &qword_100CD3C60);

  sub_1006F5FC8(v30, v31);
  sub_1006FB6DC(v52, type metadata accessor for ComparisonCapsuleCompactGridView);
  return sub_10003FDA0(v51, &qword_100CD3C60);
}

uint64_t sub_1006F5F84(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1006F5FC8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_1006F6044()
{
  sub_1001BA110();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1006F60C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1006F6108(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1006F6164()
{
  result = qword_100CD3D10;
  if (!qword_100CD3D10)
  {
    sub_10022E824(&qword_100CD3D18);
    sub_10023FBF4(&qword_100CD3C48, &qword_100CD3C38);
    sub_10023FBF4(&qword_100CD3C50, &qword_100CD3C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD3D10);
  }

  return result;
}

uint64_t sub_1006F6260@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v12[0] = sub_10022C350(&qword_100CD3E38);
  __chkstk_darwin(v12[0]);
  v3 = v12 - v2;
  v4 = v1[1];
  v19 = *v1;
  v20 = v4;
  v21 = *(v1 + 4);
  sub_10064E920(v16);
  v5 = v17;
  v6 = v18;
  sub_1000161C0(v16, v17);
  v7 = (*(v6 + 64))(v5, v6);
  *v3 = static Alignment.center.getter();
  *(v3 + 1) = v8;
  *(v3 + 2) = 0;
  v3[24] = 0;
  *(v3 + 4) = v7;
  v3[40] = 0;
  sub_10022C350(&qword_100CD3E40);
  v22 = v20;
  v23 = *(&v19 + 1);
  v15 = *(&v19 + 1);
  v9 = swift_allocObject();
  v10 = v1[1];
  v9[1] = *v1;
  v9[2] = v10;
  *(v9 + 41) = *(v1 + 25);

  sub_1000302D8(&v23, v14, &qword_100CD3D28);
  sub_1006FB5BC(&v22, v14);
  sub_10022C350(&qword_100CD3D28);
  sub_10022C350(&qword_100CD3E48);
  sub_10023FBF4(&qword_100CD3D38, &qword_100CD3D28);
  sub_10023FBF4(&qword_100CD3E50, &qword_100CD3E48);
  sub_1006FB694(&qword_100CD3D48, type metadata accessor for ComparisonCapsuleViewModel.Row);
  ForEach<>.init(_:content:)();
  sub_100006F14(v16);
  v13 = v1;
  sub_10022C350(&qword_100CD3DA0);
  sub_10023FBF4(&qword_100CD3E58, &qword_100CD3E38);
  sub_1006FB818();
  View.accessibilityChildren<A>(children:)();
  return sub_10003FDA0(v3, &qword_100CD3E38);
}

uint64_t sub_1006F6598@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a3;
  v59 = type metadata accessor for Divider();
  v53 = *(v59 - 8);
  __chkstk_darwin(v59);
  v52 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for ComparisonCapsuleViewModel.Row(0);
  __chkstk_darwin(v56);
  v50 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10022C350(&qword_100CD3D50);
  __chkstk_darwin(v54);
  v8 = &v50 - v7;
  v9 = sub_10022C350(&qword_100CD3D58);
  __chkstk_darwin(v9 - 8);
  v51 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v50 - v12;
  __chkstk_darwin(v14);
  v16 = &v50 - v15;
  v17 = sub_10022C350(&qword_100CB4B90);
  __chkstk_darwin(v17 - 8);
  v58 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v50 - v20;
  v22 = type metadata accessor for ComparisonCapsuleRowView(0);
  v23 = (v22 - 8);
  __chkstk_darwin(v22);
  v57 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = (&v50 - v26);
  v28 = a2[1];
  v66 = *a2;
  v67 = v28;
  v68 = *(a2 + 4);
  v29 = *(&v66 + 1);
  v69 = v28;
  v30 = &v50 + v23[10] - v26;
  v55 = a1;
  sub_1006FB638(a1, v30, type metadata accessor for ComparisonCapsuleViewModel.Row);
  LOBYTE(a1) = *(a2 + 40);
  *v27 = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0);
  swift_storeEnumTagMultiPayload();
  *(v27 + v23[7]) = swift_getKeyPath();
  sub_10022C350(&qword_100CA72A8);
  swift_storeEnumTagMultiPayload();
  v61[0] = 0x4010000000000000;
  v65 = 0x3FF0000000000000;

  sub_1006FB5BC(&v69, v64);
  sub_10014AB54();
  ScaledValue.init(wrappedValue:step:)();
  v31 = v27 + v23[9];
  v32 = a2[1];
  *v31 = *a2;
  *(v31 + 1) = v32;
  *(v31 + 4) = *(a2 + 4);
  *(v27 + v23[11]) = a1;
  sub_10064E920(v61);
  v34 = v62;
  v33 = v63;
  sub_1000161C0(v61, v62);
  if (((*(v33 + 104))(v34, v33) & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_1006FB638(v55, v16, type metadata accessor for ComparisonCapsuleViewModel.Row);
  v35 = v56;
  sub_10001B350(v16, 0, 1, v56);
  sub_1002F558C(v29);
  v36 = *(v54 + 48);
  sub_1000302D8(v16, v8, &qword_100CD3D58);
  sub_1000302D8(v13, &v8[v36], &qword_100CD3D58);
  if (sub_100024D10(v8, 1, v35) != 1)
  {
    v39 = v51;
    sub_1000302D8(v8, v51, &qword_100CD3D58);
    if (sub_100024D10(&v8[v36], 1, v35) != 1)
    {
      v46 = &v8[v36];
      v47 = v50;
      sub_1006FB734(v46, v50, type metadata accessor for ComparisonCapsuleViewModel.Row);
      sub_10064E7C8();
      v49 = v48;
      sub_1006FB6DC(v47, type metadata accessor for ComparisonCapsuleViewModel.Row);
      sub_10003FDA0(v13, &qword_100CD3D58);
      sub_10003FDA0(v16, &qword_100CD3D58);
      sub_1006FB6DC(v39, type metadata accessor for ComparisonCapsuleViewModel.Row);
      sub_10003FDA0(v8, &qword_100CD3D58);
      sub_100006F14(v61);
      v38 = v59;
      if (v49)
      {
        v37 = 1;
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    sub_10003FDA0(v13, &qword_100CD3D58);
    sub_10003FDA0(v16, &qword_100CD3D58);
    sub_1006FB6DC(v39, type metadata accessor for ComparisonCapsuleViewModel.Row);
LABEL_8:
    sub_10003FDA0(v8, &qword_100CD3D50);
    sub_100006F14(v61);
    v38 = v59;
LABEL_9:
    v40 = v52;
    Divider.init()();
    (*(v53 + 32))(v21, v40, v38);
    v37 = 0;
    goto LABEL_10;
  }

  sub_10003FDA0(v13, &qword_100CD3D58);
  sub_10003FDA0(v16, &qword_100CD3D58);
  if (sub_100024D10(&v8[v36], 1, v35) != 1)
  {
    goto LABEL_8;
  }

  sub_10003FDA0(v8, &qword_100CD3D58);
LABEL_5:
  sub_100006F14(v61);
  v37 = 1;
  v38 = v59;
LABEL_10:
  sub_10001B350(v21, v37, 1, v38);
  v41 = v57;
  sub_1006FB638(v27, v57, type metadata accessor for ComparisonCapsuleRowView);
  v42 = v58;
  sub_1000302D8(v21, v58, &qword_100CB4B90);
  v43 = v60;
  sub_1006FB638(v41, v60, type metadata accessor for ComparisonCapsuleRowView);
  v44 = sub_10022C350(&qword_100CD3E60);
  sub_1000302D8(v42, v43 + *(v44 + 48), &qword_100CB4B90);
  sub_10003FDA0(v21, &qword_100CB4B90);
  sub_1006FB6DC(v27, type metadata accessor for ComparisonCapsuleRowView);
  sub_10003FDA0(v42, &qword_100CB4B90);
  return sub_1006FB6DC(v41, type metadata accessor for ComparisonCapsuleRowView);
}

uint64_t sub_1006F6D64()
{

  sub_10022C350(&qword_100CD3D28);
  sub_10022C350(&qword_100CB90B0);
  sub_10023FBF4(&qword_100CD3D38, &qword_100CD3D28);
  sub_100433B9C();
  sub_1006FB694(&qword_100CD3D48, type metadata accessor for ComparisonCapsuleViewModel.Row);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1006F6E88@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CA62E0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_1000302D8(v2, &v13 - v9, &qword_100CA62E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10011C0F0(v10, a1, &qword_100CA6028);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1006F7068@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CA72A8);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ComparisonCapsuleRowView(0);
  sub_1000302D8(v1 + *(v10 + 20), v9, &qword_100CA72A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for Locale();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1006F72C8@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v3 = sub_10022C350(&qword_100CD4088);
  return sub_1006F7318(v1, (a1 + *(v3 + 36)));
}

uint64_t sub_1006F7318@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v185 = a2;
  v184 = sub_10022C350(&qword_100CD4090);
  __chkstk_darwin(v184);
  v207 = &v173[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v210 = &v173[-v5];
  v209 = type metadata accessor for Locale.Language();
  v206 = *(v209 - 1);
  __chkstk_darwin(v209);
  v205 = &v173[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Locale();
  v203 = *(v7 - 8);
  v204 = v7;
  __chkstk_darwin(v7);
  v202 = &v173[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for UserInterfaceSizeClass();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v189 = &v173[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_10022C350(&qword_100CA64E8);
  __chkstk_darwin(v12);
  v195 = &v173[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v173[-v15];
  v17 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v17 - 8);
  v188 = &v173[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v196 = &v173[-v20];
  __chkstk_darwin(v21);
  v194 = &v173[-v22];
  __chkstk_darwin(v23);
  v25 = &v173[-v24];
  __chkstk_darwin(v26);
  v28 = &v173[-v27];
  __chkstk_darwin(v29);
  v31 = &v173[-v30];
  v208 = a1;
  sub_1006F6E88(&v173[-v30]);
  v197 = v10;
  v32 = *(v10 + 104);
  LODWORD(v191) = enum case for UserInterfaceSizeClass.regular(_:);
  v192 = v10 + 104;
  v190 = v32;
  v32(v28);
  sub_10001B350(v28, 0, 1, v9);
  v193 = v12;
  v33 = *(v12 + 48);
  sub_1000302D8(v31, v16, &qword_100CA6028);
  sub_1000302D8(v28, &v16[v33], &qword_100CA6028);
  v34 = sub_100024D10(v16, 1, v9);
  v198 = v9;
  if (v34 == 1)
  {
    sub_10003FDA0(v28, &qword_100CA6028);
    sub_10003FDA0(v31, &qword_100CA6028);
    if (sub_100024D10(&v16[v33], 1, v9) == 1)
    {
      sub_10003FDA0(v16, &qword_100CA6028);
LABEL_10:
      v36 = v208;
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  sub_1000302D8(v16, v25, &qword_100CA6028);
  if (sub_100024D10(&v16[v33], 1, v9) == 1)
  {
    sub_10003FDA0(v28, &qword_100CA6028);
    sub_10003FDA0(v31, &qword_100CA6028);
    (*(v197 + 8))(v25, v9);
LABEL_6:
    sub_10003FDA0(v16, &qword_100CA64E8);
    goto LABEL_7;
  }

  v40 = v197;
  v41 = v189;
  (*(v197 + 32))(v189, &v16[v33], v9);
  sub_1006FB694(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
  LODWORD(KeyPath) = dispatch thunk of static Equatable.== infix(_:_:)();
  v42 = *(v40 + 8);
  v42(v41, v9);
  sub_10003FDA0(v28, &qword_100CA6028);
  sub_10003FDA0(v31, &qword_100CA6028);
  v42(v25, v198);
  sub_10003FDA0(v16, &qword_100CA6028);
  if (KeyPath)
  {
    goto LABEL_10;
  }

LABEL_7:
  v35 = v202;
  v36 = v208;
  sub_1006F7068(v202);
  v37 = v205;
  Locale.language.getter();
  (*(v203 + 8))(v35, v204);
  v38 = Locale.Language.isUrdu.getter();
  (*(v206 + 8))(v37, v209);
  if ((v38 & 1) == 0)
  {
    v209 = type metadata accessor for ComparisonCapsuleRowView(0);
    v39 = (v36 + v209[8]);
    goto LABEL_13;
  }

LABEL_11:
  v209 = type metadata accessor for ComparisonCapsuleRowView(0);
  v39 = (v36 + v209[8]);
  if (v39[3])
  {
    v43 = v39[2];
    goto LABEL_14;
  }

LABEL_13:
  v43 = *v39;
LABEL_14:

  v228 = v43;
  v229 = v44;
  sub_10002D5A4();
  v45 = Text.init<A>(_:)();
  v47 = v46;
  v49 = v48;
  type metadata accessor for ComparisonCapsuleRowView(0);
  v50 = v36 + v209[7];
  *&v263[32] = *(v50 + 32);
  v51 = *(v50 + 16);
  *v263 = *v50;
  *&v263[16] = v51;
  sub_10064E920(&v228);
  v52 = v232;
  v53 = v233;
  sub_1000161C0(&v228, v232);
  (*(v53 + 32))(v52, v53);
  v54 = Text.font(_:)();
  v56 = v55;
  v58 = v57;
  sub_10010CD64(v45, v47, v49 & 1);

  sub_100006F14(&v228);
  sub_10064E920(&v228);
  v59 = v232;
  v60 = v233;
  sub_1000161C0(&v228, v232);
  v211[0] = (*(v60 + 8))(v59, v60);
  v61 = Text.foregroundStyle<A>(_:)();
  v204 = v62;
  v205 = v61;
  LOBYTE(v59) = v63;
  v206 = v64;
  v65 = v58 & 1;
  v66 = v208;
  sub_10010CD64(v54, v56, v65);

  sub_100006F14(&v228);
  KeyPath = swift_getKeyPath();
  static UnitPoint.leading.getter();
  v202 = v68;
  v203 = v67;
  v199 = v59 & 1;
  v256 = v59 & 1;
  v254 = 0;
  v200 = static Edge.Set.trailing.getter();
  v183 = *(v66 + v209[9]);
  if (v183 == 1)
  {
    sub_10064E920(&v228);
    v69 = v232;
    v70 = v233;
    sub_1000161C0(&v228, v232);
    (*(v70 + 72))(v69, v70);
    sub_100006F14(&v228);
    v71 = 0x3FF0000000000000;
    goto LABEL_26;
  }

  v72 = v194;
  sub_1006F6E88(v194);
  v73 = v196;
  v74 = v198;
  (v190)(v196, v191, v198);
  sub_10001B350(v73, 0, 1, v74);
  v75 = *(v193 + 48);
  v76 = v195;
  sub_1000302D8(v72, v195, &qword_100CA6028);
  sub_1000302D8(v73, &v76[v75], &qword_100CA6028);
  if (sub_100024D10(v76, 1, v74) == 1)
  {
    sub_10003FDA0(v73, &qword_100CA6028);
    sub_10003FDA0(v72, &qword_100CA6028);
    if (sub_100024D10(&v76[v75], 1, v74) == 1)
    {
      sub_10003FDA0(v76, &qword_100CA6028);
LABEL_24:
      sub_10064E920(&v228);
      v83 = v232;
      v84 = v233;
      sub_1000161C0(&v228, v232);
      (*(v84 + 88))(v83, v84);
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v77 = v188;
  sub_1000302D8(v76, v188, &qword_100CA6028);
  if (sub_100024D10(&v76[v75], 1, v74) == 1)
  {
    sub_10003FDA0(v73, &qword_100CA6028);
    sub_10003FDA0(v72, &qword_100CA6028);
    (*(v197 + 8))(v77, v74);
LABEL_21:
    sub_10003FDA0(v76, &qword_100CA64E8);
    goto LABEL_22;
  }

  v80 = v197;
  v81 = v189;
  (*(v197 + 32))(v189, &v76[v75], v74);
  sub_1006FB694(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
  LODWORD(v193) = dispatch thunk of static Equatable.== infix(_:_:)();
  v82 = *(v80 + 8);
  v82(v81, v74);
  sub_10003FDA0(v196, &qword_100CA6028);
  sub_10003FDA0(v72, &qword_100CA6028);
  v82(v77, v74);
  sub_10003FDA0(v76, &qword_100CA6028);
  if (v193)
  {
    goto LABEL_24;
  }

LABEL_22:
  sub_10064E920(&v228);
  v78 = v232;
  v79 = v233;
  sub_1000161C0(&v228, v232);
  (*(v79 + 80))(v78, v79);
LABEL_25:
  sub_100006F14(&v228);
  v71 = 0;
LABEL_26:
  EdgeInsets.init(_all:)();
  v181 = v86;
  v182 = v85;
  v197 = v88;
  v198 = v87;
  v257 = 0;
  v260 = v263[0];
  v261 = *&v263[8];
  v262 = *&v263[24];
  v89 = v66 + v209[8];
  sub_10064EA98();
  v186 = v71;
  if (v93)
  {
    v94 = v90;
    v95 = v91;
    v96 = v92;
    v97 = v93;
    sub_10064E920(&v228);
    v98 = v232;
    v176 = v89;
    v99 = v233;
    sub_1000161C0(&v228, v232);
    (*(v99 + 40))(v98, v99);
    v193 = v96 & 1;
    LOBYTE(v211[0]) = v96 & 1;
    v100 = Text.font(_:)();
    v102 = v101;
    v192 = v97;
    LOBYTE(v97) = v103;

    sub_100006F14(&v228);
    sub_10064E920(&v228);
    v104 = v232;
    v105 = v233;
    sub_1000161C0(&v228, v232);
    v211[0] = (*(v105 + 16))(v104, v105);
    v106 = Text.foregroundStyle<A>(_:)();
    v108 = v107;
    v190 = v94;
    v191 = v95;
    LOBYTE(v95) = v109;
    v110 = v102;
    v66 = v208;
    sub_10010CD64(v100, v110, v97 & 1);

    sub_100006F14(&v228);
    v209 = Text.monospacedDigit()();
    v195 = v112;
    v196 = v111;
    LOBYTE(v98) = v113;
    sub_10010CD64(v106, v108, v95 & 1);

    v194 = swift_getKeyPath();
    LOBYTE(v100) = static Edge.Set.trailing.getter();
    sub_10064E920(&v228);
    v114 = v232;
    v115 = v233;
    sub_1000161C0(&v228, v232);
    (*(v115 + 56))(v114, v115);
    EdgeInsets.init(_all:)();
    v179 = v117;
    v180 = v116;
    v177 = v119;
    v178 = v118;
    sub_10010CD64(v190, v191, v193);

    LOBYTE(v211[0]) = v98 & 1;
    LOBYTE(v226[0]) = 0;
    LOBYTE(v212[0]) = 0;
    sub_100006F14(&v228);
    v191 = LOBYTE(v211[0]);
    v192 = LOBYTE(v226[0]);
    LODWORD(v193) = 257;
    v189 = 1;
    v190 = v100;
    v187 = LOBYTE(v212[0]);
    v188 = v186;
  }

  else
  {
    v209 = 0;
    v195 = 0;
    v196 = 0;
    v194 = 0;
    v188 = 0;
    v189 = 0;
    LODWORD(v193) = 0;
    v187 = 0;
    v190 = 0;
    v191 = 0;
    v192 = 0;
    v179 = 0;
    v180 = 0;
    v177 = 0;
    v178 = 0;
  }

  v120 = v210;
  sub_1006F88C4(v66, v210);
  v120[*(sub_10022C350(&qword_100CD4098) + 36)] = 1;
  v121 = static Edge.Set.trailing.getter();
  sub_10064E920(&v228);
  v122 = v232;
  v123 = v233;
  sub_1000161C0(&v228, v232);
  (*(v123 + 56))(v122, v123);
  EdgeInsets.init(_all:)();
  v124 = &v120[*(v184 + 36)];
  *v124 = v121;
  *(v124 + 1) = v125;
  *(v124 + 2) = v126;
  *(v124 + 3) = v127;
  *(v124 + 4) = v128;
  v124[40] = 0;
  sub_100006F14(&v228);
  sub_10064EEBC();
  v130 = v129;
  v132 = v131;
  v134 = v133;
  sub_10064E920(&v228);
  v135 = v232;
  v136 = v233;
  sub_1000161C0(&v228, v232);
  (*(v136 + 48))(v135, v136);
  v137 = Text.font(_:)();
  v139 = v138;
  v141 = v140;
  sub_10010CD64(v130, v132, v134 & 1);

  sub_100006F14(&v228);
  sub_10064E920(&v228);
  v142 = v232;
  v143 = v233;
  sub_1000161C0(&v228, v232);
  v211[0] = (*(v143 + 24))(v142, v143);
  v144 = Text.foregroundStyle<A>(_:)();
  v146 = v145;
  v148 = v147;
  sub_10010CD64(v137, v139, v141 & 1);

  sub_100006F14(&v228);
  v149 = Text.monospacedDigit()();
  v176 = v149;
  v184 = v150;
  LOBYTE(v137) = v151;
  v208 = v152;
  sub_10010CD64(v144, v146, v148 & 1);

  v153 = swift_getKeyPath();
  v175 = v153;
  static UnitPoint.trailing.getter();
  v155 = v154;
  v157 = v156;
  v252 = v137 & 1;
  v158 = v137 & 1;
  v174 = v137 & 1;
  v250 = 0;
  v159 = v207;
  sub_1000302D8(v210, v207, &qword_100CD4090);
  v211[0] = v205;
  v211[1] = v204;
  LOBYTE(v211[2]) = v199;
  *(&v211[2] + 1) = *v255;
  HIDWORD(v211[2]) = *&v255[3];
  v211[3] = v206;
  v211[4] = KeyPath;
  v211[5] = 1;
  LOBYTE(v211[6]) = 0;
  *(&v211[6] + 1) = *v253;
  HIDWORD(v211[6]) = *&v253[3];
  v211[7] = v203;
  v211[8] = v202;
  LOBYTE(v211[9]) = v200;
  HIDWORD(v211[9]) = *&v258[3];
  *(&v211[9] + 1) = *v258;
  v161 = v181;
  v160 = v182;
  v211[10] = v182;
  v211[11] = v181;
  v211[12] = v198;
  v211[13] = v197;
  LOBYTE(v211[14]) = 0;
  *(&v211[14] + 1) = *v259;
  HIDWORD(v211[14]) = *&v259[3];
  v162 = v185;
  v163 = v186;
  v211[15] = v186;
  LOWORD(v211[16]) = 257;
  memcpy(v185, v211, 0x82uLL);
  v162[17] = 0;
  *(v162 + 144) = 0;
  *(v162 + 145) = v183 ^ 1;
  v212[0] = v209;
  v212[1] = v196;
  v212[2] = v191;
  v212[3] = v195;
  v212[4] = v194;
  v212[5] = v189;
  v212[6] = v192;
  v212[7] = v190;
  v165 = v179;
  v164 = v180;
  v212[8] = v180;
  v212[9] = v179;
  v167 = v177;
  v166 = v178;
  v212[10] = v178;
  v212[11] = v177;
  v212[12] = v187;
  v212[13] = v188;
  LOWORD(v212[14]) = v193;
  memcpy(v162 + 19, v212, 0x72uLL);
  v168 = sub_10022C350(&qword_100CD40A0);
  sub_1000302D8(v159, v162 + *(v168 + 80), &qword_100CD4090);
  v169 = *(v168 + 96);
  v213[0] = v149;
  v170 = v184;
  v213[1] = v184;
  LOBYTE(v213[2]) = v158;
  *(&v213[2] + 1) = *v251;
  HIDWORD(v213[2]) = *&v251[3];
  v171 = v208;
  v213[3] = v208;
  v213[4] = v153;
  v213[5] = 1;
  LOBYTE(v213[6]) = 0;
  *(&v213[6] + 1) = *v249;
  HIDWORD(v213[6]) = *&v249[3];
  v213[7] = v155;
  v213[8] = v157;
  v213[9] = v163;
  LOWORD(v213[10]) = 257;
  memcpy(v162 + v169, v213, 0x52uLL);
  sub_1000302D8(v211, &v228, &qword_100CD40A8);
  sub_1000302D8(v212, &v228, &qword_100CD40B0);
  sub_1000302D8(v213, &v228, &qword_100CD40B8);
  sub_10003FDA0(v210, &qword_100CD4090);
  v214[0] = v176;
  v214[1] = v170;
  v215 = v174;
  *v216 = *v251;
  *&v216[3] = *&v251[3];
  v217 = v171;
  v218 = v175;
  v219 = 1;
  v220 = 0;
  *v221 = *v249;
  *&v221[3] = *&v249[3];
  v222 = v155;
  v223 = v157;
  v224 = v163;
  v225 = 257;
  sub_10003FDA0(v214, &qword_100CD40B8);
  sub_10003FDA0(v207, &qword_100CD4090);
  v226[0] = v209;
  v226[1] = v196;
  v226[2] = v191;
  v226[3] = v195;
  v226[4] = v194;
  v226[5] = v189;
  v226[6] = v192;
  v226[7] = v190;
  v226[8] = v164;
  v226[9] = v165;
  v226[10] = v166;
  v226[11] = v167;
  v226[12] = v187;
  v226[13] = v188;
  v227 = v193;
  sub_10003FDA0(v226, &qword_100CD40B0);
  v228 = v205;
  v229 = v204;
  v230 = v199;
  *v231 = *v255;
  *&v231[3] = *&v255[3];
  v232 = v206;
  v233 = KeyPath;
  v234 = 1;
  v235 = 0;
  *v236 = *v253;
  *&v236[3] = *&v253[3];
  v237 = v203;
  v238 = v202;
  v239 = v200;
  *&v240[3] = *&v258[3];
  *v240 = *v258;
  v241 = v160;
  v242 = v161;
  v243 = v198;
  v244 = v197;
  v245 = 0;
  *v246 = *v259;
  *&v246[3] = *&v259[3];
  v247 = v163;
  v248 = 257;
  return sub_10003FDA0(&v228, &qword_100CD40A8);
}

uint64_t sub_1006F88C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = type metadata accessor for CapsuleView(0);
  __chkstk_darwin(v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10022C350(&qword_100CD40C0);
  __chkstk_darwin(v42);
  v44 = &v38 - v6;
  v7 = sub_10022C350(&qword_100CD40C8);
  __chkstk_darwin(v7);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v38 - v10;
  v12 = sub_10022C350(&qword_100CD40D0);
  __chkstk_darwin(v12);
  v14 = &v38 - v13;
  v15 = sub_10022C350(&qword_100CD40D8);
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  v18 = type metadata accessor for ComparisonCapsuleRowView(0);
  v19 = (a1 + v18[7]);
  if (*(a1 + v18[9]) == 1)
  {
    v20 = v19[1];
    v47 = *v19;
    v48 = v20;
    *&v49 = *(v19 + 4);
    v53 = *(&v47 + 1);
    v54 = v20;
    sub_1006FB638(a1 + v18[8], &v17[*(v3 + 20)], type metadata accessor for ComparisonCapsuleViewModel.Row);
    v21 = v48;
    *v17 = v47;
    *(v17 + 1) = v21;
    *(v17 + 4) = v49;
    sub_1000302D8(&v53, __src, &qword_100CD3D28);
    sub_1006FB5BC(&v54, __src);
    sub_10064E920(&v50);
    v22 = *(&v51 + 1);
    v23 = v52;
    sub_1000161C0(&v50, *(&v51 + 1));
    (*(v23 + 96))(v22, v23);
    sub_10022C350(&qword_100CBB750);
    ScaledValue.wrappedValue.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v24 = &v17[*(v15 + 36)];
    v25 = __src[1];
    *v24 = __src[0];
    *(v24 + 1) = v25;
    *(v24 + 2) = __src[2];
    sub_100006F14(&v50);
    v26 = &qword_100CD40D8;
    sub_1000302D8(v17, v14, &qword_100CD40D8);
    swift_storeEnumTagMultiPayload();
    sub_1006FD894(&qword_100CD40E0, &qword_100CD40D8);
    sub_1006FD7E8();
    _ConditionalContent<>.init(storage:)();
    v27 = v17;
  }

  else
  {
    v39 = v11;
    v40 = v12;
    v41 = v15;
    v28 = v19[1];
    v50 = *v19;
    v51 = v28;
    v52 = *(v19 + 4);
    v53 = *(&v50 + 1);
    v54 = v28;
    sub_1006FB638(a1 + v18[8], &v5[*(v3 + 20)], type metadata accessor for ComparisonCapsuleViewModel.Row);
    v29 = v51;
    *v5 = v50;
    *(v5 + 1) = v29;
    *(v5 + 4) = v52;
    sub_1000302D8(&v53, __src, &qword_100CD3D28);
    sub_1006FB5BC(&v54, __src);
    sub_10064E920(&v47);
    v30 = *(&v48 + 1);
    v31 = v49;
    sub_1000161C0(&v47, *(&v48 + 1));
    (*(v31 + 96))(v30, v31);
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v32 = v44;
    sub_1006FB734(v5, v44, type metadata accessor for CapsuleView);
    memcpy((v32 + *(v42 + 36)), __src, 0x70uLL);
    sub_100006F14(&v47);
    sub_10022C350(&qword_100CBB750);
    ScaledValue.wrappedValue.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v33 = v43;
    sub_10011C0F0(v32, v43, &qword_100CD40C0);
    v34 = (v33 + *(v7 + 36));
    v35 = v48;
    *v34 = v47;
    v34[1] = v35;
    v34[2] = v49;
    v26 = &qword_100CD40C8;
    v36 = v39;
    sub_10011C0F0(v33, v39, &qword_100CD40C8);
    sub_1000302D8(v36, v14, &qword_100CD40C8);
    swift_storeEnumTagMultiPayload();
    sub_1006FD894(&qword_100CD40E0, &qword_100CD40D8);
    sub_1006FD7E8();
    _ConditionalContent<>.init(storage:)();
    v27 = v36;
  }

  return sub_10003FDA0(v27, v26);
}

uint64_t sub_1006F8FC8@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v2 = type metadata accessor for ComparisonCapsuleCompactGridView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v12[0] = sub_10022C350(&qword_100CD3D80);
  __chkstk_darwin(v12[0]);
  v7 = v12 - v6;
  *v7 = static Alignment.center.getter();
  *(v7 + 1) = v8;
  *(v7 + 2) = 0;
  v7[24] = 0;
  *(v7 + 4) = 0x4020000000000000;
  v7[40] = 0;
  sub_10022C350(&qword_100CD3D88);
  v14 = *(v1 + *(v3 + 28) + 8);
  sub_1006FB638(v1, v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ComparisonCapsuleCompactGridView);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_1006FB734(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for ComparisonCapsuleCompactGridView);

  sub_10022C350(&qword_100CD3D28);
  sub_10022C350(&qword_100CD3D90);
  sub_10023FBF4(&qword_100CD3D38, &qword_100CD3D28);
  sub_10023FBF4(&qword_100CD3D98, &qword_100CD3D90);
  sub_1006FB694(&qword_100CD3D48, type metadata accessor for ComparisonCapsuleViewModel.Row);
  ForEach<>.init(_:content:)();
  v13 = v1;
  sub_10022C350(&qword_100CD3DA0);
  sub_10023FBF4(&qword_100CD3DA8, &qword_100CD3D80);
  sub_1006FB818();
  View.accessibilityChildren<A>(children:)();
  return sub_10003FDA0(v7, &qword_100CD3D80);
}

uint64_t sub_1006F9338@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v60 = a3;
  v59 = type metadata accessor for Divider();
  v53 = *(v59 - 8);
  __chkstk_darwin(v59);
  v54 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for ComparisonCapsuleViewModel.Row(0);
  __chkstk_darwin(v55);
  v51 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CD3D50);
  __chkstk_darwin(v7);
  v9 = &v51 - v8;
  v10 = sub_10022C350(&qword_100CD3D58);
  __chkstk_darwin(v10 - 8);
  v52 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v51 - v13;
  __chkstk_darwin(v15);
  v17 = &v51 - v16;
  v18 = sub_10022C350(&qword_100CB4B90);
  __chkstk_darwin(v18 - 8);
  v58 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v61 = &v51 - v21;
  v22 = sub_10022C350(&qword_100CD3DB8);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v57 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v51 - v26;
  __src[0] = 0;
  LOBYTE(__src[1]) = 1;
  sub_1006F9AAC(a2, a1, &__src[2]);
  *v27 = 0;
  v27[8] = 1;
  v28 = *(v23 + 44);
  v56 = v27;
  sub_1006F9CD0(a2, a1, &v27[v28]);
  v29 = a2 + *(type metadata accessor for ComparisonCapsuleCompactGridView(0) + 20);
  v67 = *(v29 + 32);
  v30 = *(v29 + 16);
  v65 = *v29;
  v66 = v30;
  sub_10064E920(v63);
  v31 = v63[3];
  v32 = v63[4];
  sub_1000161C0(v63, v63[3]);
  if (((*(v32 + 104))(v31, v32) & 1) == 0)
  {
    goto LABEL_5;
  }

  v33 = *(&v65 + 1);
  sub_1006FB638(a1, v17, type metadata accessor for ComparisonCapsuleViewModel.Row);
  v34 = v55;
  sub_10001B350(v17, 0, 1, v55);
  sub_1002F558C(v33);
  v35 = *(v7 + 48);
  sub_1000302D8(v17, v9, &qword_100CD3D58);
  sub_1000302D8(v14, &v9[v35], &qword_100CD3D58);
  if (sub_100024D10(v9, 1, v34) != 1)
  {
    v38 = v52;
    sub_1000302D8(v9, v52, &qword_100CD3D58);
    if (sub_100024D10(&v9[v35], 1, v34) != 1)
    {
      v48 = v51;
      sub_1006FB734(&v9[v35], v51, type metadata accessor for ComparisonCapsuleViewModel.Row);
      sub_10064E7C8();
      v50 = v49;
      sub_1006FB6DC(v48, type metadata accessor for ComparisonCapsuleViewModel.Row);
      sub_10003FDA0(v14, &qword_100CD3D58);
      sub_10003FDA0(v17, &qword_100CD3D58);
      sub_1006FB6DC(v38, type metadata accessor for ComparisonCapsuleViewModel.Row);
      sub_10003FDA0(v9, &qword_100CD3D58);
      sub_100006F14(v63);
      if (v50)
      {
        goto LABEL_6;
      }

LABEL_10:
      v39 = v54;
      Divider.init()();
      v40 = v39;
      v37 = v59;
      (*(v53 + 32))(v61, v40, v59);
      v36 = 0;
      goto LABEL_11;
    }

    sub_10003FDA0(v14, &qword_100CD3D58);
    sub_10003FDA0(v17, &qword_100CD3D58);
    sub_1006FB6DC(v38, type metadata accessor for ComparisonCapsuleViewModel.Row);
LABEL_9:
    sub_10003FDA0(v9, &qword_100CD3D50);
    sub_100006F14(v63);
    goto LABEL_10;
  }

  sub_10003FDA0(v14, &qword_100CD3D58);
  sub_10003FDA0(v17, &qword_100CD3D58);
  if (sub_100024D10(&v9[v35], 1, v34) != 1)
  {
    goto LABEL_9;
  }

  sub_10003FDA0(v9, &qword_100CD3D58);
LABEL_5:
  sub_100006F14(v63);
LABEL_6:
  v36 = 1;
  v37 = v59;
LABEL_11:
  v41 = v61;
  sub_10001B350(v61, v36, 1, v37);
  v42 = v56;
  v43 = v57;
  sub_1000302D8(v56, v57, &qword_100CD3DB8);
  v44 = v58;
  sub_1000302D8(v41, v58, &qword_100CB4B90);
  memcpy(v62, __src, sizeof(v62));
  v45 = v60;
  memcpy(v60, __src, 0x68uLL);
  v46 = sub_10022C350(&qword_100CD3DC0);
  sub_1000302D8(v43, v45 + *(v46 + 48), &qword_100CD3DB8);
  sub_1000302D8(v44, v45 + *(v46 + 64), &qword_100CB4B90);
  sub_1000302D8(v62, v63, &qword_100CD3DC8);
  sub_10003FDA0(v41, &qword_100CB4B90);
  sub_10003FDA0(v42, &qword_100CD3DB8);
  sub_10003FDA0(v44, &qword_100CB4B90);
  sub_10003FDA0(v43, &qword_100CD3DB8);
  memcpy(v63, __src, sizeof(v63));
  return sub_10003FDA0(v63, &qword_100CD3DC8);
}

uint64_t sub_1006F9AAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Font.TextStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + *(type metadata accessor for ComparisonCapsuleCompactGridView(0) + 24));
  v32[1] = a2;
  if (v10 == 1 && a2[3])
  {
    v11 = a2[2];
  }

  else
  {
    v11 = *a2;
  }

  v33 = v11;
  v34 = v12;
  sub_10002D5A4();
  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  (*(v7 + 104))(v9, enum case for Font.TextStyle.title3(_:), v6);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  (*(v7 + 8))(v9, v6);
  v18 = Text.font(_:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_10010CD64(v13, v15, v17 & 1);

  KeyPath = swift_getKeyPath();
  sub_10064D998();
  if (v26)
  {

    v27 = 3;
  }

  else
  {
    v27 = 2;
  }

  v28 = v22 & 1;
  LOBYTE(v33) = v28;
  v35 = 0;
  result = static UnitPoint.leading.getter();
  *a3 = v18;
  *(a3 + 8) = v20;
  *(a3 + 16) = v28;
  *(a3 + 24) = v24;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = 1;
  *(a3 + 48) = 0;
  *(a3 + 56) = v27;
  *(a3 + 64) = 0;
  *(a3 + 72) = v30;
  *(a3 + 80) = v31;
  return result;
}

uint64_t sub_1006F9CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v114 = a3;
  v111 = sub_10022C350(&qword_100CD3DD0);
  __chkstk_darwin(v111);
  v115 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v112 = &v102 - v7;
  v109 = sub_10022C350(&qword_100CD3DD8);
  __chkstk_darwin(v109);
  v113 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v118 = &v102 - v10;
  v11 = sub_10022C350(&qword_100CD3DE0);
  __chkstk_darwin(v11);
  v13 = &v102 - v12;
  v14 = sub_10022C350(&qword_100CD3DE8);
  __chkstk_darwin(v14 - 8);
  v110 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v117 = &v102 - v17;
  v18 = a1 + *(type metadata accessor for ComparisonCapsuleCompactGridView(0) + 20);
  *&v126[32] = *(v18 + 32);
  v19 = *(v18 + 16);
  *v126 = *v18;
  *&v126[16] = v19;
  sub_10064EA98();
  if (v23)
  {
    v24 = v20;
    v25 = v22;
    v26 = v23;
    v27 = v21;
    v104 = v21;
    KeyPath = swift_getKeyPath();
    v107 = v25 & 1;
    sub_10010CD54(v24, v27, v25 & 1);

    sub_10064E920(v121);
    *&v116 = a2;
    v28 = v121[3];
    v29 = v121[4];
    sub_1000161C0(v121, v121[3]);
    v102 = (*(v29 + 40))(v28, v29);
    v30 = swift_getKeyPath();
    LOBYTE(v119[0]) = v25 & 1;
    LOBYTE(v122) = 0;
    sub_100006F14(v121);
    v31 = v119[0];
    v103 = v13;
    v32 = v122;
    sub_10064E920(v121);
    v33 = v24;
    v106 = v24;
    v108 = v11;
    v35 = v121[3];
    v34 = v121[4];
    sub_1000161C0(v121, v121[3]);
    v36 = (*(v34 + 16))(v35, v34);
    sub_100006F14(v121);
    v37 = v104;
    v119[0] = v33;
    v119[1] = v104;
    LOBYTE(v119[2]) = v31;
    v119[3] = v26;
    v119[4] = KeyPath;
    v119[5] = 1;
    LOBYTE(v119[6]) = v32;
    v119[7] = v30;
    v119[8] = v102;
    v119[9] = v36;
    sub_10022C350(&qword_100CD3DF8);
    sub_1006FD144();
    v38 = v103;
    View.monospacedDigit()();
    memcpy(v121, v119, sizeof(v121));
    sub_10003FDA0(v121, &qword_100CD3DF8);
    LOBYTE(v33) = static Edge.Set.trailing.getter();
    sub_10064E920(v119);
    v39 = v119[3];
    v40 = v119[4];
    sub_1000161C0(v119, v119[3]);
    (*(v40 + 56))(v39, v40);
    EdgeInsets.init(_all:)();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    sub_10010CD64(v106, v37, v107);

    v49 = v38 + *(sub_10022C350(&qword_100CD3E30) + 36);
    *v49 = v33;
    a2 = v116;
    *(v49 + 8) = v42;
    *(v49 + 16) = v44;
    *(v49 + 24) = v46;
    *(v49 + 32) = v48;
    *(v49 + 40) = 0;
    sub_100006F14(v119);
    v50 = v108;
    *(v38 + *(v108 + 36)) = 257;
    v51 = v117;
    sub_10020B8F4(v38, v117);
    v52 = v51;
    v53 = 0;
    v54 = v50;
  }

  else
  {
    v52 = v117;
    v53 = 1;
    v54 = v11;
  }

  sub_10001B350(v52, v53, 1, v54);
  v116 = *&v126[8];
  v125[0] = v126[0];
  *&v125[8] = *&v126[8];
  *&v125[24] = *&v126[24];
  v55 = type metadata accessor for CapsuleView(0);
  v56 = v118;
  sub_1006FB638(a2, v118 + *(v55 + 20), type metadata accessor for ComparisonCapsuleViewModel.Row);
  v57 = *&v125[16];
  *v56 = *v125;
  *(v56 + 16) = v57;
  *(v56 + 32) = *&v125[32];
  *(v56 + *(sub_10022C350(&qword_100CD3DF0) + 36)) = 1;

  sub_10022C350(&qword_100CBB750);
  ScaledValue.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v58 = (v56 + *(v109 + 36));
  v59 = v123;
  *v58 = v122;
  v58[1] = v59;
  v58[2] = v124;
  sub_10064EEBC();
  *&v116 = v60;
  v109 = v61;
  v63 = v62;
  v65 = v64;
  v66 = swift_getKeyPath();
  sub_10064E920(v121);
  v67 = v121[3];
  v68 = v121[4];
  sub_1000161C0(v121, v121[3]);
  v69 = (*(v68 + 48))(v67, v68);
  v70 = swift_getKeyPath();
  LOBYTE(v119[0]) = v63 & 1;
  v120 = 0;
  sub_100006F14(v121);
  v71 = v119[0];
  v72 = v120;
  sub_10064E920(v121);
  v74 = v121[3];
  v73 = v121[4];
  sub_1000161C0(v121, v121[3]);
  v75 = (*(v73 + 24))(v74, v73);
  sub_100006F14(v121);
  v119[0] = v116;
  v119[1] = v109;
  LOBYTE(v119[2]) = v71;
  v119[3] = v65;
  v119[4] = v66;
  v119[5] = 1;
  LOBYTE(v119[6]) = v72;
  v119[7] = v70;
  v119[8] = v69;
  v119[9] = v75;
  sub_10022C350(&qword_100CD3DF8);
  sub_1006FD144();
  v76 = v112;
  View.monospacedDigit()();
  memcpy(v121, v119, sizeof(v121));
  sub_10003FDA0(v121, &qword_100CD3DF8);
  static UnitPoint.trailing.getter();
  v78 = v77;
  v80 = v79;
  v81 = (v76 + *(sub_10022C350(&qword_100CD3E18) + 36));
  *v81 = v78;
  v81[1] = v80;
  v82 = static Edge.Set.leading.getter();
  sub_10064E920(v119);
  v83 = v119[3];
  v84 = v119[4];
  sub_1000161C0(v119, v119[3]);
  (*(v84 + 56))(v83, v84);
  EdgeInsets.init(_all:)();
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v93 = v76 + *(sub_10022C350(&qword_100CD3E20) + 36);
  *v93 = v82;
  *(v93 + 8) = v86;
  *(v93 + 16) = v88;
  *(v93 + 24) = v90;
  *(v93 + 32) = v92;
  *(v93 + 40) = 0;
  sub_100006F14(v119);
  v94 = v110;
  *(v76 + *(v111 + 36)) = 257;
  v95 = v117;
  sub_1000302D8(v117, v94, &qword_100CD3DE8);
  v96 = v118;
  v97 = v113;
  sub_1000302D8(v118, v113, &qword_100CD3DD8);
  v98 = v115;
  sub_1000302D8(v76, v115, &qword_100CD3DD0);
  v99 = v114;
  sub_1000302D8(v94, v114, &qword_100CD3DE8);
  v100 = sub_10022C350(&qword_100CD3E28);
  sub_1000302D8(v97, v99 + *(v100 + 48), &qword_100CD3DD8);
  sub_1000302D8(v98, v99 + *(v100 + 64), &qword_100CD3DD0);
  sub_10003FDA0(v76, &qword_100CD3DD0);
  sub_10003FDA0(v96, &qword_100CD3DD8);
  sub_10003FDA0(v95, &qword_100CD3DE8);
  sub_10003FDA0(v98, &qword_100CD3DD0);
  sub_10003FDA0(v97, &qword_100CD3DD8);
  return sub_10003FDA0(v94, &qword_100CD3DE8);
}

uint64_t sub_1006FA63C()
{
  type metadata accessor for ComparisonCapsuleCompactGridView(0);

  sub_10022C350(&qword_100CD3D28);
  sub_10022C350(&qword_100CB90B0);
  sub_10023FBF4(&qword_100CD3D38, &qword_100CD3D28);
  sub_100433B9C();
  sub_1006FB694(&qword_100CD3D48, type metadata accessor for ComparisonCapsuleViewModel.Row);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1006FA774()
{
  v0 = type metadata accessor for RoundedRectangle();
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  v4 = (v3 - v2);
  sub_10022C350(&qword_100CB90B0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = v19 - v6;
  v8 = *(v0 + 20);
  v9 = enum case for RoundedCornerStyle.continuous(_:);
  type metadata accessor for RoundedCornerStyle();
  sub_1000037E8();
  (*(v10 + 104))(&v4[v8], v9);
  __asm { FMOV            V0.2D, #5.0 }

  *v4 = _Q0;
  sub_10064DEA4();
  v19[0] = v16;
  v19[1] = v17;
  sub_1006FB694(&qword_100CA47B8, &type metadata accessor for RoundedRectangle);
  sub_10002D5A4();
  View.accessibilityLabel<A>(_:)();

  sub_1006FB6DC(v4, &type metadata accessor for RoundedRectangle);
  ModifiedContent<>.accessibilityRespondsToUserInteraction(_:)();
  return sub_10003FDA0(v7, &qword_100CB90B0);
}

uint64_t sub_1006FA96C@<X0>(uint64_t a1@<X8>)
{
  v3 = static HorizontalAlignment.leading.getter();
  v4 = v1[1];
  v16 = *v1;
  v17 = v4;
  v18 = *(v1 + 4);
  sub_10064E920(v13);
  v5 = v14;
  v6 = v15;
  sub_1000161C0(v13, v14);
  v7 = (*(v6 + 64))(v5, v6);
  *a1 = v3;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  sub_10022C350(&qword_100CD3D20);
  v19 = v17;
  v20 = *(&v16 + 1);
  v12 = *(&v16 + 1);
  v8 = swift_allocObject();
  v9 = v1[1];
  v8[1] = *v1;
  v8[2] = v9;
  *(v8 + 41) = *(v1 + 25);

  sub_1000302D8(&v20, v11, &qword_100CD3D28);
  sub_1006FB5BC(&v19, v11);
  sub_10022C350(&qword_100CD3D28);
  sub_10022C350(&qword_100CD3D30);
  sub_10023FBF4(&qword_100CD3D38, &qword_100CD3D28);
  sub_10023FBF4(&qword_100CD3D40, &qword_100CD3D30);
  sub_1006FB694(&qword_100CD3D48, type metadata accessor for ComparisonCapsuleViewModel.Row);
  ForEach<>.init(_:content:)();
  return sub_100006F14(v13);
}

uint64_t sub_1006FABA0@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a3;
  v82 = type metadata accessor for Divider();
  v67 = *(v82 - 8);
  __chkstk_darwin(v82);
  v66 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for ComparisonCapsuleViewModel.Row(0);
  __chkstk_darwin(v77);
  v65 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_10022C350(&qword_100CD3D50) - 8;
  __chkstk_darwin(v78);
  v74 = &v65 - v7;
  v8 = sub_10022C350(&qword_100CD3D58);
  __chkstk_darwin(v8 - 8);
  v68 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v76 = &v65 - v11;
  __chkstk_darwin(v12);
  v75 = &v65 - v13;
  v14 = sub_10022C350(&qword_100CB4B90);
  __chkstk_darwin(v14 - 8);
  v81 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v80 = &v65 - v17;
  v73 = type metadata accessor for AccessibilityChildBehavior();
  v18 = *(v73 - 8);
  __chkstk_darwin(v73);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ComparisonCapsuleStackRowView(0);
  __chkstk_darwin(v21);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_10022C350(&qword_100CD3D60);
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v25 = &v65 - v24;
  v26 = sub_10022C350(&qword_100CD3D68);
  __chkstk_darwin(v26 - 8);
  v79 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v65 - v29;
  v31 = a2[1];
  v89 = *a2;
  v90 = v31;
  v91 = *(a2 + 4);
  v69 = *(&v89 + 1);
  v92 = v31;
  v32 = *(v21 + 24);
  v70 = type metadata accessor for ComparisonCapsuleViewModel.Row;
  sub_1006FB638(a1, &v23[v32], type metadata accessor for ComparisonCapsuleViewModel.Row);
  v33 = *(a2 + 40);
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v34 = a2[1];
  *(v23 + 1) = *a2;
  *(v23 + 2) = v34;
  *(v23 + 6) = *(a2 + 4);
  v23[*(v21 + 28)] = v33;

  sub_1006FB5BC(&v92, v84);
  static AccessibilityChildBehavior.ignore.getter();
  v35 = sub_1006FB694(&qword_100CD3D70, type metadata accessor for ComparisonCapsuleStackRowView);
  View.accessibilityElement(children:)();
  (*(v18 + 8))(v20, v73);
  sub_1006FB6DC(v23, type metadata accessor for ComparisonCapsuleStackRowView);
  v36 = a1;
  sub_10064DEA4();
  v84[0] = v37;
  v84[1] = v38;
  v87 = v21;
  v88 = v35;
  v39 = v30;
  v40 = v74;
  swift_getOpaqueTypeConformance2();
  sub_10002D5A4();
  v41 = v72;
  View.accessibilityLabel<A>(_:)();
  v42 = v77;

  v43 = v25;
  v44 = v76;
  (*(v71 + 8))(v43, v41);
  v45 = v75;
  sub_1006FB638(v36, v75, v70);
  sub_10001B350(v45, 0, 1, v42);
  sub_1002F558C(v69);
  v46 = *(v78 + 56);
  sub_1000302D8(v45, v40, &qword_100CD3D58);
  sub_1000302D8(v44, v40 + v46, &qword_100CD3D58);
  if (sub_100024D10(v40, 1, v42) == 1)
  {
    sub_10003FDA0(v44, &qword_100CD3D58);
    sub_10003FDA0(v45, &qword_100CD3D58);
    v47 = sub_100024D10(v40 + v46, 1, v42);
    v48 = v80;
    if (v47 == 1)
    {
      sub_10003FDA0(v40, &qword_100CD3D58);
LABEL_10:
      v55 = 1;
      v54 = v82;
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  v49 = v68;
  sub_1000302D8(v40, v68, &qword_100CD3D58);
  if (sub_100024D10(v40 + v46, 1, v42) == 1)
  {
    sub_10003FDA0(v44, &qword_100CD3D58);
    sub_10003FDA0(v45, &qword_100CD3D58);
    sub_1006FB6DC(v49, type metadata accessor for ComparisonCapsuleViewModel.Row);
    v48 = v80;
LABEL_6:
    sub_10003FDA0(v40, &qword_100CD3D50);
    goto LABEL_7;
  }

  v56 = v40 + v46;
  v57 = v65;
  sub_1006FB734(v56, v65, type metadata accessor for ComparisonCapsuleViewModel.Row);
  sub_10064E7C8();
  v59 = v58;
  sub_1006FB6DC(v57, type metadata accessor for ComparisonCapsuleViewModel.Row);
  sub_10003FDA0(v44, &qword_100CD3D58);
  sub_10003FDA0(v45, &qword_100CD3D58);
  sub_1006FB6DC(v49, type metadata accessor for ComparisonCapsuleViewModel.Row);
  sub_10003FDA0(v40, &qword_100CD3D58);
  v48 = v80;
  if (v59)
  {
    goto LABEL_10;
  }

LABEL_7:
  sub_10064E920(v84);
  v50 = v85;
  v51 = v86;
  sub_1000161C0(v84, v85);
  LOBYTE(v50) = (*(v51 + 104))(v50, v51);
  sub_100006F14(v84);
  if ((v50 & 1) == 0)
  {
    goto LABEL_10;
  }

  v52 = v66;
  Divider.init()();
  v53 = v52;
  v54 = v82;
  (*(v67 + 32))(v48, v53, v82);
  v55 = 0;
LABEL_11:
  sub_10001B350(v48, v55, 1, v54);
  v60 = v79;
  sub_1000302D8(v39, v79, &qword_100CD3D68);
  v61 = v81;
  sub_1000302D8(v48, v81, &qword_100CB4B90);
  v62 = v83;
  sub_1000302D8(v60, v83, &qword_100CD3D68);
  v63 = sub_10022C350(&qword_100CD3D78);
  sub_1000302D8(v61, v62 + *(v63 + 48), &qword_100CB4B90);
  sub_10003FDA0(v48, &qword_100CB4B90);
  sub_10003FDA0(v39, &qword_100CD3D68);
  sub_10003FDA0(v61, &qword_100CB4B90);
  return sub_10003FDA0(v60, &qword_100CD3D68);
}

uint64_t sub_1006FB638(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1006FB694(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006FB6DC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1006FB734(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1006FB790@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for ComparisonCapsuleCompactGridView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1006F9338(a1, v6, a2);
}

unint64_t sub_1006FB818()
{
  result = qword_100CD3DB0;
  if (!qword_100CD3DB0)
  {
    sub_10022E824(&qword_100CD3DA0);
    sub_100433B9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD3DB0);
  }

  return result;
}

void *sub_1006FB8BC@<X0>(uint64_t a1@<X8>)
{
  v3 = static HorizontalAlignment.leading.getter();
  v9 = 0;
  sub_1006FB990(v1, __src);
  memcpy(__dst, __src, 0x7BuLL);
  memcpy(v11, __src, 0x7BuLL);
  sub_1000302D8(__dst, &v6, &qword_100CD4040);
  sub_10003FDA0(v11, &qword_100CD4040);
  memcpy(&v8[7], __dst, 0x7BuLL);
  v4 = v9;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  return memcpy((a1 + 17), v8, 0x82uLL);
}

uint64_t sub_1006FB990@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v213 = a2;
  v3 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  v202 = v197 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for ComparisonCapsuleViewModel.Row.Body(0);
  __chkstk_darwin(v207);
  v214 = v197 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CACFF0);
  __chkstk_darwin(v6 - 8);
  v215 = v197 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v197 - v9;
  v11 = type metadata accessor for EnvironmentValues();
  v211 = *(v11 - 8);
  v212 = v11;
  __chkstk_darwin(v11);
  v210 = v197 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Font.TextStyle();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v197 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ComparisonCapsuleStackRowView(0);
  v19 = *(v17 + 24);
  v18 = *(v17 + 28);
  v206 = v17;
  v20 = *(a1 + v18);
  v21 = (a1 + v19);
  v216 = v20;
  if (v20 == 1 && v21[3])
  {
    v22 = v21[2];
  }

  else
  {
    v22 = *v21;
  }

  __src[0] = v22;
  __src[1] = v23;
  sub_10002D5A4();
  v208 = Text.init<A>(_:)();
  KeyPath = v24;
  v204 = v25;
  LODWORD(v203) = v26;
  v27 = *(v14 + 104);
  v27(v16, enum case for Font.TextStyle.title3(_:), v13);
  static Font.Weight.medium.getter();
  v28 = static Font.system(_:weight:)();
  v29 = *(v14 + 8);
  v29(v16, v13);
  v27(v16, enum case for Font.TextStyle.body(_:), v13);
  static Font.Weight.medium.getter();
  v30 = static Font.system(_:weight:)();
  v29(v16, v13);
  v31 = *a1;
  v32 = *(a1 + 8);
  v205 = a1;
  if (v32 != 1)
  {

    static os_log_type_t.fault.getter();
    v33 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v34 = v210;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v31, 0);
    (*(v211 + 8))(v34, v212);
    LOBYTE(v31) = __src[0];
  }

  v35 = enum case for Font.Leading.tight(_:);
  v36 = type metadata accessor for Font.Leading();
  (*(*(v36 - 8) + 104))(v10, v35, v36);
  sub_10001B350(v10, 0, 1, v36);
  v37 = v215;
  sub_1000302D8(v10, v215, &qword_100CACFF0);

  sub_1001C987C(v28, v30, v31 & 1, v37);
  LOBYTE(v36) = v203;
  v38 = v208;
  v39 = v10;
  v40 = v204;
  v41 = Text.font(_:)();
  v210 = v42;
  v211 = v41;
  LOBYTE(v37) = v43;
  v212 = v44;

  sub_10010CD64(v38, v40, v36 & 1);

  sub_10003FDA0(v39, &qword_100CACFF0);
  KeyPath = swift_getKeyPath();
  LODWORD(v215) = v37 & 1;
  v227 = v37 & 1;
  LODWORD(v208) = v216 ^ 1;
  v225 = v216 ^ 1;
  v45 = v205;
  v46 = v205 + *(v206 + 24);
  v47 = type metadata accessor for ComparisonCapsuleViewModel.Row(0);
  v48 = v214;
  sub_1006FB638(v46 + *(v47 + 20), v214, type metadata accessor for ComparisonCapsuleViewModel.Row.Body);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1006FB6DC(v48, type metadata accessor for ComparisonCapsuleViewModel.Row.Body);
    v49 = *(v45 + 32);
    v228 = *(v45 + 16);
    v229 = v49;
    v230 = *(v45 + 48);
    sub_10064EA98();
    if (v53)
    {
      v54 = v50;
      v55 = v51;
      v56 = v52;
      v57 = v53;
      sub_10064E920(__src);
      v58 = __src[3];
      v59 = __src[4];
      sub_1000161C0(__src, __src[3]);
      v223[0] = (*(v59 + 16))(v58, v59);
      v214 = v56 & 1;
      v222[0] = v56 & 1;
      v60 = Text.foregroundStyle<A>(_:)();
      v205 = v55;
      v206 = v54;
      v62 = v61;
      LOBYTE(v55) = v63;
      v207 = v57;

      sub_100006F14(__src);
      v64 = static Text.+ infix(_:_:)();
      v203 = v65;
      v204 = v64;
      v199 = v66;
      v202 = v67;
      sub_10010CD64(v60, v62, v55 & 1);

      sub_10064EEBC();
      v69 = v68;
      v71 = v70;
      LOBYTE(v62) = v72;
      sub_10064E920(__src);
      v73 = __src[3];
      v74 = __src[4];
      sub_1000161C0(__src, __src[3]);
      v223[0] = (*(v74 + 24))(v73, v74);
      v75 = Text.foregroundStyle<A>(_:)();
      v200 = v76;
      v201 = v75;
      v78 = v77;
      sub_10010CD64(v69, v71, v62 & 1);

      sub_100006F14(__src);
      v79 = v203;
      v80 = v204;
      v81 = v201;
      v82 = v200;
      v83 = static Text.+ infix(_:_:)();
      v197[1] = v84;
      v198 = v83;
      v86 = v85;
      LOBYTE(v71) = v87;
      sub_10010CD64(v81, v82, v78 & 1);

      sub_10010CD64(v80, v79, v199 & 1);

      v88 = v198;
      v89 = Text.monospacedDigit()();
      v91 = v90;
      v93 = v92;
      v95 = v94;
      sub_10010CD64(v88, v86, v71 & 1);

      v96 = swift_getKeyPath();
      v97 = swift_getKeyPath();
      v222[0] = 0;
      v217[0] = v89;
      v217[1] = v91;
      LOBYTE(v217[2]) = v93 & 1;
      *(&v217[2] + 1) = __src[0];
      HIDWORD(v217[2]) = *(__src + 3);
      v217[3] = v95;
      v217[4] = v96;
      v217[5] = 0x3FE0000000000000;
      v217[6] = v97;
      v217[7] = 1;
      LOBYTE(v217[8]) = 0;
      memcpy(v223, v217, 0x41uLL);
      LOBYTE(v219) = 0;
      BYTE1(v223[8]) = 0;
      sub_1000302D8(v217, __src, &qword_100CD4048);
      sub_1000302D8(v217, __src, &qword_100CD4048);
      sub_10022C350(&qword_100CD4048);
      sub_1006FD658();
      _ConditionalContent<>.init(storage:)();
      sub_10010CD64(v206, v205, v214);

      sub_10003FDA0(v217, &qword_100CD4048);
      sub_10003FDA0(v217, &qword_100CD4048);
      memcpy(v222, __src, 0x42uLL);
    }

    else
    {
      sub_10064EEBC();
      v153 = v152;
      v155 = v154;
      v157 = v156;
      sub_10064E920(__src);
      v158 = __src[3];
      v159 = __src[4];
      sub_1000161C0(__src, __src[3]);
      v223[0] = (*(v159 + 24))(v158, v159);
      v160 = Text.foregroundStyle<A>(_:)();
      v162 = v161;
      v164 = v163;
      sub_10010CD64(v153, v155, v157 & 1);

      sub_100006F14(__src);
      v165 = Text.monospacedDigit()();
      v167 = v166;
      LOBYTE(v153) = v168;
      v170 = v169;
      sub_10010CD64(v160, v162, v164 & 1);

      v171 = swift_getKeyPath();
      v172 = swift_getKeyPath();
      LOBYTE(v223[0]) = 1;
      __src[0] = v165;
      __src[1] = v167;
      LOBYTE(__src[2]) = v153 & 1;
      __src[3] = v170;
      __src[4] = v171;
      __src[5] = 0x3FE0000000000000;
      __src[6] = v172;
      __src[7] = 1;
      LOWORD(__src[8]) = 256;
      sub_10022C350(&qword_100CD4048);
      sub_1006FD658();
      _ConditionalContent<>.init(storage:)();
    }

    memcpy(v223, v222, 0x42uLL);
    LOBYTE(v217[0]) = 1;
    BYTE2(v223[8]) = 1;
    sub_10022C350(&qword_100CD4058);
    sub_1006FD710();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    sub_10064D998();
    v100 = v99;
    if (v98)
    {
      v101 = v98;
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v102._countAndFlagsBits = 14924;
      v102._object = 0xE200000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v102);
      v103._countAndFlagsBits = v100;
      v103._object = v101;
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v103);

      v104._countAndFlagsBits = 0;
      v104._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v104);
      LocalizedStringKey.init(stringInterpolation:)();
      v105 = Text.init(_:tableName:bundle:comment:)();
      v107 = v106;
      v203 = v46;
      v109 = v108;
      v110 = *(v45 + 32);
      v228 = *(v45 + 16);
      v229 = v110;
      v230 = *(v45 + 48);
      sub_10064E920(__src);
      v111 = __src[3];
      v112 = __src[4];
      sub_1000161C0(__src, __src[3]);
      v223[0] = (*(v112 + 16))(v111, v112);
      v113 = Text.foregroundStyle<A>(_:)();
      v115 = v114;
      LOBYTE(v111) = v116;
      v201 = v117;
      sub_10010CD64(v105, v107, v109 & 1);

      sub_100006F14(__src);
      v118 = static Text.+ infix(_:_:)();
      v205 = v119;
      v206 = v118;
      LODWORD(v207) = v120;
      v204 = v121;
      sub_10010CD64(v113, v115, v111 & 1);

      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v122._countAndFlagsBits = 14920;
      v122._object = 0xE200000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v122);
      sub_10064DC10();
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v123);

      v124._countAndFlagsBits = 0;
      v124._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v124);
      LocalizedStringKey.init(stringInterpolation:)();
      v125 = Text.init(_:tableName:bundle:comment:)();
      v127 = v126;
      LOBYTE(v113) = v128;
      sub_10064E920(__src);
      v129 = __src[3];
      v130 = __src[4];
      sub_1000161C0(__src, __src[3]);
      v223[0] = (*(v130 + 24))(v129, v130);
      v131 = Text.foregroundStyle<A>(_:)();
      v202 = v132;
      v203 = v131;
      LOBYTE(v107) = v133;
      sub_10010CD64(v125, v127, v113 & 1);

      sub_100006F14(__src);
      v134 = v205;
      v135 = v206;
      v136 = v203;
      v137 = v202;
      v138 = static Text.+ infix(_:_:)();
      v200 = v139;
      v201 = v138;
      v141 = v140;
      LOBYTE(v127) = v142;
      sub_10010CD64(v136, v137, v107 & 1);

      sub_10010CD64(v135, v134, v207 & 1);

      v143 = v201;
      v144 = Text.monospacedDigit()();
      v146 = v145;
      LOBYTE(v107) = v147;
      v149 = v148;
      sub_10010CD64(v143, v141, v127 & 1);

      v150 = swift_getKeyPath();
      v151 = swift_getKeyPath();
      LOBYTE(v223[0]) = 0;
      __src[0] = v144;
      __src[1] = v146;
      LOBYTE(__src[2]) = v107 & 1;
      __src[3] = v149;
      __src[4] = v150;
      __src[5] = 0x3FE0000000000000;
      __src[6] = v151;
      __src[7] = 1;
      LOWORD(__src[8]) = 0;
    }

    else
    {
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v173._countAndFlagsBits = 14920;
      v173._object = 0xE200000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v173);
      sub_10064DC10();
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v174);

      v175._countAndFlagsBits = 0;
      v175._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v175);
      LocalizedStringKey.init(stringInterpolation:)();
      v176 = Text.init(_:tableName:bundle:comment:)();
      v178 = v177;
      v180 = v179;
      v181 = Text.monospacedDigit()();
      v183 = v182;
      v185 = v184;
      v187 = v186;
      sub_10010CD64(v176, v178, v180 & 1);

      v188 = swift_getKeyPath();
      v189 = swift_getKeyPath();
      LOBYTE(v223[0]) = 1;
      __src[0] = v181;
      __src[1] = v183;
      LOBYTE(__src[2]) = v185 & 1;
      __src[3] = v187;
      __src[4] = v188;
      __src[5] = 0x3FE0000000000000;
      __src[6] = v189;
      __src[7] = 1;
      LOWORD(__src[8]) = 256;
    }

    sub_10022C350(&qword_100CD4048);
    sub_1006FD658();
    _ConditionalContent<>.init(storage:)();
    memcpy(__src, v222, 0x42uLL);
    LOBYTE(v217[0]) = 0;
    BYTE2(__src[8]) = 0;
    sub_10022C350(&qword_100CD4058);
    sub_1006FD710();
    _ConditionalContent<>.init(storage:)();
    sub_1006FB6DC(v214, type metadata accessor for ComparisonCapsuleViewModel.Row.Body);
    memcpy(__src, v223, 0x43uLL);
  }

  memcpy(v223, __src, 0x43uLL);
  v191 = v210;
  v190 = v211;
  *&v219 = v211;
  *(&v219 + 1) = v210;
  LOBYTE(v220) = v215;
  *(&v220 + 1) = *v226;
  DWORD1(v220) = *&v226[3];
  v192 = v212;
  *(&v220 + 1) = v212;
  v193 = KeyPath;
  *v221 = KeyPath;
  v194 = v216;
  *&v221[8] = v216;
  v195 = v208;
  v221[16] = v208;
  *&v221[17] = 257;
  *(&v218[2] + 15) = *&v221[15];
  v218[2] = *v221;
  v218[1] = v220;
  v218[0] = v219;
  memcpy(v222, __src, 0x43uLL);
  memcpy(&v218[3] + 8, __src, 0x43uLL);
  memcpy(v213, v218, 0x7BuLL);
  sub_1000302D8(&v219, v217, &qword_100CACF40);
  sub_1000302D8(v222, v217, &qword_100CD4068);
  sub_10003FDA0(v223, &qword_100CD4068);
  v217[0] = v190;
  v217[1] = v191;
  LOBYTE(v217[2]) = v215;
  *(&v217[2] + 1) = *v226;
  HIDWORD(v217[2]) = *&v226[3];
  v217[3] = v192;
  v217[4] = v193;
  v217[5] = v194;
  LOBYTE(v217[6]) = v195;
  *(&v217[6] + 1) = 257;
  return sub_10003FDA0(v217, &qword_100CACF40);
}

uint64_t sub_1006FCBDC@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v3 = sub_10022C350(&qword_100CD4070);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = (&v35 - v5);
  sub_10022C350(qword_100CA5418);
  sub_100003828();
  __chkstk_darwin(v7);
  sub_1000249D0();
  v8 = type metadata accessor for WeatherDayVarianceView();
  sub_1000037C4();
  v37 = v9;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v36 = v12 - v11;
  v13 = type metadata accessor for ComparisonCapsuleViewModel.Row.Body.Temperature(0);
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  type metadata accessor for ComparisonCapsuleViewModel.Row.Body(0);
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_1000037D8();
  v21 = (v20 - v19);
  v22 = v1 + *(type metadata accessor for CapsuleView(0) + 20);
  v23 = type metadata accessor for ComparisonCapsuleViewModel.Row(0);
  sub_1006FB638(v22 + *(v23 + 20), v21, type metadata accessor for ComparisonCapsuleViewModel.Row.Body);
  sub_100003940();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v21;
    v25 = v21[1];

    *v6 = v25;
    v6[1] = v24;
    swift_storeEnumTagMultiPayload();
    sub_1000065C4();
    sub_1006FB694(v26, v27);
    sub_1006FD794();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v35 = v3;
    sub_1006FB734(v21, v17, type metadata accessor for ComparisonCapsuleViewModel.Row.Body.Temperature);
    v29 = sub_10022C350(&qword_100CA53F8);
    Measurement.value.getter();
    Measurement.value.getter();
    sub_1000302D8(v17 + *(v13 + 24), v2, qword_100CA5418);
    if (sub_100024D10(v2, 1, v29) == 1)
    {
      sub_10003FDA0(v2, qword_100CA5418);
    }

    else
    {
      Measurement.value.getter();
      (*(*(v29 - 8) + 8))(v2, v29);
    }

    sub_10018CA78(v30);
    v31 = v36;
    WeatherDayVarianceView.init(weekMaxTemp:weekMinTemp:dayHighTemp:dayLowTemp:currentTemp:isDaylight:temperatureGradient:)();
    v32 = v37;
    (*(v37 + 16))(v6, v31, v8);
    swift_storeEnumTagMultiPayload();
    sub_1000065C4();
    sub_1006FB694(v33, v34);
    sub_1006FD794();
    _ConditionalContent<>.init(storage:)();
    (*(v32 + 8))(v31, v8);
    return sub_1006FB6DC(v17, type metadata accessor for ComparisonCapsuleViewModel.Row.Body.Temperature);
  }
}

uint64_t sub_1006FD090(uint64_t a1)
{
  type metadata accessor for Locale();
  sub_1000037C4();
  __chkstk_darwin(v2);
  sub_1000037D8();
  (*(v5 + 16))(v4 - v3, a1);
  return EnvironmentValues.locale.setter();
}

unint64_t sub_1006FD144()
{
  result = qword_100CD3E00;
  if (!qword_100CD3E00)
  {
    sub_10022E824(&qword_100CD3DF8);
    sub_1006FD1FC();
    sub_10023FBF4(&qword_100CAF708, &qword_100CAF710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD3E00);
  }

  return result;
}

unint64_t sub_1006FD1FC()
{
  result = qword_100CD3E08;
  if (!qword_100CD3E08)
  {
    sub_10022E824(&qword_100CD3E10);
    sub_10033CBA4();
    sub_10023FBF4(&qword_100CA53B8, &qword_100CA53C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD3E08);
  }

  return result;
}

void sub_1006FD30C()
{
  sub_1000077F0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ComparisonCapsuleViewModel.Row(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1006FD3C8()
{
  result = type metadata accessor for ComparisonCapsuleViewModel.Row(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1006FD46C()
{
  sub_1000612C8();
  if (v0 <= 0x3F)
  {
    sub_10010F3E4(319, &qword_100CBEF38, &type metadata accessor for Locale);
    if (v1 <= 0x3F)
    {
      sub_1001BA110();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ComparisonCapsuleViewModel.Row(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1006FD54C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v6 = sub_100003A24(a1, a2);
  sub_10022E824(v6);
  sub_10022E824(&qword_100CD3DA0);
  sub_10023FBF4(a4, a2);
  sub_1006FB818();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1006FD658()
{
  result = qword_100CD4050;
  if (!qword_100CD4050)
  {
    sub_10022E824(&qword_100CD4048);
    sub_10043721C();
    sub_10023FBF4(&qword_100CADEA0, &qword_100CADEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4050);
  }

  return result;
}

unint64_t sub_1006FD710()
{
  result = qword_100CD4060;
  if (!qword_100CD4060)
  {
    sub_10022E824(&qword_100CD4058);
    sub_1006FD658();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4060);
  }

  return result;
}

unint64_t sub_1006FD794()
{
  result = qword_100CD4080;
  if (!qword_100CD4080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4080);
  }

  return result;
}

unint64_t sub_1006FD7E8()
{
  result = qword_100CD40F0;
  if (!qword_100CD40F0)
  {
    sub_10022E824(&qword_100CD40C8);
    sub_1006FD894(&qword_100CD40F8, &unk_100CD40C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD40F0);
  }

  return result;
}

uint64_t sub_1006FD894(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = sub_100003A24(0, a2);
    sub_10022E824(v4);
    sub_1006FB694(&qword_100CD40E8, type metadata accessor for CapsuleView);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1006FD938()
{
  result = qword_100CD4110;
  if (!qword_100CD4110)
  {
    sub_10022E824(&qword_100CD4118);
    sub_1006FB694(&qword_100CD4078, &type metadata accessor for WeatherDayVarianceView);
    sub_1006FD794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4110);
  }

  return result;
}

uint64_t sub_1006FDA00@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WeatherClock.date.getter();
  v6 = [objc_opt_self() mainBundle];
  if (!sub_1006FDB90(v6))
  {
    v12 = 0u;
    v13 = 0u;
    goto LABEL_6;
  }

  sub_100879D00();

  if (!*(&v13 + 1))
  {
LABEL_6:
    sub_1003C1574(&v12);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v7 = 0;
    v8 = 0xE000000000000000;
    goto LABEL_8;
  }

  v7 = v11[0];
  v8 = v11[1];
LABEL_8:
  (*(v3 + 32))(a1, v5, v2);
  result = type metadata accessor for MainStateProcessingContext();
  v10 = (a1 + *(result + 20));
  *v10 = v7;
  v10[1] = v8;
  return result;
}

uint64_t sub_1006FDB90(void *a1)
{
  v2 = [a1 infoDictionary];

  if (!v2)
  {
    return 0;
  }

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1006FDC70()
{
  result = type metadata accessor for UnitsConfigurationViewModel.Representation(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1006FDCDC()
{
  sub_1006FDDB4();
  if (v0 <= 0x3F)
  {
    sub_1006FDE60();
    if (v1 <= 0x3F)
    {
      sub_1006FDF3C();
      if (v2 <= 0x3F)
      {
        type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(319);
        if (v3 <= 0x3F)
        {
          sub_1006FDFF0();
          if (v4 <= 0x3F)
          {
            type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows(319);
            if (v5 <= 0x3F)
            {
              type metadata accessor for UnitsConfigurationViewModel.Representation.Full(319);
              if (v6 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1006FDDB4()
{
  if (!qword_100CD4238)
  {
    type metadata accessor for UnitConfiguration.Distance();
    sub_1006FDEF4(&qword_100CD4240, &type metadata accessor for UnitConfiguration.Distance);
    v0 = type metadata accessor for UnitsConfigurationViewModel.Configuration();
    if (!v1)
    {
      atomic_store(v0, &qword_100CD4238);
    }
  }
}

void sub_1006FDE60()
{
  if (!qword_100CD4248)
  {
    type metadata accessor for UnitConfiguration.Precipitation();
    sub_1006FDEF4(&qword_100CD4250, &type metadata accessor for UnitConfiguration.Precipitation);
    v0 = type metadata accessor for UnitsConfigurationViewModel.Configuration();
    if (!v1)
    {
      atomic_store(v0, &qword_100CD4248);
    }
  }
}

uint64_t sub_1006FDEF4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1006FDF3C()
{
  if (!qword_100CD4258)
  {
    type metadata accessor for UnitConfiguration.Pressure();
    sub_1006FDEF4(&qword_100CD4260, &type metadata accessor for UnitConfiguration.Pressure);
    v0 = type metadata accessor for UnitsConfigurationViewModel.Configuration();
    if (!v1)
    {
      atomic_store(v0, &qword_100CD4258);
    }
  }
}

void sub_1006FDFF0()
{
  if (!qword_100CD4268)
  {
    type metadata accessor for UnitConfiguration.WindSpeed();
    sub_1006FDEF4(&unk_100CD4270, &type metadata accessor for UnitConfiguration.WindSpeed);
    v0 = type metadata accessor for UnitsConfigurationViewModel.Configuration();
    if (!v1)
    {
      atomic_store(v0, &qword_100CD4268);
    }
  }
}

void sub_1006FE0EC()
{
  sub_1006FDDB4();
  if (v0 <= 0x3F)
  {
    sub_1006FDE60();
    if (v1 <= 0x3F)
    {
      sub_1006FDF3C();
      if (v2 <= 0x3F)
      {
        type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(319);
        if (v3 <= 0x3F)
        {
          sub_1006FDFF0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1006FE1F0()
{
  sub_10002C0CC(319, &qword_100CD43B0, &qword_100CB6058);
  if (v0 <= 0x3F)
  {
    sub_10002C0CC(319, &qword_100CD43B8, &qword_100CB6038);
    if (v1 <= 0x3F)
    {
      sub_10002C0CC(319, &qword_100CD43C0, &qword_100CB6028);
      if (v2 <= 0x3F)
      {
        sub_1006FE420(319, &qword_100CD43C8, type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature);
        if (v3 <= 0x3F)
        {
          sub_10002C0CC(319, &unk_100CD43D0, &qword_100CB5FF0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1006FE360()
{
  sub_1003FFB64();
  if (v0 <= 0x3F)
  {
    sub_1006FE420(319, &qword_100CB65D8, &type metadata accessor for UnitConfiguration.Temperature);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1006FE420(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1006FE49C()
{
  v0 = type metadata accessor for UnitConfiguration.Temperature();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1006FE4F4()
{
  result = type metadata accessor for Array();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1006FE584(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 8) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return sub_100024D10((a1 + v7 + 8) & ~v7, v6, v4);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_1006FE704(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 8) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_45:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v22 = &a1[v10 + 8] & ~v10;

            sub_10001B350(v22, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v21 = (a2 - 1);
            }

            *a1 = v21;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_45;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

void sub_1006FE94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v21;
  a20 = v22;
  v23 = type metadata accessor for UnitConfiguration.Temperature();
  sub_1000037C4();
  v25 = v24;
  __chkstk_darwin(v26);
  sub_1000037D8();
  sub_100019530();
  v27 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  v28 = sub_100003810(v27);
  __chkstk_darwin(v28);
  sub_1000037D8();
  sub_10000CC9C();
  v29 = sub_10022C350(&qword_100CD4610);
  sub_100003810(v29);
  sub_100003828();
  __chkstk_darwin(v30);
  v32 = &a9 - v31;
  v34 = *(v33 + 56);
  sub_1007030AC();
  sub_1007030AC();
  sub_10000554C(v32);
  if (!v35)
  {
    sub_10000493C();
    sub_1000B0C38();
    sub_1007030AC();
    sub_10000554C(&v32[v34]);
    if (!v35)
    {
      (*(v25 + 32))(v20, &v32[v34], v23);
      v38 = sub_100003984();
      sub_100747534(v38, v39);
      v40 = *(v25 + 8);
      v40(v20, v23);
      v41 = sub_1000046B4();
      (v40)(v41);
      sub_100011780();
      goto LABEL_10;
    }

    v36 = sub_1000046B4();
    v37(v36);
LABEL_9:
    sub_1000180EC(v32, &qword_100CD4610);
    goto LABEL_10;
  }

  sub_10000554C(&v32[v34]);
  if (!v35)
  {
    goto LABEL_9;
  }

  sub_100011780();
LABEL_10:
  sub_10000536C();
}

uint64_t sub_1006FEB64()
{
  sub_1009EA2A4();
  if ((v0 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnitConfiguration.Precipitation();
  sub_10022C350(&qword_100CB6038);
  sub_1006FDEF4(&qword_100CD4600, &type metadata accessor for UnitConfiguration.Precipitation);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1006FEC1C()
{
  sub_1009EA25C();
  if ((v0 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnitConfiguration.Pressure();
  sub_10022C350(&qword_100CB6028);
  sub_1006FDEF4(&qword_100CD45F8, &type metadata accessor for UnitConfiguration.Pressure);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1006FECD4()
{
  sub_1009EA214();
  if ((v0 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnitConfiguration.WindSpeed();
  sub_10022C350(&qword_100CB5FF0);
  sub_1006FDEF4(&qword_100CD45F0, &type metadata accessor for UnitConfiguration.WindSpeed);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1006FED8C()
{
  if ((static Array<A>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnitsConfigurationViewModel.Configuration();
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

void sub_1006FEE18()
{
  sub_10000C778();
  v67 = v0;
  v68 = v1;
  v2 = type metadata accessor for UnitsConfigurationViewModel.Representation.Full(0);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000038E4();
  v65 = v4;
  v5 = sub_1000038CC();
  v6 = type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows(v5);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_1000038E4();
  v64[8] = v8;
  v64[3] = sub_10022C350(&qword_100CB5FF0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v9);
  sub_1000039BC();
  v64[9] = v10;
  v11 = sub_1000038CC();
  v12 = type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(v11);
  v13 = sub_100003810(v12);
  __chkstk_darwin(v13);
  sub_1000038E4();
  v64[6] = v14;
  v64[2] = sub_10022C350(&qword_100CB6028);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v15);
  sub_1000039BC();
  v64[7] = v16;
  v64[1] = sub_10022C350(&qword_100CB6038);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v17);
  sub_1000039BC();
  v64[5] = v18;
  v64[0] = sub_10022C350(&qword_100CB6058);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v19);
  sub_1000039BC();
  v64[4] = v20;
  v21 = sub_1000038CC();
  type metadata accessor for UnitsConfigurationViewModel.Representation(v21);
  sub_1000037E8();
  __chkstk_darwin(v22);
  sub_100003C38();
  v25 = v23 - v24;
  __chkstk_darwin(v26);
  __chkstk_darwin(v27);
  v66 = v64 - v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  v31 = v64 - v30;
  __chkstk_darwin(v32);
  v34 = v64 - v33;
  __chkstk_darwin(v35);
  v37 = v64 - v36;
  __chkstk_darwin(v38);
  v40 = v64 - v39;
  v41 = sub_10022C350(&qword_100CD45E8);
  sub_100003810(v41);
  sub_100003828();
  __chkstk_darwin(v42);
  v44 = v64 - v43;
  sub_1007030AC();
  sub_1007030AC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_10001CB60();
      sub_1007030AC();
      if (sub_100087E24() != 1)
      {
        v45 = &qword_100CB6038;
        v56 = v37;
        goto LABEL_25;
      }

      sub_100051BBC();
      sub_1009EA2A4();
      if (v52)
      {
        type metadata accessor for UnitConfiguration.Precipitation();
        sub_1000065DC();
        sub_1006FDEF4(v53, v54);
        dispatch thunk of static Equatable.== infix(_:_:)();
      }

      goto LABEL_33;
    case 2u:
      sub_10001CB60();
      sub_1007030AC();
      if (sub_100087E24() != 2)
      {
        v45 = &qword_100CB6028;
        v56 = v34;
        goto LABEL_25;
      }

      sub_100051BBC();
      sub_1009EA25C();
      if (v49)
      {
        type metadata accessor for UnitConfiguration.Pressure();
        sub_100008D50();
        sub_1006FDEF4(v50, v51);
        dispatch thunk of static Equatable.== infix(_:_:)();
      }

      goto LABEL_33;
    case 3u:
      sub_10001CB60();
      sub_1007030AC();
      if (sub_100087E24() == 3)
      {
        sub_10002304C();
        sub_100703054();
        sub_1007004E0(v31);
        sub_100018690();
        sub_100703000();
        goto LABEL_19;
      }

      sub_100019DCC();
      goto LABEL_27;
    case 4u:
      sub_10001CB60();
      v40 = v66;
      sub_1007030AC();
      if (sub_100087E24() != 4)
      {
        v45 = &qword_100CB5FF0;
        goto LABEL_21;
      }

      sub_100051BBC();
      sub_1009EA214();
      if (v46)
      {
        type metadata accessor for UnitConfiguration.WindSpeed();
        sub_100014D34();
        sub_1006FDEF4(v47, v48);
        sub_100120110();
      }

      goto LABEL_33;
    case 5u:
      sub_10001CB60();
      sub_100003940();
      sub_1007030AC();
      if (sub_100087E24() == 5)
      {
        sub_100031770();
        sub_100703054();
        sub_1006FF820();
        sub_100703000();
        sub_1000B0C38();
LABEL_19:
        sub_100703000();
        sub_1000698E4();
        goto LABEL_34;
      }

      sub_100052050();
LABEL_27:
      sub_100703000();
      goto LABEL_28;
    case 6u:
      sub_10001CB60();
      sub_1007030AC();
      if (sub_100087E24() != 6)
      {
        goto LABEL_27;
      }

      sub_100037CC0();
      v55 = v65;
      sub_100703054();
      sub_1006FF704(v25, v55);
      sub_100703000();
      goto LABEL_19;
    default:
      sub_10001CB60();
      sub_1007030AC();
      if (sub_100087E24())
      {
        v45 = &qword_100CB6058;
LABEL_21:
        v56 = v40;
LABEL_25:
        sub_1000180EC(v56, v45);
LABEL_28:
        sub_1000180EC(v44, &qword_100CD45E8);
      }

      else
      {
        sub_100051BBC();
        sub_1009EA2EC();
        if (v57)
        {
          type metadata accessor for UnitConfiguration.Distance();
          sub_100010950();
          sub_1006FDEF4(v58, v59);
          sub_100120110();
        }

LABEL_33:
        sub_10000FEC4();
        sub_1000180EC(v60, v61);
        sub_10000FEC4();
        sub_1000180EC(v62, v63);
        sub_1000698E4();
      }

LABEL_34:
      sub_10000536C();
      return;
  }
}

uint64_t sub_1006FF704(uint64_t a1, uint64_t a2)
{
  sub_1009EA2EC();
  if (v4 & 1) != 0 && (type metadata accessor for UnitConfiguration.Distance(), sub_10022C350(&qword_100CB6058), sub_100010950(), sub_1006FDEF4(v5, v6), (dispatch thunk of static Equatable.== infix(_:_:)()) && (v7 = type metadata accessor for UnitsConfigurationViewModel.Representation.Full(0), sub_10001136C(v7[5]), (sub_1006FEB64()) && (sub_10001136C(v7[6]), (sub_1006FEC1C()) && (v8 = sub_10001136C(v7[7]), (sub_1007004E0(v8)) && (sub_10001136C(v7[8]), (sub_1006FECD4()) && *(a1 + v7[9]) == *(a2 + v7[9]))
  {
    v9 = *(a1 + v7[10]) ^ *(a2 + v7[10]) ^ 1;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void sub_1006FF820()
{
  sub_10000C778();
  v132 = v3;
  v5 = v4;
  v117 = sub_10022C350(&qword_100CB5FF0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v6);
  sub_1000039BC();
  v113[1] = v7;
  v8 = sub_10022C350(&qword_100CB63F0);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  sub_1000039BC();
  v114 = v10;
  v116 = sub_10022C350(&qword_100CD4618);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v11);
  sub_1000039BC();
  v118 = v12;
  v13 = sub_1000038CC();
  v122 = type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(v13);
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000038E4();
  v115 = v15;
  v16 = sub_10022C350(&qword_100CB6418);
  sub_100003810(v16);
  sub_100003828();
  __chkstk_darwin(v17);
  sub_1000039BC();
  v119 = v18;
  v121 = sub_10022C350(&qword_100CD4620);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v19);
  sub_1000039BC();
  v123 = v20;
  v127 = sub_10022C350(&qword_100CB6028);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v21);
  sub_1000039BC();
  v120 = v22;
  v23 = sub_10022C350(&qword_100CB63D0);
  sub_100003810(v23);
  sub_100003828();
  __chkstk_darwin(v24);
  sub_1000039BC();
  v124 = v25;
  v126 = sub_10022C350(&qword_100CD4628);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v26);
  sub_1000039BC();
  v128 = v27;
  v130 = sub_10022C350(&qword_100CB6038);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v28);
  sub_1000039BC();
  v125 = v29;
  v30 = sub_10022C350(&qword_100CB63E0);
  sub_100003810(v30);
  sub_100003828();
  __chkstk_darwin(v31);
  sub_1000039BC();
  v129 = v32;
  v33 = sub_10022C350(&qword_100CD4630);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v34);
  sub_10000CC9C();
  v35 = sub_10022C350(&qword_100CB6058);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v36);
  sub_100019530();
  v37 = sub_10022C350(&qword_100CB63C0);
  sub_100003810(v37);
  sub_100003828();
  __chkstk_darwin(v38);
  sub_10001320C();
  v39 = sub_10022C350(&qword_100CD4638);
  sub_100003810(v39);
  sub_100003828();
  __chkstk_darwin(v40);
  v42 = v113 - v41;
  v44 = *(v43 + 56);
  v131 = v5;
  sub_100095588();
  sub_100095588();
  sub_1000038B4(v42, 1, v35);
  if (v54)
  {
    sub_1000038B4(&v42[v44], 1, v35);
    if (v54)
    {
      sub_1000180EC(v42, &qword_100CB63C0);
      goto LABEL_6;
    }

    goto LABEL_24;
  }

  sub_100095588();
  sub_1000038B4(&v42[v44], 1, v35);
  if (v54)
  {
    sub_1000180EC(v2, &qword_100CB6058);
LABEL_24:
    v55 = &qword_100CD4638;
LABEL_25:
    v56 = v42;
LABEL_43:
    sub_1000180EC(v56, v55);
    goto LABEL_44;
  }

  sub_100051BBC();
  sub_1009EA2EC();
  if ((v57 & 1) == 0)
  {
    sub_1000164CC();
    sub_1000180EC(v63, v64);
    sub_1000164CC();
    sub_1000180EC(v65, v66);
    v55 = &qword_100CB63C0;
    goto LABEL_25;
  }

  type metadata accessor for UnitConfiguration.Distance();
  sub_100010950();
  sub_1006FDEF4(v58, v59);
  v60 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_1000180EC(v0, &qword_100CB6058);
  sub_1000180EC(v2, &qword_100CB6058);
  sub_1000180EC(v42, &qword_100CB63C0);
  if ((v60 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_6:
  type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows(0);
  v45 = *(v33 + 48);
  sub_100095588();
  sub_100095588();
  sub_100013710(v1, 1);
  if (v54)
  {
    sub_10000554C(v1 + v45);
    if (v54)
    {
      sub_1000180EC(v1, &qword_100CB63E0);
      goto LABEL_11;
    }

LABEL_32:
    v55 = &qword_100CD4630;
    goto LABEL_33;
  }

  v61 = v129;
  sub_100095588();
  sub_10000554C(v1 + v45);
  if (v62)
  {
    sub_1000180EC(v61, &qword_100CB6038);
    goto LABEL_32;
  }

  sub_100051BBC();
  sub_1009EA2A4();
  if ((v67 & 1) == 0)
  {
    sub_1000164CC();
    sub_1000180EC(v77, v78);
    sub_1000164CC();
    sub_1000180EC(v79, v80);
    v55 = &qword_100CB63E0;
    goto LABEL_33;
  }

  type metadata accessor for UnitConfiguration.Precipitation();
  sub_1000065DC();
  sub_1006FDEF4(v68, v69);
  v70 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_10000FEC4();
  sub_1000180EC(v71, v72);
  sub_10000FEC4();
  sub_1000180EC(v73, v74);
  sub_1000180EC(v1, &qword_100CB63E0);
  if ((v70 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_11:
  v46 = *(v126 + 48);
  v47 = v128;
  sub_1000D42AC();
  sub_100095588();
  sub_1000717E8();
  v48 = sub_1000162A4();
  sub_100013710(v48, v49);
  if (v54)
  {
    sub_10000554C(v47 + v46);
    if (v54)
    {
      sub_1000180EC(v47, &qword_100CB63D0);
      goto LABEL_16;
    }

    goto LABEL_41;
  }

  v75 = v124;
  sub_100095588();
  sub_10000554C(v47 + v46);
  if (v76)
  {
    sub_1000180EC(v75, &qword_100CB6028);
LABEL_41:
    v55 = &qword_100CD4628;
LABEL_42:
    v56 = v47;
    goto LABEL_43;
  }

  sub_100051BBC();
  sub_1009EA25C();
  if ((v81 & 1) == 0)
  {
    sub_1000164CC();
    sub_1000180EC(v91, v92);
    sub_1000164CC();
    sub_1000180EC(v93, v94);
    v55 = &qword_100CB63D0;
    goto LABEL_42;
  }

  type metadata accessor for UnitConfiguration.Pressure();
  sub_100008D50();
  sub_1006FDEF4(v82, v83);
  v84 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_10000FEC4();
  sub_1000180EC(v85, v86);
  sub_10000FEC4();
  sub_1000180EC(v87, v88);
  sub_1000180EC(v47, &qword_100CB63D0);
  if ((v84 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_16:
  v50 = *(v121 + 48);
  v51 = v123;
  sub_1000D42AC();
  sub_100095588();
  v1 = v51;
  sub_1000717E8();
  v52 = sub_1000162A4();
  sub_100013710(v52, v53);
  if (v54)
  {
    sub_10000554C(v51 + v50);
    if (v54)
    {
      sub_1000180EC(v51, &qword_100CB6418);
LABEL_55:
      v96 = *(v116 + 48);
      v97 = v118;
      sub_1000D42AC();
      sub_100095588();
      v1 = v97;
      sub_1000717E8();
      v98 = sub_1000162A4();
      sub_100013710(v98, v99);
      if (v54)
      {
        sub_10000554C(v97 + v96);
        if (v54)
        {
          sub_1000180EC(v97, &qword_100CB63F0);
          goto LABEL_44;
        }
      }

      else
      {
        v100 = v114;
        sub_100095588();
        sub_10000554C(v97 + v96);
        if (!v101)
        {
          sub_100051BBC();
          sub_1009EA214();
          if (v102)
          {
            type metadata accessor for UnitConfiguration.WindSpeed();
            sub_100014D34();
            sub_1006FDEF4(v103, v104);
            dispatch thunk of static Equatable.== infix(_:_:)();
            sub_10000FEC4();
            sub_1000180EC(v105, v106);
            sub_10000FEC4();
            sub_1000180EC(v107, v108);
            sub_1000180EC(v97, &qword_100CB63F0);
            goto LABEL_44;
          }

          sub_1000164CC();
          sub_1000180EC(v109, v110);
          sub_1000164CC();
          sub_1000180EC(v111, v112);
          v55 = &qword_100CB63F0;
          goto LABEL_33;
        }

        sub_1000180EC(v100, &qword_100CB5FF0);
      }

      v55 = &qword_100CD4618;
LABEL_33:
      v56 = v1;
      goto LABEL_43;
    }

LABEL_52:
    v55 = &qword_100CD4620;
    goto LABEL_33;
  }

  v89 = v119;
  sub_100095588();
  sub_10000554C(v1 + v50);
  if (v90)
  {
    sub_100019DCC();
    sub_100703000();
    goto LABEL_52;
  }

  sub_10002304C();
  sub_100703054();
  v95 = sub_1007004E0(v89);
  sub_100018690();
  sub_100703000();
  sub_100703000();
  sub_1000180EC(v1, &qword_100CB6418);
  if (v95)
  {
    goto LABEL_55;
  }

LABEL_44:
  sub_10000536C();
}

void sub_1007007DC()
{
  v0 = type metadata accessor for UnitConfiguration.Temperature();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005FF37C();
  sub_10022C350(&qword_100CB6170);
  sub_1007030AC();
  if (sub_100024D10(v6, 1, v0) == 1)
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    (*(v1 + 32))(v3, v6, v0);
    Hasher._combine(_:)(0);
    sub_1006FDEF4(&qword_100CC75E0, &type metadata accessor for UnitConfiguration.Temperature);
    dispatch thunk of Hashable.hash(into:)();
    (*(v1 + 8))(v3, v0);
  }
}

Swift::Int sub_100700A28()
{
  Hasher.init(_seed:)();
  sub_1007009C4();
  return Hasher._finalize()();
}

void sub_100700A70()
{
  sub_10000C778();
  v159 = v0;
  v160 = v1;
  v148 = type metadata accessor for UnitsConfigurationViewModel.Representation.Full(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000038E4();
  v147 = v3;
  v4 = sub_10022C350(&qword_100CB63F0);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  sub_1000039BC();
  v144 = v6;
  v7 = sub_10022C350(&qword_100CB6418);
  sub_100003810(v7);
  sub_100003828();
  __chkstk_darwin(v8);
  sub_1000039BC();
  v143 = v9;
  v10 = sub_10022C350(&qword_100CB63D0);
  sub_100003810(v10);
  sub_100003828();
  __chkstk_darwin(v11);
  sub_1000039BC();
  v141 = v12;
  v13 = sub_10022C350(&qword_100CB63E0);
  sub_100003810(v13);
  sub_100003828();
  __chkstk_darwin(v14);
  sub_1000039BC();
  v145 = v15;
  v16 = sub_10022C350(&qword_100CB63C0);
  sub_100003810(v16);
  sub_100003828();
  __chkstk_darwin(v17);
  v19 = &v138 - v18;
  v149 = type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows(0);
  sub_1000037E8();
  __chkstk_darwin(v20);
  sub_1000038E4();
  v152 = v21;
  v158 = sub_10022C350(&qword_100CB5FF0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v22);
  sub_1000039BC();
  v151 = v23;
  v24 = sub_10022C350(&qword_100CB6198);
  v25 = sub_100003810(v24);
  __chkstk_darwin(v25);
  sub_100003C38();
  v146 = v26 - v27;
  sub_10000386C();
  __chkstk_darwin(v28);
  v139 = &v138 - v29;
  sub_10000386C();
  __chkstk_darwin(v30);
  v140 = &v138 - v31;
  sub_1000038CC();
  v157 = type metadata accessor for UnitConfiguration.Temperature();
  sub_1000037C4();
  v154 = v32;
  __chkstk_darwin(v33);
  sub_1000038E4();
  v153 = v34;
  v35 = sub_1000038CC();
  v36 = type metadata accessor for UnitsConfigurationViewModel.Temperature(v35);
  v37 = sub_100003810(v36);
  __chkstk_darwin(v37);
  sub_100003C38();
  v40 = v38 - v39;
  __chkstk_darwin(v41);
  v138 = &v138 - v42;
  sub_10000386C();
  __chkstk_darwin(v43);
  v45 = &v138 - v44;
  v155 = type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(0);
  sub_1000037E8();
  __chkstk_darwin(v46);
  sub_100003C38();
  v142 = v47 - v48;
  sub_10000386C();
  __chkstk_darwin(v49);
  v156 = sub_10022C350(&qword_100CB6028);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v50);
  sub_1000039BC();
  v150 = v51;
  sub_10022C350(&qword_100CB6038);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v52);
  sub_10000CC9C();
  v53 = sub_10022C350(&qword_100CB6058);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v54);
  v56 = &v138 - v55;
  type metadata accessor for UnitsConfigurationViewModel.Representation(0);
  sub_1000037E8();
  __chkstk_darwin(v57);
  sub_1000037D8();
  sub_10001CB60();
  sub_1007030AC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1000B0C38();
      sub_100052420();
      Hasher._combine(_:)(1uLL);
      sub_1005FF618();
      type metadata accessor for UnitConfiguration.Precipitation();
      sub_1000065DC();
      sub_1006FDEF4(v69, v70);
      dispatch thunk of Hashable.hash(into:)();
      v61 = sub_100003984();
      goto LABEL_11;
    case 2u:
      v58 = &qword_100CB6028;
      v62 = v150;
      sub_100051BBC();
      Hasher._combine(_:)(2uLL);
      sub_1005FF5D0();
      type metadata accessor for UnitConfiguration.Pressure();
      sub_100008D50();
      goto LABEL_5;
    case 3u:
      sub_10002304C();
      sub_100703054();
      Hasher._combine(_:)(3uLL);
      sub_1005FF37C();
      sub_10022C350(&qword_100CB6170);
      sub_10000493C();
      sub_1007030AC();
      v66 = sub_1000162A4();
      v67 = v157;
      sub_1000038B4(v66, v68, v157);
      if (v112)
      {
        Hasher._combine(_:)(1uLL);
      }

      else
      {
        v81 = v153;
        v80 = v154;
        sub_10007956C();
        v82(v81, v45, v67);
        Hasher._combine(_:)(0);
        sub_10001F5F0();
        sub_1006FDEF4(v83, v84);
        sub_100021118();
        dispatch thunk of Hashable.hash(into:)();
        (*(v80 + 8))(v81, v67);
      }

      sub_100095588();
      v85 = sub_10000C7F0();
      sub_1000038B4(v85, v86, v67);
      if (v112)
      {
        sub_100020320();
      }

      else
      {
        v88 = v153;
        v87 = v154;
        sub_10007956C();
        sub_10000FEC4();
        v89();
        sub_100016DB8();
        sub_10001F5F0();
        sub_1006FDEF4(v90, v91);
        sub_100021118();
        dispatch thunk of Hashable.hash(into:)();
        (*(v87 + 8))(v88, v67);
      }

      sub_100019DCC();
      goto LABEL_45;
    case 4u:
      v58 = &qword_100CB5FF0;
      v62 = v151;
      sub_100051BBC();
      Hasher._combine(_:)(4uLL);
      sub_1005FF334();
      type metadata accessor for UnitConfiguration.WindSpeed();
      sub_100014D34();
LABEL_5:
      sub_1006FDEF4(v63, v64);
      sub_100014268();
      dispatch thunk of Hashable.hash(into:)();
      v61 = v62;
      goto LABEL_6;
    case 5u:
      sub_100031770();
      sub_100703054();
      Hasher._combine(_:)(5uLL);
      sub_100095588();
      sub_1000038B4(v19, 1, v53);
      if (v112)
      {
        sub_1000865DC();
      }

      else
      {
        v45 = &unk_100A7B460;
        sub_100052420();
        sub_100043A54();
        sub_1005FF660();
        type metadata accessor for UnitConfiguration.Distance();
        sub_100010950();
        sub_1006FDEF4(v92, v93);
        dispatch thunk of Hashable.hash(into:)();
        sub_1000180EC(v56, &qword_100CB6058);
      }

      v95 = v144;
      v94 = v145;
      v96 = v155;
      sub_1000C8A40();
      sub_10000554C(v94);
      if (v112)
      {
        sub_1000865DC();
      }

      else
      {
        v45 = &unk_100A64140;
        sub_1000B0C38();
        sub_100052420();
        sub_100043A54();
        sub_1005FF618();
        type metadata accessor for UnitConfiguration.Precipitation();
        sub_1000065DC();
        sub_1006FDEF4(v97, v98);
        dispatch thunk of Hashable.hash(into:)();
        v99 = sub_100003984();
        sub_1000180EC(v99, v100);
      }

      v101 = v156;
      sub_1000C8A40();
      v102 = sub_10000C7F0();
      sub_1000038B4(v102, v103, v101);
      if (v112)
      {
        sub_1000865DC();
      }

      else
      {
        v45 = v150;
        sub_1000D42AC();
        sub_100051BBC();
        sub_100043A54();
        sub_1005FF5D0();
        type metadata accessor for UnitConfiguration.Pressure();
        sub_100008D50();
        sub_1006FDEF4(v104, v105);
        sub_100052710();
        sub_1000180EC(v45, &qword_100CB6028);
      }

      v106 = v157;
      v107 = v158;
      sub_1000C8A40();
      v108 = sub_10000C7F0();
      sub_1000038B4(v108, v109, v96);
      if (v112)
      {
        sub_1000865DC();
      }

      else
      {
        sub_10002304C();
        v110 = v142;
        sub_100703054();
        sub_100043A54();
        sub_1005FF37C();
        sub_10022C350(&qword_100CB6170);
        sub_10000493C();
        v111 = v138;
        sub_1007030AC();
        sub_10000554C(v111);
        if (v112)
        {
          Hasher._combine(_:)(1uLL);
        }

        else
        {
          v126 = sub_100021630();
          v127(v126);
          Hasher._combine(_:)(0);
          sub_10001F5F0();
          sub_1006FDEF4(v128, v129);
          sub_1000C83C0();
          (*(v110 + 8))(v45, v106);
        }

        v130 = v139;
        sub_100095588();
        sub_10000554C(v130);
        if (v112)
        {
          sub_1000865DC();
        }

        else
        {
          v131 = sub_100021630();
          v132(v131);
          sub_100043A54();
          sub_10001F5F0();
          sub_1006FDEF4(v133, v134);
          sub_1000C83C0();
          (*(v110 + 8))(v45, v106);
        }

        sub_100019DCC();
        sub_100703000();
      }

      sub_100095588();
      sub_1000038B4(v95, 1, v107);
      if (v112)
      {
        sub_1000865DC();
LABEL_45:
        sub_100703000();
      }

      else
      {
        v58 = &qword_100CB5FF0;
        v135 = v151;
        sub_1000D42AC();
        sub_100051BBC();
        sub_100043A54();
        sub_1005FF334();
        type metadata accessor for UnitConfiguration.WindSpeed();
        sub_100014D34();
        sub_1006FDEF4(v136, v137);
        sub_100052710();
        sub_100052050();
        sub_100703000();
        v61 = v135;
LABEL_6:
        v65 = v58;
LABEL_11:
        sub_1000180EC(v61, v65);
      }

      sub_10000536C();
      return;
    case 6u:
      sub_100037CC0();
      v71 = v147;
      sub_100703054();
      Hasher._combine(_:)(6uLL);
      sub_1005FF660();
      type metadata accessor for UnitConfiguration.Distance();
      sub_100010950();
      sub_1006FDEF4(v72, v73);
      sub_100003984();
      dispatch thunk of Hashable.hash(into:)();
      v74 = v148;
      sub_10006A8A0();
      sub_1005FF618();
      type metadata accessor for UnitConfiguration.Precipitation();
      sub_1000065DC();
      sub_1006FDEF4(v75, v76);
      sub_1000046B4();
      dispatch thunk of Hashable.hash(into:)();
      sub_10006A8A0();
      sub_1005FF5D0();
      type metadata accessor for UnitConfiguration.Pressure();
      sub_100008D50();
      sub_1006FDEF4(v77, v78);
      sub_1000046B4();
      dispatch thunk of Hashable.hash(into:)();
      sub_1005FF37C();
      sub_10022C350(&qword_100CB6170);
      sub_10000493C();
      sub_1007030AC();
      v79 = v157;
      sub_1000038B4(v40, 1, v157);
      if (v112)
      {
        Hasher._combine(_:)(1uLL);
      }

      else
      {
        (*(v154 + 32))(v153, v40, v79);
        Hasher._combine(_:)(0);
        sub_10001F5F0();
        sub_1006FDEF4(v113, v114);
        dispatch thunk of Hashable.hash(into:)();
        v115 = sub_10008672C();
        v116(v115);
      }

      sub_100095588();
      v117 = sub_10000C7F0();
      sub_1000038B4(v117, v118, v79);
      if (v112)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v120 = v153;
        v119 = v154;
        sub_10000FEC4();
        v121();
        Hasher._combine(_:)(1u);
        sub_10001F5F0();
        sub_1006FDEF4(v122, v123);
        dispatch thunk of Hashable.hash(into:)();
        (*(v119 + 8))(v120, v79);
      }

      sub_10006A8A0();
      sub_1005FF334();
      type metadata accessor for UnitConfiguration.WindSpeed();
      sub_100014D34();
      sub_1006FDEF4(v124, v125);
      sub_1000046B4();
      dispatch thunk of Hashable.hash(into:)();
      Hasher._combine(_:)(*(v71 + *(v74 + 36)));
      Hasher._combine(_:)(*(v71 + *(v74 + 40)));
      goto LABEL_45;
    default:
      v58 = &qword_100CB6058;
      sub_100051BBC();
      Hasher._combine(_:)(0);
      sub_1005FF660();
      type metadata accessor for UnitConfiguration.Distance();
      sub_100010950();
      sub_1006FDEF4(v59, v60);
      sub_100014268();
      dispatch thunk of Hashable.hash(into:)();
      v61 = v56;
      goto LABEL_6;
  }
}

void sub_100701BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v21;
  a20 = v22;
  sub_100017580();
  v23 = type metadata accessor for UnitConfiguration.Temperature();
  sub_1000037C4();
  v25 = v24;
  __chkstk_darwin(v26);
  sub_1000037D8();
  v29 = v28 - v27;
  v30 = sub_10022C350(&qword_100CB6198);
  sub_100003810(v30);
  sub_100003828();
  __chkstk_darwin(v31);
  v33 = &a9 - v32;
  sub_1005FF660();
  sub_10022C350(&qword_100CB6058);
  type metadata accessor for UnitConfiguration.Distance();
  sub_100010950();
  sub_1006FDEF4(v34, v35);
  dispatch thunk of Hashable.hash(into:)();
  v36 = type metadata accessor for UnitsConfigurationViewModel.Representation.Full(0);
  sub_10003BB74();
  sub_1005FF618();
  sub_10022C350(&qword_100CB6038);
  type metadata accessor for UnitConfiguration.Precipitation();
  sub_1000065DC();
  sub_1006FDEF4(v37, v38);
  sub_1000F0014();
  sub_10003BB74();
  sub_1005FF5D0();
  sub_10022C350(&qword_100CB6028);
  type metadata accessor for UnitConfiguration.Pressure();
  sub_100008D50();
  sub_1006FDEF4(v39, v40);
  sub_1000F0014();
  sub_1007007DC();
  type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(0);
  sub_100095588();
  sub_1000038B4(v33, 1, v23);
  if (v41)
  {
    sub_100020320();
  }

  else
  {
    (*(v25 + 32))(v29, v33, v23);
    sub_100016DB8();
    sub_10001F5F0();
    sub_1006FDEF4(v42, v43);
    sub_100021118();
    dispatch thunk of Hashable.hash(into:)();
    v44 = sub_100014268();
    v45(v44);
  }

  sub_10003BB74();
  sub_1005FF334();
  sub_10022C350(&qword_100CB5FF0);
  type metadata accessor for UnitConfiguration.WindSpeed();
  sub_100014D34();
  sub_1006FDEF4(v46, v47);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v20 + *(v36 + 36)));
  Hasher._combine(_:)(*(v20 + *(v36 + 40)));
  sub_10000536C();
}

void sub_100701EF8()
{
  sub_10000C778();
  v80[7] = v0;
  v87 = sub_10022C350(&qword_100CB5FF0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v1);
  sub_1000039BC();
  v80[6] = v2;
  v3 = sub_10022C350(&qword_100CB63F0);
  sub_100003810(v3);
  sub_100003828();
  __chkstk_darwin(v4);
  sub_1000039BC();
  v86 = v5;
  v6 = sub_10022C350(&qword_100CB6198);
  sub_100003810(v6);
  sub_100003828();
  __chkstk_darwin(v7);
  sub_1000039BC();
  v80[3] = v8;
  sub_1000038CC();
  v85 = type metadata accessor for UnitConfiguration.Temperature();
  sub_1000037C4();
  v80[5] = v9;
  __chkstk_darwin(v10);
  sub_1000038E4();
  v80[4] = v11;
  v12 = sub_1000038CC();
  v13 = type metadata accessor for UnitsConfigurationViewModel.Temperature(v12);
  v14 = sub_100003810(v13);
  __chkstk_darwin(v14);
  sub_1000038E4();
  v80[2] = v15;
  v16 = sub_1000038CC();
  v83 = type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(v16);
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_1000038E4();
  v84 = v18;
  v19 = sub_10022C350(&qword_100CB6418);
  sub_100003810(v19);
  sub_100003828();
  __chkstk_darwin(v20);
  sub_1000039BC();
  v82 = v21;
  v81 = sub_10022C350(&qword_100CB6028);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v22);
  sub_1000039BC();
  v80[1] = v23;
  v24 = sub_10022C350(&qword_100CB63D0);
  sub_100003810(v24);
  sub_100003828();
  __chkstk_darwin(v25);
  sub_1000039BC();
  v80[8] = v26;
  v27 = sub_10022C350(&qword_100CB6038);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v28);
  v30 = v80 - v29;
  v31 = sub_10022C350(&qword_100CB63E0);
  sub_100003810(v31);
  sub_100003828();
  __chkstk_darwin(v32);
  sub_10001320C();
  v33 = sub_10022C350(&qword_100CB6058);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v34);
  v36 = v80 - v35;
  v37 = sub_10022C350(&qword_100CB63C0);
  sub_100003810(v37);
  sub_100003828();
  __chkstk_darwin(v38);
  v40 = v80 - v39;
  sub_100095588();
  sub_1000038B4(v40, 1, v33);
  if (v61)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    sub_100051BBC();
    Hasher._combine(_:)(1u);
    sub_1005FF660();
    type metadata accessor for UnitConfiguration.Distance();
    sub_100010950();
    sub_1006FDEF4(v41, v42);
    dispatch thunk of Hashable.hash(into:)();
    sub_1000180EC(v36, &qword_100CB6058);
  }

  type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows(0);
  sub_100095588();
  v43 = sub_1000162A4();
  sub_1000038B4(v43, v44, v27);
  if (v61)
  {
    sub_100020320();
  }

  else
  {
    sub_100051BBC();
    sub_100016DB8();
    sub_1005FF618();
    type metadata accessor for UnitConfiguration.Precipitation();
    sub_1000065DC();
    sub_1006FDEF4(v45, v46);
    dispatch thunk of Hashable.hash(into:)();
    sub_1000180EC(v30, &qword_100CB6038);
  }

  v47 = v83;
  v48 = v81;
  sub_1000C8A40();
  v49 = sub_10000C7F0();
  sub_1000038B4(v49, v50, v48);
  if (v61)
  {
    sub_100020320();
  }

  else
  {
    sub_100052420();
    sub_100016DB8();
    sub_1005FF5D0();
    type metadata accessor for UnitConfiguration.Pressure();
    sub_100008D50();
    sub_1006FDEF4(v51, v52);
    dispatch thunk of Hashable.hash(into:)();
    v53 = sub_10008672C();
    sub_1000180EC(v53, v54);
  }

  v55 = v87;
  v56 = v85;
  sub_100095588();
  v57 = sub_10000C7F0();
  sub_1000038B4(v57, v58, v47);
  if (v61)
  {
    sub_100020320();
  }

  else
  {
    sub_10002304C();
    sub_100703054();
    sub_100016DB8();
    sub_1005FF37C();
    sub_10022C350(&qword_100CB6170);
    sub_10000493C();
    sub_1007030AC();
    v59 = sub_10000C7F0();
    sub_1000038B4(v59, v60, v56);
    if (v61)
    {
      Hasher._combine(_:)(1uLL);
    }

    else
    {
      sub_10007956C();
      sub_10000FEC4();
      v62();
      Hasher._combine(_:)(0);
      sub_10001F5F0();
      sub_1006FDEF4(v63, v64);
      sub_100021118();
      dispatch thunk of Hashable.hash(into:)();
      v65 = sub_10008672C();
      v66(v65);
    }

    sub_100095588();
    v67 = sub_10000C7F0();
    sub_1000038B4(v67, v68, v56);
    if (v61)
    {
      sub_100020320();
    }

    else
    {
      sub_10007956C();
      sub_10000FEC4();
      v69();
      sub_100016DB8();
      sub_10001F5F0();
      sub_1006FDEF4(v70, v71);
      sub_100021118();
      dispatch thunk of Hashable.hash(into:)();
      v72 = sub_10008672C();
      v73(v72);
    }

    sub_100019DCC();
    sub_100703000();
  }

  sub_100095588();
  v74 = sub_10000C7F0();
  sub_1000038B4(v74, v75, v55);
  if (v61)
  {
    sub_100020320();
  }

  else
  {
    sub_100051BBC();
    sub_100016DB8();
    sub_1005FF334();
    type metadata accessor for UnitConfiguration.WindSpeed();
    sub_100014D34();
    sub_1006FDEF4(v76, v77);
    dispatch thunk of Hashable.hash(into:)();
    v78 = sub_10008672C();
    sub_1000180EC(v78, v79);
  }

  sub_10000536C();
}

void sub_1007027B8()
{
  sub_100017580();
  v2 = type metadata accessor for UnitConfiguration.Temperature();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  sub_10000CC9C();
  v6 = sub_10022C350(&qword_100CB6198);
  sub_100003810(v6);
  sub_100003828();
  __chkstk_darwin(v7);
  sub_10001320C();
  sub_1007007DC();
  type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(0);
  sub_100095588();
  v8 = sub_1000162A4();
  sub_1000038B4(v8, v9, v2);
  if (v10)
  {
    sub_100020320();
  }

  else
  {
    (*(v4 + 32))(v0, v1, v2);
    sub_100016DB8();
    sub_10001F5F0();
    sub_1006FDEF4(v11, v12);
    sub_100021118();
    dispatch thunk of Hashable.hash(into:)();
    v13 = sub_100003984();
    v14(v13);
  }
}

void sub_100702940()
{
  v2 = type metadata accessor for UnitConfiguration.Temperature();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  sub_100019530();
  v6 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_1000037D8();
  sub_10000CC9C();
  sub_10000493C();
  sub_100014268();
  sub_1007030AC();
  sub_10000554C(v1);
  if (v8)
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    (*(v4 + 32))(v0, v1, v2);
    Hasher._combine(_:)(0);
    sub_10001F5F0();
    sub_1006FDEF4(v9, v10);
    sub_1000251E0();
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v0, v2);
  }
}

Swift::Int sub_100702AA4(void (*a1)(_BYTE *))
{
  Hasher.init(_seed:)();
  a1(v3);
  return Hasher._finalize()();
}

Swift::Int sub_100702B14()
{
  Hasher.init(_seed:)();
  sub_1007009C4();
  return Hasher._finalize()();
}

Swift::Int sub_100702CC0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t sub_100702D04@<X0>(uint64_t *a1@<X8>)
{
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CD4640);
  a1[4] = sub_100703104();
  sub_100042FB0(a1);
  v2 = sub_100017580();
  type metadata accessor for UnitsConfigurationViewModel(v2);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_100702DC8()
{
  sub_1006FDEF4(&qword_100CD4650, type metadata accessor for UnitsConfigurationViewModel);

  return ShortDescribable.description.getter();
}

uint64_t sub_100703000()
{
  v1 = sub_100017580();
  v2(v1);
  sub_1000037E8();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_100703054()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1007030AC()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

unint64_t sub_100703104()
{
  result = qword_100CD4648;
  if (!qword_100CD4648)
  {
    sub_10022E824(&qword_100CD4640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4648);
  }

  return result;
}

uint64_t sub_100703168@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Calendar();
  sub_100007FD0();
  v34 = v4;
  v35 = v3;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v7 = v6 - v5;
  v33 = type metadata accessor for Date();
  sub_100007FD0();
  v37 = v8;
  __chkstk_darwin(v9);
  v32 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v31 = type metadata accessor for WeatherConditionGradientModel();
  sub_100007FD0();
  v30 = v14;
  __chkstk_darwin(v15);
  sub_1000037D8();
  v18 = v17 - v16;
  v19 = type metadata accessor for VFXTestViewModel();
  __chkstk_darwin(v19 - 8);
  sub_1000037D8();
  v22 = v21 - v20;
  sub_100035B30(v1 + 16, v40);
  sub_100035B30(v1 + 64, v39);
  v36 = *(v1 + 104);
  sub_100035B30(v1 + 120, v38);
  *(a1 + 56) = sub_100319FB8;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;

  sub_10022C350(&qword_100CA4A38);
  sub_1007037CC();
  *a1 = ObservedObject.init(wrappedValue:)();
  *(a1 + 8) = v23;
  sub_100035B30(v40, a1 + 16);
  *(a1 + 80) = v36;
  sub_100035B30(v38, a1 + 96);
  sub_1000161C0(v39, v39[3]);
  swift_unknownObjectRetain();
  sub_100988268();
  sub_10079821C();
  sub_10031ADBC(v22);
  type metadata accessor for VFXTestView();
  dispatch thunk of WeatherConditionGradientManagerType.load(for:)();
  (*(v30 + 8))(v18, v31);
  v24 = v32;
  static WeatherClock.date.getter();
  Date.startOfDay.getter();
  v25 = *(v37 + 8);
  v37 += 8;
  v26 = v33;
  v25(v24, v33);
  static Calendar.current.getter();
  Date.wc_addHours(_:calendar:)();
  v27 = v35;
  v28 = *(v34 + 8);
  v28(v7, v35);
  static Calendar.current.getter();
  Date.wc_addHours(_:calendar:)();
  v28(v7, v27);
  static Calendar.current.getter();
  Date.wc_addHours(_:calendar:)();
  v28(v7, v27);
  Elevation.init(_:isPM:)();
  v25(v13, v26);
  sub_100006F14(v38);
  sub_100006F14(v40);
  return sub_100006F14(v39);
}

uint64_t sub_1007035B8()
{
  sub_100006F14(v0 + 16);

  sub_100006F14(v0 + 64);
  swift_unknownObjectRelease();
  sub_100006F14(v0 + 120);
  return v0;
}

uint64_t sub_1007035F8()
{
  sub_1007035B8();

  return swift_deallocClassInstance();
}

void *sub_100703650(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v26 = a7;
  v27 = a9;
  v16 = sub_100042FB0(v25);
  (*(*(a7 - 8) + 32))(v16, a1, a7);
  v17 = swift_allocObject();
  sub_10002D7F8(v25, v26);
  sub_100007FD0();
  __chkstk_darwin(v18);
  sub_1000037D8();
  v21 = (v20 - v19);
  (*(v22 + 16))(v20 - v19);
  v23 = *v21;
  v17[5] = type metadata accessor for VFXTestInteractor();
  v17[6] = &off_100C4ADB0;
  v17[2] = v23;
  v17[7] = a2;
  sub_100013188(a3, (v17 + 8));
  v17[13] = a4;
  v17[14] = a10;
  sub_100013188(a5, (v17 + 15));
  sub_100006F14(v25);
  return v17;
}

unint64_t sub_1007037CC()
{
  result = qword_100CA4A40;
  if (!qword_100CA4A40)
  {
    sub_10022E824(&qword_100CA4A38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA4A40);
  }

  return result;
}

uint64_t sub_100703874()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = *(type metadata accessor for LocationGridView() + 56);
  memcpy(__dst, (v0 + v5), 0x49uLL);
  if (__dst[9])
  {
    memcpy(v9, (v0 + v5), sizeof(v9));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(__dst, &qword_100CB71A8);
    (*(v2 + 8))(v4, v1);
  }

  return v9[48];
}

double sub_1007039F0()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(type metadata accessor for LocationGridView() + 56);
  memcpy(__dst, (v0 + v5), 0x49uLL);
  if (__dst[9])
  {
    memcpy(v9, (v0 + v5), sizeof(v9));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(__dst, &qword_100CB71A8);
    (*(v2 + 8))(v4, v1);
  }

  return *&v9[5];
}

double sub_100703B6C()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &__src[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(type metadata accessor for LocationGridView() + 56);
  memcpy(__dst, (v0 + v5), 0x49uLL);
  if (__dst[9])
  {
    memcpy(__src, (v0 + v5), sizeof(__src));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(__dst, &qword_100CB71A8);
    (*(v2 + 8))(v4, v1);
  }

  memcpy(v14, __src, sizeof(v14));
  v7 = *&v14[1];
  if (v14[4])
  {
    v8 = sub_1000FDB68();
    v9 = 20.0;
    if (BYTE1(v14[6]) - 3 < 2)
    {
      v9 = 0.0;
    }

    v10 = v7 - (*&v14[7] + *&v14[7]) - v8 - v9;
    v11 = sub_1000FDE84();
    if (*&v14[8] >= v10 / dbl_100A7BE08[v11])
    {
      return v10 / dbl_100A7BE08[v11];
    }

    else
    {
      return *&v14[8];
    }
  }

  return v7;
}

BOOL sub_100703D6C()
{
  v1 = v0;
  v59 = type metadata accessor for EnvironmentValues();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for LocationGridView();
  __chkstk_darwin(v61);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v53 - v6;
  __chkstk_darwin(v8);
  v10 = &v53 - v9;
  __chkstk_darwin(v11);
  v13 = &v53 - v12;
  __chkstk_darwin(v14);
  v16 = &v53 - v15;
  if (qword_100CA26B8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_10000703C(v17, qword_100D90A90);
  sub_10015CE24(v1, v16);
  sub_10015CE24(v1, v13);
  sub_10015CE24(v1, v10);
  v60 = v18;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v55 = v7;
    v56 = v4;
    v21 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v62 = v54;
    *v21 = 141558787;
    *(v21 + 4) = 1752392040;
    *(v21 + 12) = 2081;
    v22 = Location.Identifier.name.getter();
    v24 = v23;
    sub_1007090A0(v16, type metadata accessor for LocationGridView);
    v25 = sub_100078694(v22, v24, &v62);

    *(v21 + 14) = v25;
    *(v21 + 22) = 2082;
    v26 = type metadata accessor for LocationViewModel();
    if (v13[*(v26 + 64)])
    {
      v27 = 1702195828;
    }

    else
    {
      v27 = 0x65736C6166;
    }

    if (v13[*(v26 + 64)])
    {
      v28 = 0xE400000000000000;
    }

    else
    {
      v28 = 0xE500000000000000;
    }

    sub_1007090A0(v13, type metadata accessor for LocationGridView);
    v29 = sub_100078694(v27, v28, &v62);

    *(v21 + 24) = v29;
    *(v21 + 32) = 2082;
    v30 = *(v61 + 56);
    memcpy(__dst, &v10[v30], 0x49uLL);
    if (__dst[9])
    {
      memcpy(v63, &v10[v30], sizeof(v63));
    }

    else
    {

      static os_log_type_t.fault.getter();
      v31 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v32 = v57;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100018144(__dst, &qword_100CB71A8);
      (*(v58 + 8))(v32, v59);
    }

    v4 = v56;
    v7 = v55;
    v63[0] = v63[49];
    sub_1006BBE20();
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    sub_1007090A0(v10, type metadata accessor for LocationGridView);
    v36 = sub_100078694(v33, v35, &v62);

    *(v21 + 34) = v36;
    _os_log_impl(&_mh_execute_header, v19, v20, "LocationGridView: location=%{private,mask.hash}s determining wantsMapCell. model.shouldShowAnyMap=%{public}s, mapPresentationStyle=%{public}s", v21, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    sub_1007090A0(v13, type metadata accessor for LocationGridView);
    sub_1007090A0(v16, type metadata accessor for LocationGridView);
    sub_1007090A0(v10, type metadata accessor for LocationGridView);
  }

  sub_10015CE24(v1, v7);
  sub_10015CE24(v1, v4);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    __dst[0] = swift_slowAlloc();
    *v39 = 141558531;
    *(v39 + 4) = 1752392040;
    *(v39 + 12) = 2081;
    v40 = Location.Identifier.name.getter();
    v41 = v4;
    v43 = v42;
    sub_1007090A0(v7, type metadata accessor for LocationGridView);
    v44 = sub_100078694(v40, v43, __dst);

    *(v39 + 14) = v44;
    *(v39 + 22) = 2082;
    type metadata accessor for DisplayMetrics();
    sub_1000814E4(&qword_100CD1C20, type metadata accessor for DisplayMetrics);
    v45 = ShortDescribable.description.getter();
    v47 = v46;
    sub_1007090A0(v41, type metadata accessor for LocationGridView);
    v48 = sub_100078694(v45, v47, __dst);

    *(v39 + 24) = v48;
    _os_log_impl(&_mh_execute_header, v37, v38, "LocationGridView: location=%{private,mask.hash}s determining wantsMapCell. displayMetrics=%{public}s", v39, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1007090A0(v4, type metadata accessor for LocationGridView);
    sub_1007090A0(v7, type metadata accessor for LocationGridView);
  }

  if (*(v1 + *(type metadata accessor for LocationViewModel() + 64)) != 1)
  {
    return 0;
  }

  v49 = *(v61 + 56);
  memcpy(__dst, (v1 + v49), 0x49uLL);
  if (__dst[9])
  {
    memcpy(v63, (v1 + v49), sizeof(v63));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v51 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v52 = v57;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(__dst, &qword_100CB71A8);
    (*(v58 + 8))(v52, v59);
  }

  return v63[49] == 3;
}

uint64_t sub_1007045F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v67 = a1;
  v3 = type metadata accessor for LocationGridView();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v76 = v7;
  v77 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  v15 = type metadata accessor for DisplayMetrics();
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_1000037D8();
  v19 = v18 - v17;
  v71 = type metadata accessor for LocationViewModel();
  sub_1000037E8();
  __chkstk_darwin(v20);
  sub_1000037D8();
  v23 = v22 - v21;
  v24 = type metadata accessor for LocationDynamicContentConfiguration();
  v25 = sub_100003810(v24);
  __chkstk_darwin(v25);
  sub_1000037D8();
  v70 = v27 - v26;
  v74 = sub_10022C350(&qword_100CD47D0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v28);
  v72 = &v64 - v29;
  sub_10022C350(&qword_100CD47D8);
  sub_1000037C4();
  v65 = v31;
  v66 = v30;
  sub_100003828();
  __chkstk_darwin(v32);
  v75 = &v64 - v33;
  sub_10015CE24(v2, v23);
  v34 = v2 + *(v3 + 40);
  v69 = v19;
  sub_10015CE24(v34, v19);
  v73 = v3;
  v35 = *(v3 + 56);
  memcpy(__dst, (v2 + v35), 0x49uLL);
  if (__dst[9])
  {
    memcpy(v85, (v2 + v35), sizeof(v85));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v36 = v8;
    v37 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(__dst, &qword_100CB71A8);
    (*(v10 + 8))(v14, v36);
  }

  v78 = v2;
  memcpy(v86, v85, sizeof(v86));
  v38 = v70;
  sub_1006BB580(v23, v69, v86, v70);
  sub_1000289B4();
  v69 = v39;
  v40 = v77;
  sub_10015CE24(v2, v77);
  v41 = *(v5 + 80);
  v42 = (v41 + 16) & ~v41;
  v43 = swift_allocObject();
  sub_100023064();
  v68 = v44;
  sub_1007090F4(v40, v45 + v42);
  v46 = v74;
  v47 = v72;
  v48 = &v72[*(v74 + 40)];
  KeyPath = swift_getKeyPath();
  v84 = 0;
  *v48 = KeyPath;
  v48[72] = 0;
  sub_1007090F4(v38, v47);
  v50 = (v47 + *(v46 + 36));
  *v50 = sub_100707F3C;
  v50[1] = v43;
  v79 = *(v78 + *(v71 + 28));
  sub_10015CE24(v78, v40);
  v69 = v41;
  v51 = swift_allocObject();
  sub_1007090F4(v40, v51 + v42);

  v52 = sub_10022C350(&qword_100CD47E0);
  sub_100004954();
  v54 = sub_100006F64(v53, &qword_100CD47D0);
  v55 = sub_100708038();
  v70 = v54;
  v71 = v52;
  v56 = v55;
  View.onChange<A>(of:initial:_:)();

  v57 = v78;

  sub_100018144(v47, &qword_100CD47D0);
  if (*(v57 + *(v73 + 44)))
  {
    type metadata accessor for TipCoordinator();

    ObservableResolver.resolve<A>(_:)();

    if (v79)
    {
      v58 = sub_10014A168();

      v83 = v58 & 1;
      sub_1000289B4();
      v59 = v77;
      sub_10015CE24(v57, v77);
      swift_allocObject();
      sub_100023064();
      sub_1007090F4(v59, v60 + v42);
      v79 = v74;
      v80 = v71;
      v81 = v70;
      v82 = v56;
      sub_100010558();
      swift_getOpaqueTypeConformance2();
      v61 = v66;
      v62 = v75;
      View.onChange<A>(of:initial:_:)();

      return (*(v65 + 8))(v62, v61);
    }

    __break(1u);
  }

  type metadata accessor for ObservableResolver();
  sub_1000814E4(&qword_100CB0468, &type metadata accessor for ObservableResolver);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100704D1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v111 = a6;
  v12 = type metadata accessor for EnvironmentValues();
  v105 = *(v12 - 8);
  v106 = v12;
  __chkstk_darwin(v12);
  v104 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for LocationGridView();
  v117 = *(v129 - 8);
  __chkstk_darwin(v129);
  v130 = v14;
  v118 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LocationComponentContainerViewModel();
  v114 = *(v15 - 8);
  __chkstk_darwin(v15);
  v115 = v16;
  v116 = (&v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v119 = sub_10022C350(&qword_100CD4800);
  __chkstk_darwin(v119);
  v121 = &v103 - v17;
  v123 = sub_10022C350(&qword_100CD4808);
  __chkstk_darwin(v123);
  v122 = &v103 - v18;
  v19 = sub_10022C350(&qword_100CD4810);
  v125 = *(v19 - 8);
  v126 = v19;
  __chkstk_darwin(v19);
  v124 = &v103 - v20;
  v120 = sub_10022C350(&qword_100CD4818);
  __chkstk_darwin(v120);
  v127 = &v103 - v21;
  v109 = sub_10022C350(&qword_100CD4820);
  __chkstk_darwin(v109);
  v110 = &v103 - v22;
  v108 = sub_10022C350(&qword_100CD4828);
  __chkstk_darwin(v108);
  v128 = &v103 - v23;
  v113 = type metadata accessor for LocationComponentViewModel();
  __chkstk_darwin(v113);
  v25 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a5;
  v27 = a1;
  v28 = sub_100705C58(v6, a2, a3, a4, v26);
  v134 = v30;
  v136 = v31;
  v32 = v31 - v28;
  if (__OFSUB__(v31, v28))
  {
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v33 = v28;
  v135 = v29;
  v34 = sub_100703B6C();
  v35 = sub_1007039F0();
  v36 = v6;
  if (!v32)
  {
    goto LABEL_6;
  }

  v37 = v32 - 1;
  if (__OFSUB__(v32, 1))
  {
    __break(1u);
LABEL_6:
    v37 = 0;
  }

  v133 = *(v15 + 20);
  v38 = sub_100706120(v33, v136, v134, v135, v27 + v133);
  v39 = sub_100703B6C();
  v40 = sub_1007039F0();
  if (!v38)
  {
LABEL_11:
    v41 = 0;
    goto LABEL_12;
  }

  v41 = v38 - 1;
  if (__OFSUB__(v38, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

LABEL_12:
  v132 = v33;
  v131 = sub_1007063D4(v6, v33, v136, v134, v135, v27);
  if (!*(v6 + *(v129 + 44)))
  {
LABEL_55:
    type metadata accessor for ObservableResolver();
    sub_1000814E4(&qword_100CB0468, &type metadata accessor for ObservableResolver);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  type metadata accessor for TipCoordinator();

  ObservableResolver.resolve<A>(_:)();

  if (!v140[0])
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v112 = v32;
  v42 = v34 * v32 + v35 * v37;
  v43 = v39 * v38 + v40 * v41;
  v44 = v133;
  v107 = sub_1001C9644(v27 + v133);

  sub_10015CE24(v27 + v44, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v46 = EnumCaseMultiPayload == 3;
  }

  else
  {
    v46 = 1;
  }

  v47 = !v46;
  LODWORD(v113) = v47;
  sub_1007090A0(v25, type metadata accessor for LocationComponentViewModel);
  v48 = v116;
  sub_10015CE24(v27, v116);
  v49 = v118;
  sub_10015CE24(v6, v118);
  v50 = (*(v114 + 80) + 16) & ~*(v114 + 80);
  v51 = (v115 + *(v117 + 80) + v50) & ~*(v117 + 80);
  v52 = (v130 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v115 = (v52 + 55) & 0xFFFFFFFFFFFFFFF8;
  v130 = v27;
  v53 = swift_allocObject();
  sub_1007090F4(v48, v53 + v50);
  v54 = sub_1007090F4(v49, v53 + v51);
  v116 = &v103;
  v55 = (v53 + v52);
  v56 = v135;
  v57 = v136;
  *v55 = v132;
  v55[1] = v57;
  v58 = v134;
  v55[2] = v134;
  v55[3] = v56;
  v59 = v53 + ((v52 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v59 = v42;
  LODWORD(v117) = v131 & 1;
  *(v59 + 8) = v131 & 1;
  v60 = v53 + v115;
  *v60 = v43;
  *(v60 + 8) = v113;
  *(v53 + ((v52 + 71) & 0xFFFFFFFFFFFFFFF8)) = v112;
  __chkstk_darwin(v54);
  __chkstk_darwin(v61);
  v118 = v36;
  sub_10022C350(&qword_100CD4830);
  sub_10022C350(&qword_100CD4838);
  sub_100708824();
  sub_100708878();
  sub_100708CA0();
  v62 = v121;
  v63 = v58;
  StaticIf<>.init(_:then:else:)();

  v140[0] = 0x6E656E6F706D6F63;
  v140[1] = 0xEA00000000002D74;
  v64._countAndFlagsBits = sub_1001B3DAC();
  String.append(_:)(v64);

  v65 = v140[0];
  v66 = v140[1];
  type metadata accessor for ExtendedAppLaunchState(0);
  sub_1000814E4(&qword_100CB84D0, type metadata accessor for ExtendedAppLaunchState);
  v67 = Environment.init<A>(_:)();
  LOBYTE(v49) = v68;
  __dst[0] = 0;
  State.init(wrappedValue:)();
  v69 = v140[0];
  v70 = v140[1];
  v71 = v62 + *(v119 + 36);
  *v71 = v67;
  *(v71 + 8) = v49 & 1;
  *(v71 + 16) = v69;
  *(v71 + 24) = v70;
  *(v71 + 32) = v65;
  *(v71 + 40) = v66;
  if (v63)
  {
    sub_10022C350(&qword_100CCB7A0);
    v72 = Dictionary.init(dictionaryLiteral:)();
    v73 = v128;
    v74 = v136;
  }

  else
  {
    sub_10022C350(&qword_100CD4930);
    inited = swift_initStackObject();
    v119 = xmmword_100A2C3F0;
    *(inited + 16) = xmmword_100A2C3F0;
    *(inited + 32) = 0;
    sub_10022C350(&qword_100CAC480);
    v76 = swift_allocObject();
    *(v76 + 16) = v119;
    v74 = v136;
    *(v76 + 32) = v132;
    *(v76 + 40) = v74;
    *(inited + 40) = v76;
    sub_10022C350(&qword_100CCB7A0);
    v72 = Dictionary.init(dictionaryLiteral:)();
    v73 = v128;
  }

  v77 = v122;
  sub_10011C0F0(v62, v122, &qword_100CD4800);
  *(v77 + *(v123 + 36)) = v72;
  sub_100708E68();
  v78 = v124;
  View.navigationDestinationScope()();
  sub_100018144(v77, &qword_100CD4808);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v79 = v127;
  (*(v125 + 32))(v127, v78, v126);
  v80 = &v79[*(v120 + 36)];
  v81 = v142;
  *v80 = v141;
  *(v80 + 1) = v81;
  *(v80 + 2) = v143;
  v82 = v132;
  v83 = v118;
  if (v132 > 0x7FFFFFFF)
  {
    goto LABEL_47;
  }

  if (v74 > 0x7FFFFFFF)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v74 < v132)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v63 > 0x7FFFFFFF)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v84 = v135;
  if (v135 < 0xFFFFFFFF80000000 || v63 < 0xFFFFFFFF80000000 || v132 < 0xFFFFFFFF80000000 || v74 < 0xFFFFFFFF80000000)
  {
    goto LABEL_51;
  }

  if (v135 > 0x7FFFFFFF)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v135 < v63)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v88 = v79;
  v89 = v110;
  sub_10011C0F0(v88, v110, &qword_100CD4818);
  v90 = (v89 + *(v109 + 36));
  *v90 = v82;
  v90[1] = v74;
  v90[2] = v63;
  v90[3] = v84;
  if (v107)
  {
    v91 = 1.0;
  }

  else
  {
    v91 = 0.0;
  }

  sub_10011C0F0(v89, v73, &qword_100CD4820);
  *(v73 + *(v108 + 36)) = v91;
  v138 = sub_1001B3DAC();
  v139 = v92;
  v93._countAndFlagsBits = 45;
  v93._object = 0xE100000000000000;
  String.append(_:)(v93);
  v94 = *(v129 + 56);
  memcpy(v140, (v83 + v94), 0x49uLL);
  if (v140[9])
  {
    memcpy(v137, (v83 + v94), sizeof(v137));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v95 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v96 = v104;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(v140, &qword_100CB71A8);
    (*(v105 + 8))(v96, v106);
  }

  v97 = v111;
  memcpy(__dst, v137, sizeof(__dst));
  sub_100894558();
  v98._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v98);

  v99 = v138;
  v100 = v139;
  sub_10011C0F0(v73, v97, &qword_100CD4828);
  result = sub_10022C350(&qword_100CD4928);
  v102 = (v97 + *(result + 52));
  *v102 = v99;
  v102[1] = v100;
  return result;
}

uint64_t sub_100705AF8(uint64_t a1)
{
  result = type metadata accessor for LocationViewModel();
  if (*(*(a1 + *(result + 28)) + 16))
  {
    return sub_100705B34();
  }

  return result;
}

uint64_t sub_100705B34()
{
  v1 = *(v0 + *(type metadata accessor for LocationViewModel() + 32));
  v2 = sub_100703874();
  v3 = sub_100703D6C();
  result = sub_10049B8DC(v2, v3, v1);
  if (result)
  {
    if (*(v0 + *(type metadata accessor for LocationGridView() + 44)))
    {
      type metadata accessor for TipCoordinator();

      ObservableResolver.resolve<A>(_:)();

      if (v5)
      {
        sub_1001945A4();
      }

      __break(1u);
    }

    type metadata accessor for ObservableResolver();
    sub_1000814E4(&qword_100CB0468, &type metadata accessor for ObservableResolver);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100705C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v27 = a3;
  v7 = type metadata accessor for EnvironmentValues();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(type metadata accessor for LocationGridView() + 56);
  memcpy(__dst, (a1 + v11), 0x49uLL);
  if (__dst[9])
  {
    memcpy(v31, (a1 + v11), 0x48uLL);
  }

  else
  {

    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    v26 = v10;
    v13 = v8;
    v14 = v7;
    v15 = v12;
    os_log(_:dso:log:_:_:)();

    v7 = v14;
    v8 = v13;
    v10 = v26;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(__dst, &qword_100CB71A8);
    (*(v8 + 8))(v10, v7);
  }

  if (!v31[48])
  {
    v16 = *(a1 + *(type metadata accessor for LocationViewModel() + 88));
    type metadata accessor for LocationComponentContainerViewModel();
    sub_1001B3DAC();
    sub_100879FFC();

    if ((v36 & 1) == 0)
    {
      v29 = v8;
      v18 = v32;
      v17 = v33;
      v20 = v34;
      v19 = v35;
      memcpy(v31, (a1 + v11), 0x49uLL);
      if (v31[72])
      {
        memcpy(v30, (a1 + v11), sizeof(v30));
      }

      else
      {
        v28 = v7;

        static os_log_type_t.fault.getter();
        v21 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_100018144(v31, &qword_100CB71A8);
        (*(v29 + 8))(v10, v28);
      }

      memcpy(v37, v30, sizeof(v37));
      a2 = sub_100705F9C(v16, v37, v18, v17, v20, v19);
      v27 = v22;
      v28 = v23;
      v29 = v24;
    }
  }

  return a2;
}

uint64_t sub_100705F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for LocationComponentViewModel();
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  if (*(a2 + 49) == 3)
  {
    return a3;
  }

  if (qword_100CA1FD0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for MapComponentViewModel();
  v15 = sub_10000703C(v14, qword_100D8FC88);
  sub_10015CE24(v15, v13);
  swift_storeEnumTagMultiPayload();
  sub_1001B3DAC();
  sub_1007090A0(v13, type metadata accessor for LocationComponentViewModel);
  sub_100879FFC();

  if ((v18 & 1) != 0 || v17 >= a5 || !__OFSUB__(a6, 1))
  {
    return a3;
  }

  __break(1u);
  return result;
}

uint64_t sub_100706120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for LocationComponentViewModel();
  __chkstk_darwin(v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EnvironmentValues();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(type metadata accessor for LocationGridView() + 56);
  memcpy(__dst, (v5 + v16), 0x49uLL);
  if (__dst[9])
  {
    memcpy(v28, (v5 + v16), sizeof(v28));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    v27 = v12;
    v18 = a3;
    v19 = a4;
    v20 = a5;
    v21 = v17;
    os_log(_:dso:log:_:_:)();

    a5 = v20;
    a4 = v19;
    a3 = v18;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(__dst, &qword_100CB71A8);
    (*(v13 + 8))(v15, v27);
  }

  if (v28[48])
  {
    v22 = a4 - a3;
    if (!__OFSUB__(a4, a3))
    {
      return v22;
    }

    __break(1u);
  }

  sub_10015CE24(a5, v11);
  result = swift_getEnumCaseMultiPayload();
  v22 = a4 - a3;
  v24 = __OFSUB__(a4, a3);
  if (result != 5)
  {
    if (result != 1)
    {
      goto LABEL_21;
    }

    if (v24)
    {
      __break(1u);
      goto LABEL_25;
    }

    v25 = __OFADD__(v22, 2);
    v22 += 2;
    if (!v25)
    {
      goto LABEL_22;
    }

    __break(1u);
  }

  if (v24)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v25 = __OFADD__(v22++, 1);
  if (!v25)
  {
    goto LABEL_22;
  }

  __break(1u);
LABEL_21:
  if (!v24)
  {
LABEL_22:
    sub_1007090A0(v11, type metadata accessor for LocationComponentViewModel);
    return v22;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1007063D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for LocationComponentViewModel();
  __chkstk_darwin(v14);
  v16 = &v22[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100CA1F38 != -1)
  {
    swift_once();
  }

  if (byte_100D8FB88)
  {
    goto LABEL_12;
  }

  LOBYTE(v17) = 0;
  if (byte_100D8FB89 & 1) != 0 || (byte_100D8FB8A)
  {
    return v17 & 1;
  }

  result = sub_100703874();
  if (result)
  {
LABEL_12:
    LOBYTE(v17) = 0;
    return v17 & 1;
  }

  if (!__OFSUB__(a3, a2))
  {
    if (a3 - a2 == 2)
    {
      v19 = type metadata accessor for LocationComponentContainerViewModel();
      sub_10015CE24(a6 + *(v19 + 20), v16);
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        v20 = a1 + *(type metadata accessor for LocationGridView() + 52);
        v17 = *v20;
        if (*(v20 + 8) != 1)
        {

          static os_log_type_t.fault.getter();
          v21 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();
          sub_1000EBD74(v17, 0);
          (*(v11 + 8))(v13, v10);
          LOBYTE(v17) = v22[15];
        }
      }

      else
      {
        LOBYTE(v17) = 1;
      }

      sub_1007090A0(v16, type metadata accessor for LocationComponentViewModel);
      return v17 & 1;
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_10070667C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W6>, int a7@<W7>, uint64_t a8@<X8>, double a9@<D0>, uint64_t a10)
{
  v126 = a7;
  v125 = a6;
  v117 = a5;
  v109 = a4;
  v133 = a3;
  v110 = a8;
  v106 = type metadata accessor for EnvironmentValues();
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v104 = v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Location.Identifier();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for LocationComponentContainerViewModel();
  __chkstk_darwin(v18 - 8);
  v20 = v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for LocationComponentContainerView(0);
  __chkstk_darwin(v21);
  v23 = v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v121 = v103 - v25;
  v120 = sub_10022C350(&qword_100CD4898);
  __chkstk_darwin(v120);
  v124 = v103 - v26;
  v123 = sub_10022C350(&qword_100CD4888);
  __chkstk_darwin(v123);
  v129 = v103 - v27;
  v127 = sub_10022C350(&qword_100CD4878);
  __chkstk_darwin(v127);
  v130 = v103 - v28;
  v128 = sub_10022C350(&qword_100CD4868);
  __chkstk_darwin(v128);
  v131 = v103 - v29;
  v107 = sub_10022C350(&qword_100CD4858);
  __chkstk_darwin(v107);
  v108 = v103 - v30;
  v113 = type metadata accessor for LocationComponentContainerViewModel;
  sub_10015CE24(a1, v20);
  v31 = type metadata accessor for LocationGridView();
  v32 = v31[7];
  v114 = *(a2 + v31[6]);
  v116 = *(a2 + v32);
  v33 = v31[9];
  v132 = *(a2 + v31[8]);
  sub_100035B30(a2 + v33, __src);
  v34 = type metadata accessor for LocationViewModel();
  v112 = *(a2 + *(v34 + 68));
  v122 = v15;
  v111 = *(v15 + 16);
  v111(v17, a2, v14);
  v119 = v31;
  v35 = *(a2 + v31[5]);
  v36 = *(v34 + 92);
  v115 = a2;
  LOBYTE(a2) = *(a2 + v36);
  v37 = &v23[v21[12]];
  v135 = 0;
  v134 = 0;
  v136 = 1;
  swift_unknownObjectRetain();

  sub_10022C350(&qword_100CC07D8);
  State.init(wrappedValue:)();
  v38 = v138;
  v39 = *(&v138 + 1);
  *v37 = v137;
  v37[16] = v38;
  *(v37 + 3) = v39;
  v40 = &v23[v21[13]];
  *v40 = sub_1001CA728;
  *(v40 + 1) = 0;
  v40[16] = 0;
  v41 = &v23[v21[14]];
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *v41 = sub_1001CADE8;
  *(v41 + 1) = v42;
  v41[16] = 0;
  v43 = &v23[v21[15]];
  *v43 = sub_1001CACE4;
  *(v43 + 1) = 0;
  v43[16] = 0;
  v44 = &v23[v21[16]];
  LOBYTE(v134) = 0;
  State.init(wrappedValue:)();
  v45 = *(&v137 + 1);
  *v44 = v137;
  *(v44 + 1) = v45;
  v46 = v21[17];
  *&v23[v46] = swift_getKeyPath();
  sub_10022C350(&qword_100CA2D60);
  swift_storeEnumTagMultiPayload();
  v47 = &v23[v21[18]];
  *v47 = swift_getKeyPath();
  v47[8] = 0;
  v48 = &v23[v21[19]];
  *v48 = swift_getKeyPath();
  v48[8] = 0;
  v49 = v21[20];
  *&v23[v49] = swift_getKeyPath();
  sub_10022C350(&qword_100CAD618);
  swift_storeEnumTagMultiPayload();
  v50 = &v23[v21[21]];
  *v50 = swift_getKeyPath();
  v50[8] = 0;
  v51 = &v23[v21[22]];
  *v51 = swift_getKeyPath();
  v51[8] = 0;
  v52 = &v23[v21[23]];
  *v52 = swift_getKeyPath();
  v52[8] = 0;
  v53 = &v23[v21[24]];
  *v53 = swift_getKeyPath();
  v53[8] = 0;
  v54 = &v23[v21[25]];
  *v54 = swift_getKeyPath();
  v54[8] = 0;
  v55 = &v23[v21[26]];
  *v55 = swift_getKeyPath();
  v55[8] = 0;
  v56 = &v23[v21[27]];
  *v56 = swift_getKeyPath();
  v56[8] = 0;
  v57 = &v23[v21[28]];
  v58 = type metadata accessor for ObservableResolver();
  v59 = sub_1000814E4(&qword_100CB0468, &type metadata accessor for ObservableResolver);
  v103[2] = v58;
  v103[1] = v59;
  *v57 = EnvironmentObject.init()();
  v57[1] = v60;
  *&v23[v21[30]] = 0x4024000000000000;
  *&v23[v21[31]] = 0xC024000000000000;
  v118 = v20;
  sub_10015CE24(v20, v23);
  *&v23[v21[5]] = v132;
  sub_100035B30(__src, &v23[v21[6]]);
  v23[v21[7]] = v112;
  v61 = v17;
  v62 = v17;
  v63 = v14;
  v111(&v23[v21[8]], v62, v14);
  *&v23[v21[9]] = v35;
  v23[v21[10]] = a2;
  v64 = &v23[v21[11]];
  v65 = v117;
  *v64 = v133;
  *(v64 + 1) = v65;
  v66 = *(v114 + 56);

  v67 = 0;
  if ((DeviceIsVerySlow() & 1) == 0)
  {
    v67 = static Animation.linear(duration:)();
  }

  if (qword_100CA1F38 != -1)
  {
    swift_once();
  }

  v68 = byte_100D8FB88 | byte_100D8FB89 | byte_100D8FB8A;
  type metadata accessor for WireframeContentManager();
  swift_allocObject();
  v69 = v116;

  v70 = sub_1001CB2F4(v66, v69, v67, v133, v65, (v68 & 1) == 0);
  type metadata accessor for WireframeContentManagerReference();
  v71 = swift_allocObject();
  *(v71 + 16) = v70;
  v134 = v71;
  State.init(wrappedValue:)();
  (*(v122 + 8))(v61, v63);
  sub_100006F14(__src);
  sub_1007090A0(v118, type metadata accessor for LocationComponentContainerViewModel);
  v72 = *(&v137 + 1);
  v73 = &v23[v21[29]];
  *v73 = v137;
  *(v73 + 1) = v72;
  v74 = v121;
  sub_1007090F4(v23, v121);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v75 = v124;
  sub_1007090F4(v74, v124);
  v76 = (v75 + *(v120 + 36));
  v77 = v138;
  *v76 = v137;
  v76[1] = v77;
  v76[2] = v139;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v78 = v129;
  sub_10011C0F0(v75, v129, &qword_100CD4898);
  memcpy((v78 + *(v123 + 36)), __src, 0x70uLL);
  KeyPath = swift_getKeyPath();
  v80 = v119;
  v81 = v115;
  v82 = v115 + v119[13];
  v83 = *v82;
  if (*(v82 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v84 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v85 = v104;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v83, 0);
    (*(v105 + 8))(v85, v106);
    LOBYTE(v83) = v134;
  }

  v86 = v131;
  v87 = v130;
  sub_10011C0F0(v78, v130, &qword_100CD4888);
  v88 = v87 + *(v127 + 36);
  *v88 = KeyPath;
  *(v88 + 8) = v83 & 1;
  v89 = swift_getKeyPath();
  sub_10011C0F0(v87, v86, &qword_100CD4878);
  v90 = v86 + *(v128 + 36);
  *v90 = v89;
  *(v90 + 8) = a10 > 1;
  v91 = swift_getKeyPath();
  if (*(v81 + v80[11]))
  {
    v92 = v91;
    type metadata accessor for TipCoordinator();

    ObservableResolver.resolve<A>(_:)();

    if (v134)
    {
      v93 = sub_100703874();
      v94 = sub_10074A5C8(v93, v133, v109);
      v96 = v95;

      v97 = v108;
      sub_10011C0F0(v86, v108, &qword_100CD4868);
      v98 = (v97 + *(v107 + 36));
      *v98 = v92;
      v98[1] = v94;
      v98[2] = v96;
      v99 = swift_getKeyPath();
      v100 = v110;
      sub_10011C0F0(v97, v110, &qword_100CD4858);
      result = sub_10022C350(&qword_100CD4830);
      v102 = v100 + *(result + 36);
      *v102 = v99;
      *(v102 + 8) = a9;
      *(v102 + 16) = 0;
      return result;
    }

    __break(1u);
  }

  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1007074F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v57 = a4;
  v58 = a3;
  v56 = a2;
  v51 = a1;
  v46 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v46);
  v47 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_10022C350(&qword_100CD48E8);
  v49 = *(v55 - 8);
  __chkstk_darwin(v55);
  v48 = &v43 - v7;
  v8 = type metadata accessor for EnvironmentValues();
  v45 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_10022C350(&qword_100CD4938);
  __chkstk_darwin(v52);
  v54 = &v43 - v11;
  v12 = sub_10022C350(&qword_100CD4940);
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  v53 = sub_10022C350(&qword_100CD48D8);
  __chkstk_darwin(v53);
  v50 = &v43 - v15;
  v60 = sub_10022C350(&qword_100CD4948);
  __chkstk_darwin(v60);
  v17 = &v43 - v16;
  v18 = sub_10022C350(&qword_100CD4830);
  __chkstk_darwin(v18);
  v20 = &v43 - v19;
  v21 = type metadata accessor for LocationComponentViewModel();
  __chkstk_darwin(v21);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_10022C350(&qword_100CD48C8);
  __chkstk_darwin(v59);
  v25 = &v43 - v24;
  if (qword_100CA1F38 != -1)
  {
    v44 = &v43 - v24;
    swift_once();
    v25 = v44;
  }

  if ((byte_100D8FB88 & 1) == 0 && (byte_100D8FB89 & 1) == 0 && (byte_100D8FB8A & 1) == 0)
  {
    v44 = v25;
    v28 = type metadata accessor for LocationComponentContainerViewModel();
    sub_10015CE24(v51 + *(v28 + 20), v23);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1007090A0(v23, type metadata accessor for LocationComponentViewModel);
    if (EnumCaseMultiPayload == 5)
    {
      v30 = *(type metadata accessor for LocationGridView() + 40);
      if (qword_100CA24D0 != -1)
      {
        swift_once();
      }

      if (byte_100D90788 == 1)
      {
        v31 = v56 + v30;
        if (*(v31 + 8) != 1)
        {
          type metadata accessor for DisplayMetrics();
          if ((DynamicTypeSize.isAccessibilitySize.getter() & 1) == 0 && sub_10029C3DC(*v31) && *(v31 + 17) == 1)
          {
            v58();
            sub_1000302D8(v20, v14, &qword_100CD4830);
            swift_storeEnumTagMultiPayload();
            sub_100708878();
            v32 = v50;
            _ConditionalContent<>.init(storage:)();
            sub_1000302D8(v32, v54, &qword_100CD48D8);
            swift_storeEnumTagMultiPayload();
            sub_100708DE4();
            sub_100006F64(&qword_100CD48E0, &qword_100CD48E8);
            v33 = v44;
            _ConditionalContent<>.init(storage:)();
            sub_100018144(v32, &qword_100CD48D8);
            sub_100018144(v20, &qword_100CD4830);
LABEL_21:
            v26 = &qword_100CD48C8;
            sub_1000302D8(v33, v17, &qword_100CD48C8);
            swift_storeEnumTagMultiPayload();
            sub_100708D2C();
            sub_100708878();
            _ConditionalContent<>.init(storage:)();
            v27 = v33;
            return sub_100018144(v27, v26);
          }
        }
      }
    }

    v34 = type metadata accessor for LocationGridView();
    v35 = v56 + *(v34 + 48);
    v36 = *v35;
    LODWORD(v35) = *(v35 + 8);
    v43 = a5;
    if (v35 == 1)
    {
      if ((v36 & 1) == 0)
      {
LABEL_18:
        static HorizontalAlignment.center.getter();
        v61 = 0;
        sub_1000814E4(&qword_100CC0058, &type metadata accessor for PinnedScrollableViews);
        dispatch thunk of OptionSet.init(rawValue:)();
        sub_100708878();
        v37 = v48;
        LazyVStack.init(alignment:spacing:pinnedViews:content:)();
        v38 = v49;
        v39 = v55;
        (*(v49 + 16))(v54, v37, v55);
        swift_storeEnumTagMultiPayload();
        sub_100708DE4();
        sub_100006F64(&qword_100CD48E0, &qword_100CD48E8);
        v33 = v44;
        _ConditionalContent<>.init(storage:)();
        (*(v38 + 8))(v37, v39);
        goto LABEL_21;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v40 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v36, 0);
      v34 = (*(v45 + 8))(v10, v8);
      if (v62 != 1)
      {
        goto LABEL_18;
      }
    }

    (v58)(v34);
    sub_1000302D8(v20, v14, &qword_100CD4830);
    swift_storeEnumTagMultiPayload();
    sub_100708878();
    v41 = v50;
    _ConditionalContent<>.init(storage:)();
    sub_1000302D8(v41, v54, &qword_100CD48D8);
    swift_storeEnumTagMultiPayload();
    sub_100708DE4();
    sub_100006F64(&qword_100CD48E0, &qword_100CD48E8);
    v33 = v44;
    _ConditionalContent<>.init(storage:)();
    sub_100018144(v41, &qword_100CD48D8);
    sub_100018144(v20, &qword_100CD4830);
    goto LABEL_21;
  }

  v58();
  v26 = &qword_100CD4830;
  sub_1000302D8(v20, v17, &qword_100CD4830);
  swift_storeEnumTagMultiPayload();
  sub_100708D2C();
  sub_100708878();
  _ConditionalContent<>.init(storage:)();
  v27 = v20;
  return sub_100018144(v27, v26);
}

uint64_t sub_100707F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for LocationGridView();
  sub_100003810(v12);
  return sub_100704D1C(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_100707FDC()
{
  v1 = type metadata accessor for LocationGridView();
  sub_100003810(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_100705AF8(v3);
}

unint64_t sub_100708038()
{
  result = qword_100CD47F0;
  if (!qword_100CD47F0)
  {
    sub_10022E824(&qword_100CD47E0);
    sub_10014A01C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD47F0);
  }

  return result;
}

uint64_t sub_1007080BC(uint64_t a1, _BYTE *a2)
{
  result = type metadata accessor for LocationGridView() - 8;
  if (*a2 == 1)
  {
    return sub_100705B34();
  }

  return result;
}

uint64_t sub_100708128()
{
  v1 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v13 = *(v0 + 16);
  sub_10022C350(&qword_100CA5A80);
  State.wrappedValue.getter();
  if (v12)
  {
    v8 = 1;
  }

  else
  {
    BYTE8(v13) = *(v0 + 8);
    *&v13 = *v0;

    if ((BYTE8(v13) & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v9 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100018144(&v13, &qword_100CD4968);
      (*(v3 + 8))(v7, v1);
    }

    v10 = sub_1004237C8();

    v8 = v10 ^ 1;
  }

  return v8 & 1;
}

uint64_t sub_1007082C0(uint64_t a1)
{
  v3 = sub_10022C350(&qword_100CD4950);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = &v23[-v5 - 8];
  sub_10022C350(&qword_100CD4958);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v7);
  v9 = &v23[-v8 - 8];
  v10 = sub_10022C350(&qword_100CD4960);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v23[-v12 - 8];
  if (sub_100708128())
  {
    v15 = v1[4];
    v14 = v1[5];
    sub_10022C350(&qword_100CD4980);
    sub_1000037E8();
    (*(v16 + 16))(v13, a1);
    v17 = &v13[*(v10 + 52)];
    *v17 = v15;
    v17[1] = v14;
    sub_1000302D8(v13, v9, &qword_100CD4960);
    swift_storeEnumTagMultiPayload();
    sub_100006F64(&qword_100CD4970, &qword_100CD4960);
    sub_100006F64(&qword_100CD4978, &qword_100CD4950);

    sub_100020A7C();
    _ConditionalContent<>.init(storage:)();
    return sub_100018144(v13, &qword_100CD4960);
  }

  else
  {
    v24 = static Color.clear.getter();
    v27 = *v1;
    v28 = *(v1 + 8);
    v19 = *(v1 + 1);
    v25 = *(v1 + 2);
    v26 = v19;
    v20 = swift_allocObject();
    v21 = *(v1 + 1);
    v20[1] = *v1;
    v20[2] = v21;
    v20[3] = *(v1 + 2);
    sub_1000302D8(&v27, v23, &qword_100CD4968);
    sub_1000302D8(&v26, v23, &qword_100CA5A80);
    sub_100358150(&v25, v23);
    View.onScrollVisibilityChange(threshold:_:)();

    *&v6[*(v3 + 52)] = v25;
    sub_10020DD18(v6, v9);
    swift_storeEnumTagMultiPayload();
    sub_100006F64(&qword_100CD4970, &qword_100CD4960);
    sub_100006F64(&qword_100CD4978, &qword_100CD4950);

    sub_100020A7C();
    _ConditionalContent<>.init(storage:)();
    return sub_100018144(v6, &qword_100CD4950);
  }
}

uint64_t sub_1007086DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LocationComponentContainerViewModel() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for LocationGridView() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_10070667C(v1 + v4, v1 + v7, *(v1 + v8), *(v1 + v8 + 8), *(v1 + v8 + 16), *(v1 + ((v8 + 39) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v8 + 55) & 0xFFFFFFFFFFFFFFF8) + 8), a1, *(v1 + ((v8 + 39) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v8 + 71) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_100708824()
{
  result = qword_100CD4840;
  if (!qword_100CD4840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4840);
  }

  return result;
}

unint64_t sub_100708878()
{
  result = qword_100CD4848;
  if (!qword_100CD4848)
  {
    sub_10022E824(&qword_100CD4830);
    sub_100708930();
    sub_100006F64(&qword_100CC2270, &qword_100CC2278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4848);
  }

  return result;
}

unint64_t sub_100708930()
{
  result = qword_100CD4850;
  if (!qword_100CD4850)
  {
    sub_10022E824(&qword_100CD4858);
    sub_1007089E8();
    sub_100006F64(&qword_100CD48A8, &qword_100CD48B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4850);
  }

  return result;
}

unint64_t sub_1007089E8()
{
  result = qword_100CD4860;
  if (!qword_100CD4860)
  {
    sub_10022E824(&qword_100CD4868);
    sub_100708AA0();
    sub_100006F64(&qword_100CB0558, &qword_100CE1580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4860);
  }

  return result;
}

unint64_t sub_100708AA0()
{
  result = qword_100CD4870;
  if (!qword_100CD4870)
  {
    sub_10022E824(&qword_100CD4878);
    sub_100708B58();
    sub_100006F64(&qword_100CB0558, &qword_100CE1580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4870);
  }

  return result;
}

unint64_t sub_100708B58()
{
  result = qword_100CD4880;
  if (!qword_100CD4880)
  {
    sub_10022E824(&qword_100CD4888);
    sub_100708BE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4880);
  }

  return result;
}

unint64_t sub_100708BE4()
{
  result = qword_100CD4890;
  if (!qword_100CD4890)
  {
    sub_10022E824(&qword_100CD4898);
    sub_1000814E4(&qword_100CD48A0, type metadata accessor for LocationComponentContainerView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4890);
  }

  return result;
}

unint64_t sub_100708CA0()
{
  result = qword_100CD48B8;
  if (!qword_100CD48B8)
  {
    sub_10022E824(&qword_100CD4838);
    sub_100708D2C();
    sub_100708878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD48B8);
  }

  return result;
}

unint64_t sub_100708D2C()
{
  result = qword_100CD48C0;
  if (!qword_100CD48C0)
  {
    sub_10022E824(&qword_100CD48C8);
    sub_100708DE4();
    sub_100006F64(&qword_100CD48E0, &qword_100CD48E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD48C0);
  }

  return result;
}

unint64_t sub_100708DE4()
{
  result = qword_100CD48D0;
  if (!qword_100CD48D0)
  {
    sub_10022E824(&qword_100CD48D8);
    sub_100708878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD48D0);
  }

  return result;
}

unint64_t sub_100708E68()
{
  result = qword_100CD48F0;
  if (!qword_100CD48F0)
  {
    sub_10022E824(&qword_100CD4808);
    sub_100708F20();
    sub_100006F64(&qword_100CD4918, &qword_100CD4920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD48F0);
  }

  return result;
}

unint64_t sub_100708F20()
{
  result = qword_100CD48F8;
  if (!qword_100CD48F8)
  {
    sub_10022E824(&qword_100CD4800);
    sub_100708FAC();
    sub_10070904C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD48F8);
  }

  return result;
}

unint64_t sub_100708FAC()
{
  result = qword_100CD4900;
  if (!qword_100CD4900)
  {
    sub_10022E824(&qword_100CD4908);
    sub_100708824();
    sub_100708878();
    sub_100708CA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4900);
  }

  return result;
}

unint64_t sub_10070904C()
{
  result = qword_100CD4910;
  if (!qword_100CD4910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4910);
  }

  return result;
}

uint64_t sub_1007090A0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100003D98();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1007090F4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

unint64_t sub_10070918C()
{
  result = qword_100CD4988;
  if (!qword_100CD4988)
  {
    sub_10022E824(&qword_100CD4990);
    sub_100006F64(&qword_100CD4970, &qword_100CD4960);
    sub_100006F64(&qword_100CD4978, &qword_100CD4950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4988);
  }

  return result;
}

uint64_t sub_10070926C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_10022C350(&qword_100CD4A38);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v19 - v13;
  (*(v11 + 16))(&v19 - v13, a1, v10, v12);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v15, v14, v10);
  v17 = sub_1000161C0(a5, a5[3]);
  sub_10070A210(a3, a4, *v17, sub_10070A184, v16, a2);
}

uint64_t sub_1007093E4(uint64_t a1)
{
  if (a1)
  {
  }

  sub_10022C350(&qword_100CD4A38);
  return CheckedContinuation.resume(returning:)();
}

void sub_100709448(uint64_t a1, void (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = *(a1 + 16);
  if (v12 || (v13 = [objc_allocWithZone(MKLocalSearchCompleter) init], v14 = objc_allocWithZone(type metadata accessor for LocationSearchCompleter()), v15 = LocationSearchCompleter.init(searchCompleter:)(v13), v16 = *(a1 + 16), *(a1 + 16) = v15, v16, (v12 = *(a1 + 16)) != 0))
  {
    v17 = swift_allocObject();
    v17[2] = a1;
    v17[3] = a2;
    v17[4] = a3;
    fora = a6;
    v18 = a5;
    v19 = &v12[OBJC_IVAR____TtC7Weather23LocationSearchCompleter_onError];
    swift_beginAccess();
    v20 = *v19;
    *v19 = sub_10070A318;
    v19[1] = v17;
    v21 = v12;

    sub_10002B028(v20);
    v22 = swift_allocObject();
    swift_weakInit();
    sub_100035B30(a4, v28);
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = a2;
    v23[4] = a3;
    sub_10003E2A0(v28, (v23 + 5));
    v24 = &v21[OBJC_IVAR____TtC7Weather23LocationSearchCompleter_onUpdate];
    swift_beginAccess();
    v25 = *v24;
    *v24 = sub_10070A324;
    v24[1] = v23;

    sub_10002B028(v25);

    v26._countAndFlagsBits = v18;
    v26._object = fora;
    LocationSearchCompleter.searchLocations(for:)(v26);
  }

  else
  {
    a2(0, 0);
  }
}

uint64_t sub_100709664(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void))
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.intents.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "We encountered an error while updating the search term.", v11, 2u);
  }

  (*(v6 + 8))(v8, v5);
  v12 = *(a2 + 16);
  *(a2 + 16) = 0;

  return a3(0, 0);
}

void sub_1007097D4(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_100040690();
    v11 = static OS_dispatch_queue.main.getter();
    sub_100035B30(a5, v17);
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    sub_10003E2A0(v17, v12 + 24);

    sub_10022C350(&qword_100CD4A40);
    type metadata accessor for LocationSearcher();
    firstly<A, B>(on:disposeOn:closure:)();

    v13 = static OS_dispatch_queue.main.getter();
    v14 = swift_allocObject();
    v14[2] = v10;
    v14[3] = a3;
    v14[4] = a4;

    Promise.then<A, B>(on:disposeOn:closure:)();

    v15 = swift_allocObject();
    v15[2] = v10;
    v15[3] = a3;
    v15[4] = a4;

    v16 = zalgo.getter();
    Promise.error(on:closure:)();
  }

  else
  {
    a3(0, 0);
  }
}

uint64_t sub_100709A5C(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  v32 = sub_10022C350(&qword_100CD4A48);
  v10 = *(v32 - 8);
  __chkstk_darwin(v32);
  v12 = &v27 - v11;
  v13 = *a1;
  v14 = *(*a1 + 16);
  v15 = _swiftEmptyArrayStorage;
  if (v14)
  {
    v28 = a3;
    v29 = a5;
    v30 = a4;
    v31 = v5;
    v36 = _swiftEmptyArrayStorage;
    v33 = v14;
    result = sub_1006A827C(0, v14, 0);
    v17 = 0;
    v15 = v36;
    v18 = v13 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v19 = v32;
    while (v17 < *(v13 + 16))
    {
      v20 = v10;
      sub_10070A3C0(v18 + *(v10 + 72) * v17, v12);
      static LocationSearchEntity.makeFromLocation(_:name:)(*&v12[*(v19 + 48)], *&v12[*(v19 + 48) + 8], v34);
      result = sub_100018144(v12, &qword_100CD4A48);
      v36 = v15;
      v22 = v15[2];
      v21 = v15[3];
      if (v22 >= v21 >> 1)
      {
        result = sub_1006A827C((v21 > 1), v22 + 1, 1);
        v19 = v32;
        v15 = v36;
      }

      ++v17;
      v15[2] = v22 + 1;
      v23 = &v15[5 * v22];
      v24 = v34[0];
      v25 = v34[1];
      *(v23 + 64) = v35;
      *(v23 + 2) = v24;
      *(v23 + 3) = v25;
      v10 = v20;
      if (v33 == v17)
      {
        a4 = v30;
        a3 = v28;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    v26 = *(a3 + 16);
    *(a3 + 16) = 0;

    a4(v15, 0);
  }

  return result;
}

uint64_t sub_100709C78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void))
{
  v4 = *(a2 + 16);
  *(a2 + 16) = 0;

  return a3(0, 0);
}

void sub_100709CB8(id *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_10022C350(&qword_100CD4A48);
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  v9 = sub_10022C350(&qword_100CA65D8);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for Location();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  sub_10043D538(v16, v11);
  if (sub_100024D10(v11, 1, v12) == 1)
  {
    sub_100018144(v11, &qword_100CA65D8);
    sub_1000161C0(a2, a2[3]);
    v17 = [v16 w_calloutTitle];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    LocalSearchRequestManager.performLocalSearch(with:calloutTitle:)(v16, v18, v20);

    *(swift_allocObject() + 16) = v16;
    v21 = v16;
    v22 = zalgo.getter();
    v23 = Promise.then<A>(on:closure:)();
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v24 = [v16 w_calloutTitle];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = &v8[*(v6 + 48)];
    (*(v13 + 16))(v8, v15, v12);
    *v28 = v25;
    v28[1] = v27;
    sub_10022C350(&qword_100CD4A50);
    swift_allocObject();
    v23 = Promise.init(value:)();
    (*(v13 + 8))(v15, v12);
  }

  *a3 = v23;
}

uint64_t sub_100709FF4(uint64_t a1, void *a2)
{
  v4 = sub_10022C350(&qword_100CD4A48);
  v5 = v4 - 8;
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v16 - v7;
  v9 = [a2 w_calloutTitle];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = &v8[*(v5 + 56)];
  v14 = type metadata accessor for Location();
  (*(*(v14 - 8) + 16))(v8, a1, v14);
  *v13 = v10;
  v13[1] = v12;
  sub_10022C350(&qword_100CD4A50);
  swift_allocObject();
  return Promise.init(value:)();
}

uint64_t sub_10070A130()
{
  sub_100016D4C();

  return swift_deallocClassInstance();
}

uint64_t sub_10070A184(uint64_t a1)
{
  sub_10022C350(&qword_100CD4A38);

  return sub_1007093E4(a1);
}

uint64_t sub_10070A210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[3] = type metadata accessor for LocalSearchRequestManager();
  v15[4] = &off_100C6CB98;
  v15[0] = a3;
  sub_100035B30(v15, v14);
  v12 = swift_allocObject();
  v12[2] = a6;
  v12[3] = a4;
  v12[4] = a5;
  sub_10003E2A0(v14, (v12 + 5));
  v12[10] = a1;
  v12[11] = a2;

  asyncMain(block:)();

  return sub_100006F14(v15);
}

uint64_t sub_10070A374()
{

  return swift_deallocObject();
}

uint64_t sub_10070A3C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CD4A48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10070A53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = a3;
  v4 = type metadata accessor for Calendar.Component();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  type metadata accessor for Calendar();
  sub_1000037C4();
  v69 = v12;
  v70 = v11;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v15 = v14 - v13;
  v16 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v16 - 8);
  v18 = &v66 - v17;
  v19 = type metadata accessor for Date();
  sub_1000037C4();
  v68 = v20;
  __chkstk_darwin(v21);
  v66 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v67 = &v66 - v24;
  v25 = sub_10022C350(&qword_100CD19D8);
  __chkstk_darwin(v25 - 8);
  v27 = &v66 - v26;
  v28 = type metadata accessor for MainStateProcessingContext();
  __chkstk_darwin(v28);
  sub_1000037D8();
  v31 = v30 - v29;
  sub_10070AC08(a2, v27);
  if (sub_100024D10(v27, 1, v28) == 1)
  {
    sub_10003FDF4(v27, &qword_100CD19D8);
    if (qword_100CA26E0 != -1)
    {
      sub_100019C5C();
    }

    v32 = type metadata accessor for Logger();
    sub_10000703C(v32, qword_100D90B08);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = sub_10000389C();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "missing processingContext in DiscardStateProcessor", v35, 2u);
    }

    return 1;
  }

  sub_1006BA734(v27, v31);
  static Calendar.current.getter();
  (*(v6 + 104))(v10, enum case for Calendar.Component.second(_:), v4);
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v6 + 8))(v10, v4);
  (*(v69 + 8))(v15, v70);
  if (sub_100024D10(v18, 1, v19) == 1)
  {
    sub_10003FDF4(v18, &unk_100CB2CF0);
    if (qword_100CA26E0 != -1)
    {
      sub_100019C5C();
    }

    v36 = type metadata accessor for Logger();
    sub_10000703C(v36, qword_100D90B08);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (sub_100005954(v38))
    {
      v39 = sub_10000389C();
      sub_100019DE4(v39);
      sub_10001CB78(&_mh_execute_header, v40, v41, "missing expirationDate in DiscardStateProcessor");
      sub_1000065F4();
    }

LABEL_13:
    sub_10070AC78(v31);
    return 1;
  }

  v44 = v67;
  v43 = v68;
  (*(v68 + 32))(v67, v18, v19);
  if (qword_100CA1F30 != -1)
  {
    swift_once();
  }

  if (*(qword_100D8FB80 + 16) == 1)
  {
    if (qword_100CA26E0 != -1)
    {
      sub_100019C5C();
    }

    v45 = type metadata accessor for Logger();
    sub_10000703C(v45, qword_100D90B08);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (sub_100005954(v47))
    {
      v48 = sub_10000389C();
      sub_100019DE4(v48);
      sub_10001CB78(&_mh_execute_header, v49, v50, "Drop state due to app crashed previously");
      sub_1000065F4();
    }

    (*(v43 + 8))(v44, v19);
  }

  else
  {
    v51 = v66;
    static WeatherClock.date.getter();
    v52 = static Date.> infix(_:_:)();
    v53 = *(v43 + 8);
    v53(v51, v19);
    if ((v52 & 1) == 0)
    {
      if (qword_100CA26E0 != -1)
      {
        sub_100019C5C();
      }

      v60 = type metadata accessor for Logger();
      sub_10000703C(v60, qword_100D90B08);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();
      if (sub_100005954(v62))
      {
        v63 = sub_10000389C();
        sub_100019DE4(v63);
        sub_10001CB78(&_mh_execute_header, v64, v65, "Keep fresh state");
        sub_1000065F4();
      }

      v53(v44, v19);
      goto LABEL_13;
    }

    if (qword_100CA26E0 != -1)
    {
      sub_100019C5C();
    }

    v54 = type metadata accessor for Logger();
    sub_10000703C(v54, qword_100D90B08);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    if (sub_100005954(v56))
    {
      v57 = sub_10000389C();
      sub_100019DE4(v57);
      sub_10001CB78(&_mh_execute_header, v58, v59, "Drop expired state");
      sub_1000065F4();
    }

    v53(v44, v19);
  }

  sub_10070AC78(v31);
  return 0;
}

uint64_t sub_10070AC08(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CD19D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10070AC78(uint64_t a1)
{
  v2 = type metadata accessor for MainStateProcessingContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10070ACE8()
{
  result = qword_100CD4A58;
  if (!qword_100CD4A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4A58);
  }

  return result;
}

unint64_t sub_10070AD40()
{
  result = qword_100CD4A60;
  if (!qword_100CD4A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4A60);
  }

  return result;
}

uint64_t sub_10070ADFC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MainStateProcessingContext();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10070AE40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10022C350(&qword_100CA36F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2C3F0;
  *(inited + 32) = 0x6C65646F6DLL;
  *(inited + 40) = 0xE500000000000000;
  memcpy(__dst, (a1 + 16), sizeof(__dst));
  *(inited + 72) = &type metadata for ReportWeatherViewModel;
  v5 = swift_allocObject();
  *(inited + 48) = v5;
  memcpy((v5 + 16), __dst, 0x60uLL);
  sub_10029C25C(__dst, &v7);
  Dictionary.init(dictionaryLiteral:)();
  a2[3] = sub_10022C350(&qword_100CD4AC0);
  a2[4] = sub_10070B024();
  sub_100042FB0(a2);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_10070AF90()
{
  sub_10070B088();

  return ShortDescribable.description.getter();
}

unint64_t sub_10070AFD0()
{
  result = qword_100CD4AB8;
  if (!qword_100CD4AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4AB8);
  }

  return result;
}

unint64_t sub_10070B024()
{
  result = qword_100CD4AC8;
  if (!qword_100CD4AC8)
  {
    sub_10022E824(&qword_100CD4AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4AC8);
  }

  return result;
}

unint64_t sub_10070B088()
{
  result = qword_100CD4AD0;
  if (!qword_100CD4AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4AD0);
  }

  return result;
}

uint64_t sub_10070B0DC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MoonDetailSelectedDate();
  __chkstk_darwin(v3 - 8);
  sub_1000037D8();
  v6 = v5 - v4;
  sub_1006559C8(v1, v5 - v4);
  type metadata accessor for Date();
  sub_1000037E8();
  return (*(v7 + 32))(a1, v6);
}

uint64_t sub_10070B184(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265626275726373 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F74747562 && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x68636E75616CLL && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_10070B294(char a1)
{
  if (!a1)
  {
    return 0x7265626275726373;
  }

  if (a1 == 1)
  {
    return 0x6E6F74747562;
  }

  return 0x68636E75616CLL;
}

uint64_t sub_10070B2E4(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v44 = type metadata accessor for Date();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100003C38();
  v43 = v7 - v8;
  __chkstk_darwin(v9);
  sub_100013628();
  __chkstk_darwin(v10);
  v12 = &v42 - v11;
  type metadata accessor for MoonDetailSelectedDate();
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_100003C38();
  v16 = v14 - v15;
  v18 = __chkstk_darwin(v17);
  v20 = &v42 - v19;
  __chkstk_darwin(v18);
  v22 = &v42 - v21;
  sub_10022C350(&qword_100CD4B88);
  sub_100003828();
  v24 = __chkstk_darwin(v23);
  v26 = &v42 - v25;
  v27 = *(v24 + 56);
  sub_1006559C8(a1, &v42 - v25);
  sub_1006559C8(v45, &v26[v27]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1006559C8(v26, v20);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_100016DD0();
        v29 = v44;
        v30(v2);
        v31 = static Date.== infix(_:_:)();
        v32 = *(v5 + 8);
        v32(v2, v29);
        v33 = v20;
        v34 = v29;
LABEL_9:
        v32(v33, v34);
LABEL_13:
        sub_1003DE8B4(v26);
        return v31 & 1;
      }

      v16 = v20;
    }

    else
    {
      sub_1006559C8(v26, v16);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_100016DD0();
        v36 = v43;
        v35 = v44;
        v37(v43);
        v31 = static Date.== infix(_:_:)();
        v32 = *(v5 + 8);
        v32(v36, v35);
        v33 = v16;
        v34 = v35;
        goto LABEL_9;
      }
    }
  }

  else
  {
    sub_1006559C8(v26, v22);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_100016DD0();
      v38 = v44;
      v39(v12);
      v31 = static Date.== infix(_:_:)();
      v40 = *(v5 + 8);
      v40(v12, v38);
      v40(v22, v38);
      goto LABEL_13;
    }

    v16 = v22;
  }

  (*(v5 + 8))(v16, v44);
  sub_10070C880(v26);
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_10070B664(void *a1)
{
  sub_10022C350(&qword_100CD4BD0);
  sub_1000037C4();
  v61 = v4;
  v62 = v3;
  sub_100003828();
  __chkstk_darwin(v5);
  sub_1000039BC();
  v60 = v6;
  sub_10022C350(&qword_100CD4BD8);
  sub_1000037C4();
  v58 = v8;
  v59 = v7;
  sub_100003828();
  __chkstk_darwin(v9);
  sub_1000039BC();
  v57 = v10;
  v56 = sub_10022C350(&qword_100CD4BE0);
  sub_1000037C4();
  v53 = v11;
  sub_100003828();
  __chkstk_darwin(v12);
  sub_1000039BC();
  v55 = v13;
  v66 = type metadata accessor for Date();
  sub_1000037C4();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_100003C38();
  v54 = (v17 - v18);
  __chkstk_darwin(v19);
  sub_100013628();
  __chkstk_darwin(v20);
  v22 = &v52 - v21;
  type metadata accessor for MoonDetailSelectedDate();
  sub_1000037E8();
  __chkstk_darwin(v23);
  sub_1000037D8();
  v26 = v25 - v24;
  sub_10022C350(&qword_100CD4BE8);
  sub_1000037C4();
  v64 = v28;
  v65 = v27;
  sub_100003828();
  __chkstk_darwin(v29);
  v31 = &v52 - v30;
  v32 = a1[3];
  sub_1000161C0(a1, v32);
  sub_10070C8E8();
  v33 = v15;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1006559C8(v63, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_100049B3C();
      v35();
      v68 = 1;
      sub_10070C990();
      v36 = v57;
      sub_1000289CC();
      sub_10001F608();
      sub_10070CA38(v37, v38);
      v39 = v59;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v58 + 8))(v36, v39);
      v22 = v1;
    }

    else
    {
      v22 = v54;
      sub_100049B3C();
      v46();
      v69 = 2;
      sub_10070C93C();
      v47 = v60;
      sub_1000289CC();
      sub_10001F608();
      sub_10070CA38(v48, v49);
      v50 = v62;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v61 + 8))(v47, v50);
    }
  }

  else
  {
    v40 = v53;
    sub_100049B3C();
    v41();
    v67 = 0;
    sub_10070C9E4();
    v42 = v55;
    sub_1000289CC();
    sub_10001F608();
    sub_10070CA38(v43, v44);
    v45 = v56;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v40 + 8))(v42, v45);
  }

  (*(v33 + 8))(v22, v32);
  return (*(v64 + 8))(v31, v26);
}

uint64_t sub_10070BBCC()
{
  v1 = type metadata accessor for Date();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  type metadata accessor for MoonDetailSelectedDate();
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  sub_1006559C8(v0, v10 - v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v3 + 32))(v7, v11, v1);
  Hasher._combine(_:)(EnumCaseMultiPayload);
  sub_10001F608();
  sub_10070CA38(v13, v14);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v3 + 8))(v7, v1);
}

Swift::Int sub_10070BD40()
{
  Hasher.init(_seed:)();
  sub_10070BBCC();
  return Hasher._finalize()();
}

uint64_t sub_10070BD80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v90 = sub_10022C350(&qword_100CD4B90);
  sub_1000037C4();
  v83 = v3;
  sub_100003828();
  __chkstk_darwin(v4);
  sub_1000039BC();
  v85 = v5;
  sub_10022C350(&qword_100CD4B98);
  sub_1000037C4();
  v81 = v7;
  v82 = v6;
  sub_100003828();
  __chkstk_darwin(v8);
  sub_1000039BC();
  v87 = v9;
  sub_10022C350(&qword_100CD4BA0);
  sub_1000037C4();
  v79 = v11;
  v80 = v10;
  sub_100003828();
  __chkstk_darwin(v12);
  sub_1000039BC();
  v84 = v13;
  sub_10022C350(&qword_100CD4BA8);
  sub_1000037C4();
  v88 = v15;
  v89 = v14;
  sub_100003828();
  __chkstk_darwin(v16);
  v17 = type metadata accessor for MoonDetailSelectedDate();
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_100003C38();
  v21 = v19 - v20;
  __chkstk_darwin(v22);
  v24 = &v73 - v23;
  __chkstk_darwin(v25);
  v27 = &v73 - v26;
  __chkstk_darwin(v28);
  v30 = &v73 - v29;
  v31 = a1[3];
  v91 = a1;
  sub_1000161C0(a1, v31);
  sub_10070C8E8();
  v32 = v92;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v32)
  {
    return sub_100006F14(v91);
  }

  v75 = v24;
  v76 = v21;
  v77 = v27;
  v78 = v30;
  v33 = v89;
  v92 = v17;
  v34 = KeyedDecodingContainer.allKeys.getter();
  result = sub_100618E80(v34, 0);
  if (v37 == v38 >> 1)
  {
    goto LABEL_8;
  }

  if (v37 >= (v38 >> 1))
  {
    __break(1u);
    return result;
  }

  v39 = *(v36 + v37);
  sub_100618E7C(v37 + 1);
  v41 = v40;
  v43 = v42;
  swift_unknownObjectRelease();
  if (v41 != v43 >> 1)
  {
LABEL_8:
    v49 = type metadata accessor for DecodingError();
    swift_allocError();
    v51 = v50;
    sub_10022C350(&qword_100CA7610);
    *v51 = v92;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v49 - 8) + 104))(v51, enum case for DecodingError.typeMismatch(_:), v49);
    swift_willThrow();
    swift_unknownObjectRelease();
    v52 = sub_1000202BC();
    v53(v52, v33);
    return sub_100006F14(v91);
  }

  if (v39)
  {
    if (v39 == 1)
    {
      v94 = 1;
      sub_10070C990();
      sub_100022EA8();
      v44 = v78;
      type metadata accessor for Date();
      sub_10001F608();
      sub_10070CA38(v45, v46);
      v47 = v75;
      v48 = v82;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v74 = 0;
      swift_unknownObjectRelease();
      v60 = sub_1000202BC();
      v61(v60, v48);
      v62 = sub_100010544();
    }

    else
    {
      v95 = 2;
      sub_10070C93C();
      sub_100022EA8();
      v44 = v78;
      type metadata accessor for Date();
      sub_10001F608();
      sub_10070CA38(v58, v59);
      v47 = v76;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v74 = 0;
      swift_unknownObjectRelease();
      v71 = sub_1000523CC();
      v72(v71);
      v62 = sub_100014AD8();
    }

    v63(v62);
    swift_storeEnumTagMultiPayload();
    v70 = v47;
    v69 = v91;
    v54 = v86;
  }

  else
  {
    v93 = 0;
    sub_10070C9E4();
    sub_100022EA8();
    v54 = v86;
    type metadata accessor for Date();
    sub_10001F608();
    sub_10070CA38(v55, v56);
    v57 = v80;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v74 = 0;
    swift_unknownObjectRelease();
    v64 = sub_1000202BC();
    v65(v64, v57);
    v66 = sub_100014AD8();
    v67(v66);
    v68 = v77;
    swift_storeEnumTagMultiPayload();
    v69 = v91;
    v44 = v78;
    v70 = v68;
  }

  sub_1003C6614(v70, v44);
  sub_1003C6614(v44, v54);
  return sub_100006F14(v69);
}