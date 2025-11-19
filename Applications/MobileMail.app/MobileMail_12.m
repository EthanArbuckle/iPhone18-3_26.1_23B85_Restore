uint64_t sub_1003351A8(uint64_t a1)
{
  v8 = 0;
  v7 = sub_1003353D8;
  v21 = 0;
  v18 = &v20;
  v20 = 0;
  v13 = type metadata accessor for _AssistantIntent.Value();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v6 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v14 = &v5 - v6;
  v21 = a1;
  KeyPath = swift_getKeyPath();
  sub_10027D124();
  v9 = _AssistantIntent.IntentProjection.subscript.getter();
  sub_100335360();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v15 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v11 + 8))(v14, v13);

  v20 = v15;
  v16 = sub_10025C9B0(&qword_1006D9518);
  v2 = _allocateUninitializedArray<A>(_:)();
  *v3 = v15;
  sub_1002612B0();
  v17 = v2;
  v19 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  sub_100264880();
  return v19;
}

unint64_t sub_100335360()
{
  v2 = qword_1006D94D8;
  if (!qword_1006D94D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D94D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003353D8()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("the most recent email to Gerald", 0x1FuLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("the last email to my brother", 0x1CuLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  sub_1002612B0();
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  return v4;
}

uint64_t sub_100335508(uint64_t a1)
{
  v30 = a1;
  v65 = 0;
  v61 = &v64;
  v64 = 0;
  v60 = &v63;
  v63 = 0;
  v50 = sub_10025C9B0(&qword_1006D95C8);
  v26 = *(v50 - 8);
  v27 = v50 - 8;
  v15 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v50);
  v53 = &v15 - v15;
  v45 = sub_10025C9B0(&qword_1006D95D0);
  v24 = *(v45 - 8);
  v25 = v45 - 8;
  v16 = (v24[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v30);
  v49 = &v15 - v16;
  v17 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v1);
  v42 = &v15 - v17;
  v18 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v48 = &v15 - v18;
  v65 = v5;
  v58 = sub_100335D14();
  v19 = 17;
  v28 = 1;
  v57 = &unk_100661CD8;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v38 = 1;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unsubscribe from ", v19, 1);
  object = v6._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);

  v32 = &unk_1005031B0;
  KeyPath = swift_getKeyPath();
  v33 = sub_10027D124();
  v21 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v36 = "";
  v37 = 0;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v38 & 1);
  v23 = v7._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  v8 = v48;

  v41 = v24[2];
  v40 = v24 + 2;
  v41(v42, v8, v45);
  v44 = v24[4];
  v43 = v24 + 4;
  v44(v49, v42, v45);
  v47 = v24[1];
  v46 = v24 + 1;
  v47(v8, v45);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v54 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v52 = *(v26 + 8);
  v51 = v26 + 8;
  v52(v53, v50);

  v64 = v54;
  v29 = 33;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("I don't want to receive any more ", v29, v38 & 1);
  v31 = v9._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);

  v35 = swift_getKeyPath();
  v34 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v36, v37, v38 & 1);
  v39 = v10._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);

  v41(v42, v48, v45);
  v44(v49, v42, v45);
  v47(v48, v45);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v55 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v52(v53, v50);

  v63 = v55;
  v56 = sub_10025C9B0(&qword_1006D95D8);
  v11 = _allocateUninitializedArray<A>(_:)();
  v12 = v55;
  *v13 = v54;
  v13[1] = v12;
  sub_1002612B0();
  v59 = v11;
  v62 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  return v62;
}

uint64_t sub_100335B5C(uint64_t a1)
{
  v8 = 0;
  v7 = sub_100335D8C;
  v21 = 0;
  v18 = &v20;
  v20 = 0;
  v13 = type metadata accessor for _AssistantIntent.Value();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v6 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v14 = &v5 - v6;
  v21 = a1;
  KeyPath = swift_getKeyPath();
  sub_10027D124();
  v9 = _AssistantIntent.IntentProjection.subscript.getter();
  sub_100335D14();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v15 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v11 + 8))(v14, v13);

  v20 = v15;
  v16 = sub_10025C9B0(&qword_1006D9518);
  v2 = _allocateUninitializedArray<A>(_:)();
  *v3 = v15;
  sub_1002612B0();
  v17 = v2;
  v19 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  sub_100264880();
  return v19;
}

unint64_t sub_100335D14()
{
  v2 = qword_1006D94E0;
  if (!qword_1006D94E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D94E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100335D8C()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("all Zara emails", 0xFuLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Banana Republic email marketing", 0x1FuLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Wayfair mail messages", 0x15uLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  sub_1002612B0();
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v5;
}

uint64_t sub_100335F1C(uint64_t a1)
{
  v64 = a1;
  v111 = 0;
  v103 = &v110;
  v110 = 0;
  v102 = &v109;
  v109 = 0;
  v101 = &v108;
  v108 = 0;
  v100 = &v107;
  v107 = 0;
  v99 = &v106;
  v106 = 0;
  v98 = &v105;
  v105 = 0;
  v84 = sub_10025C9B0(&qword_1006D95B0);
  v42 = *(v84 - 8);
  v43 = v84 - 8;
  v31 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v84);
  v87 = &v31 - v31;
  v79 = sub_10025C9B0(&qword_1006D95B8);
  v40 = *(v79 - 8);
  v41 = v79 - 8;
  v32 = (v40[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v64);
  v83 = &v31 - v32;
  v33 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v1);
  v76 = &v31 - v33;
  v34 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v82 = &v31 - v34;
  v111 = v5;
  v96 = sub_1002C1424();
  v35 = 22;
  v62 = 1;
  v95 = &unk_100659868;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v72 = 1;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Don't remind me about ", v35, 1);
  object = v6._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);

  v66 = &unk_100503170;
  KeyPath = swift_getKeyPath();
  v67 = sub_10027D124();
  v37 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v70 = "";
  v71 = 0;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v72 & 1);
  v39 = v7._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  v8 = v82;

  v75 = v40[2];
  v74 = v40 + 2;
  v75(v76, v8, v79);
  v78 = v40[4];
  v77 = v40 + 4;
  v78(v83, v76, v79);
  v81 = v40[1];
  v80 = v40 + 1;
  v81(v8, v79);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v88 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v86 = *(v42 + 8);
  v85 = v42 + 8;
  v86(v87, v84);

  v110 = v88;
  v48 = 25;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Remove the read later on ", v48, v72 & 1);
  v44 = v9._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);

  v46 = swift_getKeyPath();
  v45 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v70, v71, v72 & 1);
  v47 = v10._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  v11 = v82;

  v75(v76, v11, v79);
  v78(v83, v76, v79);
  v81(v11, v79);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v89 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v86(v87, v84);

  v109 = v89;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Delete my email reminder ", v48, v72 & 1);
  v49 = v12._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);

  v51 = swift_getKeyPath();
  v50 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v70, v71, v72 & 1);
  v52 = v13._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  v14 = v82;

  v75(v76, v14, v79);
  v78(v83, v76, v79);
  v81(v14, v79);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v90 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v86(v87, v84);

  v108 = v90;
  v53 = 24;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Stop reminding me about ", v53, v72 & 1);
  v54 = v15._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);

  v56 = swift_getKeyPath();
  v55 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v70, v71, v72 & 1);
  v57 = v16._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  v17 = v82;

  v75(v76, v17, v79);
  v78(v83, v76, v79);
  v81(v17, v79);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v91 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v86(v87, v84);

  v107 = v91;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Mark ", 5uLL, v72 & 1);
  v58 = v18._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);

  v60 = swift_getKeyPath();
  v59 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" as completed", 0xDuLL, v72 & 1);
  v61 = v19._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  v20 = v82;

  v75(v76, v20, v79);
  v78(v83, v76, v79);
  v81(v20, v79);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v92 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v86(v87, v84);

  v106 = v92;
  v63 = 40;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v21 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("I don't need to be reminded to reply to ", v63, v72 & 1);
  v65 = v21._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);

  v69 = swift_getKeyPath();
  v68 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v70, v71, v72 & 1);
  v73 = v22._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);

  v75(v76, v82, v79);
  v78(v83, v76, v79);
  v81(v82, v79);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v93 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v86(v87, v84);

  v105 = v93;
  v94 = sub_10025C9B0(&qword_1006D95C0);
  v23 = _allocateUninitializedArray<A>(_:)();
  v24 = v89;
  v25 = v90;
  v26 = v91;
  v27 = v92;
  v28 = v93;
  *v29 = v88;
  v29[1] = v24;
  v29[2] = v25;
  v29[3] = v26;
  v29[4] = v27;
  v29[5] = v28;
  sub_1002612B0();
  v97 = v23;
  v104 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v104;
}

uint64_t sub_100336E30(uint64_t a1)
{
  v8 = 0;
  v7 = sub_100336FE8;
  v21 = 0;
  v18 = &v20;
  v20 = 0;
  v13 = type metadata accessor for _AssistantIntent.Value();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v6 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v14 = &v5 - v6;
  v21 = a1;
  KeyPath = swift_getKeyPath();
  sub_10027D124();
  v9 = _AssistantIntent.IntentProjection.subscript.getter();
  sub_1002C1424();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v15 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v11 + 8))(v14, v13);

  v20 = v15;
  v16 = sub_10025C9B0(&qword_1006D9518);
  v2 = _allocateUninitializedArray<A>(_:)();
  *v3 = v15;
  sub_1002612B0();
  v17 = v2;
  v19 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  sub_100264880();
  return v19;
}

uint64_t sub_100336FE8()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("that email about the conference cancellation", 0x2CuLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("my flight change email", 0x16uLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("email about Pilates class", 0x19uLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  sub_1002612B0();
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v5;
}

uint64_t sub_100337178(uint64_t a1)
{
  v39 = a1;
  v75 = 0;
  v70 = &v74;
  v74 = 0;
  v69 = &v73;
  v73 = 0;
  v68 = &v72;
  v72 = 0;
  v57 = sub_10025C9B0(&qword_1006D9590);
  v30 = *(v57 - 8);
  v31 = v57 - 8;
  v19 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v57);
  v60 = &v19 - v19;
  v52 = sub_10025C9B0(&qword_1006D9598);
  v28 = *(v52 - 8);
  v29 = v52 - 8;
  v20 = (v28[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v39);
  v56 = &v19 - v20;
  v21 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v1);
  v49 = &v19 - v21;
  v22 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v55 = &v19 - v22;
  v75 = v5;
  v66 = sub_100337D04();
  v23 = 7;
  v36 = 1;
  v65 = &unk_1006627E8;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v45 = 1;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unflag ", v23, 1);
  object = v6._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);

  v41 = &unk_100503080;
  KeyPath = swift_getKeyPath();
  v42 = sub_10027D124();
  v25 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v45 & 1);
  v27 = v7._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  v8 = v55;

  v48 = v28[2];
  v47 = v28 + 2;
  v48(v49, v8, v52);
  v51 = v28[4];
  v50 = v28 + 4;
  v51(v56, v49, v52);
  v54 = v28[1];
  v53 = v28 + 1;
  v54(v8, v52);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v61 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v59 = *(v30 + 8);
  v58 = v30 + 8;
  v59(v60, v57);

  v74 = v61;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v37 = "Find ";
  v38 = 5;
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Find ", 5uLL, v45 & 1);
  v32 = v9._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);

  v34 = swift_getKeyPath();
  v33 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" and unflag it", 0xEuLL, v45 & 1);
  v35 = v10._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  v11 = v55;

  v48(v49, v11, v52);
  v51(v56, v49, v52);
  v54(v11, v52);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v62 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v59(v60, v57);

  v73 = v62;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v37, v38, v45 & 1);
  v40 = v12._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);

  v44 = swift_getKeyPath();
  v43 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" and unflag them", 0x10uLL, v45 & 1);
  v46 = v13._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);

  v48(v49, v55, v52);
  v51(v56, v49, v52);
  v54(v55, v52);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v63 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v59(v60, v57);

  v72 = v63;
  v64 = sub_10025C9B0(&qword_1006D95A0);
  v14 = _allocateUninitializedArray<A>(_:)();
  v15 = v62;
  v16 = v63;
  *v17 = v61;
  v17[1] = v15;
  v17[2] = v16;
  sub_1002612B0();
  v67 = v14;
  v71 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v71;
}

_BYTE *sub_1003379B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1003422F0(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_10043CEA4();
  result = __dst;
  *a2 = v2;
  sub_1003423B8();
  return result;
}

_BYTE *sub_100337A18(uint64_t *a1, uint64_t *a2)
{
  sub_1002A730C(a1, &v5);
  sub_1003422F0(a2, v4);
  memcpy(__dst, v4, sizeof(__dst));
  sub_10043D21C();
  result = __dst;
  sub_1003423B8();
  return result;
}

uint64_t sub_100337A8C(uint64_t a1)
{
  v6[1] = a1;
  v10 = 0;
  v6[2] = sub_100337D7C;
  v9 = sub_100338040;
  v26 = 0;
  v22 = &v25;
  v25 = 0;
  v21 = &v24;
  v24 = 0;
  v13 = type metadata accessor for _AssistantIntent.Value();
  v7 = *(v13 - 8);
  v8 = v13 - 8;
  v6[0] = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v16 = v6 - v6[0];
  v26 = a1;
  v6[4] = swift_getKeyPath();
  sub_10027D124();
  v6[3] = _AssistantIntent.IntentProjection.subscript.getter();
  v11 = sub_100337D04();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v17 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v15 = *(v7 + 8);
  v14 = v7 + 8;
  v15(v16, v13);

  v25 = v17;
  KeyPath = swift_getKeyPath();
  sub_100342420();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v18 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v15(v16, v13);

  v24 = v18;
  v19 = sub_10025C9B0(&qword_1006D9518);
  v2 = _allocateUninitializedArray<A>(_:)();
  v3 = v18;
  *v4 = v17;
  v4[1] = v3;
  sub_1002612B0();
  v20 = v2;
  v23 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  return v23;
}

unint64_t sub_100337D04()
{
  v2 = qword_1006D94E8;
  if (!qword_1006D94E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D94E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100337D7C()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("the email my boss sent me this morning", 0x26uLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("the email from yesterday about orange juice", 0x2BuLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("all my emails about koalas", 0x1AuLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("the email with my brother's flight information", 0x2EuLL, 1);
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  v0[3] = v5;
  sub_1002612B0();
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v6;
}

_BYTE *sub_100337F6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1003422F0(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_10046F058();
  result = __dst;
  *a2 = v2;
  sub_1003423B8();
  return result;
}

_BYTE *sub_100337FD4(uint64_t a1, uint64_t *a2)
{
  sub_1003422F0(a2, v3);
  memcpy(__dst, v3, sizeof(__dst));
  sub_10046F0B4();
  result = __dst;
  sub_1003423B8();
  return result;
}

uint64_t sub_100338040()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("false", 5uLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  sub_1002612B0();
  v3 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  return v3;
}

uint64_t sub_10033810C(uint64_t a1)
{
  v115 = a1;
  v181 = 0;
  v167 = &v180;
  v180 = 0;
  v166 = &v179;
  v179 = 0;
  v165 = &v178;
  v178 = 0;
  v164 = &v177;
  v177 = 0;
  v163 = &v176;
  v176 = 0;
  v162 = &v175;
  v175 = 0;
  v161 = &v174;
  v174 = 0;
  v160 = &v173;
  v173 = 0;
  v159 = &v172;
  v172 = 0;
  v158 = &v171;
  v171 = 0;
  v157 = &v170;
  v170 = 0;
  v156 = &v169;
  v169 = 0;
  v135 = sub_10025C9B0(&qword_1006D9590);
  v65 = *(v135 - 8);
  v66 = v135 - 8;
  v55 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v135);
  v138 = &v55 - v55;
  v130 = sub_10025C9B0(&qword_1006D9598);
  v63 = *(v130 - 8);
  v64 = v130 - 8;
  v56 = (v63[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v115);
  v134 = &v55 - v56;
  v57 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v1);
  v127 = &v55 - v57;
  v58 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v133 = &v55 - v58;
  v181 = v5;
  v154 = sub_100337D04();
  v98 = 5;
  v113 = 1;
  v153 = &unk_1006627E8;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v123 = 1;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Flag ", v98, 1);
  object = v6._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);

  v117 = &unk_100503080;
  KeyPath = swift_getKeyPath();
  v118 = sub_10027D124();
  v60 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v121 = "";
  v122 = 0;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v123 & 1);
  v62 = v7._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  v8 = v133;

  v126 = v63[2];
  v125 = v63 + 2;
  v126(v127, v8, v130);
  v129 = v63[4];
  v128 = v63 + 4;
  v129(v134, v127, v130);
  v132 = v63[1];
  v131 = v63 + 1;
  v132(v8, v130);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v140 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v137 = *(v65 + 8);
  v136 = v65 + 8;
  v137(v138, v135);

  v180 = v140;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v97 = "Find ";
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Find ", v98, v123 & 1);
  v67 = v9._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);

  v69 = swift_getKeyPath();
  v68 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v139 = 12;
  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" and flag it", 0xCuLL, v123 & 1);
  v70 = v10._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  v11 = v133;

  v126(v127, v11, v130);
  v129(v134, v127, v130);
  v132(v11, v130);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v141 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v137(v138, v135);

  v179 = v141;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v97, v98, v123 & 1);
  v71 = v12._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);

  v73 = swift_getKeyPath();
  v72 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" and flag them", 0xEuLL, v123 & 1);
  v74 = v13._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  v14 = v133;

  v126(v127, v14, v130);
  v129(v134, v127, v130);
  v132(v14, v130);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v142 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v137(v138, v135);

  v178 = v142;
  v75 = 16;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Set the flag on ", v75, v123 & 1);
  v76 = v15._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);

  v78 = swift_getKeyPath();
  v77 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v121, v122, v123 & 1);
  v79 = v16._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  v17 = v133;

  v126(v127, v17, v130);
  v129(v134, v127, v130);
  v132(v17, v130);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v143 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v137(v138, v135);

  v177 = v143;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Add flag to ", v139, v123 & 1);
  v80 = v18._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);

  v82 = swift_getKeyPath();
  v81 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v121, v122, v123 & 1);
  v83 = v19._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  v20 = v133;

  v126(v127, v20, v130);
  v129(v134, v127, v130);
  v132(v20, v130);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v144 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v137(v138, v135);

  v176 = v144;
  v108 = 20;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v21 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Turn on the flag on ", v108, v123 & 1);
  v84 = v21._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);

  v86 = swift_getKeyPath();
  v85 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v121, v122, v123 & 1);
  v87 = v22._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  v23 = v133;

  v126(v127, v23, v130);
  v129(v134, v127, v130);
  v132(v23, v130);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v145 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v137(v138, v135);

  v175 = v145;
  v88 = 13;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v24 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Default flag ", v88, v123 & 1);
  v89 = v24._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);

  v91 = swift_getKeyPath();
  v90 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v25 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v121, v122, v123 & 1);
  v92 = v25._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  v26 = v133;

  v126(v127, v26, v130);
  v129(v134, v127, v130);
  v132(v26, v130);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v146 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v137(v138, v135);

  v174 = v146;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v27 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v97, v98, v123 & 1);
  v93 = v27._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);

  v95 = swift_getKeyPath();
  v94 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v28 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" and default flag it", v108, v123 & 1);
  v96 = v28._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  v29 = v133;

  v126(v127, v29, v130);
  v129(v134, v127, v130);
  v132(v29, v130);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v147 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v137(v138, v135);

  v173 = v147;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v30 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v97, v98, v123 & 1);
  v99 = v30._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);

  v101 = swift_getKeyPath();
  v100 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v31 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" and default flag them", 0x16uLL, v123 & 1);
  v102 = v31._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);
  v32 = v133;

  v126(v127, v32, v130);
  v129(v134, v127, v130);
  v132(v32, v130);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v148 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v137(v138, v135);

  v172 = v148;
  v103 = 24;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v33 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Set the default flag on ", v103, v123 & 1);
  v104 = v33._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);

  v106 = swift_getKeyPath();
  v105 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v34 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v121, v122, v123 & 1);
  v107 = v34._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v34);
  v35 = v133;

  v126(v127, v35, v130);
  v129(v134, v127, v130);
  v132(v35, v130);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v149 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v137(v138, v135);

  v171 = v149;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v36 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Add default flag to ", v108, v123 & 1);
  v109 = v36._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v36);

  v111 = swift_getKeyPath();
  v110 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v37 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v121, v122, v123 & 1);
  v112 = v37._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v37);
  v38 = v133;

  v126(v127, v38, v130);
  v129(v134, v127, v130);
  v132(v38, v130);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v150 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v137(v138, v135);

  v170 = v150;
  v114 = 28;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v39 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Turn on the default flag on ", v114, v123 & 1);
  v116 = v39._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v39);

  v120 = swift_getKeyPath();
  v119 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v40 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v121, v122, v123 & 1);
  v124 = v40._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v40);

  v126(v127, v133, v130);
  v129(v134, v127, v130);
  v132(v133, v130);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v151 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v137(v138, v135);

  v169 = v151;
  v152 = sub_10025C9B0(&qword_1006D95A0);
  v41 = _allocateUninitializedArray<A>(_:)();
  v42 = v141;
  v43 = v142;
  v44 = v143;
  v45 = v144;
  v46 = v145;
  v47 = v146;
  v48 = v147;
  v49 = v148;
  v50 = v149;
  v51 = v150;
  v52 = v151;
  *v53 = v140;
  v53[1] = v42;
  v53[2] = v43;
  v53[3] = v44;
  v53[4] = v45;
  v53[5] = v46;
  v53[6] = v47;
  v53[7] = v48;
  v53[8] = v49;
  v53[9] = v50;
  v53[10] = v51;
  v53[11] = v52;
  sub_1002612B0();
  v155 = v41;
  v168 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v168;
}

uint64_t sub_100339F3C(uint64_t a1)
{
  v6[1] = a1;
  v10 = 0;
  v6[2] = sub_100337D7C;
  v9 = sub_100325154;
  v26 = 0;
  v22 = &v25;
  v25 = 0;
  v21 = &v24;
  v24 = 0;
  v13 = type metadata accessor for _AssistantIntent.Value();
  v7 = *(v13 - 8);
  v8 = v13 - 8;
  v6[0] = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v16 = v6 - v6[0];
  v26 = a1;
  v6[4] = swift_getKeyPath();
  sub_10027D124();
  v6[3] = _AssistantIntent.IntentProjection.subscript.getter();
  v11 = sub_100337D04();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v17 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v15 = *(v7 + 8);
  v14 = v7 + 8;
  v15(v16, v13);

  v25 = v17;
  KeyPath = swift_getKeyPath();
  sub_100342420();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v18 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v15(v16, v13);

  v24 = v18;
  v19 = sub_10025C9B0(&qword_1006D9518);
  v2 = _allocateUninitializedArray<A>(_:)();
  v3 = v18;
  *v4 = v17;
  v4[1] = v3;
  sub_1002612B0();
  v20 = v2;
  v23 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  return v23;
}

uint64_t sub_10033A1B4(uint64_t a1)
{
  v30 = a1;
  v63 = 0;
  v59 = &v62;
  v62 = 0;
  v58 = &v61;
  v61 = 0;
  v48 = sub_10025C9B0(&qword_1006D9590);
  v26 = *(v48 - 8);
  v27 = v48 - 8;
  v16 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v48);
  v51 = &v15 - v16;
  v43 = sub_10025C9B0(&qword_1006D9598);
  v24 = *(v43 - 8);
  v25 = v43 - 8;
  v17 = (v24[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v30);
  v47 = &v15 - v17;
  v18 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v1);
  v40 = &v15 - v18;
  v19 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v46 = &v15 - v19;
  v63 = v5;
  v56 = sub_100337D04();
  v28 = 1;
  v55 = &unk_1006627E8;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v36 = 1;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Move ", 5uLL, 1);
  object = v6._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);

  v32 = &unk_100503080;
  KeyPath = swift_getKeyPath();
  v33 = sub_10027D124();
  v21 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to junk", 8uLL, v36 & 1);
  v23 = v7._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  v8 = v46;

  v39 = v24[2];
  v38 = v24 + 2;
  v39(v40, v8, v43);
  v42 = v24[4];
  v41 = v24 + 4;
  v42(v47, v40, v43);
  v45 = v24[1];
  v44 = v24 + 1;
  v45(v8, v43);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v52 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v50 = *(v26 + 8);
  v49 = v26 + 8;
  v50(v51, v48);

  v62 = v52;
  v29 = 12;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Please junk ", v29, v36 & 1);
  v31 = v9._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);

  v35 = swift_getKeyPath();
  v34 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v36 & 1);
  v37 = v10._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);

  v39(v40, v46, v43);
  v42(v47, v40, v43);
  v45(v46, v43);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v53 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v50(v51, v48);

  v61 = v53;
  v54 = sub_10025C9B0(&qword_1006D95A0);
  v11 = _allocateUninitializedArray<A>(_:)();
  v12 = v53;
  *v13 = v52;
  v13[1] = v12;
  sub_1002612B0();
  v57 = v11;
  v60 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  return v60;
}

