uint64_t sub_1004179B4(uint64_t a1)
{
  v2 = type metadata accessor for TimeZone();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.timeZone.setter();
}

uint64_t sub_100417A7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CACE08);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  result = type metadata accessor for ListLocationViewModel(0);
  if ((*(a2 + *(result + 36)) & 1) == 0)
  {
    sub_1000302D8(a2 + *(result + 44), v6, &qword_100CACE08);
    v8 = type metadata accessor for TimeZone();
    if (sub_100024D10(v6, 1, v8) == 1)
    {
      return sub_100018198(v6, &qword_100CACE08);
    }

    else
    {
      v9 = *(v8 - 8);
      (*(v9 + 8))(a1, v8);
      return (*(v9 + 32))(a1, v6, v8);
    }
  }

  return result;
}

uint64_t sub_100417BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100417F70();
  v6 = v5;
  v8 = v7;
  static Color.black.getter();
  if (qword_100CA2658 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1007A42F4();
  Color.opacity(_:)();

  sub_1007A4318();
  sub_1007A433C();
  sub_1007A435C();
  v9 = Text.shadow(color:radius:x:y:)();
  v11 = v10;
  v17 = v12;
  v14 = v13;

  sub_10010CD64(v4, v6, v8 & 1);

  v15 = a1 + *(type metadata accessor for ListLocationViewModel(0) + 32);
  if (!*(v15 + 32))
  {
    sub_100421CD0();

LABEL_8:
    _ConditionalContent<>.init(storage:)();
    sub_10022C350(&qword_100CB8068);
    sub_100421BFC(&qword_100CB8070, &qword_100CB8068, &unk_100A4C110, sub_100421CD0);
    goto LABEL_9;
  }

  if (*(v15 + 32) != 1)
  {
    sub_100421CD0();
    goto LABEL_8;
  }

  sub_10022C350(&qword_100CB8068);
  sub_100421BFC(&qword_100CB8070, &qword_100CB8068, &unk_100A4C110, sub_100421CD0);
  sub_100421CD0();
LABEL_9:
  _ConditionalContent<>.init(storage:)();
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = v18;
  *(a2 + 48) = v19;
  *(a2 + 64) = v20;
  *(a2 + 65) = v21;
  sub_10010CD54(v9, v11, v17 & 1);

  sub_100421D24(v18, *(&v18 + 1), v19, *(&v19 + 1), v20, v21);
  sub_100421DC0(v18, *(&v18 + 1), v19, *(&v19 + 1), v20, v21);
  sub_10010CD64(v9, v11, v17 & 1);
}

uint64_t sub_100417F70()
{
  v1 = type metadata accessor for Text.DateStyle();
  __chkstk_darwin(v1 - 8);
  v39 = type metadata accessor for Date();
  v2 = *(v39 - 8);
  __chkstk_darwin(v39);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v33 - v6;
  v8 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for ListLocationRowPrimaryText(0);
  __chkstk_darwin(v14);
  v16 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for ListLocationViewModel(0);
  sub_1004144DC(v0 + *(v17 + 28), v16, type metadata accessor for ListLocationRowPrimaryText);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = v0;
    sub_10011C0F0(v16, v13, &unk_100CB2CF0);
    sub_1000302D8(v13, v10, &unk_100CB2CF0);
    if (sub_100024D10(v10, 1, v39) == 1)
    {
      sub_100018198(v10, &unk_100CB2CF0);
      LocalizedStringKey.init(stringLiteral:)();
      v18 = Text.init(_:tableName:bundle:comment:)();
    }

    else
    {
      v36 = v2;
      v37 = v7;
      v20 = v39;
      (*(v2 + 32))(v7, v10, v39);
      (*(v2 + 16))(v4, v7, v20);
      static Text.DateStyle.time.getter();
      v21 = Text.init(_:style:)();
      v33 = v22;
      v34 = v23;
      v35 = v24;
      v25 = (v38 + *(v17 + 100));
      v26 = v25[1];
      v40 = *v25;
      v41 = v26;
      sub_10002D5A4();

      v27 = Text.init<A>(_:)();
      v29 = v28;
      v31 = v30;
      v18 = Text.accessibilityLabel(_:)();
      sub_10010CD64(v27, v29, v31 & 1);

      sub_10010CD64(v21, v33, v34 & 1);

      (*(v36 + 8))(v37, v39);
    }

    sub_100018198(v13, &unk_100CB2CF0);
  }

  else
  {
    v19 = v16[1];
    v40 = *v16;
    v41 = v19;
    sub_10002D5A4();
    return Text.init<A>(_:)();
  }

  return v18;
}

uint64_t sub_100418408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for ListLocationViewModel(0) + 32);
  v17 = a2;
  if (*(v3 + 32))
  {
    if (*(v3 + 32) == 1)
    {

      sub_10022C350(&qword_100CB8050);
      sub_100421BFC(&qword_100CB8058, &qword_100CB8050, &unk_100A4C100, sub_100421C7C);
      sub_100421C7C();
    }

    else
    {
      sub_100421C7C();
      _ConditionalContent<>.init(storage:)();
      sub_10022C350(&qword_100CB8050);
      sub_100421BFC(&qword_100CB8058, &qword_100CB8050, &unk_100A4C100, sub_100421C7C);
    }
  }

  else
  {
    sub_100421C7C();

    _ConditionalContent<>.init(storage:)();
    sub_10022C350(&qword_100CB8050);
    sub_100421BFC(&qword_100CB8058, &qword_100CB8050, &unk_100A4C100, sub_100421C7C);
  }

  _ConditionalContent<>.init(storage:)();
  v4 = sub_100417F70();
  v6 = v5;
  v8 = v7;
  static Color.black.getter();
  if (qword_100CA2658 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1007A42F4();
  Color.opacity(_:)();

  sub_1007A4318();
  sub_1007A433C();
  sub_1007A435C();
  v9 = Text.shadow(color:radius:x:y:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_10010CD64(v4, v6, v8 & 1);

  *v17 = v18;
  *(v17 + 16) = v19;
  *(v17 + 32) = v20;
  *(v17 + 33) = v21;
  *(v17 + 40) = v9;
  *(v17 + 48) = v11;
  *(v17 + 56) = v13 & 1;
  *(v17 + 64) = v15;
  sub_100421D24(v18, *(&v18 + 1), v19, *(&v19 + 1), v20, v21);
  sub_10010CD54(v9, v11, v13 & 1);

  sub_10010CD64(v9, v11, v13 & 1);

  return sub_100421DC0(v18, *(&v18 + 1), v19, *(&v19 + 1), v20, v21);
}

uint64_t sub_100418844@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v68 = sub_10022C350(&qword_100CB7F78);
  __chkstk_darwin(v68);
  v3 = &v59 - v2;
  v4 = type metadata accessor for DescriptionView(0);
  v63 = *(v4 - 8);
  v5 = *(v63 + 64);
  __chkstk_darwin(v4 - 8);
  v64 = sub_10022C350(&qword_100CB7F80);
  __chkstk_darwin(v64);
  v66 = (&v59 - v6);
  v7 = sub_10022C350(&qword_100CB7F88);
  __chkstk_darwin(v7);
  v9 = &v59 - v8;
  v65 = sub_10022C350(&qword_100CB7F90);
  __chkstk_darwin(v65);
  v60 = &v59 - v10;
  v11 = sub_10022C350(&qword_100CB7F98);
  __chkstk_darwin(v11);
  v13 = &v59 - v12;
  v14 = sub_10022C350(&qword_100CB7FA0);
  __chkstk_darwin(v14);
  v67 = &v59 - v15;
  v16 = type metadata accessor for ListLocationViewModel(0);
  v17 = (v1 + v16[13]);
  v18 = v17[1];
  if (v18)
  {
    v61 = v14;
    v62 = v3;
    v19 = *v17;
    v20 = (v1 + v16[12]);
    v22 = *v20;
    v21 = v20[1];
    v23 = v22 & 0xFFFFFFFFFFFFLL;
    if ((v21 & 0x2000000000000000) != 0)
    {
      v24 = HIBYTE(v21) & 0xF;
    }

    else
    {
      v24 = v23;
    }

    if (v24)
    {
      sub_1004144DC(v1, &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DescriptionView);
      v25 = (*(v63 + 80) + 32) & ~*(v63 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = v19;
      *(v26 + 24) = v18;
      sub_10041F478(&v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for DescriptionView);
      v27 = v66;
      *v66 = sub_100421B18;
      v27[1] = v26;
      swift_storeEnumTagMultiPayload();

      sub_10022C350(&qword_100CB7FE8);
      sub_1004218C4();
      sub_100422A78(&qword_100CB7FE0, &qword_100CB7FE8);
      v28 = v67;
      _ConditionalContent<>.init(storage:)();
    }

    else
    {
      v46 = *(v1 + v16[14]);

      v47 = Image.init(systemName:)();
      static Color.black.getter();
      v48 = Color.opacity(_:)();

      if (v46 == 1)
      {
        v49 = [objc_opt_self() quaternaryLabelColor];
        v50 = Color.init(uiColor:)();
        KeyPath = swift_getKeyPath();
        v52 = *(v11 + 36);
        v53 = enum case for BlendMode.plusLighter(_:);
        v54 = type metadata accessor for BlendMode();
        (*(*(v54 - 8) + 104))(&v13[v52], v53, v54);
        *v13 = v47;
        *(v13 + 1) = v48;
        *(v13 + 1) = xmmword_100A4B700;
        *(v13 + 4) = 0x4000000000000000;
        *(v13 + 5) = KeyPath;
        *(v13 + 6) = v50;
        sub_1000302D8(v13, v9, &qword_100CB7F98);
        swift_storeEnumTagMultiPayload();
        sub_10022C350(&qword_100CB7FD8);
        sub_100421950();
        sub_100421A94();
        v55 = v60;
        _ConditionalContent<>.init(storage:)();
        sub_1000302D8(v55, v66, &qword_100CB7F90);
        swift_storeEnumTagMultiPayload();
        sub_10022C350(&qword_100CB7FE8);
        sub_1004218C4();
        sub_100422A78(&qword_100CB7FE0, &qword_100CB7FE8);
        v28 = v67;
        _ConditionalContent<>.init(storage:)();
        sub_100018198(v55, &qword_100CB7F90);
        v56 = v13;
        v57 = &qword_100CB7F98;
      }

      else
      {
        *v9 = v47;
        *(v9 + 1) = v48;
        *(v9 + 1) = xmmword_100A4B700;
        *(v9 + 4) = 0x4000000000000000;
        swift_storeEnumTagMultiPayload();

        sub_10022C350(&qword_100CB7FD8);
        sub_100421950();
        sub_100421A94();
        v58 = v60;
        _ConditionalContent<>.init(storage:)();
        sub_1000302D8(v58, v66, &qword_100CB7F90);
        swift_storeEnumTagMultiPayload();
        sub_10022C350(&qword_100CB7FE8);
        sub_1004218C4();
        sub_100422A78(&qword_100CB7FE0, &qword_100CB7FE8);
        v28 = v67;
        _ConditionalContent<>.init(storage:)();

        v56 = v58;
        v57 = &qword_100CB7F90;
      }

      sub_100018198(v56, v57);
    }

    sub_1000302D8(v28, v62, &qword_100CB7FA0);
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CADE98);
    sub_10042180C();
    sub_10033CBA4();
    _ConditionalContent<>.init(storage:)();
    return sub_100018198(v28, &qword_100CB7FA0);
  }

  else
  {
    v29 = (v1 + v16[12]);
    v30 = v29[1];
    v70 = *v29;
    v71 = v30;
    sub_10002D5A4();

    v31 = Text.init<A>(_:)();
    v33 = v32;
    v35 = v34;
    static Color.black.getter();
    Color.opacity(_:)();

    v36 = Text.shadow(color:radius:x:y:)();
    v66 = v37;
    v67 = v38;
    v40 = v39;

    sub_10010CD64(v31, v33, v35 & 1);

    v41 = *(sub_1009AA9D0() + 2);

    if (v41)
    {
      v42 = 1;
    }

    else
    {
      v42 = 2;
    }

    v43 = swift_getKeyPath();
    v44 = v66;
    *v3 = v36;
    *(v3 + 1) = v44;
    v3[16] = v40 & 1;
    *(v3 + 3) = v67;
    *(v3 + 4) = v43;
    *(v3 + 5) = v42;
    v3[48] = 0;
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CADE98);
    sub_10042180C();
    sub_10033CBA4();
    return _ConditionalContent<>.init(storage:)();
  }
}

double sub_100419188@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v3);

  Image.init(systemName:)();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v4);
  GeometryProxy.size.getter();
  v6._countAndFlagsBits = sub_100419494(v5);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v6);

  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v7);
  LocalizedStringKey.init(stringInterpolation:)();
  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v12 = v11;
  static Color.black.getter();
  Color.opacity(_:)();

  v13 = Text.shadow(color:radius:x:y:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_10010CD64(v8, v10, v12 & 1);

  v20 = (a1 + *(sub_10022C350(&qword_100CB7FF0) + 36));
  v21 = *(sub_10022C350(&qword_100CAF750) + 28);
  v22 = enum case for Image.Scale.small(_:);
  v23 = type metadata accessor for Image.Scale();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = swift_getKeyPath();
  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v19;
  KeyPath = swift_getKeyPath();
  v25 = a1 + *(sub_10022C350(&qword_100CB7FF8) + 36);
  *v25 = KeyPath;
  *(v25 + 8) = 2;
  *(v25 + 16) = 0;
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  static Alignment.bottomLeading.getter();
  _FrameLayout.init(width:height:alignment:)();
  v26 = (a1 + *(sub_10022C350(&qword_100CB8000) + 36));
  *v26 = v28;
  v26[1] = v29;
  result = *&v30;
  v26[2] = v30;
  return result;
}

uint64_t sub_100419494(double a1)
{
  v3 = sub_10022C350(&qword_100CA3D60);
  __chkstk_darwin(v3 - 8);
  v36 = &v31 - v4;
  v5 = sub_10022C350(&qword_100CA3D68);
  __chkstk_darwin(v5 - 8);
  v31 = &v31 - v6;
  v7 = type metadata accessor for Text.Measurements.Context();
  v34 = *(v7 - 8);
  v35 = v7;
  __chkstk_darwin(v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(type metadata accessor for ListLocationViewModel(0) + 48);
  v37 = v1;
  v11 = (v1 + v10);
  v12 = v11[1];
  v33 = *v11;
  v38 = v33;
  v39 = v12;
  sub_10002D5A4();
  v32 = v12;

  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  if (qword_100CA2658 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1007A3FE8();
  swift_endAccess();
  v18 = Text.font(_:)();
  v20 = v19;
  v22 = v21;

  sub_10010CD64(v13, v15, v17 & 1);

  type metadata accessor for DescriptionView(0);
  v23 = type metadata accessor for Text.WritingMode();
  sub_10001B350(v31, 1, 1, v23);
  v24 = type metadata accessor for Text.Suffix();
  sub_10001B350(v36, 1, 1, v24);
  Text.Measurements.Context.init(writingMode:textSuffix:)();
  Text.Measurements.size(of:in:context:)();
  v26 = v25;
  (*(v34 + 8))(v9, v35);
  v27 = 10;
  if (v26 > a1)
  {
    v27 = 32;
  }

  v38 = v27;
  v39 = 0xE100000000000000;

  v28._object = v32;
  v28._countAndFlagsBits = v33;
  String.append(_:)(v28);

  v29 = v38;
  sub_10010CD64(v18, v20, v22 & 1);

  return v29;
}

uint64_t sub_1004197F4()
{
  v1 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v1 - 8);
  if (*(v0 + 32))
  {
    return 0x2D2D2D2D2D2D2D2DLL;
  }

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._countAndFlagsBits = 14920;
  v3._object = 0xE200000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v3);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(*v0);
  v4._countAndFlagsBits = 978067488;
  v4._object = 0xE400000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v4);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(*(v0 + 16));
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v5);
  LocalizedStringKey.init(stringInterpolation:)();
  return Text.init(_:tableName:bundle:comment:)();
}

void sub_100419918()
{
  sub_10000C778();
  v1 = v0;
  v41 = v2;
  v37 = type metadata accessor for AccessibilityChildBehavior();
  sub_1000037C4();
  v36 = v3;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v40 = sub_10022C350(&qword_100CB7F48);
  sub_1000037C4();
  v39 = v8;
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  v38 = sub_10022C350(&qword_100CB7F50);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  v15 = sub_1004197F4();
  v17 = v16;
  v19 = v18;
  static Color.black.getter();
  Color.opacity(_:)();

  v35 = Text.shadow(color:radius:x:y:)();
  v34 = v20;
  v22 = v21;
  v33 = v23;

  sub_10010CD64(v15, v17, v19 & 1);

  KeyPath = swift_getKeyPath();
  if (*(v1 + 32))
  {
    v25 = static Font.body.getter();
  }

  else
  {
    if (qword_100CA2658 != -1)
    {
      sub_100005CCC();
    }

    sub_10001638C();
    sub_1007A3CFC();
    v25 = v26;
    swift_endAccess();
  }

  v27 = swift_getKeyPath();
  v43[96] = v22 & 1;
  v28 = swift_getKeyPath();
  v43[104] = 0;
  *v42 = v35;
  *&v42[8] = v34;
  v42[16] = v22 & 1;
  *&v42[24] = v33;
  *&v42[32] = KeyPath;
  v42[40] = 2;
  *&v42[48] = v27;
  *&v42[56] = v25;
  *&v42[64] = v28;
  *&v42[72] = 2;
  v42[80] = 0;
  static AccessibilityChildBehavior.ignore.getter();
  v29 = sub_10022C350(&qword_100CB7F58);
  v30 = sub_10042169C();
  View.accessibilityElement(children:)();
  (*(v36 + 8))(v7, v37);
  memcpy(v43, v42, 0x51uLL);
  sub_100018198(v43, &qword_100CB7F58);
  *v42 = v29;
  *&v42[8] = v30;
  sub_100005CEC();
  swift_getOpaqueTypeConformance2();
  v31 = v40;
  View.accessibilityRespondsToUserInteraction(_:)();
  (*(v39 + 8))(v11, v31);
  *v42 = *(v1 + 40);
  sub_10002D5A4();
  ModifiedContent<>.accessibilityLabel<A>(_:)();
  sub_100018198(v14, &qword_100CB7F50);
  sub_10000536C();
}

uint64_t sub_100419D74()
{
  sub_100086764();
  v3 = v2;
  *v2 = static VerticalAlignment.center.getter();
  v3[1] = 0x4008000000000000;
  *(v3 + 16) = 0;
  sub_10022C350(&qword_100CB8168);
  v4 = sub_100003984();
  return sub_100419DE4(v4, v5, v1, v0, v6);
}

uint64_t sub_100419DE4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v57 = a4;
  v56 = a3;
  v71 = a1;
  v72 = a2;
  v69 = a5;
  v67 = type metadata accessor for AccessibilityChildBehavior();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v60 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10022C350(&qword_100CB7FF0);
  __chkstk_darwin(v61);
  v58 = &v56 - v6;
  v66 = sub_10022C350(&qword_100CB8170);
  v62 = *(v66 - 8);
  __chkstk_darwin(v66);
  v59 = &v56 - v7;
  v8 = sub_10022C350(&qword_100CB8178);
  __chkstk_darwin(v8 - 8);
  v68 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v64 = &v56 - v11;
  v12 = sub_10022C350(&qword_100CB66D8);
  __chkstk_darwin(v12 - 8);
  v63 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v70 = &v56 - v15;
  LocalizedStringKey.init(stringLiteral:)();
  v16 = Text.init(_:tableName:bundle:comment:)();
  v18 = v17;
  v20 = v19;
  static Color.black.getter();
  if (qword_100CA2658 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1007A42F4();
  Color.opacity(_:)();

  sub_1007A4318();
  sub_1007A433C();
  sub_1007A435C();
  v21 = Text.shadow(color:radius:x:y:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;

  sub_10010CD64(v16, v18, v20 & 1);

  v75 = v21;
  v76 = v23;
  v77 = v25 & 1;
  v78 = v27;
  View.accessibilityHidden(_:)();
  sub_10010CD64(v21, v23, v25 & 1);

  v28 = sub_10041A54C(v71, v72, v56, v57);
  v30 = v29;
  v32 = v31;
  static Color.black.getter();
  sub_1007A42F4();
  Color.opacity(_:)();

  sub_1007A4318();
  sub_1007A433C();
  sub_1007A435C();
  v33 = Text.shadow(color:radius:x:y:)();
  v35 = v34;
  LOBYTE(v23) = v36;
  v38 = v37;

  sub_10010CD64(v28, v30, v32 & 1);

  v39 = v61;
  v40 = v58;
  v41 = &v58[*(v61 + 36)];
  v42 = *(sub_10022C350(&qword_100CAF750) + 28);
  v43 = enum case for Image.Scale.small(_:);
  v44 = type metadata accessor for Image.Scale();
  (*(*(v44 - 8) + 104))(v41 + v42, v43, v44);
  *v41 = swift_getKeyPath();
  *v40 = v33;
  *(v40 + 8) = v35;
  *(v40 + 16) = v23 & 1;
  *(v40 + 24) = v38;
  v45 = v60;
  static AccessibilityChildBehavior.ignore.getter();
  v46 = sub_1004228C8();
  v47 = v59;
  View.accessibilityElement(children:)();
  (*(v65 + 8))(v45, v67);
  sub_100018198(v40, &qword_100CB7FF0);
  v75 = v71;
  v76 = v72;
  v73 = v39;
  v74 = v46;
  swift_getOpaqueTypeConformance2();
  sub_10002D5A4();
  v48 = v64;
  v49 = v66;
  View.accessibilityLabel<A>(_:)();
  (*(v62 + 8))(v47, v49);
  v50 = v70;
  v51 = v63;
  sub_1000302D8(v70, v63, &qword_100CB66D8);
  v52 = v68;
  sub_1000302D8(v48, v68, &qword_100CB8178);
  v53 = v69;
  sub_1000302D8(v51, v69, &qword_100CB66D8);
  v54 = sub_10022C350(&qword_100CB8188);
  sub_1000302D8(v52, v53 + *(v54 + 48), &qword_100CB8178);
  sub_100018198(v48, &qword_100CB8178);
  sub_100018198(v50, &qword_100CB66D8);
  sub_100018198(v52, &qword_100CB8178);
  return sub_100018198(v51, &qword_100CB66D8);
}

uint64_t sub_10041A54C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_1000037D8();
  if (a4)
  {

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v9);
    Image.init(systemName:)();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

    v10._countAndFlagsBits = 32;
    v10._object = 0xE100000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v10);
    v11._countAndFlagsBits = a1;
    v11._object = a2;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v11);
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v12);
    LocalizedStringKey.init(stringInterpolation:)();
    return Text.init(_:tableName:bundle:comment:)();
  }

  else
  {
    sub_10002D5A4();

    return Text.init<A>(_:)();
  }
}

