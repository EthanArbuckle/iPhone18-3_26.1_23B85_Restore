uint64_t sub_1007987BC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for ConditionDetailChartHeaderViewModel() + 20));
  switch(v3)
  {
    case 2:
      if (qword_100CA20B0 != -1)
      {
        swift_once();
      }

      v4 = qword_100D8FD78;
      a1[3] = type metadata accessor for DefaultChartHeaderStyle();
      v5 = &unk_100CD7368;
      v6 = type metadata accessor for DefaultChartHeaderStyle;
      goto LABEL_17;
    case 3:
      if (qword_100CA2BB8 != -1)
      {
        swift_once();
      }

      v4 = qword_100D91510;
      a1[3] = type metadata accessor for ChanceOfRainChartHeaderStyle();
      v5 = &unk_100CD7360;
      v6 = type metadata accessor for ChanceOfRainChartHeaderStyle;
      goto LABEL_17;
    case 4:
      if (qword_100CA2BB0 != -1)
      {
        swift_once();
      }

      v4 = qword_100D91508;
      a1[3] = type metadata accessor for TemperatureChartHeaderStyle();
      v5 = &unk_100CD7358;
      v6 = type metadata accessor for TemperatureChartHeaderStyle;
      goto LABEL_17;
    case 5:
      if (qword_100CA2948 != -1)
      {
        swift_once();
      }

      v4 = qword_100D911B8;
      a1[3] = type metadata accessor for VisibilityChartHeaderStyle();
      v5 = &unk_100CD7350;
      v6 = type metadata accessor for VisibilityChartHeaderStyle;
      goto LABEL_17;
    case 6:
      if (qword_100CA2360 != -1)
      {
        swift_once();
      }

      v4 = qword_100D90580;
      a1[3] = type metadata accessor for UVIndexChartHeaderStyle();
      v5 = &unk_100CD7348;
      v6 = type metadata accessor for UVIndexChartHeaderStyle;
LABEL_17:
      a1[4] = sub_10079DCD8(v5, v6);
      *a1 = v4;

      break;
    default:
      v8 = type metadata accessor for PrecipitationChartHeaderStyle();
      swift_allocObject();
      v9 = sub_1004CBA64(v3 & 1);
      a1[3] = v8;
      result = sub_10079DCD8(&qword_100CD7340, type metadata accessor for PrecipitationChartHeaderStyle);
      a1[4] = result;
      *a1 = v9;
      break;
  }

  return result;
}