uint64_t sub_10033A7F0(uint64_t a1)
{
  v6[1] = a1;
  v10 = 0;
  v6[2] = sub_10033AA68;
  v9 = sub_100325154;
  v26 = 0;
  v22 = &v25;
  v25 = 0;
  v21 = &v24;
  v24 = 0;
  v13 = type metadata accessor for _AssistantIntent.Value();
  v7 = *(v13 - 8);
  v8 = v13 - 8;
  v6[0] = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v16 = v6 - v6[0];
  v26 = a1;
  v6[4] = swift_getKeyPath();
  sub_10027D124();
  v6[3] = _AssistantIntent.IntentProjection.subscript.getter();
  v11 = sub_100337D04();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v17 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v15 = *(v7 + 8);
  v14 = v7 + 8;
  v15(v16, v13);

  v25 = v17;
  KeyPath = swift_getKeyPath();
  sub_100342420();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v18 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v15(v16, v13);

  v24 = v18;
  v19 = sub_10025C9B0(&qword_1006D9518);
  v2 = _allocateUninitializedArray<A>(_:)();
  v3 = v18;
  *v4 = v17;
  v4[1] = v3;
  sub_1002612B0();
  v20 = v2;
  v23 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  return v23;
}

uint64_t sub_10033AA68()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("all promotional emails", 0x16uLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("the email about the national tuba convention", 0x2CuLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  sub_1002612B0();
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  return v4;
}

_BYTE *sub_10033AB98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1003422F0(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_10046F118();
  result = __dst;
  *a2 = v2;
  sub_1003423B8();
  return result;
}

_BYTE *sub_10033AC00(uint64_t a1, uint64_t *a2)
{
  sub_1003422F0(a2, v3);
  memcpy(__dst, v3, sizeof(__dst));
  sub_10046F174();
  result = __dst;
  sub_1003423B8();
  return result;
}

uint64_t sub_10033AC6C(uint64_t a1)
{
  v29 = a1;
  v63 = 0;
  v59 = &v62;
  v62 = 0;
  v58 = &v61;
  v61 = 0;
  v48 = sub_10025C9B0(&qword_1006D9590);
  v26 = *(v48 - 8);
  v27 = v48 - 8;
  v16 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v48);
  v51 = &v15 - v16;
  v43 = sub_10025C9B0(&qword_1006D9598);
  v24 = *(v43 - 8);
  v25 = v43 - 8;
  v17 = (v24[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v29);
  v47 = &v15 - v17;
  v18 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v1);
  v40 = &v15 - v18;
  v19 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v46 = &v15 - v19;
  v63 = v5;
  v56 = sub_100337D04();
  v28 = 1;
  v55 = &unk_1006627E8;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v36 = 1;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Mark ", 5uLL, 1);
  object = v6._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);

  v31 = &unk_100503080;
  KeyPath = swift_getKeyPath();
  v32 = sub_10027D124();
  v21 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v35 = 8;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" as read", 8uLL, v36 & 1);
  v23 = v7._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  v8 = v46;

  v39 = v24[2];
  v38 = v24 + 2;
  v39(v40, v8, v43);
  v42 = v24[4];
  v41 = v24 + 4;
  v42(v47, v40, v43);
  v45 = v24[1];
  v44 = v24 + 1;
  v45(v8, v43);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v52 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v50 = *(v26 + 8);
  v49 = v26 + 8;
  v50(v51, v48);

  v62 = v52;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Set ", 4uLL, v36 & 1);
  v30 = v9._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);

  v34 = swift_getKeyPath();
  v33 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to read", v35, v36 & 1);
  v37 = v10._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);

  v39(v40, v46, v43);
  v42(v47, v40, v43);
  v45(v46, v43);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v53 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v50(v51, v48);

  v61 = v53;
  v54 = sub_10025C9B0(&qword_1006D95A0);
  v11 = _allocateUninitializedArray<A>(_:)();
  v12 = v53;
  *v13 = v52;
  v13[1] = v12;
  sub_1002612B0();
  v57 = v11;
  v60 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  return v60;
}

uint64_t sub_10033B2AC(uint64_t a1)
{
  v6[1] = a1;
  v10 = 0;
  v6[2] = sub_10033B524;
  v9 = sub_100325154;
  v26 = 0;
  v22 = &v25;
  v25 = 0;
  v21 = &v24;
  v24 = 0;
  v13 = type metadata accessor for _AssistantIntent.Value();
  v7 = *(v13 - 8);
  v8 = v13 - 8;
  v6[0] = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v16 = v6 - v6[0];
  v26 = a1;
  v6[4] = swift_getKeyPath();
  sub_10027D124();
  v6[3] = _AssistantIntent.IntentProjection.subscript.getter();
  v11 = sub_100337D04();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v17 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v15 = *(v7 + 8);
  v14 = v7 + 8;
  v15(v16, v13);

  v25 = v17;
  KeyPath = swift_getKeyPath();
  sub_100342420();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v18 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v15(v16, v13);

  v24 = v18;
  v19 = sub_10025C9B0(&qword_1006D9518);
  v2 = _allocateUninitializedArray<A>(_:)();
  v3 = v18;
  *v4 = v17;
  v4[1] = v3;
  sub_1002612B0();
  v20 = v2;
  v23 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  return v23;
}

uint64_t sub_10033B524()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("all Peloton emails", 0x12uLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("USC emails from last week", 0x19uLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  sub_1002612B0();
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  return v4;
}

_BYTE *sub_10033B654@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1003422F0(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_10046F1D8();
  result = __dst;
  *a2 = v2;
  sub_1003423B8();
  return result;
}

_BYTE *sub_10033B6BC(uint64_t a1, uint64_t *a2)
{
  sub_1003422F0(a2, v3);
  memcpy(__dst, v3, sizeof(__dst));
  sub_10046F234();
  result = __dst;
  sub_1003423B8();
  return result;
}

uint64_t sub_10033B728(uint64_t a1)
{
  v52 = a1;
  v88 = 0;
  v83 = &v87;
  v87 = 0;
  v82 = &v86;
  v86 = 0;
  v81 = &v85;
  v85 = 0;
  v70 = sub_10025C9B0(&qword_1006D9590);
  v36 = *(v70 - 8);
  v37 = v70 - 8;
  v23 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v70);
  v73 = &v22 - v23;
  v65 = sub_10025C9B0(&qword_1006D9598);
  v34 = *(v65 - 8);
  v35 = v65 - 8;
  v24 = (v34[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v52);
  v69 = &v22 - v24;
  v25 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v1);
  v62 = &v22 - v25;
  v26 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v68 = &v22 - v26;
  v88 = v5;
  v79 = sub_100337D04();
  v45 = 2;
  v78 = &unk_1006627E8;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v58 = 1;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Move ", 5uLL, 1);
  object = v6._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);

  v47 = &unk_100503080;
  KeyPath = swift_getKeyPath();
  v48 = sub_10027D124();
  v28 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to my ", 7uLL, v58 & 1);
  v30 = v7._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);

  v54 = &unk_1005030A8;
  v32 = swift_getKeyPath();
  v55 = sub_1003420CC();
  v31 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v51 = 8;
  v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" mailbox", 8uLL, v58 & 1);
  v33 = v8._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  v9 = v68;

  v61 = v34[2];
  v60 = v34 + 2;
  v61(v62, v9, v65);
  v64 = v34[4];
  v63 = v34 + 4;
  v64(v69, v62, v65);
  v67 = v34[1];
  v66 = v34 + 1;
  v67(v9, v65);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v74 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v72 = *(v36 + 8);
  v71 = v36 + 8;
  v72(v73, v70);

  v87 = v74;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Can you move ", 0xDuLL, v58 & 1);
  v38 = v10._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);

  v40 = swift_getKeyPath();
  v39 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to the mailbox named ", 0x16uLL, v58 & 1);
  v41 = v11._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);

  v43 = swift_getKeyPath();
  v42 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v58 & 1);
  v44 = v12._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  v13 = v68;

  v61(v62, v13, v65);
  v64(v69, v62, v65);
  v67(v13, v65);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v75 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v72(v73, v70);

  v86 = v75;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("All ", 4uLL, v58 & 1);
  v46 = v14._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);

  v50 = swift_getKeyPath();
  v49 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to the ", v51, v58 & 1);
  v53 = v15._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);

  v57 = swift_getKeyPath();
  v56 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" mailbox please", 0xFuLL, v58 & 1);
  v59 = v16._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);

  v61(v62, v68, v65);
  v64(v69, v62, v65);
  v67(v68, v65);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v76 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v72(v73, v70);

  v85 = v76;
  v77 = sub_10025C9B0(&qword_1006D95A0);
  v17 = _allocateUninitializedArray<A>(_:)();
  v18 = v75;
  v19 = v76;
  *v20 = v74;
  v20[1] = v18;
  v20[2] = v19;
  sub_1002612B0();
  v80 = v17;
  v84 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v84;
}

_BYTE *sub_10033C13C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_1003422F0(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  sub_10043CE50();
  memcpy(a2, v4, 0x50uLL);
  result = __dst;
  sub_1003423B8();
  return result;
}

_BYTE *sub_10033C1B4(void *a1, uint64_t *a2)
{
  sub_1003421DC(a1, v5);
  sub_1003422F0(a2, v4);
  memcpy(__dst, v4, sizeof(__dst));
  sub_10046F298(v5);
  result = __dst;
  sub_1003423B8();
  return result;
}

uint64_t sub_10033C224(uint64_t a1)
{
  v6[1] = a1;
  v10 = 0;
  v6[2] = sub_10033C49C;
  v9 = sub_10033C62C;
  v26 = 0;
  v22 = &v25;
  v25 = 0;
  v21 = &v24;
  v24 = 0;
  v13 = type metadata accessor for _AssistantIntent.Value();
  v7 = *(v13 - 8);
  v8 = v13 - 8;
  v6[0] = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v16 = v6 - v6[0];
  v26 = a1;
  v6[4] = swift_getKeyPath();
  sub_10027D124();
  v6[3] = _AssistantIntent.IntentProjection.subscript.getter();
  v11 = sub_100337D04();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v17 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v15 = *(v7 + 8);
  v14 = v7 + 8;
  v15(v16, v13);

  v25 = v17;
  KeyPath = swift_getKeyPath();
  sub_1003420CC();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v18 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v15(v16, v13);

  v24 = v18;
  v19 = sub_10025C9B0(&qword_1006D9518);
  v2 = _allocateUninitializedArray<A>(_:)();
  v3 = v18;
  *v4 = v17;
  v4[1] = v3;
  sub_1002612B0();
  v20 = v2;
  v23 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  return v23;
}

uint64_t sub_10033C49C()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("the email from my boss", 0x16uLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("any emails with the subject Hawaii", 0x22uLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("software update emails", 0x16uLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  sub_1002612B0();
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v5;
}

uint64_t sub_10033C62C()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("work", 4uLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("vacation stuff", 0xEuLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("important", 9uLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  sub_1002612B0();
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v5;
}

uint64_t sub_10033C7BC(uint64_t a1)
{
  v39 = a1;
  v77 = 0;
  v72 = &v76;
  v76 = 0;
  v71 = &v75;
  v75 = 0;
  v70 = &v74;
  v74 = 0;
  v59 = sub_10025C9B0(&qword_1006D9570);
  v30 = *(v59 - 8);
  v31 = v59 - 8;
  v19 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v59);
  v62 = &v19 - v19;
  v54 = sub_10025C9B0(&qword_1006D9578);
  v28 = *(v54 - 8);
  v29 = v54 - 8;
  v20 = (v28[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v39);
  v58 = &v19 - v20;
  v21 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v1);
  v51 = &v19 - v21;
  v22 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v57 = &v19 - v22;
  v77 = v5;
  v68 = sub_10033D2A8();
  v23 = 5;
  v37 = 1;
  v67 = &unk_10065DBA8;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v47 = 1;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Mute ", v23, 1);
  object = v6._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);

  v41 = &unk_100503040;
  KeyPath = swift_getKeyPath();
  v42 = sub_100341EC8();
  v25 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v45 = "";
  v46 = 0;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v47 & 1);
  v27 = v7._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  v8 = v57;

  v50 = v28[2];
  v49 = v28 + 2;
  v50(v51, v8, v54);
  v53 = v28[4];
  v52 = v28 + 4;
  v53(v58, v51, v54);
  v56 = v28[1];
  v55 = v28 + 1;
  v56(v8, v54);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v63 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v61 = *(v30 + 8);
  v60 = v30 + 8;
  v61(v62, v59);

  v76 = v63;
  v32 = 8;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Silence ", v32, v47 & 1);
  v33 = v9._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);

  v35 = swift_getKeyPath();
  v34 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v45, v46, v47 & 1);
  v36 = v10._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  v11 = v57;

  v50(v51, v11, v54);
  v53(v58, v51, v54);
  v56(v11, v54);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v64 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v61(v62, v59);

  v75 = v64;
  v38 = 27;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Turn off notifications for ", v38, v47 & 1);
  v40 = v12._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);

  v44 = swift_getKeyPath();
  v43 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v45, v46, v47 & 1);
  v48 = v13._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);

  v50(v51, v57, v54);
  v53(v58, v51, v54);
  v56(v57, v54);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v65 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v61(v62, v59);

  v74 = v65;
  v66 = sub_10025C9B0(&qword_1006D9580);
  v14 = _allocateUninitializedArray<A>(_:)();
  v15 = v64;
  v16 = v65;
  *v17 = v63;
  v17[1] = v15;
  v17[2] = v16;
  sub_1002612B0();
  v69 = v14;
  v73 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v73;
}

uint64_t sub_10033D004@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100342058(a1, &v5);
  *a2 = sub_1003D64D4();
  a2[1] = v2;
}

uint64_t sub_10033D070(void *a1, uint64_t *a2)
{
  sub_100268860(a1, &v5);
  sub_100342058(a2, &v4);
  sub_1003D654C();
}

uint64_t sub_10033D0F0(uint64_t a1)
{
  v8 = 0;
  v7 = sub_10033D320;
  v21 = 0;
  v18 = &v20;
  v20 = 0;
  v13 = type metadata accessor for _AssistantIntent.Value();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v6 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v14 = &v5 - v6;
  v21 = a1;
  KeyPath = swift_getKeyPath();
  sub_100341EC8();
  v9 = _AssistantIntent.IntentProjection.subscript.getter();
  sub_10033D2A8();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v15 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v11 + 8))(v14, v13);

  v20 = v15;
  v16 = sub_10025C9B0(&qword_1006D9518);
  v2 = _allocateUninitializedArray<A>(_:)();
  *v3 = v15;
  sub_1002612B0();
  v17 = v2;
  v19 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  sub_100264880();
  return v19;
}

unint64_t sub_10033D2A8()
{
  v2 = qword_1006D94F0;
  if (!qword_1006D94F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D94F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10033D320()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("the email thread about volleyball tournament", 0x2CuLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("emails from Donna", 0x11uLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  sub_1002612B0();
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  return v4;
}

uint64_t sub_10033D450(uint64_t a1)
{
  v30 = a1;
  v65 = 0;
  v61 = &v64;
  v64 = 0;
  v60 = &v63;
  v63 = 0;
  v50 = sub_10025C9B0(&qword_1006D9558);
  v26 = *(v50 - 8);
  v27 = v50 - 8;
  v15 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v50);
  v53 = &v15 - v15;
  v45 = sub_10025C9B0(&qword_1006D9560);
  v24 = *(v45 - 8);
  v25 = v45 - 8;
  v16 = (v24[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v30);
  v49 = &v15 - v16;
  v17 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v1);
  v42 = &v15 - v17;
  v18 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v48 = &v15 - v18;
  v65 = v5;
  v58 = sub_10033DD3C();
  v19 = 15;
  v28 = 1;
  v57 = &unk_10065DCE8;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v38 = 1;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Open the draft ", v19, 1);
  object = v6._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);

  v32 = &unk_100503000;
  KeyPath = swift_getKeyPath();
  v33 = sub_10028D658();
  v21 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v36 = "";
  v37 = 0;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v38 & 1);
  v23 = v7._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  v8 = v48;

  v41 = v24[2];
  v40 = v24 + 2;
  v41(v42, v8, v45);
  v44 = v24[4];
  v43 = v24 + 4;
  v44(v49, v42, v45);
  v47 = v24[1];
  v46 = v24 + 1;
  v47(v8, v45);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v54 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v52 = *(v26 + 8);
  v51 = v26 + 8;
  v52(v53, v50);

  v64 = v54;
  v29 = 18;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Where is my draft ", v29, v38 & 1);
  v31 = v9._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);

  v35 = swift_getKeyPath();
  v34 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v36, v37, v38 & 1);
  v39 = v10._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);

  v41(v42, v48, v45);
  v44(v49, v42, v45);
  v47(v48, v45);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v55 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v52(v53, v50);

  v63 = v55;
  v56 = sub_10025C9B0(&qword_1006D9568);
  v11 = _allocateUninitializedArray<A>(_:)();
  v12 = v55;
  *v13 = v54;
  v13[1] = v12;
  sub_1002612B0();
  v59 = v11;
  v62 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  return v62;
}

uint64_t sub_10033DAA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_10027ECA8(a1, v4);
  sub_1003DA188(v4[0], v4[1], v5);
  memcpy(a2, v5, 0x48uLL);
}

uint64_t sub_10033DB0C(void *a1, uint64_t *a2)
{
  sub_1002CD078(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  sub_10027ECA8(a2, v4);
  sub_1003DA214(__dst, v4[0], v4[1]);
}

uint64_t sub_10033DB84(uint64_t a1)
{
  v8 = 0;
  v7 = sub_10033DDB4;
  v21 = 0;
  v18 = &v20;
  v20 = 0;
  v13 = type metadata accessor for _AssistantIntent.Value();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v6 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v14 = &v5 - v6;
  v21 = a1;
  KeyPath = swift_getKeyPath();
  sub_10028D658();
  v9 = _AssistantIntent.IntentProjection.subscript.getter();
  sub_10033DD3C();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v15 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v11 + 8))(v14, v13);

  v20 = v15;
  v16 = sub_10025C9B0(&qword_1006D9518);
  v2 = _allocateUninitializedArray<A>(_:)();
  *v3 = v15;
  sub_1002612B0();
  v17 = v2;
  v19 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  sub_100264880();
  return v19;
}

unint64_t sub_10033DD3C()
{
  v2 = qword_1006D94F8;
  if (!qword_1006D94F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D94F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10033DDB4()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("email about team offsite instructions", 0x25uLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("email to John and James", 0x17uLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("email I created yesterday", 0x19uLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  sub_1002612B0();
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v5;
}

uint64_t sub_10033DF44(uint64_t a1)
{
  v70 = a1;
  v114 = 0;
  v107 = &v113;
  v113 = 0;
  v106 = &v112;
  v112 = 0;
  v105 = &v111;
  v111 = 0;
  v104 = &v110;
  v110 = 0;
  v103 = &v109;
  v109 = 0;
  v90 = sub_10025C9B0(&qword_1006D9540);
  v41 = *(v90 - 8);
  v42 = v90 - 8;
  v31 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v90);
  v93 = &v30 - v31;
  v85 = sub_10025C9B0(&qword_1006D9548);
  v39 = *(v85 - 8);
  v40 = v85 - 8;
  v32 = (v39[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v70);
  v89 = &v30 - v32;
  v33 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v1);
  v82 = &v30 - v33;
  v34 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v88 = &v30 - v34;
  v114 = v5;
  v101 = sub_10033F294();
  v63 = 24;
  v58 = 1;
  v100 = &unk_1006608D0;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v78 = 1;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Remind me later to read ", v63, 1);
  object = v6._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);

  v66 = &unk_100502F98;
  KeyPath = swift_getKeyPath();
  v67 = sub_10027D124();
  v36 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v76 = "";
  v77 = 0;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v78 & 1);
  v38 = v7._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  v8 = v88;

  v81 = v39[2];
  v80 = v39 + 2;
  v81(v82, v8, v85);
  v84 = v39[4];
  v83 = v39 + 4;
  v84(v89, v82, v85);
  v87 = v39[1];
  v86 = v39 + 1;
  v87(v8, v85);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v94 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v92 = *(v41 + 8);
  v91 = v41 + 8;
  v92(v93, v90);

  v113 = v94;
  v43 = 34;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Can you please remind me about my ", v43, v78 & 1);
  v44 = v9._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);

  v46 = swift_getKeyPath();
  v45 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v76, v77, v78 & 1);
  v47 = v10._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  v11 = v88;

  v81(v82, v11, v85);
  v84(v89, v82, v85);
  v87(v11, v85);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v95 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v92(v93, v90);

  v112 = v95;
  v64 = 2;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Remind me ", 0xAuLL, v78 & 1);
  v48 = v12._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);

  v72 = &unk_100502FC0;
  v50 = swift_getKeyPath();
  v73 = sub_100341F40();
  v49 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to respond to ", 0xFuLL, v78 & 1);
  v51 = v13._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);

  v53 = swift_getKeyPath();
  v52 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v76, v77, v78 & 1);
  v54 = v14._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  v15 = v88;

  v81(v82, v15, v85);
  v84(v89, v82, v85);
  v87(v15, v85);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v96 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v92(v93, v90);

  v111 = v96;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Set an reminder about ", 0x16uLL, v78 & 1);
  v55 = v16._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);

  v57 = swift_getKeyPath();
  v56 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", v58, v78 & 1);
  v59 = v17._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);

  v61 = swift_getKeyPath();
  v60 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v76, v77, v78 & 1);
  v62 = v18._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  v19 = v88;

  v81(v82, v19, v85);
  v84(v89, v82, v85);
  v87(v19, v85);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v97 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v92(v93, v90);

  v110 = v97;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Let me know to read ", 0x14uLL, v78 & 1);
  v65 = v20._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);

  v69 = swift_getKeyPath();
  v68 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" at ", 4uLL, v78 & 1);
  v71 = v21._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);

  v75 = swift_getKeyPath();
  v74 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v76, v77, v78 & 1);
  v79 = v22._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);

  v81(v82, v88, v85);
  v84(v89, v82, v85);
  v87(v88, v85);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v98 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v92(v93, v90);

  v109 = v98;
  v99 = sub_10025C9B0(&qword_1006D9550);
  v23 = _allocateUninitializedArray<A>(_:)();
  v24 = v95;
  v25 = v96;
  v26 = v97;
  v27 = v98;
  *v28 = v94;
  v28[1] = v24;
  v28[2] = v25;
  v28[3] = v26;
  v28[4] = v27;
  sub_1002612B0();
  v102 = v23;
  v108 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v108;
}

uint64_t sub_10033ED94@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100342058(a1, &v4);
  *a2 = sub_100446308();
}

uint64_t sub_10033EDFC(uint64_t *a1, uint64_t *a2)
{
  sub_1002A730C(a1, &v5);
  sub_100342058(a2, &v4);
  sub_100446374();
}