uint64_t sub_10041A694()
{
  sub_100086764();
  v50 = v4;
  v47 = type metadata accessor for AccessibilityChildBehavior();
  sub_1000037C4();
  v45 = v5;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v42 = v8 - v7;
  v43 = sub_10022C350(&qword_100CB8138);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = v41 - v10;
  v46 = sub_10022C350(&qword_100CB8140);
  sub_1000037C4();
  v44 = v12;
  sub_100003828();
  __chkstk_darwin(v13);
  v41[1] = v41 - v14;
  v48 = v3;
  v49 = v2;
  v15 = sub_100003984();
  v17 = sub_10041A54C(v15, v16, v1, v0);
  v19 = v18;
  v21 = v20;
  static Color.black.getter();
  if (qword_100CA2658 != -1)
  {
    sub_100005CCC();
  }

  swift_beginAccess();
  sub_1007A42F4();
  Color.opacity(_:)();

  sub_1007A4318();
  sub_1007A433C();
  sub_1007A435C();
  v22 = Text.shadow(color:radius:x:y:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;

  sub_10010CD64(v17, v19, v21 & 1);

  KeyPath = swift_getKeyPath();
  v30 = v26 & 1;
  LOBYTE(v53) = v26 & 1;
  LOBYTE(v51) = 0;
  v31 = v43;
  v32 = &v11[*(v43 + 36)];
  v33 = *(sub_10022C350(&qword_100CAF750) + 28);
  v34 = enum case for Image.Scale.small(_:);
  type metadata accessor for Image.Scale();
  sub_1000037E8();
  (*(v35 + 104))(v32 + v33, v34);
  *v32 = swift_getKeyPath();
  *v11 = v22;
  *(v11 + 1) = v24;
  v11[16] = v30;
  *(v11 + 3) = v28;
  *(v11 + 16) = 256;
  *(v11 + 5) = KeyPath;
  *(v11 + 6) = 2;
  v11[56] = 0;
  v36 = v42;
  static AccessibilityChildBehavior.ignore.getter();
  v37 = sub_1004226D4();
  View.accessibilityElement(children:)();
  (*(v45 + 8))(v36, v47);
  sub_100018198(v11, &qword_100CB8138);
  v53 = v48;
  v54 = v49;
  v51 = v31;
  v52 = v37;
  sub_100005CEC();
  swift_getOpaqueTypeConformance2();
  sub_10002D5A4();
  View.accessibilityLabel<A>(_:)();
  v38 = sub_100003984();
  return v39(v38);
}

uint64_t sub_10041AA78@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CA62E0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for LocationRowButtonStyle(0);
  sub_1000302D8(v1 + *(v10 + 56), v9, &qword_100CA62E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10011C0F0(v9, a1, &qword_100CA6028);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10041AC60()
{
  v1 = type metadata accessor for UserInterfaceSizeClass();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CA64E8);
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  v8 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  __chkstk_darwin(v14);
  v16 = &v22 - v15;
  if (*(v0 + *(type metadata accessor for LocationRowButtonStyle(0) + 32)) != 1)
  {
    goto LABEL_5;
  }

  sub_10041AA78(v16);
  (*(v2 + 104))(v13, enum case for UserInterfaceSizeClass.compact(_:), v1);
  sub_10001B350(v13, 0, 1, v1);
  v17 = *(v5 + 48);
  sub_1000302D8(v16, v7, &qword_100CA6028);
  sub_1000302D8(v13, &v7[v17], &qword_100CA6028);
  if (sub_100024D10(v7, 1, v1) != 1)
  {
    sub_1000302D8(v7, v10, &qword_100CA6028);
    if (sub_100024D10(&v7[v17], 1, v1) != 1)
    {
      (*(v2 + 32))(v4, &v7[v17], v1);
      sub_10041F594(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *(v2 + 8);
      v20(v4, v1);
      sub_100018198(v13, &qword_100CA6028);
      sub_100018198(v16, &qword_100CA6028);
      v20(v10, v1);
      sub_100018198(v7, &qword_100CA6028);
      v18 = v19 ^ 1;
      return v18 & 1;
    }

    sub_100018198(v13, &qword_100CA6028);
    sub_100018198(v16, &qword_100CA6028);
    (*(v2 + 8))(v10, v1);
    goto LABEL_8;
  }

  sub_100018198(v13, &qword_100CA6028);
  sub_100018198(v16, &qword_100CA6028);
  if (sub_100024D10(&v7[v17], 1, v1) != 1)
  {
LABEL_8:
    sub_100018198(v7, &qword_100CA64E8);
    v18 = 1;
    return v18 & 1;
  }

  sub_100018198(v7, &qword_100CA6028);
LABEL_5:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_10041B07C()
{
  v1 = type metadata accessor for UserInterfaceSizeClass();
  v37 = *(v1 - 8);
  v38 = v1;
  __chkstk_darwin(v1);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CA64E8);
  __chkstk_darwin(v4);
  v6 = &v32 - v5;
  v7 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v35 = &v32 - v11;
  __chkstk_darwin(v12);
  v36 = &v32 - v13;
  v14 = type metadata accessor for EnvironmentValues();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (v0 + *(type metadata accessor for LocationRowButtonStyle(0) + 52));
  v19 = *v18;
  if (*(v18 + 8) == 1)
  {
    if ((v19 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    v33 = v14;
    v34 = v0;
    v21 = v9;
    v22 = v20;
    os_log(_:dso:log:_:_:)();

    v9 = v21;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v19, 0);
    (*(v15 + 8))(v17, v33);
    if (v39 != 1)
    {
LABEL_11:
      v27 = 0;
      return v27 & 1;
    }
  }

  v23 = v36;
  sub_10041AA78(v36);
  v24 = v38;
  v25 = v35;
  (*(v37 + 104))(v35, enum case for UserInterfaceSizeClass.compact(_:), v38);
  sub_10001B350(v25, 0, 1, v24);
  v26 = *(v4 + 48);
  sub_1000302D8(v23, v6, &qword_100CA6028);
  sub_1000302D8(v25, &v6[v26], &qword_100CA6028);
  if (sub_100024D10(v6, 1, v24) != 1)
  {
    sub_1000302D8(v6, v9, &qword_100CA6028);
    if (sub_100024D10(&v6[v26], 1, v38) != 1)
    {
      v30 = v37;
      v29 = v38;
      (*(v37 + 32))(v3, &v6[v26], v38);
      sub_10041F594(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v31 = *(v30 + 8);
      v31(v3, v29);
      sub_100018198(v25, &qword_100CA6028);
      sub_100018198(v23, &qword_100CA6028);
      v31(v9, v29);
      sub_100018198(v6, &qword_100CA6028);
      return v27 & 1;
    }

    sub_100018198(v25, &qword_100CA6028);
    sub_100018198(v23, &qword_100CA6028);
    (*(v37 + 8))(v9, v38);
    goto LABEL_10;
  }

  sub_100018198(v25, &qword_100CA6028);
  sub_100018198(v23, &qword_100CA6028);
  if (sub_100024D10(&v6[v26], 1, v38) != 1)
  {
LABEL_10:
    sub_100018198(v6, &qword_100CA64E8);
    goto LABEL_11;
  }

  sub_100018198(v6, &qword_100CA6028);
  v27 = 1;
  return v27 & 1;
}

uint64_t sub_10041B5CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v239 = a2;
  v238 = type metadata accessor for PrimitiveButtonStyleConfiguration();
  v237 = *(v238 - 8);
  __chkstk_darwin(v238);
  v234 = v5;
  v236 = &v188 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = sub_10022C350(&qword_100CB7970);
  __chkstk_darwin(v231);
  v232 = &v188 - v6;
  v233 = sub_10022C350(&qword_100CB7978);
  v198 = *(v233 - 8);
  __chkstk_darwin(v233);
  v197 = &v188 - v7;
  v227 = type metadata accessor for UserInterfaceSizeClass();
  v225 = *(v227 - 8);
  __chkstk_darwin(v227);
  v188 = &v188 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = sub_10022C350(&qword_100CA64E8);
  __chkstk_darwin(v217);
  v226 = &v188 - v9;
  v10 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v10 - 8);
  v196 = &v188 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v220 = &v188 - v13;
  __chkstk_darwin(v14);
  v222 = &v188 - v15;
  v216 = type metadata accessor for AccessibilityTraits();
  v215 = *(v216 - 8);
  __chkstk_darwin(v216);
  v214 = &v188 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v213 = &v188 - v18;
  v210 = sub_10022C350(&qword_100CB7980);
  __chkstk_darwin(v210);
  v212 = &v188 - v19;
  v211 = sub_10022C350(&qword_100CB7988);
  __chkstk_darwin(v211);
  v195 = &v188 - v20;
  v189 = sub_10022C350(&qword_100CB7990);
  __chkstk_darwin(v189);
  v193 = (&v188 - v21);
  v192 = sub_10022C350(&qword_100CB7998);
  __chkstk_darwin(v192);
  v191 = &v188 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v190 = &v188 - v24;
  v209 = sub_10022C350(&qword_100CB79A0);
  __chkstk_darwin(v209);
  v194 = &v188 - v25;
  v204 = type metadata accessor for Color.RGBColorSpace();
  v203 = *(v204 - 8);
  __chkstk_darwin(v204);
  v202 = &v188 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = type metadata accessor for LocationRowButtonStyle(0);
  v27 = *(v251 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v251);
  v242 = sub_10022C350(&qword_100CB79A8);
  __chkstk_darwin(v242);
  v30 = &v188 - v29;
  v200 = sub_10022C350(&qword_100CB79B0);
  v201 = *(v200 - 8);
  __chkstk_darwin(v200);
  v199 = &v188 - v31;
  v208 = sub_10022C350(&qword_100CB79B8);
  v244 = *(v208 - 8);
  __chkstk_darwin(v208);
  v249 = &v188 - v32;
  v33 = sub_10022C350(&qword_100CB79C0);
  __chkstk_darwin(v33 - 8);
  v243 = &v188 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v206 = &v188 - v36;
  v205 = sub_10022C350(&qword_100CB79C8);
  __chkstk_darwin(v205);
  v207 = &v188 - v37;
  v245 = sub_10022C350(&qword_100CB79D0);
  __chkstk_darwin(v245);
  v246 = &v188 - v38;
  v248 = sub_10022C350(&qword_100CB79D8);
  __chkstk_darwin(v248);
  v247 = &v188 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v250 = &v188 - v41;
  v42 = sub_10022C350(&qword_100CB79E0);
  __chkstk_darwin(v42 - 8);
  v223 = &v188 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v224 = &v188 - v45;
  v228 = sub_10022C350(&qword_100CB79E8);
  __chkstk_darwin(v228);
  v229 = &v188 - v46;
  v241 = v30;
  v235 = a1;
  PrimitiveButtonStyleConfiguration.label.getter();
  v230 = objc_opt_self();
  v47 = [v230 defaultCenter];
  v48 = sub_10022C350(&qword_100CB79F0);
  NSNotificationCenter.publisher(for:object:)();

  v49 = v3;
  sub_1004144DC(v3, &v188 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationRowButtonStyle);
  v50 = *(v27 + 80);
  v51 = (v50 + 16) & ~v50;
  v52 = v50 | 7;
  v53 = swift_allocObject();
  v54 = &v188 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10041F478(v54, v53 + v51, type metadata accessor for LocationRowButtonStyle);
  v55 = v241;
  v56 = &v241[*(v48 + 56)];
  *v56 = sub_10041FA5C;
  v56[1] = v53;
  v57 = [v230 defaultCenter];
  v58 = v242;
  NSNotificationCenter.publisher(for:object:)();

  v59 = v49;
  v60 = v49;
  v61 = v54;
  sub_1004144DC(v60, v54, type metadata accessor for LocationRowButtonStyle);
  v62 = swift_allocObject();
  sub_10041F478(v61, v62 + v51, type metadata accessor for LocationRowButtonStyle);
  v63 = &v55[*(v58 + 56)];
  *v63 = sub_10041FA74;
  v63[1] = v62;
  v240 = v59;
  LOBYTE(v252) = sub_10041B07C() & 1;
  sub_1004144DC(v59, v61, type metadata accessor for LocationRowButtonStyle);
  v218 = v51 + v28;
  v219 = v52;
  v64 = swift_allocObject();
  v221 = v51;
  v65 = v64 + v51;
  v230 = &v188 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v251;
  sub_10041F478(v61, v65, type metadata accessor for LocationRowButtonStyle);
  v67 = sub_100422A78(&qword_100CB79F8, &qword_100CB79A8);
  v68 = v199;
  v69 = v242;
  v70 = v241;
  View.onChange<A>(of:initial:_:)();

  sub_100018198(v70, &qword_100CB79A8);
  Solarium.init()();
  sub_10022C350(&qword_100CB7A00);
  sub_10022C350(&qword_100CB7A08);
  v252 = v69;
  v253 = &type metadata for Bool;
  v254 = v67;
  v255 = &protocol witness table for Bool;
  v71 = v240;
  swift_getOpaqueTypeConformance2();
  sub_10041FBC4();
  sub_10041FCDC();
  v72 = v200;
  View.staticIf<A, B, C>(_:then:else:)();
  (*(v201 + 8))(v68, v72);
  v73 = v71 + v66[6];
  v74 = *v71;
  v200 = v71[1];
  LODWORD(v201) = *(v71 + v66[9]);
  v75 = v71 + v66[12];
  v76 = *v75;
  v77 = *(v75 + 1);
  LOBYTE(v252) = v76;
  v253 = v77;
  v78 = sub_10022C350(&qword_100CA5A80);
  State.wrappedValue.getter();
  LODWORD(v72) = v258;
  v79 = v71 + v66[11];
  v80 = *v79;
  v81 = *(v79 + 1);
  LOBYTE(v252) = v80;
  v253 = v81;
  v241 = v78;
  State.wrappedValue.getter();
  v82 = v258;
  (*(v203 + 104))(v202, enum case for Color.RGBColorSpace.sRGB(_:), v204);
  v83 = 1.0;
  v84 = Color.init(_:white:opacity:)();
  if (v72 == 1)
  {
    v204 = static Alignment.center.getter();
    v203 = v85;
    v86 = v71;
    v202 = static Color.clear.getter();
    v242 = type metadata accessor for ListLocationViewModel(0);
    v87 = *(v242 + 88);
    v88 = *(v189 + 36);
    v89 = v193;
    v90 = v74;
    v199 = v74;
    v91 = v193 + v88;
    v92 = type metadata accessor for InternalStateWeatherConditionBackgroundModifier(0);
    v93 = v92[5];
    v94 = type metadata accessor for WeatherConditionBackgroundModel();
    (*(*(v94 - 8) + 16))(&v91[v93], &v73[v87], v94);
    sub_100035B30((v86 + 2), &v91[v92[7]]);
    *v91 = sub_1009B71CC;
    *(v91 + 1) = 0;
    v91[16] = 0;
    v95 = &v91[v92[6]];
    v96 = v200;
    *v95 = v90;
    *(v95 + 1) = v96;
    v97 = &v91[v92[8]];
    *v97 = 0;
    *(v97 + 1) = 0;
    *(v97 + 2) = 0;
    v91[v92[9]] = v201;
    *&v91[v92[10]] = v84;
    *v89 = v202;
    if (!v82)
    {
      v83 = 0.0;
    }

    v98 = v194;
    v99 = &v194[*(v209 + 36)];
    v100 = v191;
    sub_10011C0F0(v89, v191, &qword_100CB7990);
    *(v100 + *(v192 + 36)) = v83;
    v101 = v100;
    v102 = v190;
    sub_10011C0F0(v101, v190, &qword_100CB7998);
    v71 = v86;
    sub_10011C0F0(v102, v99, &qword_100CB7998);
    v103 = (v99 + *(sub_10022C350(&qword_100CB7A48) + 36));
    v104 = v203;
    *v103 = v204;
    v103[1] = v104;
    v105 = v208;
    (*(v244 + 16))(v98, v249, v208);
    sub_1000302D8(v98, v212, &qword_100CB79A0);
    swift_storeEnumTagMultiPayload();
    sub_10041FDEC();
    sub_10041FFD4();
    swift_unknownObjectRetain();
    _ConditionalContent<>.init(storage:)();
    v106 = v98;
    v107 = &qword_100CB79A0;
  }

  else
  {
    v242 = type metadata accessor for ListLocationViewModel(0);
    v108 = *(v242 + 88);
    v109 = v195;
    v110 = &v195[*(v211 + 36)];
    v111 = type metadata accessor for InternalStateWeatherConditionBackgroundModifier(0);
    v112 = v111[5];
    v113 = type metadata accessor for WeatherConditionBackgroundModel();
    (*(*(v113 - 8) + 16))(&v110[v112], &v73[v108], v113);
    sub_100035B30((v71 + 2), &v110[v111[7]]);
    *v110 = sub_1009B71CC;
    *(v110 + 1) = 0;
    v110[16] = 0;
    v114 = &v110[v111[6]];
    v115 = v200;
    *v114 = v74;
    *(v114 + 1) = v115;
    v116 = &v110[v111[8]];
    *v116 = 0;
    *(v116 + 1) = 0;
    *(v116 + 2) = 0;
    v110[v111[9]] = v201;
    *&v110[v111[10]] = v84;
    v105 = v208;
    (*(v244 + 16))(v109, v249, v208);
    sub_1000302D8(v109, v212, &qword_100CB7988);
    swift_storeEnumTagMultiPayload();
    sub_10041FDEC();
    sub_10041FFD4();
    swift_unknownObjectRetain();
    _ConditionalContent<>.init(storage:)();
    v106 = v109;
    v107 = &qword_100CB7988;
  }

  sub_100018198(v106, v107);
  (*(v244 + 8))(v249, v105);
  v117 = v206;
  sub_10011C0F0(v243, v206, &qword_100CB79C0);
  v118 = v207;
  sub_10011C0F0(v117, v207, &qword_100CB79C0);
  *(v118 + *(v205 + 36)) = 0;
  type metadata accessor for ListLocationViewModel(0);
  v119 = *(v242 + 92);
  v249 = v73;
  LOBYTE(v117) = v73[v119];
  v120 = sub_10041AC60();
  v121 = v71 + *(v251 + 60);
  v122 = *v121;
  v123 = *(v121 + 1);
  LOBYTE(v121) = v121[16];
  v252 = v122;
  v253 = v123;
  LOBYTE(v254) = v121;
  sub_10022C350(&unk_100CB3AA0);
  Binding.projectedValue.getter();
  v124 = v258;
  v125 = v259;
  v126 = v260;
  v127 = v118;
  v128 = v246;
  sub_10011C0F0(v127, v246, &qword_100CB79C8);
  v129 = v128 + *(v245 + 36);
  *v129 = v117;
  *(v129 + 1) = v120 & 1;
  *(v129 + 8) = v124;
  *(v129 + 16) = v125;
  *(v129 + 24) = v126;
  v130 = sub_10041AC60();
  v131 = v225;
  v132 = v220;
  v133 = v216;
  if (v130)
  {
    v134 = v213;
    static AccessibilityTraits.isSelected.getter();
  }

  else
  {
    v252 = _swiftEmptyArrayStorage;
    sub_10041F594(&qword_100CB3368, &type metadata accessor for AccessibilityTraits);
    sub_10022C350(&unk_100CE17F0);
    sub_100422A78(&qword_100CB3370, &unk_100CE17F0);
    v134 = v213;
    dispatch thunk of SetAlgebra.init<A>(_:)();
  }

  v135 = v215;
  sub_1004201B8();
  v136 = v246;
  View.accessibilityAddTraits(_:)();
  v137 = *(v135 + 8);
  v137(v134, v133);
  sub_100018198(v136, &qword_100CB79D0);
  if (sub_10041AC60())
  {
    v252 = _swiftEmptyArrayStorage;
    sub_10041F594(&qword_100CB3368, &type metadata accessor for AccessibilityTraits);
    sub_10022C350(&unk_100CE17F0);
    sub_100422A78(&qword_100CB3370, &unk_100CE17F0);
    v138 = v214;
    dispatch thunk of SetAlgebra.init<A>(_:)();
  }

  else
  {
    v138 = v214;
    static AccessibilityTraits.isSelected.getter();
  }

  v139 = v227;
  v140 = v222;
  v141 = v247;
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  v137(v138, v133);
  sub_100018198(v141, &qword_100CB79D8);
  sub_10041AA78(v140);
  (*(v131 + 104))(v132, enum case for UserInterfaceSizeClass.compact(_:), v139);
  sub_10001B350(v132, 0, 1, v139);
  v142 = *(v217 + 48);
  v143 = v226;
  sub_1000302D8(v140, v226, &qword_100CA6028);
  sub_1000302D8(v132, v143 + v142, &qword_100CA6028);
  if (sub_100024D10(v143, 1, v139) == 1)
  {
    sub_100018198(v132, &qword_100CA6028);
    sub_100018198(v140, &qword_100CA6028);
    if (sub_100024D10(v143 + v142, 1, v139) == 1)
    {
      sub_100018198(v143, &qword_100CA6028);
LABEL_19:
      v145 = LocationModel.id.getter();
      v146 = v145;
      v147 = v150;
      goto LABEL_21;
    }

LABEL_17:
    v145 = sub_100018198(v143, &qword_100CA64E8);
    v146 = 0;
    v147 = 0;
    goto LABEL_21;
  }

  v144 = v196;
  sub_1000302D8(v143, v196, &qword_100CA6028);
  if (sub_100024D10(v143 + v142, 1, v139) == 1)
  {
    sub_100018198(v132, &qword_100CA6028);
    sub_100018198(v140, &qword_100CA6028);
    (*(v131 + 8))(v144, v139);
    goto LABEL_17;
  }

  v148 = v188;
  (*(v131 + 32))(v188, v143 + v142, v139);
  sub_10041F594(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
  LODWORD(v247) = dispatch thunk of static Equatable.== infix(_:_:)();
  v149 = *(v131 + 8);
  v149(v148, v139);
  sub_100018198(v132, &qword_100CA6028);
  sub_100018198(v140, &qword_100CA6028);
  v149(v144, v139);
  v145 = sub_100018198(v143, &qword_100CA6028);
  if (v247)
  {
    goto LABEL_19;
  }

  v146 = 0;
  v147 = 0;
LABEL_21:
  v151 = v250;
  if (qword_100CA1F20 == -1)
  {
    if (v147)
    {
LABEL_23:
      v252 = v146;
      v253 = v147;
      __chkstk_darwin(v145);
      v152 = sub_10022C350(&qword_100CB7A70);
      v153 = sub_1004203B0();
      v154 = sub_1000E9170();
      v249 = v147;
      v155 = v154;
      v156 = sub_10022E824(&qword_100CB7A88);
      v258 = type metadata accessor for EmptyMatchedTransitionSourceConfiguration();
      v259 = &protocol witness table for EmptyMatchedTransitionSourceConfiguration;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v258 = v156;
      v259 = OpaqueTypeConformance2;
      v187 = swift_getOpaqueTypeConformance2();
      v158 = v197;
      v159 = v248;
      View.matchedTransitionSource<A, B>(id:in:configuration:)();
      v160 = v198;
      v161 = v233;
      (*(v198 + 16))(v232, v158, v233);
      swift_storeEnumTagMultiPayload();
      v252 = v159;
      v253 = &type metadata for ListLocationViewModel.ID;
      v254 = v152;
      v255 = v153;
      v256 = v155;
      v257 = v187;
      v71 = v240;
      swift_getOpaqueTypeConformance2();
      v162 = v223;
      _ConditionalContent<>.init(storage:)();

      (*(v160 + 8))(v158, v161);
      v151 = v250;
      goto LABEL_26;
    }
  }

  else
  {
    v145 = swift_once();
    if (v147)
    {
      goto LABEL_23;
    }
  }

  sub_1000302D8(v151, v232, &qword_100CB79D8);
  swift_storeEnumTagMultiPayload();
  v163 = sub_10022E824(&qword_100CB7A70);
  v164 = sub_1004203B0();
  v165 = sub_1000E9170();
  v166 = sub_10022E824(&qword_100CB7A88);
  v252 = type metadata accessor for EmptyMatchedTransitionSourceConfiguration();
  v253 = &protocol witness table for EmptyMatchedTransitionSourceConfiguration;
  v167 = swift_getOpaqueTypeConformance2();
  v252 = v166;
  v253 = v167;
  v168 = swift_getOpaqueTypeConformance2();
  v252 = v248;
  v253 = &type metadata for ListLocationViewModel.ID;
  v254 = v163;
  v255 = v164;
  v256 = v165;
  v257 = v168;
  swift_getOpaqueTypeConformance2();
  v162 = v223;
  _ConditionalContent<>.init(storage:)();
LABEL_26:
  sub_100018198(v151, &qword_100CB79D8);
  v169 = v224;
  sub_10011C0F0(v162, v224, &qword_100CB79E0);
  v170 = v71 + *(v251 + 40);
  v171 = *v170;
  v172 = *(v170 + 1);
  LOBYTE(v252) = v171;
  v253 = v172;
  State.wrappedValue.getter();
  if (v258)
  {
    v173 = 0.96;
  }

  else
  {
    v173 = 1.0;
  }

  static UnitPoint.center.getter();
  v175 = v174;
  v177 = v176;
  v178 = v229;
  sub_10011C0F0(v169, v229, &qword_100CB79E0);
  v179 = v178 + *(v228 + 36);
  *v179 = v173;
  *(v179 + 8) = v173;
  *(v179 + 16) = v175;
  *(v179 + 24) = v177;
  v180 = v230;
  sub_1004144DC(v71, v230, type metadata accessor for LocationRowButtonStyle);
  v181 = v237;
  v182 = v236;
  v183 = v238;
  (*(v237 + 16))(v236, v235, v238);
  v184 = (v218 + *(v181 + 80)) & ~*(v181 + 80);
  v185 = swift_allocObject();
  sub_10041F478(v180, v185 + v221, type metadata accessor for LocationRowButtonStyle);
  (*(v181 + 32))(v185 + v184, v182, v183);
  sub_100420598();
  View.onTapGesture(count:perform:)();

  return sub_100018198(v178, &qword_100CB79E8);
}

void sub_10041D5D0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LocationRowButtonStyle(0);
  v4 = (a2 + *(v3 + 40));
  v5 = *v4;
  v6 = *(v4 + 1);
  LOBYTE(v15) = *v4;
  v16 = v6;
  sub_10022C350(&qword_100CA5A80);
  State.wrappedValue.getter();
  if (v17 == 1)
  {
    LOBYTE(v15) = v5;
    v16 = v6;
    LOBYTE(v17) = 0;
    State.wrappedValue.setter();
  }

  v7 = (a2 + *(v3 + 44));
  v8 = *v7;
  v9 = *(v7 + 1);
  LOBYTE(v15) = v8;
  v16 = v9;
  State.wrappedValue.getter();
  if ((v17 & 1) == 0)
  {
    if (Notification.userInfo.getter())
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v10;
      AnyHashable.init<A>(_:)();
      sub_100879F04();

      sub_100166478(&v15);
      if (*(&v18 + 1))
      {
        sub_100420880();
        v11 = swift_dynamicCast();
        if (v11)
        {
          v12 = v15;
          v11 = [v15 BOOLValue];
          if (v11)
          {

            return;
          }

          goto LABEL_12;
        }

LABEL_11:
        v12 = 0;
LABEL_12:
        __chkstk_darwin(v11);
        static Animation.default.getter();
        withAnimation<A>(_:_:)();

        return;
      }
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
    }

    v11 = sub_100018198(&v17, &qword_100CE2F40);
    goto LABEL_11;
  }
}

uint64_t sub_10041D7F0()
{
  type metadata accessor for LocationRowButtonStyle(0);
  sub_10022C350(&qword_100CA5A80);
  State.wrappedValue.getter();
  if (v1 == 1)
  {
    v1 = 0;
    State.wrappedValue.setter();
  }

  result = State.wrappedValue.getter();
  if ((v1 & 1) == 0)
  {
    __chkstk_darwin(result);
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t sub_10041D928()
{
  type metadata accessor for LocationRowButtonStyle(0);
  sub_10022C350(&qword_100CA5A80);
  return State.wrappedValue.setter();
}

_BYTE *sub_10041D9A4(_BYTE *result, _BYTE *a2)
{
  if (*result == 1)
  {
    if ((*a2 & 1) == 0)
    {
      type metadata accessor for LocationRowButtonStyle(0);
      sub_10022C350(&qword_100CA5A80);
      result = State.wrappedValue.getter();
      if ((v2 & 1) == 0)
      {
        return State.wrappedValue.setter();
      }
    }
  }

  else if (*a2)
  {
    type metadata accessor for LocationRowButtonStyle(0);
    sub_10022C350(&qword_100CA5A80);
    result = State.wrappedValue.getter();
    if (v2 == 1)
    {
      return State.wrappedValue.setter();
    }
  }

  return result;
}

uint64_t sub_10041DAB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_10022C350(&qword_100CB79B0);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  v14 = a2 + *(sub_10022C350(&qword_100CB7A08) + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  LOBYTE(a1) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = a2 + *(sub_10022C350(&qword_100CB7A20) + 36);
  *v23 = a1;
  *(v23 + 8) = v16;
  *(v23 + 16) = v18;
  *(v23 + 24) = v20;
  *(v23 + 32) = v22;
  *(v23 + 40) = 0;
  LOBYTE(a1) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  result = sub_10022C350(&qword_100CB7A00);
  v33 = a2 + *(result + 36);
  *v33 = a1;
  *(v33 + 8) = v25;
  *(v33 + 16) = v27;
  *(v33 + 24) = v29;
  *(v33 + 32) = v31;
  *(v33 + 40) = 0;
  return result;
}

uint64_t sub_10041DC20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_10022C350(&qword_100CB79B0);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  result = sub_10022C350(&qword_100CB7A08);
  v15 = a2 + *(result + 36);
  *v15 = v4;
  *(v15 + 8) = v6;
  *(v15 + 16) = v8;
  *(v15 + 24) = v10;
  *(v15 + 32) = v12;
  *(v15 + 40) = 0;
  return result;
}

void sub_10041DCF0(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v3 = type metadata accessor for AnimationCompletionCriteria();
  v46 = *(v3 - 8);
  v47 = v3;
  __chkstk_darwin(v3);
  v45 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PrimitiveButtonStyleConfiguration();
  v43 = *(v5 - 8);
  v44 = v5;
  __chkstk_darwin(v5);
  v41 = v6;
  v42 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UserInterfaceSizeClass();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v40 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CA64E8);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v39 - v12;
  v14 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v14 - 8);
  v49 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v39 - v17;
  __chkstk_darwin(v19);
  v21 = &v39 - v20;
  v22 = (a1 + *(type metadata accessor for LocationRowButtonStyle(0) + 48));
  v23 = *v22;
  v24 = *(v22 + 1);
  LOBYTE(v52) = v23;
  v53 = v24;
  v51 = 1;
  sub_10022C350(&qword_100CA5A80);
  State.wrappedValue.setter();
  v48 = a1;
  v25 = v8;
  sub_10041AA78(v21);
  (*(v8 + 104))(v18, enum case for UserInterfaceSizeClass.compact(_:), v7);
  sub_10001B350(v18, 0, 1, v7);
  v26 = *(v11 + 56);
  sub_1000302D8(v21, v13, &qword_100CA6028);
  sub_1000302D8(v18, &v13[v26], &qword_100CA6028);
  if (sub_100024D10(v13, 1, v7) != 1)
  {
    v27 = v49;
    sub_1000302D8(v13, v49, &qword_100CA6028);
    if (sub_100024D10(&v13[v26], 1, v7) != 1)
    {
      v28 = *(v8 + 32);
      v29 = v40;
      v28(v40, &v13[v26], v7);
      sub_10041F594(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
      v30 = dispatch thunk of static Equatable.== infix(_:_:)();
      v31 = *(v25 + 8);
      v31(v29, v7);
      sub_100018198(v18, &qword_100CA6028);
      sub_100018198(v21, &qword_100CA6028);
      v31(v27, v7);
      sub_100018198(v13, &qword_100CA6028);
      if (v30)
      {
        goto LABEL_9;
      }

LABEL_7:
      PrimitiveButtonStyleConfiguration.trigger()();
      return;
    }

    sub_100018198(v18, &qword_100CA6028);
    sub_100018198(v21, &qword_100CA6028);
    (*(v8 + 8))(v27, v7);
LABEL_6:
    sub_100018198(v13, &qword_100CA64E8);
    goto LABEL_7;
  }

  sub_100018198(v18, &qword_100CA6028);
  sub_100018198(v21, &qword_100CA6028);
  if (sub_100024D10(&v13[v26], 1, v7) != 1)
  {
    goto LABEL_6;
  }

  sub_100018198(v13, &qword_100CA6028);
LABEL_9:
  v52 = 0;
  if (qword_100CA2060 != -1)
  {
    swift_once();
  }

  Transaction.animation.setter();
  v33 = v42;
  v32 = v43;
  v34 = v44;
  (*(v43 + 16))(v42, v50, v44);
  v35 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v36 = swift_allocObject();
  (*(v32 + 32))(v36 + v35, v33, v34);
  v37 = v45;
  static AnimationCompletionCriteria.logicallyComplete.getter();
  Transaction.addAnimationCompletion(criteria:_:)();

  v38 = (*(v46 + 8))(v37, v47);
  __chkstk_darwin(v38);
  *(&v39 - 2) = v48;
  withTransaction<A>(_:_:)();
}

uint64_t sub_10041E410()
{
  type metadata accessor for LocationRowButtonStyle(0);
  sub_10022C350(&qword_100CA5A80);
  State.wrappedValue.setter();
  return State.wrappedValue.setter();
}

uint64_t sub_10041E4D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100929D08();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10041E52C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v106 = a5;
  *(&v105 + 1) = a4;
  *&v105 = a3;
  v114 = a2;
  v108 = a1;
  v121 = a6;
  v118 = type metadata accessor for RoundedRectangle._Inset();
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000037D8();
  v120 = v8 - v7;
  v112 = type metadata accessor for ContentShapeKinds();
  sub_1000037C4();
  v111 = v9;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v110 = v12 - v11;
  v113 = type metadata accessor for RoundedRectangle();
  sub_1000037E8();
  __chkstk_darwin(v13);
  v119 = (&v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = (&v105 - v16);
  __chkstk_darwin(v18);
  v20 = (&v105 - v19);
  v107 = sub_10022C350(&qword_100CB7EE0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v21);
  v23 = &v105 - v22;
  v109 = sub_10022C350(&qword_100CB7EE8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v24);
  v117 = &v105 - v25;
  v115 = sub_10022C350(&qword_100CB7EF0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v26);
  v116 = &v105 - v27;
  v28 = type metadata accessor for BlendMode();
  sub_1000037C4();
  v30 = v29;
  __chkstk_darwin(v31);
  sub_1000037D8();
  v34 = v33 - v32;
  if (static Solarium.isEnabled.getter())
  {
    static Color.white.getter();
    v35 = Color.opacity(_:)();

    v36 = sub_10003BDD8();
    v37(v36);
    v38 = sub_10022C350(&qword_100CABEA8);
    v124 = v38;
    sub_10003C464();
    v125 = sub_100422A78(v39, &qword_100CABEA8);
    v40 = sub_100042FB0(v123);
    v41 = sub_100021494(v40, *(v38 + 36));
    v42(v41);
    *v40 = v35;
  }

  else
  {
    v43 = static HierarchicalShapeStyle.tertiary.getter();
    v44 = sub_10003BDD8();
    v45(v44);
    v46 = sub_10022C350(&qword_100CB7EF8);
    v124 = v46;
    sub_10003C464();
    v125 = sub_100422A78(v47, &qword_100CB7EF8);
    v48 = sub_100042FB0(v123);
    v49 = sub_100021494(v48, *(v46 + 36));
    v50(v49);
    *v48 = v43;
  }

  (*(v30 + 8))(v34, v28);
  v51 = v114;
  if (v114)
  {
    static Solarium.isEnabled.getter();
    v52 = v113;
    v53 = v110;
    if (qword_100CA1F20 != -1)
    {
      sub_100019714();
    }

    v54 = qword_100D8FB60;
    if (qword_100CA1F28 != -1)
    {
      sub_1000041B8();
    }

    v55 = type metadata accessor for RoundedCornerStyle();
    v56 = sub_10000703C(v55, qword_100D8FB68);
    (*(*(v55 - 8) + 16))(v20 + *(v52 + 20), v56, v55);
    *v20 = v54;
    v20[1] = v54;
  }

  else
  {
    v52 = v113;
    v57 = *(v113 + 20);
    v58 = enum case for RoundedCornerStyle.continuous(_:);
    type metadata accessor for RoundedCornerStyle();
    sub_1000037E8();
    (*(v59 + 104))(v20 + v57, v58);
    *v20 = 0;
    v20[1] = 0;
    v53 = v110;
  }

  v60 = &v23[*(v107 + 36)];
  sub_100069568();
  v61 = sub_100003940();
  sub_10041F478(v61, v62, v63);
  *&v60[*(sub_10022C350(&qword_100CB34E0) + 36)] = 256;
  sub_10022C350(&qword_100CB7F08);
  sub_1000037E8();
  (*(v64 + 16))(v23, v108);
  static ContentShapeKinds.dragPreview.getter();
  if (v51)
  {
    static Solarium.isEnabled.getter();
    v65 = v117;
    if (qword_100CA1F20 != -1)
    {
      sub_100019714();
    }

    v66 = qword_100D8FB60;
    if (qword_100CA1F28 != -1)
    {
      sub_1000041B8();
    }

    v67 = type metadata accessor for RoundedCornerStyle();
    sub_10000703C(v67, qword_100D8FB68);
    sub_100020F50();
    (*(v68 + 16))(v17 + v69);
    *v17 = v66;
    v17[1] = v66;
  }

  else
  {
    v70 = *(v52 + 20);
    v71 = enum case for RoundedCornerStyle.continuous(_:);
    type metadata accessor for RoundedCornerStyle();
    sub_1000037E8();
    (*(v72 + 104))(v17 + v70, v71);
    *v17 = 0;
    v17[1] = 0;
    v65 = v117;
  }

  v73 = v65 + *(v109 + 36);
  sub_100069568();
  sub_10041F478(v17, v73, v74);
  v75 = sub_10022C350(&qword_100CB7F10);
  (*(v111 + 32))(v73 + *(v75 + 40), v53, v112);
  *(v73 + *(v75 + 36)) = 0;
  sub_10011C0F0(v23, v65, &qword_100CB7EE0);
  static Solarium.isEnabled.getter();
  v76 = v119;
  if (qword_100CA1F20 != -1)
  {
    sub_100019714();
  }

  v77 = qword_100D8FB60;
  if (qword_100CA1F28 != -1)
  {
    sub_1000041B8();
  }

  v78 = type metadata accessor for RoundedCornerStyle();
  sub_10000703C(v78, qword_100D8FB68);
  sub_100020F50();
  (*(v79 + 16))(v76 + v80);
  *v76 = v77;
  v76[1] = v77;
  if ((v51 & 0x100) != 0 && (v126 = v105, LOBYTE(v127) = v106 & 1, sub_10022C350(&unk_100CB3AA0), Binding.wrappedValue.getter(), (v122 & 1) == 0))
  {
    v82 = sub_1000161C0(v123, v124);
    __chkstk_darwin(v82);
    sub_1000037D8();
    (*(v85 + 16))(v84 - v83);
    v81 = AnyShapeStyle.init<A>(_:)();
  }

  else
  {
    *&v126 = static Color.clear.getter();
    v81 = AnyShapeStyle.init<A>(_:)();
  }

  if (qword_100CA2658 != -1)
  {
    sub_100005CCC();
  }

  sub_10001638C();
  v86 = sub_1007A4380();
  swift_endAccess();
  v87 = v120;
  sub_1004144DC(v76, v120, &type metadata accessor for RoundedRectangle);
  v88 = v118;
  *(v87 + *(v118 + 20)) = -v86;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v89 = v116;
  v90 = &v116[*(v115 + 36)];
  sub_1004144DC(v87, v90, &type metadata accessor for RoundedRectangle._Inset);
  v91 = *&v126 * 0.5;
  v92 = v90 + *(sub_10022C350(&qword_100CB7F18) + 68);
  sub_1004144DC(v87, v92, &type metadata accessor for RoundedRectangle._Inset);
  *(v92 + *(v88 + 20)) = v91 + *(v92 + *(v88 + 20));
  v93 = v92 + *(sub_10022C350(&qword_100CB7F20) + 36);
  v94 = v127;
  *v93 = v126;
  *(v93 + 16) = v94;
  *(v93 + 32) = v128;
  v95 = sub_10022C350(&qword_100CB7F28);
  *(v92 + *(v95 + 52)) = v81;
  *(v92 + *(v95 + 56)) = 256;

  v96 = static Alignment.center.getter();
  v98 = v97;
  sub_10041F4D4(v87, &type metadata accessor for RoundedRectangle._Inset);
  v99 = (v92 + *(sub_10022C350(&qword_100CB7F30) + 36));
  *v99 = v96;
  v99[1] = v98;
  v100 = static Alignment.center.getter();
  v102 = v101;

  sub_10041F4D4(v76, &type metadata accessor for RoundedRectangle);
  v103 = (v90 + *(sub_10022C350(&qword_100CB7F38) + 36));
  *v103 = v100;
  v103[1] = v102;
  sub_10011C0F0(v65, v89, &qword_100CB7EE8);
  sub_10011C0F0(v89, v121, &qword_100CB7EF0);
  return sub_100006F14(v123);
}

uint64_t sub_10041F054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (v2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_10041E52C(a1, v3 | *v2, *(v2 + 1), *(v2 + 2), v2[24], a2);
}

uint64_t sub_10041F078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for RowElementStyle(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CB8008);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  sub_1004144DC(v2, v7, type metadata accessor for RowElementStyle);
  v11 = sub_10022C350(&qword_100CB7B80);
  if (sub_100024D10(v7, 1, v11) == 1)
  {
    v12 = static HierarchicalShapeStyle.primary.getter();
  }

  else
  {
    v12 = static HierarchicalShapeStyle.secondary.getter();
    v13 = type metadata accessor for BlendMode();
    (*(*(v13 - 8) + 8))(v7, v13);
  }

  v14 = sub_10022C350(&qword_100CB8010);
  (*(*(v14 - 8) + 16))(v10, a1, v14);
  *&v10[*(v8 + 36)] = v12;
  v15 = sub_10022C350(&qword_100CB8018);
  sub_10041F274(a2 + *(v15 + 36));
  return sub_10011C0F0(v10, a2, &qword_100CB8008);
}