uint64_t sub_100798AFC()
{
  v0 = sub_10022C350(&qword_100CA5730);
  sub_100003810(v0);
  sub_100003828();
  __chkstk_darwin(v1);
  v3 = &v28 - v2;
  v4 = type metadata accessor for ConditionDetailChartHeaderViewModel();
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  __chkstk_darwin(v14);
  v16 = &v28 - v15;
  sub_10001F730();
  sub_100003940();
  sub_10079D9B4();
  ConditionDetailChartHeaderStringModel.title2.getter();
  v17 = type metadata accessor for ConditionDetailChartHeaderStringModel();
  sub_1000037E8();
  v19 = *(v18 + 8);
  v19(v16, v17);
  v20 = type metadata accessor for AttributedString();
  LODWORD(v16) = sub_100024D10(v3, 1, v20);
  sub_1000180EC(v3, &qword_100CA5730);
  if (v16 == 1)
  {
    sub_10001F730();
    sub_10079D9B4();
    ConditionDetailChartHeaderStringModel.title3.getter();
    v22 = v21;
    v19(v13, v17);
    if (!v22)
    {
      sub_10001F730();
      sub_10079D9B4();
      ConditionDetailChartHeaderStringModel.symbolName.getter();
      v24 = v23;
      v19(v10, v17);
      if (!v24)
      {
        sub_10001F730();
        sub_10079D9B4();
        ConditionDetailChartHeaderStringModel.subtitle.getter();
        v26 = v25;
        v19(v7, v17);
        if (!v26)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_100798D58@<X0>(uint64_t a1@<X8>)
{
  v105 = a1;
  v2 = sub_10022C350(&qword_100CA5730);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  sub_100003918(v93 - v4);
  v5 = type metadata accessor for AttributedString();
  v6 = sub_100003E5C(v5, v115 + 8);
  v100 = v7;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v10 = sub_100003918(v9 - v8);
  v104 = type metadata accessor for AutomationInfo(v10);
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000037D8();
  sub_100003918(v13 - v12);
  v14 = type metadata accessor for ConditionDetailChartHeaderViewModel();
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  v102 = v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  sub_100003918(v93 - v18);
  v19 = type metadata accessor for AccessibilityChildBehavior();
  v20 = sub_100003E5C(v19, &v116);
  v97 = v21;
  __chkstk_darwin(v20);
  sub_1000037D8();
  v24 = v23 - v22;
  v25 = sub_10022C350(&qword_100CD72F0);
  sub_100003810(v25);
  sub_100003828();
  __chkstk_darwin(v26);
  v28 = v93 - v27;
  v29 = sub_10022C350(&qword_100CD72F8) - 8;
  sub_100003828();
  __chkstk_darwin(v30);
  v32 = v93 - v31;
  v33 = sub_10022C350(&qword_100CD7300);
  sub_100003828();
  __chkstk_darwin(v34);
  v36 = v93 - v35;
  v37 = sub_10022C350(&qword_100CD7308);
  sub_100003E5C(v37, &__src[104]);
  v96 = v38;
  sub_100003828();
  __chkstk_darwin(v39);
  v94 = v93 - v40;
  v41 = sub_10022C350(&qword_100CD7310);
  sub_100003810(v41);
  sub_100003828();
  __chkstk_darwin(v42);
  sub_100003918(v93 - v43);
  *v28 = *(v1 + *(type metadata accessor for ConditionDetailChartHeaderView() + 20));
  *(v28 + 1) = 0;
  v28[16] = 0;
  v44 = sub_10022C350(&qword_100CD7318);
  sub_100799788(v1, &v28[*(v44 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100051BBC();
  memcpy(&v32[*(v29 + 44)], __src, 0x70uLL);
  sub_1007987BC(&v114);
  sub_1000161C0(&v114, *(&v115[0] + 1));
  dispatch thunk of ConditionDetailChartHeaderStyleType.preferredHeight.getter();
  sub_100006F14(&v114);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_100051BBC();
  v93[0] = v33;
  v45 = &v36[*(v33 + 36)];
  v46 = v115[0];
  *v45 = v114;
  *(v45 + 1) = v46;
  *(v45 + 2) = v115[1];
  static AccessibilityChildBehavior.ignore.getter();
  v47 = sub_10079D870();
  v48 = v94;
  View.accessibilityElement(children:)();
  (*(v97 + 1))(v24, v107);
  sub_1000180EC(v36, &qword_100CD7300);
  sub_10001F730();
  v93[2] = v49;
  v106 = v1;
  v50 = v108;
  sub_10079D9B4();
  v51 = ConditionDetailChartHeaderStringModel.accessibilityDescription.getter();
  v53 = v52;
  v54 = type metadata accessor for ConditionDetailChartHeaderStringModel();
  sub_1000037E8();
  v56 = *(v55 + 8);
  v57 = v55 + 8;
  v107 = v54;
  v56(v50, v54);
  v93[1] = v57;
  v58 = v56;
  v111 = v51;
  v112 = v53;
  v109 = v93[0];
  v110 = v47;
  swift_getOpaqueTypeConformance2();
  sub_10002D5A4();
  v59 = v95;
  View.accessibilityLabel<A>(_:)();

  (*(v96 + 8))(v48, v59);
  sub_10079D9B4();
  v60 = v98;
  ConditionDetailChartHeaderStringModel.title1.getter();
  v58(v50, v54);
  v97 = v58;
  sub_10079DCD8(&qword_100CA5738, &type metadata accessor for AttributedString);
  v61 = v99;
  v62 = dispatch thunk of CustomStringConvertible.description.getter();
  v64 = v63;
  (*(v100 + 8))(v60, v61);
  v111 = v62;
  v112 = v64;

  v65._countAndFlagsBits = 32;
  v65._object = 0xE100000000000000;
  String.append(_:)(v65);

  v66 = v111;
  sub_10079D9B4();
  v67 = v101;
  ConditionDetailChartHeaderStringModel.title2.getter();
  v58(v50, v107);
  v68 = sub_10027884C();
  v70 = v69;
  sub_1000180EC(v67, &qword_100CA5730);
  v111 = v66;
  sub_1000231B8();
  v71._countAndFlagsBits = v68;
  v71._object = v70;
  String.append(_:)(v71);

  sub_1000231B8();
  v72._countAndFlagsBits = 32;
  v72._object = 0xE100000000000000;
  String.append(_:)(v72);

  v73 = v111;
  v74 = v102;
  sub_10079D9B4();
  v75 = ConditionDetailChartHeaderStringModel.title3.getter();
  v77 = v76;
  v78 = v107;
  v79 = v97;
  v97(v74, v107);
  if (v77)
  {
    v80 = v75;
  }

  else
  {
    v80 = 0;
  }

  if (!v77)
  {
    v77 = 0xE000000000000000;
  }

  v111 = v73;
  sub_1000231B8();
  v81._countAndFlagsBits = v80;
  v81._object = v77;
  String.append(_:)(v81);

  v82 = v111;
  v83 = v112;
  v84 = v108;
  sub_10079D9B4();
  v85 = ConditionDetailChartHeaderStringModel.subtitle.getter();
  v87 = v86;
  v79(v84, v78);
  v88 = v103;
  *v103 = v82;
  v88[1] = v83;
  v88[2] = v85;
  v88[3] = v87;
  v89 = v88;
  type metadata accessor for AutomationCellInfo(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v90 = sub_10022C350(&qword_100CD7338);
  v91 = v105 + *(v90 + 36);
  type metadata accessor for AutomationInfoProperty();
  sub_10079D9B4();
  sub_1001C9E84(v89);
  *v91 = 0;
  *(v91 + 8) = 0xE000000000000000;
  *(v91 + 16) = swift_getKeyPath();
  *(v91 + 24) = 0;
  return sub_10021057C();
}

uint64_t sub_100799788@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v52 = a2;
  v49 = sub_10022C350(&qword_100CD7370);
  __chkstk_darwin(v49);
  v4 = &v48 - v3;
  v5 = sub_10022C350(&qword_100CD7378);
  __chkstk_darwin(v5);
  v7 = &v48 - v6;
  v8 = type metadata accessor for AttributedString();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for ConditionDetailChartHeaderViewModel();
  __chkstk_darwin(v9 - 8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CD7380);
  __chkstk_darwin(v12 - 8);
  v50 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v53 = &v48 - v15;
  sub_1007987BC(&v57);
  sub_1000161C0(&v57, v60);
  dispatch thunk of ConditionDetailChartHeaderStyleType.topPadding.getter();
  v17 = v16;
  sub_100006F14(&v57);
  if (sub_100798AFC())
  {
    sub_10079D9B4();
    ConditionDetailChartHeaderStringModel.title1.getter();
    v18 = type metadata accessor for ConditionDetailChartHeaderStringModel();
    (*(*(v18 - 8) + 8))(v11, v18);
    v19 = Text.init(_:)();
    v21 = v20;
    v51 = a1;
    v23 = v22;
    v48 = v5;
    sub_1007987BC(&v57);
    sub_1000161C0(&v57, v60);
    dispatch thunk of ConditionDetailChartHeaderStyleType.title1Font.getter();
    v24 = Text.font(_:)();
    v26 = v25;
    v28 = v27;
    sub_10010CD64(v19, v21, v23 & 1);

    sub_100006F14(&v57);
    sub_1007987BC(&v57);
    sub_1000161C0(&v57, v60);
    dispatch thunk of ConditionDetailChartHeaderStyleType.title1Color.getter();
    v29 = Text.foregroundColor(_:)();
    v31 = v30;
    LOBYTE(v21) = v32;
    v34 = v33;
    sub_10010CD64(v24, v26, v28 & 1);

    sub_100006F14(&v57);
    KeyPath = swift_getKeyPath();
    *v7 = v29;
    *(v7 + 1) = v31;
    v7[16] = v21 & 1;
    *(v7 + 3) = v34;
    *(v7 + 4) = KeyPath;
    *(v7 + 5) = 0x3FE0000000000000;
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CB91D8);
    sub_10043721C();
    sub_100006F64(&qword_100CD7388, &qword_100CD7370);
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    sub_100799E14(v4);
    sub_100095588();
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CB91D8);
    sub_10043721C();
    sub_100006F64(&qword_100CD7388, &qword_100CD7370);
    _ConditionalContent<>.init(storage:)();
    sub_1000180EC(v4, &qword_100CD7370);
  }

  sub_1007987BC(v54);
  sub_1000161C0(v54, v54[3]);
  dispatch thunk of ConditionDetailChartHeaderStyleType.bottomPadding.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v51 = v57;
  v36 = v58;
  v49 = v59;
  v37 = v60;
  v38 = v62;
  v48 = v61;
  sub_100006F14(v54);
  LOBYTE(v54[0]) = 1;
  v56 = v36;
  v55 = v37;
  v39 = v53;
  v40 = v50;
  sub_100095588();
  v41 = v54[0];
  v42 = v56;
  v43 = v55;
  v44 = v52;
  *v52 = v17;
  *(v44 + 8) = 0;
  v45 = sub_10022C350(&qword_100CD7390);
  sub_100095588();
  v46 = v44 + *(v45 + 64);
  *v46 = 0;
  v46[8] = v41;
  *(v46 + 2) = v51;
  v46[24] = v42;
  *(v46 + 4) = v49;
  v46[40] = v43;
  *(v46 + 6) = v48;
  *(v46 + 7) = v38;
  sub_1000180EC(v39, &qword_100CD7380);
  return sub_1000180EC(v40, &qword_100CD7380);
}

uint64_t sub_100799E14@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ConditionDetailChartHeaderViewModel();
  __chkstk_darwin(v4 - 8);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = sub_10022C350(&qword_100CD7398);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v11);
  v13 = &v29[-v12 - 8];
  *v13 = static VerticalAlignment.firstTextBaseline.getter();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v14 = sub_10022C350(&qword_100CD73A0);
  sub_10079A188(&v13[*(v14 + 44)]);
  v15 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v16 = &v13[*(v8 + 44)];
  *v16 = v15;
  *(v16 + 1) = v17;
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  *(v16 + 4) = v20;
  v16[40] = 0;
  sub_10079D9B4();
  v21 = ConditionDetailChartHeaderStringModel.subtitle.getter();
  v23 = v22;
  v24 = type metadata accessor for ConditionDetailChartHeaderStringModel();
  (*(*(v24 - 8) + 8))(v6, v24);
  if (v23)
  {
    v25 = static Axis.Set.horizontal.getter();
    sub_10079CF10(v21, v23, v2, __src);
    memcpy(v30, __src, 0x80uLL);
    memcpy(v31, __src, 0x80uLL);
    sub_100095588();
    sub_1000180EC(v31, &qword_100CD73B8);

    memcpy(&v29[7], v30, 0x80uLL);
    v32[0] = v25;
    memcpy(&v32[1], v29, 0x87uLL);
    LocationSearchEntityFromStringResolver.init()();
    memcpy(__src, v32, sizeof(__src));
  }

  else
  {
    sub_10079DA0C(__src);
  }

  sub_100095588();
  memcpy(v30, __src, sizeof(v30));
  sub_100095588();
  v26 = *(sub_10022C350(&qword_100CD73A8) + 48);
  memcpy(v31, v30, sizeof(v31));
  memcpy((a1 + v26), v30, 0x88uLL);
  sub_100095588();
  sub_1000180EC(v13, &qword_100CD7398);
  memcpy(v32, v30, sizeof(v32));
  sub_1000180EC(v32, &qword_100CD73B0);
  return sub_1000180EC(v10, &qword_100CD7398);
}

uint64_t sub_10079A188@<X0>(void *a1@<X8>)
{
  v62 = a1;
  v61 = sub_10022C350(&qword_100CD73C0);
  __chkstk_darwin(v61);
  v53 = (&v51 - v1);
  v2 = sub_10022C350(&qword_100CBB908);
  __chkstk_darwin(v2 - 8);
  v51 = &v51 - v3;
  v52 = sub_10022C350(&qword_100CB5160);
  __chkstk_darwin(v52);
  v55 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v54 = (&v51 - v6);
  v7 = sub_10022C350(&qword_100CD73C8);
  __chkstk_darwin(v7 - 8);
  v60 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v51 - v10;
  v12 = type metadata accessor for ConditionDetailChartHeaderStringModel.TitleOrder();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ConditionDetailChartHeaderViewModel();
  __chkstk_darwin(v16 - 8);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v51 - v20;
  sub_10079D9B4();
  ConditionDetailChartHeaderStringModel.titleOrder.getter();
  v22 = type metadata accessor for ConditionDetailChartHeaderStringModel();
  v23 = *(v22 - 8);
  v57 = *(v23 + 8);
  v58 = v22;
  v56 = v23 + 8;
  v57(v21);
  v24 = (*(v13 + 88))(v15, v12);
  v59 = v11;
  if (v24 == enum case for ConditionDetailChartHeaderStringModel.TitleOrder.moveLastToFirst(_:))
  {
    sub_10079ACDC(v64);
    memcpy(v66, v64, 0xE0uLL);
    sub_10079DB14(v66);
    memcpy(v68, v66, 0xE1uLL);
    sub_100095588();
    sub_10022C350(&qword_100CD73F0);
    sub_10022C350(&qword_100CD7400);
    sub_100006F64(&qword_100CD73E8, &qword_100CD73F0);
    sub_100006F64(&qword_100CD73F8, &qword_100CD7400);
    _ConditionalContent<>.init(storage:)();
    memcpy(v68, v63, 0xE1uLL);
    sub_10079DB0C(v68);
    memcpy(v65, v68, 0x12AuLL);
    sub_10022C350(&qword_100CD73D0);
    sub_10022C350(&qword_100CD73D8);
    sub_10079DA20();
    sub_100006F64(&qword_100CD7408, &qword_100CD73D8);
    _ConditionalContent<>.init(storage:)();
    v25 = &qword_100CD73F0;
LABEL_5:
    sub_1000180EC(v64, v25);
    v26 = v67;
    goto LABEL_7;
  }

  if (v24 == enum case for ConditionDetailChartHeaderStringModel.TitleOrder.reversed(_:))
  {
    sub_10079B6A8(v64);
    memcpy(v66, v64, 0xE0uLL);
    sub_10079DB00(v66);
    memcpy(v68, v66, 0xE1uLL);
    sub_100095588();
    sub_10022C350(&qword_100CD73F0);
    sub_10022C350(&qword_100CD7400);
    sub_100006F64(&qword_100CD73E8, &qword_100CD73F0);
    sub_100006F64(&qword_100CD73F8, &qword_100CD7400);
    _ConditionalContent<>.init(storage:)();
    memcpy(v68, v63, 0xE1uLL);
    sub_10079DB0C(v68);
    memcpy(v65, v68, 0x12AuLL);
    sub_10022C350(&qword_100CD73D0);
    sub_10022C350(&qword_100CD73D8);
    sub_10079DA20();
    sub_100006F64(&qword_100CD7408, &qword_100CD73D8);
    _ConditionalContent<>.init(storage:)();
    v25 = &qword_100CD7400;
    goto LABEL_5;
  }

  sub_10079C0AC(v66);
  memcpy(v67, v66, 0x129uLL);
  sub_10079DA14(v67);
  memcpy(v65, v67, 0x12AuLL);
  sub_10022C350(&qword_100CD73D0);
  sub_10022C350(&qword_100CD73D8);
  sub_10079DA20();
  sub_100006F64(&qword_100CD7408, &qword_100CD73D8);
  _ConditionalContent<>.init(storage:)();
  (*(v13 + 8))(v15, v12);
  v26 = v68;
LABEL_7:
  memcpy(v69, v26, sizeof(v69));
  sub_10079D9B4();
  ConditionDetailChartHeaderStringModel.symbolName.getter();
  v28 = v27;
  (v57)(v18, v58);
  if (v28)
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v57 = v65[2];
    v58 = v65[0];
    v56 = v65[4];
    v29 = v65[5];
    v67[0] = 1;
    LOBYTE(v66[0]) = v65[1];
    v63[0] = v65[3];
    Image.init(systemName:)();
    v30 = v51;
    static Image.TemplateRenderingMode.macSafeOriginal.getter();
    v31 = type metadata accessor for Image.TemplateRenderingMode();
    sub_10001B350(v30, 0, 1, v31);
    v32 = Image.renderingMode(_:)();

    sub_1000180EC(v30, &qword_100CBB908);
    v33 = sub_10022C350(&qword_100CB5170);
    v34 = v54;
    v35 = (v54 + *(v33 + 36));
    v36 = *(sub_10022C350(&qword_100CAF750) + 28);
    v37 = enum case for Image.Scale.small(_:);
    v38 = type metadata accessor for Image.Scale();
    (*(*(v38 - 8) + 104))(v35 + v36, v37, v38);
    *v35 = swift_getKeyPath();
    *v34 = v32;
    sub_1007987BC(v68);
    sub_1000161C0(v68, v68[3]);
    v39 = dispatch thunk of ConditionDetailChartHeaderStyleType.title1Font.getter();
    KeyPath = swift_getKeyPath();
    v41 = (v34 + *(v52 + 36));
    *v41 = KeyPath;
    v41[1] = v39;
    sub_100006F14(v68);
    LOBYTE(v35) = v67[0];
    LOBYTE(v36) = v66[0];
    v42 = v63[0];
    v43 = v55;
    sub_100095588();
    v44 = v53;
    *v53 = 0;
    *(v44 + 8) = v35;
    v45 = v57;
    v44[2] = v58;
    *(v44 + 24) = v36;
    v44[4] = v45;
    *(v44 + 40) = v42;
    v44[6] = v56;
    v44[7] = v29;
    sub_10022C350(&qword_100CD7420);
    sub_100095588();
    sub_1000180EC(v34, &qword_100CB5160);
    sub_1000180EC(v43, &qword_100CB5160);
    v46 = v59;
    sub_100051BBC();
    v47 = v46;
    v48 = 0;
  }

  else
  {
    v46 = v59;
    v47 = v59;
    v48 = 1;
  }

  sub_10001B350(v47, v48, 1, v61);
  v49 = v60;
  sub_100095588();
  memcpy(v67, v69, 0x12AuLL);
  memcpy(v62, v69, 0x12AuLL);
  sub_10022C350(&qword_100CD7410);
  sub_100095588();
  sub_100095588();
  sub_1000180EC(v46, &qword_100CD73C8);
  sub_1000180EC(v49, &qword_100CD73C8);
  memcpy(v68, v69, 0x12AuLL);
  return sub_1000180EC(v68, &qword_100CD7418);
}

uint64_t sub_10079ACDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v113 = a1;
  v3 = sub_10022C350(&qword_100CA5730);
  __chkstk_darwin(v3 - 8);
  v106 = &v96 - v4;
  v115 = type metadata accessor for AttributedString();
  v112 = *(v115 - 8);
  __chkstk_darwin(v115);
  v111 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v96 - v7;
  v9 = type metadata accessor for ConditionDetailChartHeaderViewModel();
  __chkstk_darwin(v9 - 8);
  v101 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v96 - v12;
  __chkstk_darwin(v14);
  v16 = &v96 - v15;
  sub_10079D9B4();
  v17 = ConditionDetailChartHeaderStringModel.title3.getter();
  v19 = v18;
  v20 = type metadata accessor for ConditionDetailChartHeaderStringModel();
  v21 = *(v20 - 8);
  v117 = *(v21 + 8);
  v118 = v20;
  *&v116 = v21 + 8;
  v117(v16);
  v119 = v2;
  v114 = v8;
  if (v19)
  {
    v141[0] = v17;
    v141[1] = v19;
    sub_10002D5A4();
    v22 = Text.init<A>(_:)();
    v105 = v13;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    sub_1007987BC(v141);
    sub_1000161C0(v141, v141[3]);
    dispatch thunk of ConditionDetailChartHeaderStyleType.title3Font.getter();
    v28 = Text.font(_:)();
    v30 = v29;
    v32 = v31;
    sub_10010CD64(v23, v25, v27 & 1);

    sub_100006F14(v141);
    sub_1007987BC(v141);
    sub_1000161C0(v141, v141[3]);
    dispatch thunk of ConditionDetailChartHeaderStyleType.title3Color.getter();
    v33 = Text.foregroundColor(_:)();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    sub_10010CD64(v28, v30, v32 & 1);

    sub_100006F14(v141);
    v109 = v35;
    v110 = v33;
    v40 = v33;
    v13 = v105;
    v107 = v37 & 1;
    sub_10010CD54(v40, v35, v37 & 1);
    v108 = v39;
  }

  else
  {
    v109 = 0;
    v110 = 0;
    v107 = 0;
    v108 = 0;
  }

  sub_1007987BC(v141);
  sub_1000161C0(v141, v141[3]);
  dispatch thunk of ConditionDetailChartHeaderStyleType.title3LeadingPadding.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v41 = v149;
  v102 = v148;
  v103 = v150;
  v42 = v151;
  v104 = v153;
  v105 = v152;
  sub_100006F14(v141);
  v147 = 1;
  v145 = v41;
  v143 = v42;
  v96 = type metadata accessor for ConditionDetailChartHeaderViewModel;
  sub_10079D9B4();
  ConditionDetailChartHeaderStringModel.title1.getter();
  (v117)(v13, v118);
  v43 = Text.init(_:)();
  v45 = v44;
  v47 = v46;
  sub_1007987BC(v141);
  sub_1000161C0(v141, v141[3]);
  dispatch thunk of ConditionDetailChartHeaderStyleType.title1Font.getter();
  v48 = Text.font(_:)();
  v50 = v49;
  v52 = v51;
  sub_10010CD64(v43, v45, v47 & 1);

  sub_100006F14(v141);
  sub_1007987BC(v141);
  sub_1000161C0(v141, v141[3]);
  dispatch thunk of ConditionDetailChartHeaderStyleType.title1Color.getter();
  v53 = Text.foregroundColor(_:)();
  v98 = v54;
  v99 = v53;
  v97 = v55;
  v100 = v56;
  sub_10010CD64(v48, v50, v52 & 1);

  sub_100006F14(v141);
  v57 = v101;
  sub_10079D9B4();
  v58 = v106;
  ConditionDetailChartHeaderStringModel.title2.getter();
  (v117)(v57, v118);
  v59 = v115;
  if (sub_100024D10(v58, 1, v115) == 1)
  {
    sub_1000180EC(v58, &qword_100CA5730);
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0uLL;
  }

  else
  {
    v70 = v111;
    v71 = v112;
    (*(v112 + 32))(v111, v58, v59);
    sub_1007987BC(v141);
    sub_1000161C0(v141, v141[3]);
    dispatch thunk of ConditionDetailChartHeaderStyleType.title2LeadingPadding.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v72 = v155;
    v117 = v156;
    v118 = v154;
    v73 = v157;
    v116 = v158;
    sub_100006F14(v141);
    LOBYTE(v120[0]) = 1;
    LOBYTE(v125) = v72;
    LOBYTE(v140[0]) = v73;
    (*(v71 + 16))(v114, v70, v59);
    v74 = Text.init(_:)();
    v76 = v75;
    LOBYTE(v70) = v77;
    sub_1007987BC(v141);
    sub_1000161C0(v141, v141[3]);
    dispatch thunk of ConditionDetailChartHeaderStyleType.title2Font.getter();
    v78 = Text.font(_:)();
    v80 = v79;
    v82 = v81;
    v114 = v83;
    sub_10010CD64(v74, v76, v70 & 1);

    sub_100006F14(v141);
    sub_1007987BC(v141);
    sub_1000161C0(v141, v141[3]);
    dispatch thunk of ConditionDetailChartHeaderStyleType.title2Color.getter();
    v65 = Text.foregroundColor(_:)();
    v66 = v84;
    v86 = v85;
    v67 = v87;
    sub_10010CD64(v78, v80, v82 & 1);

    sub_100006F14(v141);
    v88 = LOBYTE(v120[0]);
    v89 = v125;
    v64 = LOBYTE(v140[0]);
    LOBYTE(v141[0]) = v86 & 1;
    LOBYTE(v136) = v86 & 1;
    sub_10010CD54(v65, v66, v86 & 1);
    v90 = *(v112 + 8);

    v90(v111, v115);
    v68 = v136;
    sub_10010CD64(v65, v66, v141[0]);

    v62 = v89;
    v60 = v88;
    v69 = v116;
    v63 = v117;
    v61 = v118;
  }

  v92 = v109;
  v91 = v110;
  v136 = v110;
  v137 = v109;
  v94 = v107;
  v93 = v108;
  v138 = v107;
  v139 = v108;
  v126 = v147;
  *v127 = *v146;
  *&v127[3] = *&v146[3];
  v125 = 0;
  v128 = v102;
  v129 = v145;
  *v130 = *v144;
  *&v130[3] = *&v144[3];
  v131 = v103;
  v132 = v143;
  *&v133[3] = *&v142[3];
  *v133 = *v142;
  v134 = v105;
  v135 = v104;
  v140[0] = &v136;
  v140[1] = &v125;
  v121 = v99;
  v122 = v98;
  v123 = v97 & 1;
  v124 = v100;
  *&v120[0] = 0;
  *(&v120[0] + 1) = v60;
  *&v120[1] = v61;
  *(&v120[1] + 1) = v62;
  *&v120[2] = v63;
  *(&v120[2] + 1) = v64;
  v120[3] = v69;
  *&v120[4] = v65;
  *(&v120[4] + 1) = v66;
  *&v120[5] = v68;
  *(&v120[5] + 1) = v67;
  v140[2] = &v121;
  v140[3] = v120;
  sub_1003E9AD0(v140, v113);
  sub_10014A53C(v91, v92, v94, v93);
  memcpy(v141, v120, 0x60uLL);
  sub_1000180EC(v141, &qword_100CB5EA0);
  sub_10010CD64(v121, v122, v123);

  return sub_10014A53C(v136, v137, v138, v139);
}

uint64_t sub_10079B6A8@<X0>(uint64_t a1@<X8>)
{
  v106 = a1;
  v2 = sub_10022C350(&qword_100CA5730);
  __chkstk_darwin(v2 - 8);
  v111 = &v87 - v3;
  v4 = type metadata accessor for AttributedString();
  v100 = *(v4 - 8);
  __chkstk_darwin(v4);
  v112 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v99 = &v87 - v7;
  v8 = type metadata accessor for ConditionDetailChartHeaderViewModel();
  __chkstk_darwin(v8 - 8);
  v102 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v94 = &v87 - v11;
  __chkstk_darwin(v12);
  v14 = &v87 - v13;
  v113 = v1;
  sub_10079D9B4();
  v15 = ConditionDetailChartHeaderStringModel.title3.getter();
  v17 = v16;
  v18 = type metadata accessor for ConditionDetailChartHeaderStringModel();
  v19 = *(v18 - 8);
  v20 = *(v19 + 8);
  v21 = v19 + 8;
  v20(v14, v18);
  v109 = v18;
  v110 = v4;
  v107 = v21;
  v108 = v20;
  if (v17)
  {
    v135[0] = v15;
    v135[1] = v17;
    sub_10002D5A4();
    v22 = Text.init<A>(_:)();
    v24 = v23;
    v26 = v25;
    sub_1007987BC(v135);
    sub_1000161C0(v135, v135[3]);
    dispatch thunk of ConditionDetailChartHeaderStyleType.title3Font.getter();
    v27 = Text.font(_:)();
    v29 = v28;
    v31 = v30;
    v105 = v32;
    sub_10010CD64(v22, v24, v26 & 1);

    sub_100006F14(v135);
    sub_1007987BC(v135);
    sub_1000161C0(v135, v135[3]);
    dispatch thunk of ConditionDetailChartHeaderStyleType.title3Color.getter();
    v33 = Text.foregroundColor(_:)();
    v35 = v34;
    LOBYTE(v24) = v36;
    v38 = v37;
    v39 = v31 & 1;
    v20 = v108;
    sub_10010CD64(v27, v29, v39);

    sub_100006F14(v135);
    v104 = v35;
    v105 = v33;
    v40 = v33;
    v18 = v109;
    v101 = v24 & 1;
    sub_10010CD54(v40, v35, v24 & 1);
    v103 = v38;
    v4 = v110;
  }

  else
  {
    v104 = 0;
    v105 = 0;
    v101 = 0;
    v103 = 0;
  }

  sub_1007987BC(v135);
  sub_1000161C0(v135, v135[3]);
  dispatch thunk of ConditionDetailChartHeaderStyleType.title3LeadingPadding.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v41 = v143;
  v95 = v142;
  v96 = v144;
  v42 = v145;
  v97 = v147;
  v98 = v146;
  sub_100006F14(v135);
  v141 = 1;
  v139 = v41;
  v137 = v42;
  v43 = v94;
  sub_10079D9B4();
  v44 = v111;
  ConditionDetailChartHeaderStringModel.title2.getter();
  v20(v43, v18);
  if (sub_100024D10(v44, 1, v4) == 1)
  {
    sub_1000180EC(v44, &qword_100CA5730);
    v110 = 0;
    v111 = 0;
    v99 = 0;
    v100 = 0;
    v89 = 0;
    v90 = 0;
    v93 = 0;
    v94 = 0;
    v88 = 0;
    v91 = 0;
    v92 = 0;
  }

  else
  {
    v46 = v99;
    v45 = v100;
    (*(v100 + 32))(v99, v44, v4);
    (*(v45 + 16))(v112, v46, v4);
    v47 = Text.init(_:)();
    v49 = v48;
    v51 = v50;
    sub_1007987BC(v135);
    sub_1000161C0(v135, v135[3]);
    dispatch thunk of ConditionDetailChartHeaderStyleType.title2Font.getter();
    v52 = Text.font(_:)();
    v54 = v53;
    v56 = v55;
    sub_10010CD64(v47, v49, v51 & 1);

    v18 = v109;

    sub_100006F14(v135);
    sub_1007987BC(v135);
    sub_1000161C0(v135, v135[3]);
    dispatch thunk of ConditionDetailChartHeaderStyleType.title2Color.getter();
    v57 = Text.foregroundColor(_:)();
    v59 = v58;
    LODWORD(v90) = v60;
    v111 = v61;
    v62 = v52;
    v20 = v108;
    sub_10010CD64(v62, v54, v56 & 1);

    sub_100006F14(v135);
    sub_1007987BC(v135);
    sub_1000161C0(v135, v135[3]);
    dispatch thunk of ConditionDetailChartHeaderStyleType.title2LeadingPadding.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    LOBYTE(v45) = v149;
    v93 = v150;
    v94 = v148;
    v63 = v151;
    v91 = v153;
    v92 = v152;
    sub_100006F14(v135);
    LOBYTE(v135[0]) = 1;
    LOBYTE(v118[0]) = v45;
    LOBYTE(v119) = v63;
    LOBYTE(v134[0]) = v90 & 1;
    v90 = 1;
    v89 = v45;
    v88 = v63;
    LOBYTE(v130) = v134[0];
    sub_10010CD54(v57, v59, v134[0]);
    v64 = *(v100 + 8);

    v64(v99, v110);
    v99 = v130;
    v100 = v59;
    v110 = v57;
    sub_10010CD64(v57, v59, v134[0]);
  }

  v65 = v102;
  sub_10079D9B4();
  ConditionDetailChartHeaderStringModel.title1.getter();
  v20(v65, v18);
  v66 = Text.init(_:)();
  v68 = v67;
  v70 = v69;
  sub_1007987BC(v135);
  sub_1000161C0(v135, v135[3]);
  dispatch thunk of ConditionDetailChartHeaderStyleType.title1Font.getter();
  v71 = Text.font(_:)();
  v73 = v72;
  v75 = v74;
  sub_10010CD64(v66, v68, v70 & 1);

  sub_100006F14(v135);
  sub_1007987BC(v135);
  sub_1000161C0(v135, v135[3]);
  dispatch thunk of ConditionDetailChartHeaderStyleType.title1Color.getter();
  v76 = Text.foregroundColor(_:)();
  v78 = v77;
  v80 = v79;
  v82 = v81;
  sub_10010CD64(v71, v73, v75 & 1);

  sub_100006F14(v135);
  v84 = v104;
  v83 = v105;
  v130 = v105;
  v131 = v104;
  LOBYTE(v73) = v101;
  v85 = v103;
  v132 = v101;
  v133 = v103;
  v120 = v141;
  *v121 = *v140;
  v119 = 0;
  *&v121[3] = *&v140[3];
  v122 = v95;
  v123 = v139;
  *v124 = *v138;
  *&v124[3] = *&v138[3];
  v125 = v96;
  v126 = v137;
  *&v127[3] = *&v136[3];
  *v127 = *v136;
  v128 = v98;
  v129 = v97;
  v134[0] = &v130;
  v134[1] = &v119;
  v118[0] = v110;
  v118[1] = v100;
  v118[2] = v99;
  v118[3] = v111;
  v118[4] = 0;
  v118[5] = v90;
  v118[6] = v94;
  v118[7] = v89;
  v118[8] = v93;
  v118[9] = v88;
  v118[10] = v92;
  v118[11] = v91;
  v114 = v76;
  v115 = v78;
  v116 = v80 & 1;
  v117 = v82;
  v134[2] = v118;
  v134[3] = &v114;
  sub_1003E9BD8(v134, v106);
  sub_10014A53C(v83, v84, v73, v85);
  sub_10010CD64(v114, v115, v116);

  memcpy(v135, v118, sizeof(v135));
  sub_1000180EC(v135, &qword_100CB5EA8);
  return sub_10014A53C(v130, v131, v132, v133);
}

uint64_t sub_10079C0AC@<X0>(uint64_t *a1@<X8>)
{
  v117 = a1;
  v1 = type metadata accessor for Text.Scale();
  v121 = *(v1 - 8);
  v122 = v1;
  __chkstk_darwin(v1);
  v120 = &v107 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for AttributedString.CharacterView();
  __chkstk_darwin(v119);
  v118 = &v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CA5730);
  __chkstk_darwin(v4 - 8);
  v131 = &v107 - v5;
  v6 = type metadata accessor for AttributedString();
  v124 = *(v6 - 8);
  v125 = v6;
  __chkstk_darwin(v6);
  v123 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v107 - v9;
  v11 = type metadata accessor for ConditionDetailChartHeaderViewModel();
  __chkstk_darwin(v11 - 8);
  v109 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v130 = &v107 - v14;
  __chkstk_darwin(v15);
  v17 = &v107 - v16;
  v129 = type metadata accessor for ConditionDetailChartHeaderViewModel;
  sub_10079D9B4();
  ConditionDetailChartHeaderStringModel.title1.getter();
  v128 = type metadata accessor for ConditionDetailChartHeaderStringModel();
  v18 = *(v128 - 8);
  v19 = *(v18 + 8);
  v126 = v18 + 8;
  v127 = v19;
  v19(v17, v128);
  v108 = v10;
  v20 = Text.init(_:)();
  v22 = v21;
  v24 = v23;
  sub_1007987BC(v144);
  sub_1000161C0(v144, v144[3]);
  dispatch thunk of ConditionDetailChartHeaderStyleType.title1Font.getter();
  v25 = Text.font(_:)();
  v27 = v26;
  v29 = v28;
  sub_10010CD64(v20, v22, v24 & 1);

  sub_100006F14(v144);
  sub_1007987BC(v144);
  sub_1000161C0(v144, v144[3]);
  dispatch thunk of ConditionDetailChartHeaderStyleType.title1Color.getter();
  v30 = Text.foregroundColor(_:)();
  v114 = v31;
  v115 = v30;
  v112 = v32;
  v116 = v33;
  v34 = v27;
  v35 = v125;
  sub_10010CD64(v25, v34, v29 & 1);

  sub_100006F14(v144);
  v110 = sub_100798AFC();
  KeyPath = swift_getKeyPath();
  v36 = v130;
  sub_10079D9B4();
  v37 = v131;
  ConditionDetailChartHeaderStringModel.title2.getter();
  v127(v36, v128);
  if (sub_100024D10(v37, 1, v35) == 1)
  {
    sub_1000180EC(v37, &qword_100CA5730);
    v121 = 0;
    v122 = 0;
    v111 = 0;
    v130 = 0;
    v131 = 0;
    v119 = 0;
    v120 = 0;
    v129 = 0;
    v124 = 0;
    v125 = 0;
    v123 = 0;
    LODWORD(v118) = 0;
    goto LABEL_11;
  }

  v39 = v123;
  v38 = v124;
  (*(v124 + 32))(v123, v37, v35);
  sub_1007987BC(v144);
  sub_1000161C0(v144, v144[3]);
  dispatch thunk of ConditionDetailChartHeaderStyleType.title2LeadingPadding.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v111 = v144[21];
  v40 = v145;
  v41 = v147;
  v130 = v148;
  v131 = v146;
  v129 = v149;
  sub_100006F14(v144);
  LOBYTE(v143[0]) = 1;
  LOBYTE(v142[0]) = v40;
  LOBYTE(v137[0]) = v41;
  AttributedString.characters.getter();
  sub_10079DCD8(&qword_100CAB940, &type metadata accessor for AttributedString.CharacterView);
  v107 = String.init<A>(_:)();
  v119 = v42;
  (*(v38 + 16))(v108, v39, v35);
  v43 = Text.init(_:)();
  v45 = v44;
  LOBYTE(v38) = v46;
  sub_1007987BC(v144);
  sub_1000161C0(v144, v144[3]);
  dispatch thunk of ConditionDetailChartHeaderStyleType.title2Font.getter();
  v47 = Text.font(_:)();
  v49 = v48;
  LOBYTE(v39) = v50;
  sub_10010CD64(v43, v45, v38 & 1);

  sub_100006F14(v144);
  sub_1007987BC(v144);
  sub_1000161C0(v144, v144[3]);
  dispatch thunk of ConditionDetailChartHeaderStyleType.title2Color.getter();
  v51 = Text.foregroundColor(_:)();
  v53 = v52;
  LODWORD(v118) = v54;
  sub_10010CD64(v47, v49, v39 & 1);

  sub_100006F14(v144);
  sub_1007987BC(v144);
  sub_1000161C0(v144, v144[3]);
  if (dispatch thunk of ConditionDetailChartHeaderStyleType.applySecondaryTextScaleToTitle2.getter())
  {
    v55 = String.isPercentSymbol.getter();
    v56 = v120;
    if (v55)
    {

      sub_100006F14(v144);
      v57 = v124;
LABEL_9:
      static Text.Scale.secondary.getter();
      goto LABEL_10;
    }

    v58 = String.containsOnlyPunctuationCharacters.getter();

    sub_100006F14(v144);
    v57 = v124;
    if ((v58 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {

    sub_100006F14(v144);
    v56 = v120;
    v57 = v124;
  }

  static Text.Scale.default.getter();
LABEL_10:
  v59 = v118;
  v60 = Text.textScale(_:isEnabled:)();
  v61 = v53;
  v63 = v62;
  v65 = v64;
  v66 = v51;
  v68 = v67;
  sub_10010CD64(v66, v61, v59 & 1);

  (*(v121 + 8))(v56, v122);
  v122 = LOBYTE(v143[0]);
  v121 = LOBYTE(v142[0]);
  v120 = LOBYTE(v137[0]);
  LOBYTE(v144[0]) = v65 & 1;
  LOBYTE(v141[0]) = v65 & 1;
  sub_10010CD54(v60, v63, v65 & 1);
  v69 = *(v57 + 8);

  v69(v123, v125);
  v119 = LOBYTE(v141[0]);
  v124 = v63;
  v125 = v60;
  sub_10010CD64(v60, v63, v144[0]);
  v123 = v68;

  LODWORD(v118) = 257;
LABEL_11:
  v70 = v109;
  sub_10079D9B4();
  v71 = ConditionDetailChartHeaderStringModel.title3.getter();
  v73 = v72;
  v127(v70, v128);
  if (v73)
  {
    sub_1007987BC(v144);
    sub_1000161C0(v144, v144[3]);
    dispatch thunk of ConditionDetailChartHeaderStyleType.title3LeadingPadding.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v74 = v151;
    v109 = v152;
    v75 = v153;
    v128 = v154;
    v126 = v150;
    v127 = v155;
    sub_100006F14(v144);
    v140 = 1;
    v136 = v74;
    v135 = v75;
    v144[0] = v71;
    v144[1] = v73;
    sub_10002D5A4();
    v76 = Text.init<A>(_:)();
    v78 = v77;
    v80 = v79;
    sub_1007987BC(v144);
    sub_1000161C0(v144, v144[3]);
    dispatch thunk of ConditionDetailChartHeaderStyleType.title3Font.getter();
    v81 = Text.font(_:)();
    v83 = v82;
    v85 = v84;
    v108 = v86;
    sub_10010CD64(v76, v78, v80 & 1);

    sub_100006F14(v144);
    sub_1007987BC(v144);
    sub_1000161C0(v144, v144[3]);
    dispatch thunk of ConditionDetailChartHeaderStyleType.title3Color.getter();
    v87 = Text.foregroundColor(_:)();
    v89 = v88;
    v91 = v90;
    v93 = v92;
    sub_10010CD64(v81, v83, v85 & 1);

    sub_100006F14(v144);
    v94 = swift_getKeyPath();
    v95 = swift_getKeyPath();
    LOBYTE(v144[0]) = v91 & 1;
    LOBYTE(v143[0]) = 0;
    v96 = swift_getKeyPath();
    LODWORD(v107) = v140;
    LODWORD(v108) = v136;
    LODWORD(v132) = v135;
    v141[0] = v87;
    v141[1] = v89;
    LOBYTE(v141[2]) = v91 & 1;
    *(&v141[2] + 1) = *v134;
    HIDWORD(v141[2]) = *&v134[3];
    v141[3] = v93;
    v141[4] = v94;
    v141[5] = 1;
    LOBYTE(v141[6]) = 0;
    HIDWORD(v141[6]) = *&v133[3];
    *(&v141[6] + 1) = *v133;
    v141[7] = v95;
    v141[8] = 0x3FE6666666666666;
    v141[9] = v96;
    LOBYTE(v141[10]) = 1;
    memcpy(v137, v141, 0x51uLL);
    v142[0] = v87;
    v142[1] = v89;
    LOBYTE(v142[2]) = v91 & 1;
    *(&v142[2] + 1) = *v134;
    HIDWORD(v142[2]) = *&v134[3];
    v142[3] = v93;
    v142[4] = v94;
    v142[5] = 1;
    LOBYTE(v142[6]) = 0;
    *(&v142[6] + 1) = *v133;
    HIDWORD(v142[6]) = *&v133[3];
    v142[7] = v95;
    v142[8] = 0x3FE6666666666666;
    v142[9] = v96;
    LOBYTE(v142[10]) = 1;
    sub_100095588();
    sub_1000180EC(v142, &qword_100CD7438);
    v143[0] = 0;
    LOBYTE(v143[1]) = v107;
    v143[2] = v126;
    LOBYTE(v143[3]) = v108;
    v143[4] = v109;
    LOBYTE(v143[5]) = v132;
    v143[6] = v128;
    v143[7] = v127;
    memcpy(&v143[8], v137, 0x51uLL);
    LocationSearchEntityFromStringResolver.init()();
    memcpy(v144, v143, 0x91uLL);
  }

  else
  {
    sub_10079DB1C(v144);
  }

  if (v110)
  {
    v97 = 0.5;
  }

  else
  {
    v97 = 1.0;
  }

  memcpy(v143, v144, 0x91uLL);
  v98 = v112 & 1;
  v140 = v112 & 1;
  v141[0] = 0;
  v141[1] = v122;
  v99 = v111;
  v141[2] = v111;
  v141[3] = v121;
  v141[4] = v131;
  v141[5] = v120;
  v141[6] = v130;
  v141[7] = v129;
  v141[8] = v125;
  v141[9] = v124;
  v141[10] = v119;
  v141[11] = v123;
  LOWORD(v141[12]) = v118;
  memcpy(v142, v144, 0x91uLL);
  memcpy(&v139[6], v144, 0x91uLL);
  v100 = v112 & 1;
  v102 = v116;
  v101 = v117;
  v104 = v114;
  v103 = v115;
  *v117 = v115;
  v101[1] = v104;
  *(v101 + 16) = v100;
  v105 = KeyPath;
  v101[3] = v102;
  v101[4] = v105;
  *(v101 + 5) = v97;
  memcpy(v101 + 6, v141, 0x62uLL);
  memcpy(v101 + 146, v139, 0x97uLL);
  sub_10010CD54(v103, v104, v98);

  sub_100095588();
  sub_100095588();
  sub_1000180EC(v143, &qword_100CD7430);
  v137[0] = 0;
  v137[1] = v122;
  v137[2] = v99;
  v137[3] = v121;
  v137[4] = v131;
  v137[5] = v120;
  v137[6] = v130;
  v137[7] = v129;
  v137[8] = v125;
  v137[9] = v124;
  v137[10] = v119;
  v137[11] = v123;
  v138 = v118;
  sub_1000180EC(v137, &qword_100CD7428);
  sub_10010CD64(v103, v104, v98);
}

uint64_t sub_10079CF10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v85 = a3;
  v93 = a1;
  v91 = a4;
  v7 = type metadata accessor for ConditionDetailChartHeaderViewModel();
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v86 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Font.TextStyle();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = a1;
  v118 = a2;
  v92 = a2;
  v98 = sub_10002D5A4();

  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  v19 = *(v11 + 104);
  v97 = v11 + 104;
  v96 = v19;
  v80 = enum case for Font.TextStyle.subheadline(_:);
  v100 = v10;
  v19(v13);
  v95 = *(a3 + *(v8 + 28));
  sub_100926274(v95, &v117);
  sub_1000161C0(&v117, v120);
  dispatch thunk of ConditionDetailChartHeaderStyleType.subtitleFontWeight.getter();
  static Font.system(_:weight:)();
  v20 = *(v11 + 8);
  v99 = v11 + 8;
  v94 = v20;
  v20(v13, v10);
  sub_100006F14(&v117);
  v21 = Text.font(_:)();
  v23 = v22;
  LOBYTE(v10) = v24;

  sub_10010CD64(v14, v16, v18 & 1);

  static Color.secondary.getter();
  v89 = Text.foregroundColor(_:)();
  v88 = v25;
  v87 = v26;
  v90 = v27;

  sub_10010CD64(v21, v23, v10 & 1);

  v117 = v93;
  v118 = v92;

  v28 = Text.init<A>(_:)();
  v30 = v29;
  v32 = v31;
  v33 = v100;
  v96(v13, enum case for Font.TextStyle.footnote(_:), v100);
  sub_100926274(v95, &v117);
  sub_1000161C0(&v117, v120);
  dispatch thunk of ConditionDetailChartHeaderStyleType.subtitleFontWeight.getter();
  static Font.system(_:weight:)();
  v94(v13, v33);
  sub_100006F14(&v117);
  v34 = Text.font(_:)();
  v36 = v35;
  LOBYTE(v33) = v37;

  sub_10010CD64(v28, v30, v32 & 1);

  static Color.secondary.getter();
  v83 = Text.foregroundColor(_:)();
  v82 = v38;
  v81 = v39;
  v84 = v40;

  sub_10010CD64(v34, v36, v33 & 1);

  v117 = v93;
  v118 = v92;

  v41 = Text.init<A>(_:)();
  v43 = v42;
  LOBYTE(v36) = v44;
  v45 = v100;
  v96(v13, enum case for Font.TextStyle.caption2(_:), v100);
  sub_100926274(v95, &v117);
  sub_1000161C0(&v117, v120);
  dispatch thunk of ConditionDetailChartHeaderStyleType.subtitleFontWeight.getter();
  static Font.system(_:weight:)();
  v94(v13, v45);
  sub_100006F14(&v117);
  v46 = Text.font(_:)();
  v48 = v47;
  LOBYTE(v33) = v49;

  sub_10010CD64(v41, v43, v36 & 1);

  static Color.secondary.getter();
  v50 = Text.foregroundColor(_:)();
  v52 = v51;
  LODWORD(v93) = v53;
  v55 = v54;

  sub_10010CD64(v46, v48, v33 & 1);

  v56 = v86;
  sub_10079D9B4();
  v57 = ConditionDetailChartHeaderStringModel.subtitleTruncationAlternative.getter();
  v59 = v58;
  v60 = type metadata accessor for ConditionDetailChartHeaderStringModel();
  (*(*(v60 - 8) + 8))(v56, v60);
  if (v59)
  {
    v117 = v57;
    v118 = v59;
    v61 = Text.init<A>(_:)();
    v92 = v50;
    v62 = v61;
    v64 = v63;
    v98 = v55;
    v66 = v65;
    v86 = v52;
    v67 = v100;
    v96(v13, v80, v100);
    sub_100926274(v95, &v117);
    sub_1000161C0(&v117, v120);
    dispatch thunk of ConditionDetailChartHeaderStyleType.subtitleFontWeight.getter();
    static Font.system(_:weight:)();
    v94(v13, v67);
    sub_100006F14(&v117);
    v68 = Text.font(_:)();
    v70 = v69;
    v72 = v71;

    sub_10010CD64(v62, v64, v66 & 1);

    static Color.secondary.getter();
    v73 = Text.foregroundColor(_:)();
    v59 = v74;
    LOBYTE(v62) = v75;
    v77 = v76;
    v55 = v98;

    sub_10010CD64(v68, v70, v72 & 1);
    v52 = v86;

    v78 = v62 & 1;
    v50 = v92;
    sub_10010CD54(v73, v59, v78);
  }

  else
  {
    v73 = 0;
    v78 = 0;
    v77 = 0;
  }

  v113 = v89;
  v114 = v88;
  v115 = v87 & 1;
  v116 = v90;
  v109 = v83;
  v110 = v82;
  v111 = v81 & 1;
  v112 = v84;
  v117 = &v113;
  v118 = &v109;
  v105 = v50;
  v106 = v52;
  v107 = v93 & 1;
  v108 = v55;
  v101 = v73;
  v102 = v59;
  v103 = v78;
  v104 = v77;
  v119 = &v105;
  v120 = &v101;
  sub_1003E9CE4(&v117, v91);
  sub_10014A53C(v73, v59, v78, v77);
  sub_10014A53C(v101, v102, v103, v104);
  sub_10010CD64(v105, v106, v107);

  sub_10010CD64(v109, v110, v111);

  sub_10010CD64(v113, v114, v115);
}

unint64_t sub_10079D870()
{
  result = qword_100CD7320;
  if (!qword_100CD7320)
  {
    sub_10022E824(&qword_100CD7300);
    sub_10079D8FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7320);
  }

  return result;
}

unint64_t sub_10079D8FC()
{
  result = qword_100CD7328;
  if (!qword_100CD7328)
  {
    sub_10022E824(&qword_100CD72F8);
    sub_100006F64(&qword_100CD7330, &qword_100CD72F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7328);
  }

  return result;
}

uint64_t sub_10079D9B4()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

unint64_t sub_10079DA20()
{
  result = qword_100CD73E0;
  if (!qword_100CD73E0)
  {
    sub_10022E824(&qword_100CD73D0);
    sub_100006F64(&qword_100CD73E8, &qword_100CD73F0);
    sub_100006F64(&qword_100CD73F8, &qword_100CD7400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD73E0);
  }

  return result;
}

unint64_t sub_10079DB24()
{
  result = qword_100CD7440;
  if (!qword_100CD7440)
  {
    sub_10022E824(&qword_100CD7338);
    sub_10079DBE0();
    sub_10079DCD8(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7440);
  }

  return result;
}

unint64_t sub_10079DBE0()
{
  result = qword_100CD7448;
  if (!qword_100CD7448)
  {
    sub_10022E824(&qword_100CD7310);
    sub_10022E824(&qword_100CD7300);
    sub_10079D870();
    swift_getOpaqueTypeConformance2();
    sub_10079DCD8(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7448);
  }

  return result;
}

uint64_t sub_10079DCD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10079DD20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ArticlePlacementLocation();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DetailCondition();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 88))(a1, v8);
  if (v10 == enum case for DetailCondition.conditions(_:))
  {
    v11 = sub_10001F748();
    v12(v11);
    (*(v9 + 8))(a1, v8);
LABEL_10:
    (*(v5 + 32))(a2, v7, v4);
    return sub_10001B350(a2, 0, 1, v4);
  }

  if (v10 == enum case for DetailCondition.humidity(_:) || v10 == enum case for DetailCondition.pressure(_:) || v10 == enum case for DetailCondition.precipitationTotal(_:) || v10 == enum case for DetailCondition.uvIndex(_:) || v10 == enum case for DetailCondition.visibility(_:) || v10 == enum case for DetailCondition.wind(_:))
  {
    v13 = sub_10001F748();
    v14(v13);
    goto LABEL_10;
  }

  (*(v9 + 8))(a1, v8);

  return sub_10001B350(a2, 1, 1, v4);
}