uint64_t sub_10033EE70@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7 = a2;
  v4 = a1;
  v5 = (*(*(sub_10025C9B0(&qword_1006D8740) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v4);
  v6 = &v4 - v5;
  sub_100342058(v2, v11);
  v8 = v11[0];
  v9 = v11[1];
  v10 = v11[2];
  sub_1004463F8();
  sub_1002A7168(v6, v7);
}

uint64_t sub_10033EF48(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v6 = a2;
  v5 = (*(*(sub_10025C9B0(&qword_1006D8740) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v4);
  v7 = &v4 - v5;
  sub_1002F29E4(v2, &v4 - v5);
  sub_100342058(v6, &v11);
  v8 = v11;
  v9 = v12;
  v10 = v13;
  sub_10044645C(v7, v11, v12, v13);
}

uint64_t sub_10033F01C(uint64_t a1)
{
  v6[1] = a1;
  v10 = 0;
  v6[2] = sub_10033F30C;
  v9 = sub_10033F49C;
  v26 = 0;
  v22 = &v25;
  v25 = 0;
  v21 = &v24;
  v24 = 0;
  v13 = type metadata accessor for _AssistantIntent.Value();
  v7 = *(v13 - 8);
  v8 = v13 - 8;
  v6[0] = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v16 = v6 - v6[0];
  v26 = a1;
  v6[4] = swift_getKeyPath();
  sub_10027D124();
  v6[3] = _AssistantIntent.IntentProjection.subscript.getter();
  v11 = sub_10033F294();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v17 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v15 = *(v7 + 8);
  v14 = v7 + 8;
  v15(v16, v13);

  v25 = v17;
  KeyPath = swift_getKeyPath();
  sub_100341F40();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v18 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v15(v16, v13);

  v24 = v18;
  v19 = sub_10025C9B0(&qword_1006D9518);
  v2 = _allocateUninitializedArray<A>(_:)();
  v3 = v18;
  *v4 = v17;
  v4[1] = v3;
  sub_1002612B0();
  v20 = v2;
  v23 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  return v23;
}

unint64_t sub_10033F294()
{
  v2 = qword_1006DC5D0;
  if (!qword_1006DC5D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC5D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10033F30C()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("the email about my flower delivery order", 0x28uLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("the application email", 0x15uLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("the email from my eye doctor", 0x1CuLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  sub_1002612B0();
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v5;
}

uint64_t sub_10033F49C()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("today at 3", 0xAuLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("tonight at like 6 pm", 0x14uLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("at 8 tomorrow morning", 0x15uLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  sub_1002612B0();
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v5;
}

uint64_t sub_10033F62C(uint64_t a1)
{
  v48 = a1;
  v89 = 0;
  v83 = &v88;
  v88 = 0;
  v82 = &v87;
  v87 = 0;
  v81 = &v86;
  v86 = 0;
  v80 = &v85;
  v85 = 0;
  v68 = sub_10025C9B0(&qword_1006D9520);
  v34 = *(v68 - 8);
  v35 = v68 - 8;
  v23 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v68);
  v71 = &v23 - v23;
  v63 = sub_10025C9B0(&qword_1006D9528);
  v32 = *(v63 - 8);
  v33 = v63 - 8;
  v24 = (v32[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v48);
  v67 = &v23 - v24;
  v25 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v1);
  v60 = &v23 - v25;
  v26 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v66 = &v23 - v26;
  v89 = v5;
  v78 = sub_1003402F4();
  v27 = 10;
  v46 = 1;
  v77 = &unk_1006619C8;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v56 = 1;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Summarize ", v27, 1);
  object = v6._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);

  v50 = &unk_100502F50;
  KeyPath = swift_getKeyPath();
  v51 = sub_100341EC8();
  v29 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v54 = "";
  v55 = 0;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v56 & 1);
  v31 = v7._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  v8 = v66;

  v59 = v32[2];
  v58 = v32 + 2;
  v59(v60, v8, v63);
  v62 = v32[4];
  v61 = v32 + 4;
  v62(v67, v60, v63);
  v65 = v32[1];
  v64 = v32 + 1;
  v65(v8, v63);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v72 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v70 = *(v34 + 8);
  v69 = v34 + 8;
  v70(v71, v68);

  v88 = v72;
  v36 = 21;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Give me a summary of ", v36, v56 & 1);
  v37 = v9._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);

  v39 = swift_getKeyPath();
  v38 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v54, v55, v56 & 1);
  v40 = v10._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  v11 = v66;

  v59(v60, v11, v63);
  v62(v67, v60, v63);
  v65(v11, v63);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v73 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v70(v71, v68);

  v87 = v73;
  v41 = 23;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("What's the summary for ", v41, v56 & 1);
  v42 = v12._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);

  v44 = swift_getKeyPath();
  v43 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v54, v55, v56 & 1);
  v45 = v13._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  v14 = v66;

  v59(v60, v14, v63);
  v62(v67, v60, v63);
  v65(v14, v63);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v74 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v70(v71, v68);

  v86 = v74;
  v47 = 7;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Sum up ", v47, v56 & 1);
  v49 = v15._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);

  v53 = swift_getKeyPath();
  v52 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v54, v55, v56 & 1);
  v57 = v16._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);

  v59(v60, v66, v63);
  v62(v67, v60, v63);
  v65(v66, v63);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v75 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v70(v71, v68);

  v85 = v75;
  v76 = sub_10025C9B0(&qword_1006D9530);
  v17 = _allocateUninitializedArray<A>(_:)();
  v18 = v73;
  v19 = v74;
  v20 = v75;
  *v21 = v72;
  v21[1] = v18;
  v21[2] = v19;
  v21[3] = v20;
  sub_1002612B0();
  v79 = v17;
  v84 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v84;
}

uint64_t sub_100340070@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10027ECA8(a1, &v5);
  *a2 = sub_10045DA80();
  a2[1] = v2;
}

uint64_t sub_1003400CC(void *a1, uint64_t *a2)
{
  sub_100268860(a1, &v5);
  sub_10027ECA8(a2, &v4);
  sub_10045DAF0();
}

uint64_t sub_10034013C(uint64_t a1)
{
  v8 = 0;
  v7 = sub_10034036C;
  v21 = 0;
  v18 = &v20;
  v20 = 0;
  v13 = type metadata accessor for _AssistantIntent.Value();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v6 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v14 = &v5 - v6;
  v21 = a1;
  KeyPath = swift_getKeyPath();
  sub_100341EC8();
  v9 = _AssistantIntent.IntentProjection.subscript.getter();
  sub_1003402F4();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v15 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v11 + 8))(v14, v13);

  v20 = v15;
  v16 = sub_10025C9B0(&qword_1006D9518);
  v2 = _allocateUninitializedArray<A>(_:)();
  *v3 = v15;
  sub_1002612B0();
  v17 = v2;
  v19 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  sub_100264880();
  return v19;
}

unint64_t sub_1003402F4()
{
  v2 = qword_1006D9500;
  if (!qword_1006D9500)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9500);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10034036C()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("this email", 0xAuLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("this mail", 9uLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("this thread", 0xBuLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("this conversation", 0x11uLL, 1);
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("these emails", 0xCuLL, 1);
  v6 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("these mails", 0xBuLL, 1);
  v7 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("these mail messages", 0x13uLL, 1);
  v8 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  v0[3] = v5;
  v0[4] = v6;
  v0[5] = v7;
  v0[6] = v8;
  sub_1002612B0();
  v9 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v9;
}

uint64_t sub_100340684()
{
  v22 = 0;
  v12 = sub_100340C9C;
  v15 = sub_100340E8C;
  v16 = sub_10034107C;
  v17 = sub_10034120C;
  v18 = sub_1003414C4;
  v19 = sub_100341654;
  v20 = sub_1003417E4;
  v21 = sub_100341BBC;
  v44 = &v53;
  v53 = 0;
  v43 = &v52;
  v52 = 0;
  v42 = &v51;
  v51 = 0;
  v41 = &v50;
  v50 = 0;
  v40 = &v49;
  v49 = 0;
  v39 = &v48;
  v48 = 0;
  v38 = &v47;
  v47 = 0;
  v37 = &v46;
  v46 = 0;
  v23 = type metadata accessor for _AssistantIntent.NegativeAssistantIntentPhrases();
  v13 = *(v23 - 8);
  v14 = v23 - 8;
  v11 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v23);
  v26 = &v10 - v11;
  sub_100288CC8();
  _AssistantIntent.NegativeAssistantIntentPhrases.init<A>(for:phrases:)();
  v27 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildExpression(_:)();
  v25 = *(v13 + 8);
  v24 = v13 + 8;
  v25(v26, v23);

  v53 = v27;
  sub_1002DF920();
  _AssistantIntent.NegativeAssistantIntentPhrases.init<A>(for:phrases:)();
  v28 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildExpression(_:)();
  v25(v26, v23);

  v52 = v28;
  sub_100324770();
  _AssistantIntent.NegativeAssistantIntentPhrases.init<A>(for:phrases:)();
  v29 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildExpression(_:)();
  v25(v26, v23);

  v51 = v29;
  sub_1002C1424();
  _AssistantIntent.NegativeAssistantIntentPhrases.init<A>(for:phrases:)();
  v30 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildExpression(_:)();
  v25(v26, v23);

  v50 = v30;
  sub_1002BA768();
  _AssistantIntent.NegativeAssistantIntentPhrases.init<A>(for:phrases:)();
  v31 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildExpression(_:)();
  v25(v26, v23);

  v49 = v31;
  sub_1002BDAB0();
  _AssistantIntent.NegativeAssistantIntentPhrases.init<A>(for:phrases:)();
  v32 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildExpression(_:)();
  v25(v26, v23);

  v48 = v32;
  sub_10032A2AC();
  _AssistantIntent.NegativeAssistantIntentPhrases.init<A>(for:phrases:)();
  v33 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildExpression(_:)();
  v25(v26, v23);

  v47 = v33;
  sub_100331E94();
  _AssistantIntent.NegativeAssistantIntentPhrases.init<A>(for:phrases:)();
  v34 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildExpression(_:)();
  v25(v26, v23);

  v46 = v34;
  v35 = sub_10025C9B0(&qword_1006D9510);
  v0 = _allocateUninitializedArray<A>(_:)();
  v1 = v28;
  v2 = v29;
  v3 = v30;
  v4 = v31;
  v5 = v32;
  v6 = v33;
  v7 = v34;
  *v8 = v27;
  v8[1] = v1;
  v8[2] = v2;
  v8[3] = v3;
  v8[4] = v4;
  v8[5] = v5;
  v8[6] = v6;
  v8[7] = v7;
  sub_1002612B0();
  v36 = v0;
  v45 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v45;
}

uint64_t sub_100340C9C()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Reply to this email", 0x13uLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Reply all to this email", 0x17uLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Forward this email to Bob and Jane", 0x22uLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Compose a text message", 0x16uLL, 1);
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  v0[3] = v5;
  sub_1002612B0();
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v6;
}

uint64_t sub_100340E8C()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Reply to this email", 0x13uLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Reply all to this email", 0x17uLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Send an email and CC Mark", 0x19uLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Compose a text message", 0x16uLL, 1);
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  v0[3] = v5;
  sub_1002612B0();
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v6;
}

uint64_t sub_10034107C()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Send an email and CC Mark", 0x19uLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Forward this email to Bob and Jane", 0x22uLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Compose a text message", 0x16uLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  sub_1002612B0();
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v5;
}

uint64_t sub_10034120C()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Delete the boxing class email", 0x1DuLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Trash all mail messages from Temu", 0x21uLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Can you please move the furniture delivery email to garbage", 0x3BuLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Delete draft email to my boss", 0x1DuLL, 1);
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Trash the draft mail about summer vacation travel", 0x31uLL, 1);
  v6 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Please delete draft message regarding conference schedule", 0x39uLL, 1);
  v7 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  v0[3] = v5;
  v0[4] = v6;
  v0[5] = v7;
  sub_1002612B0();
  v8 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v8;
}

uint64_t sub_1003414C4()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Delete the boxing class email", 0x1DuLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Trash all mail messages from Temu", 0x21uLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Can you please move the furniture delivery email to garbage", 0x3BuLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  sub_1002612B0();
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v5;
}

uint64_t sub_100341654()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Delete draft email to my boss", 0x1DuLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Trash the draft mail about summer vacation travel", 0x31uLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Please delete draft message regarding conference schedule", 0x39uLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  sub_1002612B0();
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v5;
}

uint64_t sub_1003417E4()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Change the subject to coffee session", 0x24uLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Change the subject of my email to Steve to Memorial Day family picnic", 0x45uLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Change the email body to potluck signup is attached to this email. meet at Balboa Park on Sunday by noon!", 0x69uLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Add Rick to recipients", 0x16uLL, 1);
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Add Jane to cc field", 0x14uLL, 1);
  v6 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Bcc my boss on the email", 0x18uLL, 1);
  v7 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Attach potluck signup spreadsheet to yesterday's email to mom", 0x3DuLL, 1);
  v8 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Add my contact card as an attachment to the draft", 0x31uLL, 1);
  v9 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Address it from my work account", 0x1FuLL, 1);
  v10 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  v0[3] = v5;
  v0[4] = v6;
  v0[5] = v7;
  v0[6] = v8;
  v0[7] = v9;
  v0[8] = v10;
  sub_1002612B0();
  v11 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v11;
}

uint64_t sub_100341BBC()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Save draft", 0xAuLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Save this draft", 0xFuLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Save this as a draft", 0x14uLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Draft the mail about San Diego Zoo Trip for later", 0x31uLL, 1);
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Save my email to Davina for later", 0x21uLL, 1);
  v6 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Save for later", 0xEuLL, 1);
  v7 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  v0[3] = v5;
  v0[4] = v6;
  v0[5] = v7;
  sub_1002612B0();
  v8 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v8;
}