uint64_t sub_10041F274@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for BlendMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RowElementStyle(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004144DC(v2, v10, type metadata accessor for RowElementStyle);
  v11 = sub_10022C350(&qword_100CB7B80);
  if (sub_100024D10(v10, 1, v11) != 1)
  {
    v12 = *(v5 + 32);
    v12(v7, v10, v4);
    if (DeviceSupportsVFX())
    {
      return (v12)(a1, v7, v4);
    }

    (*(v5 + 8))(v7, v4);
  }

  return (*(v5 + 104))(a1, enum case for BlendMode.normal(_:), v4);
}

uint64_t sub_10041F478(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_10041F4D4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100003D98();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10041F594(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1000201F8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10041F644()
{
  sub_100081B54(319, &qword_100CACC68);
  if (v0 <= 0x3F)
  {
    sub_100081B54(319, &unk_100CACC70);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ListLocationViewModel(319);
      if (v2 <= 0x3F)
      {
        sub_10008169C(319, &qword_100CA6D40, &type metadata for Bool, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          sub_10008169C(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_1000612C8();
            if (v5 <= 0x3F)
            {
              sub_10008169C(319, &qword_100CB3B28, &type metadata for Bool, &type metadata accessor for Binding);
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

void sub_10041F810()
{
  sub_10010F394(319, &qword_100CA4348, &type metadata accessor for Font.Context);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ListLocationViewModel(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_10041F8B0()
{
  result = qword_100CB7950;
  if (!qword_100CB7950)
  {
    sub_10022E824(&qword_100CB77C8);
    sub_10041F93C();
    sub_100061564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7950);
  }

  return result;
}

unint64_t sub_10041F93C()
{
  result = qword_100CB7958;
  if (!qword_100CB7958)
  {
    sub_10022E824(&qword_100CB77C0);
    sub_100422A78(&qword_100CB7960, &unk_100CB7968);
    sub_10041F594(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7958);
  }

  return result;
}

uint64_t sub_10041FA8C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = type metadata accessor for LocationRowButtonStyle(0);
  sub_100003810(v3);
  sub_100008550();

  return a2(a1);
}

uint64_t sub_10041FB30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = a3(0);
  sub_100003810(v7);
  v9 = v4 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a4(a1, a2, v9);
}

unint64_t sub_10041FBC4()
{
  result = qword_100CB7A10;
  if (!qword_100CB7A10)
  {
    sub_10022E824(&qword_100CB7A00);
    sub_10041FC50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7A10);
  }

  return result;
}

unint64_t sub_10041FC50()
{
  result = qword_100CB7A18;
  if (!qword_100CB7A18)
  {
    sub_10022E824(&qword_100CB7A20);
    sub_10041FCDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7A18);
  }

  return result;
}

unint64_t sub_10041FCDC()
{
  result = qword_100CB7A28;
  if (!qword_100CB7A28)
  {
    sub_10022E824(&qword_100CB7A08);
    sub_10022E824(&qword_100CB79A8);
    sub_100422A78(&qword_100CB79F8, &qword_100CB79A8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7A28);
  }

  return result;
}

unint64_t sub_10041FDEC()
{
  result = qword_100CB7A30;
  if (!qword_100CB7A30)
  {
    sub_10022E824(&qword_100CB7988);
    sub_10022E824(&qword_100CB79B0);
    sub_10022E824(&qword_100CB7A00);
    sub_10022E824(&qword_100CB7A08);
    sub_10022E824(&qword_100CB79A8);
    sub_100422A78(&qword_100CB79F8, &qword_100CB79A8);
    swift_getOpaqueTypeConformance2();
    sub_10041FBC4();
    sub_10041FCDC();
    swift_getOpaqueTypeConformance2();
    sub_10041F594(&qword_100CACCF0, type metadata accessor for InternalStateWeatherConditionBackgroundModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7A30);
  }

  return result;
}

unint64_t sub_10041FFD4()
{
  result = qword_100CB7A38;
  if (!qword_100CB7A38)
  {
    sub_10022E824(&qword_100CB79A0);
    sub_10022E824(&qword_100CB79B0);
    sub_10022E824(&qword_100CB7A00);
    sub_10022E824(&qword_100CB7A08);
    sub_10022E824(&qword_100CB79A8);
    sub_100422A78(&qword_100CB79F8, &qword_100CB79A8);
    swift_getOpaqueTypeConformance2();
    sub_10041FBC4();
    sub_10041FCDC();
    swift_getOpaqueTypeConformance2();
    sub_100422A78(&qword_100CB7A40, &unk_100CB7A48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7A38);
  }

  return result;
}

unint64_t sub_1004201B8()
{
  result = qword_100CB7A50;
  if (!qword_100CB7A50)
  {
    sub_10022E824(&qword_100CB79D0);
    sub_100420244();
    sub_10042035C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7A50);
  }

  return result;
}

unint64_t sub_100420244()
{
  result = qword_100CB7A58;
  if (!qword_100CB7A58)
  {
    sub_10022E824(&qword_100CB79C8);
    sub_1004202D0();
    sub_100061564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7A58);
  }

  return result;
}

unint64_t sub_1004202D0()
{
  result = qword_100CB7A60;
  if (!qword_100CB7A60)
  {
    sub_10022E824(&qword_100CB79C0);
    sub_10041FDEC();
    sub_10041FFD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7A60);
  }

  return result;
}

unint64_t sub_10042035C()
{
  result = qword_100CB7A68;
  if (!qword_100CB7A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7A68);
  }

  return result;
}

unint64_t sub_1004203B0()
{
  result = qword_100CB7A78;
  if (!qword_100CB7A78)
  {
    sub_10022E824(&qword_100CB79D8);
    sub_1004201B8();
    sub_10041F594(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7A78);
  }

  return result;
}

uint64_t sub_1004204AC(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(unint64_t, uint64_t))
{
  v5 = *(a1(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = a2(0);
  sub_100003810(v8);
  v10 = v3 + ((v6 + v7 + *(v9 + 80)) & ~*(v9 + 80));

  return a3(v3 + v6, v10);
}

unint64_t sub_100420598()
{
  result = qword_100CB7A90;
  if (!qword_100CB7A90)
  {
    sub_10022E824(&qword_100CB79E8);
    sub_100420624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7A90);
  }

  return result;
}

unint64_t sub_100420624()
{
  result = qword_100CB7A98;
  if (!qword_100CB7A98)
  {
    sub_10022E824(&qword_100CB79E0);
    sub_10022E824(&qword_100CB79D8);
    sub_10022E824(&qword_100CB7A70);
    sub_1004203B0();
    sub_1000E9170();
    sub_10022E824(&qword_100CB7A88);
    type metadata accessor for EmptyMatchedTransitionSourceConfiguration();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7A98);
  }

  return result;
}

uint64_t sub_1004207D0(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = a1(0);
  sub_100003810(v3);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(v5);
}

unint64_t sub_100420880()
{
  result = qword_100CAECA8;
  if (!qword_100CAECA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CAECA8);
  }

  return result;
}

unint64_t sub_1004208CC()
{
  result = qword_100CB7AE8;
  if (!qword_100CB7AE8)
  {
    sub_10022E824(&qword_100CB7AC8);
    sub_100422A78(&qword_100CB7AF0, &unk_100CB7AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7AE8);
  }

  return result;
}

unint64_t sub_100420984()
{
  result = qword_100CB7B00;
  if (!qword_100CB7B00)
  {
    sub_10022E824(&qword_100CB7AE0);
    sub_1004208CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7B00);
  }

  return result;
}

unint64_t sub_100420A18()
{
  result = qword_100CB7B18;
  if (!qword_100CB7B18)
  {
    sub_10022E824(&qword_100CB7AA8);
    sub_100422A78(&qword_100CB7B20, &unk_100CB7AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7B18);
  }

  return result;
}

unint64_t sub_100420AD0()
{
  result = qword_100CB7B28;
  if (!qword_100CB7B28)
  {
    sub_10022E824(&qword_100CB7B10);
    sub_100420A18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7B28);
  }

  return result;
}

unint64_t sub_100420C2C()
{
  result = qword_100CB7B90;
  if (!qword_100CB7B90)
  {
    sub_10022E824(&qword_100CB7B58);
    sub_100420CE4();
    sub_100422A78(&qword_100CB7BB8, &qword_100CB7B88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7B90);
  }

  return result;
}

unint64_t sub_100420CE4()
{
  result = qword_100CB7B98;
  if (!qword_100CB7B98)
  {
    sub_10022E824(&qword_100CB7B78);
    sub_100420DA0();
    sub_10041F594(&qword_100CB7BB0, type metadata accessor for VFXForegroundModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7B98);
  }

  return result;
}

unint64_t sub_100420DA0()
{
  result = qword_100CB7BA0;
  if (!qword_100CB7BA0)
  {
    sub_10022E824(&qword_100CB7B70);
    sub_10041F594(&qword_100CB7BA8, type metadata accessor for DescriptionView);
    sub_100422A78(&qword_100CA53B8, &qword_100CA53C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7BA0);
  }

  return result;
}

unint64_t sub_100420EA8()
{
  result = qword_100CB7BC0;
  if (!qword_100CB7BC0)
  {
    sub_10022E824(&qword_100CB7B48);
    sub_100420F60();
    sub_100422A78(&qword_100CB7BB8, &qword_100CB7B88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7BC0);
  }

  return result;
}

unint64_t sub_100420F60()
{
  result = qword_100CB7BC8;
  if (!qword_100CB7BC8)
  {
    sub_10022E824(&qword_100CB7BD0);
    sub_100420FEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7BC8);
  }

  return result;
}

unint64_t sub_100420FEC()
{
  result = qword_100CB7BD8;
  if (!qword_100CB7BD8)
  {
    sub_10022E824(&qword_100CB7BE0);
    sub_10041F594(&qword_100CA3FE8, &type metadata accessor for TemperatureHighLowTextVertical);
    sub_10041F594(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7BD8);
  }

  return result;
}

unint64_t sub_1004210D8()
{
  result = qword_100CB7BE8;
  if (!qword_100CB7BE8)
  {
    sub_10022E824(&qword_100CB7B38);
    sub_100421190();
    sub_100422A78(&qword_100CB7BB8, &qword_100CB7B88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7BE8);
  }

  return result;
}

unint64_t sub_100421190()
{
  result = qword_100CB7BF0;
  if (!qword_100CB7BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7BF0);
  }

  return result;
}

uint64_t sub_10042124C()
{
  sub_1004212A4();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1004212A4()
{
  if (!qword_100CB7CE0)
  {
    v0 = type metadata accessor for BlendMode();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB7CE0);
    }
  }
}

uint64_t sub_1004212EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_10042132C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void sub_1004213B8()
{
  type metadata accessor for ListLocationViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_10008169C(319, &unk_100CB7D70, &type metadata for AnyShapeStyle, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Text.Measurements();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1004214A0()
{
  result = type metadata accessor for RowElementStyle(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100421534()
{
  type metadata accessor for ListLocationViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_10008169C(319, &unk_100CB7D70, &type metadata for AnyShapeStyle, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_10010F394(319, &qword_100CB64B8, &type metadata accessor for DynamicTypeSize);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10042169C()
{
  result = qword_100CB7F60;
  if (!qword_100CB7F60)
  {
    sub_10022E824(&qword_100CB7F58);
    sub_100421754();
    sub_100422A78(&qword_100CADEA0, &qword_100CADEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7F60);
  }

  return result;
}

unint64_t sub_100421754()
{
  result = qword_100CB7F68;
  if (!qword_100CB7F68)
  {
    sub_10022E824(&qword_100CB7F70);
    sub_100400850();
    sub_100422A78(&qword_100CA53B8, &qword_100CA53C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7F68);
  }

  return result;
}

unint64_t sub_10042180C()
{
  result = qword_100CB7FA8;
  if (!qword_100CB7FA8)
  {
    sub_10022E824(&qword_100CB7FA0);
    sub_1004218C4();
    sub_100422A78(&qword_100CB7FE0, &unk_100CB7FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7FA8);
  }

  return result;
}

unint64_t sub_1004218C4()
{
  result = qword_100CB7FB0;
  if (!qword_100CB7FB0)
  {
    sub_10022E824(&qword_100CB7F90);
    sub_100421950();
    sub_100421A94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7FB0);
  }

  return result;
}

unint64_t sub_100421950()
{
  result = qword_100CB7FB8;
  if (!qword_100CB7FB8)
  {
    sub_10022E824(&qword_100CB7F98);
    sub_1004219DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7FB8);
  }

  return result;
}

unint64_t sub_1004219DC()
{
  result = qword_100CB7FC0;
  if (!qword_100CB7FC0)
  {
    sub_10022E824(&qword_100CB7FC8);
    sub_100421A94();
    sub_100422A78(&qword_100CE0FF0, &qword_100CA5110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7FC0);
  }

  return result;
}

unint64_t sub_100421A94()
{
  result = qword_100CB7FD0;
  if (!qword_100CB7FD0)
  {
    sub_10022E824(&qword_100CB7FD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7FD0);
  }

  return result;
}

double sub_100421B18@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for DescriptionView(0);
  sub_100003810(v2);

  return sub_100419188(a1);
}

uint64_t sub_100421B98(uint64_t a1)
{
  v2 = type metadata accessor for LocationRowSubheadingView(0);
  sub_100003810(v2);
  sub_100008550();

  return sub_100417A7C(a1, v3);
}

uint64_t sub_100421BFC(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_100421C7C()
{
  result = qword_100CB8060;
  if (!qword_100CB8060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB8060);
  }

  return result;
}

unint64_t sub_100421CD0()
{
  result = qword_100CB8078;
  if (!qword_100CB8078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB8078);
  }

  return result;
}

uint64_t sub_100421D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    return sub_100421D7C(a1, a2, a3, a4, a5 & 1);
  }
}

uint64_t sub_100421D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_100421DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    return sub_100421E18(a1, a2, a3, a4, a5 & 1);
  }
}

uint64_t sub_100421E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return result;
}

unint64_t sub_100421E7C()
{
  result = qword_100CB8080;
  if (!qword_100CB8080)
  {
    sub_10022E824(&qword_100CB7EF0);
    sub_100421F34();
    sub_100422A78(&qword_100CB80B0, &qword_100CB7F38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB8080);
  }

  return result;
}

unint64_t sub_100421F34()
{
  result = qword_100CB8088;
  if (!qword_100CB8088)
  {
    sub_10022E824(&qword_100CB7EE8);
    sub_100421FEC();
    sub_100422A78(&qword_100CB80A8, &qword_100CB7F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB8088);
  }

  return result;
}

unint64_t sub_100421FEC()
{
  result = qword_100CB8090;
  if (!qword_100CB8090)
  {
    sub_10022E824(&qword_100CB7EE0);
    sub_100422A78(&qword_100CB8098, &qword_100CB7F08);
    sub_100422A78(&qword_100CB80A0, &qword_100CB34E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB8090);
  }

  return result;
}

unint64_t sub_1004220D0()
{
  result = qword_100CB80B8;
  if (!qword_100CB80B8)
  {
    sub_10022E824(&qword_100CB7F50);
    sub_10022E824(&qword_100CB7F58);
    sub_10042169C();
    swift_getOpaqueTypeConformance2();
    sub_10041F594(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB80B8);
  }

  return result;
}

unint64_t sub_1004221C8()
{
  result = qword_100CB80C0;
  if (!qword_100CB80C0)
  {
    sub_10022E824(&qword_100CB80C8);
    sub_10042180C();
    sub_10033CBA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB80C0);
  }

  return result;
}

unint64_t sub_100422254()
{
  result = qword_100CB80D0;
  if (!qword_100CB80D0)
  {
    sub_10022E824(&qword_100CB8018);
    sub_1004222E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB80D0);
  }

  return result;
}

unint64_t sub_1004222E0()
{
  result = qword_100CB80D8;
  if (!qword_100CB80D8)
  {
    sub_10022E824(&qword_100CB8008);
    sub_100422A78(&qword_100CB80E0, &qword_100CB8010);
    sub_100422A78(&qword_100CA3ED0, &qword_100CA3ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB80D8);
  }

  return result;
}

unint64_t sub_1004223C4()
{
  result = qword_100CB80E8;
  if (!qword_100CB80E8)
  {
    sub_10022E824(&qword_100CB80F0);
    sub_10042247C();
    sub_100422A78(&qword_100CB8128, &unk_100CB8130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB80E8);
  }

  return result;
}

unint64_t sub_10042247C()
{
  result = qword_100CB80F8;
  if (!qword_100CB80F8)
  {
    sub_10022E824(&qword_100CB8100);
    sub_100422534();
    sub_100422A78(&qword_100CA53B8, &qword_100CA53C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB80F8);
  }

  return result;
}

unint64_t sub_100422534()
{
  result = qword_100CB8108;
  if (!qword_100CB8108)
  {
    sub_10022E824(&qword_100CB8110);
    sub_1004225B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB8108);
  }

  return result;
}

unint64_t sub_1004225B8()
{
  result = qword_100CB8118;
  if (!qword_100CB8118)
  {
    sub_10022E824(&qword_100CB8120);
    sub_100422A78(&qword_100CB8038, &qword_100CB8028);
    sub_100422A78(&qword_100CB8040, &qword_100CB8030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB8118);
  }

  return result;
}

unint64_t sub_1004226D4()
{
  result = qword_100CB8148;
  if (!qword_100CB8148)
  {
    sub_10022E824(&qword_100CB8138);
    sub_10042278C();
    sub_100422A78(&unk_100CE1690, &qword_100CAF750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB8148);
  }

  return result;
}

unint64_t sub_10042278C()
{
  result = qword_100CB8150;
  if (!qword_100CB8150)
  {
    sub_10022E824(&qword_100CB5830);
    sub_100422844();
    sub_100422A78(&qword_100CADEA0, &qword_100CADEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB8150);
  }

  return result;
}

unint64_t sub_100422844()
{
  result = qword_100CB8158;
  if (!qword_100CB8158)
  {
    sub_10022E824(&qword_100CB8160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB8158);
  }

  return result;
}

unint64_t sub_1004228C8()
{
  result = qword_100CB8180;
  if (!qword_100CB8180)
  {
    sub_10022E824(&qword_100CB7FF0);
    sub_100422A78(&unk_100CE1690, &unk_100CAF750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB8180);
  }

  return result;
}

unint64_t sub_100422980()
{
  result = qword_100CB8190;
  if (!qword_100CB8190)
  {
    sub_10022E824(&qword_100CB8198);
    sub_10022E824(&qword_100CB8138);
    sub_1004226D4();
    swift_getOpaqueTypeConformance2();
    sub_10041F594(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB8190);
  }

  return result;
}