uint64_t sub_10079DFC8(uint64_t a1)
{
  v2 = type metadata accessor for MainAction();
  __chkstk_darwin(v2);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  sub_10079E0D4(v4);
  type metadata accessor for LocationsAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  sub_10004F034(v4, v7, v5);
  sub_1000180EC(v7, &unk_100CD81B0);
  return sub_10004FAF0(v4, type metadata accessor for MainAction);
}

uint64_t sub_10079E0D4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for WeatherDataConfiguration();
  v61 = *(v3 - 8);
  v62 = v3;
  __chkstk_darwin(v3);
  v60 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppConfigurationState();
  __chkstk_darwin(v5 - 8);
  v59 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v7 - 8);
  v58 = v54 - v8;
  v9 = sub_10022C350(&qword_100CACE08);
  __chkstk_darwin(v9 - 8);
  v57 = v54 - v10;
  v11 = type metadata accessor for Location.Identifier();
  v56 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10022C350(&qword_100CADBA0);
  __chkstk_darwin(v14 - 8);
  v16 = v54 - v15;
  v17 = sub_10022C350(&qword_100CA65D8);
  __chkstk_darwin(v17 - 8);
  v19 = v54 - v18;
  v20 = type metadata accessor for Location();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v54 - v25;
  v63 = v1;
  sub_10079E904(v19);
  if (sub_100024D10(v19, 1, v20) == 1)
  {
    sub_1000180EC(v19, &qword_100CA65D8);
  }

  else
  {
    v27 = *(v21 + 32);
    v54[1] = v21 + 32;
    v55 = a1;
    v54[0] = v27;
    v27(v26, v19, v20);
    sub_1000161C0((v63 + 32), *(v63 + 56));
    v28 = dispatch thunk of LocationManagerType.currentCLLocation.getter();
    if (v28)
    {
      v29 = v28;
      Location.identifier.getter();
      static Location.currentLocationID.getter();
      Location.Identifier.with(id:name:coordinate:)();

      (*(v56 + 8))(v13, v11);
      sub_10001B350(v16, 0, 1, v11);
      v30 = type metadata accessor for TimeZone();
      v31 = v57;
      sub_10001B350(v57, 1, 1, v30);
      v32 = type metadata accessor for Date();
      v33 = v58;
      sub_10001B350(v58, 1, 1, v32);
      Location.with(identifier:timeZone:lastRefreshDate:searchTitle:searchSubtitle:preciseName:secondaryName:)();
      sub_1000180EC(v33, &unk_100CB2CF0);
      sub_1000180EC(v31, &qword_100CACE08);
      sub_1000180EC(v16, &qword_100CADBA0);
      (*(v21 + 8))(v26, v20);
      v34 = v54[0];
      (v54[0])(v26, v23, v20);
      v35 = Location.clLocation.getter();
      v36 = v29;
      v37 = [v29 distanceFromLocation:v35];
      v39 = v38;
      (*(v63 + 72))(&v64, v37);
      v40 = v59;
      sub_100066C58(v64 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration, v59, type metadata accessor for AppConfigurationState);

      v41 = v60;
      AppConfiguration.weatherData.getter();
      v42 = type metadata accessor for AppConfiguration();
      (*(*(v42 - 8) + 8))(v40, v42);
      WeatherDataConfiguration.currentLocationCertaintyRadius.getter();
      v44 = v43;
      (*(v61 + 8))(v41, v62);
      if (v44 >= v39)
      {
        v45 = v55;
        if (qword_100CA2750 != -1)
        {
          swift_once();
        }

        v50 = type metadata accessor for Logger();
        sub_10000703C(v50, qword_100D90C48);
        v47 = Logger.logObject.getter();
        v51 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v47, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&_mh_execute_header, v47, v51, "Current location accurate.", v52, 2u);
        }
      }

      else
      {
        v45 = v55;
        if (qword_100CA2750 != -1)
        {
          swift_once();
        }

        v46 = type metadata accessor for Logger();
        sub_10000703C(v46, qword_100D90C48);
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          *v49 = 134217984;
          *(v49 + 4) = v44;
          _os_log_impl(&_mh_execute_header, v47, v48, "Current location stale - greater than %fm away.", v49, 0xCu);
        }
      }

      v34(v45, v26, v20);
    }

    else
    {
      (*(v21 + 8))(v26, v20);
    }
  }

  type metadata accessor for CurrentLocation();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10079E904@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10022C350(&unk_100CE49F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for LocationsState();
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CurrentLocation();
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CA65D8);
  __chkstk_darwin(v12 - 8);
  v14 = &v20 - v13;
  sub_1000161C0((v1 + 32), *(v1 + 56));
  dispatch thunk of LocationManagerType.currentLocation.getter();
  v15 = type metadata accessor for Location();
  if (sub_100024D10(v14, 1, v15) != 1)
  {
    (*(*(v15 - 8) + 32))(a1, v14, v15);
    v17 = a1;
    v18 = 0;
    return sub_10001B350(v17, v18, 1, v15);
  }

  v16 = sub_1000180EC(v14, &qword_100CA65D8);
  (*(v1 + 72))(&v21, v16);
  sub_100066C58(v21 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v8, type metadata accessor for LocationsState);

  sub_1001A00C8(v8, v5);
  sub_10004FAF0(v8, type metadata accessor for LocationsState);
  if (sub_100024D10(v5, 1, v9) == 1)
  {
    sub_1000180EC(v5, &unk_100CE49F0);
    v17 = a1;
    v18 = 1;
    return sub_10001B350(v17, v18, 1, v15);
  }

  sub_100169AD8(v5, v11);
  CurrentLocation.location.getter();
  return sub_10004FAF0(v11, &type metadata accessor for CurrentLocation);
}

uint64_t sub_10079EC04()
{
  sub_1000161C0((v0 + 104), *(v0 + 128));
  dispatch thunk of LocationMetadataManagerType.resolveAddress(for:)();
  v1 = zalgo.getter();
  v2 = Promise.then<A>(on:closure:)();

  return v2;
}

uint64_t sub_10079EC98()
{

  sub_100006F14(v0 + 32);

  sub_100006F14(v0 + 104);

  return v0;
}

uint64_t sub_10079ECEC()
{
  sub_10079EC98();

  return swift_deallocClassInstance();
}

uint64_t sub_10079ED20()
{
  sub_1000161C0((v0 + 32), *(v0 + 56));
  sub_1000BF0FC();
  sub_100010A98();
  return dispatch thunk of LocationManagerType.removeObserver(_:)();
}

uint64_t sub_10079ED68()
{
  sub_10022C350(&qword_100CB5270);
  updated = type metadata accessor for LocationManagerUpdateType();
  v1 = *(updated - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100A2D320;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for LocationManagerUpdateType.currentLocation(_:), updated);
  v6(v5 + v2, enum case for LocationManagerUpdateType.currentCLLocation(_:), updated);
  return v4;
}

void sub_10079EE74()
{
  sub_1000161C0((v0 + 104), *(v0 + 128));
  v1 = dispatch thunk of LocationMetadataManagerType.requiresShowingAddresses.getter();
  if (v1)
  {
    __chkstk_darwin(v1);
    firstly<A>(closure:)();
    sub_10000C70C(0, &qword_100CB4670);
    v2 = static OS_dispatch_queue.main.getter();
    Promise.then<A, B>(on:disposeOn:closure:)();
  }

  else
  {
    if (qword_100CA2750 != -1)
    {
      sub_10001F75C();
    }

    v3 = type metadata accessor for Logger();
    sub_10000703C(v3, qword_100D90C48);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Current location updated, post sync", v6, 2u);
    }

    asyncMain(block:)();
  }
}

uint64_t sub_10079F0A0()
{
  if (qword_100CA2750 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000703C(v0, qword_100D90C48);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Current location updated, confirm address", v3, 2u);
  }

  return sub_10079EC04();
}

uint64_t sub_10079F19C()
{
  if (qword_100CA2750 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000703C(v0, qword_100D90C48);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Current location updated, post sync", v3, 2u);
  }

  asyncMain(block:)();
}

uint64_t sub_10079F2B4()
{

  asyncMain(block:)();
}

void sub_10079F300()
{
  if (qword_100CA2750 != -1)
  {
    sub_10001F75C();
  }

  v0 = type metadata accessor for Logger();
  sub_10000703C(v0, qword_100D90C48);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136446210;
    swift_errorRetain();
    sub_10022C350(&qword_100CD8220);
    v4 = String.init<A>(describing:)();
    v6 = sub_100078694(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&_mh_execute_header, oslog, v1, "location update failed with error: %{public}s", v2, 0xCu);
    sub_100006F14(v3);
  }

  else
  {
  }
}

uint64_t sub_10079F520()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10079F5B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t, void (*)(void, void))@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v363 = a6;
  v358 = a4;
  v362 = a3;
  v357 = a2;
  v339 = a1;
  v320 = a7;
  v8 = sub_10022C350(&qword_100CA5008);
  __chkstk_darwin(v8 - 8);
  v299 = v296 - v9;
  v297 = type metadata accessor for LocationComponentContainerViewModel();
  __chkstk_darwin(v297);
  sub_100003848();
  v318 = v10;
  sub_10000386C();
  __chkstk_darwin(v11);
  v13 = v296 - v12;
  __chkstk_darwin(v14);
  v16 = v296 - v15;
  __chkstk_darwin(v17);
  sub_100003878();
  v315 = v18;
  sub_10000386C();
  __chkstk_darwin(v19);
  sub_100003878();
  v314 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_100003878();
  v312 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_100003878();
  v310 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v308 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100003878();
  v306 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_100003878();
  v304 = v30;
  sub_10000386C();
  __chkstk_darwin(v31);
  sub_100003878();
  v302 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  sub_100003878();
  v300 = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  sub_100003878();
  v296[0] = v36;
  sub_10000386C();
  __chkstk_darwin(v37);
  v39 = v296 - v38;
  v40 = *(a5 - 8);
  __chkstk_darwin(v41);
  sub_100003848();
  v319 = v42;
  sub_10000386C();
  __chkstk_darwin(v43);
  sub_100003878();
  v337 = v44;
  sub_10000386C();
  __chkstk_darwin(v45);
  sub_100003878();
  v336 = v46;
  sub_10000386C();
  __chkstk_darwin(v47);
  sub_100003878();
  v335 = v48;
  sub_10000386C();
  __chkstk_darwin(v49);
  sub_100003878();
  v334 = v50;
  sub_10000386C();
  __chkstk_darwin(v51);
  sub_100003878();
  v333 = v52;
  sub_10000386C();
  __chkstk_darwin(v53);
  sub_100003878();
  v332 = v54;
  sub_10000386C();
  __chkstk_darwin(v55);
  sub_100003878();
  v331 = v56;
  sub_10000386C();
  __chkstk_darwin(v57);
  sub_100003878();
  v330 = v58;
  sub_10000386C();
  __chkstk_darwin(v59);
  sub_100003878();
  v329 = v60;
  sub_10000386C();
  __chkstk_darwin(v61);
  sub_100003878();
  v316 = v62;
  sub_10000386C();
  __chkstk_darwin(v63);
  sub_100003878();
  v328 = v64;
  sub_10000386C();
  __chkstk_darwin(v65);
  sub_100003878();
  v313 = v66;
  sub_10000386C();
  __chkstk_darwin(v67);
  v69 = v296 - v68;
  __chkstk_darwin(v70);
  sub_100003878();
  v311 = v71;
  sub_10000386C();
  __chkstk_darwin(v72);
  sub_100003878();
  v353 = v73;
  sub_10000386C();
  __chkstk_darwin(v74);
  sub_100003878();
  v309 = v75;
  sub_10000386C();
  __chkstk_darwin(v76);
  sub_100003878();
  v352 = v77;
  sub_10000386C();
  __chkstk_darwin(v78);
  sub_100003878();
  v307 = v79;
  sub_10000386C();
  __chkstk_darwin(v80);
  sub_100003878();
  v351 = v81;
  sub_10000386C();
  __chkstk_darwin(v82);
  sub_100003878();
  v305 = v83;
  sub_10000386C();
  __chkstk_darwin(v84);
  sub_100003878();
  v350 = v85;
  sub_10000386C();
  __chkstk_darwin(v86);
  sub_100003878();
  v303 = v87;
  sub_10000386C();
  __chkstk_darwin(v88);
  sub_100003878();
  v349 = v89;
  sub_10000386C();
  __chkstk_darwin(v90);
  sub_100003878();
  v301 = v91;
  sub_10000386C();
  __chkstk_darwin(v92);
  sub_100003878();
  v348 = v93;
  sub_10000386C();
  __chkstk_darwin(v94);
  sub_100003878();
  v298 = v95;
  sub_10000386C();
  __chkstk_darwin(v96);
  sub_100003878();
  v347 = v97;
  sub_10000386C();
  __chkstk_darwin(v98);
  sub_100003878();
  v296[3] = v99;
  sub_10000386C();
  __chkstk_darwin(v100);
  sub_100003878();
  v346 = v101;
  sub_10000386C();
  __chkstk_darwin(v102);
  sub_100003878();
  v296[2] = v103;
  sub_10000386C();
  __chkstk_darwin(v104);
  sub_100003878();
  v345 = v105;
  sub_10000386C();
  __chkstk_darwin(v106);
  sub_100003878();
  v296[1] = v107;
  sub_10000386C();
  __chkstk_darwin(v108);
  sub_100003878();
  v344 = v109;
  sub_10000386C();
  __chkstk_darwin(v110);
  v112 = v296 - v111;
  __chkstk_darwin(v113);
  v115 = v296 - v114;
  v361 = type metadata accessor for Optional();
  v322 = *(v361 - 8);
  __chkstk_darwin(v361);
  sub_100003848();
  v326 = v116;
  sub_10000386C();
  __chkstk_darwin(v117);
  sub_100003878();
  v325 = v118;
  sub_10000386C();
  __chkstk_darwin(v119);
  sub_100003878();
  v324 = v120;
  sub_10000386C();
  __chkstk_darwin(v121);
  sub_100003878();
  v343 = v122;
  sub_10000386C();
  __chkstk_darwin(v123);
  sub_100003878();
  v342 = v124;
  sub_10000386C();
  __chkstk_darwin(v125);
  sub_100003878();
  v341 = v126;
  sub_10000386C();
  __chkstk_darwin(v127);
  v129 = v296 - v128;
  __chkstk_darwin(v130);
  v340 = v296 - v131;
  sub_100566A24(v357, v383);
  v327 = v40;
  v356 = v112;
  v360 = v115;
  v323 = v13;
  v321 = v39;
  v354 = v69;
  v317 = v16;
  if (v384)
  {
    v132 = 1;
  }

  else
  {
    v359 = v383[3];
    v133 = v383[2];
    v134 = v383[1];
    v135 = v383[0];
    sub_1001B3B30(v339 + OBJC_IVAR____TtCV7Weather25NoAqiSevereNhpNewsContent8_Storage_severeAlert, v39);
    v362(v39, v135, v134, v133, v359);
    sub_1001B4354(v39);
    v136 = sub_100007EE8();
    v137 = v363;
    sub_1000833D8(v136, v138, v363);
    v139 = *(v40 + 8);
    v140 = sub_100007EE8();
    v139(v140);
    v141 = sub_100005474();
    sub_1000833D8(v141, v142, v137);
    v143 = sub_100005474();
    v139(v143);
    (*(v40 + 32))(v129, v112, a5);
    v132 = 0;
  }

  v144 = v129;
  v145 = 1;
  sub_100017568(v129, v132);
  sub_100007F30();
  sub_1003E7FD4(v146, v147);
  v148 = v322 + 8;
  v359 = *(v322 + 8);
  v359(v129, v361);
  sub_100566BE4(v357, v385);
  v355 = v129;
  v338 = v148;
  if ((v385[32] & 1) == 0)
  {
    v149 = v321;
    sub_1001B3B30(v339 + OBJC_IVAR____TtCV7Weather25NoAqiSevereNhpNewsContent8_Storage_nextHourPrecipitation, v321);
    v150 = v356;
    sub_10004E364();
    v151();
    sub_1001B4354(v149);
    v152 = sub_100007EE8();
    v153 = v363;
    sub_1000833D8(v152, v154, v363);
    v155 = v327;
    v156 = *(v327 + 8);
    v157 = sub_100007EE8();
    v156(v157);
    v158 = sub_100005480();
    sub_1000833D8(v158, v159, v153);
    v160 = sub_100005480();
    v156(v160);
    v144 = v355;
    (*(v155 + 32))(v355, v150, a5);
    v145 = 0;
  }

  v161 = 1;
  sub_100017568(v144, v145);
  sub_100007F30();
  sub_1003E7FD4(v162, v163);
  v164 = sub_100049604();
  v165(v164);
  v166 = v357;
  sub_100566BC8(v357, v386);
  v167 = v321;
  if ((v386[32] & 1) == 0)
  {
    sub_1001B3B30(v339 + OBJC_IVAR____TtCV7Weather25NoAqiSevereNhpNewsContent8_Storage_newsArticle, v321);
    v166 = v357;
    sub_10004E364();
    v168();
    sub_1001B4354(v167);
    v169 = sub_100003A80();
    v170 = v363;
    sub_1000833D8(v169, v171, v363);
    v144 = *(v327 + 8);
    v172 = sub_100003A80();
    (v144)(v172);
    v173 = sub_100005474();
    sub_1000833D8(v173, v174, v170);
    v175 = sub_100005474();
    (v144)(v175);
    v176 = sub_1000280F8();
    v177(v176);
    v161 = 0;
  }

  sub_100017568(v144, v161);
  sub_100007F30();
  sub_1003E7FD4(v178, v179);
  v180 = sub_100049604();
  v181(v180);
  v182 = OBJC_IVAR____TtCV7Weather25NoAqiSevereNhpNewsContent8_Storage_map;
  v183 = v339;
  swift_beginAccess();
  v184 = v183 + v182;
  v185 = v299;
  sub_10026E174(v184, v299);
  if (sub_100024D10(v185, 1, v297) == 1)
  {
    sub_10026E1E4(v185);
    v186 = 1;
    v187 = v327;
  }

  else
  {
    v188 = v185;
    v189 = v296[0];
    sub_10026E24C(v188, v296[0]);
    sub_100566A5C(v166, v387);
    v187 = v327;
    if (v388)
    {
      sub_1001B4354(v189);
      v186 = 1;
    }

    else
    {
      v362(v189, v387[0], v387[1], v387[2], v387[3]);
      sub_1001B4354(v189);
      v190 = sub_100003A80();
      v191 = v363;
      sub_1000833D8(v190, v192, v363);
      v144 = *(v187 + 8);
      v193 = sub_100003A80();
      (v144)(v193);
      sub_1000833D8(v360, a5, v191);
      (v144)(v360, a5);
      v194 = sub_1000280F8();
      v195(v194);
      v186 = 0;
    }
  }

  v196 = v300;
  sub_100017568(v144, v186);
  sub_100007F30();
  sub_1003E7FD4(v197, v198);
  v199 = sub_100049604();
  v200(v199);
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v196);
  sub_100566A78(v166, v389);
  if (v390)
  {
    goto LABEL_31;
  }

  v362(v196, v389[0], v389[1], v389[2], v389[3]);
  sub_1001B4354(v196);
  sub_100007F30();
  sub_1000833D8(v201, v202, v203);
  v204 = *(v187 + 8);
  v205 = sub_100003A80();
  v204(v205);
  v206 = v302;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v302);
  sub_100566A94(v166, v391);
  if (v391[32])
  {
    goto LABEL_31;
  }

  v207 = sub_100014130();
  v208(v207);
  sub_1001B4354(v206);
  v209 = sub_100005474();
  sub_1000833D8(v209, v210, v363);
  v211 = sub_100005474();
  v204(v211);
  v212 = v304;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex, v304);
  sub_100566AB0(v166, v392);
  if (v392[32])
  {
    goto LABEL_34;
  }

  v213 = sub_100014130();
  v214(v213);
  sub_1001B4354(v212);
  v215 = sub_100005474();
  sub_1000833D8(v215, v216, v363);
  v217 = sub_100005474();
  v204(v217);
  v218 = v306;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v306);
  sub_100566ACC(v166, v393);
  if (v393[32])
  {
    goto LABEL_31;
  }

  v219 = sub_10002279C();
  v220(v219);
  sub_1001B4354(v218);
  sub_100007F30();
  sub_1000833D8(v221, v222, v223);
  v224 = sub_100003A80();
  v204(v224);
  v225 = v308;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind, v308);
  sub_100566AE8(v166, v394);
  if (v394[32])
  {
    goto LABEL_34;
  }

  v226 = sub_10002279C();
  v227(v226);
  sub_1001B4354(v225);
  sub_100007F30();
  sub_1000833D8(v228, v229, v230);
  v231 = sub_100003A80();
  v204(v231);
  v232 = v310;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v310);
  sub_100566B04(v166, v395);
  if (v395[32])
  {
    goto LABEL_31;
  }

  v233 = sub_10002279C();
  v234(v233);
  sub_1001B4354(v232);
  sub_100007F30();
  sub_1000833D8(v235, v236, v237);
  v238 = sub_100003A80();
  v204(v238);
  v239 = v312;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike, v312);
  sub_100566B20(v166, v396);
  if (v396[32])
  {
    goto LABEL_31;
  }

  v240 = sub_100014130();
  v241(v240);
  sub_1001B4354(v239);
  v242 = sub_100005474();
  sub_1000833D8(v242, v243, v363);
  v244 = sub_100005474();
  v204(v244);
  v245 = v314;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v314);
  sub_100566B3C(v166, v397);
  if (v397[32])
  {
LABEL_34:
    sub_100013470();
    goto LABEL_35;
  }

  v246 = sub_100014130();
  v247(v246);
  sub_1001B4354(v245);
  v248 = sub_100005474();
  sub_1000833D8(v248, v249, v363);
  v250 = sub_100005474();
  v204(v250);
  v251 = v315;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility, v315);
  sub_100566B58(v166, &v398);
  if ((v399 & 1) == 0)
  {
    v252 = sub_10002279C();
    v253(v252);
    sub_1001B4354(v251);
    sub_100007F30();
    sub_1000833D8(v254, v255, v256);
    v257 = sub_100003A80();
    v204(v257);
    v258 = v317;
    sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v317);
    sub_100566B74(v166, &v400);
    if ((v401 & 1) == 0)
    {
      v259 = sub_100014130();
      v260(v259);
      sub_1001B4354(v258);
      v261 = sub_100005474();
      sub_1000833D8(v261, v262, v363);
      v263 = sub_100005474();
      v204(v263);
      sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v323);
      sub_100566B90(v166, v402);
      if ((v403 & 1) == 0)
      {
        v264 = v323;
        v362(v323, v402[0], v402[1], v402[2], v402[3]);
        sub_1001B4354(v264);
        v265 = sub_100005474();
        sub_1000833D8(v265, v266, v363);
        v267 = sub_100005474();
        v204(v267);
        v268 = v318;
        sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v318);
        sub_100566BAC(v166, v404);
        if ((v405 & 1) == 0)
        {
          v362(v268, v404[0], v404[1], v404[2], v404[3]);
          sub_1001B4354(v268);
          v269 = sub_100005480();
          v270 = v363;
          sub_1000833D8(v269, v271, v363);
          v272 = sub_100005480();
          v204(v272);
          v273 = *(v322 + 16);
          v274 = v355;
          v275 = v361;
          v273(v355, v340, v361);
          v382[0] = v274;
          v276 = v324;
          v273(v324, v341, v275);
          v382[1] = v276;
          v277 = v325;
          v273(v325, v342, v275);
          v382[2] = v277;
          v278 = v326;
          v273(v326, v343, v275);
          v382[3] = v278;
          v279 = *(v187 + 16);
          v280 = v360;
          v279(v360, v344, a5);
          v382[4] = v280;
          v281 = v356;
          v279(v356, v345, a5);
          v382[5] = v281;
          v282 = v329;
          v279(v329, v346, a5);
          v382[6] = v282;
          v283 = v330;
          v279(v330, v347, a5);
          v382[7] = v283;
          v284 = v331;
          v279(v331, v348, a5);
          v382[8] = v284;
          v285 = v332;
          v279(v332, v349, a5);
          v382[9] = v285;
          v286 = v333;
          v279(v333, v350, a5);
          v382[10] = v286;
          v287 = v334;
          v279(v334, v351, a5);
          v382[11] = v287;
          v288 = v335;
          v279(v335, v352, a5);
          v382[12] = v288;
          v289 = v336;
          v279(v336, v353, a5);
          v382[13] = v289;
          v290 = v337;
          v279(v337, v354, a5);
          v382[14] = v290;
          v291 = v319;
          v279(v319, v328, a5);
          v382[15] = v291;
          v381[0] = v275;
          v381[1] = v275;
          v381[2] = v275;
          v381[3] = v275;
          v381[4] = a5;
          v381[5] = a5;
          v381[6] = a5;
          v381[7] = a5;
          v381[8] = a5;
          v381[9] = a5;
          v381[10] = a5;
          v381[11] = a5;
          v381[12] = a5;
          v381[13] = a5;
          v381[14] = a5;
          v381[15] = a5;
          v364 = v270;
          WitnessTable = swift_getWitnessTable();
          v366 = WitnessTable;
          v367 = WitnessTable;
          v368 = WitnessTable;
          v369 = v270;
          v370 = v270;
          v371 = v270;
          v372 = v270;
          v373 = v270;
          v374 = v270;
          v375 = v270;
          v376 = v270;
          v377 = v270;
          v378 = v270;
          v379 = v270;
          v380 = v270;
          sub_10012E24C(v382, 16, v381);
          v292 = sub_100005480();
          v204(v292);
          (v204)(v354, a5);
          (v204)(v353, a5);
          (v204)(v352, a5);
          (v204)(v351, a5);
          (v204)(v350, a5);
          (v204)(v349, a5);
          (v204)(v348, a5);
          (v204)(v347, a5);
          (v204)(v346, a5);
          (v204)(v345, a5);
          (v204)(v344, a5);
          v293 = v359;
          v359(v343, v275);
          v293(v342, v275);
          v293(v341, v275);
          v293(v340, v275);
          v294 = sub_100007EE8();
          v204(v294);
          (v204)(v337, a5);
          (v204)(v336, a5);
          (v204)(v335, a5);
          (v204)(v334, a5);
          (v204)(v333, a5);
          (v204)(v332, a5);
          (v204)(v331, a5);
          (v204)(v330, a5);
          (v204)(v329, a5);
          (v204)(v356, a5);
          (v204)(v360, a5);
          v293(v326, v275);
          v293(v325, v275);
          v293(v324, v275);
          return (v293)(v355, v275);
        }
      }
    }

    goto LABEL_34;
  }