unint64_t sub_100341EC8()
{
  v2 = qword_1006DB2D0;
  if (!qword_1006DB2D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB2D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100341F40()
{
  v2 = qword_1006DC630;
  if (!qword_1006DC630)
  {
    sub_10025CAA4(&qword_1006D8740);
    sub_100341FD8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC630);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100341FD8()
{
  v2 = qword_1006D9538;
  if (!qword_1006D9538)
  {
    type metadata accessor for Date();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9538);
    return WitnessTable;
  }

  return v2;
}

void *sub_100342058(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  v5 = a1[1];

  a2[1] = v5;
  v7 = a1[2];

  result = a2;
  a2[2] = v7;
  return result;
}

unint64_t sub_1003420CC()
{
  v2 = qword_1006D9588;
  if (!qword_1006D9588)
  {
    sub_10025CAA4(&qword_1006DCCE0);
    sub_100342164();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9588);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100342164()
{
  v2 = qword_1006D9E10;
  if (!qword_1006D9E10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9E10);
    return WitnessTable;
  }

  return v2;
}

void *sub_1003421DC(void *a1, void *a2)
{
  if (a1[1])
  {
    *a2 = *a1;
    v4 = a1[1];

    a2[1] = v4;
    v5 = a1[2];
    swift_unknownObjectRetain();
    a2[2] = v5;
    v2 = a1[6];
    a2[6] = v2;
    a2[7] = a1[7];
    (**(v2 - 8))((a2 + 3), (a1 + 3));
    v6 = a1[8];

    a2[8] = v6;
    v7 = a1[9];

    a2[9] = v7;
  }

  else
  {
    memcpy(a2, a1, 0x50uLL);
  }

  return a2;
}

void *sub_1003422F0(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  v4 = a1[1];

  a2[1] = v4;
  v5 = a1[2];

  a2[2] = v5;
  v6 = a1[3];

  a2[3] = v6;
  v8 = a1[4];

  a2[4] = v8;
  v10 = a1[5];

  result = a2;
  a2[5] = v10;
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1003423B8()
{
}

unint64_t sub_100342420()
{
  v2 = qword_1006D95A8;
  if (!qword_1006D95A8)
  {
    sub_10025CAA4(&unk_1006DCCC0);
    sub_1003424B8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D95A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003424B8()
{
  v2 = qword_1006DCCD0;
  if (!qword_1006DCCD0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCCD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100342530()
{
  v2 = qword_1006DCC30;
  if (!qword_1006DCC30)
  {
    sub_10025CAA4(&qword_1006D9640);
    sub_10028035C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCC30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003425C8()
{
  v2 = qword_1006D9648;
  if (!qword_1006D9648)
  {
    sub_10025CAA4(&qword_1006DCC40);
    sub_10028E214();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9648);
    return WitnessTable;
  }

  return v2;
}

void *sub_100342660(uint64_t a1, void *a2)
{
  if (*a1)
  {
    v3 = *a1;
    _objc_retain(*a1);
    *a2 = v3;
    v4 = *(a1 + 8);

    a2[1] = v4;
    v5 = *(a1 + 16);

    a2[2] = v5;
  }

  else
  {
    *a2 = *a1;
    a2[2] = *(a1 + 16);
  }

  return a2;
}

void *sub_100342710(const void *a1, void *a2)
{
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_10025C9B0(&unk_1006D7380);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_100342838(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  v4 = a1[1];

  a2[1] = v4;
  v5 = a1[2];

  a2[2] = v5;
  v6 = a1[3];

  a2[3] = v6;
  v7 = a1[4];

  a2[4] = v7;
  v8 = a1[5];

  a2[5] = v8;
  v9 = a1[6];

  a2[6] = v9;
  v10 = a1[7];

  a2[7] = v10;
  v12 = a1[8];

  a2[8] = v12;
  v14 = a1[9];

  result = a2;
  a2[9] = v14;
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_100342970()
{
}

uint64_t SearchItem.LegacySuggested.init(suggestion:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v64 = a1;
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v83 = 0;
  v80 = 0;
  v78 = 0;
  v79 = 0;
  v77 = 0;
  v59 = 0;
  v2 = type metadata accessor for UUID();
  v56 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v57 = v12 - v56;
  v58 = (*(*(sub_10025C9B0(&unk_1006D9730) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v59);
  v75 = v12 - v58;
  v76 = type metadata accessor for SearchItem.LegacySuggested.Kind();
  v73 = *(v76 - 8);
  v74 = v76 - 8;
  v60 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v59);
  v61 = v12 - v60;
  v62 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v63 = v12 - v62;
  v88 = v12 - v62;
  v65 = type metadata accessor for SearchItem.LegacySuggested();
  v66 = *(v65 - 8);
  v67 = v65 - 8;
  v68 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v64);
  v69 = v12 - v68;
  v70 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v5);
  v71 = v12 - v70;
  v87 = v12 - v70;
  v86 = v7;
  v72 = [v7 category];
  sub_100343598(v75);
  if ((*(v73 + 48))(v75, 1, v76) == 1)
  {
    sub_100343998(v75);
    _objc_release(v72);
    _objc_release(v64);
    return (*(v66 + 56))(v55, 1, 1, v65);
  }

  else
  {
    (*(v73 + 32))(v63, v75, v76);
    _objc_release(v72);
    _objc_retain(v64);
    objc_opt_self();
    v54 = swift_dynamicCastObjCClass();
    if (v54)
    {
      v53 = v54;
    }

    else
    {
      _objc_release(v64);
      v53 = 0;
    }

    v52 = v53;
    if (v53)
    {
      v51 = v52;
      v48 = v52;
      v49 = [v52 image];
      _objc_release(v48);
      v50 = v49;
    }

    else
    {
      v50 = 0;
    }

    v84 = v50;
    if (v50)
    {
      v85 = v84;
    }

    else
    {
      sub_1002A75C8();
      v85 = sub_10025C704();
      if (v84)
      {
        sub_10026A58C(&v84);
      }
    }

    v46 = v85;
    v83 = v85;
    _objc_retain(v64);
    objc_opt_self();
    v47 = swift_dynamicCastObjCClass();
    if (v47)
    {
      v45 = v47;
    }

    else
    {
      _objc_release(v64);
      v45 = 0;
    }

    v44 = v45;
    if (v45)
    {
      v43 = v44;
      v39 = v44;
      v40 = [v44 title];
      v41._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41._object = v9;
      _objc_release(v39);
      _objc_release(v40);
      v42 = v41;
    }

    else
    {
      v42._countAndFlagsBits = 0;
      v42._object = 0;
    }

    v81 = v42;
    if (v42._object)
    {
      v82 = v81;
    }

    else
    {
      v82 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
      if (v81._object)
      {
        sub_100268744();
      }
    }

    v37 = v82;
    v80 = v82;
    _objc_retain(v64);
    objc_opt_self();
    v38 = swift_dynamicCastObjCClass();
    if (v38)
    {
      v36 = v38;
    }

    else
    {
      _objc_release(v64);
      v36 = 0;
    }

    v35 = v36;
    if (v36)
    {
      v34 = v35;
      v30 = v35;
      v10 = [v35 subtitle];
      v31 = v10;
      if (v10)
      {
        v29 = v31;
        v24 = v31;
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v11;
        _objc_release(v24);
        v27 = v25;
        v28 = v26;
      }

      else
      {
        v27 = 0;
        v28 = 0;
      }

      v23 = v28;
      v22 = v27;
      _objc_release(v30);
      v32 = v22;
      v33 = v23;
    }

    else
    {
      v32 = 0;
      v33 = 0;
    }

    v19 = v33;
    v20 = v32;
    v78 = v32;
    v79 = v33;
    _objc_retain(v64);
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (v21)
    {
      v18 = v21;
    }

    else
    {
      _objc_release(v64);
      v18 = 0;
    }

    v17 = v18;
    if (v18)
    {
      v16 = v17;
      v13 = v17;
      v14 = [v17 tintColor];
      _objc_release(v13);
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v12[1] = v15;
    v77 = v15;
    UUID.init()();
    (*(v73 + 16))(v61, v63, v76);
    SearchItem.LegacySuggested.init(id:image:secondaryText:text:tintColor:kind:)();
    (*(v66 + 32))(v71, v69, v65);
    (*(v73 + 8))(v63, v76);
    (*(v66 + 16))(v55, v71, v65);
    (*(v66 + 56))(v55, 0, 1, v65);
    _objc_release(v64);
    return (*(v66 + 8))(v71, v65);
  }
}

void sub_100343598(uint64_t a1@<X8>)
{
  _objc_retain(v1);
  v17 = [objc_opt_self() mailboxCategory];
  v18 = [v1 isGroupedInCategory:?];
  _objc_release(v17);
  if (v18)
  {
    v13 = enum case for SearchItem.LegacySuggested.Kind.mailbox(_:);
    v15 = type metadata accessor for SearchItem.LegacySuggested.Kind();
    v14 = *(v15 - 8);
    (*(v14 + 104))(a1, v13);
    (*(v14 + 56))(a1, 0, 1, v15);
    _objc_release(v1);
  }

  else
  {
    _objc_release(v1);
    _objc_retain(v1);
    v11 = [objc_opt_self() otherCategory];
    v12 = [v1 isGroupedInCategory:?];
    _objc_release(v11);
    if (v12)
    {
      v8 = enum case for SearchItem.LegacySuggested.Kind.other(_:);
      v10 = type metadata accessor for SearchItem.LegacySuggested.Kind();
      v9 = *(v10 - 8);
      (*(v9 + 104))(a1, v8);
      (*(v9 + 56))(a1, 0, 1, v10);
      _objc_release(v1);
    }

    else
    {
      _objc_release(v1);
      _objc_retain(v1);
      v6 = [objc_opt_self() cannedCategory];
      v7 = [v1 isGroupedInCategory:?];
      _objc_release(v6);
      if (v7)
      {
        v3 = enum case for SearchItem.LegacySuggested.Kind.canned(_:);
        v5 = type metadata accessor for SearchItem.LegacySuggested.Kind();
        v4 = *(v5 - 8);
        (*(v4 + 104))(a1, v3);
        (*(v4 + 56))(a1, 0, 1, v5);
        _objc_release(v1);
      }

      else
      {
        _objc_release(v1);
        v2 = type metadata accessor for SearchItem.LegacySuggested.Kind();
        (*(*(v2 - 8) + 56))(a1, 1);
      }
    }
  }
}

uint64_t sub_100343998(uint64_t a1)
{
  v3 = type metadata accessor for SearchItem.LegacySuggested.Kind();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

id sub_100343A40()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell_linkView);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_100343AB0(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell_linkView);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_100343B94()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell____lazy_storage___avatarViewController);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_100290D4C();
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell____lazy_storage___avatarViewController);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void sub_100343C9C(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell____lazy_storage___avatarViewController);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

uint64_t sub_100343D34()
{
  v8 = 0;
  v1 = sub_10025C9B0(&qword_1006D9760);
  v3 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v6 = &v3 - v3;
  v8 = v0;
  v4 = (v0 + OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell_searchItem);
  v5 = &v7;
  swift_beginAccess();
  sub_100343E04(v4, v6);
  swift_endAccess();
  sub_100343F2C(v6);
  return sub_1003446CC(v6);
}

void *sub_100343E04(const void *a1, void *a2)
{
  v6 = type metadata accessor for SearchItem.Link();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_10025C9B0(&qword_1006D9760);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_100343F2C(uint64_t a1)
{
  v41 = a1;
  v33 = sub_100345EE4;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v48 = 0;
  v39 = 0;
  v34 = type metadata accessor for URL();
  v35 = *(v34 - 8);
  v36 = v34 - 8;
  v37 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v34);
  v38 = v10 - v37;
  v40 = (*(*(sub_10025C9B0(&qword_1006D9760) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v39);
  v47 = v10 - v40;
  v46 = type metadata accessor for SearchItem.Link();
  v44 = *(v46 - 8);
  v45 = v46 - 8;
  v42 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v41);
  v43 = v10 - v42;
  v61 = v10 - v42;
  v60 = v2;
  v59 = v1;
  sub_100343E04(v2, v3);
  if ((*(v44 + 48))(v47, 1, v46) == 1)
  {
    return sub_1003446CC(v47);
  }

  (*(v44 + 32))(v43, v47, v46);
  v29 = 0;
  sub_100344774();
  v27 = sub_10025C704();
  v58 = v27;
  SearchItem.Link.title.getter();
  v25 = v5;
  v26 = String._bridgeToObjectiveC()();

  [v27 setTitle:v26];
  _objc_release(v26);
  SearchItem.Link.url.getter();
  URL._bridgeToObjectiveC()(v6);
  v28 = v7;
  (*(v35 + 8))(v38, v34);
  [v27 setURL:v28];
  _objc_release(v28);
  sub_1002A75C8();
  v30 = MFImageGlyphSearchDefaultLink;
  _objc_retain(MFImageGlyphSearchDefaultLink);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = sub_1002A7840();
  _objc_release(v30);
  if (v31)
  {
    v24 = v31;
    v23 = v31;
    v48 = v31;
    sub_10034607C();
    _objc_retain(v23);
    v22 = sub_100345BC4(v23);
    [v27 setImage:?];
    _objc_release(v22);
    _objc_release(v23);
  }

  v16 = &v32[OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell_linkView];
  v17 = &v57;
  v19 = 32;
  v20 = 0;
  swift_beginAccess();
  v18 = *v16;
  _objc_retain(v18);
  swift_endAccess();
  [v18 setMetadata:v27];
  _objc_release(v18);
  v21 = &v32[OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell_richLinkMetadataGeneratorDelegate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10[1] = &Strong;
    v15 = Strong;
    swift_unknownObjectRetain();
    sub_100294754();
    swift_endAccess();
    swift_getObjectType();
    SearchItem.Link.richLinkID.getter();
    v10[2] = v8;
    v14 = String._bridgeToObjectiveC()();

    SearchItem.Link.messageID.getter();
    v10[3] = v9;
    v13 = String._bridgeToObjectiveC()();

    v11 = swift_allocObject();
    v10[4] = v11 + 16;
    _objc_retain(v32);
    swift_unknownObjectWeakInit();
    _objc_release(v32);

    v54 = v33;
    v55 = v11;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = 0;
    v52 = sub_1002919E0;
    v53 = &unk_10065A890;
    v12 = _Block_copy(&aBlock);

    [v15 getRichLinkMetadataForRichLinkID:v14 messageID:v13 handler:v12];
    _Block_release(v12);
    _objc_release(v13);
    _objc_release(v14);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100294754();
    swift_endAccess();
  }

  _objc_release(v27);
  return (*(v44 + 8))(v43, v46);
}

uint64_t sub_1003446CC(uint64_t a1)
{
  v3 = type metadata accessor for SearchItem.Link();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_100344774()
{
  v2 = qword_1006D9768;
  if (!qword_1006D9768)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D9768);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1003447D8@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell_searchItem);
  swift_beginAccess();
  sub_100343E04(v3, a1);
  return swift_endAccess();
}

uint64_t sub_10034483C(uint64_t a1)
{
  v7 = a1;
  v10 = 0;
  v9 = 0;
  v3 = (*(*(sub_10025C9B0(&qword_1006D9760) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v10 = __chkstk_darwin(v7);
  v9 = v1;
  sub_100343E04(v10, &v3 - v3);
  v5 = (v1 + OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell_searchItem);
  v6 = &v8;
  swift_beginAccess();
  sub_1003460E0(v4, v5);
  swift_endAccess();
  sub_100343D34();
  return sub_1003446CC(v7);
}

uint64_t sub_100344924()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_10034498C()
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

char *sub_100344A0C(double a1, double a2, double a3, double a4)
{
  *&v10 = a1;
  *(&v10 + 1) = a2;
  *&v11 = a3;
  *(&v11 + 1) = a4;
  ObjectType = swift_getObjectType();
  v14 = v10;
  v15 = v11;
  v16 = v4;
  v7 = OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell_linkView;
  sub_100346308();
  *&v4[v7] = sub_10025C704();
  *&v16[OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell_senderImageViewWidth] = 0x4041000000000000;
  *&v16[OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell_cornerRadius] = 10.0;
  *&v16[OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell____lazy_storage___avatarViewController] = 0;
  v8 = OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell_searchItem;
  v5 = type metadata accessor for SearchItem.Link();
  (*(*(v5 - 8) + 56))(&v16[v8], 1);
  swift_unknownObjectWeakInit();
  v13.receiver = v16;
  v13.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v13, "initWithFrame:", v10, v11);
  _objc_retain(v12);
  v16 = v12;
  _objc_retain(v12);
  [v12 setIsAccessibilityElement:1];
  _objc_release(v12);
  sub_100344C28();
  _objc_release(v16);
  return v12;
}

void sub_100344C28()
{
  v1 = sub_100343B94();
  v36 = [v1 view];
  _objc_release(v1);
  [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = &v34[OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell_linkView];
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  [v34 addSubview:v3];
  _objc_release(v3);
  [v34 addSubview:v36];
  _objc_retain(v34);
  v4 = [objc_opt_self() secondarySystemBackgroundColor];
  [v34 setBackgroundColor:?];
  _objc_release(v4);
  _objc_release(v34);
  v5 = &v34[OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell_linkView];
  swift_beginAccess();
  v6 = *v5;
  _objc_retain(*v5);
  swift_endAccess();
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v6);
  v7 = &v34[OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell_linkView];
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  [v8 setContentMode:2];
  _objc_release(v8);
  v9 = &v34[OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell_linkView];
  swift_beginAccess();
  v10 = *v9;
  _objc_retain(*v9);
  swift_endAccess();
  _objc_retain(v34);
  [v10 setDelegate:?];
  swift_unknownObjectRelease();
  _objc_release(v10);
  v11 = &v34[OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell_linkView];
  swift_beginAccess();
  v12 = *v11;
  _objc_retain(*v11);
  swift_endAccess();
  [v12 setClipsToBounds:1];
  _objc_release(v12);
  v13 = &v34[OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell_linkView];
  swift_beginAccess();
  v14 = *v13;
  _objc_retain(*v13);
  swift_endAccess();
  [v14 setHidden:0];
  _objc_release(v14);
  v15 = &v34[OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell_linkView];
  swift_beginAccess();
  v16 = *v15;
  _objc_retain(*v15);
  swift_endAccess();
  [v16 _setDisableTapGesture:1];
  _objc_release(v16);
  v31 = objc_opt_self();
  sub_100293824();
  _allocateUninitializedArray<A>(_:)();
  v30 = v0;
  v17 = [v36 widthAnchor];
  v18 = [v17 constraintEqualToConstant:*&v34[OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell_senderImageViewWidth]];
  _objc_release(v17);
  *v30 = v18;
  v20 = [v36 heightAnchor];
  v19 = [v36 widthAnchor];
  v21 = [v20 constraintEqualToAnchor:?];
  _objc_release(v19);
  _objc_release(v20);
  v30[1] = v21;
  v24 = [v36 topAnchor];
  _objc_retain(v34);
  v22 = [v34 layoutMarginsGuide];
  _objc_release(v34);
  v23 = [v22 topAnchor];
  _objc_release(v22);
  v25 = [v24 constraintEqualToAnchor:v23];
  _objc_release(v23);
  _objc_release(v24);
  v30[2] = v25;
  v28 = [v36 trailingAnchor];
  _objc_retain(v34);
  v26 = [v34 layoutMarginsGuide];
  _objc_release(v34);
  v27 = [v26 trailingAnchor];
  _objc_release(v26);
  v29 = [v28 constraintEqualToAnchor:v27];
  _objc_release(v27);
  _objc_release(v28);
  v30[3] = v29;
  sub_1002612B0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v31 activateConstraints:isa];
  _objc_release(isa);
  v33 = &v34[OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell_linkView];
  swift_beginAccess();
  v35 = *v33;
  _objc_retain(*v33);
  swift_endAccess();
  [v35 mf_pinToView:v34 usingLayoutMargins:0];
  _objc_release(v35);
  _objc_release(v36);
}

void sub_100345478()
{
  v1 = OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell_linkView;
  sub_100346308();
  *v1 = sub_10025C704();
  *OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell_senderImageViewWidth = 0x4041000000000000;
  *OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell_cornerRadius = 10.0;
  *OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell____lazy_storage___avatarViewController = 0;
  v2 = OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell_searchItem;
  v0 = type metadata accessor for SearchItem.Link();
  (*(*(v0 - 8) + 56))(v2, 1);
  swift_unknownObjectWeakInit();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("init(coder:) has not been implemented", 0x25uLL, 1);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10034570C()
{
  v4 = (v0 + OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell_linkView);
  swift_beginAccess();
  v5 = *v4;
  _objc_retain(*v4);
  swift_endAccess();
  v6 = [v5 accessibilityLabel];
  if (v6)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    _objc_release(v6);
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  _objc_release(v5);
  return v3;
}

void sub_1003458F4()
{
  ObjectType = swift_getObjectType();
  v12 = v0;
  _objc_retain(v0);
  v11.receiver = v0;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, "layoutSubviews");
  _objc_release(v0);
  _objc_retain(v0);
  [v0 setClipsToBounds:1];
  _objc_release(v0);
  _objc_retain(v0);
  v6 = [v0 layer];
  _objc_release(v0);
  [v6 setCornerRadius:*&v0[OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell_cornerRadius]];
  _objc_release(v6);
  _objc_retain(v0);
  v7 = [v0 layer];
  _objc_release(v0);
  _objc_retain(kCACornerCurveContinuous);
  [v7 setCornerCurve:kCACornerCurveContinuous];
  _objc_release(kCACornerCurveContinuous);
  _objc_release(v7);
  v8 = &v0[OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell_linkView];
  swift_beginAccess();
  v10 = *v8;
  _objc_retain(*v8);
  swift_endAccess();
  _objc_retain(v9);
  [v9 bounds];
  [v10 setFrame:{v1, v2, v3, v4}];
  _objc_release(v9);
  _objc_release(v10);
}

void sub_100345C04(void *a1, uint64_t a2)
{
  v25 = a1;
  v19 = a2;
  v12 = sub_100346A3C;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v13 = 0;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v14 - 8);
  v16 = v14 - 8;
  v17 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v18 = &v7 - v17;
  v20 = type metadata accessor for DispatchQoS();
  v21 = *(v20 - 8);
  v22 = v20 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v25);
  v24 = &v7 - v23;
  v35 = v2;
  v34 = v3 + 16;
  _objc_retain(v2);
  if (v25)
  {
    v11 = v25;
    v10 = v25;
    v33 = v25;
    v7 = 0;
    sub_100272A48();
    v9 = static OS_dispatch_queue.main.getter();

    _objc_retain(v10);
    v4 = swift_allocObject();
    v5 = v12;
    v6 = v10;
    *(v4 + 16) = v19;
    *(v4 + 24) = v6;
    v31 = v5;
    v32 = v4;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = 0;
    v29 = sub_1002AEFF8;
    v30 = &unk_10065A8E0;
    v8 = _Block_copy(&aBlock);

    sub_100274F94();
    sub_100274FAC();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    (*(v15 + 8))(v18, v14);
    (*(v21 + 8))(v24, v20);
    _Block_release(v8);
    _objc_release(v9);
    _objc_release(v10);
  }
}

void sub_100345EEC(uint64_t a1, void *a2)
{
  v6[5] = (a1 + 16);
  v6[4] = a2;
  swift_beginAccess();
  v6[0] = swift_unknownObjectWeakLoadStrong();
  if (v6[0])
  {
    v3 = v6[0];
    _objc_retain(v6[0]);
    sub_10026A58C(v6);
    swift_endAccess();
    v2 = &v3[OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell_linkView];
    swift_beginAccess();
    v4 = *v2;
    _objc_retain(*v2);
    swift_endAccess();
    _objc_release(v3);
    [v4 setMetadata:a2];
    _objc_release(v4);
  }

  else
  {
    sub_10026A58C(v6);
    swift_endAccess();
  }
}

uint64_t sub_100346018(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_10034607C()
{
  v2 = qword_1006D9778;
  if (!qword_1006D9778)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D9778);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_1003460E0(const void *a1, void *a2)
{
  v7 = type metadata accessor for SearchItem.Link();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = sub_10025C9B0(&qword_1006D9760);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = sub_10025C9B0(&qword_1006D9760);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

unint64_t sub_100346308()
{
  v2 = qword_1006D9780;
  if (!qword_1006D9780)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D9780);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_10034636C(uint64_t a1)
{

  if (!a1)
  {
    sub_1002913A4();
    _allocateUninitializedArray<A>(_:)();
  }

  v3 = sub_100343B94();

  sub_1002913A4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 updateContacts:isa];
  _objc_release(isa);
  _objc_release(v3);
}

uint64_t sub_10034648C()
{
  _objc_release(*(v0 + OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell_linkView));
  sub_10026A58C((v0 + OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell____lazy_storage___avatarViewController));
  sub_1003446CC(v0 + OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell_searchItem);
  result = v0 + OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell_richLinkMetadataGeneratorDelegate;
  sub_10026498C();
  return result;
}

void sub_100346584()
{
  sub_100278E90();
  v3 = (v2 + OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell_linkView);
  swift_beginAccess();
  v4 = *v3;
  _objc_retain(*v3);
  swift_endAccess();
  v5 = static NSObject.== infix(_:_:)();
  _objc_release(v4);
  if (v5)
  {
    v0 = (v2 + OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell_linkView);
    swift_beginAccess();
    v1 = *v0;
    _objc_retain(*v0);
    swift_endAccess();
    [v1 setNeedsLayout];
    _objc_release(v1);
  }
}

uint64_t type metadata accessor for LinkConfigurationCell()
{
  v1 = qword_1006D97C8;
  if (!qword_1006D97C8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_10034683C()
{
  updated = sub_100346950();
  if (v0 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_100346950()
{
  v4 = qword_1006D97D8;
  if (!qword_1006D97D8)
  {
    type metadata accessor for SearchItem.Link();
    v3 = type metadata accessor for Optional();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1006D97D8);
      return v1;
    }
  }

  return v4;
}

id sub_1003469EC(void *a1)
{
  v4 = [v1 initWithPlatformImage:?];
  _objc_release(a1);
  return v4;
}

uint64_t sub_100346A48(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void *sub_100346AAC()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_mapImage);
  _objc_retain(v2);
  return v2;
}

id sub_100346AF4(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() effectWithStyle:a1];

  return v1;
}

void *sub_100346B80()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_visualEffectView);
  _objc_retain(v2);
  return v2;
}

void *sub_100346BC8()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_dateLabel);
  _objc_retain(v2);
  return v2;
}

id sub_100346C58()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell____lazy_storage___avatarViewController);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_100290D4C();
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell____lazy_storage___avatarViewController);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void sub_100346D60(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell____lazy_storage___avatarViewController);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

uint64_t sub_100346DF8()
{
  v8 = 0;
  v1 = sub_10025C9B0(&qword_1006D9878);
  v3 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v6 = &v3 - v3;
  v8 = v0;
  v4 = (v0 + OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_searchItem);
  v5 = &v7;
  swift_beginAccess();
  sub_100346EC8(v4, v6);
  swift_endAccess();
  sub_100346FF0(v6);
  return sub_100347AA0(v6);
}

void *sub_100346EC8(const void *a1, void *a2)
{
  v6 = type metadata accessor for SearchItem.Location();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_10025C9B0(&qword_1006D9878);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_100346FF0(const void *a1)
{
  v76 = a1;
  v57 = "Date that a geographical location was sent";
  v66 = "Date that is unknown";
  v48 = &protocol witness table for MainActor;
  v49 = &unk_1005039E8;
  v103 = 0;
  v102 = 0;
  v97 = 0;
  v98 = 0;
  v91 = 0;
  v92 = 0;
  v85 = 0;
  v86 = 0;
  v2 = sub_10025C9B0(&qword_1006D7ED8);
  v50 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v51 = &v20 - v50;
  v3 = sub_10025C9B0(&qword_1006D9878);
  v52 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v53 = &v20 - v52;
  v54 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v20 - v52);
  v79 = &v20 - v54;
  v77 = 0;
  v55 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v77);
  v72 = &v20 - v55;
  v56 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v76);
  v69 = &v20 - v56;
  v103 = v5;
  v102 = v1;
  v78 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SEARCH_SUGGESTION_LOCATION_FROM_DATE", 0x24uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v62 = "Main";
  v63 = 4;
  v58 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Main", 4uLL, v78 & 1);
  v64 = off_100647000;
  v6 = objc_opt_self();
  v65 = &selRef_mailAlertControllerForHandoffError_acknowledgmentObserver_;
  v59 = [v6 mainBundle];
  sub_100015CC0();
  v99 = v57;
  v100 = 42;
  v67 = 2;
  v101 = 2;
  v68 = 0;
  v60 = String.init(localized:table:bundle:locale:comment:)();
  v61 = v7;
  v97 = v60;
  v98 = v7;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SEARCH_SUGGESTION_UNKNOWN_DATE", 0x1EuLL, v78 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v70 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v62, v63, v78 & 1);
  v71 = [objc_opt_self() v65[165]];
  sub_100015CC0();
  v93 = v66;
  v94 = 20;
  v95 = v67;
  v96 = v68 & 1 & v78;
  v73 = String.init(localized:table:bundle:locale:comment:)();
  v74 = v8;
  v91 = v73;
  v92 = v8;
  v75 = *(v1 + OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_dateLabel);
  _objc_retain(v75);
  sub_100346EC8(v76, v79);
  v80 = type metadata accessor for SearchItem.Location();
  v81 = *(v80 - 8);
  v82 = v80 - 8;
  v83 = *(v81 + 48);
  v84 = v81 + 48;
  if (v83(v79, v78) == 1)
  {
    sub_100347AA0(v79);
    v45 = 0;
    v46 = 0;
  }

  else
  {
    v43 = SearchItem.Location.date.getter();
    v44 = v9;
    (*(v81 + 8))(v79, v80);
    v45 = v43;
    v46 = v44;
  }

  v87 = v45;
  v88 = v46;

  if (v88)
  {
    v89 = v87;
    v90 = v88;
  }

  else
  {

    v89 = v73;
    v90 = v74;
    if (v88)
    {
      sub_100268744();
    }
  }

  v37 = v90;
  v38 = static String.+ infix(_:_:)();
  v39 = v10;

  v40 = String._bridgeToObjectiveC()();

  [v75 setText:v40];
  _objc_release(v40);
  _objc_release(v75);
  v41 = *&v47[OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_visualEffectView];
  _objc_retain(v41);
  v42 = 1;
  [v41 setHidden:0];
  _objc_release(v41);
  sub_100346EC8(v76, v53);
  if ((v83)(v53, v42, v80) == 1)
  {
    sub_100347AA0(v53);
    v35 = 0;
    v36 = 0;
  }

  else
  {
    v33 = SearchItem.Location.address.getter();
    v34 = v11;
    (*(v81 + 8))(v53, v80);
    v35 = v33;
    v36 = v34;
  }

  v31 = v36;
  v32 = v35;
  if (v36)
  {
    v29 = v32;
    v30 = v31;
    v28 = v31;
    v24 = v32;
    v85 = v32;
    v86 = v31;
    v26 = 0;
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v51, 1);
    v22 = 7;
    v25 = swift_allocObject();
    v20 = v25 + 16;
    _objc_retain(v47);
    v21 = v47;
    swift_unknownObjectWeakInit();
    _objc_release(v21);

    type metadata accessor for MainActor();
    v23 = static MainActor.shared.getter();
    v13 = swift_allocObject();
    v14 = v48;
    v15 = v24;
    v16 = v28;
    v17 = v13;
    v18 = v25;
    v27 = v17;
    v17[2] = v23;
    v17[3] = v14;
    v17[4] = v18;
    v17[5] = v15;
    v17[6] = v16;

    sub_1002C7DB4(v26, v26, v51, v49, v27, &type metadata for () + 8);
  }
}

uint64_t sub_100347AA0(uint64_t a1)
{
  v3 = type metadata accessor for SearchItem.Location();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_100347B48@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_searchItem);
  swift_beginAccess();
  sub_100346EC8(v3, a1);
  return swift_endAccess();
}