uint64_t sub_100422A78(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = sub_100003A24(0, a2);
    sub_10022E824(v4);
    sub_1000201F8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_100422AD8(_BYTE *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  if (*a1 != v4)
  {
    *a1 = v4;
  }

  return result;
}

BOOL sub_100422B24(CGRect *a1, void (*a2)(CGRect *__return_ptr))
{
  a2(&v8);
  x = v8.origin.x;
  y = v8.origin.y;
  width = v8.size.width;
  height = v8.size.height;
  result = CGRectEqualToRect(*a1, v8);
  if (!result)
  {
    a1->origin.x = x;
    a1->origin.y = y;
    a1->size.width = width;
    a1->size.height = height;
  }

  return result;
}

uint64_t sub_100422B9C()
{
  v3 = sub_1000137D4();
  v4 = type metadata accessor for LocationComponentBackgroundConfiguration(v3);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_100003C38();
  v8 = v6 - v7;
  __chkstk_darwin(v9);
  sub_10001694C();
  v2();
  sub_100019734();
  sub_100423DD0(v0, v8, v10);
  type metadata accessor for DynamicTypeSize();
  sub_1000673B4(&qword_100CA5390, &type metadata accessor for DynamicTypeSize);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_10022C350(&qword_100CB7090);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_7;
  }

  v11 = *(v4 + 20);
  v12 = (v8 + v11);
  v13 = *(v8 + v11 + 32);
  v14 = v1 + v11;
  v15 = *(v14 + 32);
  if (v13)
  {
    sub_10001EC50();
    sub_10004F6D4(v8, v16);
    if (v15)
    {
      goto LABEL_10;
    }

LABEL_8:
    sub_10001EC50();
    sub_10004F6D4(v0, v18);
    sub_100019734();
    return sub_100423E30(v1, v0, v19);
  }

  if (*(v14 + 32))
  {
LABEL_7:
    sub_10001EC50();
    sub_10004F6D4(v8, v17);
    goto LABEL_8;
  }

  v21 = CGRectEqualToRect(*v12, *v14);
  sub_10001EC50();
  sub_10004F6D4(v8, v22);
  if (!v21)
  {
    goto LABEL_8;
  }

LABEL_10:
  sub_10001EC50();
  return sub_10004F6D4(v1, v23);
}

uint64_t sub_100422D54()
{
  v3 = sub_1000137D4();
  v4 = type metadata accessor for LocationViewGeometry(v3);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_100003C38();
  v8 = (v6 - v7);
  __chkstk_darwin(v9);
  sub_10001694C();
  v2();
  sub_1000749BC();
  sub_100423DD0(v0, v8, v10);
  memcpy(__dst, v8, sizeof(__dst));
  memcpy(v18, v1, sizeof(v18));
  if (sub_100894634(v18) && (sub_1001009A8(v8[72], v1[72]) & 1) != 0 && (sub_10016AB68(&v8[v4[6]], &v1[v4[6]]) & 1) != 0 && (static EdgeInsets.== infix(_:_:)() & 1) != 0 && v8[v4[8]] == v1[v4[8]])
  {
    v15 = v8[v4[9]];
    sub_10001C1A8();
    sub_10004F6D4(v8, v16);
    if (v15 == v1[v4[9]])
    {
      sub_10001C1A8();
      return sub_10004F6D4(v1, v17);
    }
  }

  else
  {
    sub_10001C1A8();
    sub_10004F6D4(v8, v11);
  }

  sub_10001C1A8();
  sub_10004F6D4(v0, v12);
  sub_1000749BC();
  return sub_100423E30(v1, v0, v13);
}

void *sub_100422EDC(uint64_t *a1, void *(*a2)(void *__return_ptr))
{
  result = a2(v12);
  v4 = a1[3];
  v6 = v12[0];
  v5 = v12[1];
  v8 = v12[2];
  v7 = v13;
  if (!v4)
  {
    if (!v13)
    {
      return result;
    }

    goto LABEL_9;
  }

  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  if (!v13 || (static Text.== infix(_:_:)() & 1) == 0)
  {
    result = sub_10014A53C(v9, v10, v11, v4);
LABEL_9:
    *a1 = v6;
    a1[1] = v5;
    a1[2] = v8;
    a1[3] = v7;
    return result;
  }

  return sub_10014A53C(v6, v5, v8, v7);
}

uint64_t sub_100423010(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v6 = type metadata accessor for MainAction();
  __chkstk_darwin(v6);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  v26 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  result = __chkstk_darwin(v12);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 32) & 1) == 0)
  {
    v17 = *(a1 + 16);
    if (v17)
    {
      v25 = a2;
      *(a1 + 32) = 1;
      v18 = v17;

      v24 = v18;
      v18();
      static Logger.automation.getter();
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v23[1] = a3;
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Reported end of extended app launch with delay", v21, 2u);
      }

      (*(v13 + 8))(v16, v12);
      static os_signpost_type_t.event.getter();
      sub_10000C70C(0, &qword_100CA2E40);
      v22 = OS_os_log.init(subsystem:category:)();
      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:)();

      (*(v26 + 8))(v11, v9);
      type metadata accessor for EnvironmentAction();
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v28 = 0;
      memset(v27, 0, sizeof(v27));
      sub_10004F034(v8, v27, v25);
      sub_10002B028(v24);
      sub_1000180EC(v27, &unk_100CD81B0);
      return sub_10004F6D4(v8, type metadata accessor for MainAction);
    }
  }

  return result;
}

uint64_t sub_10042339C(void (*a1)(__n128))
{
  v2 = type metadata accessor for MainAction();
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v20 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v10);
  static Logger.automation.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v19 = v5;
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Reported end of extended app launch", v15, 2u);
    v5 = v19;
  }

  (*(v9 + 8))(v12, v8);
  static os_signpost_type_t.event.getter();
  sub_10000C70C(0, &qword_100CA2E40);
  v16 = OS_os_log.init(subsystem:category:)();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  (*(v20 + 8))(v7, v5);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(result + 80);

    type metadata accessor for EnvironmentAction();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_10004F034(v4, v21, v18);

    sub_1000180EC(v21, &unk_100CD81B0);
    return sub_10004F6D4(v4, type metadata accessor for MainAction);
  }

  return result;
}

uint64_t sub_100423748()
{
  sub_10002B028(*(v0 + 16));

  return v0;
}

uint64_t sub_100423794()
{
  sub_100423748();

  return swift_deallocClassInstance();
}

uint64_t sub_1004237C8()
{
  swift_getKeyPath();
  sub_100022BD0();
  sub_1000673B4(v1, v2);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t sub_100423858(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100423900();
  }

  return result;
}