LABEL_31:
  sub_10001E640();
LABEL_35:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1007A0F44@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() mainBundle];
  v12._object = 0x8000000100ADE200;
  v5._countAndFlagsBits = 0x612074726F706552;
  v5._object = 0xEF6575737349206ELL;
  v6._object = 0x8000000100ADE1E0;
  v12._countAndFlagsBits = 0xD000000000000038;
  v6._countAndFlagsBits = 0xD000000000000019;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v4, v5, v12);

  *a2 = v7;
  *(a2 + 16) = 0xD00000000000001BLL;
  *(a2 + 24) = 0x8000000100ABB9A0;
  *(a2 + 32) = 0;
  type metadata accessor for LocationComponentHeaderViewModel(0);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for LocationComponentContainerViewModel();
  *(a2 + v8[5]) = a1;
  type metadata accessor for LocationComponentViewModel();
  swift_storeEnumTagMultiPayload();
  v9 = v8[8];
  v10 = type metadata accessor for LocationComponentAction(0);
  swift_storeEnumTagMultiPayload();
  sub_10001B350(a2 + v9, 0, 1, v10);
  sub_10013D288();
  result = Dictionary.init(dictionaryLiteral:)();
  *(a2 + v8[6]) = 258;
  *(a2 + v8[7]) = result;
  return result;
}

uint64_t sub_1007A10EC@<X0>(uint64_t *a1@<X8>)
{
  sub_100035B30(v1 + 16, (a1 + 2));
  v3 = *(v1 + 64);

  sub_10022C350(&qword_100CA4B28);
  sub_1007A1190();
  result = ObservedObject.init(wrappedValue:)();
  *a1 = result;
  a1[1] = v5;
  a1[7] = v3;
  return result;
}

unint64_t sub_1007A1190()
{
  result = qword_100CA4B30;
  if (!qword_100CA4B30)
  {
    sub_10022E824(&qword_100CA4B28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA4B30);
  }

  return result;
}

uint64_t sub_1007A1268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  KeyPath = swift_getKeyPath();
  v7 = sub_10022C350(&qword_100CD76E8);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  result = sub_10022C350(qword_100CD76F0);
  v9 = a2 + *(result + 36);
  *v9 = KeyPath;
  *(v9 + 8) = a3;
  return result;
}

double sub_1007A131C()
{
  sub_1007A139C();
  EnvironmentValues.subscript.getter();
  return v1;
}

unint64_t sub_1007A139C()
{
  result = qword_100CD76E0;
  if (!qword_100CD76E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD76E0);
  }

  return result;
}

uint64_t sub_1007A1400()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1007A143C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1007A147C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1007A14D4()
{
  result = qword_100CD7778;
  if (!qword_100CD7778)
  {
    sub_10022E824(qword_100CD76F0);
    sub_100006F64(&qword_100CD7780, &qword_100CD76E8);
    sub_100006F64(&qword_100CA40A8, &qword_100CA40B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7778);
  }

  return result;
}

uint64_t sub_1007A15FC@<X0>(unint64_t a1@<X0>, char a2@<W1>, void (*a3)(__n128)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v29 = a6;
  v30 = a5;
  v28 = a3;
  v9 = type metadata accessor for EnvironmentValues();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a4 - 8);
  __chkstk_darwin(v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v26 - v20;
  if (a2)
  {
    v19.n128_u64[0] = a1;
  }

  else
  {
    v27 = v18;

    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(a1, 0);
    (*(v10 + 8))(v12, v27);
    v19.n128_u64[0] = v31;
  }

  v28(v19);
  v23 = v30;
  sub_1000833D8(v16, a4, v30);
  v24 = *(v13 + 8);
  v24(v16, a4);
  sub_1000833D8(v21, a4, v23);
  return (v24)(v21, a4);
}

uint64_t sub_1007A187C()
{
  type metadata accessor for Access();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_1000037D8();
  v1 = sub_100006738();
  __chkstk_darwin(v1 - 8);
  sub_1000037D8();
  static Domain.weatherInternal.getter();
  v2 = sub_100003F94();
  v3(v2);
  sub_10022C350(&qword_100CAFFD8);
  swift_allocObject();
  result = sub_100005908();
  qword_100D90918 = result;
  return result;
}

uint64_t sub_1007A19B0()
{
  type metadata accessor for Access();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_1000037D8();
  v1 = sub_100006738();
  __chkstk_darwin(v1 - 8);
  sub_1000037D8();
  static Domain.weatherInternal.getter();
  v2 = sub_100003F94();
  v3(v2);
  sub_10022C350(&qword_100CAFFD8);
  swift_allocObject();
  result = sub_100005908();
  qword_100D90920 = result;
  return result;
}

uint64_t sub_1007A1AE4()
{
  type metadata accessor for Access();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_1000037D8();
  v1 = sub_100006738();
  __chkstk_darwin(v1 - 8);
  sub_1000037D8();
  static Domain.weatherInternal.getter();
  v2 = sub_100003F94();
  v3(v2);
  sub_10022C350(&qword_100CBCE20);
  swift_allocObject();
  result = sub_100005908();
  qword_100D90928 = result;
  return result;
}

uint64_t sub_1007A1C1C()
{
  v1 = OBJC_IVAR____TtC7Weather14FrameContainer___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

BOOL sub_1007A1CC0(CGFloat *a1, void (*a2)(CGRect *__return_ptr))
{
  a2(&v8);
  x = v8.origin.x;
  y = v8.origin.y;
  width = v8.size.width;
  height = v8.size.height;
  v9.origin.x = 0.0;
  v9.origin.y = 0.0;
  v9.size.width = 0.0;
  v9.size.height = 0.0;
  result = CGRectEqualToRect(v8, v9);
  if (!result)
  {
    *a1 = x;
    a1[1] = y;
    a1[2] = width;
    a1[3] = height;
  }

  return result;
}

uint64_t sub_1007A1D44@<X0>(uint64_t *a1@<X8>)
{
  v2 = static Color.clear.getter();
  result = GeometryProxy.frame(in:)();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  return result;
}

uint64_t sub_1007A1DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v97 = a1;
  v98 = a2;
  v94 = a3;
  v92 = type metadata accessor for LocationComponentHeaderViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  type metadata accessor for MoonPhase.Hemisphere();
  sub_1000037C4();
  v84 = v8;
  v85 = v7;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v83 = v10 - v9;
  sub_1000038CC();
  v11 = type metadata accessor for MoonComponentViewModel();
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  sub_1000037D8();
  v93 = (v14 - v13);
  sub_1000038CC();
  type metadata accessor for TimeZone();
  sub_1000037C4();
  v87 = v16;
  v88 = v15;
  __chkstk_darwin(v15);
  sub_1000037D8();
  v19 = v18 - v17;
  v20 = sub_10022C350(&qword_100CAC7D0);
  v21 = sub_100003810(v20);
  __chkstk_darwin(v21);
  v90 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v89 = &v82 - v24;
  __chkstk_darwin(v25);
  v100 = &v82 - v26;
  sub_1000038CC();
  v86 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v28 = v27;
  __chkstk_darwin(v29);
  sub_1000037D8();
  v32 = v31 - v30;
  v33 = sub_10022C350(&qword_100CA75C8);
  v34 = sub_100003810(v33);
  __chkstk_darwin(v34);
  v36 = &v82 - v35;
  v37 = sub_10022C350(&unk_100CB2CF0);
  v38 = sub_100003810(v37);
  __chkstk_darwin(v38);
  v40 = &v82 - v39;
  v41 = type metadata accessor for Date();
  sub_1000037C4();
  v95 = v42;
  __chkstk_darwin(v43);
  sub_1000037D8();
  v99 = v45 - v44;
  v46 = sub_1000038CC();
  v47 = type metadata accessor for WeatherData(v46);
  sub_100035AD0(v98 + *(v47 + 36), v36, &qword_100CA75C8);
  v48 = type metadata accessor for WeatherDataOverrides();
  if (sub_100024D10(v36, 1, v48) == 1)
  {
    sub_1000180EC(v36, &qword_100CA75C8);
    sub_10001B350(v40, 1, 1, v41);
  }

  else
  {
    sub_100035AD0(v36, v40, &unk_100CB2CF0);
    sub_1007A3894(v36, type metadata accessor for WeatherDataOverrides);
    if (sub_100024D10(v40, 1, v41) != 1)
    {
      (*(v95 + 32))(v99, v40, v41);
      goto LABEL_7;
    }
  }

  WeatherDataModel.currentWeather.getter();
  CurrentWeather.date.getter();
  (*(v28 + 8))(v32, v86);
  if (sub_100024D10(v40, 1, v41) != 1)
  {
    sub_1000180EC(v40, &unk_100CB2CF0);
  }

LABEL_7:
  sub_1000161C0((v96 + 16), *(v96 + 40));
  Location.timeZone.getter();
  Location.coordinate.getter();
  v49 = v100;
  dispatch thunk of MoonDataProviderType.dayMoonData(for:timeZone:coordinate:)();
  (*(v87 + 8))(v19, v88);
  v50 = [objc_opt_self() mainBundle];
  v102._object = 0x8000000100ADE380;
  v102._countAndFlagsBits = 0xD000000000000036;
  v51._countAndFlagsBits = 1852796749;
  v51._object = 0xE400000000000000;
  v52._countAndFlagsBits = 0;
  v52._object = 0xE000000000000000;
  v53 = NSLocalizedString(_:tableName:bundle:value:comment:)(v51, 0, v50, v52, v102);
  countAndFlagsBits = v53._countAndFlagsBits;
  object = v53._object;

  v56 = v89;
  sub_100035AD0(v49, v89, &qword_100CAC7D0);
  v57 = type metadata accessor for DayMoonData();
  v58 = sub_100024D10(v56, 1, v57);
  v91 = v41;
  if (v58 == 1)
  {
    sub_1000180EC(v56, &qword_100CAC7D0);

    v59 = v53._countAndFlagsBits;
    v60 = v53._object;
  }

  else
  {
    DayMoonData.phase.getter();
    (*(*(v57 - 8) + 8))(v56, v57);
    v61 = MoonPhase.description.getter();
    v63 = v62;
    v101 = v53;
    v64._countAndFlagsBits = 8236;
    v64._object = 0xE200000000000000;
    String.append(_:)(v64);
    v65._countAndFlagsBits = v61;
    v65._object = v63;
    String.append(_:)(v65);
    v66 = v101;
    v60 = v66._object;
    v59 = v66._countAndFlagsBits;
    countAndFlagsBits = v61;
    object = v63;
  }

  v67 = v93;
  v68 = v100;
  sub_1007A2678(v97, v99, v100, v93);
  v69 = v90;
  sub_100035AD0(v68, v90, &qword_100CAC7D0);
  if (sub_100024D10(v69, 1, v57) == 1)
  {
    sub_1000180EC(v69, &qword_100CAC7D0);
    v70 = 0;
    v71 = 0;
  }

  else
  {
    DayMoonData.phase.getter();
    (*(*(v57 - 8) + 8))(v69, v57);
    Location.coordinate.getter();
    v72 = v83;
    MoonPhase.Hemisphere.init(latitude:)();
    v70 = MoonPhase.symbolName(for:)();
    v71 = v73;
    (*(v84 + 8))(v72, v85);
  }

  v74 = 0x8000000100ADE3C0;
  *v6 = countAndFlagsBits;
  *(v6 + 8) = object;
  v75 = 0xD000000000000013;
  if (v71)
  {
    v75 = v70;
    v74 = v71;
  }

  *(v6 + 16) = v75;
  *(v6 + 24) = v74;
  *(v6 + 32) = 0;
  *(v6 + 40) = v59;
  *(v6 + 48) = v60;
  swift_storeEnumTagMultiPayload();
  v76 = type metadata accessor for LocationComponentContainerViewModel();
  v77 = v94;
  sub_1007A37CC(v67, v94 + v76[5]);
  type metadata accessor for LocationComponentViewModel();
  swift_storeEnumTagMultiPayload();
  v78 = v76[8];
  v79 = type metadata accessor for LocationComponentAction(0);
  swift_storeEnumTagMultiPayload();
  sub_10001B350(v77 + v78, 0, 1, v79);
  sub_10013D288();
  v80 = Dictionary.init(dictionaryLiteral:)();
  sub_1007A3894(v67, type metadata accessor for MoonComponentViewModel);
  sub_1000180EC(v100, &qword_100CAC7D0);
  (*(v95 + 8))(v99, v91);
  result = sub_1007A3830(v6, v77);
  *(v77 + v76[6]) = 256;
  *(v77 + v76[7]) = v80;
  return result;
}

uint64_t sub_1007A2678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v5 = v4;
  v117 = a3;
  v126 = a2;
  v120 = a4;
  v8 = sub_10022C350(&qword_100CAC7D0);
  __chkstk_darwin(v8 - 8);
  v119 = &v108 - v9;
  v10 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v10 - 8);
  v12 = &v108 - v11;
  v127 = type metadata accessor for Date();
  v123 = *(v127 - 8);
  __chkstk_darwin(v127);
  v118 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v111 = &v108 - v15;
  v16 = sub_10022C350(&qword_100CD78F0);
  __chkstk_darwin(v16 - 8);
  v116 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v108 - v19;
  v21 = type metadata accessor for TimeZone();
  v121 = *(v21 - 8);
  v122 = v21;
  __chkstk_darwin(v21);
  v23 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v108 - v25;
  Location.timeZone.getter();
  v115 = a1;
  Location.coordinate.getter();
  sub_1000161C0(v5 + 2, v5[5]);
  v27 = dispatch thunk of MoonDataProviderType.moonEphemeris(for:coordinate:)();
  sub_1000161C0(v5 + 2, v5[5]);
  dispatch thunk of MoonDataProviderType.nextMoonEvent(after:coordinate:timeZone:)();
  v131 = v20;
  v125 = v26;
  v28 = sub_1007A3250(v20, v5, a2, v26);
  v128 = v29;
  v129 = v28;
  v130 = v30;
  v124 = v27;
  if (v27)
  {
    sub_1002B5AAC();

    v31 = static NSNumberFormatter.percent.getter();
    CelestialEphemeris.illuminatedFraction.getter();
    isa = Double._bridgeToObjectiveC()().super.super.isa;
    v33 = [v31 stringFromNumber:isa];

    if (v33)
    {
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v109 = v35;

      v114 = 0;
      goto LABEL_6;
    }
  }

  v34 = 0;
  v109 = 0;
  v114 = 1;
LABEL_6:
  v36 = v116;
  sub_1000161C0(v5 + 2, v5[5]);
  dispatch thunk of MoonDataProviderType.nextFullMoonDate(for:timeZone:coordinate:)();
  v37 = v127;
  v38 = sub_100024D10(v12, 1, v127);
  v110 = v34;
  if (v38 == 1)
  {
    sub_1000180EC(v12, &unk_100CB2CF0);
    v113 = 0;
    v112 = 0;
    v39 = -1;
  }

  else
  {
    v40 = v123;
    v41 = v111;
    (*(v123 + 32))(v111, v12, v37);
    sub_1000161C0(v5 + 7, v5[10]);
    Location.timeZone.getter();
    v113 = dispatch thunk of MoonStringBuilderType.nextFullMoonDurationString(fullMoonDate:now:timeZone:)();
    v112 = v42;
    v39 = v43;
    (*(v121 + 8))(v23, v122);
    (*(v40 + 8))(v41, v37);
  }

  v116 = sub_1007A34DC(v129, v128, v130, v131);
  v115 = v44;
  if (v114)
  {
    v45 = _swiftEmptyArrayStorage;
    v46 = v124;
  }

  else
  {
    v47 = [objc_opt_self() mainBundle];
    v135._object = 0x8000000100ADE420;
    v48._countAndFlagsBits = 0x616E696D756C6C49;
    v48._object = 0xEC0000006E6F6974;
    v49._countAndFlagsBits = 0;
    v49._object = 0xE000000000000000;
    v135._countAndFlagsBits = 0xD000000000000035;
    v50 = NSLocalizedString(_:tableName:bundle:value:comment:)(v48, 0, v47, v49, v135);

    sub_10069F550(0, 1, 1, _swiftEmptyArrayStorage);
    v45 = v51;
    v53 = v51[2];
    v52 = v51[3];
    if (v53 >= v52 >> 1)
    {
      sub_10069F550(v52 > 1, v53 + 1, 1, v51);
      v45 = v105;
    }

    v46 = v124;
    v45[2] = v53 + 1;
    v54 = &v45[5 * v53];
    v54[2] = v50;
    v55 = v109;
    v54[3]._countAndFlagsBits = v110;
    v54[3]._object = v55;
    LOBYTE(v54[4]._countAndFlagsBits) = 0;
  }

  sub_100035AD0(v131, v36, &qword_100CD78F0);
  v56 = type metadata accessor for MoonRiseSetEvent();
  if (sub_100024D10(v36, 1, v56) == 1)
  {
    sub_1000180EC(v36, &qword_100CD78F0);
  }

  else
  {
    v57 = sub_10095C874();
    v59 = v58;
    (*(*(v56 - 8) + 8))(v36, v56);
    if (v59)
    {
      if (v130 == 0xFF)
      {
      }

      else
      {
        sub_1002EE904(v129, v128, v130);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10069F550(0, v45[2] + 1, 1, v45);
          v45 = v106;
        }

        v61 = v45[2];
        v60 = v45[3];
        if (v61 >= v60 >> 1)
        {
          sub_10069F550(v60 > 1, v61 + 1, 1, v45);
          v45 = v107;
        }

        v45[2] = v61 + 1;
        v62 = &v45[5 * v61];
        v62[4] = v57;
        v62[5] = v59;
        v63 = v128;
        v62[6] = v129;
        v62[7] = v63;
        *(v62 + 64) = v130;
      }
    }
  }

  if (v39 != -1)
  {
    v64 = [objc_opt_self() mainBundle];
    v136._object = 0x8000000100ADE3E0;
    v65._countAndFlagsBits = 0x6C7546207478654ELL;
    v65._object = 0xEE006E6F6F4D206CLL;
    v136._countAndFlagsBits = 0xD000000000000036;
    v66._countAndFlagsBits = 0;
    v66._object = 0xE000000000000000;
    v67 = NSLocalizedString(_:tableName:bundle:value:comment:)(v65, 0, v64, v66, v136);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10069F550(0, v45[2] + 1, 1, v45);
      v45 = v103;
    }

    v69 = v45[2];
    v68 = v45[3];
    if (v69 >= v68 >> 1)
    {
      sub_10069F550(v68 > 1, v69 + 1, 1, v45);
      v45 = v104;
    }

    v45[2] = v69 + 1;
    v70 = &v45[5 * v69];
    v70[2] = v67;
    v71 = v112;
    v70[3]._countAndFlagsBits = v113;
    v70[3]._object = v71;
    LOBYTE(v70[4]._countAndFlagsBits) = v39;
  }

  sub_1007A36B0(v46);
  v73 = v72;
  v74 = v45[2];
  v75 = _swiftEmptyArrayStorage;
  if (v74)
  {
    v134 = _swiftEmptyArrayStorage;

    sub_10000369C(0, v74, 0);
    v75 = v134;
    v76 = (v45 + 8);
    do
    {
      v77 = *(v76 - 3);
      v78 = *(v76 - 2);
      v79 = *(v76 - 1);
      v80 = *v76;
      v132 = *(v76 - 4);
      v133 = v77;
      swift_bridgeObjectRetain_n();
      sub_1002EE904(v78, v79, v80);
      v81._countAndFlagsBits = 8236;
      v81._object = 0xE200000000000000;
      String.append(_:)(v81);
      v82._countAndFlagsBits = TemporalString.string.getter();
      String.append(_:)(v82);

      sub_1002773E8(v78, v79, v80);
      v83 = v132;
      v84 = v133;
      v134 = v75;
      v86 = v75[2];
      v85 = v75[3];
      if (v86 >= v85 >> 1)
      {
        sub_10000369C((v85 > 1), v86 + 1, 1);
        v75 = v134;
      }

      v76 += 40;
      v75[2] = v86 + 1;
      v87 = &v75[2 * v86];
      v87[4] = v83;
      v87[5] = v84;
      --v74;
    }

    while (v74);
  }

  v132 = v75;
  sub_10022C350(&qword_100CCC930);
  sub_1001141C8();
  v88 = BidirectionalCollection<>.joined(separator:)();
  v90 = v89;

  v91 = v123;
  v92 = v118;
  v93 = v127;
  (*(v123 + 16))(v118, v126, v127);
  v94 = v119;
  sub_100035AD0(v117, v119, &qword_100CAC7D0);
  v95 = type metadata accessor for DayMoonData();
  if (sub_100024D10(v94, 1, v95) == 1)
  {

    sub_1000180EC(v131, &qword_100CD78F0);
    (*(v121 + 8))(v125, v122);
    sub_1000180EC(v94, &qword_100CAC7D0);
    v96 = 8;
  }

  else
  {
    v96 = DayMoonData.phase.getter();

    sub_1000180EC(v131, &qword_100CD78F0);
    (*(v121 + 8))(v125, v122);
    (*(*(v95 - 8) + 8))(v94, v95);
  }

  v97 = v120;
  v98 = v115;
  *v120 = v116;
  v97[1] = v98;
  v99 = v128;
  v97[2] = v129;
  v97[3] = v99;
  *(v97 + 32) = v130;
  v97[5] = v45;
  v100 = type metadata accessor for MoonComponentViewModel();
  result = (*(v91 + 32))(v97 + v100[7], v92, v93);
  *(v97 + v100[8]) = v96;
  *(v97 + v100[9]) = v73;
  v102 = (v97 + v100[10]);
  *v102 = v88;
  v102[1] = v90;
  return result;
}