uint64_t sub_100347BAC(uint64_t a1)
{
  v7 = a1;
  v10 = 0;
  v9 = 0;
  v3 = (*(*(sub_10025C9B0(&qword_1006D9878) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v10 = __chkstk_darwin(v7);
  v9 = v1;
  sub_100346EC8(v10, &v3 - v3);
  v5 = (v1 + OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_searchItem);
  v6 = &v8;
  swift_beginAccess();
  sub_100349E80(v4, v5);
  swift_endAccess();
  sub_100346DF8();
  return sub_100347AA0(v7);
}

char *sub_100347C94(double a1, double a2, double a3, double a4)
{
  *&v13 = a1;
  *(&v13 + 1) = a2;
  *&v14 = a3;
  *(&v14 + 1) = a4;
  ObjectType = swift_getObjectType();
  v17 = v13;
  v18 = v14;
  v19 = v4;
  v8 = OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_mapImage;
  sub_1002649B4();
  *&v4[v8] = sub_10025C704();
  v9 = OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_visualEffectView;
  sub_10034A0A8();
  sub_10034A10C();
  v5 = sub_100346AF4(6);
  *&v19[v9] = sub_100346B40(v5);
  v10 = OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_dateLabel;
  sub_100264928();
  *&v19[v10] = sub_10025C704();
  *&v19[OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_horizontalPadding] = 2.0;
  *&v19[OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_senderImageViewWidth] = 0x4041000000000000;
  *&v19[OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell____lazy_storage___avatarViewController] = 0;
  v11 = OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_searchItem;
  v6 = type metadata accessor for SearchItem.Location();
  (*(*(v6 - 8) + 56))(&v19[v11], 1);
  v16.receiver = v19;
  v16.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v16, "initWithFrame:", v13, v14);
  _objc_retain(v15);
  v19 = v15;
  _objc_retain(v15);
  [v15 setIsAccessibilityElement:1];
  _objc_release(v15);
  sub_100347F20();
  _objc_release(v19);
  return v15;
}

void sub_100347F20()
{
  v1 = sub_100346C58();
  v73 = [v1 view];
  _objc_release(v1);
  [v73 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v71[OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_mapImage];
  _objc_retain(v2);
  [v71 addSubview:v2];
  _objc_release(v2);
  v3 = *&v71[OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_visualEffectView];
  _objc_retain(v3);
  [v71 addSubview:v3];
  _objc_release(v3);
  v4 = *&v71[OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_dateLabel];
  _objc_retain(v4);
  [v71 addSubview:v4];
  _objc_release(v4);
  v5 = *&v71[OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_mapImage];
  _objc_retain(v5);
  [v71 insertSubview:v73 aboveSubview:v5];
  _objc_release(v5);
  _objc_retain(v71);
  v6 = [objc_opt_self() secondarySystemBackgroundColor];
  [v71 setBackgroundColor:?];
  _objc_release(v6);
  _objc_release(v71);
  v7 = *&v71[OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_mapImage];
  _objc_retain(v7);
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v7);
  v8 = *&v71[OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_mapImage];
  _objc_retain(v8);
  [v8 setContentMode:?];
  _objc_release(v8);
  v9 = *&v71[OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_mapImage];
  _objc_retain(v9);
  [v9 setClipsToBounds:1];
  _objc_release(v9);
  v10 = *&v71[OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_mapImage];
  _objc_retain(v10);
  [v10 setHidden:1];
  _objc_release(v10);
  v11 = *&v71[OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_visualEffectView];
  _objc_retain(v11);
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v11);
  v12 = *&v71[OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_dateLabel];
  _objc_retain(v12);
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v12);
  v15 = *&v71[OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_dateLabel];
  _objc_retain(v15);
  v13 = objc_opt_self();
  _objc_retain(UIFontTextStyleCaption2);
  v14 = [v13 preferredFontForTextStyle:UIFontTextStyleCaption2];
  _objc_release(UIFontTextStyleCaption2);
  UILabel.contentSizeAdjustingFont(_:)(v14);
  _objc_release(v14);
  _objc_release(v15);
  v16 = *&v71[OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_dateLabel];
  _objc_retain(v16);
  [v16 setNumberOfLines:2];
  _objc_release(v16);
  v17 = *&v71[OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_dateLabel];
  _objc_retain(v17);
  [v17 setTextAlignment:1];
  _objc_release(v17);
  v19 = *&v71[OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_dateLabel];
  _objc_retain(v19);
  v18 = [objc_opt_self() labelColor];
  [v19 setTextColor:?];
  _objc_release(v18);
  _objc_release(v19);
  v69 = objc_opt_self();
  sub_100293824();
  _allocateUninitializedArray<A>(_:)();
  v68 = v0;
  v20 = *&v71[OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_visualEffectView];
  _objc_retain(v20);
  v23 = [v20 bottomAnchor];
  _objc_release(v20);
  v21 = *&v71[OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_mapImage];
  _objc_retain(v21);
  v22 = [v21 bottomAnchor];
  _objc_release(v21);
  v24 = [v23 constraintEqualToAnchor:v22];
  _objc_release(v22);
  _objc_release(v23);
  *v68 = v24;
  v25 = *&v71[OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_visualEffectView];
  _objc_retain(v25);
  v28 = [v25 heightAnchor];
  _objc_release(v25);
  _objc_retain(v71);
  v26 = [v71 layoutMarginsGuide];
  _objc_release(v71);
  v27 = [v26 heightAnchor];
  _objc_release(v26);
  v29 = [v28 constraintEqualToAnchor:v27 multiplier:0.2];
  _objc_release(v27);
  _objc_release(v28);
  v68[1] = v29;
  v30 = *&v71[OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_visualEffectView];
  _objc_retain(v30);
  v32 = [v30 trailingAnchor];
  _objc_release(v30);
  _objc_retain(v71);
  v31 = [v71 trailingAnchor];
  _objc_release(v71);
  v33 = [v32 constraintEqualToAnchor:v31];
  _objc_release(v31);
  _objc_release(v32);
  v68[2] = v33;
  v34 = *&v71[OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_visualEffectView];
  _objc_retain(v34);
  v36 = [v34 leadingAnchor];
  _objc_release(v34);
  _objc_retain(v71);
  v35 = [v71 leadingAnchor];
  _objc_release(v71);
  v37 = [v36 constraintEqualToAnchor:v35];
  _objc_release(v35);
  _objc_release(v36);
  v68[3] = v37;
  v38 = [v73 widthAnchor];
  v39 = [v38 constraintEqualToConstant:*&v71[OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_senderImageViewWidth]];
  _objc_release(v38);
  v68[4] = v39;
  v41 = [v73 heightAnchor];
  v40 = [v73 widthAnchor];
  v42 = [v41 constraintEqualToAnchor:?];
  _objc_release(v40);
  _objc_release(v41);
  v68[5] = v42;
  v45 = [v73 topAnchor];
  _objc_retain(v71);
  v43 = [v71 layoutMarginsGuide];
  _objc_release(v71);
  v44 = [v43 topAnchor];
  _objc_release(v43);
  v46 = [v45 constraintEqualToAnchor:v44];
  _objc_release(v44);
  _objc_release(v45);
  v68[6] = v46;
  v49 = [v73 trailingAnchor];
  _objc_retain(v71);
  v47 = [v71 layoutMarginsGuide];
  _objc_release(v71);
  v48 = [v47 trailingAnchor];
  _objc_release(v47);
  v50 = [v49 constraintEqualToAnchor:v48];
  _objc_release(v48);
  _objc_release(v49);
  v68[7] = v50;
  v51 = *&v71[OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_dateLabel];
  _objc_retain(v51);
  v53 = [v51 leadingAnchor];
  _objc_release(v51);
  _objc_retain(v71);
  v52 = [v71 leadingAnchor];
  _objc_release(v71);
  v54 = [v53 constraintEqualToAnchor:v52 constant:*&v71[OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_horizontalPadding]];
  _objc_release(v52);
  _objc_release(v53);
  v68[8] = v54;
  v55 = *&v71[OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_dateLabel];
  _objc_retain(v55);
  v57 = [v55 trailingAnchor];
  _objc_release(v55);
  _objc_retain(v71);
  v56 = [v71 trailingAnchor];
  _objc_release(v71);
  v58 = [v57 constraintEqualToAnchor:v56 constant:-*&v71[OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_horizontalPadding]];
  _objc_release(v56);
  _objc_release(v57);
  v68[9] = v58;
  v59 = *&v71[OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_dateLabel];
  _objc_retain(v59);
  v61 = [v59 bottomAnchor];
  _objc_release(v59);
  _objc_retain(v71);
  v60 = [v71 bottomAnchor];
  _objc_release(v71);
  v62 = [v61 constraintEqualToAnchor:v60];
  _objc_release(v60);
  _objc_release(v61);
  v68[10] = v62;
  v63 = *&v71[OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_dateLabel];
  _objc_retain(v63);
  v66 = [v63 topAnchor];
  _objc_release(v63);
  v64 = *&v71[OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_visualEffectView];
  _objc_retain(v64);
  v65 = [v64 topAnchor];
  _objc_release(v64);
  v67 = [v66 constraintEqualToAnchor:v65];
  _objc_release(v65);
  _objc_release(v66);
  v68[11] = v67;
  sub_1002612B0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v69 activateConstraints:isa];
  _objc_release(isa);
  v72 = *&v71[OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_mapImage];
  _objc_retain(v72);
  [v72 mf_pinToView:v71 usingLayoutMargins:0];
  _objc_release(v72);
  _objc_release(v73);
}

void sub_100348F98()
{
  v2 = OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_mapImage;
  sub_1002649B4();
  *v2 = sub_10025C704();
  v3 = OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_visualEffectView;
  sub_10034A0A8();
  sub_10034A10C();
  v0 = sub_100346AF4(6);
  *v3 = sub_100346B40(v0);
  v4 = OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_dateLabel;
  sub_100264928();
  *v4 = sub_10025C704();
  *OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_horizontalPadding = 2.0;
  *OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_senderImageViewWidth = 0x4041000000000000;
  *OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell____lazy_storage___avatarViewController = 0;
  v5 = OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_searchItem;
  v1 = type metadata accessor for SearchItem.Location();
  (*(*(v1 - 8) + 56))(v5, 1);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("init(coder:) has not been implemented", 0x25uLL, 1);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10034929C()
{
  sub_10025C9B0(&unk_1006D7340);
  _allocateUninitializedArray<A>(_:)();
  v14 = v1;
  v15 = v0 + OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_searchItem;
  swift_beginAccess();
  v2 = type metadata accessor for SearchItem.Location();
  if ((*(*(v2 - 8) + 48))(v15, 1))
  {
    swift_endAccess();
    *v14 = 0;
    v14[1] = 0;
  }

  else
  {
    *v14 = SearchItem.Location.address.getter();
    v14[1] = v3;
    swift_endAccess();
  }

  v11 = *(v13 + OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_dateLabel);
  _objc_retain(v11);
  v12 = [v11 text];
  if (v12)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v4;
    _objc_release(v12);
    v9 = v7;
    v10 = v8;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v14[2] = v9;
  v14[3] = v10;
  _objc_release(v11);
  sub_1002612B0();
  sub_10025C9B0(&qword_1006D7EE0);
  sub_1002C8BF0();
  Sequence.compactMap<A>(_:)();
  sub_100264880();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(", ", 2uLL, 1);
  sub_10025C9B0(&unk_1006D69B0);
  sub_1002C8C78();
  v6 = BidirectionalCollection<>.joined(separator:)();

  sub_100264880();
  return v6;
}

void sub_100349684()
{
  ObjectType = swift_getObjectType();
  v5 = v0;
  _objc_retain(v0);
  v4.receiver = v0;
  v4.super_class = ObjectType;
  objc_msgSendSuper2(&v4, "layoutSubviews");
  _objc_release(v2);
  _objc_retain(v2);
  [v2 setClipsToBounds:1];
  _objc_release(v2);
  _objc_retain(v2);
  v3 = [v2 layer];
  _objc_release(v2);
  [v3 setCornerRadius:5.0];
  _objc_release(v3);
}

uint64_t sub_1003497E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a6;
  v6[12] = a5;
  v6[11] = a4;
  v6[7] = v6;
  v6[8] = 0;
  v6[5] = 0;
  v6[6] = 0;
  v6[9] = 0;
  v6[10] = 0;
  v6[8] = a4 + 16;
  v6[5] = a5;
  v6[6] = a6;
  type metadata accessor for MainActor();
  v6[14] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[15] = v9;
  v6[16] = v7;

  return _swift_task_switch(sub_1003498C8, v9);
}

uint64_t sub_1003498C8()
{
  *(v0 + 56) = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 136) = Strong;
  swift_endAccess();
  if (Strong)
  {
    v6[9] = Strong;
    v1 = swift_task_alloc();
    v6[18] = v1;
    *v1 = v6[7];
    v1[1] = sub_100349A58;
    v2 = v6[13];
    v3 = v6[12];

    return static LocationSnapshotGenerator.generateThumbnail(address:)(v3, v2);
  }

  else
  {

    v4 = *(v6[7] + 8);

    return v4();
  }
}

uint64_t sub_100349A58(uint64_t a1)
{
  v5 = *v1;
  v4 = *v1;
  *(v4 + 56) = *v1;
  *(v4 + 152) = a1;

  v2 = *(v5 + 120);

  return _swift_task_switch(sub_100349B9C, v2);
}

uint64_t sub_100349B9C()
{
  v9 = v0[19];
  v7 = v0[17];
  v0[7] = v0;
  v0[10] = v9;
  v6 = *(v7 + OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_mapImage);
  _objc_retain(v6);
  [v6 setImage:v9];
  _objc_release(v6);
  v8 = *(v7 + OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_mapImage);
  _objc_retain(v8);
  v4 = v5[17];
  [v8 setHidden:{v9 == 0, v5[19]}];
  _objc_release(v8);
  _objc_release(v3);
  _objc_release(v4);

  v1 = *(v5[7] + 8);

  return v1();
}

uint64_t sub_100349D90(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_10025FAC4;

  return sub_1003497E4(a1, v6, v7, v8, v9, v10);
}

void *sub_100349E80(const void *a1, void *a2)
{
  v7 = type metadata accessor for SearchItem.Location();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = sub_10025C9B0(&qword_1006D9878);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = sub_10025C9B0(&qword_1006D9878);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

unint64_t sub_10034A0A8()
{
  v2 = qword_1006D9880;
  if (!qword_1006D9880)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D9880);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_10034A10C()
{
  v2 = qword_1006D9888;
  if (!qword_1006D9888)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D9888);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_10034A170(uint64_t a1)
{

  if (!a1)
  {
    sub_1002913A4();
    _allocateUninitializedArray<A>(_:)();
  }

  v3 = sub_100346C58();

  sub_1002913A4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 updateContacts:isa];
  _objc_release(isa);
  _objc_release(v3);
}

uint64_t sub_10034A290()
{
  _objc_release(*(v0 + OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_mapImage));
  _objc_release(*(v0 + OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_visualEffectView));
  _objc_release(*(v0 + OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_dateLabel));
  sub_10026A58C((v0 + OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell____lazy_storage___avatarViewController));
  return sub_100347AA0(v0 + OBJC_IVAR____TtC10MobileMail25LocationConfigurationCell_searchItem);
}