uint64_t sub_1004239B8()
{
  v1 = OBJC_IVAR____TtC7Weather22ExtendedAppLaunchState___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  sub_1000037E8();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t sub_100423A64(uint64_t a1)
{
  v2 = type metadata accessor for FinishLaunchTestAction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MonitorAppLaunchStateViewModifier(0);
  sub_1009E94EC();
  FinishLaunchTestAction.callAsFunction()();
  (*(v3 + 8))(v5, v2);
  v7 = (a1 + *(v6 + 24));
  v9 = *v7;
  v8 = v7[1];
  v11[2] = v9;
  v11[3] = v8;
  sub_10022C350(&qword_100CB84B8);
  State.wrappedValue.getter();
  sub_100423858(0);
}

unint64_t sub_100423BB8(uint64_t a1)
{
  result = sub_100423BE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100423BE0()
{
  result = qword_100CB83F0;
  if (!qword_100CB83F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB83F0);
  }

  return result;
}

unint64_t sub_100423C8C()
{
  result = qword_100CB84E0;
  if (!qword_100CB84E0)
  {
    sub_10022E824(&qword_100CB84D8);
    sub_10022E824(&qword_100CB84A8);
    type metadata accessor for ExtendedAppLaunchState(255);
    sub_1000615D8();
    sub_1000673B4(&qword_100CB84D0, type metadata accessor for ExtendedAppLaunchState);
    swift_getOpaqueTypeConformance2();
    sub_100006F64(&qword_100CB84E8, &qword_100CB84F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB84E0);
  }

  return result;
}

uint64_t sub_100423DD0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100423E30(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100423E98(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if (qword_100CA2090 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (qword_100CA20A0 != -1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (qword_100CA2098 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      if (qword_100CA2088 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (qword_100CA2080 != -1)
    {
LABEL_18:
      swift_once();
    }
  }

LABEL_15:
}

void sub_100424004()
{
  v17[4] = xmmword_100A3BB70;
  v17[5] = xmmword_100A3BBB0;
  sub_100069580(0.0, 0.0, xmmword_100A2C3F0, xmmword_100A3BBC0);
  v18 = v0;
  v19 = v1;
  v17[0] = v2;
  v17[1] = xmmword_100A3AEB0;
  v16[0] = v3;
  v16[1] = xmmword_100A3BC10;
  v20 = v17;
  v21 = v16;
  v15[0] = v2;
  v15[1] = v4;
  v14[0] = v4;
  v14[1] = xmmword_100A3BC10;
  v22 = v15;
  v23 = v14;
  v13[0] = v2;
  v13[1] = xmmword_100A4C530;
  v12[0] = v3;
  v12[1] = v5;
  v24 = v13;
  v25 = v12;
  v11[0] = v4;
  v11[1] = xmmword_100A3BC00;
  v10[0] = v4;
  v10[1] = xmmword_100A3BC20;
  v26 = v11;
  v27 = v10;
  v9[0] = v4;
  v9[1] = xmmword_100A3BC30;
  v8[0] = v3;
  v8[1] = xmmword_100A3BC30;
  v28 = v9;
  v29 = v8;
  v7[0] = v3;
  v7[1] = xmmword_100A3BC00;
  sub_10004E584(v7, v3);
  qword_100D8FD50 = v6;
}

void sub_100424104()
{
  v24[4] = xmmword_100A3BB70;
  v24[5] = xmmword_100A3BBB0;
  sub_100069580(0.0, 0.0, xmmword_100A2C3F0, xmmword_100A3BC10);
  v25[0] = v0;
  v25[1] = v1;
  v24[0] = v2;
  v24[1] = xmmword_100A3AEB0;
  v23[0] = v3;
  v23[1] = xmmword_100A3BC30;
  v25[2] = v24;
  v25[3] = v23;
  v22[0] = v2;
  v22[1] = v4;
  v21[0] = v4;
  v21[1] = xmmword_100A3BC30;
  v25[4] = v22;
  v25[5] = v21;
  v20[0] = v3;
  v20[1] = v5;
  v19[0] = v4;
  v19[1] = xmmword_100A3BC20;
  v25[6] = v20;
  v25[7] = v19;
  v18[0] = v4;
  v18[1] = xmmword_100A3BB80;
  v17[0] = v4;
  v17[1] = xmmword_100A3BC50;
  v25[8] = v18;
  v25[9] = v17;
  v25[10] = &v16;
  v25[11] = &v15;
  v25[12] = &v14;
  sub_100553868(v25, v6, v7, v8, v9, v10, v11, v12, v3, *(&v3 + 1), 6, 7, v3, *(&v3 + 1), 8, 9, v3, *(&v3 + 1), 5, 6);
  qword_100D8FD58 = v13;
}

void sub_100424200()
{
  v13[0] = xmmword_100A3BB70;
  v13[1] = xmmword_100A3BBB0;
  v12[0] = xmmword_100A3BBD0;
  v12[1] = xmmword_100A3BC50;
  v14 = v13;
  v15 = v12;
  v11[0] = xmmword_100A3BB70;
  v11[1] = xmmword_100A3AEB0;
  v10[0] = xmmword_100A3BBD0;
  v10[1] = xmmword_100A3BC60;
  v16 = v11;
  v17 = v10;
  v9[0] = xmmword_100A3BB70;
  v9[1] = xmmword_100A2C3F0;
  v8[0] = xmmword_100A2C3F0;
  v8[1] = xmmword_100A3BC50;
  v18 = v9;
  v19 = v8;
  v7[0] = xmmword_100A2D320;
  v7[1] = xmmword_100A3BB70;
  v6[0] = xmmword_100A3BC40;
  v6[1] = xmmword_100A3BC60;
  v20 = v7;
  v21 = v6;
  v5[0] = xmmword_100A3BC40;
  v5[1] = xmmword_100A3BC50;
  v4[0] = xmmword_100A3BBB0;
  v4[1] = xmmword_100A3BC50;
  v22 = v5;
  v23 = v4;
  v3[0] = xmmword_100A3BC40;
  v3[1] = xmmword_100A3BC40;
  v2[0] = xmmword_100A3BBD0;
  v2[1] = xmmword_100A3BC40;
  v24 = v3;
  v25 = v2;
  v1[0] = xmmword_100A3BC40;
  v1[1] = xmmword_100A3BBD0;
  sub_10004E584(v1, 2);
  qword_100D8FD60 = v0;
}

void sub_1004242FC()
{
  v24[4] = xmmword_100A3BB70;
  v24[5] = xmmword_100A3BBB0;
  sub_100069580(0.0, 0.0, xmmword_100A3BBD0, xmmword_100A3BC60);
  v25[0] = v0;
  v25[1] = v1;
  v24[0] = v2;
  v24[1] = xmmword_100A3F970;
  v23[0] = v3;
  v23[1] = xmmword_100A3BC40;
  v25[2] = v24;
  v25[3] = v23;
  v22[0] = xmmword_100A2D320;
  v22[1] = v4;
  v21[0] = xmmword_100A2C3F0;
  v21[1] = v5;
  v25[4] = v22;
  v25[5] = v21;
  v20[0] = xmmword_100A3BC40;
  v20[1] = xmmword_100A3BC40;
  v19[0] = xmmword_100A3BC40;
  v19[1] = v5;
  v25[6] = v20;
  v25[7] = v19;
  v18[0] = v4;
  v18[1] = v5;
  v17[0] = xmmword_100A3BC40;
  v17[1] = v3;
  v25[8] = v18;
  v25[9] = v17;
  v25[10] = &v16;
  v25[11] = &v15;
  v25[12] = &v14;
  sub_100553868(v25, v6, v7, v8, v9, v10, v11, v12, v3, *(&v3 + 1), 1, 2, 3, 4, 1, 2, v3, *(&v3 + 1), v3, *(&v3 + 1));
  qword_100D8FD68 = v13;
}

void sub_1004243F0()
{
  v18[4] = xmmword_100A3BB70;
  v18[5] = xmmword_100A3BBB0;
  sub_100069580(0.0, 0.0, xmmword_100A3BC50, xmmword_100A3BC60);
  v19 = v0;
  v20 = v1;
  v18[0] = v2;
  v18[1] = xmmword_100A3F970;
  v17[0] = xmmword_100A3BC40;
  v17[1] = xmmword_100A3BC40;
  v21 = v18;
  v22 = v17;
  v16[0] = xmmword_100A41B90;
  v16[1] = v3;
  v15[0] = xmmword_100A3BBD0;
  v15[1] = v4;
  v23 = v16;
  v24 = v15;
  v11[1] = v4;
  v12 = xmmword_100A3BC90;
  v13 = 1;
  v14 = 4;
  v10[1] = v4;
  v11[0] = v2;
  v25 = &v12;
  v26 = v11;
  v9[1] = v4;
  v10[0] = v4;
  v8[1] = xmmword_100A3BC40;
  v9[0] = xmmword_100A3BC40;
  v27 = v10;
  v28 = v9;
  v7[1] = xmmword_100A3BBD0;
  v8[0] = xmmword_100A3BBD0;
  v6[1] = xmmword_100A3BBD0;
  v7[0] = xmmword_100A3BC40;
  v29 = v8;
  v30 = v7;
  v6[0] = xmmword_100A3BBD0;
  sub_10004E584(v6, 2);
  qword_100D8FD70 = v5;
}

uint64_t sub_100424504(uint64_t a1, void (*a2)(char *))
{
  v4 = type metadata accessor for LocationComponentContainerViewModel();
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_100003C38();
  v8 = v6 - v7;
  __chkstk_darwin(v9);
  v11 = v29 - v10;
  v12 = type metadata accessor for LocationViewComponent();
  v13 = sub_100003810(v12);
  __chkstk_darwin(v13);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&qword_100CA5008);
  v17 = sub_100003810(v16);
  __chkstk_darwin(v17);
  sub_100003C38();
  v20 = v18 - v19;
  __chkstk_darwin(v21);
  v23 = v29 - v22;

  sub_1005D71C4(v24, a2);
  v29[1] = v25;

  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather32LocationElevatedAqiConfiguration8_Storage_map, v15, type metadata accessor for LocationViewComponent);
  a2(v15);
  sub_1003169AC(v15, type metadata accessor for LocationViewComponent);
  sub_10001B350(v23, 0, 1, v4);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather32LocationElevatedAqiConfiguration8_Storage_airQuality, v15, type metadata accessor for LocationViewComponent);
  a2(v15);
  sub_1003169AC(v15, type metadata accessor for LocationViewComponent);
  sub_100035AD0(v23, v20, &qword_100CA5008);
  sub_100003E24();
  sub_10031694C(v11, v8, v26);
  type metadata accessor for ElevatedAqiContent._Storage(0);
  swift_allocObject();
  v27 = sub_1002BE860();
  sub_1003169AC(v11, v15);
  sub_1000180EC(v23, &qword_100CA5008);
  return v27;
}

uint64_t sub_100424794(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = &v121 - v4;
  v6 = type metadata accessor for LocationComponentContainerViewModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV7Weather18ElevatedAqiContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a1 + v10, v5, &qword_100CA5008);
  v11 = sub_100024D10(v5, 1, v6);
  v126 = a1;
  if (v11 == 1)
  {
    sub_1000180EC(v5, &qword_100CA5008);
    sub_10022C350(&qword_100CAC7E8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A3ECD0;
    v13 = sub_10022C350(&qword_100CAC7F0);
    v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v15 = *(v7 + 72);
    v16 = *(v7 + 80);
    v17 = v13;
    v18 = swift_allocObject();
    sub_10001361C(v18, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(a1 + v19, v18 + v14, v20);
    *(v12 + 32) = sub_1001B38A0(v18);
    *(v12 + 40) = v21;
    *(v12 + 48) = v22;
    v23 = swift_allocObject();
    sub_100003E18(v23);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v23 + v14, v7);
    *(v12 + 56) = sub_1001B38A0(v23);
    *(v12 + 64) = v24;
    *(v12 + 72) = v25;
    v123 = v17;
    v26 = swift_allocObject();
    sub_100003E18(v26);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v26 + v14, v7);
    *(v12 + 80) = sub_1001B38A0(v26);
    *(v12 + 88) = v27;
    *(v12 + 96) = v28;
    v29 = v15;
    v124 = v14 + 2 * v15;
    v125 = v15;
    v30 = v16;
    v31 = swift_allocObject();
    v32 = sub_10001361C(v31, xmmword_100A2D320) + v14;
    v33 = *(a1 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    sub_10031694C(v33 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v32[v29], v7);
    *(v12 + 104) = sub_1001B38A0(v31);
    *(v12 + 112) = v34;
    *(v12 + 120) = v35;
    v122 = v30;
    v36 = swift_allocObject();
    sub_1000056EC(v36);
    v38 = v37 + v14;
    v39 = v126;
    v40 = *(v126 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v40 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v38 + v125, v7);
    *(v12 + 128) = sub_1001B38A0(v31);
    *(v12 + 136) = v41;
    *(v12 + 144) = v42;
    v43 = swift_allocObject();
    sub_1000056EC(v43);
    v45 = v44 + v14;
    v46 = *(v39 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v47 = v125;
    sub_10031694C(v46 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v45 + v125, v7);
    *(v12 + 152) = sub_1001B38A0(v31);
    *(v12 + 160) = v48;
    *(v12 + 168) = v49;
    v50 = swift_allocObject();
    sub_1000056EC(v50);
    v52 = v51 + v14;
    v53 = v126;
    v54 = *(v126 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    v55 = v52 + v47;
    v56 = v47;
    sub_10031694C(v54 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v55, v7);
    *(v12 + 176) = sub_1001B38A0(v31);
    *(v12 + 184) = v57;
    *(v12 + 192) = v58;
    v59 = swift_allocObject();
    sub_100003E18(v59);
    v61 = v60 + v14;
    v62 = *(v53 + 16);
    sub_10031694C(v62 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v60 + v14, v7);
    sub_10031694C(v62 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v61 + v56, v7);
    *(v12 + 200) = sub_1001B38A0(v59);
    *(v12 + 208) = v63;
    *(v12 + 216) = v64;
  }

  else
  {
    sub_1001B6FB0(v5, v9, type metadata accessor for LocationComponentContainerViewModel);
    sub_10022C350(&qword_100CAC7E8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A41BA0;
    sub_10022C350(&qword_100CAC7F0);
    v65 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v66 = *(v7 + 72);
    v67 = *(v7 + 80);
    v68 = swift_allocObject();
    sub_10001361C(v68, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(a1 + v69, v68 + v65, v70);
    *(v12 + 32) = sub_1001B38A0(v68);
    *(v12 + 40) = v71;
    *(v12 + 48) = v72;
    sub_1000167B0();
    v73 = swift_allocObject();
    sub_1000056EC(v73);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v68 + v65, v7);
    *(v12 + 56) = sub_1001B38A0(v68);
    *(v12 + 64) = v74;
    *(v12 + 72) = v75;
    sub_1000167B0();
    v76 = swift_allocObject();
    sub_1000056EC(v76);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v68 + v65, v7);
    *(v12 + 80) = sub_1001B38A0(v68);
    *(v12 + 88) = v77;
    *(v12 + 96) = v78;
    sub_1000167B0();
    v79 = swift_allocObject();
    sub_1000056EC(v79);
    sub_10031694C(v9, v80 + v65, v7);
    *(v12 + 104) = sub_1001B38A0(v68);
    *(v12 + 112) = v81;
    *(v12 + 120) = v82;
    v122 = v65 + 2 * v66;
    v83 = v66;
    v124 = v66;
    sub_1000167B0();
    v84 = swift_allocObject();
    v85 = sub_10001361C(v84, xmmword_100A2D320);
    v123 = v9;
    v86 = v85 + v65;
    v87 = a1;
    v88 = *(a1 + 16);
    v89 = v87;
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    sub_10031694C(v88 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v86[v83], v7);
    *(v12 + 128) = sub_1001B38A0(v84);
    *(v12 + 136) = v90;
    *(v12 + 144) = v91;
    v125 = v67;
    v92 = swift_allocObject();
    sub_100003E18(v92);
    v94 = v93 + v65;
    v95 = *(v89 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v95 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v94 + v124, v7);
    *(v12 + 152) = sub_1001B38A0(v92);
    *(v12 + 160) = v96;
    *(v12 + 168) = v97;
    sub_1000167B0();
    v98 = swift_allocObject();
    sub_100003E18(v98);
    v100 = v99 + v65;
    v101 = v126;
    v102 = *(v126 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v103 = v124;
    sub_10031694C(v102 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v100 + v124, v7);
    *(v12 + 176) = sub_1001B38A0(v98);
    *(v12 + 184) = v104;
    *(v12 + 192) = v105;
    v106 = sub_100017774();
    sub_100003E18(v106);
    v108 = v107 + v65;
    v109 = *(v101 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    v110 = v108 + v103;
    v111 = v103;
    sub_10031694C(v109 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v110, v7);
    *(v12 + 200) = sub_1001B38A0(v106);
    *(v12 + 208) = v112;
    *(v12 + 216) = v113;
    v114 = sub_100017774();
    sub_100003E18(v114);
    v116 = v115 + v65;
    v117 = *(v101 + 16);
    sub_10031694C(v117 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v115 + v65, v7);
    sub_10031694C(v117 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v116 + v111, v7);
    *(v12 + 224) = sub_1001B38A0(v114);
    *(v12 + 232) = v118;
    *(v12 + 240) = v119;
    sub_1003169AC(v123, v7);
  }

  return v12;
}

uint64_t sub_100424FE4(char a1, char a2, uint64_t a3)
{
  v80 = type metadata accessor for TipPriorityQueue.GridEntry();
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_100003C38();
  sub_100003908();
  __chkstk_darwin(v7);
  sub_100003908();
  __chkstk_darwin(v8);
  v77 = &v73 - v9;
  v10 = sub_10022C350(&qword_100CA5008);
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  v13 = &v73 - v12;
  v14 = type metadata accessor for LocationComponentViewModel();
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  sub_100003C38();
  sub_100003908();
  __chkstk_darwin(v16);
  sub_100003908();
  __chkstk_darwin(v17);
  v19 = &v73 - v18;
  __chkstk_darwin(v20);
  v22 = &v73 - v21;
  __chkstk_darwin(v23);
  v25 = &v73 - v24;
  __chkstk_darwin(v26);
  v28 = &v73 - v27;
  v29 = sub_10022C350(&qword_100CAC7F8);
  v30 = sub_100003810(v29);
  __chkstk_darwin(v30);
  sub_100003C38();
  sub_100003908();
  __chkstk_darwin(v31);
  sub_100003908();
  __chkstk_darwin(v32);
  v34 = &v73 - v33;
  __chkstk_darwin(v35);
  v37 = &v73 - v36;
  v38 = sub_100423E98(a1, a2);
  v39 = OBJC_IVAR____TtCV7Weather18ElevatedAqiContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a3 + v39, v13, &qword_100CA5008);
  v40 = type metadata accessor for LocationComponentContainerViewModel();
  if (sub_100024D10(v13, 1, v40) == 1)
  {
    sub_1000180EC(v13, &qword_100CA5008);
  }

  else
  {
    sub_10001BD64();
    sub_10031694C(&v13[v41], v25, v42);
    sub_1003169AC(v13, type metadata accessor for LocationComponentContainerViewModel);
    sub_100011474();
    sub_1001B6FB0(v25, v28, v43);
    sub_100566A5C(v38, v82);
    if ((v83 & 1) == 0)
    {
      sub_100011474();
      sub_1001B6FB0(v28, v34, v46);
      v44 = 0;
      v45 = v80;
      v47 = &v34[*(v80 + 20)];
      v48 = v82[1];
      *v47 = v82[0];
      *(v47 + 1) = v48;
      goto LABEL_7;
    }

    sub_1003169AC(v28, type metadata accessor for LocationComponentViewModel);
  }

  v44 = 1;
  v45 = v80;
LABEL_7:
  sub_10001B350(v34, v44, 1, v45);
  sub_1003168DC(v34, v37);
  sub_10031694C(a3 + *(v40 + 20) + OBJC_IVAR____TtCV7Weather18ElevatedAqiContent8_Storage_airQuality, v22, type metadata accessor for LocationComponentViewModel);
  sub_100566A40(v38, v84);
  sub_100924AFC(v22, v84, v81);
  sub_10031694C(*(a3 + 16) + *(v40 + 20) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v19, type metadata accessor for LocationComponentViewModel);
  sub_100566A94(v38, v85);
  v49 = v75;
  if (v86 & 1) != 0 || (sub_100011474(), v50 = v77, sub_1001B6FB0(v19, v77, v51), v52 = (v50 + *(v45 + 20)), v53 = v85[1], *v52 = v85[0], v52[1] = v53, sub_100035AD0(v37, v49, &qword_100CAC7F8), sub_10001BD64(), v56 = v74, sub_10031694C(v54 + v55, v74, v57), sub_100566AB0(v38, v87), v58 = v78, (v88))
  {
    sub_100003E3C();
  }

  else
  {
    sub_100011474();
    sub_1001B6FB0(v56, v58, v59);
    v60 = (v58 + *(v45 + 20));
    v61 = v87[1];
    *v60 = v87[0];
    v60[1] = v61;
    sub_10001BD64();
    v64 = v76;
    sub_10031694C(v62 + v63, v76, v65);
    sub_100566AE8(v38, v89);
    if ((v90 & 1) == 0)
    {

      sub_100011474();
      v66 = v64;
      v67 = v79;
      sub_1001B6FB0(v66, v79, v68);
      v69 = (v67 + *(v45 + 20));
      v70 = v89[1];
      *v69 = v89[0];
      v69[1] = v70;
      v71 = sub_100924C14(v81, v50, v49, v58, v67);
      sub_1000180EC(v37, &qword_100CAC7F8);
      return v71;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10042568C()
{
  sub_100003B38();
  type metadata accessor for ScrubberDateSelection();
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000037D8();
  v5 = v4 - v3;
  v6 = sub_10022C350(&qword_100CA6BC0);
  sub_100003810(v6);
  sub_100003828();
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v10 = sub_10022C350(&qword_100CA6C90);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  if ((static Location.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_14;
  }

  v21 = type metadata accessor for MoonScrubberInput();
  v14 = *(v21 + 20);
  v15 = *(v10 + 48);
  sub_100035AD0(v1 + v14, v13, &qword_100CA6BC0);
  sub_100035AD0(v0 + v14, &v13[v15], &qword_100CA6BC0);
  sub_10000E7EC(v13);
  if (v16)
  {
    sub_10000E7EC(&v13[v15]);
    if (v16)
    {
      sub_1000180EC(v13, &qword_100CA6BC0);
      goto LABEL_12;
    }

LABEL_10:
    sub_1000180EC(v13, &qword_100CA6C90);
LABEL_14:
    v18 = 0;
    return v18 & 1;
  }

  sub_100035AD0(v13, v9, &qword_100CA6BC0);
  sub_10000E7EC(&v13[v15]);
  if (v16)
  {
    sub_1004268E4(v9, type metadata accessor for ScrubberDateSelection);
    goto LABEL_10;
  }

  sub_10042688C();
  v17 = sub_1009B93F4(v9, v5);
  sub_1004268E4(v5, type metadata accessor for ScrubberDateSelection);
  sub_1004268E4(v9, type metadata accessor for ScrubberDateSelection);
  sub_1000180EC(v13, &qword_100CA6BC0);
  if ((v17 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_14;
  }

  v18 = static Locale.== infix(_:_:)();
  return v18 & 1;
}

uint64_t sub_100425938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v3 = sub_10022C350(&qword_100CA6BC0);
  sub_100003810(v3);
  sub_100003828();
  __chkstk_darwin(v4);
  v110 = &v93 - v5;
  sub_1000038CC();
  v6 = type metadata accessor for TimeState();
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_1000037D8();
  v107 = v9 - v8;
  sub_1000038CC();
  type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v99 = v11;
  v100 = v10;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v98 = v13 - v12;
  v14 = sub_10022C350(&qword_100CA75C8);
  sub_100003810(v14);
  sub_100003828();
  __chkstk_darwin(v15);
  v101 = &v93 - v16;
  v17 = sub_10022C350(&unk_100CB2CF0);
  sub_100003810(v17);
  sub_100003828();
  __chkstk_darwin(v18);
  v104 = &v93 - v19;
  v20 = sub_1000038CC();
  v102 = type metadata accessor for WeatherData(v20);
  sub_1000037E8();
  __chkstk_darwin(v21);
  sub_1000037D8();
  v103 = v23 - v22;
  v24 = sub_10022C350(&qword_100CA37B0);
  sub_100003810(v24);
  sub_100003828();
  __chkstk_darwin(v25);
  v27 = &v93 - v26;
  v28 = type metadata accessor for LocationWeatherDataState(0);
  sub_1000037E8();
  v30 = __chkstk_darwin(v29);
  v105 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v106 = &v93 - v32;
  sub_1000038CC();
  v33 = type metadata accessor for Location();
  sub_1000037C4();
  v35 = v34;
  __chkstk_darwin(v36);
  sub_1000037D8();
  v39 = v38 - v37;
  v40 = type metadata accessor for Date();
  sub_1000037C4();
  v111 = v41;
  __chkstk_darwin(v42);
  sub_1000037D8();
  v108 = v44 - v43;
  v45 = sub_10022C350(&qword_100CA75D0);
  sub_100003810(v45);
  sub_100003828();
  __chkstk_darwin(v46);
  v48 = &v93 - v47;
  v49 = type metadata accessor for MoonDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v50);
  sub_1000037D8();
  v53 = v52 - v51;
  sub_1002B6FC4(a1, v48);
  if (sub_100024D10(v48, 1, v49) != 1)
  {
    v109 = v40;
    sub_10042688C();
    v57 = *(v35 + 16);
    v95 = v39;
    v96 = v33;
    v57(v39, v53, v33);
    v97 = a1;
    v58 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

    v59 = Location.id.getter();
    sub_1000864C0(v59, v60, v58);

    v61 = sub_100024D10(v27, 1, v28);
    v94 = v35;
    if (v61 == 1)
    {
      sub_1000180EC(v27, &qword_100CA37B0);
      v63 = v111;
      v62 = v112;
    }

    else
    {
      v64 = v106;
      sub_10042688C();
      v65 = v105;
      sub_1000862E8();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v63 = v111;
      if (EnumCaseMultiPayload == 1)
      {
        v67 = sub_10022C350(&qword_100CA75D8);
        v68 = *(v67 + 48);
        v69 = *(v67 + 64);
        v70 = v103;
        sub_10042688C();
        sub_1004268E4(v65 + v69, type metadata accessor for NewsDataModel);
        sub_1004268E4(v65 + v68, type metadata accessor for PreprocessedWeatherData);
        v71 = v101;
        sub_100035AD0(v70 + *(v102 + 36), v101, &qword_100CA75C8);
        v72 = type metadata accessor for WeatherDataOverrides();
        v73 = sub_100024D10(v71, 1, v72);
        v62 = v112;
        v74 = v109;
        if (v73 == 1)
        {
          sub_1000180EC(v71, &qword_100CA75C8);
          v75 = v104;
          sub_10001B350(v104, 1, 1, v74);
          v76 = v95;
          v77 = v108;
        }

        else
        {
          v75 = v104;
          sub_100035AD0(v71, v104, &unk_100CB2CF0);
          sub_1004268E4(v71, type metadata accessor for WeatherDataOverrides);
          v91 = sub_100024D10(v75, 1, v74);
          v76 = v95;
          v77 = v108;
          if (v91 != 1)
          {
            sub_100005D1C();
            sub_10000FF74();
            v63 = v111;
            (*(v111 + 32))(v77, v75, v74);
            v81 = v96;
            v80 = v97;
            goto LABEL_10;
          }
        }

        sub_1000180EC(v75, &unk_100CB2CF0);
        v92 = v98;
        WeatherDataModel.currentWeather.getter();
        CurrentWeather.date.getter();
        (*(v99 + 8))(v92, v100);
        sub_100005D1C();
        sub_10000FF74();
        v81 = v96;
        v80 = v97;
        v63 = v111;
LABEL_10:
        v82 = v110;
        sub_100426248(v53, v77, v76, v110);
        sub_1004268E4(v53, type metadata accessor for MoonDetailViewState);
        v83 = v80 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        swift_beginAccess();
        v84 = v76;
        v85 = *(type metadata accessor for EnvironmentState() + 32);
        v86 = type metadata accessor for MoonScrubberInput();
        v87 = v77;
        v88 = v86[7];
        type metadata accessor for Locale();
        sub_1000037E8();
        (*(v89 + 16))(v62 + v88, v83 + v85);
        (*(v94 + 32))(v62, v84, v81);
        sub_10042681C(v82, v62 + v86[5]);
        (*(v63 + 32))(v62 + v86[6], v87, v109);
        v55 = v62;
        v56 = 0;
        v54 = v86;
        return sub_10001B350(v55, v56, 1, v54);
      }

      sub_1004268E4(v64, type metadata accessor for LocationWeatherDataState);
      sub_1004268E4(v65, type metadata accessor for LocationWeatherDataState);
      v62 = v112;
    }

    v78 = v109;
    v79 = v107;
    v77 = v108;
    v80 = v97;
    sub_1000862E8();
    (*(v63 + 32))(v77, v79, v78);
    v76 = v95;
    v81 = v96;
    goto LABEL_10;
  }

  sub_1000180EC(v48, &qword_100CA75D0);
  v54 = type metadata accessor for MoonScrubberInput();
  v55 = v112;
  v56 = 1;
  return sub_10001B350(v55, v56, 1, v54);
}

uint64_t sub_100426248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a3;
  v39 = a2;
  v42 = type metadata accessor for TimeZone();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v36 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Calendar();
  v37 = *(v7 - 8);
  v38 = v7;
  __chkstk_darwin(v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v43 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v36 - v15;
  __chkstk_darwin(v14);
  v18 = &v36 - v17;
  v19 = sub_10022C350(qword_100CA66A0);
  __chkstk_darwin(v19 - 8);
  v21 = &v36 - v20;
  v22 = type metadata accessor for MoonDetailViewState();
  v23 = a4;
  sub_100035AD0(a1 + *(v22 + 20), v21, qword_100CA66A0);
  v24 = type metadata accessor for MoonDetailSelectedDate();
  v25 = 1;
  if (sub_100024D10(v21, 1, v24) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v27 = v43;
        v28 = *(v43 + 32);
        v28(v18, v21, v10);
        if (static Date.== infix(_:_:)())
        {
          (*(v27 + 8))(v18, v10);
          v29 = v23;
          v30 = 1;
LABEL_10:
          sub_10001B350(v29, v30, 1, v10);
          v25 = 0;
          goto LABEL_11;
        }

        v28(v23, v18, v10);
      }

      else
      {
        v31 = v43;
        v32 = *(v43 + 32);
        v32(v16, v21, v10);
        v33 = v36;
        Location.timeZone.getter();
        static Calendar.currentCalendar(with:)();
        (*(v40 + 8))(v33, v42);
        Calendar.startOfDay(for:)();
        (*(v37 + 8))(v9, v38);
        (*(v31 + 8))(v16, v10);
        v32(v23, v13, v10);
      }

      v29 = v23;
      v30 = 0;
      goto LABEL_10;
    }

    sub_1004268E4(v21, type metadata accessor for MoonDetailSelectedDate);
  }

LABEL_11:
  v34 = type metadata accessor for ScrubberDateSelection();
  return sub_10001B350(v23, v25, 1, v34);
}

uint64_t type metadata accessor for MoonScrubberInput()
{
  result = qword_100CB85E8;
  if (!qword_100CB85E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100426710()
{
  type metadata accessor for Location();
  if (v0 <= 0x3F)
  {
    sub_1004267C4();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Locale();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1004267C4()
{
  if (!qword_100CA6C30)
  {
    type metadata accessor for ScrubberDateSelection();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CA6C30);
    }
  }
}

uint64_t sub_10042681C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA6BC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10042688C()
{
  v2 = sub_100003B38();
  v3(v2);
  sub_1000037E8();
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_1004268E4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10042693C()
{
  v0 = type metadata accessor for LocationComponentHeaderMetrics(0);
  sub_100007074(v0, qword_100CB8628);
  v1 = sub_10000703C(v0, qword_100CB8628);
  *v1 = 0;
  *(v1 + 8) = 0xE000000000000000;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  type metadata accessor for LocationComponentHeaderViewModel(0);
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  result = swift_storeEnumTagMultiPayload();
  *(v1 + v0[5]) = 0;
  *(v1 + v0[6]) = 0;
  v3 = v1 + v0[7];
  *v3 = 0;
  *(v3 + 8) = 1;
  *(v1 + v0[8]) = 0;
  return result;
}

uint64_t sub_1004269DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100427908();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_100426A40()
{
  v1 = v0;
  type metadata accessor for LocationComponentHeaderViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000037D8();
  v5 = (v4 - v3);
  sub_10019937C(v1, v4 - v3, type metadata accessor for LocationComponentHeaderViewModel);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1001995A8(v5, type metadata accessor for LocationComponentHeaderViewModel);
    return 0;
  }

  else
  {
    if (v5[6])
    {
      v6 = v5[5];
    }

    else
    {
      v6 = *v5;
    }
  }

  return v6;
}

uint64_t sub_100426B48(uint64_t a1, uint64_t a2)
{
  sub_100357AA8();
  if ((v4 & 1) == 0 || (v5 = type metadata accessor for LocationComponentHeaderMetrics(0), *(a1 + v5[5]) != *(a2 + v5[5])) || *(a1 + v5[6]) != *(a2 + v5[6]))
  {
LABEL_10:
    LOBYTE(v10) = 0;
    return v10 & 1;
  }

  v6 = v5[7];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 8);
  if ((v8 & 1) == 0)
  {
    if (*v7 != *v9)
    {
      LOBYTE(v10) = 1;
    }

    if ((v10 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (v10)
  {
LABEL_12:
    LOBYTE(v10) = *(a1 + v5[8]) ^ *(a2 + v5[8]) ^ 1;
  }

  return v10 & 1;
}

uint64_t sub_100426BFC()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  sub_1000037D8();
  v5 = v4 - v3;
  v6 = v0 + *(type metadata accessor for ComputeAppropriateLocationComponentHeaderViewModelModifier(0) + 36);
  v7 = *v6;
  v8 = *(v6 + 8);
  if (*(v6 + 9) != 1)
  {

    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100109A3C(v7, v8, 0);
    (*(v2 + 8))(v5, v1);
    return v11;
  }

  return v7;
}

uint64_t sub_100426D68(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v37 = type metadata accessor for LocationComponentHeaderViewModel(0);
  __chkstk_darwin(v37);
  v36 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CA3D60);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_10022C350(&qword_100CA3D68);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  v10 = type metadata accessor for Text.Measurements.Context();
  v32 = *(v10 - 8);
  v33 = v10;
  __chkstk_darwin(v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LocationComponentHeaderMetricsComputer(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v31 - v17;
  v35 = a1;
  sub_10019937C(a1, &v31 - v17, type metadata accessor for LocationComponentHeaderMetricsComputer);
  v19 = sub_1004270FC();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  result = sub_1001995A8(v18, type metadata accessor for LocationComponentHeaderMetricsComputer);
  if (v25)
  {
    v27 = type metadata accessor for Text.WritingMode();
    sub_10001B350(v9, 1, 1, v27);
    v28 = type metadata accessor for Text.Suffix();
    sub_10001B350(v6, 1, 1, v28);
    Text.Measurements.Context.init(writingMode:textSuffix:)();
    v29 = v23 & 1;
    v38 = v29;
    Text.Measurements.size(of:in:context:)();
    sub_10010CD64(v19, v21, v29);

    (*(v32 + 8))(v12, v33);
    sub_10019937C(v35, v15, type metadata accessor for LocationComponentHeaderMetricsComputer);
    v30 = v36;
    sub_10019937C(v15, v36, type metadata accessor for LocationComponentHeaderViewModel);
    sub_1001995A8(v15, type metadata accessor for LocationComponentHeaderMetricsComputer);
    swift_getEnumCaseMultiPayload();
    return sub_1001995A8(v30, type metadata accessor for LocationComponentHeaderViewModel);
  }

  return result;
}

uint64_t sub_1004270FC()
{
  v1 = v0;
  v2 = type metadata accessor for Font.Leading();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for LocationComponentHeaderViewModel(0);
  __chkstk_darwin(v6);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10019937C(v1, v8, type metadata accessor for LocationComponentHeaderViewModel);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1001995A8(v8, type metadata accessor for LocationComponentHeaderViewModel);
    return 0;
  }

  else
  {
    if (*(v1 + *(type metadata accessor for LocationComponentHeaderMetricsComputer(0) + 52)) == 1)
    {
      static Font.caption.getter();
    }

    else
    {
      static Font.footnote.getter();
    }

    (*(v3 + 104))(v5, enum case for Font.Leading.tight(_:), v2);
    Font.leading(_:)();

    (*(v3 + 8))(v5, v2);

    Image.init(systemName:)();

    v10 = Text.init(_:)();
    v12 = v11;
    v14 = v13;

    v9 = Text.font(_:)();

    sub_10010CD64(v10, v12, v14 & 1);
  }

  return v9;
}

double sub_1004273A4()
{
  v1 = type metadata accessor for LocationComponentHeaderViewModel(0);
  __chkstk_darwin(v1);
  v3 = &__dst[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = 11.0;
  if ((sub_1001B6028() & 1) == 0)
  {
    sub_10019937C(v0, v3, type metadata accessor for LocationComponentHeaderViewModel);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      memcpy(__dst, v3, 0x79uLL);
      sub_1004274B4(__dst);
      v4 = v5;
      sub_10035802C(__dst);
    }

    else
    {
      sub_1001995A8(v3, type metadata accessor for LocationComponentHeaderViewModel);
      return sub_1001884C0();
    }
  }

  return v4;
}

uint64_t sub_1004274B4(uint64_t a1)
{
  v24 = a1;
  v1 = sub_10022C350(&qword_100CA3D60);
  __chkstk_darwin(v1 - 8);
  v3 = v21 - v2;
  v4 = sub_10022C350(&qword_100CA3D68);
  __chkstk_darwin(v4 - 8);
  v6 = v21 - v5;
  v30 = type metadata accessor for Text.Measurements.Context();
  v7 = *(v30 - 8);
  __chkstk_darwin(v30);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1009CC590();
  v25 = v11;
  v26 = v10;
  v28 = v12;
  v27 = v13;
  v29 = type metadata accessor for LocationComponentHeaderMetricsComputer(0);
  v21[2] = *(v29 + 20);
  v23 = type metadata accessor for Text.WritingMode();
  sub_10001B350(v6, 1, 1, v23);
  v22 = type metadata accessor for Text.Suffix();
  sub_10001B350(v3, 1, 1, v22);
  Text.Measurements.Context.init(writingMode:textSuffix:)();
  Text.Measurements.size(of:in:context:)();
  v14 = *(v7 + 8);
  v21[1] = v7 + 8;
  v14(v9, v30);
  sub_100427828();
  v15 = sub_1009CD1B8(*(v24 + 32), *(v24 + 40));
  v17 = v16;
  v19 = v18;
  sub_10001B350(v6, 1, 1, v23);
  sub_10001B350(v3, 1, 1, v22);
  Text.Measurements.Context.init(writingMode:textSuffix:)();
  Text.Measurements.size(of:in:context:)();
  v14(v9, v30);
  [objc_opt_self() wu_systemUsesExuberatedLineHeight];
  sub_10010CD64(v15, v17, v19 & 1);

  sub_10010CD64(v26, v25, v28 & 1);
}

unint64_t sub_100427908()
{
  result = qword_100CB87B0;
  if (!qword_100CB87B0)
  {
    type metadata accessor for LocationComponentHeaderMetrics(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB87B0);
  }

  return result;
}

uint64_t sub_100427960(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CB71A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1004279F0()
{
  type metadata accessor for LocationComponentHeaderViewModel(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Text.Measurements();
    if (v1 <= 0x3F)
    {
      type metadata accessor for LayoutDirection();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ContentSizeCategory();
        if (v3 <= 0x3F)
        {
          sub_1001B71C4(319, &qword_100CAEAA0, &type metadata for Int, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_1001B71C4(319, &qword_100CAFF88, &type metadata for CGFloat, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              type metadata accessor for DynamicTypeSize();
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

unint64_t sub_100427B60()
{
  result = qword_100CB8890;
  if (!qword_100CB8890)
  {
    sub_10022E824(&qword_100CB87B8);
    sub_100006F64(&qword_100CB8898, &qword_100CB87C8);
    sub_100006F64(&qword_100CB88A0, &qword_100CB87C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB8890);
  }

  return result;
}

uint64_t sub_100427C58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65646F4D77656976 && a2 == 0xE90000000000006CLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_100427D28(char a1)
{
  if (a1)
  {
    return 1852793705;
  }

  else
  {
    return 0x65646F4D77656976;
  }
}

uint64_t sub_100427D5C(void *a1, void *a2)
{
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v35 = a1[7];
  v36 = a1[6];
  v31 = a1[9];
  v32 = a1[8];
  v27 = a1[11];
  v28 = a1[10];
  v23 = a1[13];
  v24 = a1[12];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v11 = a2[5];
  v33 = a2[7];
  v34 = a2[6];
  v29 = a2[9];
  v30 = a2[8];
  v25 = a2[11];
  v26 = a2[10];
  v12 = *a1 == *a2 && a1[1] == a2[1];
  v21 = a2[13];
  v22 = a2[12];
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v13 = v4 == v8 && v6 == v9;
  if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v14 = v5 == v10 && v7 == v11;
  if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v15 = v36 == v34 && v35 == v33;
  if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v16 = v32 == v30 && v31 == v29;
  if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v17 = v28 == v26 && v27 == v25;
  if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v18 = v24 == v22 && v23 == v21;
  if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (a1[14] == a2[14] && a1[15] == a2[15])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100427F40(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CB88C0);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v13[-v9 - 8];
  sub_1000161C0(a1, a1[3]);
  sub_100428458();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  memcpy(__dst, v3, 0x70uLL);
  memcpy(v14, v3, sizeof(v14));
  __dst[135] = 0;
  sub_100428584(__dst, v13);
  sub_1004285E0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  memcpy(v13, v14, sizeof(v13));
  sub_100428500(v13);
  if (!v2)
  {
    __dst[134] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

void *sub_100428108@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_10022C350(&qword_100CB88A8);
  sub_1000037C4();
  __chkstk_darwin(v4);
  sub_1000161C0(a1, a1[3]);
  sub_100428458();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  __dst[135] = 0;
  sub_1004284AC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  memcpy(__dst, v16, 0x70uLL);
  __dst[134] = 1;
  v5 = KeyedDecodingContainer.decode(_:forKey:)();
  v7 = v6;
  v8 = sub_10001EC68();
  v9(v8);
  memcpy(v12, __dst, 0x70uLL);
  v12[14] = v5;
  v12[15] = v7;
  sub_1001AEF0C(v12, v13);
  sub_100006F14(a1);
  memcpy(v13, __dst, sizeof(v13));
  v14 = v5;
  v15 = v7;
  sub_100428554(v13);
  return memcpy(a2, v12, 0x80uLL);
}

uint64_t sub_100428350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100427C58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100428378(uint64_t a1)
{
  v2 = sub_100428458();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004283B4(uint64_t a1)
{
  v2 = sub_100428458();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1004283F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_100428108(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x80uLL);
  }

  return result;
}

unint64_t sub_100428458()
{
  result = qword_100CB88B0;
  if (!qword_100CB88B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB88B0);
  }

  return result;
}

unint64_t sub_1004284AC()
{
  result = qword_100CB88B8;
  if (!qword_100CB88B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB88B8);
  }

  return result;
}

unint64_t sub_1004285E0()
{
  result = qword_100CB88C8;
  if (!qword_100CB88C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB88C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PrecipitationTotalComponentPreprocessedDataModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_100428714()
{
  result = qword_100CB88D0;
  if (!qword_100CB88D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB88D0);
  }

  return result;
}

unint64_t sub_10042876C()
{
  result = qword_100CB88D8;
  if (!qword_100CB88D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB88D8);
  }

  return result;
}

unint64_t sub_1004287C4()
{
  result = qword_100CB88E0;
  if (!qword_100CB88E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB88E0);
  }

  return result;
}

uint64_t sub_100428860(void *a1, uint64_t *a2)
{
  v59 = type metadata accessor for DetailComponentAction();
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v56 = v6 - v5;
  v7 = sub_10022C350(&qword_100CB8990);
  sub_100003810(v7);
  sub_100003828();
  __chkstk_darwin(v8);
  v57 = &v54[-v9];
  v58 = sub_10022C350(&qword_100CB8A40);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v10);
  v60 = &v54[-v11];
  v12 = a1[1];
  v14 = a1[2];
  v13 = a1[3];
  v15 = *a2;
  v16 = a2[1];
  v18 = a2[2];
  v17 = a2[3];
  if (!v12)
  {
    if (!v16)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (!v16)
  {
LABEL_15:
    v27 = sub_10000FF9C();
    sub_100429240(v27, v28);
    v29 = sub_10001EC78();
    sub_100429240(v29, v30);
    v31 = sub_10001EC78();
    sub_1001A6184(v31, v32);
    v33 = sub_10000FF9C();
LABEL_16:
    sub_1001A6184(v33, v34);
    return 0;
  }

  v19 = *a1 == v15 && v12 == v16;
  if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v45 = sub_10000FF9C();
    sub_100429240(v45, v46);
    v47 = sub_10001EC78();
    sub_100429240(v47, v48);

    v33 = sub_10001EC78();
    goto LABEL_16;
  }

  if (v14 == v18 && v13 == v17)
  {
    sub_100429240(v15, v16);
    v35 = sub_10001EC78();
    sub_100429240(v35, v36);

    v37 = sub_10001EC78();
    sub_1001A6184(v37, v38);
  }

  else
  {
    v55 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v21 = sub_10000FF9C();
    sub_100429240(v21, v22);
    v23 = sub_10001EC78();
    sub_100429240(v23, v24);

    v25 = sub_10001EC78();
    sub_1001A6184(v25, v26);
    if ((v55 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_18:
  v39 = type metadata accessor for DetailComponentContainerViewModel();
  if (sub_1006EC294(a1 + *(v39 + 20), a2 + *(v39 + 20)))
  {
    v40 = *(v39 + 24);
    v41 = *(v58 + 48);
    v42 = a1 + v40;
    v43 = v60;
    sub_100035AD0(v42, v60, &qword_100CB8990);
    sub_100035AD0(a2 + v40, &v43[v41], &qword_100CB8990);
    v44 = v59;
    if (sub_100024D10(v43, 1, v59) == 1)
    {
      if (sub_100024D10(&v43[v41], 1, v44) == 1)
      {
        sub_1000180EC(v43, &qword_100CB8990);
        return 1;
      }

      goto LABEL_25;
    }

    v49 = v57;
    sub_100035AD0(v43, v57, &qword_100CB8990);
    if (sub_100024D10(&v43[v41], 1, v44) == 1)
    {
      sub_100429354(v49, type metadata accessor for DetailComponentAction);
LABEL_25:
      sub_1000180EC(v43, &qword_100CB8A40);
      return 0;
    }

    v51 = &v43[v41];
    v52 = v56;
    sub_1004292F4(v51, v56, type metadata accessor for DetailComponentAction);
    v53 = sub_1004C5658(v49, v52);
    sub_100429354(v52, type metadata accessor for DetailComponentAction);
    sub_100429354(v49, type metadata accessor for DetailComponentAction);
    sub_1000180EC(v43, &qword_100CB8990);
    if (v53)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_100428C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DetailComponentViewModel();
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = sub_10022C350(&qword_100CB8990);
  sub_100003810(v9);
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v13 = sub_10022C350(&qword_100CB8A48);
  sub_100003810(v13);
  sub_100003828();
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v17 = type metadata accessor for NewsArticleComponentViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_1000037D8();
  v21 = v20 - v19;
  sub_100035AD0(a1, v16, &qword_100CB8A48);
  if (sub_100024D10(v16, 1, v17) == 1)
  {
    sub_1000180EC(a1, &qword_100CB8A48);
    sub_1000180EC(v16, &qword_100CB8A48);
    v22 = type metadata accessor for DetailComponentContainerViewModel();
    v23 = a2;
    v24 = 1;
  }

  else
  {
    sub_1004292F4(v16, v21, type metadata accessor for NewsArticleComponentViewModel);
    sub_100428F58(v21, v12);
    v25 = [objc_opt_self() mainBundle];
    v32._object = 0x8000000100AC20A0;
    v26._countAndFlagsBits = 0xD000000000000022;
    v26._object = 0x8000000100AC7890;
    v27._countAndFlagsBits = 1937204558;
    v27._object = 0xE400000000000000;
    v32._countAndFlagsBits = 0xD000000000000021;
    v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v32);

    sub_1000180EC(a1, &qword_100CB8A48);
    sub_1004292F4(v21, v8, type metadata accessor for NewsArticleComponentViewModel);
    *a2 = v28;
    *(a2 + 16) = xmmword_100A4CCD0;
    v29 = type metadata accessor for DetailComponentContainerViewModel();
    sub_1004292F4(v8, a2 + *(v29 + 20), type metadata accessor for DetailComponentViewModel);
    sub_100429284(v12, a2 + *(v29 + 24));
    v23 = a2;
    v24 = 0;
    v22 = v29;
  }

  return sub_10001B350(v23, v24, 1, v22);
}

uint64_t sub_100428F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NewsArticleComponentContentViewModel(0);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NewsArticleComponentViewModel(0);
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CB3AB0);
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100355208(a1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1004292F4(v9, v6, type metadata accessor for NewsArticleComponentContentViewModel);
    (*(v14 + 16))(v12, &v6[*(v4 + 28)], v13);
    sub_100429354(v6, type metadata accessor for NewsArticleComponentContentViewModel);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  sub_10001B350(v12, v17, 1, v13);
  if (sub_100024D10(v12, 1, v13) == 1)
  {
    sub_1000180EC(v12, &qword_100CB3AB0);
    v18 = 1;
  }

  else
  {
    v19 = *(v14 + 32);
    v19(v16, v12, v13);
    v20 = *(sub_10022C350(&qword_100CA6680) + 48);
    v19(a2, v16, v13);
    v18 = 0;
    *(a2 + v20) = 0;
  }

  v21 = type metadata accessor for DetailComponentAction();
  return sub_10001B350(a2, v18, 1, v21);
}

uint64_t sub_100429240(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100429284(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CB8990);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004292F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100429354(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1004293AC@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.preferredMapSize.getter();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

uint64_t sub_100429410@<X0>(uint64_t a1@<X8>)
{
  sub_1009883E0();
  sub_10042F12C(v1, v13);
  v3 = swift_allocObject();
  v4 = v13[1];
  *(v3 + 16) = v13[0];
  *(v3 + 32) = v4;
  *(v3 + 48) = v13[2];
  *(v3 + 64) = v14;
  v5 = sub_10022C350(&qword_100CB8A58);
  v6 = (a1 + *(v5 + 56));
  sub_10022C350(&qword_100CB8A60);
  v7 = swift_allocObject();
  v8 = *(*v7 + 96);
  v9 = type metadata accessor for AirQualityDetailViewModel(0);
  sub_10001B350(v7 + v8, 1, 1, v9);
  ObservationRegistrar.init()();
  result = State.init(wrappedValue:)();
  v11 = *(&v13[0] + 1);
  *v6 = *&v13[0];
  v6[1] = v11;
  v12 = (a1 + *(v5 + 52));
  *v12 = sub_10042F164;
  v12[1] = v3;
  return result;
}

uint64_t sub_100429568(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AirQualityDetailInnerView();
  __chkstk_darwin(v3);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for AirQualityDetailViewModel.Model(0);
  __chkstk_darwin(v6);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CB8A68);
  __chkstk_darwin(v9);
  v10 = type metadata accessor for AirQualityDetailViewModel(0);
  __chkstk_darwin(v10 - 8);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001A7C50();
  if (sub_100024D10(v12, 1, v6) == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_100430268(&qword_100CB8A70, type metadata accessor for AirQualityDetailInnerView);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    sub_10042F7B0();
    sub_1001A7C50();
    sub_10042F370(a2 + 16, v5 + *(v3 + 28));
    *v5 = swift_getKeyPath();
    sub_10022C350(&qword_100CA54B0);
    swift_storeEnumTagMultiPayload();
    v14[0] = 0x3FF0000000000000;
    v14[1] = 0x4010000000000000;
    sub_1001BB6FC();
    ScaledValue.init(wrappedValue:step:)();
    *(v5 + *(v3 + 24)) = 0;
    sub_1001A7C50();
    swift_storeEnumTagMultiPayload();
    sub_100430268(&qword_100CB8A70, type metadata accessor for AirQualityDetailInnerView);
    _ConditionalContent<>.init(storage:)();
    sub_1001AFB8C(v5, type metadata accessor for AirQualityDetailInnerView);
    return sub_1001AFB8C(v8, type metadata accessor for AirQualityDetailViewModel.Model);
  }
}

uint64_t sub_100429910@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AirQualityDetailViewModel.Model(0);

  return sub_10001B350(a1, 1, 1, v2);
}

uint64_t sub_10042995C@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for AirQualityDetailInnerView();
  v4 = v3 - 8;
  v41 = *(v3 - 8);
  v5 = *(v41 + 64);
  __chkstk_darwin(v3);
  v40[1] = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AirQualityDetailViewModel.Model(0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DetailViewVisibilityTrackerModel();
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (v1 + *(v4 + 40));
  sub_1001A7C50();
  v15 = enum case for DetailType.airQuality(_:);
  v16 = type metadata accessor for DetailType();
  (*(*(v16 - 8) + 104))(v13, v15, v16);
  v17 = *(v7 + 80);
  v18 = v17 + *(type metadata accessor for ConditionDetailMapViewModel() + 20);
  v19 = *(v11 + 28);
  v20 = type metadata accessor for Location();
  (*(*(v20 - 8) + 16))(&v13[v19], &v9[v18], v20);
  sub_1001AFB8C(v9, type metadata accessor for AirQualityDetailViewModel.Model);
  v21 = *(v11 + 32);
  v22 = enum case for DetailViewOrigin.component(_:);
  v23 = type metadata accessor for DetailViewOrigin();
  (*(*(v23 - 8) + 104))(&v13[v21], v22, v23);
  v24 = (v1 + *(v4 + 36));
  v25 = v24[3];
  v26 = v24[4];
  v27 = sub_1000161C0(v24, v25);
  v42[3] = v25;
  v42[4] = *(v26 + 8);
  v28 = sub_100042FB0(v42);
  (*(*(v25 - 8) + 16))(v28, v27, v25);
  v29 = v14[14];
  v30 = v14[15];
  v32 = v14[4];
  v31 = v14[5];
  *a1 = swift_getKeyPath();
  sub_10022C350(&qword_100CA54B0);
  swift_storeEnumTagMultiPayload();
  v33 = sub_10022C350(&qword_100CB8B38);
  sub_1001A7C50();
  sub_10042F370(v42, a1 + v33[10]);
  v34 = (a1 + v33[11]);
  *v34 = v29;
  v34[1] = v30;
  v35 = (a1 + v33[12]);
  *v35 = v32;
  v35[1] = v31;
  *(a1 + v33[13]) = 0;
  v36 = (a1 + v33[14]);
  *v36 = 0;
  v36[1] = 0;
  *(a1 + v33[15]) = 1;
  v37 = (a1 + v33[16]);
  sub_1001A7C50();
  v38 = swift_allocObject();
  sub_10042F7B0();
  *v37 = sub_10042F3D0;
  v37[1] = v38;

  sub_1001AFB8C(v13, type metadata accessor for DetailViewVisibilityTrackerModel);
  return sub_100006F14(v42);
}

uint64_t sub_100429DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[0] = a3;
  v19[1] = a2;
  v23 = a1;
  v22 = type metadata accessor for ScrollViewProxy();
  v4 = *(v22 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v22);
  v21 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AirQualityDetailInnerView();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for AutomationInfo(0);
  __chkstk_darwin(v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a2;
  static Axis.Set.vertical.getter();
  sub_10022C350(&qword_100CB8B40);
  sub_100006F64(&qword_100CB8B48, &qword_100CB8B40);
  v11 = v19[0];
  ScrollView.init(_:showsIndicators:content:)();
  type metadata accessor for AutomationViewInfo(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v12 = v11 + *(sub_10022C350(&qword_100CB8B50) + 36);
  type metadata accessor for AutomationInfoProperty();
  sub_1001A7C50();
  sub_1001AFB8C(v10, type metadata accessor for AutomationInfo);
  *v12 = 0;
  *(v12 + 8) = 0xE000000000000000;
  *(v12 + 16) = swift_getKeyPath();
  *(v12 + 24) = 0;
  sub_1001A7C50();
  v14 = v21;
  v13 = v22;
  (*(v4 + 16))(v21, v23, v22);
  v15 = (v7 + *(v4 + 80) + ((*(v20 + 80) + 16) & ~*(v20 + 80))) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_10042F7B0();
  (*(v4 + 32))(v16 + v15, v14, v13);
  result = sub_10022C350(&qword_100CB8B58);
  v18 = (v11 + *(result + 36));
  *v18 = sub_10042F458;
  v18[1] = v16;
  v18[2] = 0;
  v18[3] = 0;
  return result;
}

uint64_t sub_10042A158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_10022C350(&qword_100CB8B68);
  return sub_10042A1B0(a1, a2 + *(v4 + 44));
}

uint64_t sub_10042A1B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_10022C350(&qword_100CA5730);
  __chkstk_darwin(v3 - 8);
  v5 = &v50 - v4;
  v6 = type metadata accessor for AttributedText();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CB8B70);
  __chkstk_darwin(v10);
  v12 = &v50 - v11;
  v13 = sub_10022C350(&qword_100CB8B78);
  __chkstk_darwin(v13 - 8);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v50 - v17;
  v19 = sub_10022C350(&qword_100CB8B80);
  __chkstk_darwin(v19 - 8);
  v55 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v50 - v22;
  *v23 = static HorizontalAlignment.center.getter();
  *(v23 + 1) = 0;
  v23[16] = 0;
  v24 = sub_10022C350(&qword_100CB8B88);
  sub_10042A820(a1, &v23[*(v24 + 44)]);
  v59 = 0;
  v25 = a1 + *(type metadata accessor for AirQualityDetailInnerView() + 32);
  v26 = *(v25 + *(type metadata accessor for AirQualityDetailViewModel.Model(0) + 64));
  if (v26)
  {
    v52 = v18;
    v53 = v15;
    v54 = v10;
    v27 = v26;
    v28 = sub_10042C644(&v59);
    v58 = sub_10000C70C(0, &qword_100CB8B98);
    v57[0] = v28;
    v51 = v27;
    v29 = NSAttributedString.addingAttribute(_:value:)();
    sub_100006F14(v57);
    v30 = v6;
    v31 = v12;
    v32 = [objc_opt_self() secondaryLabelColor];
    v58 = sub_10000C70C(0, &qword_100CB8BA0);
    v57[0] = v32;
    v33 = v31;
    NSAttributedString.addingAttribute(_:value:)();

    sub_100006F14(v57);
    v34 = type metadata accessor for AttributedString();
    sub_10001B350(v5, 1, 1, v34);
    AttributedText.init(_:accessibilityAttributedText:onInteraction:)();
    Solarium.init()();
    sub_10022C350(&qword_100CB8BA8);
    sub_100430268(&qword_100CB8BB0, &type metadata accessor for AttributedText);
    sub_10042F6F4();
    View.staticIf<A, B, C>(_:then:else:)();
    (*(v7 + 8))(v9, v30);
    v35 = static Edge.Set.bottom.getter();
    if (qword_100CA21A0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1004BA570();
    swift_endAccess();
    EdgeInsets.init(_all:)();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v44 = v54;
    v45 = &v33[*(v54 + 36)];
    *v45 = v35;
    *(v45 + 1) = v37;
    *(v45 + 2) = v39;
    *(v45 + 3) = v41;
    *(v45 + 4) = v43;
    v45[40] = 0;
    v46 = v52;
    sub_1001E9E80();
    sub_10001B350(v46, 0, 1, v44);
    v47 = v59;
    v15 = v53;
  }

  else
  {
    sub_10001B350(v18, 1, 1, v10);
    v47 = 0;
    v46 = v18;
  }

  v48 = v55;
  sub_100095588();
  sub_100095588();
  sub_100095588();
  sub_10022C350(&qword_100CB8B90);
  sub_100095588();
  sub_100018144(v46, &qword_100CB8B78);

  sub_100018144(v23, &qword_100CB8B80);
  sub_100018144(v15, &qword_100CB8B78);
  return sub_100018144(v48, &qword_100CB8B80);
}

uint64_t sub_10042A820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v216 = a2;
  v214 = sub_10022C350(&qword_100CB8BC0);
  __chkstk_darwin(v214);
  v193 = &v177 - v3;
  v4 = sub_10022C350(&qword_100CB5D70);
  __chkstk_darwin(v4 - 8);
  v217 = &v177 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v215 = &v177 - v7;
  v8 = sub_10022C350(&qword_100CAA9F0);
  __chkstk_darwin(v8 - 8);
  v208 = &v177 - v9;
  v10 = sub_10022C350(&qword_100CB8BC8);
  __chkstk_darwin(v10 - 8);
  v191 = &v177 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v187 = &v177 - v13;
  v190 = sub_10022C350(&qword_100CB8BD0);
  __chkstk_darwin(v190);
  v180 = &v177 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v179 = &v177 - v16;
  v231 = type metadata accessor for AttributedString();
  v189 = *(v231 - 8);
  __chkstk_darwin(v231);
  v188 = &v177 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = sub_10022C350(&qword_100CB8BD8);
  __chkstk_darwin(v210);
  v209 = &v177 - v18;
  v19 = sub_10022C350(&qword_100CB8BE0);
  __chkstk_darwin(v19 - 8);
  v205 = (&v177 - v20);
  v222 = type metadata accessor for AirPollutant();
  v207 = *(v222 - 8);
  __chkstk_darwin(v222);
  v206 = &v177 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10022C350(&qword_100CB5D68);
  __chkstk_darwin(v22 - 8);
  v213 = &v177 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v228 = &v177 - v25;
  countAndFlagsBits = sub_10022C350(&qword_100CB8BE8);
  __chkstk_darwin(countAndFlagsBits);
  v192 = (&v177 - v26);
  v27 = sub_10022C350(&qword_100CB5D60);
  __chkstk_darwin(v27 - 8);
  v212 = &v177 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v230 = &v177 - v30;
  object = type metadata accessor for DetailNewsComponentView();
  __chkstk_darwin(object);
  v185 = (&v177 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = sub_10022C350(&qword_100CA7188);
  __chkstk_darwin(v32 - 8);
  v201 = &v177 - v33;
  v200 = type metadata accessor for DetailComponentContainerViewModel();
  __chkstk_darwin(v200);
  v183 = &v177 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10022C350(&qword_100CA7190);
  __chkstk_darwin(v35 - 8);
  v211 = &v177 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v225 = &v177 - v38;
  v199 = sub_10022C350(&qword_100CB5D58);
  __chkstk_darwin(v199);
  v227 = &v177 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v232 = (&v177 - v41);
  v42 = type metadata accessor for ConditionDetailMapView();
  v43 = v42 - 8;
  __chkstk_darwin(v42);
  v226 = &v177 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v47 = &v177 - v46;
  v219 = type metadata accessor for AirQualityDetailInnerView();
  v48 = *(v219 + 32);
  v223 = a1;
  v49 = (a1 + v48);
  v221 = type metadata accessor for AirQualityDetailViewModel.Model(0);
  sub_1001A7C50();
  *v47 = swift_getKeyPath();
  *(v47 + 1) = 0;
  *(v47 + 8) = 0;
  v50 = *(v43 + 32);
  v224 = v47;
  v51 = &v47[v50];
  *v51 = 0;
  *(v51 + 1) = 0;
  v52 = v49[13];
  v197 = v49[12];
  v53 = objc_opt_self();
  v198 = v52;

  v218 = v53;
  v54 = [(__CTFont *)v53 mainBundle];
  v239._object = 0x8000000100AC78C0;
  v55._countAndFlagsBits = 0x25203A656C616353;
  v239._countAndFlagsBits = 0xD000000000000056;
  v55._object = 0xE900000000000040;
  v56._countAndFlagsBits = 0;
  v56._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v55, 0, v54, v56, v239);

  sub_10022C350(&qword_100CA40C8);
  v57 = swift_allocObject();
  v229 = xmmword_100A2C3F0;
  *(v57 + 16) = xmmword_100A2C3F0;
  v58 = v49[2];
  v59 = v49[3];
  *(v57 + 56) = &type metadata for String;
  *(v57 + 64) = sub_100035744();
  *(v57 + 32) = v58;
  *(v57 + 40) = v59;

  v60 = static String.localizedStringWithFormat(_:_:)();
  v62 = v61;

  v220 = v49;
  v195 = sub_100630008();
  v196 = v63;
  v64 = objc_opt_self();
  v181 = UIFontTextStyleSubheadline;
  v182 = v64;
  v65 = [v64 preferredFontForTextStyle:?];
  v66 = sub_10022C350(&qword_100CB8BF0);
  inited = swift_initStackObject();
  *(inited + 16) = v229;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = sub_10000C70C(0, &qword_100CB8B98);
  *(inited + 40) = v65;
  type metadata accessor for Key(0);
  v69 = v68;
  v70 = sub_100430268(&qword_100CA30E0, type metadata accessor for Key);
  v194 = v65;
  v71 = NSFontAttributeName;
  v72 = Dictionary.init(dictionaryLiteral:)();
  v73 = objc_allocWithZone(NSAttributedString);
  v74 = sub_10042F61C(v60, v62, v72);
  v186 = v69;
  v202 = v70;
  v184 = v66;
  if (v74)
  {
    v75 = objc_allocWithZone(NSMutableAttributedString);
    v178 = v74;
    v76 = [v75 initWithAttributedString:v178];
    v77 = swift_initStackObject();
    *(v77 + 16) = v229;
    *(v77 + 32) = NSForegroundColorAttributeName;
    v78 = objc_opt_self();
    v79 = NSForegroundColorAttributeName;
    v80 = [v78 secondaryLabelColor];
    *(v77 + 64) = sub_10000C70C(0, &qword_100CB8BA0);
    *(v77 + 40) = v80;
    Dictionary.init(dictionaryLiteral:)();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v82 = v178;
    [v76 addAttributes:isa range:{0, objc_msgSend(v178, "length")}];
  }

  else
  {
    v76 = 0;
  }

  v83 = v232;
  v232[2] = v76;
  sub_10042CF70(v74, v195, v196, v83 + *(v199 + 40));

  v84 = v198;
  *v83 = v197;
  v83[1] = v84;
  v85 = v223;
  sub_10042BFE8(v223);

  v86 = v220;
  v87 = v221;
  v88 = v201;
  sub_100095588();
  if (sub_100024D10(v88, 1, v200) == 1)
  {
    sub_100018144(v88, &qword_100CA7188);
    v89 = 1;
    v90 = v225;
    v91 = object;
  }

  else
  {
    v92 = v183;
    sub_10042F7B0();
    v91 = object;
    v93 = v185;
    sub_1001A7C50();
    v94 = (v85 + *(v219 + 28));
    v95 = v94[3];
    v96 = v94[4];
    v97 = sub_1000161C0(v94, v95);
    v98 = (v93 + *(v91 + 24));
    v98[3] = v95;
    v98[4] = *(v96 + 8);
    v99 = sub_100042FB0(v98);
    (*(*(v95 - 8) + 16))(v99, v97, v95);
    sub_1001AFB8C(v92, type metadata accessor for DetailComponentContainerViewModel);
    LOBYTE(v95) = *(v86 + 64);
    *v93 = swift_getKeyPath();
    sub_10022C350(&qword_100CA62E0);
    swift_storeEnumTagMultiPayload();
    *(v93 + *(v91 + 28)) = v95;
    v90 = v225;
    sub_10042F7B0();
    v89 = 0;
  }

  v100 = 1;
  sub_10001B350(v90, v89, 1, v91);
  v101 = v86[17];
  if (v101)
  {
    v102 = v86[16];
    v103 = [(__CTFont *)v218 mainBundle];
    v240._object = 0x8000000100AC7980;
    v104._countAndFlagsBits = 0xD000000000000012;
    v104._object = 0x8000000100AC7960;
    v240._countAndFlagsBits = 0xD000000000000035;
    v105._countAndFlagsBits = 0;
    v105._object = 0xE000000000000000;
    v106 = NSLocalizedString(_:tableName:bundle:value:comment:)(v104, 0, v103, v105, v240);

    v107 = v192;
    v192[1]._countAndFlagsBits = 0;
    v108 = countAndFlagsBits;
    sub_10001B350(v107 + *(countAndFlagsBits + 40), 1, 1, v231);
    *v107 = v106;
    v109 = v108;
    v110 = v107 + *(v108 + 44);
    v233 = v102;
    v234 = v101;
    sub_10002D5A4();

    *v110 = Text.init<A>(_:)();
    *(v110 + 1) = v111;
    v110[16] = v112 & 1;
    *(v110 + 3) = v113;
    v114 = v230;
    sub_100051BBC();
    v100 = 0;
  }

  else
  {
    v114 = v230;
    v109 = countAndFlagsBits;
  }

  sub_10001B350(v114, v100, 1, v109);
  v115 = v205;
  sub_100095588();
  v116 = v222;
  if (sub_100024D10(v115, 1, v222) == 1)
  {
    sub_100018144(v115, &qword_100CB8BE0);
    sub_10001B350(v228, 1, 1, v210);
  }

  else
  {
    (*(v207 + 32))(v206, v115, v116);
    v117 = v182;
    v118 = [v182 preferredFontForTextStyle:v181];
    v205 = [v117 preferredFontForTextStyle:UIFontTextStyleBody];
    v119 = [(__CTFont *)v218 mainBundle];
    v241._object = 0x8000000100AC7940;
    v120._object = 0x8000000100AC7920;
    v241._countAndFlagsBits = 0xD00000000000001ELL;
    v120._countAndFlagsBits = 0xD000000000000011;
    v121._countAndFlagsBits = 0;
    v121._object = 0xE000000000000000;
    v122 = NSLocalizedString(_:tableName:bundle:value:comment:)(v120, 0, v119, v121, v241);
    object = v122._object;
    countAndFlagsBits = v122._countAndFlagsBits;

    v123 = v118;
    v124 = AirPollutant.displayName(for:)(v123).super.isa;
    v218 = v123;

    v125 = objc_allocWithZone(NSMutableAttributedString);
    v126 = v124;
    v127 = [v125 initWithAttributedString:v126];
    v128 = swift_initStackObject();
    *(v128 + 16) = v229;
    *(v128 + 32) = NSForegroundColorAttributeName;
    v129 = objc_opt_self();
    v130 = NSForegroundColorAttributeName;
    v131 = [v129 secondaryLabelColor];
    *(v128 + 64) = sub_10000C70C(0, &qword_100CB8BA0);
    *(v128 + 40) = v131;
    Dictionary.init(dictionaryLiteral:)();
    v132 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v127 addAttributes:v132 range:{0, -[objc_class length](v126, "length")}];

    *(v209 + 2) = v127;
    v133 = v126;
    v134 = v188;
    *&v229 = v133;
    AttributedString.init(_:)();
    v233 = 40;
    v234 = 0xE100000000000000;
    v135 = type metadata accessor for Locale();
    v136 = v208;
    sub_10001B350(v208, 1, 1, v135);
    sub_100430268(&qword_100CB8C00, &type metadata accessor for AttributedString);
    sub_10002D5A4();
    v137 = v187;
    AttributedStringProtocol.range<A>(of:options:locale:)();
    sub_100018144(v136, &qword_100CAA9F0);
    v138 = v190;
    if (sub_100024D10(v137, 1, v190) == 1)
    {
      v139 = &qword_100CB8BC8;
      v140 = v137;
    }

    else
    {
      v141 = v179;
      sub_100051BBC();
      sub_100006F64(&qword_100CB8C08, &qword_100CB8BD0);
      AttributedString.removeSubrange<A>(_:)();
      v140 = v141;
      v139 = &qword_100CB8BD0;
    }

    sub_100018144(v140, v139);
    v142 = v134;
    v143 = v191;
    v233 = 41;
    v234 = 0xE100000000000000;
    v144 = v208;
    sub_10001B350(v208, 1, 1, v135);
    AttributedStringProtocol.range<A>(of:options:locale:)();
    sub_100018144(v144, &qword_100CAA9F0);
    if (sub_100024D10(v143, 1, v138) == 1)
    {
      v145 = &qword_100CB8BC8;
      v146 = v143;
    }

    else
    {
      v147 = v180;
      sub_100051BBC();
      sub_100006F64(&qword_100CB8C08, &qword_100CB8BD0);
      AttributedString.removeSubrange<A>(_:)();
      v146 = v147;
      v145 = &qword_100CB8BD0;
    }

    sub_100018144(v146, v145);
    v87 = v221;
    v148 = v209;
    v149 = v210;
    v150 = *(v210 + 40);
    v151 = v231;
    (*(v189 + 32))(&v209[v150], v142, v231);
    sub_10001B350(v148 + v150, 0, 1, v151);
    v152 = object;
    *v148 = countAndFlagsBits;
    v148[1] = v152;
    v153 = v205;
    v154 = v206;
    v155 = AirPollutant.displayDescription(for:)(v205).super.isa;
    sub_10042C42C(v155);

    v156 = v228;
    sub_100051BBC();
    sub_10001B350(v156, 0, 1, v149);
    (*(v207 + 8))(v154, v222);
    v86 = v220;
  }

  v157 = (v86 + *(v87 + 60));
  v158 = v157[1];
  if (v158)
  {
    v159 = v157[2];
    v160 = *v157;
    v161 = v193;
    *(v193 + 2) = 0;
    v162 = sub_10022C350(&qword_100CB8BF8);
    sub_10001B350(v161 + *(v162 + 40), 1, 1, v231);
    *v161 = v160;
    v161[1] = v158;
    v163 = v161 + *(v162 + 44);
    *v163 = swift_getKeyPath();
    v163[8] = 0;
    *(v163 + 2) = v160;
    *(v163 + 3) = v158;
    *(v163 + 4) = v159;
    swift_bridgeObjectRetain_n();

    v164 = Namespace.wrappedValue.getter();
    v165 = v214;
    v166 = v215;
    *(v161 + *(v214 + 52)) = v164;
    sub_100051BBC();
    v167 = 0;
  }

  else
  {
    v167 = 1;
    v165 = v214;
    v166 = v215;
  }

  sub_10001B350(v166, v167, 1, v165);
  v168 = v226;
  sub_1001A7C50();
  v233 = v168;
  v169 = v227;
  sub_100095588();
  v234 = v169;
  v170 = v225;
  v171 = v211;
  sub_100095588();
  v235 = v171;
  v172 = v212;
  sub_100095588();
  v236 = v172;
  v173 = v228;
  v174 = v213;
  sub_100095588();
  v237 = v174;
  v175 = v217;
  sub_100095588();
  v238 = v175;
  sub_1003E8948(&v233);
  sub_100018144(v166, &qword_100CB5D70);
  sub_100018144(v173, &qword_100CB5D68);
  sub_100018144(v230, &qword_100CB5D60);
  sub_100018144(v170, &qword_100CA7190);
  sub_100018144(v232, &qword_100CB5D58);
  sub_1001AFB8C(v224, type metadata accessor for ConditionDetailMapView);
  sub_100018144(v175, &qword_100CB5D70);
  sub_100018144(v174, &qword_100CB5D68);
  sub_100018144(v172, &qword_100CB5D60);
  sub_100018144(v171, &qword_100CA7190);
  sub_100018144(v227, &qword_100CB5D58);
  return sub_1001AFB8C(v226, type metadata accessor for ConditionDetailMapView);
}

uint64_t sub_10042BFE8(uint64_t a1)
{
  v2 = type metadata accessor for AttributedString();
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10022C350(&qword_100CB8C10);
  __chkstk_darwin(v5);
  v7 = &v15[-v6];
  *v7 = static HorizontalAlignment.leading.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = sub_10022C350(&qword_100CB8C18);
  sub_10042C1B0(a1, &v7[*(v8 + 44)]);
  type metadata accessor for AirQualityDetailInnerView();
  sub_100630CE0(v4);
  v9 = Text.init(_:)();
  v11 = v10;
  v13 = v12;
  sub_100006F64(&qword_100CB8C20, &qword_100CB8C10);
  View.accessibilityLabel(_:)();
  sub_10010CD64(v9, v11, v13 & 1);

  return sub_100018144(v7, &qword_100CB8C10);
}

uint64_t sub_10042C1B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v4 = sub_10022C350(&qword_100CB5E30);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v11 = a1 + *(type metadata accessor for AirQualityDetailInnerView() + 32);
  v12 = *(v11 + 56);
  *&v24 = *(v11 + 48);
  *(&v24 + 1) = v12;
  sub_10002D5A4();

  v13 = Text.init<A>(_:)();
  v15 = v14;
  v23 = v16;
  v18 = v17;
  type metadata accessor for AirQualityDetailViewModel.Model(0);

  Gradient.init(stops:)();
  static Color.white.getter();
  HorizontalBarPointView.init(point:pointColor:gradient:)();
  sub_10022C350(&qword_100CB8A78);
  ScaledValue.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v19 = &v10[*(v5 + 44)];
  v20 = v25;
  *v19 = v24;
  *(v19 + 1) = v20;
  *(v19 + 2) = v26;
  sub_100095588();
  *a2 = v13;
  *(a2 + 8) = v15;
  LOBYTE(v12) = v23 & 1;
  *(a2 + 16) = v23 & 1;
  *(a2 + 24) = v18;
  sub_10022C350(&qword_100CB8C28);
  sub_100095588();
  sub_10010CD54(v13, v15, v12);

  sub_100018144(v10, &qword_100CB5E30);
  sub_100018144(v7, &qword_100CB5E30);
  sub_10010CD64(v13, v15, v12);
}

void sub_10042C42C(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5730);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:a1];
  sub_10022C350(&qword_100CB8BF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2C3F0;
  *(inited + 32) = NSForegroundColorAttributeName;
  v7 = sub_10000C70C(0, &qword_100CB8BA0);
  v8 = NSForegroundColorAttributeName;
  static Color.primary.getter();
  v9 = UIColor.init(_:)();
  *(inited + 64) = v7;
  *(inited + 40) = v9;
  type metadata accessor for Key(0);
  sub_100430268(&qword_100CA30E0, type metadata accessor for Key);
  Dictionary.init(dictionaryLiteral:)();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = v5;
  [v11 addAttributes:isa range:{0, objc_msgSend(v11, "length")}];

  v12 = type metadata accessor for AttributedString();
  sub_10001B350(v4, 1, 1, v12);
  AttributedText.init(_:accessibilityAttributedText:onInteraction:)();
}

id sub_10042C644(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = *a1;
  }

  else
  {
    v4 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
    swift_beginAccess();
    v5 = *a1;
    *a1 = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_10042C6E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Edge.Set.horizontal.getter();
  if (qword_100CA21A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004BA278();
  swift_endAccess();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = type metadata accessor for AttributedText();
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  result = sub_10022C350(&qword_100CB8BA8);
  v15 = a2 + *(result + 36);
  *v15 = v4;
  *(v15 + 8) = v6;
  *(v15 + 16) = v8;
  *(v15 + 24) = v10;
  *(v15 + 32) = v12;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_10042C814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Edge.Set.horizontal.getter();
  if (qword_100CA21A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004BA278();
  swift_endAccess();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = type metadata accessor for AttributedText();
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  result = sub_10022C350(&qword_100CB8BA8);
  v15 = a2 + *(result + 36);
  *v15 = v4;
  *(v15 + 8) = v6;
  *(v15 + 16) = v8;
  *(v15 + 24) = v10;
  *(v15 + 32) = v12;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_10042C93C(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DispatchQoS();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v35 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AirQualityDetailInnerView();
  v7 = v6 - 8;
  v32 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for ScrollViewProxy();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = type metadata accessor for DispatchTime();
  v12 = *(v11 - 8);
  v41 = v11;
  v42 = v12;
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v30 - v16;
  v18 = *(v7 + 40);
  v34 = a1;
  v19 = a1 + v18;
  result = type metadata accessor for AirQualityDetailViewModel.Model(0);
  if (*(v19 + *(result + 80)) == 1)
  {
    if (*(v19 + *(result + 60) + 8))
    {
      sub_10000C70C(0, &qword_100CB4670);
      v30 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      v21 = v17;
      + infix(_:_:)();
      v22 = *(v42 + 8);
      v42 += 8;
      v31 = v22;
      v22(v14, v41);
      (*(v9 + 16))(&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v8);
      sub_1001A7C50();
      v23 = (*(v9 + 80) + 16) & ~*(v9 + 80);
      v24 = swift_allocObject();
      (*(v9 + 32))(v24 + v23, &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
      sub_10042F7B0();
      aBlock[4] = sub_10042F498;
      aBlock[5] = v24;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000742F0;
      aBlock[3] = &unk_100C56AE8;
      v25 = _Block_copy(aBlock);

      v26 = v35;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100430268(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10022C350(&qword_100CB4680);
      sub_100006F64(&qword_100CD81D0, &qword_100CB4680);
      v27 = v37;
      v28 = v40;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v29 = v30;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v25);

      (*(v39 + 8))(v27, v28);
      (*(v36 + 8))(v26, v38);
      return v31(v21, v41);
    }
  }

  return result;
}

uint64_t sub_10042CEF0()
{
  type metadata accessor for AirQualityDetailInnerView();
  Namespace.wrappedValue.getter();
  static UnitPoint.top.getter();
  sub_10042F5C8();
  return ScrollViewProxy.scrollTo<A>(_:anchor:)();
}

uint64_t sub_10042CF70@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a2;
  v58 = a3;
  v6 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v6 - 8);
  v53 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CAA9F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v49 - v9;
  v11 = sub_10022C350(&qword_100CB8BC8);
  __chkstk_darwin(v11 - 8);
  v55 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v49 - v14;
  __chkstk_darwin(v16);
  v18 = &v49 - v17;
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  v22 = sub_10022C350(&qword_100CB8BD0);
  __chkstk_darwin(v22);
  v52 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v54 = &v49 - v25;
  __chkstk_darwin(v26);
  v28 = &v49 - v27;
  v29 = type metadata accessor for AttributedString();
  __chkstk_darwin(v29);
  __chkstk_darwin(v30);
  v34 = &v49 - v33;
  if (a1)
  {
    v51 = v32;
    v56 = v31;
    v35 = a1;
    AttributedString.init(_:)();
    v63 = 40;
    v64 = 0xE100000000000000;
    v60 = type metadata accessor for Locale();
    sub_10001B350(v10, 1, 1, v60);
    v36 = sub_100430268(&qword_100CB8C00, &type metadata accessor for AttributedString);
    v37 = sub_10002D5A4();
    v61 = v36;
    v59 = v37;
    AttributedStringProtocol.range<A>(of:options:locale:)();
    sub_100018144(v10, &qword_100CAA9F0);
    if (sub_100024D10(v21, 1, v22) == 1)
    {
      sub_100018144(v21, &qword_100CB8BC8);
      v38 = v22;
    }

    else
    {
      v50 = v15;
      sub_100051BBC();
      sub_100006F64(&qword_100CB8C08, &qword_100CB8BD0);
      v38 = v22;
      AttributedString.removeSubrange<A>(_:)();
      v15 = v50;
      sub_100018144(v28, &qword_100CB8BD0);
    }

    v63 = 41;
    v64 = 0xE100000000000000;
    sub_10001B350(v10, 1, 1, v60);
    AttributedStringProtocol.range<A>(of:options:locale:)();
    sub_100018144(v10, &qword_100CAA9F0);
    if (sub_100024D10(v18, 1, v38) == 1)
    {
      v40 = v38;
      v41 = &qword_100CB8BC8;
      v42 = v18;
    }

    else
    {
      v43 = v54;
      sub_100051BBC();
      sub_100006F64(&qword_100CB8C08, &qword_100CB8BD0);
      v40 = v38;
      AttributedString.removeSubrange<A>(_:)();
      v42 = v43;
      v41 = &qword_100CB8BD0;
    }

    sub_100018144(v42, v41);
    v44 = v57;
    if (v58)
    {
      v57 = a4;
      v63 = v44;
      v64 = v58;
      sub_10001B350(v10, 1, 1, v60);
      AttributedStringProtocol.range<A>(of:options:locale:)();
      sub_100018144(v10, &qword_100CAA9F0);
      v45 = v55;
      sub_100095588();
      if (sub_100024D10(v45, 1, v40) == 1)
      {
        sub_100018144(v15, &qword_100CB8BC8);
      }

      else
      {
        v46 = v52;
        sub_100051BBC();
        String.lowercased()();
        AttributeContainer.init()();
        v47 = v51;
        AttributedString.init(_:attributes:)();
        sub_100006F64(&qword_100CB8C08, &qword_100CB8BD0);
        AttributedString.replaceSubrange<A, B>(_:with:)();
        (*(v56 + 8))(v47, v29);
        v48 = AttributedString.subscript.modify();
        v62 = 1;
        sub_10042F808();
        AttributedSubstring.subscript.setter();
        v48(&v63, 0);
        sub_100018144(v46, &qword_100CB8BD0);
        v45 = v15;
      }

      sub_100018144(v45, &qword_100CB8BC8);
      a4 = v57;
    }

    (*(v56 + 32))(a4, v34, v29);
    return sub_10001B350(a4, 0, 1, v29);
  }

  else
  {

    return sub_10001B350(a4, 1, 1, v29);
  }
}

BOOL sub_10042D770()
{
  v1 = sub_10022C350(&qword_100CA5730);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  if (!*(v0 + 16))
  {
    return 0;
  }

  sub_100095588();
  v4 = type metadata accessor for AttributedString();
  v5 = sub_100024D10(v3, 1, v4) != 1;
  sub_100018144(v3, &qword_100CA5730);
  return v5;
}

uint64_t sub_10042D854(uint64_t a1)
{
  sub_10022E824(&qword_100CB8CD8);
  v3 = *(a1 + 16);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10022E824(&qword_100CB8CE0);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v4 = type metadata accessor for VStack();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v15[-v9];
  v11 = *(a1 + 24);
  v16 = v3;
  v17 = v11;
  v18 = v1;
  j___s7SwiftUI19HorizontalAlignmentV6centerACvgZ();
  VStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  sub_1000833D8(v7, v4, WitnessTable);
  v13 = *(v5 + 8);
  v13(v7, v4);
  sub_1000833D8(v10, v4, WitnessTable);
  return (v13)(v10, v4);
}

uint64_t sub_10042DAC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v94 = a3;
  v92 = a1;
  v91 = a4;
  v5 = type metadata accessor for ModifiedContent();
  v78 = *(v5 - 8);
  __chkstk_darwin(v5);
  v76 = &v69 - v6;
  v79 = v7;
  v8 = type metadata accessor for ModifiedContent();
  v81 = *(v8 - 8);
  __chkstk_darwin(v8);
  v80 = &v69 - v9;
  sub_10022E824(&qword_100CB8CE0);
  v82 = v8;
  v10 = type metadata accessor for ModifiedContent();
  v85 = *(v10 - 8);
  __chkstk_darwin(v10);
  v84 = &v69 - v11;
  v86 = v12;
  v90 = type metadata accessor for ModifiedContent();
  v87 = *(v90 - 8);
  __chkstk_darwin(v90);
  v89 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v83 = &v69 - v15;
  __chkstk_darwin(v16);
  v88 = &v69 - v17;
  v73 = type metadata accessor for AccessibilityTraits();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for AccessibilityChildBehavior();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10022C350(&qword_100CB8CE8);
  __chkstk_darwin(v22 - 8);
  v24 = &v69 - v23;
  v25 = sub_10022C350(&qword_100CB8CF0);
  __chkstk_darwin(v25);
  v27 = &v69 - v26;
  v69 = sub_10022C350(&qword_100CB8CF8);
  v28 = *(v69 - 8);
  __chkstk_darwin(v69);
  v30 = &v69 - v29;
  v75 = sub_10022C350(&qword_100CB8CD8);
  __chkstk_darwin(v75);
  v77 = &v69 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v93 = &v69 - v33;
  *v24 = static HorizontalAlignment.center.getter();
  *(v24 + 1) = 0;
  v24[16] = 0;
  v34 = sub_10022C350(&qword_100CB8D00);
  sub_10042E71C(v92, a2, v94, &v24[*(v34 + 44)]);
  v74 = a2;
  type metadata accessor for AirQualitySection();
  if (sub_10042D770())
  {
    if (qword_100CA21A0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v35 = sub_1004BA700();
  }

  else
  {
    if (qword_100CA21A0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v35 = sub_1004BA4FC();
  }

  v39 = v35;
  v40 = v36;
  v41 = v37;
  v42 = v38;
  swift_endAccess();
  v43 = static Edge.Set.all.getter();
  sub_100051BBC();
  v44 = &v27[*(v25 + 36)];
  *v44 = v43;
  *(v44 + 1) = v39;
  *(v44 + 2) = v40;
  *(v44 + 3) = v41;
  *(v44 + 4) = v42;
  v44[40] = 0;
  static AccessibilityChildBehavior.combine.getter();
  v45 = sub_10042FFD0();
  View.accessibilityElement(children:)();
  (*(v70 + 8))(v21, v71);
  sub_100018144(v27, &qword_100CB8CF0);
  static AccessibilityTraits.isHeader.getter();
  v98 = v25;
  v99 = v45;
  swift_getOpaqueTypeConformance2();
  v46 = v69;
  View.accessibilityAddTraits(_:)();
  (*(v72 + 8))(v19, v73);
  (*(v28 + 8))(v30, v46);
  static Alignment.leading.getter();
  v47 = v94;
  v48 = v76;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  if (qword_100CA21A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004BA5F0();
  swift_endAccess();
  v97[8] = v47;
  v97[9] = &protocol witness table for _FlexFrameLayout;
  v49 = v79;
  WitnessTable = swift_getWitnessTable();
  v51 = v80;
  View.padding(_:)();
  (*(v78 + 8))(v48, v49);
  sub_10022C350(&qword_100CB8D18);
  v97[6] = WitnessTable;
  v97[7] = &protocol witness table for _PaddingLayout;
  v52 = v82;
  v53 = swift_getWitnessTable();
  sub_100430088();
  static Alignment.center.getter();
  v54 = v84;
  View.background<A>(alignment:content:)();
  (*(v81 + 8))(v51, v52);
  v55 = static Edge.Set.horizontal.getter();
  Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v55)
  {
    Edge.Set.init(rawValue:)();
  }

  swift_beginAccess();
  sub_1004BA278();
  swift_endAccess();
  v56 = sub_100006F64(&qword_100CB8D28, &qword_100CB8CE0);
  v97[4] = v53;
  v97[5] = v56;
  v57 = v86;
  v58 = swift_getWitnessTable();
  v59 = v83;
  View.padding(_:_:)();
  (*(v85 + 8))(v54, v57);
  v97[2] = v58;
  v97[3] = &protocol witness table for _PaddingLayout;
  v60 = v90;
  v61 = swift_getWitnessTable();
  v62 = v88;
  sub_1000833D8(v59, v60, v61);
  v63 = v87;
  v64 = *(v87 + 8);
  v64(v59, v60);
  v65 = v93;
  v66 = v77;
  sub_100095588();
  v98 = v66;
  v67 = v89;
  (*(v63 + 16))(v89, v62, v60);
  v99 = v67;
  v97[0] = v75;
  v97[1] = v60;
  v95 = sub_100430170();
  v96 = v61;
  sub_10012E24C(&v98, 2, v97);
  v64(v62, v60);
  sub_100018144(v65, &qword_100CB8CD8);
  v64(v67, v60);
  return sub_100018144(v66, &qword_100CB8CD8);
}

uint64_t sub_10042E71C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v61 = a2;
  v62 = a3;
  v70 = a4;
  v5 = type metadata accessor for AttributedText();
  v58 = *(v5 - 8);
  v59 = v5;
  __chkstk_darwin(v5);
  v57 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_10022C350(&qword_100CB8D38);
  __chkstk_darwin(v69);
  v56 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v55 = &v51 - v9;
  v10 = sub_10022C350(&qword_100CA5730);
  __chkstk_darwin(v10 - 8);
  v52 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v60 = &v51 - v13;
  v63 = type metadata accessor for AttributedString();
  v54 = *(v63 - 8);
  __chkstk_darwin(v63);
  v53 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10022C350(&qword_100CB8D40);
  __chkstk_darwin(v15 - 8);
  v68 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v71 = &v51 - v18;
  v19 = type metadata accessor for Font.TextStyle();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[1];
  v73 = *a1;
  v74 = v23;
  sub_10002D5A4();

  v24 = Text.init<A>(_:)();
  v26 = v25;
  v28 = v27;
  (*(v20 + 104))(v22, enum case for Font.TextStyle.title3(_:), v19);
  static Font.Weight.semibold.getter();
  static Font.system(_:weight:)();
  (*(v20 + 8))(v22, v19);
  v29 = Text.font(_:)();
  v65 = v30;
  v66 = v29;
  LOBYTE(v22) = v31;
  v67 = v32;

  sub_10010CD64(v24, v26, v28 & 1);

  static Alignment.leading.getter();
  v33 = 1;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v64 = v22 & 1;
  v81 = v22 & 1;
  v34 = a1[2];
  if (v34)
  {
    type metadata accessor for AirQualitySection();
    v35 = v60;
    sub_100095588();
    v36 = v63;
    if (sub_100024D10(v35, 1, v63) != 1)
    {
      v39 = v53;
      v38 = v54;
      (*(v54 + 32))(v53, v35, v36);
      v40 = v52;
      (*(v38 + 16))(v52, v39, v36);
      sub_10001B350(v40, 0, 1, v36);
      v41 = v34;
      v42 = v57;
      AttributedText.init(_:accessibilityAttributedText:onInteraction:)();
      static Alignment.leading.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();

      (*(v38 + 8))(v39, v36);
      v43 = v56;
      (*(v58 + 32))(v56, v42, v59);
      v37 = v69;
      memcpy(&v43[*(v69 + 36)], __src, 0x70uLL);
      sub_100051BBC();
      sub_100051BBC();
      v33 = 0;
      goto LABEL_6;
    }

    sub_100018144(v35, &qword_100CA5730);
  }

  v37 = v69;
LABEL_6:
  v44 = v71;
  sub_10001B350(v71, v33, 1, v37);
  v45 = v68;
  sub_100095588();
  v46 = v65;
  v47 = v66;
  v72[0] = v66;
  v72[1] = v65;
  v48 = v64;
  LOBYTE(v72[2]) = v64;
  *(&v72[2] + 1) = *v80;
  HIDWORD(v72[2]) = *&v80[3];
  v49 = v67;
  v72[3] = v67;
  memcpy(&v72[4], v79, 0x70uLL);
  memcpy(v70, v72, 0x90uLL);
  sub_10022C350(&qword_100CB8D48);
  sub_100095588();
  sub_100095588();
  sub_100018144(v44, &qword_100CB8D40);
  sub_100018144(v45, &qword_100CB8D40);
  v73 = v47;
  v74 = v46;
  v75 = v48;
  *v76 = *v80;
  *&v76[3] = *&v80[3];
  v77 = v49;
  memcpy(v78, v79, sizeof(v78));
  return sub_100018144(&v73, &qword_100CB5BF0);
}

uint64_t sub_10042EEA4@<X0>(double *a1@<X8>)
{
  if (qword_100CA21A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = sub_1004BA5B0();
  v3 = *(type metadata accessor for RoundedRectangle() + 20);
  v4 = enum case for RoundedCornerStyle.continuous(_:);
  v5 = type metadata accessor for RoundedCornerStyle();
  (*(*(v5 - 8) + 104))(a1 + v3, v4, v5);
  *a1 = v2;
  a1[1] = v2;
  v6 = sub_1004BA698();
  swift_endAccess();
  KeyPath = swift_getKeyPath();
  result = sub_10022C350(&qword_100CB8D18);
  v9 = (a1 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = v6;
  return result;
}

uint64_t sub_10042EFCC()
{
  sub_100003A00();
  v0 = type metadata accessor for AirQualityDetailViewModel(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v8 - v4;
  sub_1009883E0();
  sub_1009883E0();
  v6 = sub_1006300A0(v5, v2);
  sub_1001AFB8C(v2, type metadata accessor for AirQualityDetailViewModel);
  sub_1001AFB8C(v5, type metadata accessor for AirQualityDetailViewModel);
  return v6 & 1;
}

uint64_t sub_10042F0B8(uint64_t a1)
{
  result = sub_100430268(&qword_100CB8A50, type metadata accessor for AirQualityDetailViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for AirQualityDetailInnerView()
{
  result = qword_100CB8AD8;
  if (!qword_100CB8AD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10042F1E0()
{
  sub_100081BC8();
  if (v0 <= 0x3F)
  {
    sub_10042F29C();
    if (v1 <= 0x3F)
    {
      sub_10042F2F8();
      if (v2 <= 0x3F)
      {
        type metadata accessor for AirQualityDetailViewModel.Model(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10042F29C()
{
  if (!qword_100CB8AE8)
  {
    sub_1001BB6FC();
    v0 = type metadata accessor for ScaledValue();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB8AE8);
    }
  }
}

unint64_t sub_10042F2F8()
{
  result = qword_100CB8AF0;
  if (!qword_100CB8AF0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100CB8AF0);
  }

  return result;
}

uint64_t sub_10042F370(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  sub_100003B20();
  (*v3)(a2);
  return a2;
}

uint64_t sub_10042F3D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AirQualityDetailInnerView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100429DB0(a1, v6, a2);
}

uint64_t sub_10042F4D8(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(unint64_t, uint64_t))
{
  v5 = *(a1(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(a2(0) - 8);
  v9 = v3 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return a3(v3 + v6, v9);
}

unint64_t sub_10042F5C8()
{
  result = qword_100CB8B60;
  if (!qword_100CB8B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB8B60);
  }

  return result;
}

id sub_10042F61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = String._bridgeToObjectiveC()();

  if (a3)
  {
    type metadata accessor for Key(0);
    sub_100430268(&qword_100CA30E0, type metadata accessor for Key);
    v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = [v3 initWithString:v5 attributes:v6.super.isa];

  return v7;
}

unint64_t sub_10042F6F4()
{
  result = qword_100CB8BB8;
  if (!qword_100CB8BB8)
  {
    sub_10022E824(&qword_100CB8BA8);
    sub_100430268(&qword_100CB8BB0, &type metadata accessor for AttributedText);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB8BB8);
  }

  return result;
}

uint64_t sub_10042F7B0()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

unint64_t sub_10042F808()
{
  result = qword_100CB8C30[0];
  if (!qword_100CB8C30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CB8C30);
  }

  return result;
}

void sub_10042F85C()
{
  sub_10042FEC0();
  if (v0 <= 0x3F)
  {
    sub_10042FF28();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10042F90C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v9 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = v9;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v7 + 80);
  if (v8)
  {
    v16 = *(*(v6 - 8) + 64);
  }

  else
  {
    v16 = *(*(v6 - 8) + 64) + 1;
  }

  v17 = *(v11 + 80);
  v18 = *(v11 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 > v14)
  {
    v19 = ((v16 + ((v15 + 24) & ~v15) + v17) & ~v17) + v18;
    v20 = 8 * v19;
    if (v19 > 3)
    {
      goto LABEL_16;
    }

    v22 = ((a2 - v14 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v22))
    {
      v21 = *(a1 + v19);
      if (v21)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v22 <= 0xFF)
      {
        if (v22 < 2)
        {
          goto LABEL_33;
        }

LABEL_16:
        v21 = *(a1 + v19);
        if (!*(a1 + v19))
        {
          goto LABEL_33;
        }

LABEL_23:
        v23 = (v21 - 1) << v20;
        if (v19 > 3)
        {
          v23 = 0;
        }

        if (v19)
        {
          if (v19 <= 3)
          {
            v24 = v19;
          }

          else
          {
            v24 = 4;
          }

          switch(v24)
          {
            case 2:
              v25 = *a1;
              break;
            case 3:
              v25 = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              v25 = *a1;
              break;
            default:
              v25 = *a1;
              break;
          }
        }

        else
        {
          v25 = 0;
        }

        return v14 + (v25 | v23) + 1;
      }

      v21 = *(a1 + v19);
      if (*(a1 + v19))
      {
        goto LABEL_23;
      }
    }
  }

LABEL_33:
  if ((v13 & 0x80000000) == 0)
  {
    v26 = *(a1 + 1);
    if (v26 >= 0xFFFFFFFF)
    {
      LODWORD(v26) = -1;
    }

    return (v26 + 1);
  }

  v28 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v15 + 8) & ~v15;
  if (v9 == v14)
  {
    if (v8 >= 2)
    {
      v30 = sub_100024D10(v28, v8, v6);
      if (v30 >= 2)
      {
        return v30 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v29 = (v28 + v16 + v17) & ~v17;

  return sub_100024D10(v29, v12, v10);
}

void sub_10042FB9C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = type metadata accessor for AttributedString();
  v9 = 0;
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a4 + 16);
  v14 = *(v13 - 8);
  v15 = *(v14 + 84);
  if (v12 <= v15)
  {
    v16 = *(v14 + 84);
  }

  else
  {
    v16 = v12;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v10 + 80);
  if (v11)
  {
    v19 = *(*(v8 - 8) + 64);
  }

  else
  {
    v19 = *(*(v8 - 8) + 64) + 1;
  }

  v20 = *(v14 + 80);
  v21 = ((v19 + ((v18 + 24) & ~v18) + v20) & ~v20) + *(v14 + 64);
  v22 = 8 * v21;
  if (a3 > v17)
  {
    if (v21 <= 3)
    {
      v23 = ((a3 - v17 + ~(-1 << v22)) >> v22) + 1;
      if (HIWORD(v23))
      {
        v9 = 4;
      }

      else
      {
        if (v23 < 0x100)
        {
          v24 = 1;
        }

        else
        {
          v24 = 2;
        }

        if (v23 >= 2)
        {
          v9 = v24;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }
  }

  if (v17 >= a2)
  {
    switch(v9)
    {
      case 1:
        a1[v21] = 0;
        if (a2)
        {
          goto LABEL_36;
        }

        return;
      case 2:
        *&a1[v21] = 0;
        if (a2)
        {
          goto LABEL_36;
        }

        return;
      case 3:
LABEL_56:
        __break(1u);
        return;
      case 4:
        *&a1[v21] = 0;
        goto LABEL_35;
      default:
LABEL_35:
        if (!a2)
        {
          return;
        }

LABEL_36:
        if ((v16 & 0x80000000) != 0)
        {
          v28 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v18 + 8) & ~v18;
          if (v12 == v17)
          {
            if (v11 < 2)
            {
              return;
            }

            v29 = (a2 + 1);
            v13 = v8;
          }

          else
          {
            v28 = (v28 + v19 + v20) & ~v20;
            v29 = a2;
            v11 = v15;
          }

          sub_10001B350(v28, v29, v11, v13);
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *a1 = a2 & 0x7FFFFFFF;
          *(a1 + 1) = 0;
        }

        else
        {
          *(a1 + 1) = (a2 - 1);
        }

        break;
    }
  }

  else
  {
    v25 = ~v17 + a2;
    if (v21 < 4)
    {
      v26 = (v25 >> v22) + 1;
      if (v21)
      {
        v27 = v25 & ~(-1 << v22);
        bzero(a1, v21);
        if (v21 == 3)
        {
          *a1 = v27;
          a1[2] = BYTE2(v27);
        }

        else if (v21 == 2)
        {
          *a1 = v27;
        }

        else
        {
          *a1 = v25;
        }
      }
    }

    else
    {
      bzero(a1, v21);
      *a1 = v25;
      v26 = 1;
    }

    switch(v9)
    {
      case 1:
        a1[v21] = v26;
        break;
      case 2:
        *&a1[v21] = v26;
        break;
      case 3:
        goto LABEL_56;
      case 4:
        *&a1[v21] = v26;
        break;
      default:
        return;
    }
  }
}

void sub_10042FEC0()
{
  if (!qword_100CB8CB8)
  {
    sub_10000C70C(255, &qword_100CB8CC0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB8CB8);
    }
  }
}

void sub_10042FF28()
{
  if (!qword_100CB8CC8)
  {
    type metadata accessor for AttributedString();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB8CC8);
    }
  }
}

unint64_t sub_10042FFD0()
{
  result = qword_100CB8D08;
  if (!qword_100CB8D08)
  {
    sub_10022E824(&qword_100CB8CF0);
    sub_100006F64(&qword_100CB8D10, &qword_100CB8CE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB8D08);
  }

  return result;
}

unint64_t sub_100430088()
{
  result = qword_100CB8D20;
  if (!qword_100CB8D20)
  {
    sub_10022E824(&qword_100CB8D18);
    sub_100430268(&qword_100CA47B8, &type metadata accessor for RoundedRectangle);
    sub_100006F64(&qword_100CE0FF0, &qword_100CA5110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB8D20);
  }

  return result;
}

unint64_t sub_100430170()
{
  result = qword_100CB8D30;
  if (!qword_100CB8D30)
  {
    sub_10022E824(&qword_100CB8CD8);
    sub_10022E824(&qword_100CB8CF0);
    sub_10042FFD0();
    swift_getOpaqueTypeConformance2();
    sub_100430268(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB8D30);
  }

  return result;
}

uint64_t sub_100430268(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004302D0()
{
  result = type metadata accessor for TitleAndDetailLollipopDetailViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10043038C()
{
  type metadata accessor for AttributedString();
  if (v0 <= 0x3F)
  {
    sub_100007760();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10043043C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 66))
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

uint64_t sub_10043047C(uint64_t result, int a2, int a3)
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
      *(result + 66) = 1;
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

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1004304E0(uint64_t a1, int a2)
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

uint64_t sub_100430520(uint64_t result, int a2, int a3)
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

uint64_t sub_10043057C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleAndDetailLollipopDetailViewModel(0);
  __chkstk_darwin(v4 - 8);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LollipopDetailViewModel(0);
  sub_1000037E8();
  v8 = __chkstk_darwin(v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = v26 - v12;
  __chkstk_darwin(v11);
  v15 = (v26 - v14);
  v16 = sub_10022C350(&qword_100CB8EA0);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = v26 - v18;
  v20 = (v26 + *(v17 + 56) - v18);
  sub_1002364FC(a1, v26 - v18);
  sub_1002364FC(a2, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1002364FC(v19, v13);
      memcpy(v26, v13, 0x42uLL);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        memcpy(v27, v20, 0x42uLL);
        v22 = sub_1004309FC(v26);
        sub_100430CD8(v26);
        sub_100430CD8(v27);
LABEL_13:
        sub_100430C80(v19, type metadata accessor for LollipopDetailViewModel);
        return v22 & 1;
      }

      sub_100430CD8(v26);
    }

    else
    {
      sub_1002364FC(v19, v10);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_100430C1C(v20, v6);
        v22 = sub_100430AD8(v10);
        sub_100430C80(v6, type metadata accessor for TitleAndDetailLollipopDetailViewModel);
        sub_100430C80(v10, type metadata accessor for TitleAndDetailLollipopDetailViewModel);
        goto LABEL_13;
      }

      sub_100430C80(v10, type metadata accessor for TitleAndDetailLollipopDetailViewModel);
    }
  }

  else
  {
    sub_1002364FC(v19, v15);
    v23 = v15[1];
    v26[0] = *v15;
    v26[1] = v23;
    v26[2] = v15[2];
    if (!swift_getEnumCaseMultiPayload())
    {
      v24 = v20[1];
      v27[0] = *v20;
      v27[1] = v24;
      v27[2] = v20[2];
      v22 = sub_100430964(v26);
      v31 = v26[0];
      sub_1002ED110(&v31);
      v32 = v26[1];
      sub_1002ED110(&v32);
      v33[0] = v26[2];
      sub_1000180EC(v33, &qword_100CA6078);
      v28 = v27[0];
      sub_1002ED110(&v28);
      v29 = v27[1];
      sub_1002ED110(&v29);
      v30 = v27[2];
      sub_1000180EC(&v30, &qword_100CA6078);
      goto LABEL_13;
    }

    v32 = *v15;
    sub_1002ED110(&v32);
    v33[0] = v26[1];
    sub_1002ED110(v33);
    v27[0] = v26[2];
    sub_1000180EC(v27, &qword_100CA6078);
  }

  sub_1000180EC(v19, &qword_100CB8EA0);
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_100430964(uint64_t a1)
{
  sub_100008298(a1);
  v5 = v5 && v3 == v4;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v6 = v2[2] == v1[2] && v2[3] == v1[3];
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v7 = v2[5];
      v8 = v1[5];
      if (v7)
      {
        if (v8)
        {
          v9 = v2[4] == v1[4] && v7 == v8;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v8)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1004309FC(uint64_t a1)
{
  sub_100008298(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_26;
  }

  v6 = *(v2 + 16) == *(v1 + 16) && *(v2 + 24) == *(v1 + 24);
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_26;
  }

  v7 = *(v2 + 32) == *(v1 + 32) && *(v2 + 40) == *(v1 + 40);
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_26;
  }

  v8 = *(v2 + 56);
  v9 = *(v1 + 56);
  if (v8)
  {
    if (!v9)
    {
      goto LABEL_26;
    }

    v10 = *(v2 + 48) == *(v1 + 48) && v8 == v9;
    if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v9)
  {
    goto LABEL_26;
  }

  if (*(v2 + 64) == *(v1 + 64))
  {
    v11 = *(v2 + 65) ^ *(v1 + 65) ^ 1;
    return v11 & 1;
  }

LABEL_26:
  v11 = 0;
  return v11 & 1;
}

uint64_t sub_100430AD8(uint64_t a1)
{
  sub_100008298(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_44;
  }

  v6 = type metadata accessor for TitleAndDetailLollipopDetailViewModel(0);
  if ((static AttributedString.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_44;
  }

  sub_1000085DC();
  if (v9)
  {
    if (!v7)
    {
      goto LABEL_44;
    }

    sub_100005D44(v8);
    v12 = v5 && v10 == v11;
    if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  else if (v7)
  {
    goto LABEL_44;
  }

  sub_100005824(v6[7]);
  v15 = v5 && v13 == v14;
  if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_44;
  }

  sub_1000085DC();
  if (v18)
  {
    if (!v16)
    {
      goto LABEL_44;
    }

    sub_100005D44(v17);
    v21 = v5 && v19 == v20;
    if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  else if (v16)
  {
    goto LABEL_44;
  }

  sub_100005824(v6[9]);
  v24 = v5 && v22 == v23;
  if (!v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_44;
  }

  sub_1000085DC();
  if (v27)
  {
    if (v25)
    {
      sub_100005D44(v26);
      v30 = v5 && v28 == v29;
      if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_42;
      }
    }

LABEL_44:
    v31 = 0;
    return v31 & 1;
  }

  if (v25)
  {
    goto LABEL_44;
  }

LABEL_42:
  v31 = *(v2 + v6[11]) ^ *(v1 + v6[11]) ^ 1;
  return v31 & 1;
}

uint64_t sub_100430C1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleAndDetailLollipopDetailViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100430C80(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100430D10(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_100430D50(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TitleAndUnitLollipopDetailViewModel.Variant(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_100430EA4()
{
  result = qword_100CB8EA8;
  if (!qword_100CB8EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB8EA8);
  }

  return result;
}

unint64_t sub_100430EFC()
{
  result = qword_100CB8EB0;
  if (!qword_100CB8EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB8EB0);
  }

  return result;
}

uint64_t sub_100430F50(uint64_t a1)
{
  sub_100008298(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = v2[3];
  v7 = v1[3];
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = v2[2] == v1[2] && v6 == v7;
    if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v9 = v2[5];
  v10 = v1[5];
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = v2[4] == v1[4] && v9 == v10;
    if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v12 = v2[7];
  v13 = v1[7];
  if (v12)
  {
    if (!v13)
    {
      return 0;
    }

    v14 = v2[6] == v1[6] && v12 == v13;
    if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v15 = v2[9];
  v16 = v1[9];
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    v17 = v2[8] == v1[8] && v15 == v16;
    if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v18 = v2[11];
  v19 = v1[11];
  if (v18)
  {
    if (!v19)
    {
      return 0;
    }

    v20 = v2[10] == v1[10] && v18 == v19;
    if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v21 = v2[13];
  v22 = v1[13];
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    v23 = v2[12] == v1[12] && v21 == v22;
    if (!v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  v24 = v2[15];
  v25 = v1[15];
  if (v24)
  {
    if (!v25)
    {
      return 0;
    }

    v26 = v2[14] == v1[14] && v24 == v25;
    if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  v27 = v2[17];
  v28 = v1[17];
  if (v27)
  {
    if (v28)
    {
      v29 = v2[16] == v1[16] && v27 == v28;
      if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v28)
  {
    return 1;
  }

  return 0;
}

void sub_10043114C()
{
  String.hash(into:)();
  if (v0[3])
  {
    Hasher._combine(_:)(1u);
    sub_10001C1C0();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v0[5])
  {
    Hasher._combine(_:)(1u);
    sub_10001C1C0();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v0[7])
  {
    Hasher._combine(_:)(1u);
    sub_10001C1C0();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v0[9])
  {
    Hasher._combine(_:)(1u);
    sub_10001C1C0();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v0[11])
  {
    Hasher._combine(_:)(1u);
    sub_10001C1C0();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v0[13])
  {
    Hasher._combine(_:)(1u);
    sub_10001C1C0();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v0[15])
  {
    Hasher._combine(_:)(1u);
    sub_10001C1C0();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v0[17])
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_1004312C4()
{
  Hasher.init(_seed:)();
  sub_10043114C();
  return Hasher._finalize()();
}

Swift::Int sub_100431310()
{
  Hasher.init(_seed:)();
  sub_10043114C();
  return Hasher._finalize()();
}

uint64_t sub_100431374(uint64_t a1, uint64_t a2)
{
  v66 = type metadata accessor for Location();
  v63 = *(v66 - 8);
  __chkstk_darwin(v66);
  v61 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CA65D8);
  sub_100003828();
  __chkstk_darwin(v5);
  v62 = &v61 - v6;
  v64 = sub_10022C350(&qword_100CAEE78);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v7);
  v65 = &v61 - v8;
  type metadata accessor for PreviewLocation();
  sub_1000037E8();
  __chkstk_darwin(v9);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CA65C8);
  sub_100003828();
  __chkstk_darwin(v12);
  v14 = &v61 - v13;
  sub_10022C350(&qword_100CB8F90);
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v61 - v16;
  v19 = *(v18 + 56);
  v20 = a1;
  sub_100035AD0(a1, &v61 - v16, &qword_100CA65C8);
  v21 = a2;
  sub_100035AD0(a2, &v17[v19], &qword_100CA65C8);
  sub_1000083BC(v17);
  if (v22)
  {
    sub_1000083BC(&v17[v19]);
    if (v22)
    {
      sub_1000180EC(v17, &qword_100CA65C8);
      goto LABEL_14;
    }

LABEL_9:
    v23 = &qword_100CB8F90;
    v24 = v17;
    goto LABEL_10;
  }

  sub_100035AD0(v17, v14, &qword_100CA65C8);
  sub_1000083BC(&v17[v19]);
  if (v22)
  {
    sub_100431B10(v14);
    goto LABEL_9;
  }

  sub_100431B6C(&v17[v19], v11);
  sub_1006E6E98();
  v28 = v27;
  sub_100431B10(v11);
  sub_100431B10(v14);
  sub_1000180EC(v17, &qword_100CA65C8);
  if ((v28 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v29 = type metadata accessor for WeatherMenuViewModel();
  v30 = v29;
  v31 = *(v29 + 20);
  v32 = v20;
  v33 = *(v20 + v31);
  v34 = a2;
  v35 = *(a2 + v31);
  if (v33 == 2)
  {
    if (v35 != 2)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  v25 = 0;
  if (v35 != 2 && ((v35 ^ v33) & 1) == 0)
  {
LABEL_19:
    v36 = *(v29 + 24);
    v37 = v65;
    v38 = *(v64 + 48);
    sub_100035AD0(v20 + v36, v65, &qword_100CA65D8);
    v39 = v21 + v36;
    v40 = v37;
    sub_100035AD0(v39, v37 + v38, &qword_100CA65D8);
    v41 = v37;
    v42 = v66;
    if (sub_100024D10(v41, 1, v66) == 1)
    {
      if (sub_100024D10(v40 + v38, 1, v42) == 1)
      {
        sub_1000180EC(v40, &qword_100CA65D8);
LABEL_26:
        sub_10000FFD0();
        if (!v22 || (static WeatherMapOverlayKind.== infix(_:_:)() & 1) == 0)
        {
          goto LABEL_11;
        }

        sub_100005D54(v30[9]);
        v51 = v22 && v49 == v50;
        if (!v51 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_11;
        }

        sub_10000FFD0();
        if (!v22)
        {
          goto LABEL_11;
        }

        sub_100005D54(v30[11]);
        v54 = v22 && v52 == v53;
        if (!v54 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_11;
        }

        sub_10000FFD0();
        if (!v22)
        {
          goto LABEL_11;
        }

        v55 = v30[13];
        v56 = *(v32 + v55);
        v57 = *(v34 + v55);
        if (v56)
        {
          if (v57)
          {
            sub_10000F868();
            v58 = v57;
            v59 = v56;
            v60 = static NSObject.== infix(_:_:)();

            if (v60)
            {
              goto LABEL_48;
            }
          }
        }

        else if (!v57)
        {
LABEL_48:
          v25 = *(v32 + v30[14]) ^ *(v34 + v30[14]) ^ 1;
          return v25 & 1;
        }

LABEL_11:
        v25 = 0;
        return v25 & 1;
      }
    }

    else
    {
      v43 = v62;
      sub_100035AD0(v40, v62, &qword_100CA65D8);
      if (sub_100024D10(v40 + v38, 1, v42) != 1)
      {
        v44 = v63;
        v45 = v40 + v38;
        v46 = v61;
        (*(v63 + 32))(v61, v45, v42);
        sub_100431C34(&qword_100CA3A00, &type metadata accessor for Location);
        v47 = dispatch thunk of static Equatable.== infix(_:_:)();
        v48 = *(v44 + 8);
        v48(v46, v42);
        v48(v43, v42);
        sub_1000180EC(v40, &qword_100CA65D8);
        if ((v47 & 1) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_26;
      }

      (*(v63 + 8))(v43, v42);
    }

    v23 = &qword_100CAEE78;
    v24 = v40;
LABEL_10:
    sub_1000180EC(v24, v23);
    goto LABEL_11;
  }

  return v25 & 1;
}

uint64_t sub_100431994@<X0>(uint64_t *a1@<X8>)
{
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CB8F98);
  a1[4] = sub_100431BD0();
  sub_100042FB0(a1);
  type metadata accessor for WeatherMenuViewModel();
  return ShortDescription.init(name:_:)();
}

uint64_t sub_100431A5C()
{
  sub_100431C34(&qword_100CB8FA8, type metadata accessor for WeatherMenuViewModel);

  return ShortDescribable.description.getter();
}

uint64_t sub_100431B10(uint64_t a1)
{
  v2 = type metadata accessor for PreviewLocation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100431B6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewLocation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100431BD0()
{
  result = qword_100CB8FA0;
  if (!qword_100CB8FA0)
  {
    sub_10022E824(&qword_100CB8F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB8FA0);
  }

  return result;
}

uint64_t sub_100431C34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ComparisonBarChartView()
{
  result = qword_100CB9008;
  if (!qword_100CB9008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100431CF0()
{
  sub_1001BA8DC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Text.Measurements();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100431DB8@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v67 = sub_10022C350(&qword_100CB9048);
  sub_1000037E8();
  __chkstk_darwin(v2);
  v4 = (&v60 - v3);
  v5 = type metadata accessor for Text.Measurements();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_10022C350(&qword_100CB9050);
  sub_1000037C4();
  v64 = v11;
  __chkstk_darwin(v12);
  v63 = &v60 - v13;
  v65 = sub_10022C350(&qword_100CB9058);
  sub_1000037E8();
  __chkstk_darwin(v14);
  v66 = &v60 - v15;
  v16 = type metadata accessor for ContentSizeCategory();
  sub_1000037C4();
  v18 = v17;
  __chkstk_darwin(v19);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v60 - v23;
  sub_10009ECC8();
  (*(v18 + 32))(v21, v24, v16);
  v25 = (*(v18 + 88))(v21, v16);
  if (v25 == enum case for ContentSizeCategory.extraSmall(_:) || v25 == enum case for ContentSizeCategory.small(_:) || v25 == enum case for ContentSizeCategory.medium(_:) || v25 == enum case for ContentSizeCategory.large(_:) || v25 == enum case for ContentSizeCategory.extraLarge(_:) || v25 == enum case for ContentSizeCategory.extraExtraLarge(_:) || v25 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
  {
    goto LABEL_39;
  }

  if (v25 != enum case for ContentSizeCategory.accessibilityMedium(_:) && v25 != enum case for ContentSizeCategory.accessibilityLarge(_:) && v25 != enum case for ContentSizeCategory.accessibilityExtraLarge(_:) && v25 != enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) && v25 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
  {
    (*(v18 + 8))(v21, v16);
LABEL_39:
    v49 = type metadata accessor for ComparisonBarChartView();
    (*(v7 + 16))(v10, v1 + *(v49 + 28), v5);

    sub_1004326DC(v50, v10);
    *v4 = v51;
    v52 = v67;
    v53 = sub_1004328A0(v1);
    __chkstk_darwin(v53);
    *(&v60 - 2) = v1;
    v62 = sub_10022C350(&qword_100CB9060);
    v61 = sub_1004339B0();
    v54 = sub_100433B18();
    v55 = v63;
    View.accessibilityChildren<A>(children:)();
    sub_1000180EC(v4, &qword_100CB9048);
    v56 = v64;
    v57 = v68;
    (*(v64 + 16))(v66, v55, v68);
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CB90B8);
    sub_10001C1FC();
    sub_100006F64(v58, v59);
    v73[0] = v52;
    v73[1] = v62;
    v73[2] = v61;
    v73[3] = v54;
    sub_10000FFE0();
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v56 + 8))(v55, v57);
  }

  sub_10022C350(&qword_100CB59A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  v37 = static Axis.Set.horizontal.getter();
  *(inited + 32) = v37;
  v38 = static Axis.Set.vertical.getter();
  *(inited + 33) = v38;
  v39 = Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v37)
  {
    v39 = Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  v40 = Axis.Set.init(rawValue:)();
  v41 = v66;
  if (v40 != v38)
  {
    v39 = Axis.Set.init(rawValue:)();
  }

  v42 = v67;
  sub_1004324E8(v1, v71);
  memcpy(v72, v71, 0x99uLL);
  memcpy(v73, v71, 0x99uLL);
  sub_1000955E0(v72, &v70, &qword_100CB90C8);
  sub_1000180EC(v73, &qword_100CB90C8);
  memcpy(&__src[7], v72, 0x99uLL);
  *v41 = v39;
  memcpy(v41 + 1, __src, 0xA0uLL);
  swift_storeEnumTagMultiPayload();
  sub_10022C350(&qword_100CB90B8);
  sub_10001C1FC();
  sub_100006F64(v43, v44);
  v45 = sub_10022E824(&qword_100CB9060);
  v46 = sub_1004339B0();
  v47 = sub_100433B18();
  v71[0] = v42;
  v71[1] = v45;
  v71[2] = v46;
  v71[3] = v47;
  sub_10000FFE0();
  swift_getOpaqueTypeConformance2();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1004324E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ComparisonBarChartView() + 20));
  v13[0] = v3[2];
  *(v13 + 9) = *(v3 + 41);
  v4 = v3[1];
  v12[0] = *v3;
  v12[1] = v4;
  KeyPath = swift_getKeyPath();
  v15 = 0;
  v6 = v3[1];
  *(v14 + 7) = *v3;
  *(&v14[1] + 7) = v6;
  *(&v14[2] + 7) = v3[2];
  v7 = *(&v14[2] + 7);
  v14[3] = *(v3 + 41);
  v16[0] = *(v14 + 7);
  v16[1] = v6;
  v17[0] = v7;
  *(v17 + 9) = v14[3];
  v8 = swift_getKeyPath();
  v9 = v3[1];
  *(v18 + 7) = *v3;
  v19 = 0;
  *(&v18[1] + 7) = v9;
  *(&v18[2] + 7) = v3[2];
  v18[3] = *(v3 + 41);
  __src[0] = KeyPath;
  LOBYTE(__src[1]) = 0;
  *(&__src[1] + 1) = v14[0];
  *(&__src[3] + 1) = v14[1];
  *(&__src[5] + 1) = v14[2];
  *(&__src[7] + 1) = v14[3];
  memcpy(v11, __src, 0x49uLL);
  v21[0] = v8;
  LOBYTE(v21[1]) = 0;
  *(&v21[1] + 1) = v18[0];
  *(&v21[3] + 1) = v18[1];
  *(&v21[5] + 1) = v18[2];
  *(&v21[7] + 1) = v18[3];
  memcpy(&v11[80], v21, 0x49uLL);
  memcpy(a2, v11, 0x99uLL);
  v22 = v8;
  v23 = 0;
  v24 = v18[0];
  v25 = v18[1];
  v26 = v18[2];
  v27 = v18[3];
  sub_100433C88(v12, &v28);
  sub_100433C88(v16, &v28);
  sub_100433CE4(__src, &v28);
  sub_100433D1C(v21, &v28);
  sub_100433D54(&v22);
  v28 = KeyPath;
  v29 = 0;
  v30 = v14[0];
  v31 = v14[1];
  v32 = v14[2];
  v33 = v14[3];
  return sub_100433D84(&v28);
}

void sub_1004326DC(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = *(a1 + 16);
  v6 = (a1 + 40);
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v5 == v4)
    {

      __chkstk_darwin(v14);
      v17[2] = a2;
      v15 = sub_100744E68(sub_1004373E0, v17, v7);

      sub_10087B54C(v15);

      v16 = type metadata accessor for Text.Measurements();
      (*(*(v16 - 8) + 8))(a2, v16);
      return;
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v9 = *(v6 - 1);
    v8 = *v6;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100109810();
      v7 = v12;
    }

    v10 = v7[2];
    if (v10 >= v7[3] >> 1)
    {
      sub_100109810();
      v7 = v13;
    }

    v7[2] = v10 + 1;
    v11 = &v7[2 * v10];
    v11[4] = v9;
    v11[5] = v8;
    v6 += 7;
    ++v4;
  }

  __break(1u);
}

uint64_t sub_1004328A0(uint64_t a1)
{
  v2 = type metadata accessor for ComparisonBarChartView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v9[1] = *(a1 + *(v5 + 28));
  swift_getKeyPath();
  sub_100433E10(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_100433E74(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);

  sub_10022C350(&qword_100CB90D0);
  sub_10022C350(&qword_100CB9098);
  sub_100006F64(&qword_100CB90D8, &qword_100CB90D0);
  sub_100006F64(&qword_100CB9090, &qword_100CB9098);
  return ForEach<>.init(_:id:content:)();
}

void sub_100432A94(__int128 *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v103 = a3;
  v5 = type metadata accessor for Font.TextStyle();
  v101 = *(v5 - 8);
  v102 = v5;
  __chkstk_darwin(v5);
  v100 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_10022C350(&qword_100CB90E0);
  __chkstk_darwin(v99);
  v110 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v112 = (&v98 - v9);
  v10 = a1[1];
  v155 = *a1;
  v156 = v10;
  v157 = a1[2];
  v158 = *(a1 + 48);
  v105 = type metadata accessor for ComparisonBarChartView();
  v106 = a2;
  v11 = (a2 + *(v105 + 20));
  v12 = *(v11 + 2);
  v13 = 1.0;
  v111 = v11;
  if (v12)
  {
    v14 = v11[5];
    if (v14 > 0.0)
    {
      v13 = *&v157 / v14;
    }
  }

  v129 = v155;
  v15 = sub_10002D5A4();

  v98 = v15;
  v16 = Text.init<A>(_:)();
  v18 = v17;
  v20 = v19;
  static Font.subheadline.getter();
  v21 = Text.font(_:)();
  v23 = v22;
  LOBYTE(v15) = v24;

  sub_10010CD64(v16, v18, v20 & 1);

  LODWORD(v129) = static HierarchicalShapeStyle.primary.getter();
  v25 = Text.foregroundStyle<A>(_:)();
  v107 = v26;
  v108 = v25;
  v104 = v27;
  v109 = v28;
  sub_10010CD64(v21, v23, v15 & 1);

  v30 = 0;
  v31 = *v111;
  v32 = *(*v111 + 16);
  v33 = (*v111 + 40);
  v34 = _swiftEmptyArrayStorage;
  while (v32 != v30)
  {
    if (v30 >= *(v31 + 16))
    {
      __break(1u);
      return;
    }

    v36 = *(v33 - 1);
    v35 = *v33;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100109810();
      v34 = isUniquelyReferenced_nonNull_native;
    }

    v37 = v34[2];
    if (v37 >= v34[3] >> 1)
    {
      sub_100109810();
      v34 = isUniquelyReferenced_nonNull_native;
    }

    v34[2] = v37 + 1;
    v38 = &v34[2 * v37];
    v38[4] = v36;
    v38[5] = v35;
    v33 += 7;
    ++v30;
  }

  __chkstk_darwin(isUniquelyReferenced_nonNull_native);
  *(&v98 - 2) = v39;
  v40 = sub_100744E68(sub_100436C9C, (&v98 - 4), v34);

  sub_10087B54C(v40);

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v104 &= 1u;
  v152 = v104;
  LODWORD(v106) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v105 = v47;
  v153 = 0;
  v48 = *(type metadata accessor for RoundedRectangle() + 20);
  v49 = enum case for RoundedCornerStyle.continuous(_:);
  v50 = type metadata accessor for RoundedCornerStyle();
  v51 = v112;
  (*(*(v50 - 8) + 104))(v112 + v48, v49, v50);
  __asm { FMOV            V0.2D, #4.0 }

  *v51 = _Q0;
  v57 = *(&v157 + 1);
  *(v51 + *(sub_10022C350(&qword_100CB90E8) + 36)) = v57;
  v58 = v13;
  *(v51 + *(sub_10022C350(&qword_100CB90F0) + 36)) = v13;

  v59 = static Alignment.leading.getter();
  v61 = v60;
  v62 = v51 + *(sub_10022C350(&qword_100CB90F8) + 36);
  sub_100433428(&v155);
  v63 = &v62[*(sub_10022C350(&qword_100CB9100) + 36)];
  *v63 = v59;
  v63[1] = v61;
  *(v51 + *(v99 + 36)) = 0;
  v64 = *&v157;
  v129 = v156;

  v65 = Text.init<A>(_:)();
  v67 = v66;
  v69 = v68;
  LODWORD(v129) = static HierarchicalShapeStyle.primary.getter();
  v70 = Text.foregroundStyle<A>(_:)();
  v72 = v71;
  v74 = v73;
  sub_10010CD64(v65, v67, v69 & 1);

  v76 = v100;
  v75 = v101;
  v77 = v102;
  (*(v101 + 104))(v100, enum case for Font.TextStyle.title3(_:), v102);
  static Font.Weight.semibold.getter();
  static Font.system(_:weight:)();
  (*(v75 + 8))(v76, v77);
  v78 = Text.font(_:)();
  v101 = v79;
  v102 = v80;
  v82 = v81;

  sub_10010CD64(v70, v72, v74 & 1);

  if (*(v111 + 2))
  {
    LODWORD(v111) = v64 == v111[5];
  }

  else
  {
    LODWORD(v111) = 0;
  }

  LODWORD(v100) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v91 = v82 & 1;
  v147 = v82 & 1;
  v143 = 0;
  v92 = v110;
  sub_1000955E0(v112, v110, &qword_100CB90E0);
  *&v113[0] = v108;
  *(&v113[0] + 1) = v107;
  LOBYTE(v113[1]) = v104;
  *(&v113[1] + 1) = *v151;
  DWORD1(v113[1]) = *&v151[3];
  *(&v113[1] + 1) = v109;
  v113[2] = v148;
  v113[3] = v149;
  v113[4] = v150;
  LOBYTE(v113[5]) = v106;
  DWORD1(v113[5]) = *&v154[3];
  *(&v113[5] + 1) = *v154;
  *(&v113[5] + 1) = v42;
  *&v113[6] = v44;
  *(&v113[6] + 1) = v46;
  *&v113[7] = v105;
  BYTE8(v113[7]) = 0;
  v93 = v103;
  memcpy(v103, v113, 0x79uLL);
  v94 = sub_10022C350(&qword_100CB9108);
  sub_1000955E0(v92, &v93[*(v94 + 48)], &qword_100CB90E0);
  v95 = *(v94 + 64);
  v97 = v101;
  v96 = v102;
  v114[0] = v78;
  v114[1] = v101;
  LOBYTE(v114[2]) = v91;
  *(&v114[2] + 1) = *v146;
  HIDWORD(v114[2]) = *&v146[3];
  v114[3] = v102;
  LOBYTE(v94) = v111;
  LOBYTE(v114[4]) = v111;
  *(&v114[4] + 1) = *v145;
  HIDWORD(v114[4]) = *&v145[3];
  *&v114[5] = v58;
  LOBYTE(v92) = v100;
  LOBYTE(v114[6]) = v100;
  HIDWORD(v114[6]) = *&v144[3];
  *(&v114[6] + 1) = *v144;
  v114[7] = v84;
  v114[8] = v86;
  v114[9] = v88;
  v114[10] = v90;
  LOBYTE(v114[11]) = 0;
  memcpy(&v93[v95], v114, 0x59uLL);
  sub_1000955E0(v113, &v129, &qword_100CB9110);
  sub_1000955E0(v114, &v129, &qword_100CB9118);
  sub_1000180EC(v112, &qword_100CB90E0);
  v115[0] = v78;
  v115[1] = v97;
  v116 = v91;
  *v117 = *v146;
  *&v117[3] = *&v146[3];
  v118 = v96;
  v119 = v94;
  *v120 = *v145;
  *&v120[3] = *&v145[3];
  v121 = v58;
  v122 = v92;
  *v123 = *v144;
  *&v123[3] = *&v144[3];
  v124 = v84;
  v125 = v86;
  v126 = v88;
  v127 = v90;
  v128 = 0;
  sub_1000180EC(v115, &qword_100CB9118);
  sub_1000180EC(v110, &qword_100CB90E0);
  *&v129 = v108;
  *(&v129 + 1) = v107;
  v130 = v104;
  *v131 = *v151;
  *&v131[3] = *&v151[3];
  v132 = v109;
  v133 = v148;
  v134 = v149;
  v135 = v150;
  v136 = v106;
  *&v137[3] = *&v154[3];
  *v137 = *v154;
  v138 = v42;
  v139 = v44;
  v140 = v46;
  v141 = v105;
  v142 = 0;
  sub_1000180EC(&v129, &qword_100CB9110);
}