uint64_t sub_1007A3250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[1] = a4;
  v6 = type metadata accessor for Date();
  v19 = *(v6 - 8);
  v20 = v6;
  __chkstk_darwin(v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CD78F0);
  __chkstk_darwin(v9 - 8);
  v11 = v18 - v10;
  v12 = type metadata accessor for MoonRiseSetEvent();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100035AD0(a1, v11, &qword_100CD78F0);
  if (sub_100024D10(v11, 1, v12) == 1)
  {
    sub_1000180EC(v11, &qword_100CD78F0);
    return 0;
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    sub_1000161C0((a2 + 56), *(a2 + 80));
    MoonRiseSetEvent.date.getter();
    v16 = dispatch thunk of MoonStringBuilderType.nextMoonRiseSetString(_:now:timeZone:)();
    (*(v19 + 8))(v8, v20);
    (*(v13 + 8))(v15, v12);
  }

  return v16;
}

uint64_t sub_1007A34DC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = ~a3;
  v6 = sub_10022C350(&qword_100CD78F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  if (!v5)
  {
    return 0;
  }

  sub_100035AD0(a4, &v18 - v7, &qword_100CD78F0);
  v9 = type metadata accessor for MoonRiseSetEvent();
  if (sub_100024D10(v8, 1, v9) == 1)
  {
    sub_1000180EC(v8, &qword_100CD78F0);
    return 0;
  }

  sub_10095C3CC();
  v11 = v10;
  (*(*(v9 - 8) + 8))(v8, v9);
  if (!v11)
  {
    return 0;
  }

  sub_10022C350(&qword_100CA40C8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100A2C3F0;
  v13 = TemporalString.string.getter();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100035744();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  v16 = String.init(format:_:)();

  return v16;
}

void sub_1007A36B0(uint64_t a1)
{
  if (a1)
  {

    CelestialEphemeris.librationPositionAngle.getter();
    CelestialEphemeris.topocentricParallacticAngle.getter();
  }

  else
  {
    if (qword_100CA26A8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000703C(v1, qword_100D90A60);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Failed to calcuate rotationAngle due to missing ephemeris", v4, 2u);
    }
  }
}

uint64_t sub_1007A37CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoonComponentViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007A3830(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationComponentHeaderViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007A3894(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1007A38EC()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v2 = v0;
    [objc_opt_self() wu_systemUsesExuberatedLineHeight];
    v3 = [objc_opt_self() defaultMetrics];
    sub_100717DC4();
    v4 = static UIFont.monospacedDigitSystemFont(ofSize:weight:traits:)();
    v5 = sub_100028B10();
    v7 = [v5 v6];

    *(v2 + 24) = v7;
    v8 = v7;
    sub_1000231D4();
  }

  v9 = v1;
  return v2;
}

uint64_t sub_1007A39E0()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v2 = v0;
    v3 = [objc_opt_self() defaultMetrics];
    [objc_opt_self() wu_systemUsesExuberatedLineHeight];
    sub_100717DC4();
    v4 = static UIFont.monospacedDigitSystemFont(ofSize:weight:traits:)();
    v5 = sub_100028B10();
    v7 = [v5 v6];

    *(v2 + 40) = v7;
    v8 = v7;
    sub_1000231D4();
  }

  v9 = v1;
  return v2;
}

void sub_1007A3ACC()
{
  sub_100049C58();
  if (!*(v0 + 16))
  {
    v1 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle2];
    v2 = [v1 fontDescriptorWithSymbolicTraits:0x8000];
    if (v2)
    {
      v3 = v2;

      v1 = v3;
    }

    sub_10022C350(&qword_100CC4CA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2C3F0;
    *(inited + 32) = UIFontDescriptorTraitsAttribute;
    sub_10022C350(&qword_100CC4CA8);
    v5 = swift_initStackObject();
    sub_100008E7C(v5, v6, v7, v8, v9, v10, v11, v12, v13);
    sub_100004A7C(v14);
    sub_10001F77C();
    sub_1007A4724(v15, v16);
    v17 = UIFontDescriptorTraitsAttribute;
    v18 = UIFontWeightTrait;
    sub_1000140AC();
    v19 = sub_10022C350(&qword_100CC4CB0);
    sub_100019EF8(v19);
    sub_10001CCBC();
    sub_1007A4724(v20, v21);
    sub_100006754();
    isa = sub_100010AB0().super.isa;

    v23 = [v1 fontDescriptorByAddingAttributes:isa];

    v24 = [objc_opt_self() fontWithDescriptor:v23 size:0.0];
    *(v0 + 16) = Font.init(_:)();
  }

  sub_100074F8C();
}

void sub_1007A3CFC()
{
  sub_100049C58();
  if (!*v0)
  {
    v1 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote];
    v2 = [v1 fontDescriptorWithSymbolicTraits:0x8000];
    if (v2)
    {
      v3 = v2;

      v1 = v3;
    }

    sub_10022C350(&qword_100CC4CA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2C3F0;
    *(inited + 32) = UIFontDescriptorTraitsAttribute;
    sub_10022C350(&qword_100CC4CA8);
    v5 = swift_initStackObject();
    sub_100008E7C(v5, v6, v7, v8, v9, v10, v11, v12, v13);
    sub_100004A7C(v14);
    sub_10001F77C();
    sub_1007A4724(v15, v16);
    v17 = UIFontDescriptorTraitsAttribute;
    v18 = UIFontWeightTrait;
    sub_1000140AC();
    v19 = sub_10022C350(&qword_100CC4CB0);
    sub_100019EF8(v19);
    sub_10001CCBC();
    sub_1007A4724(v20, v21);
    sub_100006754();
    isa = sub_100010AB0().super.isa;

    v23 = [v1 fontDescriptorByAddingAttributes:isa];

    v24 = [objc_opt_self() fontWithDescriptor:v23 size:0.0];
    *v0 = Font.init(_:)();
  }

  sub_100074F8C();
}

void sub_1007A3F2C()
{
  if (*(v0 + 64))
  {
    v1 = sub_1007A38EC();
    [v1 capHeight];
    v3 = v2;

    *(v0 + 56) = round(v3);
    *(v0 + 64) = 0;
  }
}

double sub_1007A3F88()
{
  if ((*(v0 + 80) & 1) == 0)
  {
    return *(v0 + 72);
  }

  v1 = sub_1007A38EC();
  [v1 _scaledValueForValue:0.75];
  v3 = v2;

  *(v0 + 72) = v3;
  *(v0 + 80) = 0;
  return v3;
}

void sub_1007A3FE8()
{
  sub_100049C58();
  if (!*(v0 + 8))
  {
    v1 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote];
    v2 = [v1 fontDescriptorWithSymbolicTraits:0x8000];
    if (v2)
    {
      v3 = v2;

      v1 = v3;
    }

    sub_10022C350(&qword_100CC4CA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2C3F0;
    *(inited + 32) = UIFontDescriptorTraitsAttribute;
    sub_10022C350(&qword_100CC4CA8);
    v5 = swift_initStackObject();
    sub_100008E7C(v5, v6, v7, v8, v9, v10, v11, v12, v13);
    sub_100004A7C(v14);
    sub_10001F77C();
    sub_1007A4724(v15, v16);
    v17 = UIFontDescriptorTraitsAttribute;
    v18 = UIFontWeightTrait;
    sub_1000140AC();
    v19 = sub_10022C350(&qword_100CC4CB0);
    sub_100019EF8(v19);
    sub_10001CCBC();
    sub_1007A4724(v20, v21);
    sub_100006754();
    isa = sub_100010AB0().super.isa;

    v23 = [v1 fontDescriptorByAddingAttributes:isa];

    v24 = [objc_opt_self() fontWithDescriptor:v23 size:0.0];
    *(v0 + 8) = Font.init(_:)();
  }

  sub_100074F8C();
}

double sub_1007A4218()
{
  if (qword_100CA2658 != -1)
  {
    swift_once();
  }

  sub_100016ED0();
  sub_1007A3FE8();
  swift_endAccess();
  Font.lineHeight(in:)();
  v1 = v0;

  sub_100016ED0();
  sub_1007A3FE8();
  swift_endAccess();
  Font.descender(in:)();
  v3 = v2;

  return round(v1 + v1 + v3 + 16.0);
}

double sub_1007A42F4()
{
  if ((*(v0 + 112) & 1) == 0)
  {
    return *(v0 + 104);
  }

  *(v0 + 104) = 0x3FD0000000000000;
  *(v0 + 112) = 0;
  return 0.25;
}

double sub_1007A4318()
{
  if ((*(v0 + 128) & 1) == 0)
  {
    return *(v0 + 120);
  }

  *(v0 + 120) = 0x4008000000000000;
  *(v0 + 128) = 0;
  return 3.0;
}

double sub_1007A433C()
{
  if ((*(v0 + 144) & 1) == 0)
  {
    return *(v0 + 136);
  }

  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  return 0.0;
}

double sub_1007A435C()
{
  if ((*(v0 + 160) & 1) == 0)
  {
    return *(v0 + 152);
  }

  *(v0 + 152) = 0x4000000000000000;
  *(v0 + 160) = 0;
  return 2.0;
}

double sub_1007A4380()
{
  if ((*(v0 + 96) & 1) == 0)
  {
    return *(v0 + 88);
  }

  v1 = static Solarium.isEnabled.getter();
  result = 4.0;
  if (v1)
  {
    result = 3.0;
  }

  *(v0 + 88) = result;
  *(v0 + 96) = 0;
  return result;
}

uint64_t sub_1007A43C0()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v2 = v0;
    v3 = [objc_opt_self() defaultMetrics];
    sub_100717DC4();
    v4 = static UIFont.monospacedDigitSystemFont(ofSize:weight:traits:)();
    v5 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
    v6 = sub_100028B10();
    v8 = [v6 v7];

    *(v2 + 32) = v8;
    v9 = v8;
    sub_1000231D4();
  }

  v10 = v1;
  return v2;
}

uint64_t sub_1007A44C4()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    v2 = v0;
    v3 = [objc_opt_self() defaultMetrics];
    sub_100717DC4();
    v4 = static UIFont.monospacedDigitSystemFont(ofSize:weight:traits:)();
    v5 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
    v6 = sub_100028B10();
    v8 = [v6 v7];

    *(v2 + 48) = v8;
    v9 = v8;
    sub_1000231D4();
  }

  v10 = v1;
  return v2;
}

double sub_1007A45C4()
{
  result = 0.0;
  xmmword_100D90950 = 0u;
  unk_100D90960 = 0u;
  xmmword_100D90930 = 0u;
  unk_100D90940 = 0u;
  byte_100D90970 = 1;
  qword_100D90978 = 0;
  byte_100D90980 = 1;
  qword_100D90988 = 0;
  byte_100D90990 = 1;
  qword_100D90998 = 0;
  byte_100D909A0 = 1;
  qword_100D909A8 = 0;
  byte_100D909B0 = 1;
  qword_100D909B8 = 0;
  byte_100D909C0 = 1;
  qword_100D909C8 = 0;
  byte_100D909D0 = 1;
  return result;
}

uint64_t sub_1007A4640(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 161))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1007A4694(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 161) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 161) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1007A4724(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1007A4774(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 114))
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

uint64_t sub_1007A47B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 114) = 1;
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

    *(result + 114) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1007A482C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1007A486C(uint64_t result, int a2, int a3)
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

uint64_t sub_1007A48D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000100ADE4A0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x8000000100ADE4C0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001CLL && 0x8000000100ADE4E0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001ALL && 0x8000000100ADE500 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000020 && 0x8000000100ADE520 == a2)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1007A4AB8(char a1)
{
  result = 0x656C61636F6CLL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      result = 0xD000000000000020;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_1007A4B80()
{
  sub_100037D3C();
  sub_10022C350(&qword_100CD79F8);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v1);
  sub_100014AE4();
  sub_1007A8720();
  sub_100019CD4();
  sub_100003CDC();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    sub_1000520FC();
    sub_100003CDC();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100005670();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100005670();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100003CDC();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100005670();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v2 = sub_1000231E0();
  return v3(v2);
}

void sub_1007A4D18()
{
  sub_10000E8AC();
  v2 = v1;
  v4 = v3;
  sub_10022C350(&qword_100CD7A30);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v5);
  sub_10001930C(v2, v2[3]);
  sub_1007A8720();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100006F14(v2);
  }

  else
  {
    LOBYTE(v23[0]) = 0;
    v6 = KeyedDecodingContainer.decode(_:forKey:)();
    v8 = v7;
    sub_100010AD0(1);
    v17 = KeyedDecodingContainer.decode(_:forKey:)();
    v19 = v9;
    sub_100010AD0(2);
    v29 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100010AD0(3);
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100010AD0(4);
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    v18 = v10;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v29 &= 1u;
    v16 &= 1u;
    v12 = sub_100074FA8();
    v13(v12);
    *&v20 = v6;
    *(&v20 + 1) = v8;
    *&v21 = v17;
    *(&v21 + 1) = v19;
    v22[0] = v29;
    v22[1] = v16;
    *&v22[8] = v15;
    *&v22[16] = v18;
    v22[24] = v11 & 1;
    sub_1007A7C98(&v20, v23);
    sub_100006F14(v2);
    v23[0] = v6;
    v23[1] = v8;
    v23[2] = v17;
    v23[3] = v19;
    v24 = v29;
    v25 = v16;
    v26 = v15;
    v27 = v18;
    v28 = v11 & 1;
    sub_1007A7D24(v23);
    v14 = v21;
    *v4 = v20;
    v4[1] = v14;
    v4[2] = *v22;
    *(v4 + 41) = *&v22[9];
  }

  sub_10000C8F4();
}

unint64_t sub_1007A502C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C44F78, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1007A5078(char a1)
{
  if (!a1)
  {
    return 0x6C62616C69617661;
  }

  if (a1 == 1)
  {
    return 0xD000000000000016;
  }

  return 0x616C696176616E75;
}

uint64_t sub_1007A50E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x57746E6572727563 && a2 == 0xEE00726568746165;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726F46796C696164 && a2 == 0xED00007473616365;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F46796C72756F68 && a2 == 0xEE00747361636572;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x696C617551726961 && a2 == 0xEA00000000007974;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000015 && 0x8000000100ABACA0 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6557657265766573 && a2 == 0xED00007265687461;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x4372656874616577 && a2 == 0xEE007365676E6168)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1007A5348(char a1)
{
  result = 0x57746E6572727563;
  switch(a1)
  {
    case 1:
      result = 0x726F46796C696164;
      break;
    case 2:
      result = 0x6F46796C72756F68;
      break;
    case 3:
      result = 0x696C617551726961;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0x6557657265766573;
      break;
    case 6:
      result = 0x4372656874616577;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1007A5458()
{
  sub_10022C350(&qword_100CD7A80);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v1);
  sub_100014AE4();
  sub_1007A8CC8();
  sub_100019CD4();
  sub_1007A8D70();
  sub_100008E8C();
  if (!v0)
  {
    sub_100008E8C();
    sub_100008E8C();
    sub_100008E8C();
    sub_100008E8C();
    sub_100008E8C();
    sub_100008E8C();
  }

  v2 = sub_1000231E0();
  return v3(v2);
}

void sub_1007A566C()
{
  sub_10000E8AC();
  v2 = v1;
  v3 = sub_10022C350(&qword_100CD7A68);
  sub_1000037C4();
  v5 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  sub_100003CB4();
  sub_10001930C(v2, v2[3]);
  sub_1007A8CC8();
  sub_100031F4C();
  sub_1007A8D1C();
  sub_10001CCD4();
  sub_10001CCD4();
  sub_10001CCD4();
  sub_10001CCD4();
  sub_10001CCD4();
  sub_10001CCD4();
  sub_10001CCD4();
  (*(v5 + 8))(v0, v3);
  sub_100006F14(v2);
  sub_10000C8F4();
}

uint64_t sub_1007A58D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1702125924 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 6645601 && a2 == 0xE300000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000014 && 0x8000000100ADE550 == a2)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1007A5A2C(char a1)
{
  result = 0x6574617473;
  switch(a1)
  {
    case 1:
      result = 1702125924;
      break;
    case 2:
      result = 6645601;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1007A5AA0()
{
  sub_10022C350(&qword_100CD7A20);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v1);
  sub_100014AE4();
  sub_1007A8774();
  sub_100019CD4();
  sub_100018594();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    sub_1000520FC();
    sub_100018594();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100018594();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_1007A881C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v2 = sub_1000231E0();
  return v3(v2);
}

void sub_1007A5C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000E8AC();
  v12 = v11;
  v14 = v13;
  sub_10022C350(&qword_100CD7A08);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v15);
  sub_10001930C(v12, v12[3]);
  sub_1007A8774();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v10)
  {
    sub_100006F14(v12);
  }

  else
  {
    sub_10002CA8C();
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    v18 = v17;
    v26 = v16;
    sub_10002CA8C();
    *&v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(&v25 + 1) = v19;
    LOBYTE(v30[0]) = 2;
    sub_10002CA8C();
    v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(a10) = v20 & 1;
    v34 = 3;
    sub_1007A87C8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v21 = sub_100013C38();
    v22(v21);
    *&v27 = v26;
    *(&v27 + 1) = v18;
    v28 = v25;
    *&v29 = v24;
    *(&v29 + 1) = a10;
    sub_1007A7FE8(&v27, v30);
    sub_100006F14(v12);
    v30[0] = v26;
    v30[1] = v18;
    v31 = v25;
    v32 = v24;
    v33 = a10;
    sub_1007A7EB8(v30);
    v23 = v28;
    *v14 = v27;
    v14[1] = v23;
    v14[2] = v29;
  }

  sub_10000C8F4();
}

uint64_t sub_1007A5F00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7461446C61636F6CLL && a2 == 0xE900000000000065;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x616E6964726F6F63 && a2 == 0xEA00000000006574;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4472656874616577 && a2 == 0xEB00000000617461;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001CLL && 0x8000000100ADE460 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD00000000000001ALL && 0x8000000100ADE480 == a2)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1007A614C(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x7461446C61636F6CLL;
      break;
    case 3:
      result = 0x616E6964726F6F63;
      break;
    case 4:
      result = 0x4472656874616577;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1007A6234()
{
  sub_100037D3C();
  sub_10022C350(&qword_100CD7958);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100014AE4();
  sub_1007A7E64();
  sub_100019CD4();
  LOBYTE(v11) = 0;
  sub_100003CDC();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    sub_100003CDC();
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 2;
    sub_100003CDC();
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = v1[3];
    v10[0] = 3;
    type metadata accessor for CLLocationCoordinate2D(0);
    sub_1007A7FA4(&qword_100CD3040);
    sub_100003CDC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v3 = v1[5];
    v14[0] = v1[4];
    v4 = v1[4];
    v5 = v1[5];
    v6 = v1[6];
    v14[1] = v3;
    v14[2] = v6;
    v11 = v4;
    v12 = v5;
    v13 = v1[6];
    v10[63] = 4;
    sub_1007A7FE8(v14, v10);
    sub_1007A8020();
    sub_100005670();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100011800();
    sub_100005670();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100005670();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v7 = sub_1000231E0();
  return v8(v7);
}

void *sub_1007A6480@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v44 = sub_10022C350(&qword_100CD7940);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v5);
  sub_10001930C(a1, a1[3]);
  sub_1007A7E64();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  sub_1000699F0();
  v6 = KeyedDecodingContainer.decode(_:forKey:)();
  v8 = v7;
  sub_1000699F0();
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v10;
  LOBYTE(v23) = 2;
  sub_1000699F0();
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = v11;
  type metadata accessor for CLLocationCoordinate2D(0);
  v22[0] = 3;
  sub_1007A7FA4(&qword_100CD3020);
  sub_100020B58();
  sub_1000699F0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v23;
  v13 = v24;
  v37 = 4;
  sub_1007A7EE8();
  sub_1000699F0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v41 = v38;
  v42 = v39;
  v43 = v40;
  LOBYTE(v23) = 5;
  sub_1000699F0();
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v36 = 6;
  sub_1000699F0();
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 &= 1u;
  v15 = sub_100028B1C();
  v16(v15);
  LODWORD(v44) = v14 & 1;
  *v22 = v6;
  *&v22[8] = v8;
  *&v22[16] = v9;
  *&v22[24] = v21;
  *&v22[32] = v19;
  *&v22[40] = v20;
  *&v22[48] = v12;
  *&v22[56] = v13;
  *&v22[64] = v41;
  *&v22[80] = v42;
  *&v22[96] = v43;
  v22[112] = v18;
  v22[113] = v14 & 1;
  sub_1007A7F3C(v22, &v23);
  sub_100006F14(a1);
  v23 = v6;
  v24 = v8;
  v25 = v9;
  v26 = v21;
  v27 = v19;
  v28 = v20;
  v29 = v12;
  v30 = v13;
  v31 = v41;
  v32 = v42;
  v33 = v43;
  v34 = v18;
  v35 = v44;
  sub_1007A7F74(&v23);
  return memcpy(a2, v22, 0x72uLL);
}

uint64_t sub_1007A68DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
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

uint64_t sub_1007A69A4(char a1)
{
  if (a1)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 1701667182;
  }
}

void sub_1007A69D4()
{
  sub_10000E8AC();
  v3 = v2;
  v4 = sub_10022C350(&qword_100CD7978);
  sub_1000037C4();
  v6 = v5;
  sub_100003828();
  __chkstk_darwin(v7);
  sub_100003CB4();
  sub_10001930C(v3, v3[3]);
  sub_1007A8074();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    sub_1000520FC();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v6 + 8))(v1, v4);
  sub_10000C8F4();
}

void sub_1007A6B18()
{
  sub_10000E8AC();
  v2 = v1;
  sub_10022C350(&qword_100CD7968);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v3);
  sub_100003CB4();
  sub_10001930C(v2, v2[3]);
  sub_1007A8074();
  sub_100031F4C();
  if (!v0)
  {
    KeyedDecodingContainer.decode(_:forKey:)();
    KeyedDecodingContainer.decode(_:forKey:)();
    v4 = sub_1000317FC();
    v5(v4);
  }

  sub_100006F14(v2);
  sub_10000C8F4();
}

uint64_t sub_1007A6CA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE900000000000073;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x736E6F6973726576 && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1007A6E08(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      result = 0x6D6E6F7269766E65;
      break;
    case 2:
      result = 0x6E6F697461636F6CLL;
      break;
    case 3:
      result = 0x736E6F6973726576;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1007A6E90()
{
  sub_10000E8AC();
  sub_100037D3C();
  sub_10022C350(&qword_100CD78F8);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100014AE4();
  sub_1007A7C44();
  sub_100019CD4();
  LOBYTE(v9) = 0;
  sub_100003CDC();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    v3 = v1[2];
    v12[0] = v1[1];
    v12[1] = v3;
    v5 = v1[1];
    v4 = v1[2];
    *v13 = v1[3];
    *&v13[9] = *(v1 + 57);
    v9 = v5;
    v10 = v4;
    *v11 = v1[3];
    *&v11[9] = *(v1 + 57);
    v8[63] = 1;
    sub_1007A7C98(v12, v8);
    sub_1007A7CD0();
    sub_100005670();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100017DA0();
    sub_10022C350(&qword_100CD7910);
    sub_1007A811C(&qword_100CD7918, sub_1007A7D54);
    sub_100003CDC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10022C350(&qword_100CD7928);
    sub_1007A7DA8(&qword_100CD7930, sub_1007A7E10);
    sub_100003CDC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v6 = sub_1000231E0();
  v7(v6);
  sub_10000C8F4();
}

void sub_1007A710C()
{
  sub_10000E8AC();
  v2 = v1;
  v4 = v3;
  sub_10022C350(&qword_100CD7980);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v5);
  sub_10001930C(v2, v2[3]);
  sub_1007A7C44();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100006F14(v2);
  }

  else
  {
    v14 = v4;
    LOBYTE(v16[0]) = 0;
    v6 = KeyedDecodingContainer.decode(_:forKey:)();
    v8 = v7;
    v13 = v6;
    v24 = 1;
    sub_1007A80C8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v28 = v25;
    v29 = v26;
    *v30 = *v27;
    *&v30[9] = *&v27[9];
    sub_10022C350(&qword_100CD7910);
    LOBYTE(v15[0]) = 2;
    sub_1007A811C(&qword_100CD7990, sub_1007A8184);
    sub_100020B58();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v16[0];
    sub_10022C350(&qword_100CD7928);
    v22 = 3;
    sub_1007A7DA8(&qword_100CD79A0, sub_1007A81D8);
    sub_100020B58();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = sub_10004EA98();
    v11(v10);
    v12 = v23;
    *&v15[0] = v13;
    *(&v15[0] + 1) = v8;
    v15[1] = v28;
    v15[2] = v29;
    v15[3] = *v30;
    *(&v15[3] + 9) = *&v30[9];
    *&v15[5] = v9;
    *(&v15[5] + 1) = v23;
    sub_1007A822C(v15, v16);
    sub_100006F14(v2);
    v16[0] = v13;
    v16[1] = v8;
    v17 = v28;
    v18 = v29;
    *v19 = *v30;
    *&v19[9] = *&v30[9];
    v20 = v9;
    v21 = v12;
    sub_100439C18(v16);
    memcpy(v14, v15, 0x60uLL);
  }

  sub_10000C8F4();
}