uint64_t type metadata accessor for LocationConfigurationCell()
{
  v1 = qword_1006D98B8;
  if (!qword_1006D98B8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_10034A458()
{
  updated = sub_10034A570();
  if (v0 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_10034A570()
{
  v4 = qword_1006D98C8;
  if (!qword_1006D98C8)
  {
    type metadata accessor for SearchItem.Location();
    v3 = type metadata accessor for Optional();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1006D98C8);
      return v1;
    }
  }

  return v4;
}

id sub_10034A60C(void *a1)
{
  v4 = [v1 initWithEffect:?];
  _objc_release(a1);
  return v4;
}

uint64_t Logger.appIntentLogger.unsafeMutableAddressor()
{
  if (qword_1006D5EE8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return sub_1000208F4(v0, static Logger.appIntentLogger);
}

uint64_t sub_10034A6C8()
{
  v1 = type metadata accessor for Logger();
  sub_10002094C(v1, static Logger.appIntentLogger);
  sub_1000208F4(v1, static Logger.appIntentLogger);
  return sub_10034A714();
}

uint64_t sub_10034A714()
{
  static Logger.mailUISubsystem.getter();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appIntent", 9uLL, 1);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.appIntentLogger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = Logger.appIntentLogger.unsafeMutableAddressor();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_10034A7D8()
{
  v1 = type metadata accessor for Logger();
  sub_10002094C(v1, static Logger.tipsLogger);
  sub_1000208F4(v1, static Logger.tipsLogger);
  return sub_10034A824();
}

uint64_t sub_10034A824()
{
  static Logger.mailUISubsystem.getter();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("TipKit", 6uLL, 1);
  return Logger.init(subsystem:category:)();
}

uint64_t Logger.tipsLogger.unsafeMutableAddressor()
{
  if (qword_1006D5EF0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return sub_1000208F4(v0, static Logger.tipsLogger);
}

uint64_t static Logger.tipsLogger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = Logger.tipsLogger.unsafeMutableAddressor();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_10034A954()
{
  if (qword_1006D5EF8 != -1)
  {
    swift_once();
  }

  return v1;
}

uint64_t sub_10034A9C8(uint64_t a1)
{
  v9 = a1;
  v8 = type metadata accessor for UUID();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v3 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v4 = &v2 - v3;
  (*(v6 + 16))();
  (*(v6 + 40))(v5, v4, v8);
  return (*(v6 + 8))(v9, v8);
}

uint64_t sub_10034AADC@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v9 = "An email account";
  v1 = sub_10025C9B0(&qword_1006D6280);
  v3 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v20 = &v3 - v3;
  v6 = 0;
  v4 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v13 = &v3 - v4;
  v5 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v12 = &v3 - v5;
  v7 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v10 = &v3 - v7;
  v17 = type metadata accessor for LocalizedStringResource();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v8 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17);
  v19 = &v3 - v8;
  v16 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Account", 7uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v16 & 1);
  sub_100015CC0();
  sub_10025D410(v13);
  v21 = v9;
  v22 = 16;
  v23 = 2;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v14 + 56))(v20, v16, v16, v17);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_10034ADD0()
{
  type metadata accessor for MailAccountEntity();

  EntityProperty.wrappedValue.getter();

  return v1;
}

uint64_t type metadata accessor for MailAccountEntity()
{
  v1 = qword_1006D99B8;
  if (!qword_1006D99B8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_10034AEB8()
{
  type metadata accessor for MailAccountEntity();

  EntityProperty.wrappedValue.setter();
}

void (*sub_10034AF4C(void *a1))(void **a1)
{
  v3 = sub_100294700(0x30uLL);
  *a1 = v3;
  v3[4] = *(v1 + *(type metadata accessor for MailAccountEntity() + 20));

  v3[5] = EntityProperty.wrappedValue.modify();
  return sub_10034AFF4;
}

void sub_10034AFF4(void **a1)
{
  v1 = *a1;
  v1[5](v1, 0);

  free(v1);
}

uint64_t sub_10034B090()
{
  type metadata accessor for MailAccountEntity();

  v1 = EntityProperty.projectedValue.getter();

  return v1;
}

uint64_t sub_10034B0F4()
{
  v2 = *(v0 + *(type metadata accessor for MailAccountEntity() + 20));

  return v2;
}

uint64_t sub_10034B12C(uint64_t a1)
{

  *(v1 + *(type metadata accessor for MailAccountEntity() + 20)) = a1;
}

uint64_t sub_10034B178()
{
  type metadata accessor for MailAccountEntity();

  EntityProperty.wrappedValue.getter();

  return v1;
}

uint64_t sub_10034B1EC()
{
  type metadata accessor for MailAccountEntity();

  EntityProperty.wrappedValue.setter();
}

void (*sub_10034B280(void *a1))(void **a1)
{
  v3 = sub_100294700(0x30uLL);
  *a1 = v3;
  v3[4] = *(v1 + *(type metadata accessor for MailAccountEntity() + 24));

  v3[5] = EntityProperty.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_10034B328()
{
  type metadata accessor for MailAccountEntity();

  v1 = EntityProperty.projectedValue.getter();

  return v1;
}

uint64_t sub_10034B38C()
{
  v2 = *(v0 + *(type metadata accessor for MailAccountEntity() + 24));

  return v2;
}

uint64_t sub_10034B3C4(uint64_t a1)
{

  *(v1 + *(type metadata accessor for MailAccountEntity() + 24)) = a1;
}

uint64_t sub_10034B410()
{
  type metadata accessor for MailAccountEntity();

  EntityProperty.wrappedValue.getter();
}

uint64_t sub_10034B470(const void *a1)
{
  v6 = a1;
  v8 = 0;
  v7 = 0;
  v3 = (*(*(sub_10025C9B0(&qword_1006D7250) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v8 = __chkstk_darwin(v6);
  v7 = v1;
  v5 = *(v1 + *(type metadata accessor for MailAccountEntity() + 28));

  sub_10034B554(v6, v4);
  EntityProperty.wrappedValue.setter();

  return sub_100286140(v6);
}

void *sub_10034B554(const void *a1, void *a2)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_10025C9B0(&qword_1006D7250);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_10034B67C()
{
  type metadata accessor for MailAccountEntity();

  v1 = EntityProperty.projectedValue.getter();

  return v1;
}

uint64_t sub_10034B6E0()
{
  v2 = *(v0 + *(type metadata accessor for MailAccountEntity() + 28));

  return v2;
}

uint64_t sub_10034B718(uint64_t a1)
{

  *(v1 + *(type metadata accessor for MailAccountEntity() + 28)) = a1;
}

uint64_t sub_10034B764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, const void *a5@<X4>, uint64_t a6@<X8>)
{
  v51 = a6;
  v47 = a1;
  v46 = a2;
  v48 = a3;
  v49 = a4;
  v52 = a5;
  v25 = "Display name field";
  v28 = "Email address field";
  v35 = "Email server field";
  v70 = 0;
  v68 = 0;
  v69 = 0;
  v66 = 0;
  v67 = 0;
  v65 = 0;
  v6 = sub_10025C9B0(&qword_1006D7250);
  v18 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v50 = &v17 - v18;
  v22 = 0;
  v19 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v43 = &v17 - v19;
  v20 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v42 = &v17 - v20;
  v21 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v40 = &v17 - v21;
  v23 = (*(*(type metadata accessor for LocalizedStringResource() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v44 = &v17 - v23;
  v31 = type metadata accessor for MailAccountEntity();
  v24 = (*(*(v31 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v47);
  v53 = &v17 - v24;
  v70 = &v17 - v24;
  v68 = v7;
  v69 = v8;
  v66 = v9;
  v67 = v10;
  v65 = v11;
  UUID.init()();
  v27 = *(v31 + 20);
  sub_10025C9B0(&unk_1006DA2D0);
  v32 = 11;
  v39 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DisplayName", 0xBuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v33 = "AppIntents";
  v34 = 10;
  v26 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v39 & 1);
  sub_100015CC0();
  sub_10025D410(v43);
  v62 = v25;
  v36 = 18;
  v63 = 18;
  v37 = 2;
  v64 = 2;
  v38 = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v12 = EntityProperty<>.init(title:)();
  v13 = v31;
  *(v53 + v27) = v12;
  v30 = *(v13 + 24);
  sub_10025C9B0(&unk_1006D6290);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("EmailAddress", 0xCuLL, v39 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v33, v34, v39 & 1);
  sub_100015CC0();
  sub_10025D410(v43);
  v58 = v28;
  v59 = 19;
  v60 = v37;
  v61 = v38 & 1 & v39;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v14 = EntityProperty<>.init(title:)();
  v15 = v31;
  *(v53 + v30) = v14;
  v45 = *(v15 + 28);
  sub_10025C9B0(&qword_1006D98D0);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("EmailServer", v32, v39 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v41 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v33, v34, v39 & 1);
  sub_100015CC0();
  sub_10025D410(v43);
  v54 = v35;
  v55 = v36;
  v56 = v37;
  v57 = v38 & 1 & v39;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  *(v53 + v45) = EntityProperty<>.init(title:)();
  sub_10034AEB8();
  sub_10034B1EC();
  sub_10034B554(v52, v50);
  sub_10034B470(v50);
  sub_10034BE38(v53, v51);
  sub_100286140(v52);
  return sub_10034BF38(v53);
}

uint64_t sub_10034BE38(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 16))(a2, a1);
  v9 = type metadata accessor for MailAccountEntity();
  v4 = v9[5];
  v5 = *(a1 + v4);

  *(a2 + v4) = v5;
  v7 = v9[6];
  v8 = *(a1 + v7);

  *(a2 + v7) = v8;
  v11 = v9[7];
  v12 = *(a1 + v11);

  result = a2;
  *(a2 + v11) = v12;
  return result;
}

uint64_t sub_10034BF38(uint64_t a1)
{
  v1 = type metadata accessor for UUID();
  (*(*(v1 - 8) + 8))(a1);
  type metadata accessor for MailAccountEntity();

  return a1;
}

void (*sub_10034C028(void *a1))(void **a1, char a2)
{
  v2 = sub_100294700(0x28uLL);
  *a1 = v2;
  v2[4] = sub_10034AF4C(v2);
  return sub_10034C098;
}

void sub_10034C098(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4](v2, 1);
  }

  else
  {
    v2[4](v2, 0);
  }

  free(v2);
}

void (*sub_10034C144(void *a1))(void **a1, char a2)
{
  v2 = sub_100294700(0x28uLL);
  *a1 = v2;
  v2[4] = sub_10034B280(v2);
  return sub_10034C098;
}

unint64_t sub_10034C204()
{
  v2 = qword_1006DA310;
  if (!qword_1006DA310)
  {
    type metadata accessor for MailAccountEntity();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA310);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10034C2BC()
{
  v2 = qword_1006D98D8;
  if (!qword_1006D98D8)
  {
    type metadata accessor for MailAccountEntity();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D98D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10034C374()
{
  v2 = qword_1006D98E0;
  if (!qword_1006D98E0)
  {
    type metadata accessor for MailAccountEntity();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D98E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10034C3F4(uint64_t a1, uint64_t a2)
{
  v2[4] = v2;
  v2[2] = 0;
  v2[3] = 0;
  v2[2] = a1;
  v2[3] = a2;
  return _swift_task_switch(sub_10034C430, 0);
}

uint64_t sub_10034C430()
{
  *(v0 + 32) = v0;
  type metadata accessor for MailAccountEntity();
  v1 = _allocateUninitializedArray<A>(_:)();
  v2 = *(*(v0 + 32) + 8);

  return v2(v1);
}

uint64_t sub_10034C4D0(uint64_t a1)
{
  *(v1 + 16) = v1;
  *(v1 + 24) = 0;
  *(v1 + 24) = a1;
  return _swift_task_switch(sub_10034C504, 0);
}

uint64_t sub_10034C504()
{
  *(v0 + 16) = v0;
  type metadata accessor for MailAccountEntity();
  v1 = _allocateUninitializedArray<A>(_:)();
  v2 = *(*(v0 + 16) + 8);

  return v2(v1);
}

uint64_t sub_10034C5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 24) = a1;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 32) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1002603BC;

  return sub_10034C3F4(a2, a3);
}

uint64_t sub_10034C664(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_100260618;

  return sub_10034C4D0(a1);
}

uint64_t sub_10034C718(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  v4 = sub_10034C7E0();
  *v3 = *(v6 + 16);
  v3[1] = sub_1002609F0;

  return EntityQuery.results()(a1, a2, v4);
}

unint64_t sub_10034C7E0()
{
  v2 = qword_1006D98E8;
  if (!qword_1006D98E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D98E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10034C874()
{
  v2 = qword_1006D98F0;
  if (!qword_1006D98F0)
  {
    type metadata accessor for MailAccountEntity();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D98F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10034C90C()
{
  v2 = qword_1006D98F8;
  if (!qword_1006D98F8)
  {
    type metadata accessor for MailAccountEntity();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D98F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10034C9A4()
{
  v2 = qword_1006D9900;
  if (!qword_1006D9900)
  {
    type metadata accessor for MailAccountEntity();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9900);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10034CA78()
{
  v2 = qword_1006D9908;
  if (!qword_1006D9908)
  {
    type metadata accessor for MailAccountEntity();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9908);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10034CB10()
{
  v2 = qword_1006D9910;
  if (!qword_1006D9910)
  {
    type metadata accessor for MailAccountEntity();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9910);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10034CBA8()
{
  v2 = qword_1006D9918;
  if (!qword_1006D9918)
  {
    type metadata accessor for MailAccountEntity();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9918);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10034CC58()
{
  v2 = qword_1006D9920;
  if (!qword_1006D9920)
  {
    sub_10025CAA4(&qword_1006D9928);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9920);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10034CCF8()
{
  v2 = qword_1006D9930;
  if (!qword_1006D9930)
  {
    type metadata accessor for MailAccountEntity();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9930);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10034CD90()
{
  v2 = qword_1006D9938;
  if (!qword_1006D9938)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9938);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10034CE24()
{
  v2 = qword_1006D9940;
  if (!qword_1006D9940)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9940);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10034CEB8()
{
  v2 = qword_1006D9948;
  if (!qword_1006D9948)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9948);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10034CF4C()
{
  v2 = qword_1006D9950;
  if (!qword_1006D9950)
  {
    sub_10025CAA4(&qword_1006D9958);
    sub_10034CBA8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9950);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10034D034()
{
  v5 = type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    v5 = sub_10034D16C();
    if (v1 <= 0x3F)
    {
      v5 = sub_10034D21C();
      if (v2 <= 0x3F)
      {
        v5 = sub_10034D2B8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v5;
}

uint64_t sub_10034D16C()
{
  v4 = qword_1006D99C8;
  if (!qword_1006D99C8)
  {
    sub_10025CAA4(&unk_1006D7340);
    sub_10028DF54();
    v3 = type metadata accessor for EntityProperty();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1006D99C8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_10034D21C()
{
  v4 = qword_1006D99D0;
  if (!qword_1006D99D0)
  {
    sub_10028DFEC();
    v3 = type metadata accessor for EntityProperty();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1006D99D0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_10034D2B8()
{
  v4 = qword_1006D99D8;
  if (!qword_1006D99D8)
  {
    sub_10025CAA4(&qword_1006D7250);
    sub_10034D368();
    v3 = type metadata accessor for EntityProperty();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1006D99D8);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_10034D368()
{
  v2 = qword_1006D99E0;
  if (!qword_1006D99E0)
  {
    sub_10025CAA4(&qword_1006D7250);
    sub_10034D400();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D99E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10034D400()
{
  v2 = qword_1006D99E8;
  if (!qword_1006D99E8)
  {
    type metadata accessor for URL();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D99E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10034D500()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_10034D5C8()
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void (*sub_10034D648(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR____TtC10MobileMail29MailActionCatchUpFeedbackCell_delegate;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_10029464C;
}

id sub_10034D6F4()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail29MailActionCatchUpFeedbackCell____lazy_storage___thumbsUpButton);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_10034D800();
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail29MailActionCatchUpFeedbackCell____lazy_storage___thumbsUpButton);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void sub_10034D844(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail29MailActionCatchUpFeedbackCell____lazy_storage___thumbsUpButton);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

void (*sub_10034D8DC(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_10034D6F4();
  return sub_10034D938;
}

void sub_10034D938(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    sub_10034D844(v2);
    _objc_release(*a1);
  }

  else
  {
    sub_10034D844(*a1);
  }
}

id sub_10034D9B8()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail29MailActionCatchUpFeedbackCell____lazy_storage___thumbsDownButton);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_10034DAC4();
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail29MailActionCatchUpFeedbackCell____lazy_storage___thumbsDownButton);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void sub_10034DB0C(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail29MailActionCatchUpFeedbackCell____lazy_storage___thumbsDownButton);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

void (*sub_10034DBA4(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_10034D9B8();
  return sub_10034DC00;
}

void sub_10034DC00(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    sub_10034DB0C(v2);
    _objc_release(*a1);
  }

  else
  {
    sub_10034DB0C(*a1);
  }
}

char *sub_10034DD28(double a1, double a2, double a3, double a4)
{
  v15 = 0;
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  swift_unknownObjectWeakInit();
  *OBJC_IVAR____TtC10MobileMail29MailActionCatchUpFeedbackCell____lazy_storage___thumbsUpButton = 0;
  *&v15[OBJC_IVAR____TtC10MobileMail29MailActionCatchUpFeedbackCell____lazy_storage___thumbsDownButton] = 0;
  v10.receiver = v15;
  v10.super_class = type metadata accessor for MailActionCatchUpFeedbackCell();
  v9 = objc_msgSendSuper2(&v10, "initWithFrame:", a1, a2, a3, a4);
  _objc_retain(v9);
  v15 = v9;
  sub_10034E060();
  _objc_release(v15);
  return v9;
}

void sub_10034DEC0()
{
  swift_unknownObjectWeakInit();
  *OBJC_IVAR____TtC10MobileMail29MailActionCatchUpFeedbackCell____lazy_storage___thumbsUpButton = 0;
  *OBJC_IVAR____TtC10MobileMail29MailActionCatchUpFeedbackCell____lazy_storage___thumbsDownButton = 0;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("init(coder:) has not been implemented", 0x25uLL, 1);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10034E060()
{
  sub_100264A18();
  v6 = sub_10025C704();
  [v6 setAxis:0];
  _objc_retain(v6);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v6);
  [v6 setDistribution:1];
  _objc_retain(v4);
  v0 = [v4 contentView];
  _objc_release(v4);
  [v0 addSubview:v6];
  _objc_release(v0);
  v1 = sub_10034D6F4();
  [v6 addArrangedSubview:?];
  _objc_release(v1);
  v2 = sub_10034D9B8();
  [v6 addArrangedSubview:?];
  _objc_release(v2);
  _objc_retain(v4);
  v3 = [v4 contentView];
  _objc_release(v4);
  [v3 setLayoutMargins:{12.0, 20.0, 12.0, 20.0}];
  _objc_release(v3);
  _objc_retain(v4);
  v5 = [v4 contentView];
  _objc_release(v4);
  [v6 mf_pinToView:v5 usingLayoutMargins:1];
  _objc_release(v5);
  _objc_release(v6);
}

id sub_10034E2E8(uint64_t a1, uint64_t a2)
{
  sub_100015CD8();
  v7 = sub_10034E43C(0);
  v3 = MUICatchUpFeedbackType.image.getter();
  [v7 setImage:? forState:?];
  _objc_release(v3);
  v4 = MUICatchUpFeedbackType.selectedImage.getter();
  [v7 setImage:? forState:?];
  _objc_release(v4);
  _objc_retain(v6);
  [v7 addTarget:v6 action:a2 forControlEvents:64];
  swift_unknownObjectRelease();
  _objc_retain(v7);
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v7);
  return v7;
}

id sub_10034E43C(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() buttonWithType:a1];

  return v1;
}

void sub_10034E488()
{
  v1 = sub_10034D500();
  if (v1)
  {
    swift_unknownObjectRetain();
    sub_100294754();
    swift_getObjectType();
    [v1 mailActionCatchUpFeedbackCell:v0 didTapOnFeedbackType:0];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100294754();
  }
}

void sub_10034E59C()
{
  v1 = sub_10034D500();
  if (v1)
  {
    swift_unknownObjectRetain();
    sub_100294754();
    swift_getObjectType();
    [v1 mailActionCatchUpFeedbackCell:v0 didTapOnFeedbackType:1];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100294754();
  }
}

id sub_10034E6B4()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MailActionCatchUpFeedbackCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10034E760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a1;
  v28 = a2;
  v33 = a3;
  v30 = a4;
  v14 = "Display name field";
  v18 = "Email address field";
  v29 = &v45;
  v45 = 0u;
  v46 = 0u;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v11 = 0;
  v9 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v25 = &v9 - v9;
  v10 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v24 = &v9 - v10;
  v12 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v22 = &v9 - v12;
  v13 = (*(*(type metadata accessor for LocalizedStringResource() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v27);
  v26 = &v9 - v13;
  v43 = v4;
  v44 = v5;
  v41 = v6;
  v42 = v7;
  sub_10025C9B0(&unk_1006DA2D0);
  v21 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DisplayName", 0xBuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v16 = "AppIntents";
  v17 = 10;
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v21 & 1);
  sub_100015CC0();
  sub_10025D410(v25);
  v38 = v14;
  v39 = 18;
  v19 = 2;
  v40 = 2;
  v20 = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v31 = EntityProperty<>.init(title:)();

  *&v46 = v31;
  sub_10025C9B0(&unk_1006D6290);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("EmailAddress", 0xCuLL, v21 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v16, v17, v21 & 1);
  sub_100015CC0();
  sub_10025D410(v25);
  v34 = v18;
  v35 = 19;
  v36 = v19;
  v37 = v20 & 1 & v21;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v32 = EntityProperty<>.init(title:)();

  *(&v46 + 1) = v32;

  *&v45 = v33;
  *(&v45 + 1) = v30;
  sub_10034EC78();
  sub_10034EBDC();
  sub_1002B7778();
  return v33;
}

uint64_t sub_10034EBDC()
{

  EntityProperty.wrappedValue.setter();
}

uint64_t sub_10034EC78()
{

  EntityProperty.wrappedValue.setter();
}

uint64_t sub_10034ED14()
{
  if (qword_1006D5F00 != -1)
  {
    swift_once();
  }

  return v1;
}

uint64_t sub_10034ED88@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v9 = "An addressee of an email";
  v1 = sub_10025C9B0(&qword_1006D6280);
  v3 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v20 = &v3 - v3;
  v6 = 0;
  v4 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v13 = &v3 - v4;
  v5 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v12 = &v3 - v5;
  v7 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v10 = &v3 - v7;
  v17 = type metadata accessor for LocalizedStringResource();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v8 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17);
  v19 = &v3 - v8;
  v16 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MailAddressee", 0xDuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v16 & 1);
  sub_100015CC0();
  sub_10025D410(v13);
  v21 = v9;
  v22 = 24;
  v23 = 2;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v14 + 56))(v20, v16, v16, v17);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_10034F07C()
{

  EntityProperty.wrappedValue.getter();

  return v1;
}

void (*sub_10034F0F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void **a1)
{
  v6 = sub_100294700(0x30uLL);
  *a1 = v6;
  v6[4] = a4;

  v6[5] = EntityProperty.wrappedValue.modify();
  return sub_10034F1C0;
}

void sub_10034F1C0(void **a1)
{
  v1 = *a1;
  v1[5](v1, 0);

  free(v1);
}

uint64_t sub_10034F25C()
{

  v1 = EntityProperty.projectedValue.getter();

  return v1;
}

uint64_t sub_10034F2C8()
{

  EntityProperty.wrappedValue.getter();

  return v1;
}

void (*sub_10034F344(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(void **a1)
{
  v7 = sub_100294700(0x30uLL);
  *a1 = v7;
  v7[4] = a5;

  v7[5] = EntityProperty.wrappedValue.modify();
  return sub_10034F1C0;
}

uint64_t sub_10034F40C()
{

  v1 = EntityProperty.projectedValue.getter();

  return v1;
}

uint64_t sub_10034F4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a1;
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v27 = a8;

  v20 = static String.== infix(_:_:)();

  if (v20)
  {
    v17 = sub_10034F07C();
    v18 = v8;

    v16 = sub_10034F07C();
    v19 = v9;

    v22[0] = v17;
    v22[1] = v18;
    v22[2] = v16;
    v23 = v19;
    if (v18)
    {
      sub_100268860(v22, &v21);
      if (v23)
      {
        v14 = static String.== infix(_:_:)();
        sub_100268744();
        sub_100268744();
        sub_100268744();
        v15 = v14;
LABEL_8:

        v13 = v15;
        goto LABEL_12;
      }

      sub_100268744();
    }

    else if (!v23)
    {
      sub_100268744();
      v15 = 1;
      goto LABEL_8;
    }

    sub_100268828();
    v15 = 0;
    goto LABEL_8;
  }

  v13 = 0;
LABEL_12:

  if (v13)
  {
    sub_10034F2C8();
    sub_10034F2C8();
    v11 = static String.== infix(_:_:)();

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

void (*sub_10034F89C(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x28uLL);
  *a1 = v3;
  v3[4] = sub_10034F0F8(v3, *v1, v1[1], v1[2]);
  return sub_10034C098;
}

void (*sub_10034F96C(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x28uLL);
  *a1 = v3;
  v3[4] = sub_10034F344(v3, *v1, v1[1], v1[2], v1[3]);
  return sub_10034C098;
}

uint64_t sub_10034F9EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_10034E760(a1, a2, a3, a4);
  *a5 = result;
  a5[1] = v6;
  a5[2] = v7;
  a5[3] = v8;
  return result;
}

uint64_t sub_10034FA68@<X0>(void *a1@<X8>)
{
  result = *v1;
  InstantAnswerView.Model.Airport.code.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10034FB30()
{
  v2 = qword_1006DA380;
  if (!qword_1006DA380)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA380);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10034FBE4()
{
  v2 = qword_1006D9A60;
  if (!qword_1006D9A60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9A60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10034FC60()
{
  v1 = type metadata accessor for Logger();
  sub_10002094C(v1, qword_1006F0020);
  sub_1000208F4(v1, qword_1006F0020);
  type metadata accessor for CSQueryBuilder();
  return static Logger.mailUILogger<A>(for:)();
}

uint64_t sub_10034FCC8()
{
  if (qword_1006D5F08 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return sub_1000208F4(v0, qword_1006F0020);
}

uint64_t sub_10034FD34@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10034FCC8();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_10034FD98(uint64_t a1)
{
  v1[16] = a1;
  v1[11] = v1;
  v1[12] = 0;
  v1[13] = 0;
  v1[5] = 0;
  v1[6] = 0;
  v1[9] = 0;
  v1[10] = 0;
  v2 = type metadata accessor for Logger();
  v1[17] = v2;
  v1[18] = *(v2 - 8);
  v1[19] = swift_task_alloc();
  v1[12] = a1;

  return _swift_task_switch(sub_10034FEA8, 0);
}

uint64_t sub_10034FEA8()
{
  v36 = v0;
  v28 = v0[16];
  v0[11] = v0;
  v0[13] = _allocateUninitializedArray<A>(_:)();

  v0[14] = v28;
  sub_10025C9B0(&unk_1006D69B0);
  sub_1002B76F0();
  Collection<>.makeIterator()();
  sub_10025C9B0(&qword_1006D7F98);
  IndexingIterator.next()();
  v29 = v0[7];
  v30 = v0[8];
  v0[20] = v30;
  if (v30)
  {
    v27[9] = v29;
    v27[10] = v30;
    type metadata accessor for CSQueryBuilder();
    CSQueryBuilder.__allocating_init()();
    dispatch thunk of CSQueryBuilder.addEmailPredicate()();

    dispatch thunk of CSQueryBuilder.addInboxPredicate()();

    dispatch thunk of CSQueryBuilder.addAuthorPredicate(_:)();

    v26 = dispatch thunk of CSQueryBuilder.build()();
    v25 = v1;
    v27[21] = v1;

    v2 = swift_task_alloc();
    v27[22] = v2;
    *v2 = v27[11];
    v2[1] = sub_10035068C;

    return sub_1002B8CDC(v26, v25);
  }

  else
  {
    v4 = v27[19];
    v15 = v27[17];
    v14 = v27[18];
    sub_100264880();
    v5 = sub_10034FCC8();
    (*(v14 + 16))(v4, v5, v15);
    v16 = v27[13];

    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    v20 = swift_allocObject();
    *(v20 + 16) = 8;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_100351114;
    *(v18 + 24) = v17;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_10026E818;
    *(v21 + 24) = v18;
    sub_10025C9B0(&unk_1006D7720);
    _allocateUninitializedArray<A>(_:)();
    v22 = v6;

    *v22 = sub_10026434C;
    v22[1] = v19;

    v22[2] = sub_10026434C;
    v22[3] = v20;

    v22[4] = sub_10026EBF8;
    v22[5] = v21;
    sub_1002612B0();

    if (os_log_type_enabled(v23, v24))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v12 = sub_1002641E8(0);
      v13 = sub_1002641E8(0);
      v31 = buf;
      v32 = v12;
      v33 = v13;
      sub_10026423C(0, &v31);
      sub_10026423C(1, &v31);
      v34 = sub_10026434C;
      v35 = v19;
      sub_100264250(&v34, &v31, &v32, &v33);
      v34 = sub_10026434C;
      v35 = v20;
      sub_100264250(&v34, &v31, &v32, &v33);
      v34 = sub_10026EBF8;
      v35 = v21;
      sub_100264250(&v34, &v31, &v32, &v33);
      _os_log_impl(&_mh_execute_header, v23, v24, "#SiriMail MailAddresseeQuery.entities(for identifiers:) returning %ld results", buf, 0xCu);
      sub_10026429C(v12);
      sub_10026429C(v13);
      UnsafeMutablePointer.deallocate()();
    }

    else
    {
    }

    v10 = v27[19];
    v9 = v27[17];
    v8 = v27[18];
    _objc_release(v23);
    (*(v8 + 8))(v10, v9);
    swift_beginAccess();
    swift_endAccess();
    sub_100264880();

    v7 = *(v27[11] + 8);

    return v7(v16);
  }
}

uint64_t sub_10035068C(uint64_t a1)
{
  v5 = *v2;
  v5[11] = *v2;
  v5[23] = a1;
  v5[24] = v1;

  if (v1)
  {
    v3 = sub_100350FEC;
  }

  else
  {

    v3 = sub_100350810;
  }

  return _swift_task_switch(v3, 0);
}

uint64_t sub_100350810()
{
  v37 = v0;
  v1 = v0[23];
  v0[11] = v0;
  v0[15] = v1;
  sub_10025C9B0(&qword_1006DA330);
  sub_100351E38();
  Array.append<A>(contentsOf:)();

  v29 = v0[24];
  sub_10025C9B0(&qword_1006D7F98);
  IndexingIterator.next()();
  v30 = v0[7];
  v31 = v0[8];
  v0[20] = v31;
  if (v31)
  {
    v28[9] = v30;
    v28[10] = v31;
    type metadata accessor for CSQueryBuilder();
    CSQueryBuilder.__allocating_init()();
    dispatch thunk of CSQueryBuilder.addEmailPredicate()();

    dispatch thunk of CSQueryBuilder.addInboxPredicate()();

    dispatch thunk of CSQueryBuilder.addAuthorPredicate(_:)();

    v27 = dispatch thunk of CSQueryBuilder.build()();
    v26 = v2;
    v28[21] = v2;

    v3 = swift_task_alloc();
    v28[22] = v3;
    *v3 = v28[11];
    v3[1] = sub_10035068C;

    return sub_1002B8CDC(v27, v26);
  }

  else
  {
    v5 = v28[19];
    v16 = v28[17];
    v15 = v28[18];
    sub_100264880();
    v6 = sub_10034FCC8();
    (*(v15 + 16))(v5, v6, v16);
    v17 = v28[13];

    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    oslog = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    v21 = swift_allocObject();
    *(v21 + 16) = 8;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_100351114;
    *(v19 + 24) = v18;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_10026E818;
    *(v22 + 24) = v19;
    sub_10025C9B0(&unk_1006D7720);
    _allocateUninitializedArray<A>(_:)();
    v23 = v7;

    *v23 = sub_10026434C;
    v23[1] = v20;

    v23[2] = sub_10026434C;
    v23[3] = v21;

    v23[4] = sub_10026EBF8;
    v23[5] = v22;
    sub_1002612B0();

    if (os_log_type_enabled(oslog, v25))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v13 = sub_1002641E8(0);
      v14 = sub_1002641E8(0);
      v32 = buf;
      v33 = v13;
      v34 = v14;
      sub_10026423C(0, &v32);
      sub_10026423C(1, &v32);
      v35 = sub_10026434C;
      v36 = v20;
      sub_100264250(&v35, &v32, &v33, &v34);
      if (v29)
      {
      }

      v35 = sub_10026434C;
      v36 = v21;
      sub_100264250(&v35, &v32, &v33, &v34);
      v35 = sub_10026EBF8;
      v36 = v22;
      sub_100264250(&v35, &v32, &v33, &v34);
      _os_log_impl(&_mh_execute_header, oslog, v25, "#SiriMail MailAddresseeQuery.entities(for identifiers:) returning %ld results", buf, 0xCu);
      sub_10026429C(v13);
      sub_10026429C(v14);
      UnsafeMutablePointer.deallocate()();
    }

    else
    {
    }

    v11 = v28[19];
    v10 = v28[17];
    v9 = v28[18];
    _objc_release(oslog);
    (*(v9 + 8))(v11, v10);
    swift_beginAccess();
    swift_endAccess();
    sub_100264880();

    v8 = *(v28[11] + 8);

    return v8(v17);
  }
}

uint64_t sub_100350FEC()
{
  *(v0 + 88) = v0;

  sub_100264880();
  sub_100264880();

  v1 = *(*(v3 + 88) + 8);

  return v1();
}

uint64_t sub_1003510BC()
{

  v1 = Array.count.getter();

  return v1;
}

uint64_t sub_10035111C(uint64_t a1, uint64_t a2)
{
  v2[9] = a2;
  v2[8] = a1;
  v2[6] = v2;
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  v2[7] = 0;
  v3 = type metadata accessor for Logger();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[2] = a1;
  v2[3] = a2;

  return _swift_task_switch(sub_100351238, 0);
}

uint64_t sub_100351238()
{
  v0[6] = v0;
  type metadata accessor for CSQueryBuilder();
  CSQueryBuilder.__allocating_init()();
  dispatch thunk of CSQueryBuilder.addEmailPredicate()();

  dispatch thunk of CSQueryBuilder.addInboxPredicate()();

  dispatch thunk of CSQueryBuilder.addAuthorPredicate(_:)();

  v6 = dispatch thunk of CSQueryBuilder.build()();
  v5 = v1;
  v0[13] = v1;

  v0[4] = v6;
  v0[5] = v5;
  v2 = swift_task_alloc();
  *(v4 + 112) = v2;
  *v2 = *(v4 + 48);
  v2[1] = sub_10035138C;

  return sub_1002B8CDC(v6, v5);
}

uint64_t sub_10035138C(uint64_t a1)
{
  v5 = *v2;
  v5[6] = *v2;
  v5[15] = a1;
  v5[16] = v1;

  if (v1)
  {
    v3 = sub_100351B24;
  }

  else
  {
    v3 = sub_1003514FC;
  }

  return _swift_task_switch(v3, 0);
}

uint64_t sub_1003514FC()
{
  v31 = v0;
  v17 = v0[15];
  v1 = v0[12];
  v15 = v0[11];
  v16 = v0[10];
  v0[6] = v0;
  v0[7] = v17;
  v2 = sub_10034FCC8();
  (*(v15 + 16))(v1, v2, v16);

  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  v21 = swift_allocObject();
  *(v21 + 16) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_100351EC0;
  *(v19 + 24) = v18;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_10026E818;
  *(v22 + 24) = v19;
  sub_10025C9B0(&unk_1006D7720);
  _allocateUninitializedArray<A>(_:)();
  v23 = v3;

  *v23 = sub_10026434C;
  v23[1] = v20;

  v23[2] = sub_10026434C;
  v23[3] = v21;

  v23[4] = sub_10026EBF8;
  v23[5] = v22;
  sub_1002612B0();

  if (os_log_type_enabled(v24, v25))
  {
    v4 = v14[16];
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    sub_10025C9B0(&qword_1006D7290);
    v12 = sub_1002641E8(0);
    v13 = sub_1002641E8(0);
    v26 = buf;
    v27 = v12;
    v28 = v13;
    sub_10026423C(0, &v26);
    sub_10026423C(1, &v26);
    v29 = sub_10026434C;
    v30 = v20;
    sub_100264250(&v29, &v26, &v27, &v28);
    if (v4)
    {
    }

    v29 = sub_10026434C;
    v30 = v21;
    sub_100264250(&v29, &v26, &v27, &v28);
    v29 = sub_10026EBF8;
    v30 = v22;
    sub_100264250(&v29, &v26, &v27, &v28);
    _os_log_impl(&_mh_execute_header, v24, v25, "#SiriMail MailAddresseeQuery.entities(matching string:) returning %ld results", buf, 0xCu);
    sub_10026429C(v12);
    sub_10026429C(v13);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v10 = v14[12];
  v9 = v14[10];
  v8 = v14[11];
  _objc_release(v24);
  (*(v8 + 8))(v10, v9);

  v6 = *(v14[6] + 8);
  v7 = v14[15];

  return v6(v7);
}

uint64_t sub_100351B24()
{
  *(v0 + 48) = v0;

  v1 = *(*(v0 + 48) + 8);

  return v1();
}

uint64_t sub_100351BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 24) = a1;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 32) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1002603BC;

  return sub_10035111C(a2, a3);
}

uint64_t sub_100351CBC(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_100260618;

  return sub_10034FD98(a1);
}

uint64_t sub_100351D70(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  v4 = sub_100351EC8();
  *v3 = *(v6 + 16);
  v3[1] = sub_1002609F0;

  return EntityQuery.results()(a1, a2, v4);
}

unint64_t sub_100351E38()
{
  v2 = qword_1006D9A68;
  if (!qword_1006D9A68)
  {
    sub_10025CAA4(&qword_1006DA330);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9A68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100351EC8()
{
  v2 = qword_1006D9A70;
  if (!qword_1006D9A70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9A70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100351F5C()
{
  v2 = qword_1006D9A78;
  if (!qword_1006D9A78)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9A78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100351FF0()
{
  v2 = qword_1006D9A80;
  if (!qword_1006D9A80)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9A80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100352084()
{
  v2 = qword_1006D9A88;
  if (!qword_1006D9A88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9A88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100352148()
{
  v2 = qword_1006D9A90;
  if (!qword_1006D9A90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9A90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003521DC()
{
  v2 = qword_1006D9A98;
  if (!qword_1006D9A98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9A98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100352270()
{
  v2 = qword_1006D9AA0;
  if (!qword_1006D9AA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9AA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10035231C()
{
  v2 = qword_1006D9AA8;
  if (!qword_1006D9AA8)
  {
    sub_10025CAA4(&qword_1006D9AB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9AA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003523BC()
{
  v2 = qword_1006D9AB8;
  if (!qword_1006D9AB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9AB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100352450()
{
  v2 = qword_1006D9AC0;
  if (!qword_1006D9AC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9AC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003524E4()
{
  v2 = qword_1006D9AC8;
  if (!qword_1006D9AC8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9AC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100352578()
{
  v2 = qword_1006D9AD0;
  if (!qword_1006D9AD0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9AD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10035260C()
{
  v2 = qword_1006D9AD8;
  if (!qword_1006D9AD8)
  {
    sub_10025CAA4(&qword_1006DA330);
    sub_100352270();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9AD8);
    return WitnessTable;
  }

  return v2;
}

void sub_1003526CC()
{
  v0 = MEMailExtensionErrorDomain;
  _objc_retain(MEMailExtensionErrorDomain);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  _objc_release(v0);
}

void sub_100352724()
{
  v0 = kMFMobileMailBundleIdentifier;
  _objc_retain(kMFMobileMailBundleIdentifier);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  _objc_release(v0);
}

void sub_10035277C()
{
  v45 = 0;
  v40 = 0;
  v35 = type metadata accessor for Logger();
  v36 = *(v35 - 8);
  v37 = v36;
  v0 = __chkstk_darwin(v34);
  v38 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v0;
  v39 = [v0 accountsProvider];
  if (v39)
  {
    v32 = v39;
    v31 = v39;
    v40 = v39;
    if ([v39 hasActiveAccounts])
    {
      v30 = v33;

      return;
    }
  }

  v2 = v38;
  v3 = Logger.appIntentLogger.unsafeMutableAddressor();
  (*(v37 + 16))(v2, v3, v35);
  v28 = Logger.logObject.getter();
  v25 = v28;
  v27 = static os_log_type_t.error.getter();
  v26 = v27;
  sub_10025C9B0(&unk_1006D7720);
  v29 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v28, v27))
  {
    v24 = v33;
    v16 = static UnsafeMutablePointer.allocate(capacity:)();
    v12 = v16;
    v13 = sub_10025C9B0(&qword_1006D7290);
    v14 = 0;
    v17 = sub_1002641E8(0);
    v15 = v17;
    v18 = sub_1002641E8(v14);
    v44 = v16;
    v43 = v17;
    v42 = v18;
    v19 = 0;
    v20 = &v44;
    sub_10026423C(0, &v44);
    sub_10026423C(v19, v20);
    v41 = v29;
    v21 = &v7;
    __chkstk_darwin(&v7);
    v22 = &v7 - 6;
    *(&v7 - 4) = v4;
    *(&v7 - 3) = &v43;
    *(&v7 - 2) = &v42;
    v23 = sub_10025C9B0(&qword_1006D72C0);
    sub_10026E6E0();
    v5 = v24;
    Sequence.forEach(_:)();
    if (v5)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v25, v26, "#SiriMail User does not have a Mail account set up, cannot perform the app intent and throwing noActiveAccounts", v12, 2u);
      v11 = 0;
      sub_10026429C(v15);
      sub_10026429C(v18);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  (*(v37 + 8))(v38, v35);
  v9 = 0;
  v8 = type metadata accessor for ToolboxErrors();
  sub_100281ED4();
  v10 = swift_allocError();
  (*(*(v8 - 8) + 104))(v6, enum case for ToolboxErrors.noActiveAccounts(_:));
  swift_willThrow();
}

uint64_t sub_100352C0C(uint64_t a1)
{
  v34 = a1;
  v45 = 0;
  v44 = 0;
  v35 = type metadata accessor for Logger();
  v36 = *(v35 - 8);
  v37 = v36;
  v2 = __chkstk_darwin(v34);
  v38 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v2;
  v44 = v1;
  v43[1] = v2;
  v39 = sub_10025C9B0(&unk_1006DCAF0);
  sub_1002BC750();
  result = Collection.isEmpty.getter();
  if (result)
  {
    v5 = v38;
    v6 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v37 + 16))(v5, v6, v35);
    v31 = Logger.logObject.getter();
    v28 = v31;
    v30 = static os_log_type_t.error.getter();
    v29 = v30;
    sub_10025C9B0(&unk_1006D7720);
    v32 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v31, v30))
    {
      v27 = v33;
      v19 = static UnsafeMutablePointer.allocate(capacity:)();
      v15 = v19;
      v16 = sub_10025C9B0(&qword_1006D7290);
      v17 = 0;
      v20 = sub_1002641E8(0);
      v18 = v20;
      v21 = sub_1002641E8(v17);
      v43[0] = v19;
      v42 = v20;
      v41 = v21;
      v22 = 0;
      v23 = v43;
      sub_10026423C(0, v43);
      sub_10026423C(v22, v23);
      v40 = v32;
      v24 = &v10;
      __chkstk_darwin(&v10);
      v25 = &v10 - 6;
      *(&v10 - 4) = v7;
      *(&v10 - 3) = &v42;
      *(&v10 - 2) = &v41;
      v26 = sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      v8 = v27;
      Sequence.forEach(_:)();
      if (v8)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v28, v29, "#SiriMail Failed to find emails to act on, throwing noMessagesFound", v15, 2u);
        v14 = 0;
        sub_10026429C(v18);
        sub_10026429C(v21);
        UnsafeMutablePointer.deallocate()();
      }
    }

    else
    {
    }

    (*(v37 + 8))(v38, v35);
    v12 = 0;
    v11 = type metadata accessor for ToolboxErrors();
    sub_100281ED4();
    v13 = swift_allocError();
    (*(*(v11 - 8) + 104))(v9, enum case for ToolboxErrors.noMessagesFound(_:));
    swift_willThrow();
    return v12;
  }

  return result;
}

id sub_100353058()
{
  v12 = 0;
  v15 = v0;
  _objc_retain(v0);
  v8 = [v0 connectedScenes];
  sub_1002883E4();
  sub_100288448();
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  _objc_release(v0);
  v13 = v9;
  sub_10025C9B0(&unk_1006D72F0);
  sub_1002884C8();
  Sequence.first(where:)();
  sub_100264880();
  _objc_release(v8);
  if (v14)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v6 = v7;
    }

    else
    {
      _objc_release(v14);
      v6 = 0;
    }

    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  v12 = v5;
  _objc_retain(v5);
  if (v5)
  {
    v3 = [v5 undoManager];
    _objc_release(v5);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v10 = v4;
  _objc_retain(v0);
  if (v4)
  {
    v11 = v10;
  }

  else
  {
    _objc_retain(v0);
    v11 = [v0 undoManager];
    _objc_release(v0);
  }

  _objc_release(v0);
  v2 = v11;
  _objc_release(v5);
  return v2;
}

id sub_10035333C()
{
  v181 = 0;
  v217 = 0;
  v182 = 0;
  v212 = 0;
  v205 = 0;
  v204 = 0;
  v199 = 0;
  v198 = 0;
  v184 = type metadata accessor for Logger();
  v185 = *(v184 - 8);
  v186 = v185;
  v189 = *(v185 + 64);
  v0 = __chkstk_darwin(v183);
  v191 = (v189 + 15) & 0xFFFFFFFFFFFFFFF0;
  v187 = v40 - v191;
  v1 = __chkstk_darwin(v0);
  v188 = v40 - v191;
  v2 = __chkstk_darwin(v1);
  v190 = v40 - v191;
  v3 = __chkstk_darwin(v2);
  v192 = v40 - v191;
  v217 = v3;
  v193 = [v3 mostRecentMainScene];
  if (!v193)
  {
    v35 = v187;
    v36 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v186 + 16))(v35, v36, v184);
    v58 = Logger.logObject.getter();
    v55 = v58;
    v57 = static os_log_type_t.debug.getter();
    v56 = v57;
    sub_10025C9B0(&unk_1006D7720);
    v59 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v58, v57))
    {
      v37 = v182;
      v46 = static UnsafeMutablePointer.allocate(capacity:)();
      v42 = v46;
      v43 = sub_10025C9B0(&qword_1006D7290);
      v44 = 0;
      v47 = sub_1002641E8(0);
      v45 = v47;
      v48 = sub_1002641E8(v44);
      v216 = v46;
      v215 = v47;
      v214 = v48;
      v49 = 0;
      v50 = &v216;
      sub_10026423C(0, &v216);
      sub_10026423C(v49, v50);
      v213 = v59;
      v51 = v40;
      __chkstk_darwin(v40);
      v52 = &v40[-6];
      v40[-4] = v38;
      v40[-3] = &v215;
      v40[-2] = &v214;
      v53 = sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      v54 = v37;
      if (v37)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v55, v56, "#SiriMail no main mail scene, returning nil", v42, 2u);
        v40[1] = 0;
        sub_10026429C(v45);
        sub_10026429C(v48);
        UnsafeMutablePointer.deallocate()();

        v41 = v54;
      }
    }

    else
    {

      v41 = v182;
    }

    v40[0] = v41;

    (*(v186 + 8))(v187, v184);
    v146 = 0;
    v147 = v40[0];
    return v146;
  }

  v180 = v193;
  v175 = v193;
  v212 = v193;
  v176 = [v193 dockContainer];
  v178 = [v176 activeViewController];
  v177 = v178;

  objc_opt_self();
  v179 = swift_dynamicCastObjCClass();
  if (v179)
  {
    v174 = v179;
  }

  else
  {

    v174 = 0;
  }

  v173 = v174;
  if (v174)
  {
    v172 = v173;
    v170 = v173;
    v199 = v173;
    v4 = [v173 _mailComposeController];
    v171 = v4;
    if (v4)
    {
      v169 = v171;
      v5 = v192;
      v163 = v171;
      v198 = v171;
      v6 = Logger.appIntentLogger.unsafeMutableAddressor();
      (*(v186 + 16))(v5, v6, v184);
      v167 = Logger.logObject.getter();
      v164 = v167;
      v166 = static os_log_type_t.debug.getter();
      v165 = v166;
      sub_10025C9B0(&unk_1006D7720);
      v168 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v167, v166))
      {
        v8 = v182;
        v154 = static UnsafeMutablePointer.allocate(capacity:)();
        v150 = v154;
        v151 = sub_10025C9B0(&qword_1006D7290);
        v152 = 0;
        v155 = sub_1002641E8(0);
        v153 = v155;
        v156 = sub_1002641E8(v152);
        v197 = v154;
        v196 = v155;
        v195 = v156;
        v157 = 0;
        v158 = &v197;
        sub_10026423C(0, &v197);
        sub_10026423C(v157, v158);
        v194 = v168;
        v159 = v40;
        __chkstk_darwin(v40);
        v160 = &v40[-6];
        v40[-4] = v9;
        v40[-3] = &v196;
        v40[-2] = &v195;
        v161 = sub_10025C9B0(&qword_1006D72C0);
        sub_10026E6E0();
        Sequence.forEach(_:)();
        v162 = v8;
        if (v8)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&_mh_execute_header, v164, v165, "#SiriMail found mail compose view on iPhone", v150, 2u);
          v148 = 0;
          sub_10026429C(v153);
          sub_10026429C(v156);
          UnsafeMutablePointer.deallocate()();

          v149 = v162;
        }
      }

      else
      {

        v149 = v182;
      }

      v145 = v149;

      (*(v186 + 8))(v192, v184);
      v144 = v163;

      v146 = v144;
      v147 = v145;
      return v146;
    }
  }

  v10 = v182;
  v11 = v183;
  v139 = [v183 openSessions];
  v137 = v139;
  v141 = 0;
  v138 = sub_100355A6C();
  sub_100355AD0();
  v140 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v210[1] = v140;
  v142 = sub_10025C9B0(&qword_1006D9AF8);
  sub_100355B50();
  Sequence.first(where:)();
  v143 = v10;
  if (!v10)
  {
    sub_100264880();

    v136 = v211;
    if (v211)
    {
      v135 = v136;
      v132 = v136;
      v133 = [v136 scene];

      v134 = v133;
    }

    else
    {
      v134 = 0;
    }

    v131 = v134;
    if (v134)
    {
      v130 = v131;
      v128 = v131;
      objc_opt_self();
      v129 = swift_dynamicCastObjCClass();
      if (v129)
      {
        v127 = v129;
      }

      else
      {

        v127 = 0;
      }

      v126 = v127;
    }

    else
    {
      v126 = 0;
    }

    v125 = v126;
    if (v126)
    {
      v124 = v125;
      v120 = v125;
      v205 = v125;
      v121 = [v125 composeNavigationController];
      v123 = [v121 _mailComposeController];
      v122 = v123;

      if (v123)
      {
        v119 = v122;
        v12 = v190;
        v113 = v122;
        v204 = v122;
        v13 = Logger.appIntentLogger.unsafeMutableAddressor();
        (*(v186 + 16))(v12, v13, v184);
        v117 = Logger.logObject.getter();
        v114 = v117;
        v116 = static os_log_type_t.debug.getter();
        v115 = v116;
        sub_10025C9B0(&unk_1006D7720);
        v118 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v117, v116))
        {
          v15 = v143;
          v104 = static UnsafeMutablePointer.allocate(capacity:)();
          v100 = v104;
          v101 = sub_10025C9B0(&qword_1006D7290);
          v102 = 0;
          v105 = sub_1002641E8(0);
          v103 = v105;
          v106 = sub_1002641E8(v102);
          v203 = v104;
          v202 = v105;
          v201 = v106;
          v107 = 0;
          v108 = &v203;
          sub_10026423C(0, &v203);
          sub_10026423C(v107, v108);
          v200 = v118;
          v109 = v40;
          __chkstk_darwin(v40);
          v110 = &v40[-6];
          v40[-4] = v16;
          v40[-3] = &v202;
          v40[-2] = &v201;
          v111 = sub_10025C9B0(&qword_1006D72C0);
          sub_10026E6E0();
          Sequence.forEach(_:)();
          v112 = v15;
          if (v15)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&_mh_execute_header, v114, v115, "#SiriMail found mail compose view on iPad", v100, 2u);
            v98 = 0;
            sub_10026429C(v103);
            sub_10026429C(v106);
            UnsafeMutablePointer.deallocate()();

            v99 = v112;
          }
        }

        else
        {

          v99 = v143;
        }

        v97 = v99;

        (*(v186 + 8))(v190, v184);
        v96 = v113;

        v146 = v96;
        v147 = v97;
        return v146;
      }
    }

    v17 = v188;
    v18 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v186 + 16))(v17, v18, v184);
    v19 = v175;
    v84 = 7;
    v85 = swift_allocObject();
    *(v85 + 16) = v175;
    v95 = Logger.logObject.getter();
    v77 = v95;
    v94 = static os_log_type_t.debug.getter();
    v78 = v94;
    v79 = 17;
    v88 = swift_allocObject();
    v80 = v88;
    v81 = 32;
    *(v88 + 16) = 32;
    v20 = swift_allocObject();
    v21 = v81;
    v89 = v20;
    v82 = v20;
    *(v20 + 16) = 8;
    v83 = v21;
    v22 = swift_allocObject();
    v23 = v85;
    v86 = v22;
    *(v22 + 16) = sub_100355BD8;
    *(v22 + 24) = v23;
    v24 = swift_allocObject();
    v25 = v86;
    v92 = v24;
    v87 = v24;
    *(v24 + 16) = sub_10026EE84;
    *(v24 + 24) = v25;
    v93 = sub_10025C9B0(&unk_1006D7720);
    v90 = _allocateUninitializedArray<A>(_:)();
    v91 = v26;

    v27 = v88;
    v28 = v91;
    *v91 = sub_10026434C;
    v28[1] = v27;

    v29 = v89;
    v30 = v91;
    v91[2] = sub_10026434C;
    v30[3] = v29;

    v31 = v91;
    v32 = v92;
    v91[4] = sub_10026EF2C;
    v31[5] = v32;
    sub_1002612B0();

    if (os_log_type_enabled(v95, v94))
    {
      v33 = v143;
      v70 = static UnsafeMutablePointer.allocate(capacity:)();
      v67 = v70;
      v68 = sub_10025C9B0(&qword_1006D7290);
      v71 = sub_1002641E8(0);
      v69 = v71;
      v73 = 1;
      v72 = sub_1002641E8(1);
      v210[0] = v70;
      v209 = v71;
      v208 = v72;
      v74 = v210;
      sub_10026423C(2, v210);
      sub_10026423C(v73, v74);
      v206 = sub_10026434C;
      v207 = v80;
      sub_100264250(&v206, v74, &v209, &v208);
      v75 = v33;
      v76 = v33;
      if (v33)
      {
        v65 = 0;

        __break(1u);
      }

      else
      {
        v206 = sub_10026434C;
        v207 = v82;
        sub_100264250(&v206, v210, &v209, &v208);
        v63 = 0;
        v64 = 0;
        v206 = sub_10026EF2C;
        v207 = v87;
        sub_100264250(&v206, v210, &v209, &v208);
        v61 = 0;
        v62 = 0;
        _os_log_impl(&_mh_execute_header, v77, v78, "#SiriMail mail compose view not found, active view controller: %s", v67, 0xCu);
        sub_10026429C(v69);
        sub_10026429C(v72);
        UnsafeMutablePointer.deallocate()();

        v66 = v61;
      }
    }

    else
    {
      v34 = v143;

      v66 = v34;
    }

    v60 = v66;

    (*(v186 + 8))(v188, v184);
    v146 = 0;
    v147 = v60;
    return v146;
  }

  result = 0;
  __break(1u);
  return result;
}

void *sub_100354B84@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  _objc_retain(a1);
  result = a1;
  *a2 = a1;
  return result;
}

BOOL sub_100354BC0(id *a1)
{
  v5 = [*a1 scene];
  if (v5)
  {
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (v1)
    {
      v3 = v1;
    }

    else
    {
      _objc_release(v5);
      v3 = 0;
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  _objc_release(v4);
  return v4 != 0;
}

uint64_t sub_100354CAC(void *a1)
{
  v2 = [a1 dockContainer];
  v3 = [v2 activeViewController];
  _objc_release(v2);
  v4 = [v3 debugDescription];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  _objc_release(v3);
  _objc_release(v4);
  return v5;
}

id sub_100354D60()
{
  v115 = 0;
  v94 = 0;
  v110 = 0;
  v104 = 0;
  v96 = type metadata accessor for Logger();
  v97 = *(v96 - 8);
  v98 = v97;
  v99 = *(v97 + 64);
  v0 = __chkstk_darwin(v95);
  v101 = (v99 + 15) & 0xFFFFFFFFFFFFFFF0;
  v100 = v25 - v101;
  v1 = __chkstk_darwin(v0);
  v102 = v25 - v101;
  v115 = v1;
  v103 = [v1 mostRecentMainScene];
  if (v103)
  {
    v93 = v103;
    v88 = v103;
    v110 = v103;
    v89 = [v103 dockContainer];
    v91 = [v89 activeViewController];
    v90 = v91;

    objc_opt_self();
    v92 = swift_dynamicCastObjCClass();
    if (v92)
    {
      v87 = v92;
    }

    else
    {

      v87 = 0;
    }

    v86 = v87;
    if (v87)
    {
      v85 = v86;
      v81 = v86;
      v104 = v86;
      v82 = [v86 conversationViewController];

      v83 = v82;
      v84 = v94;
    }

    else
    {
      v2 = v102;
      v3 = Logger.appIntentLogger.unsafeMutableAddressor();
      (*(v98 + 16))(v2, v3, v96);
      v4 = v88;
      v69 = 7;
      v70 = swift_allocObject();
      *(v70 + 16) = v88;
      v80 = Logger.logObject.getter();
      v62 = v80;
      v79 = static os_log_type_t.debug.getter();
      v63 = v79;
      v64 = 17;
      v73 = swift_allocObject();
      v65 = v73;
      v66 = 32;
      *(v73 + 16) = 32;
      v5 = swift_allocObject();
      v6 = v66;
      v74 = v5;
      v67 = v5;
      *(v5 + 16) = 8;
      v68 = v6;
      v7 = swift_allocObject();
      v8 = v70;
      v71 = v7;
      *(v7 + 16) = sub_100355BD8;
      *(v7 + 24) = v8;
      v9 = swift_allocObject();
      v10 = v71;
      v77 = v9;
      v72 = v9;
      *(v9 + 16) = sub_10026EE84;
      *(v9 + 24) = v10;
      v78 = sub_10025C9B0(&unk_1006D7720);
      v75 = _allocateUninitializedArray<A>(_:)();
      v76 = v11;

      v12 = v73;
      v13 = v76;
      *v76 = sub_10026434C;
      v13[1] = v12;

      v14 = v74;
      v15 = v76;
      v76[2] = sub_10026434C;
      v15[3] = v14;

      v16 = v76;
      v17 = v77;
      v76[4] = sub_10026EF2C;
      v16[5] = v17;
      sub_1002612B0();

      if (os_log_type_enabled(v80, v79))
      {
        v18 = v94;
        v55 = static UnsafeMutablePointer.allocate(capacity:)();
        v52 = v55;
        v53 = sub_10025C9B0(&qword_1006D7290);
        v56 = sub_1002641E8(0);
        v54 = v56;
        v58 = 1;
        v57 = sub_1002641E8(1);
        v109 = v55;
        v108 = v56;
        v107 = v57;
        v59 = &v109;
        sub_10026423C(2, &v109);
        sub_10026423C(v58, v59);
        v105 = sub_10026434C;
        v106 = v65;
        sub_100264250(&v105, v59, &v108, &v107);
        v60 = v18;
        v61 = v18;
        if (v18)
        {
          v50 = 0;

          __break(1u);
        }

        else
        {
          v105 = sub_10026434C;
          v106 = v67;
          sub_100264250(&v105, &v109, &v108, &v107);
          v48 = 0;
          v49 = 0;
          v105 = sub_10026EF2C;
          v106 = v72;
          sub_100264250(&v105, &v109, &v108, &v107);
          v46 = 0;
          v47 = 0;
          _os_log_impl(&_mh_execute_header, v62, v63, "#SiriMail conversation view not found, active view controller: %s", v52, 0xCu);
          sub_10026429C(v54);
          sub_10026429C(v57);
          UnsafeMutablePointer.deallocate()();

          v51 = v46;
        }
      }

      else
      {
        v19 = v94;

        v51 = v19;
      }

      v45 = v51;

      (*(v98 + 8))(v102, v96);
      v83 = 0;
      v84 = v45;
    }
  }

  else
  {
    v20 = v100;
    v21 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v98 + 16))(v20, v21, v96);
    v43 = Logger.logObject.getter();
    v40 = v43;
    v42 = static os_log_type_t.debug.getter();
    v41 = v42;
    sub_10025C9B0(&unk_1006D7720);
    v44 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v43, v42))
    {
      v22 = v94;
      v31 = static UnsafeMutablePointer.allocate(capacity:)();
      v27 = v31;
      v28 = sub_10025C9B0(&qword_1006D7290);
      v29 = 0;
      v32 = sub_1002641E8(0);
      v30 = v32;
      v33 = sub_1002641E8(v29);
      v114 = v31;
      v113 = v32;
      v112 = v33;
      v34 = 0;
      v35 = &v114;
      sub_10026423C(0, &v114);
      sub_10026423C(v34, v35);
      v111 = v44;
      v36 = v25;
      __chkstk_darwin(v25);
      v37 = &v25[-6];
      v25[-4] = v23;
      v25[-3] = &v113;
      v25[-2] = &v112;
      v38 = sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      v39 = v22;
      if (v22)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v40, v41, "#SiriMail no main mail scene, returning nil", v27, 2u);
        v25[1] = 0;
        sub_10026429C(v30);
        sub_10026429C(v33);
        UnsafeMutablePointer.deallocate()();

        v26 = v39;
      }
    }

    else
    {

      v26 = v94;
    }

    v25[0] = v26;

    (*(v98 + 8))(v100, v96);
    v83 = 0;
    v84 = v25[0];
  }

  return v83;
}

uint64_t sub_1003559C4(id *a1)
{
  v3 = *a1;
  _objc_retain(*a1);
  if (swift_dynamicCastObjCProtocolConditional())
  {
    swift_unknownObjectRelease();
    v2 = 1;
  }

  else
  {
    _objc_release(v3);
    v2 = 0;
  }

  return v2 & 1;
}

unint64_t sub_100355A6C()
{
  v2 = qword_1006D9AE8;
  if (!qword_1006D9AE8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D9AE8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_100355AD0()
{
  v2 = qword_1006D9AF0;
  if (!qword_1006D9AF0)
  {
    sub_100355A6C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9AF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100355B50()
{
  v2 = qword_1006D9B00;
  if (!qword_1006D9B00)
  {
    sub_10025CAA4(&qword_1006D9AF8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9B00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100355BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[30] = a3;
  v4[29] = a1;
  v4[24] = v4;
  v4[25] = 0;
  v4[26] = 0;
  v4[27] = 0;
  v4[22] = 0;
  v4[23] = 0;
  v4[28] = 0;
  v5 = type metadata accessor for Logger();
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[25] = a2;
  v4[26] = a3;
  v4[27] = v3;
  type metadata accessor for MainActor();
  v4[36] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100355D84, v6);
}

uint64_t sub_100355D84()
{
  v92 = v0;
  v1 = v0[35];
  v64 = v0[32];
  v65 = v0[31];
  v2 = v0[30];
  v0[24] = v0;
  sub_1002F171C(v2, (v0 + 2));
  sub_10025C9B0(&qword_1006D9B10);
  v67 = String.init<A>(describing:)();
  v68 = v3;
  v0[22] = v67;
  v0[23] = v3;
  v4 = Logger.appIntentLogger.unsafeMutableAddressor();
  v66 = *(v64 + 16);
  v66(v1, v4, v65);

  v69 = swift_allocObject();
  *(v69 + 16) = v67;
  *(v69 + 24) = v68;
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.default.getter();
  v71 = swift_allocObject();
  *(v71 + 16) = 32;
  v72 = swift_allocObject();
  *(v72 + 16) = 8;
  v70 = swift_allocObject();
  *(v70 + 16) = sub_10035728C;
  *(v70 + 24) = v69;
  v73 = swift_allocObject();
  *(v73 + 16) = sub_10026EE84;
  *(v73 + 24) = v70;
  sub_10025C9B0(&unk_1006D7720);
  _allocateUninitializedArray<A>(_:)();
  v74 = v5;

  *v74 = sub_10026434C;
  v74[1] = v71;

  v74[2] = sub_10026434C;
  v74[3] = v72;

  v74[4] = sub_10026EF2C;
  v74[5] = v73;
  sub_1002612B0();

  if (os_log_type_enabled(v75, v76))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    sub_10025C9B0(&qword_1006D7290);
    v61 = sub_1002641E8(0);
    v62 = sub_1002641E8(1);
    v87 = buf;
    v88 = v61;
    v89 = v62;
    sub_10026423C(2, &v87);
    sub_10026423C(1, &v87);
    v90 = sub_10026434C;
    v91 = v71;
    sub_100264250(&v90, &v87, &v88, &v89);
    v90 = sub_10026434C;
    v91 = v72;
    sub_100264250(&v90, &v87, &v88, &v89);
    v90 = sub_10026EF2C;
    v91 = v73;
    sub_100264250(&v90, &v87, &v88, &v89);
    _os_log_impl(&_mh_execute_header, v75, v76, "Handling sceneFor action %s", buf, 0xCu);
    sub_10026429C(v61);
    sub_10026429C(v62);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v56 = v63[35];
  v57 = v63[31];
  v59 = v63[30];
  v55 = v63[32];
  _objc_release(v75);
  v58 = *(v55 + 8);
  v58(v56, v57);
  sub_1002F171C(v59, (v63 + 12));
  sub_10025C9B0(&qword_1006D9B18);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v63[17] = 0;
    v63[18] = 0;
    v63[19] = 0;
    v63[20] = 0;
    v63[21] = 0;
  }

  if (v63[20])
  {
    sub_10035805C(v63 + 17, v63 + 7);
    v53 = v63[10];
    v52 = v63[11];
    sub_10027EC3C(v63 + 7, v53);
    v54 = (*(v52 + 8))(v53);
    if (v54)
    {
      v51 = v63[29];
      v63[28] = v54;
      _objc_retain(v54);
      *v51 = v54;
      v50 = enum case for IntentSceneConfiguration.existingScene(_:);
      v6 = type metadata accessor for IntentSceneConfiguration();
      (*(*(v6 - 8) + 104))(v51, v50);
      _objc_release(v54);
      sub_1000160F4((v63 + 7));
    }

    else
    {
      v7 = v63[34];
      v41 = v63[31];
      v8 = Logger.appIntentLogger.unsafeMutableAddressor();
      v66(v7, v8, v41);

      v42 = swift_allocObject();
      *(v42 + 16) = v67;
      *(v42 + 24) = v68;
      oslog = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();
      v44 = swift_allocObject();
      *(v44 + 16) = 32;
      v45 = swift_allocObject();
      *(v45 + 16) = 8;
      v43 = swift_allocObject();
      *(v43 + 16) = sub_10035728C;
      *(v43 + 24) = v42;
      v46 = swift_allocObject();
      *(v46 + 16) = sub_10026EE84;
      *(v46 + 24) = v43;
      _allocateUninitializedArray<A>(_:)();
      v47 = v9;

      *v47 = sub_10026434C;
      v47[1] = v44;

      v47[2] = sub_10026434C;
      v47[3] = v45;

      v47[4] = sub_10026EF2C;
      v47[5] = v46;
      sub_1002612B0();

      if (os_log_type_enabled(oslog, v49))
      {
        v38 = static UnsafeMutablePointer.allocate(capacity:)();
        sub_10025C9B0(&qword_1006D7290);
        v39 = sub_1002641E8(0);
        v40 = sub_1002641E8(1);
        v82 = v38;
        v83 = v39;
        v84 = v40;
        sub_10026423C(2, &v82);
        sub_10026423C(1, &v82);
        v85 = sub_10026434C;
        v86 = v44;
        sub_100264250(&v85, &v82, &v83, &v84);
        v85 = sub_10026434C;
        v86 = v45;
        sub_100264250(&v85, &v82, &v83, &v84);
        v85 = sub_10026EF2C;
        v86 = v46;
        sub_100264250(&v85, &v82, &v83, &v84);
        _os_log_impl(&_mh_execute_header, oslog, v49, "Failed to find a usable scene for %s. Requesting a new scene.", v38, 0xCu);
        sub_10026429C(v39);
        sub_10026429C(v40);
        UnsafeMutablePointer.deallocate()();
      }

      else
      {
      }

      v34 = v63[34];
      v35 = v63[31];
      v37 = v63[29];
      _objc_release(oslog);
      v58(v34, v35);
      v36 = enum case for IntentSceneConfiguration.newScene(_:);
      v10 = type metadata accessor for IntentSceneConfiguration();
      (*(*(v10 - 8) + 104))(v37, v36);
      sub_1000160F4((v63 + 7));
    }

    v17 = *(v63[24] + 8);

    return v17();
  }

  else
  {
    v11 = v63[33];
    v25 = v63[31];
    sub_10000B0D8((v63 + 17));
    v12 = Logger.appIntentLogger.unsafeMutableAddressor();
    v66(v11, v12, v25);

    v26 = swift_allocObject();
    *(v26 + 16) = v67;
    *(v26 + 24) = v68;
    log = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    v28 = swift_allocObject();
    *(v28 + 16) = 32;
    v29 = swift_allocObject();
    *(v29 + 16) = 8;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_10035728C;
    *(v27 + 24) = v26;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_10026EE84;
    *(v30 + 24) = v27;
    _allocateUninitializedArray<A>(_:)();
    v31 = v13;

    *v31 = sub_10026434C;
    v31[1] = v28;

    v31[2] = sub_10026434C;
    v31[3] = v29;

    v31[4] = sub_10026EF2C;
    v31[5] = v30;
    sub_1002612B0();

    if (os_log_type_enabled(log, v33))
    {
      v22 = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v23 = sub_1002641E8(0);
      v24 = sub_1002641E8(1);
      v77 = v22;
      v78 = v23;
      v79 = v24;
      sub_10026423C(2, &v77);
      sub_10026423C(1, &v77);
      v80 = sub_10026434C;
      v81 = v28;
      sub_100264250(&v80, &v77, &v78, &v79);
      v80 = sub_10026434C;
      v81 = v29;
      sub_100264250(&v80, &v77, &v78, &v79);
      v80 = sub_10026EF2C;
      v81 = v30;
      sub_100264250(&v80, &v77, &v78, &v79);
      _os_log_impl(&_mh_execute_header, log, v33, "Expected CapableSceneProviding intent. Got %s", v22, 0xCu);
      sub_10026429C(v23);
      sub_10026429C(v24);
      UnsafeMutablePointer.deallocate()();
    }

    else
    {
    }

    v21 = v63[33];
    v18 = v63[31];
    v19 = v63[30];
    _objc_release(log);
    v58(v21, v18);
    sub_10028B33C();
    swift_allocError();
    v20 = v14;
    sub_1002F171C(v19, v14);
    *(v20 + 40) = 0;
    swift_willThrow();

    v15 = *(v63[24] + 8);

    return v15();
  }
}

uint64_t sub_10035728C()
{
  result = *(v0 + 16);
  InstantAnswerView.Model.Airport.code.getter();
  return result;
}

uint64_t sub_100357298(uint64_t a1, uint64_t a2)
{
  v3[25] = a2;
  v3[17] = v3;
  v3[18] = 0;
  v3[19] = 0;
  v3[20] = 0;
  v4 = type metadata accessor for Logger();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v3[18] = a1;
  v3[19] = a2;
  v3[20] = v2;
  type metadata accessor for MainActor();
  v3[29] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003573F8, v5);
}

uint64_t sub_1003573F8()
{
  v1 = *(v0 + 200);
  *(v0 + 136) = v0;
  sub_1002F171C(v1, v0 + 56);
  sub_10025C9B0(&qword_1006D9B10);
  sub_10025C9B0(&qword_1006D9B20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v24[12] = 0;
    v24[13] = 0;
    v24[14] = 0;
    v24[15] = 0;
    v24[16] = 0;
  }

  if (v24[15])
  {
    v23 = v24[25];
    sub_10035805C(v24 + 12, v24 + 2);
    v22 = v24[5];
    v21 = v24[6];
    sub_10027EC3C(v24 + 2, v22);
    (*(*(v21 + 16) + 8))(v23, v22);
    sub_1000160F4((v24 + 2));

    v2 = *(v24[17] + 8);
  }

  else
  {
    v3 = v24[28];
    v17 = v24[26];
    v16 = v24[27];
    sub_10000B0D8((v24 + 12));
    v4 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v16 + 16))(v3, v4, v17);
    v19 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    sub_10025C9B0(&unk_1006D7720);
    v20 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v19, v18))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v13 = sub_1002641E8(0);
      v14 = sub_1002641E8(0);
      v24[21] = buf;
      v24[22] = v13;
      v24[23] = v14;
      sub_10026423C(0, v24 + 21);
      sub_10026423C(0, v24 + 21);
      v24[24] = v20;
      v15 = swift_task_alloc();
      v15[2] = v24 + 21;
      v15[3] = v24 + 22;
      v15[4] = v24 + 23;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, v19, v18, "Expected a DisplayableAppIntent", buf, 2u);
      sub_10026429C(v13);
      sub_10026429C(v14);
      UnsafeMutablePointer.deallocate()();
    }

    v8 = v24[28];
    v9 = v24[26];
    v10 = v24[25];
    v7 = v24[27];
    _objc_release(v19);
    (*(v7 + 8))(v8, v9);
    sub_10028B33C();
    swift_allocError();
    v11 = v5;
    sub_1002F171C(v10, v5);
    *(v11 + 40) = 1;
    swift_willThrow();

    v2 = *(v24[17] + 8);
  }

  return v2();
}

id sub_100357A30()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MailAppIntentConfigurator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100357A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1002609F0;

  return sub_100355BE8(a1, a2, a3);
}

uint64_t sub_100357B44(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1002609F0;

  return sub_100357298(a1, a2);
}

uint64_t sub_100357C04()
{
  v35 = v0;
  sub_100358098(v0, v33);
  if (v34)
  {
    if (v34 == 1)
    {
      sub_10035805C(v33, v26);
      v24 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v25 = v4;
      v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Could not display app intent for ", 0x21uLL, 1);
      DefaultStringInterpolation.appendLiteral(_:)(v5);

      sub_1002F171C(v26, v23);
      sub_10025C9B0(&qword_1006D9B10);
      v21 = String.init<A>(describing:)();
      v22 = v6;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      sub_100268744();
      v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
      DefaultStringInterpolation.appendLiteral(_:)(v7);

      sub_100268744();
      v14 = String.init(stringInterpolation:)();
      sub_1000160F4(v26);
      return v14;
    }

    else
    {
      sub_10035805C(v33, v32);
      v30 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v31 = v8;
      v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Received unexpected app intent for ", 0x23uLL, 1);
      DefaultStringInterpolation.appendLiteral(_:)(v9);

      sub_1002F171C(v32, v29);
      sub_10025C9B0(&qword_1006D9B10);
      v27 = String.init<A>(describing:)();
      v28 = v10;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      sub_100268744();
      v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
      DefaultStringInterpolation.appendLiteral(_:)(v11);

      sub_100268744();
      v13 = String.init(stringInterpolation:)();
      sub_1000160F4(v32);
      return v13;
    }
  }

  else
  {
    sub_10035805C(v33, __dst);
    v18 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v19 = v1;
    v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Could not find a scene for ", 0x1BuLL, 1);
    DefaultStringInterpolation.appendLiteral(_:)(v2);

    sub_1002F171C(__dst, v17);
    sub_10025C9B0(&qword_1006D9B10);
    String.init<A>(describing:)();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    sub_100268744();
    v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    DefaultStringInterpolation.appendLiteral(_:)(v3);

    sub_100268744();
    v15 = String.init(stringInterpolation:)();
    sub_1000160F4(__dst);
    return v15;
  }
}

uint64_t sub_100358098(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    v3 = *(a1 + 24);
    if (*(a1 + 40) == 1)
    {
      *(a2 + 24) = *(a1 + 24);
      *(a2 + 32) = *(a1 + 32);
      (**(v3 - 8))();
      *(a2 + 40) = 1;
    }

    else
    {
      *(a2 + 24) = *(a1 + 24);
      *(a2 + 32) = *(a1 + 32);
      (**(v3 - 8))();
      *(a2 + 40) = 2;
    }
  }

  else
  {
    v2 = *(a1 + 24);
    *(a2 + 24) = v2;
    *(a2 + 32) = *(a1 + 32);
    (**(v2 - 8))();
    *(a2 + 40) = 0;
  }

  return a2;
}

uint64_t sub_100358218(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 41))
    {
      v4 = *a1 + 253;
    }

    else
    {
      v2 = *(a1 + 40) ^ 0xFF;
      if (v2 >= 0xFD)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100358310(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 41);
  if (a2 > 0xFD)
  {
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3 >= 0xFE)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1003584F0()
{
  if (qword_1006D5F10 != -1)
  {
    swift_once();
  }

  return v1;
}

uint64_t sub_100358564(uint64_t a1)
{
  v9 = a1;
  v8 = type metadata accessor for UUID();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v3 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v4 = &v2 - v3;
  (*(v6 + 16))();
  (*(v6 + 40))(v5, v4, v8);
  return (*(v6 + 8))(v9, v8);
}

uint64_t sub_100358678@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v9 = "An email mailbox";
  v1 = sub_10025C9B0(&qword_1006D6280);
  v3 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v20 = &v3 - v3;
  v6 = 0;
  v4 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v13 = &v3 - v4;
  v5 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v12 = &v3 - v5;
  v7 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v10 = &v3 - v7;
  v17 = type metadata accessor for LocalizedStringResource();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v8 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17);
  v19 = &v3 - v8;
  v16 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Mailbox", 7uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v16 & 1);
  sub_100015CC0();
  sub_10025D410(v13);
  v21 = v9;
  v22 = 16;
  v23 = 2;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v14 + 56))(v20, v16, v16, v17);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_10035896C()
{
  type metadata accessor for Mailbox();

  EntityProperty.wrappedValue.getter();

  return v1;
}

uint64_t type metadata accessor for Mailbox()
{
  v1 = qword_1006D9C38;
  if (!qword_1006D9C38)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_100358A54()
{
  type metadata accessor for Mailbox();

  EntityProperty.wrappedValue.setter();
}

void (*sub_100358AE8(void *a1))(void **a1)
{
  v3 = sub_100294700(0x30uLL);
  *a1 = v3;
  v3[4] = *(v1 + *(type metadata accessor for Mailbox() + 20));

  v3[5] = EntityProperty.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_100358B90()
{
  type metadata accessor for Mailbox();

  v1 = EntityProperty.projectedValue.getter();

  return v1;
}

uint64_t sub_100358BF4()
{
  v2 = *(v0 + *(type metadata accessor for Mailbox() + 20));

  return v2;
}

uint64_t sub_100358C2C(uint64_t a1)
{

  *(v1 + *(type metadata accessor for Mailbox() + 20)) = a1;
}

uint64_t sub_100358C78()
{
  type metadata accessor for Mailbox();

  EntityProperty.wrappedValue.getter();
}

uint64_t sub_100358CD8(char *a1)
{
  v6 = a1;
  v8 = 0;
  v7 = 0;
  v3 = (*(*(sub_10025C9B0(&qword_1006D9B50) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v8 = __chkstk_darwin(v6);
  v7 = v1;
  v5 = *(v1 + *(type metadata accessor for Mailbox() + 24));

  sub_100358DBC(v6, v4);
  EntityProperty.wrappedValue.setter();

  return sub_100358F78(v6);
}

char *sub_100358DBC(char *a1, char *a2)
{
  v13 = type metadata accessor for MailAccountEntity();
  v14 = *(v13 - 1);
  if ((*(v14 + 48))(a1, 1))
  {
    v3 = sub_10025C9B0(&qword_1006D9B50);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = type metadata accessor for UUID();
    (*(*(v2 - 8) + 16))(a2, a1);
    v5 = v13[5];
    v6 = *&a1[v5];

    *&a2[v5] = v6;
    v7 = v13[6];
    v8 = *&a1[v7];

    *&a2[v7] = v8;
    v9 = v13[7];
    v10 = *&a1[v9];

    *&a2[v9] = v10;
    (*(v14 + 56))();
  }

  return a2;
}

uint64_t sub_100358F78(uint64_t a1)
{
  v4 = type metadata accessor for MailAccountEntity();
  if (!(*(*(v4 - 8) + 48))(a1, 1))
  {
    v1 = type metadata accessor for UUID();
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

void (*sub_10035905C(void *a1))(void **a1)
{
  v3 = sub_100294700(0x30uLL);
  *a1 = v3;
  v3[4] = *(v1 + *(type metadata accessor for Mailbox() + 24));

  v3[5] = EntityProperty.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_100359104()
{
  type metadata accessor for Mailbox();

  v1 = EntityProperty.projectedValue.getter();

  return v1;
}

uint64_t sub_100359168()
{
  v2 = *(v0 + *(type metadata accessor for Mailbox() + 24));

  return v2;
}

uint64_t sub_1003591A0(uint64_t a1)
{

  *(v1 + *(type metadata accessor for Mailbox() + 24)) = a1;
}

void (*sub_100359234(void *a1))(void **a1, char a2)
{
  v2 = sub_100294700(0x28uLL);
  *a1 = v2;
  v2[4] = sub_100358AE8(v2);
  return sub_10034C098;
}

void (*sub_1003592D4(void *a1))(void **a1, char a2)
{
  v2 = sub_100294700(0x28uLL);
  *a1 = v2;
  v2[4] = sub_10035905C(v2);
  return sub_10034C098;
}

unint64_t sub_100359394()
{
  v2 = qword_1006DA320;
  if (!qword_1006DA320)
  {
    type metadata accessor for Mailbox();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA320);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10035944C()
{
  v2 = qword_1006D9B58;
  if (!qword_1006D9B58)
  {
    type metadata accessor for Mailbox();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9B58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100359504()
{
  v2 = qword_1006D9B60;
  if (!qword_1006D9B60)
  {
    type metadata accessor for Mailbox();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9B60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100359584(uint64_t a1, uint64_t a2)
{
  v2[4] = v2;
  v2[2] = 0;
  v2[3] = 0;
  v2[2] = a1;
  v2[3] = a2;
  return _swift_task_switch(sub_1003595C0, 0);
}

uint64_t sub_1003595C0()
{
  *(v0 + 32) = v0;
  type metadata accessor for Mailbox();
  v1 = _allocateUninitializedArray<A>(_:)();
  v2 = *(*(v0 + 32) + 8);

  return v2(v1);
}

uint64_t sub_100359660(uint64_t a1)
{
  *(v1 + 16) = v1;
  *(v1 + 24) = 0;
  *(v1 + 24) = a1;
  return _swift_task_switch(sub_100359694, 0);
}

uint64_t sub_100359694()
{
  *(v0 + 16) = v0;
  type metadata accessor for Mailbox();
  v1 = _allocateUninitializedArray<A>(_:)();
  v2 = *(*(v0 + 16) + 8);

  return v2(v1);
}

uint64_t sub_100359734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 24) = a1;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 32) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1002603BC;

  return sub_100359584(a2, a3);
}

uint64_t sub_1003597F4(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_100260618;

  return sub_100359660(a1);
}