uint64_t sub_1007A74CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007A48D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007A74F4(uint64_t a1)
{
  v2 = sub_1007A8720();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007A7530(uint64_t a1)
{
  v2 = sub_1007A8720();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1007A756C@<D0>(_OWORD *a1@<X8>)
{
  sub_1007A4D18();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    a1[2] = *v6;
    result = *&v6[9];
    *(a1 + 41) = *&v6[9];
  }

  return result;
}

unint64_t sub_1007A75F4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1007A502C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1007A7624@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1007A5078(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1007A7708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007A50E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007A7730(uint64_t a1)
{
  v2 = sub_1007A8CC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007A776C(uint64_t a1)
{
  v2 = sub_1007A8CC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1007A77A8(uint64_t a1@<X8>)
{
  sub_1007A566C();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 2) = BYTE2(v3);
    *(a1 + 3) = BYTE3(v3);
    *(a1 + 4) = BYTE4(v3);
    *(a1 + 5) = BYTE5(v3);
    *(a1 + 6) = BYTE6(v3);
  }
}

uint64_t sub_1007A7838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007A58D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007A7860(uint64_t a1)
{
  v2 = sub_1007A8774();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007A789C(uint64_t a1)
{
  v2 = sub_1007A8774();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1007A78D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  sub_1007A5C20(a1, a2, a3, a4, a5, a6, a7, a8, v12, v14);
  if (!v9)
  {
    *a9 = v13;
    a9[1] = v15;
    result = *&v16;
    a9[2] = v16;
  }

  return result;
}

uint64_t sub_1007A793C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007A5F00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007A7964(uint64_t a1)
{
  v2 = sub_1007A7E64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007A79A0(uint64_t a1)
{
  v2 = sub_1007A7E64();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1007A79DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1007A6480(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x72uLL);
  }

  return result;
}

uint64_t sub_1007A7A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007A68DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007A7A70(uint64_t a1)
{
  v2 = sub_1007A8074();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007A7AAC(uint64_t a1)
{
  v2 = sub_1007A8074();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1007A7AE8(void *a1@<X8>)
{
  sub_1007A6B18();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

uint64_t sub_1007A7B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007A6CA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007A7B68(uint64_t a1)
{
  v2 = sub_1007A7C44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007A7BA4(uint64_t a1)
{
  v2 = sub_1007A7C44();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1007A7BE0(void *a1@<X8>)
{
  sub_1007A710C();
  if (!v1)
  {
    memcpy(a1, v3, 0x60uLL);
  }
}

unint64_t sub_1007A7C44()
{
  result = qword_100CD7900;
  if (!qword_100CD7900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7900);
  }

  return result;
}

unint64_t sub_1007A7CD0()
{
  result = qword_100CD7908;
  if (!qword_100CD7908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7908);
  }

  return result;
}

unint64_t sub_1007A7D54()
{
  result = qword_100CD7920;
  if (!qword_100CD7920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7920);
  }

  return result;
}

uint64_t sub_1007A7DA8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(&qword_100CD7928);
    a2();
    result = sub_1000300AC();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1007A7E10()
{
  result = qword_100CD7938;
  if (!qword_100CD7938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7938);
  }

  return result;
}

unint64_t sub_1007A7E64()
{
  result = qword_100CD7948;
  if (!qword_100CD7948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7948);
  }

  return result;
}

unint64_t sub_1007A7EE8()
{
  result = qword_100CD7950;
  if (!qword_100CD7950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7950);
  }

  return result;
}

uint64_t sub_1007A7FA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CLLocationCoordinate2D(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1007A8020()
{
  result = qword_100CD7960;
  if (!qword_100CD7960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7960);
  }

  return result;
}

unint64_t sub_1007A8074()
{
  result = qword_100CD7970;
  if (!qword_100CD7970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7970);
  }

  return result;
}

unint64_t sub_1007A80C8()
{
  result = qword_100CD7988;
  if (!qword_100CD7988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7988);
  }

  return result;
}

uint64_t sub_1007A811C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(&qword_100CD7910);
    a2();
    result = sub_1000300AC();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1007A8184()
{
  result = qword_100CD7998;
  if (!qword_100CD7998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7998);
  }

  return result;
}

unint64_t sub_1007A81D8()
{
  result = qword_100CD79A8;
  if (!qword_100CD79A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD79A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DiagnosticSummary.BundleVersion.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1007A836C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1007A83AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1007A840C()
{
  result = qword_100CD79B0;
  if (!qword_100CD79B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD79B0);
  }

  return result;
}

unint64_t sub_1007A8464()
{
  result = qword_100CD79B8;
  if (!qword_100CD79B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD79B8);
  }

  return result;
}

unint64_t sub_1007A84BC()
{
  result = qword_100CD79C0;
  if (!qword_100CD79C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD79C0);
  }

  return result;
}

unint64_t sub_1007A8514()
{
  result = qword_100CD79C8;
  if (!qword_100CD79C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD79C8);
  }

  return result;
}

unint64_t sub_1007A856C()
{
  result = qword_100CD79D0;
  if (!qword_100CD79D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD79D0);
  }

  return result;
}

unint64_t sub_1007A85C4()
{
  result = qword_100CD79D8;
  if (!qword_100CD79D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD79D8);
  }

  return result;
}

unint64_t sub_1007A861C()
{
  result = qword_100CD79E0;
  if (!qword_100CD79E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD79E0);
  }

  return result;
}

unint64_t sub_1007A8674()
{
  result = qword_100CD79E8;
  if (!qword_100CD79E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD79E8);
  }

  return result;
}

unint64_t sub_1007A86CC()
{
  result = qword_100CD79F0;
  if (!qword_100CD79F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD79F0);
  }

  return result;
}

unint64_t sub_1007A8720()
{
  result = qword_100CD7A00;
  if (!qword_100CD7A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7A00);
  }

  return result;
}

unint64_t sub_1007A8774()
{
  result = qword_100CD7A10;
  if (!qword_100CD7A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7A10);
  }

  return result;
}

unint64_t sub_1007A87C8()
{
  result = qword_100CD7A18;
  if (!qword_100CD7A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7A18);
  }

  return result;
}

unint64_t sub_1007A881C()
{
  result = qword_100CD7A28;
  if (!qword_100CD7A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7A28);
  }

  return result;
}

_BYTE *sub_1007A8870(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DiagnosticSummary.Environment.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1007A8A28(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[7])
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 3;
      v2 = v3 - 3;
      if (!v4)
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

uint64_t sub_1007A8A64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1007A8ABC()
{
  result = qword_100CD7A38;
  if (!qword_100CD7A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7A38);
  }

  return result;
}

unint64_t sub_1007A8B14()
{
  result = qword_100CD7A40;
  if (!qword_100CD7A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7A40);
  }

  return result;
}

unint64_t sub_1007A8B6C()
{
  result = qword_100CD7A48;
  if (!qword_100CD7A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7A48);
  }

  return result;
}

unint64_t sub_1007A8BC4()
{
  result = qword_100CD7A50;
  if (!qword_100CD7A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7A50);
  }

  return result;
}

unint64_t sub_1007A8C1C()
{
  result = qword_100CD7A58;
  if (!qword_100CD7A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7A58);
  }

  return result;
}

unint64_t sub_1007A8C74()
{
  result = qword_100CD7A60;
  if (!qword_100CD7A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7A60);
  }

  return result;
}

unint64_t sub_1007A8CC8()
{
  result = qword_100CD7A70;
  if (!qword_100CD7A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7A70);
  }

  return result;
}

unint64_t sub_1007A8D1C()
{
  result = qword_100CD7A78;
  if (!qword_100CD7A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7A78);
  }

  return result;
}

unint64_t sub_1007A8D70()
{
  result = qword_100CD7A88;
  if (!qword_100CD7A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7A88);
  }

  return result;
}

_BYTE *sub_1007A8DC4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1007A8EA0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1007A8F7C()
{
  result = qword_100CD7A90;
  if (!qword_100CD7A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7A90);
  }

  return result;
}

unint64_t sub_1007A8FD4()
{
  result = qword_100CD7A98;
  if (!qword_100CD7A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7A98);
  }

  return result;
}

unint64_t sub_1007A902C()
{
  result = qword_100CD7AA0;
  if (!qword_100CD7AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7AA0);
  }

  return result;
}

unint64_t sub_1007A9084()
{
  result = qword_100CD7AA8;
  if (!qword_100CD7AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7AA8);
  }

  return result;
}

unint64_t sub_1007A90D8()
{
  result = qword_100CD7AB0;
  if (!qword_100CD7AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7AB0);
  }

  return result;
}

uint64_t sub_1007A918C()
{
  type metadata accessor for VisibilityStateHolder();
  sub_10001F794();
  sub_10006748C(v0, v1);
  sub_10001CCF8();
  sub_100010AE8();
}

uint64_t sub_1007A9280()
{

  sub_10003BCD8();

  return swift_deallocObject();
}

uint64_t sub_1007A92EC()
{
  sub_100006F14(v0 + 16);

  swift_unknownObjectRelease();
  sub_100006F14(v0 + 88);

  sub_100006F14(v0 + 136);
  return v0;
}

uint64_t sub_1007A933C()
{
  sub_1007A92EC();

  return swift_deallocClassInstance();
}

void *sub_1007A939C@<X0>(uint64_t a1@<X8>)
{
  v2 = static VerticalAlignment.center.getter();
  sub_1007A9418(__src);
  memcpy(&v4[7], __src, 0x50uLL);
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  result = memcpy((a1 + 17), v4, 0x57uLL);
  *(a1 + 104) = 1;
  return result;
}

uint64_t sub_1007A9418@<X0>(uint64_t a1@<X8>)
{
  static UnitPoint.trailing.getter();
  v3 = v2;
  v5 = v4;
  static UnitPoint.leading.getter();
  v7 = v6;
  v9 = v8;
  static UnitPoint.leading.getter();
  v11 = v10;
  v13 = v12;
  result = static UnitPoint.trailing.getter();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v9;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v11;
  *(a1 + 56) = v13;
  *(a1 + 64) = v15;
  *(a1 + 72) = v16;
  return result;
}

unint64_t sub_1007A94B4()
{
  result = qword_100CD7C88;
  if (!qword_100CD7C88)
  {
    sub_10022E824(&qword_100CD7C90);
    sub_100006F64(&qword_100CD7C98, &qword_100CD7CA0);
    sub_1006F40E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7C88);
  }

  return result;
}

uint64_t sub_1007A9588@<X0>(uint64_t a1@<X8>)
{
  sub_10022C350(&qword_100CA47E8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100A2D320;
  *(v2 + 32) = static Color.clear.getter();
  *(v2 + 40) = static Color.white.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v7[6] = v11;
  *&v7[22] = v12;
  *&v7[38] = v13;
  v3 = *(sub_10022C350(&qword_100CD7CA8) + 36);
  v4 = enum case for BlendMode.destinationOut(_:);
  v5 = type metadata accessor for BlendMode();
  (*(*(v5 - 8) + 104))(a1 + v3, v4, v5);
  *a1 = v8;
  *(a1 + 24) = v10;
  *(a1 + 8) = v9;
  *(a1 + 40) = 0;
  *(a1 + 42) = *v7;
  *(a1 + 58) = *&v7[16];
  *(a1 + 74) = *&v7[32];
  *(a1 + 88) = *(&v13 + 1);
  result = sub_10022C350(&qword_100CD7CB0);
  *(a1 + *(result + 36)) = 0;
  return result;
}

unint64_t sub_1007A9730()
{
  result = qword_100CD7CB8;
  if (!qword_100CD7CB8)
  {
    sub_10022E824(&qword_100CD7CB0);
    sub_1007A97BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7CB8);
  }

  return result;
}

unint64_t sub_1007A97BC()
{
  result = qword_100CD7CC0;
  if (!qword_100CD7CC0)
  {
    sub_10022E824(&qword_100CD7CA8);
    sub_1007A9848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7CC0);
  }

  return result;
}

unint64_t sub_1007A9848()
{
  result = qword_100CD7CC8;
  if (!qword_100CD7CC8)
  {
    sub_10022E824(&qword_100CD7CD0);
    sub_100006F64(&qword_100CD7CD8, &qword_100CD7CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7CC8);
  }

  return result;
}

void sub_1007A9900()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() sharedApplication];
  v14 = UIApplication.maybeWindow.getter();

  sub_1007A9C3C();
  v5 = sub_1007A9B54(0xD00000000000001CLL, 0x8000000100AD53D0);
  if (v5)
  {
    if (v14)
    {
      v13 = v5;
      v6 = [v14 rootViewController];
      if (v6)
      {
        v7 = v6;
        v8 = sub_1007A9BC4(v6);
        if (v8)
        {
          v9 = v8;
          [v13 setPresentingViewController:v8];
          [v13 setDarkMode:1];
          [v13 present];
        }

        else
        {
        }
      }

      v5 = v14;
    }
  }

  else
  {
    static Logger.privacy.getter();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to find privacy bundle for Weather", v12, 2u);
    }

    (*(v1 + 8))(v3, v0);
  }
}

id sub_1007A9B54(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() presenterForPrivacySplashWithIdentifier:v2];

  return v3;
}

void *sub_1007A9BC4(void *a1)
{
  v1 = a1;
  v2 = [a1 presentedViewController];
  if (v2)
  {
    v3 = v2;
    v1 = sub_1007A9BC4();
  }

  else
  {
    v4 = v1;
  }

  return v1;
}

unint64_t sub_1007A9C3C()
{
  result = qword_100CD7D80;
  if (!qword_100CD7D80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CD7D80);
  }

  return result;
}

NSObject *sub_1007A9C90(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA53F8);
  sub_1000037C4();
  v42 = v3;
  __chkstk_darwin(v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (&v40 - v8);
  v10 = sub_10022C350(&qword_100CAC1B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v40 - v14;
  v16 = type metadata accessor for ConditionUnits();
  sub_1000037C4();
  v18 = v17;
  __chkstk_darwin(v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PastDataComparisonTextContext();
  v23 = *(v18 + 16);
  v24 = a1 + v22[9];
  v43 = v21;
  v23(v21, v24, v16);
  sub_1004075F8(a1 + v22[12], v15);
  v25 = type metadata accessor for ExtremaResult();
  if (sub_100024D10(v15, 1, v25) == 1)
  {
    goto LABEL_4;
  }

  v40 = v18;
  v41 = v16;
  ExtremaResult.maxValue.getter();
  v26 = *(*(v25 - 8) + 8);
  v26(v15, v25);
  sub_1004075F8(a1 + v22[10], v12);
  if (sub_100024D10(v12, 1, v25) == 1)
  {
    v15 = v12;
    v18 = v40;
    v16 = v41;
LABEL_4:
    sub_100407668(v15);
    if (qword_100CA2700 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000703C(v27, qword_100D90B68);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Missing extrema values for building temperature comparison text", v30, 2u);
    }

    LocalizedStringKey.init(stringLiteral:)();
    sub_10001C138();
    goto LABEL_9;
  }

  ExtremaResult.maxValue.getter();
  v26(v12, v25);
  ConditionUnits.temperature.getter();
  sub_10000F868();
  Measurement.init(value:unit:)();
  v32 = objc_opt_self();
  v33 = [v32 fahrenheit];
  Measurement<>.converted(to:)();

  v34 = *(v42 + 8);
  v34(v6, v2);
  Measurement.value.getter();
  v36 = v35;
  v34(v9, v2);
  ConditionUnits.temperature.getter();
  Measurement.init(value:unit:)();
  v37 = [v32 fahrenheit];
  Measurement<>.converted(to:)();

  v34(v6, v2);
  v28 = v9;
  Measurement.value.getter();
  v39 = v38;
  v34(v9, v2);
  if (round(v39) - round(v36) >= 5.0)
  {
    LocalizedStringKey.init(stringLiteral:)();
    sub_10001C138();
    Text.init(_:tableName:bundle:comment:)();
    sub_10001CD1C();
    v18 = v40;
    v16 = v41;
    goto LABEL_10;
  }

  v18 = v40;
  v16 = v41;
  sub_100005AA8();
  sub_10001C138();
LABEL_9:
  Text.init(_:tableName:bundle:comment:)();
  sub_10001CD1C();
LABEL_10:
  (*(v18 + 8))(v43, v16);
  return v28;
}

uint64_t sub_1007AA26C(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if (qword_100CA2670 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (qword_100CA2680 != -1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (qword_100CA2678 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      if (qword_100CA2668 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (qword_100CA2660 != -1)
    {
LABEL_18:
      swift_once();
    }
  }

LABEL_15:
}

uint64_t sub_1007AA3D8(char a1, char a2, uint64_t a3)
{
  v79 = type metadata accessor for TipPriorityQueue.GridEntry();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v8);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v9);
  v76 = &v72 - v10;
  v11 = sub_10022C350(&qword_100CA5008);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  v14 = &v72 - v13;
  v15 = type metadata accessor for LocationComponentViewModel();
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v18);
  v20 = &v72 - v19;
  __chkstk_darwin(v21);
  sub_100013628();
  __chkstk_darwin(v22);
  v24 = &v72 - v23;
  __chkstk_darwin(v25);
  v27 = &v72 - v26;
  v28 = sub_10022C350(&qword_100CAC7F8);
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v31);
  v33 = &v72 - v32;
  __chkstk_darwin(v34);
  v36 = &v72 - v35;
  v37 = sub_1007AA26C(a1, a2);
  v38 = OBJC_IVAR____TtCV7Weather17MinorAlertContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a3 + v38, v14, &qword_100CA5008);
  v39 = type metadata accessor for LocationComponentContainerViewModel();
  if (sub_100024D10(v14, 1, v39) == 1)
  {
    sub_1000180EC(v14, &qword_100CA5008);
  }

  else
  {
    sub_10001BD64();
    sub_10031694C(&v14[v40], v24, v41);
    sub_1003169AC(v14, type metadata accessor for LocationComponentContainerViewModel);
    sub_100011474();
    sub_1001B6FB0(v24, v27, v42);
    sub_100566A5C(v37, v81);
    if ((v82 & 1) == 0)
    {
      sub_100011474();
      sub_1001B6FB0(v27, v33, v45);
      v43 = 0;
      v44 = v79;
      v46 = &v33[*(v79 + 20)];
      v47 = v81[1];
      *v46 = v81[0];
      *(v46 + 1) = v47;
      goto LABEL_7;
    }

    sub_1003169AC(v27, type metadata accessor for LocationComponentViewModel);
  }

  v43 = 1;
  v44 = v79;
LABEL_7:
  sub_10001B350(v33, v43, 1, v44);
  sub_1003168DC(v33, v36);
  sub_10031694C(a3 + *(v39 + 20) + OBJC_IVAR____TtCV7Weather17MinorAlertContent8_Storage_airQuality, v3, type metadata accessor for LocationComponentViewModel);
  sub_100566A40(v37, v83);
  sub_100924AFC(v3, v83, v80);
  sub_10031694C(*(a3 + 16) + *(v39 + 20) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v20, type metadata accessor for LocationComponentViewModel);
  sub_100566A94(v37, v84);
  v48 = v74;
  if (v85 & 1) != 0 || (sub_100011474(), v49 = v76, sub_1001B6FB0(v20, v76, v50), v51 = (v49 + *(v44 + 20)), v52 = v84[1], *v51 = v84[0], v51[1] = v52, sub_100035AD0(v36, v48, &qword_100CAC7F8), sub_10001BD64(), v55 = v73, sub_10031694C(v53 + v54, v73, v56), sub_100566AB0(v37, v86), v57 = v77, (v87))
  {
    sub_100003E3C();
  }

  else
  {
    sub_100011474();
    sub_1001B6FB0(v55, v57, v58);
    v59 = (v57 + *(v44 + 20));
    v60 = v86[1];
    *v59 = v86[0];
    v59[1] = v60;
    sub_10001BD64();
    v63 = v75;
    sub_10031694C(v61 + v62, v75, v64);
    sub_100566AE8(v37, v88);
    if ((v89 & 1) == 0)
    {

      sub_100011474();
      v65 = v63;
      v66 = v78;
      sub_1001B6FB0(v65, v78, v67);
      v68 = (v66 + *(v44 + 20));
      v69 = v88[1];
      *v68 = v88[0];
      v68[1] = v69;
      v70 = sub_100924C14(v80, v49, v48, v57, v66);
      sub_1000180EC(v36, &qword_100CAC7F8);
      return v70;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1007AAA5C(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = v127 - v4;
  v6 = type metadata accessor for LocationComponentContainerViewModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV7Weather17MinorAlertContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a1 + v10, v5, &qword_100CA5008);
  v11 = sub_100024D10(v5, 1, v6);
  v131 = a1;
  if (v11 == 1)
  {
    sub_1000180EC(v5, &qword_100CA5008);
    sub_10022C350(&qword_100CAC7E8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A41BA0;
    sub_10022C350(&qword_100CAC7F0);
    v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v14 = *(v7 + 72);
    v15 = *(v7 + 80);
    v16 = swift_allocObject();
    sub_10001361C(v16, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(v17 + v18, v16 + v13, v19);
    *(v12 + 32) = sub_1001B38A0(v16);
    *(v12 + 40) = v20;
    *(v12 + 48) = v21;
    v22 = sub_100013600();
    sub_100003E18(v22);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v22 + v13, v7);
    *(v12 + 56) = sub_1001B38A0(v22);
    *(v12 + 64) = v23;
    *(v12 + 72) = v24;
    v25 = sub_100013600();
    sub_100003E18(v25);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather17MinorAlertContent8_Storage_airQuality, v25 + v13, v7);
    *(v12 + 80) = sub_1001B38A0(v25);
    *(v12 + 88) = v26;
    *(v12 + 96) = v27;
    v28 = sub_100013600();
    sub_100003E18(v28);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather17MinorAlertContent8_Storage_severeAlert, v28 + v13, v7);
    *(v12 + 104) = sub_1001B38A0(v28);
    *(v12 + 112) = v29;
    *(v12 + 120) = v30;
    v128 = v13 + 2 * v14;
    v129 = v14;
    v31 = v14;
    v32 = v15;
    v33 = swift_allocObject();
    v34 = sub_10001361C(v33, xmmword_100A2D320) + v13;
    v35 = a1;
    v36 = *(a1 + 16);
    v37 = v35;
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    sub_10031694C(v36 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v34[v31], v7);
    *(v12 + 128) = sub_1001B38A0(v33);
    *(v12 + 136) = v38;
    *(v12 + 144) = v39;
    v130 = v32;
    v40 = swift_allocObject();
    sub_1000056EC(v40);
    v42 = v41 + v13;
    v43 = *(v37 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v43 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, &v129[v42], v7);
    *(v12 + 152) = sub_1001B38A0(v33);
    *(v12 + 160) = v44;
    *(v12 + 168) = v45;
    v46 = swift_allocObject();
    sub_1000056EC(v46);
    v48 = v47 + v13;
    v49 = v131;
    v50 = *(v131 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v51 = v129;
    sub_10031694C(v50 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, &v129[v48], v7);
    *(v12 + 176) = sub_1001B38A0(v33);
    *(v12 + 184) = v52;
    *(v12 + 192) = v53;
    v54 = sub_10000C998();
    sub_1000056EC(v54);
    v56 = v55 + v13;
    v57 = *(v49 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    v58 = v56 + v51;
    v59 = v51;
    sub_10031694C(v57 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v58, v7);
    *(v12 + 200) = sub_1001B38A0(v33);
    *(v12 + 208) = v60;
    *(v12 + 216) = v61;
    v62 = sub_10000C998();
    sub_100003E18(v62);
    v64 = v63 + v13;
    v65 = *(v49 + 16);
    sub_10031694C(v65 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v63 + v13, v7);
    sub_10031694C(v65 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v64 + v59, v7);
    *(v12 + 224) = sub_1001B38A0(v62);
    *(v12 + 232) = v66;
    *(v12 + 240) = v67;
  }

  else
  {
    sub_1001B6FB0(v5, v9, type metadata accessor for LocationComponentContainerViewModel);
    sub_10022C350(&qword_100CAC7E8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A30470;
    v68 = sub_10022C350(&qword_100CAC7F0);
    v69 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v70 = *(v7 + 72);
    v71 = *(v7 + 80);
    v72 = v68;
    v73 = swift_allocObject();
    sub_10001361C(v73, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(v74 + v75, v73 + v69, v76);
    *(v12 + 32) = sub_1001B38A0(v73);
    *(v12 + 40) = v77;
    *(v12 + 48) = v78;
    sub_1000167B0();
    v79 = swift_allocObject();
    sub_1000056EC(v79);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v73 + v69, v7);
    *(v12 + 56) = sub_1001B38A0(v73);
    *(v12 + 64) = v80;
    *(v12 + 72) = v81;
    sub_1000167B0();
    v82 = swift_allocObject();
    sub_1000056EC(v82);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather17MinorAlertContent8_Storage_airQuality, v73 + v69, v7);
    *(v12 + 80) = sub_1001B38A0(v73);
    *(v12 + 88) = v83;
    *(v12 + 96) = v84;
    sub_1000167B0();
    v85 = swift_allocObject();
    sub_1000056EC(v85);
    sub_10031694C(v9, v86 + v69, v7);
    *(v12 + 104) = sub_1001B38A0(v73);
    *(v12 + 112) = v87;
    *(v12 + 120) = v88;
    v130 = v71;
    v89 = swift_allocObject();
    sub_1000056EC(v89);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather17MinorAlertContent8_Storage_severeAlert, v73 + v69, v7);
    *(v12 + 128) = sub_1001B38A0(v73);
    *(v12 + 136) = v90;
    *(v12 + 144) = v91;
    v92 = v69 + 2 * v70;
    v93 = v70;
    sub_1000167B0();
    v94 = swift_allocObject();
    v95 = sub_10001361C(v94, xmmword_100A2D320);
    v129 = v9;
    v96 = v95 + v69;
    v97 = *(a1 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    v127[0] = v93;
    sub_10031694C(v97 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v96[v93], v7);
    *(v12 + 152) = sub_1001B38A0(v94);
    *(v12 + 160) = v98;
    *(v12 + 168) = v99;
    v127[1] = v92;
    v100 = swift_allocObject();
    sub_100003E18(v100);
    v102 = v101 + v69;
    v103 = v131;
    v104 = *(v131 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v104 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v102 + v93, v7);
    *(v12 + 176) = sub_1001B38A0(v100);
    *(v12 + 184) = v105;
    *(v12 + 192) = v106;
    sub_1000167B0();
    v128 = v72;
    v107 = swift_allocObject();
    sub_100003E18(v107);
    v109 = v108 + v69;
    v110 = *(v103 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v111 = v127[0];
    sub_10031694C(v110 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v109 + v127[0], v7);
    *(v12 + 200) = sub_1001B38A0(v107);
    *(v12 + 208) = v112;
    *(v12 + 216) = v113;
    sub_1000167B0();
    v114 = swift_allocObject();
    sub_100003E18(v114);
    v116 = v115 + v69;
    v117 = *(v103 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    sub_10031694C(v117 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v116 + v111, v7);
    *(v12 + 224) = sub_1001B38A0(v114);
    *(v12 + 232) = v118;
    *(v12 + 240) = v119;
    v120 = swift_allocObject();
    sub_100003E18(v120);
    v122 = v121 + v69;
    v123 = *(v131 + 16);
    sub_10031694C(v123 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v121 + v69, v7);
    sub_10031694C(v123 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v122 + v111, v7);
    *(v12 + 248) = sub_1001B38A0(v120);
    *(v12 + 256) = v124;
    *(v12 + 264) = v125;
    sub_1003169AC(v129, v7);
  }

  return v12;
}

void sub_1007AB300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22[0] = xmmword_100A3BB70;
  v22[1] = xmmword_100A3BC60;
  v21[0] = xmmword_100A2C3F0;
  v21[1] = xmmword_100A3BBF0;
  v23 = v22;
  v24 = v21;
  v20[0] = xmmword_100A3BB70;
  v20[1] = xmmword_100A3F970;
  v19[0] = xmmword_100A3BBB0;
  v19[1] = xmmword_100A3BC00;
  v25 = v20;
  v26 = v19;
  v18[0] = xmmword_100A3BB70;
  v18[1] = xmmword_100A3BBB0;
  v17[0] = xmmword_100A2C3F0;
  v17[1] = xmmword_100A3BC00;
  v27 = v18;
  v28 = v17;
  v16[0] = xmmword_100A3BB70;
  v16[1] = xmmword_100A4C530;
  v15[0] = xmmword_100A3BBB0;
  v15[1] = xmmword_100A3BBF0;
  v29 = v16;
  v30 = v15;
  v14[0] = xmmword_100A2C3F0;
  v14[1] = xmmword_100A3BBC0;
  v13[0] = xmmword_100A2C3F0;
  v13[1] = xmmword_100A3BC10;
  v31 = v14;
  v32 = v13;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3BC30;
  v11[0] = xmmword_100A2C3F0;
  v11[1] = xmmword_100A3BC20;
  v33 = v12;
  v34 = v11;
  v10[0] = xmmword_100A3BBB0;
  v10[1] = xmmword_100A3BC20;
  v9[0] = xmmword_100A3BBB0;
  v9[1] = xmmword_100A3BBC0;
  v35 = v10;
  v36 = v9;
  sub_100013794(a1, a2, a3, a4, a5, a6, a7, a8, 0);
  qword_100D909D8 = v8;
}

void sub_1007AB420()
{
  v14[0] = xmmword_100A3BB70;
  v14[1] = xmmword_100A3BC60;
  v13[0] = xmmword_100A2C3F0;
  v13[1] = xmmword_100A3BC00;
  v15 = v14;
  v16 = v13;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3F970;
  v11[0] = xmmword_100A3BBB0;
  v11[1] = xmmword_100A3BC20;
  v17 = v12;
  v18 = v11;
  v10[0] = xmmword_100A3BB70;
  v10[1] = xmmword_100A3BBB0;
  v9[0] = xmmword_100A2C3F0;
  v9[1] = xmmword_100A3BC20;
  v19 = v10;
  v20 = v9;
  v8[0] = xmmword_100A3BBB0;
  v8[1] = xmmword_100A3BC00;
  v7[0] = xmmword_100A2C3F0;
  v7[1] = xmmword_100A3BC10;
  v21 = v8;
  v22 = v7;
  v6[0] = xmmword_100A2C3F0;
  v6[1] = xmmword_100A3BC30;
  v5[0] = xmmword_100A3BB70;
  v5[1] = xmmword_100A3BC50;
  v23 = v6;
  v24 = v5;
  v4[0] = xmmword_100A2C3F0;
  v4[1] = xmmword_100A3BB80;
  v3[0] = xmmword_100A3BBB0;
  v3[1] = xmmword_100A3BB80;
  v25 = v4;
  v26 = v3;
  v2[0] = xmmword_100A3BBB0;
  v2[1] = xmmword_100A3BC10;
  v1[0] = xmmword_100A3BBB0;
  v1[1] = xmmword_100A3BC30;
  v27 = v2;
  v28 = v1;
  sub_100552E50();
  qword_100D909E0 = v0;
}

void sub_1007AB538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28[0] = xmmword_100A2D320;
  v28[1] = xmmword_100A3BC40;
  v27[0] = xmmword_100A3BC40;
  v27[1] = xmmword_100A3BB80;
  v29 = v28;
  v30 = v27;
  v24 = xmmword_100A3BB70;
  v25 = 1;
  v26 = 4;
  v23[0] = xmmword_100A3BC40;
  v23[1] = xmmword_100A3BC50;
  v31 = &v24;
  v32 = v23;
  v20 = 0;
  v21 = xmmword_100A3F980;
  v22 = 1;
  v19[0] = xmmword_100A3BBB0;
  v19[1] = xmmword_100A3BB80;
  v33 = &v20;
  v34 = v19;
  v15[1] = xmmword_100A3BC50;
  v16 = xmmword_100A2D320;
  v17 = 1;
  v18 = 3;
  v14[1] = xmmword_100A3BB80;
  v15[0] = xmmword_100A3BBB0;
  v35 = &v16;
  v36 = v15;
  v13[1] = xmmword_100A3BC50;
  v14[0] = xmmword_100A3BBD0;
  v37 = v14;
  v38 = v13;
  v11[1] = xmmword_100A3BC60;
  v12[0] = xmmword_100A2D320;
  v12[1] = xmmword_100A3BC60;
  v13[0] = xmmword_100A3BBD0;
  v10[1] = xmmword_100A3BC60;
  v11[0] = xmmword_100A2C3F0;
  v39 = v12;
  v40 = v11;
  v9[1] = xmmword_100A3BB80;
  v10[0] = xmmword_100A3BBB0;
  v9[0] = xmmword_100A2C3F0;
  v41 = v10;
  v42 = v9;
  sub_100013794(a1, a2, a3, a4, a5, a6, a7, a8, 1);
  qword_100D909E8 = v8;
}

void sub_1007AB668()
{
  v16[0] = 2;
  v16[1] = 4;
  v17 = xmmword_100A2C3F0;
  v15[0] = xmmword_100A3BC40;
  v15[1] = xmmword_100A3BC50;
  v18 = v16;
  v19 = v15;
  v14[0] = xmmword_100A3BB70;
  v14[1] = xmmword_100A3F970;
  v13[0] = xmmword_100A3BC40;
  v13[1] = xmmword_100A3BC60;
  v20 = v14;
  v21 = v13;
  v10 = 0;
  v11 = xmmword_100A3F980;
  v12 = 1;
  v9[0] = xmmword_100A3BBB0;
  v9[1] = xmmword_100A3BC50;
  v22 = &v10;
  v23 = v9;
  v8[0] = xmmword_100A3BBB0;
  v8[1] = xmmword_100A3BC60;
  v7[0] = xmmword_100A3BBD0;
  v7[1] = xmmword_100A3BC50;
  v24 = v8;
  v25 = v7;
  v6[0] = xmmword_100A3BBD0;
  v6[1] = xmmword_100A3BC60;
  v5[0] = xmmword_100A2D320;
  v5[1] = xmmword_100A3BBD0;
  v26 = v6;
  v27 = v5;
  v4[0] = xmmword_100A3BC40;
  v4[1] = xmmword_100A3BC40;
  v3[0] = xmmword_100A3BBD0;
  v3[1] = xmmword_100A3BC40;
  v28 = v4;
  v29 = v3;
  v2[0] = xmmword_100A2C3F0;
  v2[1] = xmmword_100A3BC50;
  v1[0] = xmmword_100A2C3F0;
  v1[1] = xmmword_100A3BC60;
  v30 = v2;
  v31 = v1;
  sub_100552E50();
  qword_100D909F0 = v0;
}

void sub_1007AB794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22[0] = xmmword_100A2D320;
  v22[1] = xmmword_100A2C3F0;
  v21[0] = xmmword_100A3BC50;
  v21[1] = xmmword_100A3BC60;
  v23 = v22;
  v24 = v21;
  v20[0] = xmmword_100A3BB70;
  v20[1] = xmmword_100A3F970;
  v19[0] = xmmword_100A3BC60;
  v19[1] = xmmword_100A3BC40;
  v25 = v20;
  v26 = v19;
  v18[0] = xmmword_100A3BC80;
  v18[1] = xmmword_100A3BBB0;
  v17[0] = xmmword_100A3BBD0;
  v17[1] = xmmword_100A3BC60;
  v27 = v18;
  v28 = v17;
  v16[0] = xmmword_100A3BC90;
  v16[1] = xmmword_100A3BB70;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3BC60;
  v29 = v16;
  v30 = v15;
  v14[0] = xmmword_100A3BC60;
  v14[1] = xmmword_100A3BC60;
  v13[0] = xmmword_100A3BC50;
  v13[1] = xmmword_100A3BC40;
  v31 = v14;
  v32 = v13;
  v12[0] = xmmword_100A3BC90;
  v12[1] = xmmword_100A3BBD0;
  v11[0] = xmmword_100A3BC40;
  v11[1] = xmmword_100A3BC40;
  v33 = v12;
  v34 = v11;
  v10[0] = xmmword_100A3BBD0;
  v10[1] = xmmword_100A3BC40;
  v9[0] = xmmword_100A3BC40;
  v9[1] = xmmword_100A3BC60;
  v35 = v10;
  v36 = v9;
  sub_100013794(a1, a2, a3, a4, a5, a6, a7, a8, 2);
  qword_100D909F8 = v8;
}

uint64_t sub_1007AB8AC(uint64_t a1, void (*a2)(char *))
{
  v5 = type metadata accessor for LocationComponentContainerViewModel();
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_100003848();
  v32 = v7;
  __chkstk_darwin(v8);
  sub_100003878();
  v31 = v9;
  __chkstk_darwin(v10);
  sub_100013628();
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  v14 = type metadata accessor for LocationViewComponent();
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10022C350(&qword_100CA5008);
  v19 = sub_100003810(v18);
  __chkstk_darwin(v19);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v29 - v23;

  sub_1005D71C4(v25, a2);
  v30 = v26;

  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather31LocationMinorAlertConfiguration8_Storage_map, v17, type metadata accessor for LocationViewComponent);
  a2(v17);
  sub_1003169AC(v17, type metadata accessor for LocationViewComponent);
  sub_10001B350(v24, 0, 1, v5);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather31LocationMinorAlertConfiguration8_Storage_airQuality, v17, type metadata accessor for LocationViewComponent);
  a2(v17);
  sub_1003169AC(v17, type metadata accessor for LocationViewComponent);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather31LocationMinorAlertConfiguration8_Storage_severeAlert, v17, type metadata accessor for LocationViewComponent);
  a2(v17);
  sub_1003169AC(v17, type metadata accessor for LocationViewComponent);
  sub_100035AD0(v24, v21, &qword_100CA5008);
  sub_10031694C(v13, v31, type metadata accessor for LocationComponentContainerViewModel);
  sub_10031694C(v2, v32, type metadata accessor for LocationComponentContainerViewModel);
  type metadata accessor for MinorAlertContent._Storage(0);
  swift_allocObject();
  v27 = sub_1002D28D8(v30);
  sub_1003169AC(v2, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v13, type metadata accessor for LocationComponentContainerViewModel);
  sub_1000180EC(v24, &qword_100CA5008);
  return v27;
}

_BYTE *storeEnumTagSinglePayload for UnitsConfigurationViewAction(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1007ABCC8()
{
  result = qword_100CD7D88;
  if (!qword_100CD7D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7D88);
  }

  return result;
}

uint64_t sub_1007ABD1C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CD7D98);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  Dictionary.init(dictionaryLiteral:)();
  ShortDescription.init(name:_:)();
  a1[3] = v2;
  a1[4] = sub_1007ABF50();
  v6 = sub_100042FB0(a1);
  return (*(v3 + 32))(v6, v5, v2);
}

uint64_t sub_1007ABEBC()
{
  sub_1007ABFB4();

  return ShortDescribable.description.getter();
}

unint64_t sub_1007ABEFC()
{
  result = qword_100CD7D90;
  if (!qword_100CD7D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7D90);
  }

  return result;
}

unint64_t sub_1007ABF50()
{
  result = qword_100CD7DA0;
  if (!qword_100CD7DA0)
  {
    sub_10022E824(&qword_100CD7D98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7DA0);
  }

  return result;
}

unint64_t sub_1007ABFB4()
{
  result = qword_100CD7DA8[0];
  if (!qword_100CD7DA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CD7DA8);
  }

  return result;
}

uint64_t *sub_1007AC008()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 120));
  return v0;
}

uint64_t sub_1007AC0D4()
{
  sub_1007AC008();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ElevationData()
{
  result = qword_100CD7EA8;
  if (!qword_100CD7EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1007AC1A0()
{
  result = type metadata accessor for Elevation();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

BOOL sub_1007AC22C(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v37 = a1[7];
  v38 = a1[6];
  v36 = a1[8];
  v35 = a1[9];
  v31 = a1[11];
  v32 = a1[10];
  v27 = a1[13];
  v28 = a1[12];
  v23 = a1[15];
  v24 = a1[14];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v33 = a2[9];
  v34 = a2[8];
  v29 = a2[11];
  v30 = a2[10];
  v25 = a2[13];
  v26 = a2[12];
  v12 = *a1 == *a2 && a1[1] == a2[1];
  v21 = a2[15];
  v22 = a2[14];
  result = 0;
  if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v13 = v2 == v6 && v4 == v7;
    if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v14 = v3 == v8 && v5 == v9;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v15 = v38 == v10 && v37 == v11;
        if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v16 = v36 == v34 && v35 == v33;
          if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v17 = v32 == v30 && v31 == v29;
            if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              v18 = v28 == v26 && v27 == v25;
              if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                v19 = v24 == v22 && v23 == v21;
                if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  return 1;
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

void *sub_1007AC420@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v15 = a2;
  v4 = sub_10022C350(&qword_100CD7EE8);
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v13[-v8 - 8];
  sub_1000161C0(a1, a1[3]);
  sub_1007AC92C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  v10 = v15;
  sub_1007AC980();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v4);
  memcpy(v13, v14, sizeof(v13));
  sub_100006F14(a1);
  return memcpy(v10, v13, 0x80uLL);
}

uint64_t sub_1007AC5C8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000100AC8430 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1007AC664(void *a1)
{
  v2 = v1;
  v4 = sub_10022C350(&qword_100CD7F00);
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v12[-v8 - 8];
  sub_1000161C0(a1, a1[3]);
  sub_1007AC92C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  memcpy(v13, v2, sizeof(v13));
  sub_1007AC9D4(v2, v12);
  sub_1007ACA0C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  memcpy(v12, v13, sizeof(v12));
  sub_100428554(v12);
  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_1007AC7E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007AC5C8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1007AC810(uint64_t a1)
{
  v2 = sub_1007AC92C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007AC84C(uint64_t a1)
{
  v2 = sub_1007AC92C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1007AC888@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1007AC420(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x80uLL);
  }

  return result;
}

unint64_t sub_1007AC92C()
{
  result = qword_100CD7EF0;
  if (!qword_100CD7EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7EF0);
  }

  return result;
}

unint64_t sub_1007AC980()
{
  result = qword_100CD7EF8;
  if (!qword_100CD7EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7EF8);
  }

  return result;
}

unint64_t sub_1007ACA0C()
{
  result = qword_100CD7F08;
  if (!qword_100CD7F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7F08);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PrecipitationTotalComponent.CodingKeys(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1007ACB10()
{
  result = qword_100CD7F10;
  if (!qword_100CD7F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7F10);
  }

  return result;
}

unint64_t sub_1007ACB68()
{
  result = qword_100CD7F18;
  if (!qword_100CD7F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7F18);
  }

  return result;
}

unint64_t sub_1007ACBC0()
{
  result = qword_100CD7F20;
  if (!qword_100CD7F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7F20);
  }

  return result;
}

double sub_1007ACC40@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v1 + 8);
  v7 = *v1;
  v29 = *v1;
  if (v30 != 1)
  {

    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000180EC(&v29, &qword_100CB91B8);
    (*(v4 + 8))(v6, v3);
    if (v26 != 1)
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = v1[2];
    v15 = v1[3];
    v16 = v1[4];
    v21 = v14;
    v22 = v15;
    v23 = v16;
    v24 = 0x4028000000000000;
    v25 = 0;
    sub_1007ACE90();
    sub_1007ACEE4();

    goto LABEL_8;
  }

  if (v7)
  {
    goto LABEL_7;
  }

LABEL_3:
  v9 = v1[2];
  v8 = v1[3];
  v10 = v1[4];

  v11 = static Solarium.isEnabled.getter();
  v12 = 0x4026000000000000;
  if (v11)
  {
    v12 = 0x402E000000000000;
  }

  v21 = v9;
  v22 = v8;
  v23 = v10;
  v24 = v12;
  v25 = 1;
  sub_1007ACE90();
  sub_1007ACEE4();
LABEL_8:
  _ConditionalContent<>.init(storage:)();
  result = *&v26;
  v18 = v27;
  v19 = v28;
  *a1 = v26;
  *(a1 + 16) = v18;
  *(a1 + 32) = v19;
  return result;
}

unint64_t sub_1007ACE90()
{
  result = qword_100CD7F28;
  if (!qword_100CD7F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7F28);
  }

  return result;
}

unint64_t sub_1007ACEE4()
{
  result = qword_100CD7F30;
  if (!qword_100CD7F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7F30);
  }

  return result;
}

unint64_t sub_1007ACF58()
{
  result = qword_100CD7F38;
  if (!qword_100CD7F38)
  {
    sub_10022E824(&qword_100CD7F40);
    sub_1007ACE90();
    sub_1007ACEE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7F38);
  }

  return result;
}

void *sub_1007AD000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v19 = a4;
  v9 = sub_10022C350(&qword_100CD7F80);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = static HorizontalAlignment.leading.getter();
  v13 = static VerticalAlignment.firstTextBaseline.getter();
  *v11 = v12;
  *(v11 + 1) = v13;
  *(v11 + 2) = 0x4030000000000000;
  v11[24] = 0;
  *(v11 + 4) = a5;
  v11[40] = 0;
  sub_10022C350(&qword_100CD7F88);
  __src[0] = a3;
  swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a5;
  swift_bridgeObjectRetain_n();

  sub_10022C350(&qword_100CD7F50);
  sub_10022C350(&qword_100CD7F90);
  sub_100006F64(&qword_100CD7F60, &qword_100CD7F50);
  sub_1007AE90C();
  sub_100006F64(&qword_100CD7F98, &qword_100CD7F90);
  ForEach<>.init(_:id:content:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v15 = v19;
  sub_10002F758(v11, v19, &qword_100CD7F80);
  v16 = sub_10022C350(&qword_100CD7FA0);
  return memcpy((v15 + *(v16 + 36)), __src, 0x70uLL);
}

uint64_t sub_1007AD2A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v55 = a2;
  v60 = a3;
  v57 = sub_10022C350(&qword_100CD7FA8);
  __chkstk_darwin(v57);
  v51 = v46 - v4;
  v5 = sub_10022C350(&qword_100CD7FB0);
  __chkstk_darwin(v5 - 8);
  v59 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v58 = v46 - v8;
  v9 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10022C350(&qword_100CD7FB8);
  __chkstk_darwin(v10);
  v12 = v46 - v11;
  v13 = sub_10022C350(&qword_100CD7FC0);
  __chkstk_darwin(v13 - 8);
  v56 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v46 - v16;
  v18 = *(a1 + 16);
  v66 = *a1;
  *v67 = v18;
  v50 = *(a1 + 32);
  *&v67[16] = v50;
  v19 = *(a1 + 8);
  v49 = *a1;
  v48 = v19;
  v20 = *(a1 + 24);
  v47 = *(a1 + 16);
  v46[1] = v20;
  *v12 = 0;
  v12[8] = 1;
  sub_1007AD888(&v66._countAndFlagsBits, &v12[*(v10 + 36)]);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v21);
  object = v66._object;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v66);
  v22._countAndFlagsBits = 8236;
  v22._object = 0xE200000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v22);
  v52 = *&v67[16];
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(*&v67[8]);
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v23);
  LocalizedStringKey.init(stringInterpolation:)();
  v24 = Text.init(_:tableName:bundle:comment:)();
  v26 = v25;
  v28 = v27;
  sub_100006F64(&qword_100CD7FC8, &qword_100CD7FB8);
  v54 = v17;
  View.accessibilityLabel(_:)();
  sub_10010CD64(v24, v26, v28 & 1);

  sub_1000180EC(v12, &qword_100CD7FB8);
  v29 = *v67;
  sub_1002F55B8(v55, &v61);
  v30 = v61;
  v31 = v63;
  if (!v62)
  {

    v37 = v29;

    sub_1007AE960(v49, v48, v47);
    sub_1007AE960(v30, 0, v31);
    goto LABEL_5;
  }

  v68[0] = v61;
  v68[1] = v62;
  v68[2] = v63;
  v68[3] = v64;
  v68[4] = v65;

  v32 = v29;

  v33 = sub_1004CF548(&v66, v68);

  if ((v33 & 1) == 0)
  {
LABEL_5:
    v38 = v51;
    Divider.init()();
    v39 = static Axis.Set.horizontal.getter();
    v35 = v57;
    v36 = v58;
    *(v38 + *(v57 + 36)) = v39;
    sub_10002F758(v38, v36, &qword_100CD7FA8);
    v34 = 0;
    goto LABEL_6;
  }

  v34 = 1;
  v35 = v57;
  v36 = v58;
LABEL_6:
  sub_10001B350(v36, v34, 1, v35);
  v40 = v54;
  v41 = v56;
  sub_1000955E0(v54, v56, &qword_100CD7FC0);
  v42 = v59;
  sub_1000955E0(v36, v59, &qword_100CD7FB0);
  v43 = v60;
  sub_1000955E0(v41, v60, &qword_100CD7FC0);
  v44 = sub_10022C350(&qword_100CD7FD0);
  sub_1000955E0(v42, v43 + *(v44 + 48), &qword_100CD7FB0);
  sub_1000180EC(v36, &qword_100CD7FB0);
  sub_1000180EC(v40, &qword_100CD7FC0);
  sub_1000180EC(v42, &qword_100CD7FB0);
  return sub_1000180EC(v41, &qword_100CD7FC0);
}

uint64_t sub_1007AD888@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = sub_10022C350(&qword_100CD7FD8);
  __chkstk_darwin(v3 - 8);
  v56 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v54 = &v52 - v6;
  v7 = sub_10022C350(&qword_100CA5730);
  __chkstk_darwin(v7 - 8);
  v9 = &v52 - v8;
  v10 = sub_10022C350(&qword_100CD7FE0);
  __chkstk_darwin(v10);
  v12 = &v52 - v11;
  v13 = sub_10022C350(&qword_100CD7FE8);
  __chkstk_darwin(v13 - 8);
  v58 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v52 - v16;
  v55 = objc_opt_self();
  v18 = [v55 secondaryLabelColor];
  v62 = sub_100100664();
  v59 = v18;
  NSAttributedString.addingAttribute(_:value:)();
  sub_100006F14(&v59);
  v19 = type metadata accessor for AttributedString();
  sub_10001B350(v9, 1, 1, v19);
  AttributedText.init(_:accessibilityAttributedText:onInteraction:)();
  *(v12 + *(v10 + 36)) = static HorizontalAlignment.leading.getter();
  sub_1007AE9BC();
  v53 = v17;
  View.accessibilityHidden(_:)();
  sub_1000180EC(v12, &qword_100CD7FE0);
  v20 = static VerticalAlignment.center.getter();
  sub_1007ADE58(a1, &v59);
  v21 = v59;
  v22 = v60;
  LOBYTE(v18) = v61;
  v23 = v62;
  v24 = v63;
  v70 = 1;
  v69 = v61;
  v68 = v64;
  v59 = v20;
  v60 = 0;
  v61 = 1;
  v62 = v21;
  v63 = v22;
  v64 = v69;
  v65 = v23;
  v66 = v24;
  v67 = v68;
  sub_10022C350(&qword_100CD8000);
  sub_100006F64(&qword_100CD8008, &qword_100CD8000);
  View.accessibilityHidden(_:)();
  sub_10010CD64(v21, v22, v18);

  v25 = a1[3];
  v26 = a1[4];
  v59 = v25;
  v60 = v26;
  sub_10002D5A4();

  v27 = Text.init<A>(_:)();
  v29 = v28;
  LOBYTE(v12) = v30;
  static Font.body.getter();
  v31 = Text.font(_:)();
  v33 = v32;
  LOBYTE(v18) = v34;

  sub_10010CD64(v27, v29, v12 & 1);

  v35 = [v55 secondaryLabelColor];
  v59 = Color.init(_:)();
  v36 = Text.foregroundStyle<A>(_:)();
  v38 = v37;
  LODWORD(v55) = v39;
  v41 = v40;
  sub_10010CD64(v31, v33, v18 & 1);

  v52 = static HorizontalAlignment.trailing.getter();
  v42 = v17;
  v43 = v58;
  sub_1000955E0(v42, v58, &qword_100CD7FE8);
  v44 = v54;
  v45 = v56;
  sub_1000955E0(v54, v56, &qword_100CD7FD8);
  v46 = v43;
  v47 = v57;
  sub_1000955E0(v46, v57, &qword_100CD7FE8);
  v48 = sub_10022C350(&qword_100CD8010);
  sub_1000955E0(v45, v47 + *(v48 + 48), &qword_100CD7FD8);
  v49 = v47 + *(v48 + 64);
  *v49 = v36;
  *(v49 + 8) = v38;
  LOBYTE(v48) = v55 & 1;
  *(v49 + 16) = v55 & 1;
  v50 = v52;
  *(v49 + 24) = v41;
  *(v49 + 32) = v50;
  sub_10010CD54(v36, v38, v48);

  sub_1000180EC(v44, &qword_100CD7FD8);
  sub_1000180EC(v53, &qword_100CD7FE8);
  sub_10010CD64(v36, v38, v48);

  sub_1000180EC(v45, &qword_100CD7FD8);
  return sub_1000180EC(v58, &qword_100CD7FE8);
}

uint64_t sub_1007ADE58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Font.TextStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  v22[2] = v8;
  v22[3] = v9;
  sub_10002D5A4();

  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  (*(v5 + 104))(v7, enum case for Font.TextStyle.body(_:), v4);
  static Font.Weight.semibold.getter();
  static Font.system(_:weight:)();
  (*(v5 + 8))(v7, v4);
  v15 = Text.font(_:)();
  v17 = v16;
  LOBYTE(v5) = v18;
  v20 = v19;

  sub_10010CD64(v10, v12, v14 & 1);

  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v20;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  sub_10010CD54(v15, v17, v5 & 1);

  sub_10010CD64(v15, v17, v5 & 1);
}

uint64_t sub_1007AE060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *a4 = static HorizontalAlignment.leading.getter();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  sub_10022C350(&qword_100CD7F48);
  swift_getKeyPath();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a5;
  swift_bridgeObjectRetain_n();

  sub_10022C350(&qword_100CD7F50);
  sub_10022C350(&qword_100CD7F58);
  sub_100006F64(&qword_100CD7F60, &qword_100CD7F50);
  sub_1007AE90C();
  sub_100006F64(&qword_100CD7F70, &qword_100CD7F58);
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1007AE208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v72 = a2;
  v76 = sub_10022C350(&qword_100CA6430);
  __chkstk_darwin(v76);
  v67 = &v62 - v5;
  v6 = sub_10022C350(&qword_100CA6480);
  __chkstk_darwin(v6 - 8);
  v78 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v77 = &v62 - v9;
  v10 = type metadata accessor for Font.TextStyle();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v85 = *a1;
  *v86 = v14;
  v66 = *(a1 + 32);
  *&v86[16] = v66;
  v15 = *(a1 + 8);
  v65 = *a1;
  v64 = v15;
  v16 = *(a1 + 24);
  v63 = *(a1 + 16);
  v62 = v16;
  v92 = v85;
  v87 = *a1;
  sub_10002D5A4();

  v17 = Text.init<A>(_:)();
  v19 = v18;
  v21 = v20;
  (*(v11 + 104))(v13, enum case for Font.TextStyle.body(_:), v10);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  (*(v11 + 8))(v13, v10);
  v75 = Text.font(_:)();
  v74 = v22;
  v73 = v23;
  v79 = v24;

  sub_10010CD64(v17, v19, v21 & 1);

  v91 = *&v86[8];
  v87 = *&v86[8];

  v25 = Text.init<A>(_:)();
  v27 = v26;
  LOBYTE(a1) = v28;
  static Font.body.getter();
  v29 = Text.font(_:)();
  v31 = v30;
  LOBYTE(v19) = v32;

  sub_10010CD64(v25, v27, a1 & 1);

  v33 = [objc_opt_self() secondaryLabelColor];
  *&v87 = Color.init(_:)();
  v70 = Text.foregroundStyle<A>(_:)();
  v69 = v34;
  v68 = v35;
  v71 = v36;
  sub_10010CD64(v29, v31, v19 & 1);

  v37 = *v86;
  sub_1002F55B8(v72, &v81);
  v38 = v81;
  v39 = v82;
  if (!*(&v81 + 1))
  {
    sub_100358150(&v92, &v87);
    sub_100358150(&v91, &v87);
    v45 = v37;
    sub_1007AE960(v65, v64, v63);
    sub_1007AE960(v38, 0, v39);
    goto LABEL_5;
  }

  v87 = v81;
  v88 = v82;
  v89 = v83;
  v90 = v84;
  sub_100358150(&v92, v80);
  sub_100358150(&v91, v80);
  v40 = v37;
  v41 = sub_1004CF548(&v85, &v87);

  sub_1002ED110(&v92);

  sub_1002ED110(&v91);
  if ((v41 & 1) == 0)
  {
LABEL_5:
    v46 = v67;
    Divider.init()();
    v47 = static Edge.Set.vertical.getter();
    EdgeInsets.init(_all:)();
    v44 = v76;
    v48 = v46 + *(v76 + 36);
    *v48 = v47;
    *(v48 + 8) = v49;
    *(v48 + 16) = v50;
    *(v48 + 24) = v51;
    *(v48 + 32) = v52;
    *(v48 + 40) = 0;
    v43 = v77;
    sub_10002F758(v46, v77, &qword_100CA6430);
    v42 = 0;
    goto LABEL_6;
  }

  v42 = 1;
  v43 = v77;
  v44 = v76;
LABEL_6:
  sub_10001B350(v43, v42, 1, v44);
  v53 = v73 & 1;
  v80[0] = v73 & 1;
  v54 = v78;
  sub_1000955E0(v43, v78, &qword_100CA6480);
  v55 = v75;
  v56 = v74;
  *a3 = v75;
  *(a3 + 8) = v56;
  *(a3 + 16) = v53;
  v57 = v70;
  *(a3 + 24) = v79;
  *(a3 + 32) = v57;
  v58 = v69;
  *(a3 + 40) = v69;
  v59 = v68 & 1;
  *(a3 + 48) = v68 & 1;
  *(a3 + 56) = v71;
  v60 = sub_10022C350(&qword_100CD7F78);
  sub_1000955E0(v54, a3 + *(v60 + 64), &qword_100CA6480);
  sub_10010CD54(v55, v56, v53);

  sub_10010CD54(v57, v58, v59);

  sub_1000180EC(v43, &qword_100CA6480);
  sub_1000180EC(v54, &qword_100CA6480);
  sub_10010CD64(v57, v58, v59);

  sub_10010CD64(v55, v56, v80[0]);
}

unint64_t sub_1007AE90C()
{
  result = qword_100CD7F68;
  if (!qword_100CD7F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7F68);
  }

  return result;
}

uint64_t sub_1007AE960(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1007AE9BC()
{
  result = qword_100CD7FF0;
  if (!qword_100CD7FF0)
  {
    sub_10022E824(&qword_100CD7FE0);
    sub_1007AEA48();
    sub_1007AEAA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7FF0);
  }

  return result;
}

unint64_t sub_1007AEA48()
{
  result = qword_100CB8BB0;
  if (!qword_100CB8BB0)
  {
    type metadata accessor for AttributedText();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB8BB0);
  }

  return result;
}

unint64_t sub_1007AEAA0()
{
  result = qword_100CD7FF8;
  if (!qword_100CD7FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7FF8);
  }

  return result;
}

unint64_t sub_1007AEAF4()
{
  result = qword_100CD8028;
  if (!qword_100CD8028)
  {
    sub_10022E824(&qword_100CD7FA0);
    sub_100006F64(&unk_100CD8030, &qword_100CD7F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD8028);
  }

  return result;
}

void sub_1007AEBB4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1007AEC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  *(v5 + 32) = 5033;
  type metadata accessor for MockServer();
  *(v5 + 40) = static MockServer.shared.getter();
  *(v5 + 64) = xmmword_100A81F90;
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2240 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  *(v5 + 120) = v12;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 48) = a3;
  *(v5 + 56) = a4;
  sub_10003E2A0(a5, v5 + 80);
  return v5;
}

void sub_1007AED24(char a1)
{
  type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v79 = v2;
  v80 = v3;
  __chkstk_darwin(v2);
  sub_1000037D8();
  v81 = v5 - v4;
  v6 = type metadata accessor for WeatherCondition();
  sub_1000037C4();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = type metadata accessor for ConditionCode();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000037D8();
  type metadata accessor for Logger();
  sub_1000037C4();
  v82 = v16;
  v83 = v15;
  __chkstk_darwin(v15);
  sub_1000037D8();
  v19 = v18 - v17;
  static Logger.automation.getter();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v78 = v11;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v84 = v23;
    *v22 = 136446210;
    v24 = a1;
    v25 = sub_100381434(a1);
    v27 = sub_100078694(v25, v26, &v84);

    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "Run test %{public}s", v22, 0xCu);
    sub_100006F14(v23);
    sub_100003884();
    v11 = v78;
    sub_100003884();
  }

  else
  {
    v24 = a1;
  }

  (*(v82 + 8))(v19, v83);
  switch(v24)
  {
    case 1:
      v53 = sub_10001F7AC();
      v54(v53);
      v38 = 1;
      goto LABEL_27;
    case 2:
      v45 = sub_10001F7AC();
      v46(v45);
      v38 = 2;
      goto LABEL_27;
    case 3:
      v49 = sub_10001F7AC();
      v50(v49);
      v38 = 3;
      goto LABEL_27;
    case 4:
      v36 = sub_10001F7AC();
      v37(v36);
      v38 = 4;
      goto LABEL_27;
    case 5:
      v59 = sub_10001F7AC();
      v60(v59);
      v38 = 5;
      goto LABEL_27;
    case 6:
      v63 = sub_10001F7AC();
      v64(v63);
      v38 = 6;
LABEL_27:
      sub_1007AFDB0(v38);
      goto LABEL_34;
    case 7:
      v51 = sub_10001F7AC();
      v52(v51);
      v35 = 7;
      goto LABEL_33;
    case 8:
      v69 = sub_10001F7AC();
      v70(v69);
      v35 = 8;
      goto LABEL_33;
    case 9:
      v41 = sub_10001F7AC();
      v42(v41);
      v35 = 9;
      goto LABEL_33;
    case 10:
      v67 = sub_10001F7AC();
      v68(v67);
      v35 = 10;
      goto LABEL_33;
    case 11:
      v33 = sub_10001F7AC();
      v34(v33);
      v35 = 11;
      goto LABEL_33;
    case 12:
      v39 = sub_10001F7AC();
      v40(v39);
      v35 = 12;
LABEL_33:
      sub_1007B04A0(v35);
LABEL_34:
      (*(v13 + 8))(v21, v11);
      return;
    case 13:
      v61 = sub_100010B0C();
      v62(v61);
      v30 = 13;
      goto LABEL_29;
    case 14:
      v31 = sub_100010B0C();
      v32(v31);
      v30 = 14;
      goto LABEL_29;
    case 15:
      v47 = sub_100010B0C();
      v48(v47);
      v30 = 15;
      goto LABEL_29;
    case 16:
      v28 = sub_100010B0C();
      v29(v28);
      v30 = 16;
      goto LABEL_29;
    case 17:
      v55 = sub_100010B0C();
      v56(v55);
      v30 = 17;
      goto LABEL_29;
    case 18:
      v65 = sub_100010B0C();
      v66(v65);
      v30 = 18;
LABEL_29:
      sub_1007B0B90(v30, v10);
      (*(v20 + 8))(v10, v6);
      return;
    case 19:
      v57 = 19;
      v58 = 0;
      goto LABEL_39;
    case 20:
      v57 = 20;
      v58 = 1;
LABEL_39:
      sub_1007B18DC(v57, v58);
      return;
    case 21:
      sub_1007B1098(21);
      return;
    case 22:
      v43 = 22;
      v44 = 0;
      goto LABEL_41;
    case 23:
      v43 = 23;
      v44 = 1;
      goto LABEL_41;
    case 24:
      v43 = 24;
      v44 = 2;
      goto LABEL_41;
    case 25:
      v43 = 25;
      v44 = 3;
LABEL_41:
      sub_1007B11F0(v43, v44);
      return;
    case 26:
      sub_1007B1350(26);
      return;
    case 27:
      sub_1007B160C(27);
      return;
    case 28:
      v74 = sub_10000EDA4();
      v75(v74);
      v73 = 28;
      goto LABEL_43;
    case 29:
      v76 = enum case for WeatherMapPrecipitationOverlayKind.auto(_:);
      type metadata accessor for WeatherMapPrecipitationOverlayKind();
      sub_1000037E8();
      (*(v77 + 104))(v81, v76);
      (*(v80 + 104))(v81, enum case for WeatherMapOverlayKind.precipitation(_:), v79);
      sub_1007B27E0(29, v81);
      (*(v80 + 8))(v81, v79);
      return;
    case 30:
      v71 = sub_10000EDA4();
      v72(v71);
      v73 = 30;
LABEL_43:
      sub_1007B27E0(v73, v20);
      (*(v21 + 8))(v20, v6);
      break;
    case 31:
      sub_1007B2CC4(31);
      break;
    case 32:
      sub_1007B2DE4(32);
      break;
    default:
      sub_1007AF4A4(0);
      break;
  }
}

void sub_1007AF4A4(int a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v55 = *(v3 - 8);
  __chkstk_darwin(v3);
  v53 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for DispatchQoS();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DispatchTime();
  v50 = *(v58 - 8);
  __chkstk_darwin(v58);
  v48 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v49 = &v42 - v8;
  v46 = type metadata accessor for MainAction();
  __chkstk_darwin(v46);
  v47 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  v10 = *(v59 - 8);
  __chkstk_darwin(v59);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v42 - v14;
  v16 = type metadata accessor for ConditionCode();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_100381434(a1);
  v21 = v20;
  if ([objc_opt_self() isRecapAvailable])
  {
    v44 = v21;
    v45 = a1;
    v56 = v1;
    v43 = v3;
    type metadata accessor for SettingReader();
    static SettingReader.shared.getter();
    if (qword_100CA2238 != -1)
    {
      swift_once();
    }

    SettingReader.read<A>(_:)();

    v22 = &enum case for ConditionCode.clear(_:);
    v23 = 0;
    switch(aBlock)
    {
      case 1:
        goto LABEL_11;
      case 2:
        v22 = &enum case for ConditionCode.cloudy(_:);
        goto LABEL_11;
      case 3:
        v22 = &enum case for ConditionCode.mostlyCloudy(_:);
        goto LABEL_11;
      case 4:
        v22 = &enum case for ConditionCode.rain(_:);
        goto LABEL_11;
      case 5:
        v22 = &enum case for ConditionCode.thunderstorms(_:);
        goto LABEL_11;
      case 6:
        v22 = &enum case for ConditionCode.strongStorms(_:);
LABEL_11:
        (*(v17 + 104))(v19, *v22, v16);
        StubPPTWeatherDataManager.setupStubData(for:)();
        (*(v17 + 8))(v19, v16);
        v23 = 1;
        break;
      default:
        break;
    }

    v24 = v23;
    static SettingReader.shared.getter();
    static Settings.VFX.animatedBackgrounds.getter();
    Settings.VFX.AnimatedBackgrounds.listAnimationKind.getter();

    SettingReader.read<A>(_:)();

    static Settings.VFX.animatedBackgrounds.getter();
    v25 = dispatch thunk of SettingGroup.isEnabled.getter();

    v26 = v59;
    (*(v10 + 104))(v12, enum case for Settings.VFX.AnimatedBackgrounds.AnimationKind.mica(_:), v59);
    v27 = sub_1001497E4(v15, v12);
    v28 = *(v10 + 8);
    v28(v12, v26);
    if (v27 & 1) != 0 && (v25)
    {
      v29 = [objc_opt_self() standardUserDefaults];
      LOBYTE(aBlock) = 0;
      NSUserDefaults.set<A>(_:for:)();

      v30 = v56;
      v31 = *(v56 + 16);
      v42 = v28;
      v32 = v47;
      *v47 = 1;
      type metadata accessor for PerformanceTestAction();
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v62 = 0;
      aBlock = 0u;
      v61 = 0u;
      sub_10004F034(v32, &aBlock, v31);
      sub_1000180EC(&aBlock, &unk_100CD81B0);
      sub_10004FB48(v32, type metadata accessor for MainAction);
      sub_10000C70C(0, &qword_100CB4670);
      v47 = static OS_dispatch_queue.main.getter();
      v33 = v48;
      static DispatchTime.now()();
      v34 = v49;
      + infix(_:_:)();
      v50 = *(v50 + 8);
      (v50)(v33, v58);
      v35 = swift_allocObject();
      *(v35 + 16) = v30;
      *(v35 + 24) = v24;
      *(v35 + 25) = v45;
      v36 = v44;
      *(v35 + 32) = v57;
      *(v35 + 40) = v36;
      *(v35 + 48) = 1;
      v62 = sub_1007B9D48;
      v63 = v35;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v61 = sub_1000742F0;
      *(&v61 + 1) = &unk_100C6BDF8;
      v37 = _Block_copy(&aBlock);

      v38 = v51;
      static DispatchQoS.unspecified.getter();
      *&aBlock = _swiftEmptyArrayStorage;
      sub_1000674D4(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10022C350(&qword_100CB4680);
      sub_1000743E8();
      v39 = v53;
      v40 = v43;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v41 = v47;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v37);

      (*(v55 + 8))(v39, v40);
      (*(v52 + 8))(v38, v54);
      (v50)(v34, v58);
      v42(v15, v59);
    }

    else
    {
      sub_1007B367C(0, 0, v56, v24, v45, v57, v44);

      v28(v15, v26);
    }
  }

  else
  {

    sub_1007B3490(a1, &static os_log_type_t.error.getter, "Failed test: %{public}s", &selRef_failedTest_);
  }
}

uint64_t sub_1007AFDB0(int a1)
{
  v2 = v1;
  v48 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v3 - 8);
  v47 = v3;
  __chkstk_darwin(v3);
  v44 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchQoS();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  v50 = v6;
  v51 = v7;
  __chkstk_darwin(v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v49 = &v38 - v11;
  v41 = type metadata accessor for MainAction();
  __chkstk_darwin(v41);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v38 - v19;
  StubPPTWeatherDataManager.setupStubData(for:)();
  sub_1008A5EC4(1, 1);
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.VFX.animatedBackgrounds.getter();
  Settings.VFX.AnimatedBackgrounds.locationAnimationKind.getter();

  SettingReader.read<A>(_:)();

  static Settings.VFX.animatedBackgrounds.getter();
  v21 = dispatch thunk of SettingGroup.isEnabled.getter();

  (*(v15 + 104))(v17, enum case for Settings.VFX.AnimatedBackgrounds.AnimationKind.mica(_:), v14);
  v22 = sub_1001497E4(v20, v17);
  v23 = *(v15 + 8);
  v23(v17, v14);
  if (v22 & 1) != 0 && (v21)
  {
    v24 = [objc_opt_self() standardUserDefaults];
    LOBYTE(aBlock) = 0;
    NSUserDefaults.set<A>(_:for:)();

    v40 = v14;
    v25 = *(v2 + 16);
    type metadata accessor for PerformanceTestAction();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v54 = 0;
    aBlock = 0u;
    v53 = 0u;
    sub_10004F034(v13, &aBlock, v25);
    sub_1000180EC(&aBlock, &unk_100CD81B0);
    sub_10004FB48(v13, type metadata accessor for MainAction);
    sub_10000C70C(0, &qword_100CB4670);
    v39 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v26 = *(v51 + 8);
    v51 += 8;
    v41 = v26;
    v26(v9, v50);
    v27 = swift_allocObject();
    *(v27 + 16) = v2;
    *(v27 + 24) = v48;
    *(v27 + 25) = 1;
    v54 = sub_1007B9E98;
    v55 = v27;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v53 = sub_1000742F0;
    *(&v53 + 1) = &unk_100C6BF60;
    v28 = _Block_copy(&aBlock);

    v29 = v42;
    static DispatchQoS.unspecified.getter();
    *&aBlock = _swiftEmptyArrayStorage;
    sub_1000674D4(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10022C350(&qword_100CB4680);
    sub_1000743E8();
    v30 = v20;
    v31 = v23;
    v32 = v44;
    v33 = v47;
    v34 = v40;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v35 = v49;
    v36 = v39;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v28);

    (*(v46 + 8))(v32, v33);
    (*(v43 + 8))(v29, v45);
    v41(v35, v50);
    return v31(v30, v34);
  }

  else
  {
    sub_1007B4590(0, 0, v2, v48, 6, &unk_100C6BFC0, sub_1007B9EA8, &unk_100C6BFD8);
    return (v23)(v20, v14);
  }
}

uint64_t sub_1007B04A0(int a1)
{
  v2 = v1;
  v48 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v3 - 8);
  v47 = v3;
  __chkstk_darwin(v3);
  v44 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchQoS();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  v50 = v6;
  v51 = v7;
  __chkstk_darwin(v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v49 = &v38 - v11;
  v41 = type metadata accessor for MainAction();
  __chkstk_darwin(v41);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v38 - v19;
  StubPPTWeatherDataManager.setupStubData(for:)();
  sub_1008A5EC4(1, 1);
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.VFX.animatedBackgrounds.getter();
  Settings.VFX.AnimatedBackgrounds.locationAnimationKind.getter();

  SettingReader.read<A>(_:)();

  static Settings.VFX.animatedBackgrounds.getter();
  v21 = dispatch thunk of SettingGroup.isEnabled.getter();

  (*(v15 + 104))(v17, enum case for Settings.VFX.AnimatedBackgrounds.AnimationKind.mica(_:), v14);
  v22 = sub_1001497E4(v20, v17);
  v23 = *(v15 + 8);
  v23(v17, v14);
  if (v22 & 1) != 0 && (v21)
  {
    v24 = [objc_opt_self() standardUserDefaults];
    LOBYTE(aBlock) = 0;
    NSUserDefaults.set<A>(_:for:)();

    v40 = v14;
    v25 = *(v2 + 16);
    type metadata accessor for PerformanceTestAction();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v54 = 0;
    aBlock = 0u;
    v53 = 0u;
    sub_10004F034(v13, &aBlock, v25);
    sub_1000180EC(&aBlock, &unk_100CD81B0);
    sub_10004FB48(v13, type metadata accessor for MainAction);
    sub_10000C70C(0, &qword_100CB4670);
    v39 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v26 = *(v51 + 8);
    v51 += 8;
    v41 = v26;
    v26(v9, v50);
    v27 = swift_allocObject();
    *(v27 + 16) = v2;
    *(v27 + 24) = v48;
    *(v27 + 25) = 1;
    v54 = sub_1007B9EF8;
    v55 = v27;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v53 = sub_1000742F0;
    *(&v53 + 1) = &unk_100C6C0A0;
    v28 = _Block_copy(&aBlock);

    v29 = v42;
    static DispatchQoS.unspecified.getter();
    *&aBlock = _swiftEmptyArrayStorage;
    sub_1000674D4(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10022C350(&qword_100CB4680);
    sub_1000743E8();
    v30 = v20;
    v31 = v23;
    v32 = v44;
    v33 = v47;
    v34 = v40;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v35 = v49;
    v36 = v39;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v28);

    (*(v46 + 8))(v32, v33);
    (*(v43 + 8))(v29, v45);
    v41(v35, v50);
    return v31(v30, v34);
  }

  else
  {
    sub_1007B4590(0, 0, v2, v48, 7, &unk_100C6C100, sub_1007B9F08, &unk_100C6C118);
    return (v23)(v20, v14);
  }
}

uint64_t sub_1007B0B90(int a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v30 = a1;
  v34 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for DispatchQoS();
  v35 = *(v7 - 8);
  v36 = v7;
  __chkstk_darwin(v7);
  v32 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v29[-v14];
  v16 = type metadata accessor for MainAction();
  __chkstk_darwin(v16);
  v18 = &v29[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1007B3490(v5, &static os_log_type_t.default.getter, "Started test: %{public}s", &selRef_startedTest_);
  v19 = *(v3 + 16);
  v20 = type metadata accessor for WeatherCondition();
  (*(*(v20 - 8) + 16))(v18, a2, v20);
  type metadata accessor for PerformanceTestAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v40 = 0;
  aBlock = 0u;
  v39 = 0u;
  sub_10004F034(v18, &aBlock, v19);
  sub_1000180EC(&aBlock, &unk_100CD81B0);
  sub_10004FB48(v18, type metadata accessor for MainAction);
  sub_10000C70C(0, &qword_100CB4670);
  v21 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v22 = *(v10 + 8);
  v31 = v10 + 8;
  v22(v12, v9);
  v23 = swift_allocObject();
  *(v23 + 16) = v3;
  *(v23 + 24) = v30;
  v40 = sub_1007BA3C8;
  v41 = v23;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v39 = sub_1000742F0;
  *(&v39 + 1) = &unk_100C6C320;
  v24 = _Block_copy(&aBlock);

  v25 = v32;
  static DispatchQoS.unspecified.getter();
  *&aBlock = _swiftEmptyArrayStorage;
  sub_1000674D4(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10022C350(&qword_100CB4680);
  sub_1000743E8();
  v27 = v33;
  v26 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v24);

  (*(v37 + 8))(v27, v26);
  (*(v35 + 8))(v25, v36);
  return (v22)(v15, v9);
}