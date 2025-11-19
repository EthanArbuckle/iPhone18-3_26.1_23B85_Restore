unint64_t sub_10049BBBC()
{
  result = qword_100CBD750;
  if (!qword_100CBD750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBD750);
  }

  return result;
}

unint64_t sub_10049BC14()
{
  result = qword_100CBD758;
  if (!qword_100CBD758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBD758);
  }

  return result;
}

unint64_t sub_10049BC68()
{
  result = qword_100CBD770;
  if (!qword_100CBD770)
  {
    sub_10022E824(&qword_100CBD768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBD770);
  }

  return result;
}

unint64_t sub_10049BCCC()
{
  result = qword_100CBD778;
  if (!qword_100CBD778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBD778);
  }

  return result;
}

uint64_t sub_10049BD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a5 & 1) != 0 || (sub_10000C70C(0, &qword_100CAB968), (static Measurement.== infix<A, B>(_:_:)()))
  {
    v9 = [objc_opt_self() mainBundle];
    v32 = 0x8000000100ACCB90;
    v10 = 0x206D6F7266204025;
    v11 = 0xEF65676172657661;
    v12 = 0x8000000100ACCB70;
    v13 = 0xD000000000000019;
    v14.super.isa = v9;
    v15 = 0x10000000000000A6;
LABEL_4:
    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v13, 0, v14, *&v10, *&v15);

    sub_10022C350(&qword_100CA40C8);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100A2C3F0;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_100035744();
    *(v16 + 32) = a3;
    *(v16 + 40) = a4;

    goto LABEL_5;
  }

  sub_10022C350(&qword_100CAB938);
  sub_10049EA9C();
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    v9 = [objc_opt_self() mainBundle];
    v10 = 0xD000000000000010;
    v32 = 0x8000000100ACCAB0;
    v12 = 0x8000000100ACCA70;
    v11 = 0x8000000100ACCA90;
    v15 = 0x10000000000000B6;
    v13 = 0xD000000000000019;
    v14.super.isa = v9;
    goto LABEL_4;
  }

  if (a6)
  {
    v19 = [objc_opt_self() mainBundle];
    v20._countAndFlagsBits = 0xD000000000000010;
    v33._object = 0x8000000100ACC990;
    v21._countAndFlagsBits = 0xD000000000000027;
    v21._object = 0x8000000100ACC940;
    v20._object = 0x8000000100ACC970;
    v33._countAndFlagsBits = 0x10000000000000D2;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v19, v20, v33);

    sub_10022C350(&qword_100CA40C8);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100A2C3F0;
    v25 = String.trimmingHyphensAndMinusSigns()();
    object = v25._object;
    countAndFlagsBits = v25._countAndFlagsBits;
  }

  else
  {
    v26 = [objc_opt_self() mainBundle];
    v34._object = 0x8000000100ACC880;
    v27._countAndFlagsBits = 0x206D6F7266204025;
    v27._object = 0xEF65676172657661;
    v28._object = 0x8000000100ACC860;
    v34._countAndFlagsBits = 0x10000000000000B9;
    v28._countAndFlagsBits = 0xD000000000000019;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v28, 0, v26, v27, v34);

    sub_10022C350(&qword_100CA40C8);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100A2C3F0;
    v29 = String.replacingHyphensWithMinusSigns()();
    object = v29._object;
    countAndFlagsBits = v29._countAndFlagsBits;
  }

  v30 = countAndFlagsBits;
  v31 = object;
  *(v22 + 56) = &type metadata for String;
  *(v22 + 64) = sub_100035744();
  *(v22 + 32) = v30;
  *(v22 + 40) = v31;
LABEL_5:
  v17 = String.init(format:_:)();

  return v17;
}

uint64_t sub_10049C128(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  v16._object = 0x8000000100ACC6B0;
  v6._countAndFlagsBits = 0xD00000000000001ELL;
  v6._object = 0x8000000100ACC670;
  v7._countAndFlagsBits = 0xD000000000000014;
  v7._object = 0x8000000100ACC690;
  v16._countAndFlagsBits = 0xD00000000000009ELL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v16);

  sub_10022C350(&qword_100CA40C8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100A2D320;
  *(v8 + 56) = &type metadata for Int;
  *(v8 + 64) = &protocol witness table for Int;
  *(v8 + 32) = 30;
  *(v8 + 96) = &type metadata for String;
  v9 = sub_100035744();
  *(v8 + 104) = v9;
  *(v8 + 72) = a1;
  *(v8 + 80) = a2;

  v10 = static String.localizedStringWithFormat(_:_:)();

  v11 = [v4 mainBundle];
  v17._object = 0x8000000100ACC7A0;
  v12._countAndFlagsBits = 0xD000000000000027;
  v12._object = 0x8000000100ACC750;
  v13._object = 0x8000000100ACC780;
  v17._countAndFlagsBits = 0xD0000000000000B0;
  v13._countAndFlagsBits = 0xD000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v17);

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100A2D320;
  *(v14 + 56) = &type metadata for Int;
  *(v14 + 64) = &protocol witness table for Int;
  *(v14 + 32) = 30;
  *(v14 + 96) = &type metadata for String;
  *(v14 + 104) = v9;
  *(v14 + 72) = a1;
  *(v14 + 80) = a2;

  static String.localizedStringWithFormat(_:_:)();

  return v10;
}

void sub_10049C3B4()
{
  sub_10000C778();
  v122 = v0;
  v2 = v1;
  v4 = v3;
  v121 = v5;
  type metadata accessor for NumberFormatStyleConfiguration.SignDisplayStrategy();
  sub_1000037C4();
  v114 = v7;
  v115 = v6;
  __chkstk_darwin(v6);
  sub_1000038E4();
  v112 = v8;
  sub_1000038CC();
  v124 = type metadata accessor for WeatherFormatPlaceholder();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000038E4();
  v13 = v12;
  v14 = sub_10022C350(&qword_100CAA9F0);
  sub_100003810(v14);
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v128._object - v16;
  v123 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  sub_1000037C4();
  v127 = v18;
  __chkstk_darwin(v19);
  sub_100003848();
  v108 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  v23 = &v128._object - v22;
  v24 = sub_10022C350(&qword_100CA53F8);
  sub_1000037C4();
  v119 = v25;
  __chkstk_darwin(v26);
  sub_100003848();
  v104 = v27;
  sub_10000386C();
  __chkstk_darwin(v28);
  v126 = &v128._object - v29;
  __chkstk_darwin(v30);
  v125 = &v128._object - v31;
  Measurement.rounded.getter();
  Measurement.rounded.getter();
  v106 = objc_opt_self();
  v32 = [v106 mainBundle];
  sub_10001388C();
  sub_100003CD0();
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  v128._countAndFlagsBits = 0x100000000000006ALL;
  v36 = NSLocalizedString(_:tableName:bundle:value:comment:)(v34, v35, v4, v33, v128);
  countAndFlagsBits = v36._countAndFlagsBits;
  v129._object = v36._object;

  v118 = sub_10022C350(&qword_100CA40C8);
  v37 = swift_allocObject();
  v117 = xmmword_100A2C3F0;
  *(v37 + 16) = xmmword_100A2C3F0;
  v38 = type metadata accessor for Locale();
  sub_1000037E8();
  v40 = *(v39 + 16);
  v111 = v2;
  v102 = v40;
  v99 = v39 + 16;
  v40(v17, v2, v38);
  sub_10000E7B0();
  v103 = v38;
  sub_10001B350(v41, v42, v43, v38);
  static Set<>.full.getter();
  static WeatherFormatStyle<>.weather(_:locale:)();

  v105 = v17;
  sub_1001235D8(v17);
  v44 = *(v10 + 104);
  v45 = v13;
  v46 = v13;
  v101 = enum case for WeatherFormatPlaceholder.none(_:);
  v47 = v124;
  v100 = v10 + 104;
  v98 = v44;
  v44(v46);
  v97 = type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  sub_100004324();
  v50 = sub_10049EB4C(v48, v49);
  v51 = v23;
  v120 = v24;
  v52 = v123;
  v96 = v50;
  v53 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v55 = v54;

  v56 = *(v10 + 8);
  v113 = v45;
  v116 = v10 + 8;
  v95 = v56;
  v56(v45, v47);
  v57 = *(v127 + 8);
  v58 = v104;
  v127 += 8;
  v57(v51, v52);
  *(v37 + 56) = &type metadata for String;
  v107 = sub_100035744();
  *(v37 + 64) = v107;
  *(v37 + 32) = v53;
  *(v37 + 40) = v55;
  v59 = static String.localizedStringWithFormat(_:_:)();
  v109 = v60;
  countAndFlagsBits = v59;

  sub_10000C70C(0, &qword_100CA51B0);
  static Measurement<>.- infix(_:_:)();
  v61 = v112;
  if (v122)
  {
    static NumberFormatStyleConfiguration.SignDisplayStrategy.never.getter();
  }

  else
  {
    static NumberFormatStyleConfiguration.SignDisplayStrategy.always(includingZero:)();
  }

  v62 = v105;
  v63 = v103;
  v102(v105, v111, v103);
  sub_10000E7B0();
  sub_10001B350(v64, v65, v66, v63);
  static Set<>.full.getter();
  v67 = v108;
  static WeatherFormatStyle<>.weather(_:sign:locale:)();

  sub_1001235D8(v62);
  (*(v114 + 8))(v61, v115);
  v68 = v113;
  v69 = v124;
  v98(v113, v101, v124);
  static UnitManager.standard.getter();
  v70 = v120;
  v71 = v123;
  v72 = v58;
  v73 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v115 = v74;

  v95(v68, v69);
  v57(v67, v71);
  v75 = Measurement.value.getter();
  if (v76 <= 0.0)
  {
    v72 = v58;
    v79 = Measurement.value.getter();
    v77 = v58;
    if (v80 < 0.0 && (v122 & 1) != 0)
    {
      v81 = sub_1000315F0(v79, "mainBundle");
      sub_10001388C();
    }

    else
    {
      v82 = sub_1000315F0(v79, "mainBundle");
      sub_100014754();
    }
  }

  else
  {
    v77 = v58;
    v78 = sub_1000315F0(v75, "mainBundle");
    sub_10001388C();
  }

  sub_100003CD0();
  v83._countAndFlagsBits = 0;
  v83._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v84, v85, v72, v83, v129);
  sub_10002C76C();

  v86 = swift_allocObject();
  *(v86 + 16) = v117;
  v87 = v107;
  *(v86 + 56) = &type metadata for String;
  *(v86 + 64) = v87;
  v88 = v115;
  *(v86 + 32) = v73;
  *(v86 + 40) = v88;
  v89 = static String.localizedStringWithFormat(_:_:)();
  v91 = v90;

  v92 = *(v119 + 8);
  v92(v77, v70);
  v92(v126, v70);
  v92(v125, v70);
  v93 = v121;
  *v121 = v89;
  v93[1] = v91;
  v93[2] = 0;
  v93[3] = 0;
  v94 = v109;
  v93[4] = countAndFlagsBits;
  v93[5] = v94;
  sub_10000536C();
}

void sub_10049CCA8()
{
  sub_10000C778();
  v123 = v0;
  v2 = v1;
  v129 = v3;
  v109 = v4;
  v108 = type metadata accessor for WeatherFormatPlaceholder();
  sub_1000037C4();
  v132 = v5;
  __chkstk_darwin(v6);
  sub_1000038E4();
  v107 = v7;
  v8 = sub_10022C350(&qword_100CAA9F0);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  v104 = &v98 - v10;
  sub_1000038CC();
  type metadata accessor for NumberFormatStyleConfiguration.SignDisplayStrategy();
  sub_1000037C4();
  v117 = v12;
  v118 = v11;
  __chkstk_darwin(v11);
  sub_1000038E4();
  v116 = v13;
  sub_1000038CC();
  v106 = type metadata accessor for NSUnitLength.BaseWeatherFormatStyle();
  sub_1000037C4();
  v127 = v14;
  __chkstk_darwin(v15);
  sub_100003848();
  v105 = v16;
  sub_10000386C();
  __chkstk_darwin(v17);
  v103 = &v98 - v18;
  sub_1000038CC();
  v19 = type metadata accessor for WeatherFormatScaling();
  v110 = v19;
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  sub_100003848();
  v115 = v21;
  sub_10000386C();
  __chkstk_darwin(v22);
  v24 = &v98 - v23;
  v124 = sub_10022C350(&qword_100CAB938);
  sub_1000037C4();
  v130 = v25;
  __chkstk_darwin(v26);
  sub_100003848();
  v121 = v27;
  sub_10000386C();
  __chkstk_darwin(v28);
  v30 = &v98 - v29;
  v32 = __chkstk_darwin(v31);
  v34 = &v98 - v33;
  v35 = enum case for WeatherFormatScaling.automatic(_:);
  v36 = *(v20 + 104);
  (v36)(v24, enum case for WeatherFormatScaling.automatic(_:), v19, v32);
  v37 = v2;
  Measurement<>.converted(usage:scaling:)();
  v38 = *(v20 + 8);
  v131 = v20 + 8;
  v39 = v110;
  v38(v24, v110);
  v36(v24, v35, v39);
  v125 = v37;
  Measurement<>.converted(usage:scaling:)();
  v100 = v24;
  v126 = v38;
  v38(v24, v39);
  sub_10000C70C(0, &qword_100CAB968);
  v128 = v34;
  v129 = v30;
  v40 = v115;
  static Measurement<>.- infix(_:_:)();
  v120 = v35;
  v119 = v20 + 104;
  v122 = v36;
  v36(v40, v35, v39);
  v41 = v116;
  if (v123)
  {
    static NumberFormatStyleConfiguration.SignDisplayStrategy.automatic.getter();
  }

  else
  {
    static NumberFormatStyleConfiguration.SignDisplayStrategy.always(includingZero:)();
  }

  v114 = type metadata accessor for Locale();
  v42 = v104;
  v43 = sub_100016A04();
  sub_10001B350(v43, v44, v45, v46);
  static Set<>.full.getter();
  v47 = v103;
  static WeatherFormatStyle<>.weather(_:usage:scaling:trimLeadingZeroes:sign:locale:)();

  sub_1001235D8(v42);
  (*(v117 + 8))(v41, v118);
  v126(v40, v39);
  LODWORD(v116) = enum case for WeatherFormatPlaceholder.none(_:);
  v48 = v132;
  v49 = *(v132 + 104);
  v117 = v132 + 104;
  v118 = v49;
  v50 = v107;
  v51 = v108;
  v49(v107);
  v111 = type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  sub_100019908();
  v115 = sub_10049EB4C(v52, v53);
  v54 = v124;
  v55 = v106;
  v56 = v121;
  v101 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v102 = v57;

  v58 = *(v48 + 8);
  v132 = v48 + 8;
  v113 = v58;
  v58(v50, v51);
  v59 = *(v127 + 8);
  v127 += 8;
  v112 = v59;
  v59(v47, v55);
  v60 = *(v130 + 8);
  v130 += 8;
  v121 = v60;
  v60(v56, v54);
  v61 = sub_100016A04();
  sub_10001B350(v61, v62, v63, v114);
  static Set<>.full.getter();
  v64 = v100;
  v65 = v110;
  v122(v100, v120, v110);
  v66 = v105;
  sub_1000695EC();

  v67 = sub_10000EAB8();
  v68(v67);
  sub_1001235D8(v42);
  v118(v50, v116, v51);
  static UnitManager.standard.getter();
  v103 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v99 = v69;

  v113(v50, v51);
  v112(v66, v55);
  v70 = sub_100016A04();
  sub_10001B350(v70, v71, v72, v114);
  static Set<>.full.getter();
  v122(v64, v120, v65);
  sub_1000695EC();

  v73 = sub_10000EAB8();
  v74(v73);
  sub_1001235D8(v42);
  v118(v50, v116, v51);
  static UnitManager.standard.getter();
  v75 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v76 = v99;
  v77 = v75;
  sub_100024730();

  v113(v50, v51);
  v78 = v66;
  v79 = v103;
  v112(v78, v55);
  v80 = 1;
  if (v79 != v77 || v76 != v65)
  {
    v80 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v131 = sub_10049BD20(v128, v129, v101, v102, v80 & 1, v123 & 1);
  v132 = v82;

  sub_10049C128(v79, v76);

  v83 = [objc_opt_self() mainBundle];
  v133._object = 0x8000000100ACC540;
  sub_100003CD0();
  v84._countAndFlagsBits = 0xD000000000000016;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v85, v86, v83, v84, v133);

  sub_10022C350(&qword_100CA40C8);
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_100A2D320;
  *(v87 + 56) = &type metadata for Int;
  *(v87 + 64) = &protocol witness table for Int;
  *(v87 + 32) = 30;
  *(v87 + 96) = &type metadata for String;
  *(v87 + 104) = sub_100035744();
  *(v87 + 72) = v77;
  *(v87 + 80) = v65;
  static String.localizedStringWithFormat(_:_:)();
  sub_100024730();

  v88 = type metadata accessor for AveragesComparisonStrings();

  v89 = v109;
  AttributedString.init(markdown:fallback:)();
  v90 = *(v88 + 24);
  v91 = type metadata accessor for AttributedString();
  sub_10001B350(v89 + v90, 1, 1, v91);

  AttributedString.init(markdown:fallback:)();

  AttributedString.init(markdown:fallback:)();
  v92 = v124;
  v93 = v121;
  v121(v129, v124);
  v93(v128, v92);
  sub_10000E7B0();
  sub_10001B350(v94, v95, v96, v91);
  v97 = v132;
  *v89 = v131;
  v89[1] = v97;
  sub_10000536C();
}

void sub_10049D774()
{
  sub_10000C778();
  v1 = v0;
  v105 = v2;
  v106 = v0;
  v100 = v3;
  v115 = v4;
  v103 = v5;
  v95 = type metadata accessor for Locale.Language();
  sub_1000037C4();
  v94 = v6;
  __chkstk_darwin(v7);
  sub_1000038E4();
  v93 = v8;
  sub_1000038CC();
  v9 = type metadata accessor for WeatherFormatPlaceholder();
  sub_1000037C4();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = v14 - v13;
  v16 = sub_10022C350(&qword_100CAA9F0);
  sub_100003810(v16);
  sub_100003828();
  __chkstk_darwin(v17);
  v19 = &v92 - v18;
  v107 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  sub_1000037C4();
  v116 = v20;
  __chkstk_darwin(v21);
  sub_1000037D8();
  v24 = v23 - v22;
  v25 = type metadata accessor for Locale();
  sub_1000037E8();
  v27 = *(v26 + 16);
  v108 = v26 + 16;
  v109 = v27;
  v27(v19, v1, v25);
  v28 = sub_100007FB4();
  sub_10001B350(v28, v29, v30, v25);
  static Set<>.full.getter();
  static WeatherFormatStyle<>.weather(_:locale:)();

  sub_1001235D8(v19);
  v114 = enum case for WeatherFormatPlaceholder.none(_:);
  v31 = v11 + 104;
  v112 = *(v11 + 104);
  v112(v15);
  v111 = type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  v113 = sub_10022C350(&qword_100CA53F8);
  sub_100004324();
  v110 = sub_10049EB4C(v32, v33);
  sub_10000C8E8();
  v34 = v107;
  v35 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v101 = v36;
  v102 = v35;

  v37 = v11 + 8;
  v38 = *(v11 + 8);
  v115 = v37;
  v39 = v9;
  v38(v15, v9);
  v40 = *(v116 + 8);
  v116 += 8;
  v40(v24, v34);
  v109(v19, v106, v25);
  v41 = sub_100007FB4();
  v98 = v25;
  sub_10001B350(v41, v42, v43, v25);
  static Set<>.full.getter();
  static WeatherFormatStyle<>.weather(_:locale:)();

  sub_1001235D8(v19);
  v104 = v31;
  (v112)(v15, v114, v39);
  static UnitManager.standard.getter();
  sub_10000C8E8();
  v44 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v99 = v45;
  v100 = v44;

  v46 = v15;
  v96 = v38;
  v38(v15, v39);
  v47 = v106;
  v97 = v40;
  v40(v24, v34);
  v48 = v93;
  Locale.language.getter();
  v49 = Locale.Language.prefersFullTemperatureScale.getter();
  (*(v94 + 8))(v48, v95);
  if (v49)
  {
    static Set<>.value.getter();
    v50 = v98;
    v109(v19, v47, v98);
    v51 = sub_100007FB4();
    sub_10001B350(v51, v52, v53, v50);
    static WeatherFormatStyle<>.weather(_:locale:)();

    sub_1001235D8(v19);
    v54 = sub_10003C514();
    v55(v54);
    static UnitManager.standard.getter();
    v56 = v39;
    v94 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v95 = v57;

    v58 = v96;
    v96(v46, v56);
    v59 = sub_10000C8E8();
    v60 = v97;
    v97(v59);
    static Set<>.unit.getter();
    v109(v19, v47, v50);
    v61 = sub_100007FB4();
    sub_10001B350(v61, v62, v63, v50);
    static WeatherFormatStyle<>.weather(_:locale:)();

    sub_1001235D8(v19);
    (v112)(v46, v114, v56);
    static UnitManager.standard.getter();
    v64 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v66 = v65;
    v67 = v94;

    v68 = v56;
    v69 = v95;
    v58(v46, v68);
    v70 = sub_10000C8E8();
    v60(v70);
  }

  else
  {
    v71 = v98;
    v109(v19, v47, v98);
    v72 = sub_100007FB4();
    sub_10001B350(v72, v73, v74, v71);
    static Set<>.full.getter();
    static WeatherFormatStyle<>.weather(_:locale:)();

    sub_1001235D8(v19);
    v75 = sub_10003C514();
    v76(v75);
    static UnitManager.standard.getter();
    v77 = v107;
    v67 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v69 = v78;

    v96(v46, v39);
    (v97)(v24, v77);
    v64 = 0;
    v66 = 0;
  }

  v79 = [objc_opt_self() mainBundle];
  v117._object = 0x8000000100ACD0E0;
  sub_100003CD0();
  v80._countAndFlagsBits = 0;
  v80._object = 0xE000000000000000;
  v117._countAndFlagsBits = 0x10000000000000A0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v81, v82, v79, v80, v117);
  sub_10002C76C();

  sub_10022C350(&qword_100CA40C8);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_100A2D320;
  *(v83 + 56) = &type metadata for String;
  v84 = sub_100035744();
  v85 = v99;
  *(v83 + 32) = v100;
  *(v83 + 40) = v85;
  *(v83 + 96) = &type metadata for String;
  *(v83 + 104) = v84;
  v86 = v101;
  v87 = v102;
  *(v83 + 64) = v84;
  *(v83 + 72) = v87;
  *(v83 + 80) = v86;
  v88 = static String.localizedStringWithFormat(_:_:)();
  v90 = v89;

  v91 = v103;
  *v103 = v67;
  v91[1] = v69;
  v91[2] = v64;
  v91[3] = v66;
  v91[4] = v88;
  v91[5] = v90;
  sub_10000536C();
}

void sub_10049DFC0()
{
  sub_10000C778();
  v126 = v0;
  v128 = v1;
  v130 = v2;
  v4 = v3;
  v125 = v5;
  v129 = type metadata accessor for WeatherFormatPlaceholder();
  sub_1000037C4();
  v133 = v6;
  __chkstk_darwin(v7);
  sub_1000038E4();
  v122 = v8;
  v9 = sub_10022C350(&qword_100CAA9F0);
  sub_100003810(v9);
  sub_100003828();
  __chkstk_darwin(v10);
  v120 = v95 - v11;
  sub_1000038CC();
  v121 = type metadata accessor for NumberFormatStyleConfiguration.SignDisplayStrategy();
  sub_1000037C4();
  v114 = v12;
  __chkstk_darwin(v13);
  sub_1000037D8();
  v16 = v15 - v14;
  v17 = type metadata accessor for WeatherFormatScaling();
  sub_1000037C4();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_100003848();
  v119 = v21;
  sub_10000386C();
  __chkstk_darwin(v22);
  v24 = v95 - v23;
  v25 = type metadata accessor for NSUnitLength.WeatherFormatUsage();
  sub_1000037C4();
  v27 = v26;
  __chkstk_darwin(v28);
  sub_100003848();
  v115 = v29;
  sub_10000386C();
  __chkstk_darwin(v30);
  v32 = v95 - v31;
  type metadata accessor for NSUnitLength.BaseWeatherFormatStyle();
  sub_1000037C4();
  v117 = v34;
  v118 = v33;
  __chkstk_darwin(v33);
  sub_100003848();
  v116 = v35;
  sub_10000386C();
  __chkstk_darwin(v36);
  v38 = v95 - v37;
  v134 = sub_10022C350(&qword_100CAB938);
  sub_1000037C4();
  v124 = v39;
  sub_100003828();
  __chkstk_darwin(v40);
  v42 = v95 - v41;
  v43 = sub_10000C70C(0, &qword_100CAB968);
  v131 = v42;
  v123 = v4;
  v95[1] = v43;
  static Measurement<>.- infix(_:_:)();
  v132 = v27;
  v44 = *(v27 + 104);
  v113 = enum case for NSUnitLength.WeatherFormatUsage.rainfall(_:);
  v127 = v25;
  v112 = v27 + 104;
  v111 = v44;
  v44(v32);
  v45 = v19;
  v46 = *(v19 + 104);
  v110 = enum case for WeatherFormatScaling.asProvidedButRounded(_:);
  v109 = v19 + 104;
  v108 = v46;
  v46(v24);
  if (v126)
  {
    static NumberFormatStyleConfiguration.SignDisplayStrategy.automatic.getter();
  }

  else
  {
    static NumberFormatStyleConfiguration.SignDisplayStrategy.always(includingZero:)();
  }

  v47 = type metadata accessor for Locale();
  sub_1000037E8();
  v106 = *(v48 + 16);
  v107 = v48 + 16;
  v49 = v120;
  v106(v120, v128, v47);
  sub_10000E7B0();
  sub_10001B350(v50, v51, v52, v47);
  static Set<>.full.getter();
  static WeatherFormatStyle<>.weather(_:usage:scaling:trimLeadingZeroes:sign:locale:)();

  sub_1001235D8(v49);
  (*(v114 + 8))(v16, v121);
  v53 = *(v45 + 8);
  v104 = v45 + 8;
  v105 = v53;
  v96 = v17;
  v53(v24, v17);
  v54 = *(v132 + 8);
  v132 += 8;
  v103 = v54;
  v54(v32, v127);
  v102 = enum case for WeatherFormatPlaceholder.none(_:);
  v55 = v133;
  v56 = *(v133 + 104);
  v100 = v133 + 104;
  v101 = v56;
  v57 = v122;
  v58 = v129;
  v56(v122);
  v99 = type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  sub_100019908();
  v98 = sub_10049EB4C(v59, v60);
  v61 = v118;
  v121 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v114 = v62;

  v63 = *(v55 + 8);
  v133 = v55 + 8;
  v97 = v63;
  v63(v57, v58);
  v117 = *(v117 + 8);
  (v117)(v38, v61);
  v64 = v115;
  v65 = v127;
  v111(v115, v113, v127);
  v66 = v119;
  v67 = v96;
  v108(v119, v110, v96);
  v106(v49, v128, v47);
  sub_10000E7B0();
  sub_10001B350(v68, v69, v70, v47);
  static Set<>.full.getter();
  v71 = v116;
  static WeatherFormatStyle<>.weather(_:usage:scaling:trimLeadingZeroes:locale:)();

  sub_1001235D8(v49);
  v105(v66, v67);
  v103(v64, v65);
  v72 = v129;
  v101(v57, v102, v129);
  static UnitManager.standard.getter();
  v73 = v130;
  v132 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v128 = v74;

  v97(v57, v72);
  (v117)(v71, v61);
  sub_10049EA9C();
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    v75 = [objc_opt_self() mainBundle];
    v135._object = 0x8000000100ACC450;
    sub_100003CD0();
    v76._countAndFlagsBits = 0xD000000000000010;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v77, v78, v75, v76, v135);
    sub_10002C76C();
    countAndFlagsBits = v121;
    v73 = v114;
  }

  else
  {
    if (v126 & 1) != 0 && (static Measurement.< infix<A, B>(_:_:)())
    {
      countAndFlagsBits = String.trimmingHyphensAndMinusSigns()()._countAndFlagsBits;
      sub_100024730();

      v75 = [objc_opt_self() mainBundle];
      v94 = 0x8000000100ACC340;
      sub_100003CD0();
      v86.super.isa = v75;
      v87 = 0xD000000000000010;
    }

    else
    {
      countAndFlagsBits = String.replacingHyphensWithMinusSigns()()._countAndFlagsBits;
      sub_100024730();

      v75 = [objc_opt_self() mainBundle];
      v94 = 0x8000000100ACC230;
      sub_100003CD0();
      v86.super.isa = v75;
    }

    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v80, *&v82, v86, *&v87, *&v85);
    sub_10002C76C();
  }

  sub_10022C350(&qword_100CA40C8);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_100A2C3F0;
  *(v88 + 56) = &type metadata for String;
  *(v88 + 64) = sub_100035744();
  v89 = v128;
  *(v88 + 32) = v132;
  *(v88 + 40) = v89;
  v90 = static String.localizedStringWithFormat(_:_:)();
  v92 = v91;

  (*(v124 + 8))(v131, v134);
  v93 = v125;
  *v125 = countAndFlagsBits;
  v93[1] = v73;
  v93[2] = 0;
  v93[3] = 0;
  v93[4] = v90;
  v93[5] = v92;
  sub_10000536C();
}

unint64_t sub_10049EA9C()
{
  result = qword_100CBD780;
  if (!qword_100CBD780)
  {
    sub_10022E824(&qword_100CAB938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBD780);
  }

  return result;
}

uint64_t type metadata accessor for AveragesComparisonStrings()
{
  result = qword_100CBD7E0;
  if (!qword_100CBD7E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10049EB4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10049EBBC()
{
  v0 = type metadata accessor for AttributedString();
  if (v1 <= 0x3F)
  {
    sub_10042FF28();
    if (v3 > 0x3F)
    {
      return v2;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v0;
}

uint64_t type metadata accessor for PressureComponentGaugeView()
{
  result = qword_100CBD880;
  if (!qword_100CBD880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10049ECF0()
{
  sub_1000077F0();
  if (v0 <= 0x3F)
  {
    sub_10013BCD0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10049ED90@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CA71B0);
  sub_1000037E8();
  __chkstk_darwin(v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for PressureComponentGaugeView();
  sub_10049F93C(v1 + *(v12 + 20), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ColorSchemeContrast();
    sub_1000037E8();
    return (*(v13 + 32))(a1, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v3);
  }
}

uint64_t sub_10049EF64@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  type metadata accessor for ColorSchemeContrast();
  sub_1000037C4();
  v49 = v4;
  v50 = v3;
  __chkstk_darwin(v3);
  v48 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v47 = &v46 - v7;
  v53 = sub_10022C350(&qword_100CBD8B8);
  sub_1000037E8();
  __chkstk_darwin(v8);
  v54 = &v46 - v9;
  v51 = sub_10022C350(&qword_100CBD8C0);
  sub_1000037E8();
  __chkstk_darwin(v10);
  v52 = &v46 - v11;
  v46 = type metadata accessor for ColorRenderingMode();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PressureComponentGaugeView();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17 - 8);
  v20 = sub_10022C350(&qword_100CBD8C8);
  sub_1000037C4();
  v22 = v21;
  __chkstk_darwin(v23);
  v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v46 - v27;
  sub_10049F7EC(v2, &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v30 = swift_allocObject();
  sub_10049F850(&v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29);
  (*(v13 + 104))(v16, enum case for ColorRenderingMode.nonLinear(_:), v46);
  Canvas<>.init(opaque:colorMode:rendersAsynchronously:renderer:)();
  Canvas.rendersAsynchronously.setter();
  Canvas.rendersFirstFrameAsynchronously.setter();
  (*(v22 + 16))(v25, v28, v20);
  v31 = v47;
  sub_10049ED90(v47);
  v33 = v48;
  v32 = v49;
  v34 = v50;
  (*(v49 + 104))(v48, enum case for ColorSchemeContrast.increased(_:), v50);
  LOBYTE(v13) = static ColorSchemeContrast.== infix(_:_:)();
  v35 = *(v32 + 8);
  v35(v33, v34);
  v35(v31, v34);
  if (v13)
  {
    v36 = static HierarchicalShapeStyle.primary.getter();
  }

  else
  {
    v36 = static HierarchicalShapeStyle.tertiary.getter();
  }

  v37 = v36;
  (*(v22 + 8))(v28, v20);
  v38 = v54;
  (*(v22 + 32))(v54, v25, v20);
  *(v38 + *(v53 + 36)) = v37;
  v39 = *(v51 + 36);
  v40 = enum case for BlendMode.plusLighter(_:);
  type metadata accessor for BlendMode();
  sub_1000037E8();
  v42 = v52;
  (*(v41 + 104))(&v52[v39], v40);
  sub_1002AB08C(v38, v42, &qword_100CBD8B8);
  v43 = v55;
  sub_1002AB08C(v42, v55, &qword_100CBD8C0);
  result = sub_10022C350(&qword_100CBD8D0);
  v45 = v43 + *(result + 36);
  *v45 = 0x3FF0000000000000;
  *(v45 + 8) = 0;
  return result;
}

uint64_t sub_10049F4A8(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for GraphicsContext.Shading();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for EnvironmentValues();
  v7 = *(v17 - 8);
  __chkstk_darwin(v17);
  v15 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  GraphicsContext.translateBy(x:y:)();
  v9 = 0;
  v16 = (v7 + 8);
  do
  {
    v10 = v9 * 360.0 / 60.0;
    if (v10 <= 130.0 || v10 > 230.0)
    {
      v11 = *a2;
      if (*(a2 + 8) != 1)
      {

        static os_log_type_t.fault.getter();
        v12 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v13 = v15;
        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_1000E4DF8(v11, 0);
        (*v16)(v13, v17);
      }

      Path.init(_:)();
      swift_beginAccess();
      sub_1006198FC();
      swift_endAccess();
      static GraphicsContext.Shading.color(_:)();

      GraphicsContext.fill(_:with:style:)();
      sub_1001A8674(v18);
      (*(v4 + 8))(v6, v3);
    }

    ++v9;
    result = GraphicsContext.rotate(by:)();
  }

  while (v9 != 60);
  return result;
}

uint64_t sub_10049F7EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PressureComponentGaugeView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10049F850(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PressureComponentGaugeView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10049F8B4(uint64_t a1)
{
  v3 = *(type metadata accessor for PressureComponentGaugeView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_10049F4A8(a1, v4);
}

uint64_t sub_10049F93C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA71B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10049F9AC()
{
  result = qword_100CBD8D8;
  if (!qword_100CBD8D8)
  {
    sub_10022E824(&qword_100CBD8D0);
    sub_10049FA38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBD8D8);
  }

  return result;
}

unint64_t sub_10049FA38()
{
  result = qword_100CBD8E0;
  if (!qword_100CBD8E0)
  {
    sub_10022E824(&qword_100CBD8C0);
    sub_10049FAC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBD8E0);
  }

  return result;
}

unint64_t sub_10049FAC4()
{
  result = qword_100CBD8E8;
  if (!qword_100CBD8E8)
  {
    sub_10022E824(&qword_100CBD8B8);
    sub_100006F64(&qword_100CBD8F0, &qword_100CBD8C8);
    sub_100006F64(&qword_100CA3ED0, &qword_100CA3ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBD8E8);
  }

  return result;
}

uint64_t sub_10049FBA8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for LocationPreviewViewAction();
  sub_1000037E8();
  __chkstk_darwin(v5);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for ModalViewAction();
  sub_1000037E8();
  __chkstk_darwin(v8);
  v10 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_10022C350(&qword_100CBD9B0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30[-v13];
  sub_1004A0360(v2, v10, type metadata accessor for ModalViewAction);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v25 = *v10;
      sub_10022C350(&qword_100CA36F8);
      inited = swift_initStackObject();
      v27 = sub_100005CB0(inited, xmmword_100A2C3F0);
      v27[4].n128_u64[1] = &type metadata for NotificationSettingsViewAction;
      v27[3].n128_u8[0] = v25;
      Dictionary.init(dictionaryLiteral:)();
      goto LABEL_8;
    case 2u:
      v20 = *v10;
      sub_10022C350(&qword_100CA36F8);
      v21 = swift_initStackObject();
      v22 = sub_100005CB0(v21, xmmword_100A2C3F0);
      v22[4].n128_u64[1] = &type metadata for NotificationsOptInViewAction;
      v22[3].n128_u8[0] = v20;
      Dictionary.init(dictionaryLiteral:)();
      goto LABEL_8;
    case 3u:
      memcpy(v32, v10, sizeof(v32));
      sub_10022C350(&qword_100CA36F8);
      v23 = swift_initStackObject();
      sub_100005CB0(v23, xmmword_100A2C3F0)[4].n128_u64[1] = &type metadata for ReportWeatherViewAction;
      v24 = swift_allocObject();
      v23[3].n128_u64[0] = v24;
      memcpy((v24 + 16), v32, 0x60uLL);
      sub_1004A024C(v32, &v31);
      Dictionary.init(dictionaryLiteral:)();
      ShortDescription.init(name:_:)();
      sub_1004A02A8(v32);
      break;
    case 4u:
      v18 = *v10;
      sub_10022C350(&qword_100CA36F8);
      v19 = swift_initStackObject();
      *(v19 + 16) = xmmword_100A2C3F0;
      strcpy((v19 + 32), "userInitiated");
      *(v19 + 46) = -4864;
      *(v19 + 72) = &type metadata for Bool;
      *(v19 + 48) = v18;
      Dictionary.init(dictionaryLiteral:)();
      goto LABEL_8;
    case 5u:
    case 6u:
      Dictionary.init(dictionaryLiteral:)();
LABEL_8:
      ShortDescription.init(name:_:)();
      break;
    default:
      sub_1004A02FC(v10, v7);
      sub_10022C350(&qword_100CA36F8);
      v15 = swift_initStackObject();
      v16 = sub_100005CB0(v15, xmmword_100A2C3F0);
      v16[4].n128_u64[1] = v4;
      v17 = sub_100042FB0(&v16[3]);
      sub_1004A0360(v7, v17, type metadata accessor for LocationPreviewViewAction);
      Dictionary.init(dictionaryLiteral:)();
      ShortDescription.init(name:_:)();
      sub_1004A03C0(v7);
      break;
  }

  a1[3] = v11;
  a1[4] = sub_1004A01E8();
  v28 = sub_100042FB0(a1);
  return (*(v12 + 32))(v28, v14, v11);
}

uint64_t sub_1004A015C()
{
  sub_1004A041C(&qword_100CBD9C0);

  return ShortDescribable.description.getter();
}

unint64_t sub_1004A01E8()
{
  result = qword_100CBD9B8;
  if (!qword_100CBD9B8)
  {
    sub_10022E824(&qword_100CBD9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBD9B8);
  }

  return result;
}

uint64_t sub_1004A02FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationPreviewViewAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004A0360(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1004A03C0(uint64_t a1)
{
  v2 = type metadata accessor for LocationPreviewViewAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004A041C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ModalViewAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1004A0460(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657461446E6F6F6DLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000100ACD1D0 == a2)
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

uint64_t sub_1004A0530(char a1)
{
  if (a1)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0x657461446E6F6F6DLL;
  }
}

uint64_t sub_1004A056C(void *a1)
{
  v3 = sub_10022C350(&qword_100CBDA68);
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v10[-v7];
  sub_1000161C0(a1, a1[3]);
  sub_1004A0AAC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  type metadata accessor for Date();
  sub_10005B714(&qword_100CA39B8);
  sub_10001EE14();
  if (!v1)
  {
    type metadata accessor for WeatherDataOverrides();
    v10[14] = 1;
    sub_10001EE14();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1004A06E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v29 = &v22 - v8;
  sub_10022C350(&qword_100CBDA58);
  sub_1000037C4();
  v27 = v10;
  v28 = v9;
  __chkstk_darwin(v9);
  v12 = &v22 - v11;
  v13 = type metadata accessor for WeatherDataOverrides();
  __chkstk_darwin(v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_1004A0AAC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  v23 = v13;
  v24 = v15;
  v16 = v27;
  v25 = v6;
  type metadata accessor for Date();
  v31 = 0;
  sub_10005B714(&qword_100CA3998);
  v18 = v28;
  v17 = v29;
  sub_10001C330();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v19 = v24;
  sub_100237E84(v17, v24);
  v30 = 1;
  v20 = v25;
  sub_10001C330();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v16 + 8))(v12, v18);
  sub_100237E84(v20, v19 + *(v23 + 20));
  sub_1004A0B00(v19, v26);
  sub_100006F14(a1);
  return sub_1004A0B64(v19);
}

uint64_t sub_1004A09DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1004A0460(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1004A0A04(uint64_t a1)
{
  v2 = sub_1004A0AAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004A0A40(uint64_t a1)
{
  v2 = sub_1004A0AAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1004A0AAC()
{
  result = qword_100CBDA60;
  if (!qword_100CBDA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBDA60);
  }

  return result;
}

uint64_t sub_1004A0B00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherDataOverrides();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004A0B64(uint64_t a1)
{
  v2 = type metadata accessor for WeatherDataOverrides();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for WeatherDataOverrides.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1004A0CA0()
{
  result = qword_100CBDA70;
  if (!qword_100CBDA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBDA70);
  }

  return result;
}

unint64_t sub_1004A0CF8()
{
  result = qword_100CBDA78;
  if (!qword_100CBDA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBDA78);
  }

  return result;
}

unint64_t sub_1004A0D50()
{
  result = qword_100CBDA80;
  if (!qword_100CBDA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBDA80);
  }

  return result;
}

void sub_1004A0DEC()
{
  type metadata accessor for CalendarDayViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_10000BB3C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1004A0EC0()
{
  v0 = type metadata accessor for CalendarDayCellViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

unint64_t sub_1004A0F60()
{
  result = type metadata accessor for CalendarGridCellViewModel(319);
  if (v1 <= 0x3F)
  {
    result = sub_1002B3B88();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

BOOL sub_1004A0FE4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CalendarDayCellViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = type metadata accessor for CalendarGridCellViewModel(0);
  v9 = sub_100003810(v8);
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  v13 = sub_10022C350(&qword_100CBDCD0);
  sub_100003810(v13);
  sub_100003828();
  __chkstk_darwin(v14);
  v16 = &v23 - v15;
  v18 = *(v17 + 56);
  sub_1004A234C(a1, &v23 - v15, type metadata accessor for CalendarGridCellViewModel);
  sub_1004A234C(a2, &v16[v18], type metadata accessor for CalendarGridCellViewModel);
  if (sub_100030484(v16) != 1)
  {
    sub_100005EEC();
    sub_1004A234C(v16, v12, v20);
    if (sub_100030484(&v16[v18]) != 1)
    {
      sub_1004A23A8(&v16[v18], v7, type metadata accessor for CalendarDayCellViewModel);
      v19 = sub_1004A11F0(v12, v7);
      sub_1004A2D64(v7, type metadata accessor for CalendarDayCellViewModel);
      sub_1004A2D64(v12, type metadata accessor for CalendarDayCellViewModel);
      sub_100074A80();
      return v19;
    }

    sub_10000433C();
    sub_1004A2D64(v12, v21);
    goto LABEL_6;
  }

  if (sub_100030484(&v16[v18]) != 1)
  {
LABEL_6:
    sub_1000180EC(v16, &qword_100CBDCD0);
    return 0;
  }

  sub_100074A80();
  return 1;
}

BOOL sub_1004A11F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = sub_10022C350(&unk_100CB2CF0);
  sub_100003810(v11);
  sub_100003828();
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  v15 = sub_10022C350(qword_100CA4F80);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  if ((sub_1004B6950(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v19 = type metadata accessor for CalendarDayCellViewModel(0);
  if (*(a1 + *(v19 + 20)) != *(a2 + *(v19 + 20)))
  {
    return 0;
  }

  v20 = *(v19 + 24);
  v21 = *(v15 + 48);
  sub_1000D47CC(a1 + v20, v18);
  sub_1000D47CC(a2 + v20, &v18[v21]);
  sub_100003A40(v18);
  if (v22)
  {
    sub_100003A40(&v18[v21]);
    if (v22)
    {
      sub_1000180EC(v18, &unk_100CB2CF0);
      return 1;
    }

    goto LABEL_11;
  }

  sub_1000D47CC(v18, v14);
  sub_100003A40(&v18[v21]);
  if (v22)
  {
    (*(v6 + 8))(v14, v4);
LABEL_11:
    sub_1000180EC(v18, qword_100CA4F80);
    return 0;
  }

  (*(v6 + 32))(v10, &v18[v21], v4);
  sub_1004A341C(&qword_100CA39D0, &type metadata accessor for Date);
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  v25 = *(v6 + 8);
  v26 = sub_100003940();
  v25(v26);
  (v25)(v14, v4);
  sub_1000180EC(v18, &unk_100CB2CF0);
  return (v24 & 1) != 0;
}

uint64_t sub_1004A14D0@<X0>(uint64_t a1@<X8>)
{
  v107 = a1;
  type metadata accessor for AccessibilityTraits();
  sub_1000037C4();
  v101 = v3;
  v102 = v2;
  __chkstk_darwin(v2);
  sub_1000037D8();
  v100 = v5 - v4;
  v6 = sub_10022C350(&unk_100CB2CF0);
  sub_100003810(v6);
  sub_100003828();
  __chkstk_darwin(v7);
  sub_1000039BC();
  v96 = v8;
  v9 = type metadata accessor for CalendarGridCell(0);
  v87 = *(v9 - 8);
  v10 = *(v87 + 64);
  __chkstk_darwin(v9 - 8);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_10022C350(&qword_100CBDC50);
  sub_1000037C4();
  v89 = v12;
  sub_100003828();
  __chkstk_darwin(v13);
  sub_1000039BC();
  v88 = v14;
  v95 = sub_10022C350(&qword_100CBDC58);
  sub_1000037C4();
  v94 = v15;
  sub_100003828();
  __chkstk_darwin(v16);
  sub_1000039BC();
  v92 = v17;
  v93 = sub_10022C350(&qword_100CBDC60);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v18);
  sub_1000039BC();
  v91 = v19;
  v105 = sub_10022C350(&qword_100CBDC68);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v20);
  sub_1000039BC();
  v97 = v21;
  v106 = sub_10022C350(&qword_100CBDC70);
  sub_1000037C4();
  v99 = v22;
  sub_100003828();
  __chkstk_darwin(v23);
  sub_1000039BC();
  v98 = v24;
  v25 = type metadata accessor for CalendarDayCellViewModel(0);
  sub_1000037C4();
  v27 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v30);
  v31 = &v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v86 - v33;
  v103 = sub_10022C350(&qword_100CBDC78);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v35);
  sub_1000039BC();
  v104 = v36;
  v37 = type metadata accessor for CalendarGridCellViewModel(0);
  v38 = sub_100003810(v37);
  __chkstk_darwin(v38);
  sub_1000037D8();
  v41 = v40 - v39;
  sub_100005EEC();
  sub_1004A234C(v1, v41, v42);
  if (sub_100024D10(v41, 1, v25) == 1)
  {
    v43 = static Color.clear.getter();
    sub_10022C350(&qword_100CB59A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2D320;
    v45 = static Axis.Set.horizontal.getter();
    *(inited + 32) = v45;
    v46 = static Axis.Set.vertical.getter();
    *(inited + 33) = v46;
    v47 = Axis.Set.init(rawValue:)();
    Axis.Set.init(rawValue:)();
    if (Axis.Set.init(rawValue:)() != v45)
    {
      v47 = Axis.Set.init(rawValue:)();
    }

    Axis.Set.init(rawValue:)();
    if (Axis.Set.init(rawValue:)() != v46)
    {
      v47 = Axis.Set.init(rawValue:)();
    }

    v48 = v104;
    *v104 = v43;
    *(v48 + 8) = v47;
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CBDCB8);
    sub_1004A2C84();
    v49 = sub_10022E824(&qword_100CBDCA0);
    v50 = sub_1004A2BC8();
    sub_100008728();
    v52 = sub_100006F64(v51, &qword_100CBDCA0);
    v108 = v105;
    v109 = v49;
    v110 = v50;
    v111 = v52;
    sub_100019920();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    sub_1004A23A8(v41, v34, type metadata accessor for CalendarDayCellViewModel);
    sub_1004A234C(v34, v31, type metadata accessor for CalendarDayCellViewModel);
    sub_1004A234C(v1, &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CalendarGridCell);
    v54 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v55 = (v29 + *(v87 + 80) + v54) & ~*(v87 + 80);
    v56 = swift_allocObject();
    sub_1004A23A8(v31, v56 + v54, type metadata accessor for CalendarDayCellViewModel);
    v57 = sub_1004A23A8(v11, v56 + v55, type metadata accessor for CalendarGridCell);
    __chkstk_darwin(v57);
    *(&v86 - 2) = v34;
    type metadata accessor for CalendarDayView(0);
    sub_1004A341C(&qword_100CBDC80, type metadata accessor for CalendarDayView);
    v58 = v88;
    Button.init(action:label:)();
    v59 = v34[32];
    LOBYTE(v108) = v34[*(v25 + 20)];
    LODWORD(v54) = v108;
    BYTE1(v108) = v59;
    sub_100006F64(&qword_100CBDC88, &qword_100CBDC50);
    sub_1004A2500();
    v60 = v92;
    v61 = v90;
    View.buttonStyle<A>(_:)();
    (*(v89 + 8))(v58, v61);
    v62 = v96;
    sub_1000D47CC(&v34[*(v25 + 24)], v96);
    v63 = type metadata accessor for Date();
    LOBYTE(v61) = sub_100024D10(v62, 1, v63) == 1;
    sub_1000180EC(v62, &unk_100CB2CF0);
    KeyPath = swift_getKeyPath();
    v65 = swift_allocObject();
    *(v65 + 16) = v61;
    v66 = v91;
    (*(v94 + 32))(v91, v60, v95);
    v67 = (v66 + *(v93 + 36));
    *v67 = KeyPath;
    v67[1] = sub_100168F20;
    v67[2] = v65;
    v68 = v34;
    if (v54 == 1)
    {
      sub_10022C350(&unk_100CE17E0);
      v69 = v101;
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_100A2C3F0;
      static AccessibilityTraits.isSelected.getter();
      v108 = v70;
      sub_100014788();
      sub_1004A341C(v71, v72);
      sub_10022C350(&unk_100CE17F0);
      sub_100022C70(&qword_100CB3370);
      sub_100016A14();
    }

    else
    {
      v108 = _swiftEmptyArrayStorage;
      sub_100014788();
      sub_1004A341C(v73, v74);
      sub_10022C350(&unk_100CE17F0);
      sub_100022C70(&qword_100CB3370);
      sub_100016A14();
      v69 = v101;
    }

    sub_1004A2A84();
    v75 = v97;
    View.accessibilityAddTraits(_:)();
    (*(v69 + 8))(v11, &unk_100A4A1E0);
    v76 = sub_1000180EC(v66, &qword_100CBDC60);
    __chkstk_darwin(v76);
    *(&v86 - 2) = v34;
    v77 = sub_10022C350(&qword_100CBDCA0);
    v78 = sub_1004A2BC8();
    sub_100008728();
    v80 = sub_100006F64(v79, &qword_100CBDCA0);
    v81 = v98;
    v102 = v68;
    v82 = v105;
    View.accessibilityShowsLargeContentViewer<A>(_:)();
    sub_1000180EC(v75, &qword_100CBDC68);
    v83 = v99;
    v84 = v106;
    (*(v99 + 16))(v104, v81, v106);
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CBDCB8);
    sub_1004A2C84();
    v108 = v82;
    v109 = v77;
    v110 = v78;
    v111 = v80;
    sub_100019920();
    _ConditionalContent<>.init(storage:)();
    (*(v83 + 8))(v81, v84);
    sub_10000433C();
    return sub_1004A2D64(v102, v85);
  }
}

uint64_t sub_1004A2098(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CalendarDayCellViewModel(0);
  sub_1000D47CC(a1 + *(v11 + 24), v6);
  if (sub_100024D10(v6, 1, v7) == 1)
  {
    return sub_1000180EC(v6, &unk_100CB2CF0);
  }

  (*(v8 + 32))(v10, v6, v7);
  v13 = type metadata accessor for CalendarGridCell(0);
  sub_1000161C0((a2 + *(v13 + 20)), *(a2 + *(v13 + 20) + 24));
  sub_1008C9850(v10);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1004A223C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 34) == 8)
  {
    v3 = 0;
  }

  else
  {
    type metadata accessor for CalendarDayViewModel(0);
    MoonPhase.symbolName(for:)();
    v3 = Image.init(systemName:)();
  }

  sub_10002D5A4();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v8 &= 1u;
  sub_10010CD54(v4, v6, v8);

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = v10;
  sub_10010CD64(v4, v6, v8);
}

uint64_t sub_1004A234C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1004A23A8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1004A2404()
{
  v1 = *(type metadata accessor for CalendarDayCellViewModel(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for CalendarGridCell(0);
  sub_100003810(v4);
  v6 = v0 + ((v2 + v3 + *(v5 + 80)) & ~*(v5 + 80));

  return sub_1004A2098(v0 + v2, v6);
}

unint64_t sub_1004A2500()
{
  result = qword_100CBDC90;
  if (!qword_100CBDC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBDC90);
  }

  return result;
}

uint64_t sub_1004A2554@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v51 = a1;
  v56 = a2;
  v2 = type metadata accessor for RoundedRectangle();
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v50 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_10022C350(&qword_100CBDCE8);
  __chkstk_darwin(v55);
  v6 = &v49 - v5;
  v49 = type metadata accessor for ButtonStyleConfiguration.Label();
  v7 = *(v49 - 8);
  __chkstk_darwin(v49);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CBDCF0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v49 - v12;
  v52 = sub_10022C350(&qword_100CBDCF8);
  __chkstk_darwin(v52);
  v15 = &v49 - v14;
  v54 = sub_10022C350(&qword_100CBDD00);
  __chkstk_darwin(v54);
  v17 = &v49 - v16;
  v53 = sub_10022C350(&qword_100CBDD08);
  __chkstk_darwin(v53);
  v19 = &v49 - v18;
  ButtonStyleConfiguration.label.getter();
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v20 = 0.4;
  }

  else
  {
    v20 = 1.0;
  }

  v21 = v9;
  v22 = v50;
  (*(v7 + 32))(v13, v21, v49);
  v23 = v51;
  *&v13[*(v11 + 44)] = v20;
  v24 = *(v3 + 28);
  v25 = enum case for RoundedCornerStyle.continuous(_:);
  v26 = type metadata accessor for RoundedCornerStyle();
  (*(*(v26 - 8) + 104))(&v22[v24], v25, v26);
  __asm { FMOV            V0.2D, #6.0 }

  *v22 = _Q0;
  if (v23)
  {
    if ((v23 & 0x100) != 0)
    {
      static Color.cyan.getter();
      v34 = Color.opacity(_:)();

      goto LABEL_10;
    }

    v32 = [objc_opt_self() tertiarySystemFillColor];
    v33 = Color.init(_:)();
  }

  else
  {
    v33 = static Color.clear.getter();
  }

  v34 = v33;
LABEL_10:
  sub_1004A23A8(v22, v6, &type metadata accessor for RoundedRectangle);
  v35 = v55;
  *&v6[*(v55 + 52)] = v34;
  *&v6[*(v35 + 56)] = 256;
  v36 = static Alignment.center.getter();
  v38 = v37;
  v39 = &v15[*(v52 + 36)];
  sub_100051B60(v6, v39, &qword_100CBDCE8);
  v40 = (v39 + *(sub_10022C350(&qword_100CBDD10) + 36));
  *v40 = v36;
  v40[1] = v38;
  sub_100051B60(v13, v15, &qword_100CBDCF0);
  sub_100051B60(v15, v17, &qword_100CBDCF8);
  v17[*(v54 + 36)] = 0;
  v41 = static Animation.default.getter();
  v42 = ButtonStyleConfiguration.isPressed.getter();
  sub_100051B60(v17, v19, &qword_100CBDD00);
  v43 = &v19[*(v53 + 36)];
  *v43 = v41;
  v43[8] = v42 & 1;
  v44 = static Animation.default.getter();
  v45 = v19;
  v46 = v56;
  sub_100051B60(v45, v56, &qword_100CBDD08);
  result = sub_10022C350(&qword_100CBDD18);
  v48 = v46 + *(result + 36);
  *v48 = v44;
  *(v48 + 8) = v23 & 1;
  return result;
}

uint64_t sub_1004A2A68@<X0>(uint64_t a1@<X8>)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1004A2554(v2 | *v1, a1);
}

unint64_t sub_1004A2A84()
{
  result = qword_100CBDC98;
  if (!qword_100CBDC98)
  {
    sub_10022E824(&qword_100CBDC60);
    sub_10022E824(&qword_100CBDC50);
    sub_100006F64(&qword_100CBDC88, &qword_100CBDC50);
    sub_1004A2500();
    swift_getOpaqueTypeConformance2();
    sub_100006F64(&qword_100CA6F10, &qword_100CA6F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBDC98);
  }

  return result;
}

unint64_t sub_1004A2BC8()
{
  result = qword_100CBDCA8;
  if (!qword_100CBDCA8)
  {
    sub_10022E824(&qword_100CBDC68);
    sub_1004A2A84();
    sub_1004A341C(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBDCA8);
  }

  return result;
}

unint64_t sub_1004A2C84()
{
  result = qword_100CBDCC0;
  if (!qword_100CBDCC0)
  {
    sub_10022E824(&qword_100CBDCB8);
    sub_1004A2D10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBDCC0);
  }

  return result;
}

unint64_t sub_1004A2D10()
{
  result = qword_100CBDCC8;
  if (!qword_100CBDCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBDCC8);
  }

  return result;
}

uint64_t sub_1004A2D64(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t getEnumTagSinglePayload for NotificationSettingsViewState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CalendarDayCellButtonStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

unint64_t sub_1004A2F34()
{
  result = qword_100CBDCD8;
  if (!qword_100CBDCD8)
  {
    sub_10022E824(&qword_100CBDCE0);
    sub_1004A2C84();
    sub_10022E824(&qword_100CBDC68);
    sub_10022E824(&qword_100CBDCA0);
    sub_1004A2BC8();
    sub_100006F64(&qword_100CBDCB0, &qword_100CBDCA0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBDCD8);
  }

  return result;
}

unint64_t sub_1004A3080()
{
  result = qword_100CBDD20;
  if (!qword_100CBDD20)
  {
    sub_10022E824(&qword_100CBDD18);
    sub_1004A3138();
    sub_100006F64(&qword_100CBDD68, &qword_100CBDD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBDD20);
  }

  return result;
}

unint64_t sub_1004A3138()
{
  result = qword_100CBDD28;
  if (!qword_100CBDD28)
  {
    sub_10022E824(&qword_100CBDD08);
    sub_1004A31F0();
    sub_100006F64(&qword_100CBDD68, &qword_100CBDD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBDD28);
  }

  return result;
}

unint64_t sub_1004A31F0()
{
  result = qword_100CBDD30;
  if (!qword_100CBDD30)
  {
    sub_10022E824(&qword_100CBDD00);
    sub_1004A32A8();
    sub_100006F64(&qword_100CBDD58, &qword_100CBDD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBDD30);
  }

  return result;
}

unint64_t sub_1004A32A8()
{
  result = qword_100CBDD38;
  if (!qword_100CBDD38)
  {
    sub_10022E824(&qword_100CBDCF8);
    sub_1004A3360();
    sub_100006F64(&qword_100CBDD50, &qword_100CBDD10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBDD38);
  }

  return result;
}

unint64_t sub_1004A3360()
{
  result = qword_100CBDD40;
  if (!qword_100CBDD40)
  {
    sub_10022E824(&qword_100CBDCF0);
    sub_1004A341C(&qword_100CBDD48, &type metadata accessor for ButtonStyleConfiguration.Label);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBDD40);
  }

  return result;
}

uint64_t sub_1004A341C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004B3AF8@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = 100;
  if ((result & 1) == 0)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1004B3B0C()
{
  swift_getObjectType();
  if (qword_100CA23C8 != -1)
  {
    swift_once();
  }

  dispatch thunk of Configurable.setting<A>(_:)();
  v0 = 0;
  v1 = 0;
  while (1)
  {
    v2 = v0;
    v3 = *(&off_100C44048 + v1 + 32);
    v4 = *(&off_100C44048 + v1 + 32) ? 0x30327265746E6977 : 0x343230326C6C6166;
    v5 = *(&off_100C44048 + v1 + 32) ? 0xEA00000000003432 : 0xE800000000000000;
    if (v4 == v13 && v5 == v14)
    {
      break;
    }

    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      goto LABEL_18;
    }

    v0 = 1;
    v1 = &_mh_execute_header.magic + 1;
    if (v2)
    {
      v3 = 2;
      goto LABEL_18;
    }
  }

LABEL_18:
  type metadata accessor for LocalPreset();
  swift_allocObject();
  result = sub_10002D5F8(v13, v14);
  v9 = result;
  if (v3 != 2)
  {
    sub_100042488(v3, &v13);
    v10 = v15;
    v11 = v16;
    sub_1000161C0(&v13, v15);
    v12 = (*(v11 + 40))(v10, v11);
    result = sub_100006F14(&v13);
    if (v12)
    {
      goto LABEL_22;
    }
  }

  if (!v9)
  {
    return result;
  }

  if (sub_100675010())
  {
LABEL_22:
    dispatch thunk of Updatable.apply(preset:)();
  }
}

uint64_t sub_1004B3D44(void *a1, uint64_t a2, unsigned int *a3)
{
  v4 = type metadata accessor for MockLocation();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  sub_10001930C(a1, a1[3]);
  static Settings.Daemon.forceFetchFromServerToFail.getter();
  dispatch thunk of PresetApplicatorType.set<A>(_:to:)();

  sub_10001930C(a1, a1[3]);
  static Settings.Daemon.enableDynamicCacheQueries.getter();
  dispatch thunk of PresetApplicatorType.set<A>(_:to:)();

  sub_10001930C(a1, a1[3]);
  static Settings.Location.mockedCurrentLocation.getter();
  (*(v6 + 104))(v10, *a3, v4);
  sub_10001EE38();
  sub_1004B562C(v11, v12);
  dispatch thunk of PresetApplicatorType.set<A>(_:to:)();

  return (*(v6 + 8))(v10, v4);
}

uint64_t sub_1004B3F28(void *a1, unsigned int *a2)
{
  v4 = type metadata accessor for MockLocation();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  sub_10001930C(a1, a1[3]);
  static Settings.Daemon.forceFetchFromServerToFail.getter();
  dispatch thunk of PresetApplicatorType.set<A>(_:to:)();

  sub_10001930C(a1, a1[3]);
  static Settings.Location.mockedCurrentLocation.getter();
  (*(v6 + 104))(v10, *a2, v4);
  sub_10001EE38();
  sub_1004B562C(v11, v12);
  dispatch thunk of PresetApplicatorType.set<A>(_:to:)();

  (*(v6 + 8))(v10, v4);
  sub_10001930C(a1, a1[3]);
  if (qword_100CA2560 != -1)
  {
    swift_once();
  }

  return dispatch thunk of PresetApplicatorType.set<A>(_:to:)();
}

void sub_1004B4144()
{
  if (qword_100CA2778 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000703C(v0, qword_100D90CC0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "About to request weatherd to perform database maintainance tasks.", v3, 2u);
  }

  WeatherService.cleanupCaches()();
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v4, "weatherd finished performing database maintainance tasks.", v5, 2u);
  }
}

uint64_t sub_1004B42BC()
{
  v0 = sub_10022C350(&qword_100CA3538);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for TaskPriority();
  sub_10001B350(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_1006C0138();
}

uint64_t sub_1004B43A4()
{
  if (qword_100CA2778 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[2] = sub_10000703C(v1, qword_100D90CC0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_1000054A4(v3))
  {
    *sub_10000389C() = 0;
    sub_10000FA14(&_mh_execute_header, v4, v5, "About to request weatherd to perform database maintainance tasks.");
    sub_100003884();
  }

  type metadata accessor for DatabaseManagerProxy();
  swift_allocObject();
  v0[3] = DatabaseManagerProxy.init()();
  v0[4] = DatabaseManagerProxy.performCleanup()();
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_1004B44F8;

  return Promise.resolveAsync()();
}

uint64_t sub_1004B44F8()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1004B4724;
  }

  else
  {

    v2 = sub_1004B4614;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004B4614()
{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = sub_10000389C();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "weatherd finished performing database maintainance tasks.", v3, 2u);
    sub_100003884();
  }

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (sub_1000054A4(v5))
  {
    *sub_10000389C() = 0;
    sub_10000FA14(&_mh_execute_header, v6, v7, "weatherd finished performing database maintainance tasks.");
    sub_100003884();
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1004B4724()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "weatherd failed to perform database maintainance tasks. Error=%@", v3, 0xCu);
    sub_1004B55C4(v4);
    sub_100003884();
    sub_100003884();
  }

  else
  {
  }

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (sub_1000054A4(v7))
  {
    *sub_10000389C() = 0;
    sub_10000FA14(&_mh_execute_header, v8, v9, "weatherd finished performing database maintainance tasks.");
    sub_100003884();
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1004B48B8()
{
  v73 = sub_10022C350(&qword_100CBDEB8);
  v77 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v61 - v0;
  v1 = type metadata accessor for ChangeBehavior();
  v2 = *(v1 - 8);
  v75 = v1;
  v76 = v2;
  __chkstk_darwin(v1);
  v64 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_10022C350(&qword_100CBDED8);
  v4 = *(v74 - 8);
  __chkstk_darwin(v74);
  v6 = &v61 - v5;
  sub_10022C350(&qword_100CBDE28);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100A3F990;
  v8 = sub_10022C350(&qword_100CBDF08);
  static Settings.Daemon.treatmentIdentifierOverrides.getter();
  v67 = sub_10022C350(&unk_100CE49D0);
  v9 = swift_allocObject();
  v78 = xmmword_100A3BD20;
  *(v9 + 16) = xmmword_100A3BD20;
  v72 = type metadata accessor for SettingAction();
  *(v9 + 32) = static SettingActions.restart.getter();
  v68 = enum case for Item.ResetBehavior.reset<A>(_:);
  (*(v4 + 104))(v6);
  v10 = Item<>.init(_:label:resetBehavior:actions:)();
  *(v7 + 56) = v8;
  *(v7 + 64) = sub_1004B5468(&qword_100CBDF10, &qword_100CBDF08);
  *(v7 + 32) = v10;
  v74 = sub_10022C350(&qword_100CBDF68);
  v65 = static Settings.Daemon.clearCachedJWTTokenOnNextLaunch.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v78;
  *(v11 + 32) = static SettingActions.restart.getter();
  v12 = enum case for ChangeBehavior.default(_:);
  v13 = *(v76 + 104);
  v76 += 104;
  v66 = v13;
  v14 = v64;
  v69 = enum case for ChangeBehavior.default(_:);
  v13(v64, enum case for ChangeBehavior.default(_:), v75);
  v15 = *(v77 + 104);
  v77 += 104;
  v70 = v15;
  v16 = v71;
  v17 = v68;
  v18 = v73;
  v15(v71, v68, v73);
  v19 = v74;
  v20 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v7 + 96) = v19;
  v65 = sub_1004B5468(&qword_100CBDF70, &qword_100CBDF68);
  *(v7 + 104) = v65;
  *(v7 + 72) = v20;
  v21 = static Settings.Daemon.mangleCachedJWTTokenOnNextLaunch.getter();
  v62 = " Token on next launch";
  v63 = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = v78;
  *(v22 + 32) = static SettingActions.restart.getter();
  v23 = v14;
  v24 = v14;
  v25 = v66;
  v66(v24, v12, v75);
  v70(v16, v17, v18);
  v26 = v23;
  v27 = v74;
  v28 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v29 = v65;
  *(v7 + 136) = v27;
  *(v7 + 144) = v29;
  *(v7 + 112) = v28;
  v30 = static Settings.Daemon.forceQAAndNoAuthOnSimulator.getter();
  v62 = "T Token on next launch";
  v63 = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = v78;
  *(v31 + 32) = static SettingActions.restart.getter();
  v32 = v26;
  v33 = v26;
  v34 = v69;
  v35 = v75;
  v25(v32, v69, v75);
  v36 = v70;
  v37 = v68;
  v70(v71, v68, v73);
  v38 = v74;
  v39 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v7 + 176) = v38;
  *(v7 + 184) = v29;
  *(v7 + 152) = v39;
  v40 = static Settings.Daemon.fetchesWeatherData.getter();
  v62 = "Use QA/No Auth on Simulator";
  v63 = v40;
  v41 = swift_allocObject();
  *(v41 + 16) = v78;
  *(v41 + 32) = static SettingActions.restart.getter();
  v42 = v35;
  v43 = v66;
  v66(v33, v34, v42);
  v44 = v71;
  v45 = v37;
  v46 = v73;
  v47 = v36;
  v36(v71, v45, v73);
  v48 = v44;
  v49 = v74;
  v50 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v51 = v65;
  *(v7 + 216) = v49;
  *(v7 + 224) = v51;
  *(v7 + 192) = v50;
  v52 = static Settings.Daemon.enableFlatbuffers.getter();
  v62 = "ched Through weatherd";
  v63 = v52;
  v53 = swift_allocObject();
  *(v53 + 16) = v78;
  *(v53 + 32) = static SettingActions.restart.getter();
  v43(v33, v69, v75);
  v54 = v68;
  v47(v48, v68, v46);
  v55 = v74;
  v56 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v7 + 256) = v55;
  *(v7 + 264) = v51;
  *(v7 + 232) = v56;
  static Settings.Daemon.enableSendFlatbufferSchemaVersion.getter();
  v57 = swift_allocObject();
  *(v57 + 16) = v78;
  *(v57 + 32) = static SettingActions.restart.getter();
  v66(v33, v69, v75);
  v70(v48, v54, v73);
  v58 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v59 = v65;
  *(v7 + 296) = v55;
  *(v7 + 304) = v59;
  *(v7 + 272) = v58;
  return v7;
}

uint64_t sub_1004B5038@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10022C350(&qword_100CBDE20);
  type metadata accessor for Group();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100A2C3F0;
  sub_10022C350(&qword_100CBDE28);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100A2C3F0;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBDE18);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v9)
  {
    v7 = type metadata accessor for ResetItem();
    swift_allocObject();
    v8 = ResetItem.init(layout:)();
    *(v5 + 56) = v7;
    *(v5 + 64) = &protocol witness table for ResetItem;
    *(v5 + 32) = v8;
    result = Group.init(title:footer:_:)();
    *a2 = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004B51E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for SettingCellStyle.ButtonStyle();
  v5 = &enum case for SettingCellStyle.ButtonStyle.destructive(_:);
  if ((v3 & 1) == 0)
  {
    v5 = &enum case for SettingCellStyle.ButtonStyle.default(_:);
  }

  (*(*(v4 - 8) + 104))(a1, *v5, v4);
  v6 = sub_10022C350(&qword_100CBDF60);
  v7 = (a1 + *(v6 + 64));
  *(a1 + *(v6 + 48)) = _swiftEmptyArrayStorage;
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  *v7 = v8;
  v7[1] = v9;
  v10 = enum case for SettingCellStyle.button(_:);
  v11 = type metadata accessor for SettingCellStyle();
  (*(*(v11 - 8) + 104))(a1, v10, v11);
}

unint64_t sub_1004B536C()
{
  result = qword_100CBDEF8;
  if (!qword_100CBDEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBDEF8);
  }

  return result;
}

unint64_t sub_1004B53C0()
{
  result = qword_100CBDFD0;
  if (!qword_100CBDFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBDFD0);
  }

  return result;
}

unint64_t sub_1004B5414()
{
  result = qword_100CBE080;
  if (!qword_100CBE080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBE080);
  }

  return result;
}

uint64_t sub_1004B5468(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1004B54C4()
{
  result = qword_100CBE0F0;
  if (!qword_100CBE0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBE0F0);
  }

  return result;
}

uint64_t sub_1004B5518()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000926F8;

  return sub_1004B4388();
}

uint64_t sub_1004B55C4(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CBE0F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004B562C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004B5684()
{
  if (qword_100CA24D0 != -1)
  {
    sub_1000114DC();
  }

  sub_10001C344();
  if (!v1)
  {
    return 0;
  }

  if (*(v0 + 8) == 1)
  {
    return 0;
  }

  type metadata accessor for DisplayMetrics();
  if (DynamicTypeSize.isAccessibilitySize.getter())
  {
    return 0;
  }

  sub_10001C344();
  if (v1 && (DynamicTypeSize.isAccessibilitySize.getter() & 1) == 0 && sub_10029C3DC(*v0) && (*(v0 + 17) & 1) != 0)
  {
    return 1;
  }

  return sub_1004B5750();
}

uint64_t sub_1004B5750()
{
  if (qword_100CA24D0 != -1)
  {
    sub_1000114DC();
  }

  sub_10001C344();
  if (!v1 || *(v0 + 8) == 1 || (type metadata accessor for DisplayMetrics(), (DynamicTypeSize.isAccessibilitySize.getter() & 1) != 0) || (sub_10001C344(), v1) && (DynamicTypeSize.isAccessibilitySize.getter() & 1) == 0 && sub_10029C3DC(*v0) && (*(v0 + 17) & 1) != 0)
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    v2 = 6u >> (*(v0 + 18) & 7);
  }

  return v2 & 1;
}

uint64_t sub_1004B580C(void *a1)
{
  v2 = type metadata accessor for LoggingEventProcessorFormat();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10022C350(&qword_100CBE200);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100A2D320;
  type metadata accessor for LoggingEventProcessor();
  *v5 = 11;
  (*(v3 + 104))(v5, enum case for LoggingEventProcessorFormat.json(_:), v2);
  *(v6 + 32) = LoggingEventProcessor.__allocating_init(logFormat:)();
  *(v6 + 40) = &protocol witness table for LoggingEventProcessor;
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for Client();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB14B0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  type metadata accessor for UploadBatchEventConfig();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    type metadata accessor for UploadBatchEventProcessor();
    *(v6 + 48) = UploadBatchEventProcessor.__allocating_init(client:endpoint:contentType:config:)();
    *(v6 + 56) = &protocol witness table for UploadBatchEventProcessor;
    return v6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1004B5A28(uint64_t a1, void *a2)
{
  sub_1000161C0(a2, a2[3]);
  type metadata accessor for SessionEventsAndDataCoordinator();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    sub_10004306C(&qword_100CB5278, type metadata accessor for SessionEventsAndDataCoordinator);
    URLHandlerManager.add<A>(processor:)();

    sub_1000161C0(a2, a2[3]);
    result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
    if (result)
    {
      URLHandlerManager.add<A>(processor:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004B5BA4(unsigned int *a1)
{
  v3 = type metadata accessor for ConfiguredUnit();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  sub_1000037D8();
  v7 = v6 - v5;
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  v12 = *(v1 + 16);
  v13 = *a1;
  v14 = type metadata accessor for UnitConfiguration.Temperature();
  sub_1000037E8();
  (*(v15 + 104))(v7, v13, v14);
  sub_10001B350(v7, 0, 1, v14);
  (*(v4 + 104))(v7, enum case for ConfiguredUnit.temperature(_:), v3);
  (*(v4 + 32))(v11, v7, v3);
  type metadata accessor for ConfiguredUnitsAction();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for EnvironmentAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_10004F034(v11, v17, v12);
  sub_1000E17D8(v17);
  return sub_1000547B8(v11);
}

uint64_t sub_1004B5DB0()
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  v4 = v3 - v2;
  v5 = *(v0 + 16);
  type metadata accessor for ListViewAction();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ViewAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  sub_10004F034(v4, v7, v5);
  sub_1000E17D8(v7);
  return sub_1000547B8(v4);
}

double sub_1004B5EBC()
{
  if ((*(v0 + 80) & 1) == 0)
  {
    return *(v0 + 72);
  }

  *(v0 + 72) = 0x4014000000000000;
  *(v0 + 80) = 0;
  return 5.0;
}

double sub_1004B5EE0()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    return *(v0 + 16);
  }

  *(v0 + 16) = 0x406E000000000000;
  *(v0 + 24) = 0;
  return 240.0;
}

double sub_1004B5F04()
{
  if ((*(v0 + 136) & 1) == 0)
  {
    return *(v0 + 128);
  }

  *(v0 + 128) = 0x4010000000000000;
  *(v0 + 136) = 0;
  return 4.0;
}

double sub_1004B5F28()
{
  if ((v0[8] & 1) == 0)
  {
    return *v0;
  }

  *v0 = 0x4073000000000000;
  v0[8] = 0;
  return 304.0;
}

double sub_1004B5F4C()
{
  if ((*(v0 + 360) & 1) == 0)
  {
    return *(v0 + 352);
  }

  *(v0 + 352) = 0x4020000000000000;
  *(v0 + 360) = 0;
  return 8.0;
}

uint64_t sub_1004B5F70()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v2 = [objc_opt_self() quaternaryLabelColor];
    v1 = Color.init(_:)();
    *(v0 + 64) = v1;
  }

  return v1;
}

void sub_1004B5FD8()
{
  if (*(v0 + 400))
  {
    if (qword_100CA20B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v1 = sub_100472710() + 6.0;
    v2 = sub_100472710();
    *(v0 + 368) = 0x4024000000000000;
    *(v0 + 376) = v1;
    *(v0 + 384) = 0;
    *(v0 + 392) = v2 + 6.0;
    *(v0 + 400) = 0;
  }
}

uint64_t sub_1004B60A0()
{
  v1 = type metadata accessor for Font.TextStyle();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 48))
  {
    v6 = *(v0 + 48);
  }

  else
  {
    (*(v2 + 104))(v5, enum case for Font.TextStyle.caption(_:), v1, v3);
    static Font.Weight.semibold.getter();
    v6 = static Font.system(_:weight:)();
    (*(v2 + 8))(v5, v1);
    *(v0 + 48) = v6;
  }

  return v6;
}

uint64_t sub_1004B61C0()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v2 = [objc_opt_self() secondaryLabelColor];
    v1 = Color.init(_:)();
    *(v0 + 56) = v1;
  }

  return v1;
}

uint64_t sub_1004B6228()
{
  if (*(v0 + 88))
  {
    v1 = *(v0 + 88);
  }

  else
  {
    v2 = [objc_opt_self() secondaryLabelColor];
    v1 = Color.init(_:)();
    *(v0 + 88) = v1;
  }

  return v1;
}

double sub_1004B6290()
{
  if ((*(v0 + 104) & 1) == 0)
  {
    return *(v0 + 96);
  }

  *(v0 + 96) = 0x4028000000000000;
  *(v0 + 104) = 0;
  return 12.0;
}

double sub_1004B62B4()
{
  if ((*(v0 + 120) & 1) == 0)
  {
    return *(v0 + 112);
  }

  *(v0 + 112) = 0x405E400000000000;
  *(v0 + 120) = 0;
  return 121.0;
}

void sub_1004B62E0()
{
  if (!v0[21])
  {
    sub_100010180();
    sub_10001EE50();
    v0[18] = v4;
    v0[19] = v5;
    v0[20] = v2;
    v0[21] = v1;
    v0[22] = v3;
  }

  sub_10001C36C();
}

void sub_1004B6380()
{
  if (!v0[33])
  {
    sub_100010180();
    sub_10001EE50();
    v0[30] = v4;
    v0[31] = v5;
    v0[32] = v2;
    v0[33] = v1;
    v0[34] = v3;
  }

  sub_10001C36C();
}

double sub_1004B6420()
{
  if ((*(v0 + 328) & 1) == 0)
  {
    return *(v0 + 320);
  }

  *(v0 + 320) = 0x3FE0000000000000;
  *(v0 + 328) = 0;
  return 0.5;
}

double sub_1004B6444()
{
  if ((*(v0 + 344) & 1) == 0)
  {
    return *(v0 + 336);
  }

  *(v0 + 336) = 0x4000000000000000;
  *(v0 + 344) = 0;
  return 2.0;
}

double sub_1004B6468()
{
  qword_100D90070 = 0;
  byte_100D90078 = 1;
  qword_100D90080 = 0;
  byte_100D90088 = 1;
  result = 26.0;
  xmmword_100D90090 = xmmword_100A559A0;
  unk_100D900A0 = 0u;
  xmmword_100D900B0 = 0u;
  byte_100D900C0 = 1;
  qword_100D900C8 = 0;
  unk_100D900D0 = 0;
  byte_100D900D8 = 1;
  qword_100D900E0 = 0;
  byte_100D900E8 = 1;
  qword_100D900F0 = 0;
  byte_100D900F8 = 1;
  xmmword_100D90100 = 0u;
  unk_100D90110 = 0u;
  xmmword_100D90120 = 0u;
  byte_100D90130 = 1;
  qword_100D90138 = 0;
  byte_100D90140 = 1;
  qword_100D90148 = 0;
  unk_100D90150 = 0;
  byte_100D90158 = 1;
  qword_100D901B0 = 0;
  xmmword_100D90190 = 0u;
  unk_100D901A0 = 0u;
  xmmword_100D90170 = 0u;
  unk_100D90180 = 0u;
  xmmword_100D90160 = 0u;
  byte_100D901B8 = 1;
  qword_100D901C0 = 0;
  byte_100D901C8 = 1;
  qword_100D901D0 = 0;
  byte_100D901D8 = 1;
  xmmword_100D901E0 = 0u;
  unk_100D901F0 = 0u;
  byte_100D90200 = 1;
  qword_100D90208 = 0x4018000000000000;
  return result;
}

uint64_t sub_1004B6568(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 416))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 48);
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

uint64_t sub_1004B65BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 408) = 0;
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
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 416) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 416) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WireframeInterestLevel(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1004B675C()
{
  result = qword_100CBE2C0[0];
  if (!qword_100CBE2C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CBE2C0);
  }

  return result;
}

void sub_1004B67B0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 17))
  {
    if ((Transaction.disablesAnimations.getter() & 1) == 0)
    {
      if (Transaction.animation.getter())
      {
      }
    }

    Transaction.disablesAnimations.setter();
  }
}

void sub_1004B6860()
{
  sub_1004B6900();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MoonPhase.Hemisphere();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1004B6900()
{
  if (!qword_100CB2DC8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB2DC8);
    }
  }
}

uint64_t sub_1004B6950(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 32) != *(a2 + 32) || *(a1 + 33) != *(a2 + 33))
  {
    return 0;
  }

  v7 = *(a2 + 34);
  if (*(a1 + 34) == 8)
  {
    if (v7 == 8)
    {
      goto LABEL_25;
    }

    return 0;
  }

  if (v7 == 8)
  {
    return 0;
  }

  v8 = MoonPhase.rawValue.getter();
  v10 = v9;
  if (v8 != MoonPhase.rawValue.getter() || v10 != v11)
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      goto LABEL_25;
    }

    return 0;
  }

LABEL_25:
  type metadata accessor for CalendarDayViewModel(0);

  return static MoonPhase.Hemisphere.== infix(_:_:)();
}

uint64_t sub_1004B6AFC()
{
  result = type metadata accessor for CalendarDayViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1004B6B84()
{
  v1 = type metadata accessor for AccessibilityChildBehavior();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CBE488);
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0x4000000000000000;
  v7[16] = 0;
  v8 = sub_10022C350(&qword_100CBE490);
  sub_1004B6D4C(v0, &v7[*(v8 + 44)]);
  *&v7[*(sub_10022C350(&qword_100CBE498) + 36)] = 1;
  v9 = static Edge.Set.all.getter();
  v10 = &v7[*(v5 + 36)];
  *v10 = v9;
  *(v10 + 8) = xmmword_100A55BA0;
  *(v10 + 24) = xmmword_100A55BA0;
  v10[40] = 0;
  static AccessibilityChildBehavior.combine.getter();
  sub_1004B71E0();
  View.accessibilityElement(children:)();
  (*(v2 + 8))(v4, v1);
  return sub_1004B735C(v7);
}

uint64_t sub_1004B6D4C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v59 = a2;
  v3 = type metadata accessor for MoonPhase.Hemisphere();
  v55 = *(v3 - 8);
  v56 = v3;
  __chkstk_darwin(v3);
  v54 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for CalendarDayMoonPhase();
  __chkstk_darwin(v53);
  v58 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v57 = &v52 - v7;
  v8 = type metadata accessor for Font.TextStyle();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[1];
  v61 = *a1;
  v62 = v12;
  v13 = sub_10002D5A4();

  v52 = v13;
  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  (*(v9 + 104))(v11, enum case for Font.TextStyle.caption2(_:), v8);
  v60 = a1;
  v19 = *(a1 + 32);
  if (v19 == 1)
  {
    static Font.Weight.semibold.getter();
  }

  else
  {
    static Font.Weight.medium.getter();
  }

  static Font.system(_:weight:)();
  (*(v9 + 8))(v11, v8);
  v20 = Text.font(_:)();
  v22 = v21;
  v24 = v23;

  sub_10010CD64(v14, v16, v18 & 1);

  if (v19)
  {
    static Color.cyan.getter();
  }

  else if (*(v60 + 33) == 1)
  {
    static Color.secondary.getter();
  }

  else
  {
    static Color.primary.getter();
  }

  v25 = Text.foregroundColor(_:)();
  v27 = v26;
  v29 = v28;

  sub_10010CD64(v20, v22, v24 & 1);

  v30 = v60;
  v31 = v60[3];
  v61 = v60[2];
  v62 = v31;

  v32 = Text.accessibilityLabel<A>(_:)();
  v34 = v33;
  LODWORD(v52) = v35;
  v37 = v36;
  sub_10010CD64(v25, v27, v29 & 1);

  v38 = *(v30 + 34);
  v39 = type metadata accessor for CalendarDayViewModel(0);
  v41 = v55;
  v40 = v56;
  v42 = v30 + *(v39 + 36);
  v43 = v54;
  (*(v55 + 16))(v54, v42, v56);
  if (v38 == 8)
  {
    v44 = 0;
  }

  else
  {
    v44 = v38;
  }

  v45 = v57;
  *v57 = v44;
  *(v45 + 1) = v38 != 8;
  (*(v41 + 32))(v45 + *(v53 + 24), v43, v40);
  v46 = v58;
  sub_1004B73C4(v45, v58);
  v47 = v59;
  *v59 = v32;
  v47[1] = v34;
  v48 = v52 & 1;
  *(v47 + 16) = v52 & 1;
  v47[3] = v37;
  v49 = sub_10022C350(&qword_100CBE4C0);
  sub_1004B73C4(v46, v47 + *(v49 + 48));
  v50 = v47 + *(v49 + 64);
  *v50 = 0;
  v50[8] = 0;
  sub_10010CD54(v32, v34, v48);

  sub_1004B7428(v45);
  sub_1004B7428(v46);
  sub_10010CD64(v32, v34, v48);
}

unint64_t sub_1004B71E0()
{
  result = qword_100CBE4A0;
  if (!qword_100CBE4A0)
  {
    sub_10022E824(&qword_100CBE488);
    sub_1004B726C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBE4A0);
  }

  return result;
}

unint64_t sub_1004B726C()
{
  result = qword_100CBE4A8;
  if (!qword_100CBE4A8)
  {
    sub_10022E824(&qword_100CBE498);
    sub_1004B72F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBE4A8);
  }

  return result;
}

unint64_t sub_1004B72F8()
{
  result = qword_100CBE4B0;
  if (!qword_100CBE4B0)
  {
    sub_10022E824(&qword_100CBE4B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBE4B0);
  }

  return result;
}

uint64_t sub_1004B735C(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CBE488);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004B73C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarDayMoonPhase();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004B7428(uint64_t a1)
{
  v2 = type metadata accessor for CalendarDayMoonPhase();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004B748C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_1004B74CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1004B7548(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v9 = a1[6] == a2[6] && a1[7] == a2[7];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = a1[8] == a2[8] && a1[9] == a2[9];
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v11 = a1[11];
  v12 = a2[11];
  if (v11)
  {
    if (!v12)
    {
      return 0;
    }

    v13 = a1[10] == a2[10] && v11 == v12;
    if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v14 = a1[12] == a2[12] && a1[13] == a2[13];
  if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v15 = a1[14] == a2[14] && a1[15] == a2[15];
  if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v16 = a1[17];
  v17 = a2[17];
  if (!v16)
  {
    if (!v17)
    {
      goto LABEL_58;
    }

    return 0;
  }

  if (!v17)
  {
    return 0;
  }

  v18 = a1[16] == a2[16] && v16 == v17;
  if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_58:
  v19 = a1[18] == a2[18] && a1[19] == a2[19];
  if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (a1[20] == a2[20] && a1[21] == a2[21])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1004B773C@<X0>(uint64_t *a1@<X8>)
{
  sub_10022C350(&qword_100CA36F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A3BBA0;
  *(inited + 32) = 0x726564616568;
  *(inited + 40) = 0xE600000000000000;
  v4 = v1[4];
  v5 = v1[5];
  v14 = *v1;
  v17 = v1[1];

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  String.append(_:)(v6);
  *(inited + 48) = v14;
  *(inited + 56) = v17;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x65746F6F46706F74;
  *(inited + 88) = 0xE900000000000072;
  v7 = v1[12];
  v8 = v1[13];
  v15 = v1[8];
  v18 = v1[9];

  v9._countAndFlagsBits = v7;
  v9._object = v8;
  String.append(_:)(v9);
  *(inited + 96) = v15;
  *(inited + 104) = v18;
  *(inited + 120) = &type metadata for String;
  strcpy((inited + 128), "bottomFooter");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  v11 = v1[18];
  v10 = v1[19];
  v16 = v1[14];
  v19 = v1[15];

  v12._countAndFlagsBits = v11;
  v12._object = v10;
  String.append(_:)(v12);
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v16;
  *(inited + 152) = v19;
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CBE4D0);
  a1[4] = sub_1004B79A0();
  sub_100042FB0(a1);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1004B790C()
{
  sub_1004B7A04();

  return ShortDescribable.description.getter();
}

unint64_t sub_1004B794C()
{
  result = qword_100CBE4C8;
  if (!qword_100CBE4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBE4C8);
  }

  return result;
}

unint64_t sub_1004B79A0()
{
  result = qword_100CBE4D8;
  if (!qword_100CBE4D8)
  {
    sub_10022E824(&qword_100CBE4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBE4D8);
  }

  return result;
}

unint64_t sub_1004B7A04()
{
  result = qword_100CBE4E0;
  if (!qword_100CBE4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBE4E0);
  }

  return result;
}

void sub_1004B7A58()
{
  type metadata accessor for AppConfiguration();
  firstly<A>(closure:)();
  v0 = zalgo.getter();
  Promise.then<A, B>(on:disposeOn:closure:)();
}

uint64_t sub_1004B7B84(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PrivacyConfiguration();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1004B7D88();
  v8 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    AppConfiguration.privacy.getter();
    v9 = PrivacyConfiguration.reportWeatherEventSubmissionDrivenIdentifierResetCount.getter();
    (*(v4 + 8))(v6, v3);
    if (v8 >= v9)
    {
      sub_1000161C0((a2 + 56), *(a2 + 80));
      dispatch thunk of IdentityRotationManagerType.rotateReportWeatherIdentifier()();
    }

    return sub_1004B7CC0();
  }

  return result;
}

uint64_t sub_1004B7CC0()
{
  if (qword_100CA2A68 != -1)
  {
    swift_once();
  }

  sub_1004B7EE4(&qword_100CBE598);
  return Updatable.save<A>(setting:value:)();
}

uint64_t sub_1004B7D88()
{
  if (qword_100CA2A68 != -1)
  {
    swift_once();
  }

  sub_1004B7EE4(&qword_100CBE590);
  Configurable.setting<A>(_:)();
  return v1;
}

uint64_t sub_1004B7EE4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ReportWeatherSubmissionTracker();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1004B7F24(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(result + 16);
    memset(v11, 0, sizeof(v11));
    v12 = 0;
    v13 = v1;
    v14 = 1;

    sub_10004F1B0(v11, v4);
    sub_100018144(v11, &qword_100CA3510);
    static os_signpost_type_t.event.getter();
    v5 = *(v3 + OBJC_IVAR____TtC7Weather29WeatherDataDebounceMiddleware_logger);
    sub_10022C350(&qword_100CA40C8);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100A2C3F0;
    v7 = v5;
    v8 = sub_1004B80A8(v1);
    v10 = v9;
    *(v6 + 56) = &type metadata for String;
    *(v6 + 64) = sub_100035744();
    *(v6 + 32) = v8;
    *(v6 + 40) = v10;
    os_signpost(_:dso:log:name:signpostID:_:_:)();
  }

  return result;
}

uint64_t sub_1004B80A8(uint64_t a1)
{
  v2 = type metadata accessor for WeatherDataAction();
  __chkstk_darwin(v2 - 8);
  v28 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for MainAction();
  v4 = *(v29 - 8);
  v5 = __chkstk_darwin(v29);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = *(a1 + 16);
  v30 = _swiftEmptyArrayStorage;
  sub_10000369C(0, v10, 0);
  v11 = v30;
  if (v10)
  {
    v12 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v13 = *(v4 + 72);
    v26 = 0x8000000100ACF9F0;
    v27 = v13;
    do
    {
      sub_10004F14C(v12, v9);
      sub_10004F14C(v9, v7);
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v14 = v28;
        sub_100050108(v7, v28, type metadata accessor for WeatherDataAction);
        v15 = sub_10016BAEC();
        v17 = v16;
        v18 = v14;
        v13 = v27;
        sub_10004F784(v18, type metadata accessor for WeatherDataAction);
        v19 = v9;
      }

      else
      {
        sub_10004F784(v9, type metadata accessor for MainAction);
        v15 = 0xD000000000000016;
        v19 = v7;
        v17 = v26;
      }

      sub_10004F784(v19, type metadata accessor for MainAction);
      v30 = v11;
      v21 = v11[2];
      v20 = v11[3];
      if (v21 >= v20 >> 1)
      {
        sub_10000369C((v20 > 1), v21 + 1, 1);
        v13 = v27;
        v11 = v30;
      }

      v11[2] = v21 + 1;
      v22 = &v11[2 * v21];
      v22[4] = v15;
      v22[5] = v17;
      v12 += v13;
      --v10;
    }

    while (v10);
  }

  v30 = v11;
  sub_10022C350(&qword_100CCC930);
  sub_100006F64(&qword_100CB2D00, &qword_100CCC930);
  v23 = BidirectionalCollection<>.joined(separator:)();

  return v23;
}

uint64_t sub_1004B83BC()
{

  v1 = OBJC_IVAR____TtC7Weather29WeatherDataDebounceMiddleware_debounceTime;
  type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  sub_100003D98();
  (*(v2 + 8))(v0 + v1);

  v3 = OBJC_IVAR____TtC7Weather29WeatherDataDebounceMiddleware_signpostID;
  type metadata accessor for OSSignpostID();
  sub_100003D98();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t sub_1004B846C()
{
  sub_1004B83BC();

  return swift_deallocClassInstance();
}

void _s7Weather13LocaleMonitorC29applicationDidEnterBackgroundyyF_0()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:NSCurrentLocaleDidChangeNotification object:0];
}

uint64_t LocaleMonitor.deinit()
{

  sub_10003FDF4(v0 + OBJC_IVAR____TtC7Weather13LocaleMonitor_lastLocale, &qword_100CAA9F0);
  sub_10003FDF4(v0 + OBJC_IVAR____TtC7Weather13LocaleMonitor_lastTemperatureUnit, &qword_100CB6198);
  return v0;
}

uint64_t LocaleMonitor.__deallocating_deinit()
{
  LocaleMonitor.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1004B866C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004B86B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v339 = a6;
  v337 = a3;
  v296 = a7;
  v11 = sub_10022C350(&qword_100CA5008);
  __chkstk_darwin(v11 - 8);
  v278 = &v271 - v12;
  v276 = type metadata accessor for LocationComponentContainerViewModel();
  __chkstk_darwin(v276);
  sub_100003848();
  v305 = v13;
  sub_10000386C();
  __chkstk_darwin(v14);
  sub_100003878();
  v294 = v15;
  sub_10000386C();
  __chkstk_darwin(v16);
  v18 = &v271 - v17;
  __chkstk_darwin(v19);
  sub_100003878();
  v291 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_100003878();
  v290 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_100003878();
  v288 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v301 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100003878();
  v285 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_100003878();
  v300 = v30;
  sub_10000386C();
  __chkstk_darwin(v31);
  sub_100003878();
  v282 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  sub_100003878();
  v297 = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  sub_100003878();
  v279 = v36;
  sub_10000386C();
  __chkstk_darwin(v37);
  sub_100003878();
  v272 = v38;
  sub_10000386C();
  __chkstk_darwin(v39);
  v41 = &v271 - v40;
  v333 = *(a5 - 8);
  __chkstk_darwin(v42);
  sub_100003848();
  v295 = v43;
  sub_10000386C();
  __chkstk_darwin(v44);
  sub_100003878();
  v315 = v45;
  sub_10000386C();
  __chkstk_darwin(v46);
  sub_100003878();
  v314 = v47;
  sub_10000386C();
  __chkstk_darwin(v48);
  sub_100003878();
  v313 = v49;
  sub_10000386C();
  __chkstk_darwin(v50);
  sub_100003878();
  v312 = v51;
  sub_10000386C();
  __chkstk_darwin(v52);
  sub_100003878();
  v311 = v53;
  sub_10000386C();
  __chkstk_darwin(v54);
  sub_100003878();
  v310 = v55;
  sub_10000386C();
  __chkstk_darwin(v56);
  sub_100003878();
  v309 = v57;
  sub_10000386C();
  __chkstk_darwin(v58);
  sub_100003878();
  v308 = v59;
  sub_10000386C();
  __chkstk_darwin(v60);
  sub_100003878();
  v307 = v61;
  sub_10000386C();
  __chkstk_darwin(v62);
  sub_100003878();
  v292 = v63;
  sub_10000386C();
  __chkstk_darwin(v64);
  sub_100003878();
  v306 = v65;
  sub_10000386C();
  __chkstk_darwin(v66);
  sub_100003878();
  v289 = v67;
  sub_10000386C();
  __chkstk_darwin(v68);
  v70 = &v271 - v69;
  __chkstk_darwin(v71);
  sub_100003878();
  v287 = v72;
  sub_10000386C();
  __chkstk_darwin(v73);
  sub_100003878();
  v331 = v74;
  sub_10000386C();
  __chkstk_darwin(v75);
  sub_100003878();
  v286 = v76;
  sub_10000386C();
  __chkstk_darwin(v77);
  sub_100003878();
  v330 = v78;
  sub_10000386C();
  __chkstk_darwin(v79);
  sub_100003878();
  v284 = v80;
  sub_10000386C();
  __chkstk_darwin(v81);
  sub_100003878();
  v329 = v82;
  sub_10000386C();
  __chkstk_darwin(v83);
  sub_100003878();
  v283 = v84;
  sub_10000386C();
  __chkstk_darwin(v85);
  sub_100003878();
  v327 = v86;
  sub_10000386C();
  __chkstk_darwin(v87);
  sub_100003878();
  v281 = v88;
  sub_10000386C();
  __chkstk_darwin(v89);
  sub_100003878();
  v326 = v90;
  sub_10000386C();
  __chkstk_darwin(v91);
  sub_100003878();
  v280 = v92;
  sub_10000386C();
  __chkstk_darwin(v93);
  sub_100003878();
  v325 = v94;
  sub_10000386C();
  __chkstk_darwin(v95);
  sub_100003878();
  v277 = v96;
  sub_10000386C();
  __chkstk_darwin(v97);
  sub_100003878();
  v324 = v98;
  sub_10000386C();
  __chkstk_darwin(v99);
  sub_100003878();
  v275 = v100;
  sub_10000386C();
  __chkstk_darwin(v101);
  sub_100003878();
  v323 = v102;
  sub_10000386C();
  __chkstk_darwin(v103);
  sub_100003878();
  v274 = v104;
  sub_10000386C();
  __chkstk_darwin(v105);
  sub_100003878();
  v322 = v106;
  sub_10000386C();
  __chkstk_darwin(v107);
  sub_100003878();
  v273 = v108;
  sub_10000386C();
  __chkstk_darwin(v109);
  sub_100003878();
  v321 = v110;
  sub_10000386C();
  __chkstk_darwin(v111);
  sub_100003878();
  v334 = v112;
  sub_10000386C();
  __chkstk_darwin(v113);
  v115 = &v271 - v114;
  v336 = type metadata accessor for Optional();
  v302 = *(v336 - 8);
  __chkstk_darwin(v336);
  sub_100003848();
  v304 = v116;
  sub_10000386C();
  __chkstk_darwin(v117);
  sub_100003878();
  v303 = v118;
  sub_10000386C();
  __chkstk_darwin(v119);
  sub_100003878();
  v320 = v120;
  sub_10000386C();
  __chkstk_darwin(v121);
  sub_100003878();
  v319 = v122;
  sub_10000386C();
  __chkstk_darwin(v123);
  v125 = &v271 - v124;
  __chkstk_darwin(v126);
  v318 = &v271 - v127;
  v338 = a2;
  sub_100566A40(a2, v358);
  v328 = v115;
  v335 = v125;
  v298 = a1;
  v299 = a4;
  v332 = v70;
  v293 = v18;
  if (v359)
  {
    v128 = 1;
    v129 = v41;
  }

  else
  {
    v317 = v358[3];
    v130 = v358[2];
    v131 = v358[1];
    v132 = a1;
    v133 = v358[0];
    v129 = v41;
    sub_1001B3B30(v132 + OBJC_IVAR____TtCV7Weather22ElevatedAqiNewsContent8_Storage_airQuality, v41);
    v134 = v333;
    v337(v41, v133, v131, v130, v317);
    sub_1001B4354(v41);
    v135 = sub_100007EE8();
    sub_1000495EC(v135, v136);
    v137 = *(v134 + 8);
    v138 = sub_100007EE8();
    v137(v138);
    v139 = sub_100003A60();
    sub_1000833D8(v139, v140, v41);
    v141 = sub_100003A60();
    v137(v141);
    v125 = v335;
    v142 = sub_10002276C();
    v143(v142);
    v128 = 0;
  }

  v144 = 1;
  sub_10001B350(v125, v128, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v145, v146);
  v316 = *(v302 + 8);
  v317 = v302 + 8;
  v316(v125, v336);
  sub_100566BC8(v338, v360);
  if ((v361 & 1) == 0)
  {
    v147 = v360[3];
    v148 = v360[2];
    v149 = v360[1];
    v150 = v360[0];
    sub_1001B3B30(v298 + OBJC_IVAR____TtCV7Weather22ElevatedAqiNewsContent8_Storage_newsArticle, v129);
    v151 = v333;
    v337(v129, v150, v149, v148, v147);
    sub_1001B4354(v129);
    v152 = v328;
    v153 = sub_100007EE8();
    sub_1000495EC(v153, v154);
    v155 = *(v151 + 8);
    v156 = sub_100007EE8();
    v155(v156);
    sub_1000833D8(v152, a5, v41);
    (v155)(v152, a5);
    v125 = v335;
    v157 = sub_10002276C();
    v158(v157);
    v144 = 0;
  }

  sub_10001B350(v125, v144, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v159, v160);
  v316(v125, v336);
  v161 = OBJC_IVAR____TtCV7Weather22ElevatedAqiNewsContent8_Storage_map;
  v162 = v298;
  swift_beginAccess();
  v163 = v278;
  sub_10026E174(v162 + v161, v278);
  v164 = sub_100024D10(v163, 1, v276) == 1;
  v165 = v297;
  if (v164)
  {
    sub_10026E1E4(v163);
    v166 = 1;
LABEL_11:
    v169 = v335;
    goto LABEL_13;
  }

  v167 = v272;
  sub_10026E24C(v163, v272);
  sub_100566A5C(v338, v362);
  v168 = v328;
  if (v363)
  {
    sub_1001B4354(v167);
    v166 = 1;
    goto LABEL_11;
  }

  v337(v167, v362[0], v362[1], v362[2], v362[3]);
  sub_1001B4354(v167);
  v170 = sub_100007EE8();
  sub_1000495EC(v170, v171);
  v172 = *(v333 + 8);
  v173 = sub_100007EE8();
  v172(v173);
  v174 = sub_100003A60();
  sub_1000833D8(v174, v175, v162);
  v165 = v297;
  (v172)(v168, a5);
  v169 = v335;
  v176 = sub_10002276C();
  v177(v176);
  v166 = 0;
LABEL_13:
  sub_10001B350(v169, v166, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v178, v179);
  v316(v169, v336);
  v180 = v279;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v279);
  sub_100566A78(v338, v364);
  if (v365)
  {
    goto LABEL_31;
  }

  v337(v180, v364[0], v364[1], v364[2], v364[3]);
  sub_1001B4354(v180);
  v181 = sub_100007EE8();
  sub_1000833D8(v181, v182, v339);
  v183 = *(v333 + 8);
  v184 = sub_100007EE8();
  v183(v184);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v165);
  sub_100566A94(v338, v366);
  if (v366[32])
  {
    goto LABEL_31;
  }

  v185 = sub_1000053F4();
  v186(v185);
  sub_1001B4354(v165);
  v187 = sub_100007EE8();
  sub_1000833D8(v187, v188, v339);
  v189 = sub_100007EE8();
  v183(v189);
  v190 = v282;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex, v282);
  sub_100566AB0(v338, v367);
  if (v367[32])
  {
    goto LABEL_34;
  }

  v191 = sub_1000053F4();
  v192(v191);
  sub_1001B4354(v190);
  v193 = sub_100007EE8();
  sub_1000833D8(v193, v194, v339);
  v195 = sub_100007EE8();
  v183(v195);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v300);
  sub_100566ACC(v338, v368);
  if (v368[32])
  {
    goto LABEL_31;
  }

  v196 = v300;
  v197 = sub_1000280EC();
  v198(v197);
  sub_1001B4354(v196);
  sub_1000140F4();
  sub_1000833D8(v199, v200, v201);
  v202 = sub_100003A60();
  v183(v202);
  v203 = v285;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind, v285);
  sub_100566AE8(v338, v369);
  if (v369[32])
  {
    goto LABEL_34;
  }

  v204 = sub_1000280EC();
  v205(v204);
  sub_1001B4354(v203);
  sub_1000140F4();
  sub_1000833D8(v206, v207, v208);
  v209 = sub_100003A60();
  v183(v209);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v301);
  sub_100566B04(v338, v370);
  if (v370[32])
  {
    goto LABEL_31;
  }

  v210 = v301;
  v211 = sub_1000280EC();
  v212(v211);
  sub_1001B4354(v210);
  sub_1000140F4();
  sub_1000833D8(v213, v214, v215);
  v216 = sub_100003A60();
  v183(v216);
  v217 = v288;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike, v288);
  sub_100566B20(v338, v371);
  if (v371[32])
  {
    goto LABEL_31;
  }

  v218 = sub_1000053F4();
  v219(v218);
  sub_1001B4354(v217);
  v220 = sub_100007EE8();
  sub_1000833D8(v220, v221, v339);
  v222 = sub_100007EE8();
  v183(v222);
  v223 = v290;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v290);
  sub_100566B3C(v338, v372);
  if (v372[32])
  {
LABEL_34:
    sub_100013470();
    goto LABEL_35;
  }

  v224 = sub_1000053F4();
  v225(v224);
  sub_1001B4354(v223);
  v226 = sub_100007EE8();
  sub_1000833D8(v226, v227, v339);
  v228 = sub_100007EE8();
  v183(v228);
  v229 = v291;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility, v291);
  sub_100566B58(v338, &v373);
  if ((v374 & 1) == 0)
  {
    v230 = sub_1000053F4();
    v231(v230);
    sub_1001B4354(v229);
    v232 = sub_100007EE8();
    sub_1000833D8(v232, v233, v339);
    v234 = sub_100007EE8();
    v183(v234);
    v235 = v293;
    sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v293);
    sub_100566B74(v338, &v375);
    if ((v376 & 1) == 0)
    {
      v236 = sub_1000053F4();
      v237(v236);
      sub_1001B4354(v235);
      v238 = sub_100007EE8();
      sub_1000833D8(v238, v239, v339);
      v240 = sub_100007EE8();
      v183(v240);
      v241 = v294;
      sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v294);
      sub_100566B90(v338, &v377);
      if ((v378 & 1) == 0)
      {
        v242 = sub_1000280EC();
        v243(v242);
        sub_1001B4354(v241);
        sub_1000140F4();
        sub_1000833D8(v244, v245, v246);
        v247 = sub_100003A60();
        v183(v247);
        sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v305);
        sub_100566BAC(v338, v379);
        if ((v380 & 1) == 0)
        {
          v248 = v292;
          v249 = v305;
          v337(v305, v379[0], v379[1], v379[2], v379[3]);
          sub_1001B4354(v249);
          sub_1000495EC(v248, a5);
          (v183)(v248, a5);
          v250 = *(v302 + 16);
          v251 = v335;
          v252 = v336;
          v250(v335, v318, v336);
          v357[0] = v251;
          v253 = v303;
          v250(v303, v319, v252);
          v357[1] = v253;
          v254 = v304;
          v250(v304, v320, v252);
          v357[2] = v254;
          v255 = *(v333 + 16);
          v256 = v328;
          v255(v328, v321, a5);
          v357[3] = v256;
          v257 = v334;
          v255(v334, v322, a5);
          v357[4] = v257;
          v258 = v307;
          v255(v307, v323, a5);
          v357[5] = v258;
          v259 = v308;
          v255(v308, v324, a5);
          v357[6] = v259;
          v260 = v309;
          v255(v309, v325, a5);
          v357[7] = v260;
          v261 = v310;
          v255(v310, v326, a5);
          v357[8] = v261;
          v262 = v311;
          v255(v311, v327, a5);
          v357[9] = v262;
          v263 = v312;
          v255(v312, v329, a5);
          v357[10] = v263;
          v264 = v313;
          v255(v313, v330, a5);
          v357[11] = v264;
          v265 = v314;
          v255(v314, v331, a5);
          v357[12] = v265;
          v266 = v315;
          v255(v315, v332, a5);
          v357[13] = v266;
          v267 = v295;
          v255(v295, v306, a5);
          v357[14] = v267;
          v356[0] = v252;
          v356[1] = v252;
          v356[2] = v252;
          v356[3] = a5;
          v356[4] = a5;
          v356[5] = a5;
          v356[6] = a5;
          v356[7] = a5;
          v356[8] = a5;
          v356[9] = a5;
          v356[10] = a5;
          v356[11] = a5;
          v356[12] = a5;
          v356[13] = a5;
          v356[14] = a5;
          v340 = v249;
          WitnessTable = swift_getWitnessTable();
          v342 = WitnessTable;
          v343 = WitnessTable;
          v344 = v249;
          v345 = v249;
          v346 = v249;
          v347 = v249;
          v348 = v249;
          v349 = v249;
          v350 = v249;
          v351 = v249;
          v352 = v249;
          v353 = v249;
          v354 = v249;
          v355 = v249;
          sub_10012E24C(v357, 15, v356);
          v268 = sub_100007EE8();
          v183(v268);
          (v183)(v332, a5);
          (v183)(v331, a5);
          (v183)(v330, a5);
          (v183)(v329, a5);
          (v183)(v327, a5);
          (v183)(v326, a5);
          (v183)(v325, a5);
          (v183)(v324, a5);
          (v183)(v323, a5);
          (v183)(v322, a5);
          (v183)(v321, a5);
          v269 = v316;
          v316(v320, v252);
          v269(v319, v252);
          v269(v318, v252);
          (v183)(v267, a5);
          (v183)(v315, a5);
          (v183)(v314, a5);
          (v183)(v313, a5);
          (v183)(v312, a5);
          (v183)(v311, a5);
          (v183)(v310, a5);
          (v183)(v309, a5);
          (v183)(v308, a5);
          (v183)(v307, a5);
          (v183)(v334, a5);
          (v183)(v328, a5);
          v269(v304, v252);
          v269(v303, v252);
          return (v269)(v335, v252);
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

uint64_t sub_1004B9EC4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1004B9FA8(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56);
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72);
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v9 = *(a1 + 80) == *(a2 + 80) && *(a1 + 88) == *(a2 + 88);
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = *(a1 + 96) == *(a2 + 96) && *(a1 + 104) == *(a2 + 104);
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a1 + 112) == *(a2 + 112) && *(a1 + 120) == *(a2 + 120);
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v12 = *(a1 + 128) == *(a2 + 128) && *(a1 + 136) == *(a2 + 136);
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v13 = *(a1 + 144) == *(a2 + 144) && *(a1 + 152) == *(a2 + 152);
  if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v14 = *(a1 + 160) == *(a2 + 160) && *(a1 + 168) == *(a2 + 168);
  if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 176) != *(a2 + 176))
  {
    return 0;
  }

  v15 = *(a1 + 184) == *(a2 + 184) && *(a1 + 192) == *(a2 + 192);
  if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v16 = type metadata accessor for WindComponentViewModel();
  if ((static WindComponentCompassViewModel.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v17 = *(v16 + 72);
  v18 = *(a1 + v17);
  v19 = *(a2 + v17);

  return sub_1009EC864(v18, v19);
}

uint64_t static Neighborhood.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

double sub_1004BA278()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    return *(v0 + 32);
  }

  if (qword_100CA20B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = sub_100472710();
  *(v0 + 32) = result;
  *(v0 + 40) = 0;
  return result;
}

uint64_t sub_1004BA308()
{
  type metadata accessor for Font.TextStyle();
  sub_10000548C();
  __chkstk_darwin(v2);
  sub_1000101A4();
  if (*(v0 + 8))
  {
    v1 = *(v0 + 8);
  }

  else
  {
    v3 = sub_1000101BC();
    v4(v3);
    static Font.Weight.semibold.getter();
    static Font.system(_:weight:)();
    v5 = sub_100005F2C();
    v6(v5);
    *(v0 + 8) = v1;
  }

  return v1;
}

uint64_t sub_1004BA3F0()
{
  type metadata accessor for Font.TextStyle();
  sub_10000548C();
  __chkstk_darwin(v2);
  sub_1000101A4();
  if (*v0)
  {
    v1 = *v0;
  }

  else
  {
    v3 = sub_1000101BC();
    v4(v3);
    static Font.Weight.semibold.getter();
    static Font.system(_:weight:)();
    v5 = sub_100005F2C();
    v6(v5);
    *v0 = v1;
  }

  return v1;
}

double sub_1004BA4D8()
{
  if ((*(v0 + 152) & 1) == 0)
  {
    return *(v0 + 144);
  }

  *(v0 + 144) = 0x4000000000000000;
  *(v0 + 152) = 0;
  return 2.0;
}

double sub_1004BA4FC()
{
  if ((*(v0 + 96) & 1) == 0)
  {
    return *(v0 + 64);
  }

  v1 = static Solarium.isEnabled.getter();
  result = sub_1004BA570();
  if (v1)
  {
    result = result + 10.0;
  }

  v3 = 32.0;
  if ((v1 & 1) == 0)
  {
    v3 = 19.0;
  }

  *(v0 + 64) = result;
  *(v0 + 72) = v3;
  *(v0 + 80) = 0x4024000000000000;
  *(v0 + 88) = v3;
  *(v0 + 96) = 0;
  return result;
}

double sub_1004BA570()
{
  if ((*(v0 + 56) & 1) == 0)
  {
    return *(v0 + 48);
  }

  v1 = static Solarium.isEnabled.getter();
  result = 19.0;
  if (v1)
  {
    result = 18.0;
  }

  *(v0 + 48) = result;
  *(v0 + 56) = 0;
  return result;
}

double sub_1004BA5B0()
{
  if ((*(v0 + 248) & 1) == 0)
  {
    return *(v0 + 240);
  }

  v1 = static Solarium.isEnabled.getter();
  result = 8.0;
  if (v1)
  {
    result = 26.0;
  }

  *(v0 + 240) = result;
  *(v0 + 248) = 0;
  return result;
}

double sub_1004BA5F0()
{
  if ((*(v0 + 192) & 1) == 0)
  {
    return *(v0 + 160);
  }

  v1 = static Solarium.isEnabled.getter();
  result = 13.0;
  if (v1)
  {
    result = 15.0;
  }

  *(v0 + 160) = result;
  *(v0 + 168) = 0x4030000000000000;
  *(v0 + 176) = result;
  *(v0 + 184) = 0x4030000000000000;
  *(v0 + 192) = 0;
  return result;
}

double sub_1004BA650()
{
  if ((*(v0 + 208) & 1) == 0)
  {
    return *(v0 + 200);
  }

  *(v0 + 200) = 0x4020000000000000;
  *(v0 + 208) = 0;
  return 8.0;
}

double sub_1004BA674()
{
  if ((*(v0 + 224) & 1) == 0)
  {
    return *(v0 + 216);
  }

  *(v0 + 216) = 0x4020000000000000;
  *(v0 + 224) = 0;
  return 8.0;
}

uint64_t sub_1004BA698()
{
  if (*(v0 + 232))
  {
    v1 = *(v0 + 232);
  }

  else
  {
    v2 = [objc_opt_self() quaternarySystemFillColor];
    v1 = Color.init(_:)();
    *(v0 + 232) = v1;
  }

  return v1;
}

double sub_1004BA700()
{
  if ((*(v0 + 136) & 1) == 0)
  {
    return *(v0 + 104);
  }

  result = sub_1004BA4FC();
  *(v0 + 104) = result;
  *(v0 + 112) = v2;
  *(v0 + 120) = v3;
  *(v0 + 128) = v4;
  *(v0 + 136) = 0;
  return result;
}

double sub_1004BA738()
{
  qword_100D90230 = 0;
  result = 0.0;
  xmmword_100D90210 = 0u;
  unk_100D90220 = 0u;
  byte_100D90238 = 1;
  qword_100D90240 = 0;
  byte_100D90248 = 1;
  xmmword_100D90250 = 0u;
  unk_100D90260 = 0u;
  byte_100D90270 = 1;
  unk_100D90278 = 0u;
  unk_100D90288 = 0u;
  byte_100D90298 = 1;
  qword_100D902A0 = 0;
  byte_100D902A8 = 1;
  xmmword_100D902B0 = 0u;
  unk_100D902C0 = 0u;
  byte_100D902D0 = 1;
  qword_100D902D8 = 0;
  byte_100D902E0 = 1;
  qword_100D902E8 = 0;
  byte_100D902F0 = 1;
  qword_100D902F8 = 0;
  unk_100D90300 = 0;
  byte_100D90308 = 1;
  return result;
}

uint64_t type metadata accessor for SearchView()
{
  result = qword_100CBE9B0;
  if (!qword_100CBE9B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004BA83C()
{
  sub_1004BA8F0();
  if (v0 <= 0x3F)
  {
    sub_100284708();
    if (v1 <= 0x3F)
    {
      sub_1000612C8();
      if (v2 <= 0x3F)
      {
        sub_100081C98();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1004BA8F0()
{
  if (!qword_100CBE9C0)
  {
    sub_10022E824(&qword_100CA4C78);
    sub_100006F64(&qword_100CA4C80, &qword_100CA4C78);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100CBE9C0);
    }
  }
}

uint64_t sub_1004BA9B0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CA62E0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SearchView();
  sub_100035AD0(v1 + *(v10 + 24), v9, &qword_100CA62E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1004BD05C(v9, a1);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1004BAB80@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  type metadata accessor for AutomationInfo(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = static Alignment.center.getter();
  a1[1] = v7;
  v8 = sub_10022C350(&qword_100CBE9F8);
  sub_1004BACC8(v2, a1 + *(v8 + 44));
  type metadata accessor for AutomationViewInfo(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v9 = a1 + *(sub_10022C350(&qword_100CBEA00) + 36);
  v10 = type metadata accessor for AutomationInfoProperty();
  sub_1004BCF88(v6, &v9[*(v10 + 24)], type metadata accessor for AutomationInfo);
  sub_1004BCFE8(v6, type metadata accessor for AutomationInfo);
  *v9 = 0;
  *(v9 + 1) = 0xE000000000000000;
  result = swift_getKeyPath();
  *(v9 + 2) = result;
  v9[24] = 0;
  return result;
}

uint64_t sub_1004BACC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v144 = a2;
  v123 = type metadata accessor for SearchDismissOverlayView();
  __chkstk_darwin(v123);
  v106 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_10022C350(&qword_100CBEA08);
  __chkstk_darwin(v119);
  v121 = &v106 - v4;
  v120 = sub_10022C350(&qword_100CBEA10);
  __chkstk_darwin(v120);
  v114 = &v106 - v5;
  v6 = sub_10022C350(&qword_100CBEA18);
  __chkstk_darwin(v6 - 8);
  v113 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v115 = &v106 - v9;
  v111 = type metadata accessor for SearchView();
  v107 = *(v111 - 8);
  __chkstk_darwin(v111);
  v109 = v10;
  v110 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_10022C350(&qword_100CBEA20);
  __chkstk_darwin(v108);
  v112 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v125 = &v106 - v13;
  v129 = sub_10022C350(&qword_100CBEA28);
  __chkstk_darwin(v129);
  v122 = &v106 - v14;
  v126 = sub_10022C350(&qword_100CBEA30);
  __chkstk_darwin(v126);
  v128 = &v106 - v15;
  v140 = sub_10022C350(&qword_100CBEA38);
  __chkstk_darwin(v140);
  v130 = &v106 - v16;
  v127 = sub_10022C350(&qword_100CBEA40);
  __chkstk_darwin(v127);
  v116 = &v106 - v17;
  v133 = sub_10022C350(&qword_100CBEA48);
  __chkstk_darwin(v133);
  v118 = &v106 - v18;
  v124 = type metadata accessor for SearchResultsView(0);
  __chkstk_darwin(v124);
  v117 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v134 = &v106 - v21;
  v22 = type metadata accessor for SearchResultsViewModel(0);
  __chkstk_darwin(v22 - 8);
  v135 = (&v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v132 = (&v106 - v25);
  v142 = sub_10022C350(&qword_100CBEA50);
  __chkstk_darwin(v142);
  v143 = &v106 - v26;
  v136 = sub_10022C350(&qword_100CBEA58);
  __chkstk_darwin(v136);
  v138 = &v106 - v27;
  v131 = sub_10022C350(&qword_100CBEA60);
  __chkstk_darwin(v131);
  v29 = &v106 - v28;
  v137 = sub_10022C350(&qword_100CBEA68);
  __chkstk_darwin(v137);
  v31 = &v106 - v30;
  v141 = sub_10022C350(&qword_100CBEA70);
  __chkstk_darwin(v141);
  v139 = &v106 - v32;
  v145 = sub_10022C350(&qword_100CBEA78);
  __chkstk_darwin(v145);
  v34 = &v106 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v106 - v36;
  __chkstk_darwin(v38);
  v40 = &v106 - v39;
  v41 = type metadata accessor for SearchViewModel(0);
  __chkstk_darwin(v41);
  v43 = &v106 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1;
  sub_100989840();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      memcpy(__dst, v43, sizeof(__dst));
      sub_1004BC5E0();
      v34[*(sub_10022C350(&qword_100CBEA80) + 36)] = 1;
      v91 = static SafeAreaRegions.all.getter();
      v92 = static Edge.Set.all.getter();
      v93 = &v34[*(v145 + 36)];
      *v93 = v91;
      v93[8] = v92;
      v94 = swift_allocObject();
      memcpy((v94 + 16), __dst, 0x60uLL);
      v95 = sub_10022C350(&qword_100CA6F50);
      v146[10] = sub_10071E894;
      v146[11] = 0;
      LOBYTE(v146[12]) = 0;
      v146[0] = v95;
      if (qword_100CA1F40 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      result = sub_100035AD0(&xmmword_100D8FB90, v147, &unk_100CAF270);
      if (*&v147[24])
      {
        sub_100013188(v147, &v146[3]);
        v146[1] = sub_1002B08C4;
        v146[2] = v94;
        v97 = Dictionary.init(dictionaryLiteral:)();
        v146[8] = _swiftEmptyArrayStorage;
        v146[9] = v97;
        memcpy(v147, v146, sizeof(v147));
        sub_100035AD0(v34, v40, &qword_100CBEA78);
        sub_100035AD0(v147, v146, &qword_100CA6E88);
        v98 = v116;
        sub_100035AD0(v40, v116, &qword_100CBEA78);
        v99 = sub_10022C350(&qword_100CBEB00);
        sub_100035AD0(v146, v98 + *(v99 + 48), &qword_100CA6E88);
        sub_1000180EC(v146, &qword_100CA6E88);
        sub_1000180EC(v40, &qword_100CBEA78);
        sub_100035AD0(v98, v128, &qword_100CBEA40);
        swift_storeEnumTagMultiPayload();
        sub_100006F64(&qword_100CBEAD8, &qword_100CBEA40);
        sub_1004BCDE0();
        v100 = v130;
        _ConditionalContent<>.init(storage:)();
        sub_100035AD0(v100, v138, &qword_100CBEA38);
        swift_storeEnumTagMultiPayload();
        sub_1004BCA44();
        sub_1004BCD28();
        v101 = v139;
        _ConditionalContent<>.init(storage:)();
        sub_1000180EC(v100, &qword_100CBEA38);
        sub_100035AD0(v101, v143, &qword_100CBEA70);
        swift_storeEnumTagMultiPayload();
        sub_1004BC9B8();
        sub_1004BCAFC();
        _ConditionalContent<>.init(storage:)();
        sub_1000180EC(v101, &qword_100CBEA70);
        sub_1000180EC(v98, &qword_100CBEA40);
        sub_1000180EC(v147, &qword_100CA6E88);
        v62 = v34;
        goto LABEL_13;
      }

      __break(1u);
      return result;
    case 2u:
      v63 = v135;
      sub_1004BCF28(v43, v135, type metadata accessor for SearchResultsViewModel);
      if (*(*v63 + 16))
      {
        v64 = v125;
        v65 = v44;
        sub_1004BC5E0();
        v66 = 1;
        *(v64 + *(sub_10022C350(&qword_100CBEA80) + 36)) = 1;
        v67 = static SafeAreaRegions.all.getter();
        v68 = static Edge.Set.all.getter();
        v69 = v64 + *(v145 + 36);
        *v69 = v67;
        *(v69 + 8) = v68;
        v70 = v44;
        v71 = v110;
        sub_1004BCF88(v70, v110, type metadata accessor for SearchView);
        v72 = (*(v107 + 80) + 16) & ~*(v107 + 80);
        v73 = swift_allocObject();
        sub_1004BCF28(v71, v73 + v72, type metadata accessor for SearchView);
        v74 = (v64 + *(v108 + 36));
        *v74 = sub_1004BCEC8;
        v74[1] = v73;
        v74[2] = 0;
        v74[3] = 0;
        v75 = (v65 + *(v111 + 28));
        v76 = *v75;
        v77 = *(v75 + 1);
        v147[0] = v76;
        *&v147[8] = v77;
        sub_10022C350(&qword_100CA5A80);
        State.wrappedValue.getter();
        v78 = v122;
        v79 = v124;
        if (LOBYTE(v146[0]) == 1)
        {
          v80 = v134;
          sub_100035B30(v65 + 16, v134);
          sub_1004BCF88(v135, v80 + *(v79 + 20), type metadata accessor for SearchResultsViewModel);
          v81 = *(v79 + 24);
          *(v80 + v81) = swift_getKeyPath();
          sub_10022C350(&qword_100CA62E0);
          swift_storeEnumTagMultiPayload();
          sub_1004BCF28(v80, v115, type metadata accessor for SearchResultsView);
          v66 = 0;
        }

        v82 = v115;
        sub_10001B350(v115, v66, 1, v79);
        v83 = v112;
        sub_100035AD0(v125, v112, &qword_100CBEA20);
        v84 = v113;
        sub_100035AD0(v82, v113, &qword_100CBEA18);
        v85 = v114;
        sub_100035AD0(v83, v114, &qword_100CBEA20);
        v86 = sub_10022C350(&qword_100CBEAF8);
        sub_100035AD0(v84, v85 + *(v86 + 48), &qword_100CBEA18);
        sub_1000180EC(v84, &qword_100CBEA18);
        sub_1000180EC(v83, &qword_100CBEA20);
        sub_100035AD0(v85, v121, &qword_100CBEA10);
        swift_storeEnumTagMultiPayload();
        sub_100006F64(&qword_100CBEAE8, &qword_100CBEA10);
        sub_1004BD1B4(&qword_100CBEAF0, type metadata accessor for SearchDismissOverlayView);
        _ConditionalContent<>.init(storage:)();
        sub_1000180EC(v85, &qword_100CBEA10);
        sub_1000180EC(v82, &qword_100CBEA18);
        sub_1000180EC(v125, &qword_100CBEA20);
      }

      else
      {
        v102 = v106;
        sub_100035B30(v44 + 16, v106);
        v103 = *(v123 + 20);
        *(v102 + v103) = swift_getKeyPath();
        sub_10022C350(&qword_100CA62E0);
        swift_storeEnumTagMultiPayload();
        sub_1004BCF88(v102, v121, type metadata accessor for SearchDismissOverlayView);
        swift_storeEnumTagMultiPayload();
        sub_100006F64(&qword_100CBEAE8, &qword_100CBEA10);
        sub_1004BD1B4(&qword_100CBEAF0, type metadata accessor for SearchDismissOverlayView);
        v78 = v122;
        _ConditionalContent<>.init(storage:)();
        sub_1004BCFE8(v102, type metadata accessor for SearchDismissOverlayView);
      }

      sub_100035AD0(v78, v128, &qword_100CBEA28);
      swift_storeEnumTagMultiPayload();
      sub_100006F64(&qword_100CBEAD8, &qword_100CBEA40);
      sub_1004BCDE0();
      v104 = v130;
      _ConditionalContent<>.init(storage:)();
      sub_100035AD0(v104, v138, &qword_100CBEA38);
      swift_storeEnumTagMultiPayload();
      sub_1004BCA44();
      sub_1004BCD28();
      v105 = v139;
      _ConditionalContent<>.init(storage:)();
      sub_1000180EC(v104, &qword_100CBEA38);
      sub_100035AD0(v105, v143, &qword_100CBEA70);
      swift_storeEnumTagMultiPayload();
      sub_1004BC9B8();
      sub_1004BCAFC();
      _ConditionalContent<>.init(storage:)();
      sub_1000180EC(v105, &qword_100CBEA70);
      sub_1000180EC(v78, &qword_100CBEA28);
      v58 = v135;
      goto LABEL_16;
    case 3u:
      sub_1004BC5E0();
      v40[*(sub_10022C350(&qword_100CBEA80) + 36)] = 1;
      v87 = static SafeAreaRegions.all.getter();
      v88 = static Edge.Set.all.getter();
      v89 = &v40[*(v145 + 36)];
      *v89 = v87;
      v89[8] = v88;
      sub_100035AD0(v40, v29, &qword_100CBEA78);
      swift_storeEnumTagMultiPayload();
      sub_1004BCAFC();
      sub_100006F64(&qword_100CBEAC8, &qword_100CBEA48);
      _ConditionalContent<>.init(storage:)();
      sub_100035AD0(v31, v138, &qword_100CBEA68);
      swift_storeEnumTagMultiPayload();
      sub_1004BCA44();
      sub_1004BCD28();
      v90 = v139;
      _ConditionalContent<>.init(storage:)();
      sub_1000180EC(v31, &qword_100CBEA68);
      sub_100035AD0(v90, v143, &qword_100CBEA70);
      swift_storeEnumTagMultiPayload();
      sub_1004BC9B8();
      _ConditionalContent<>.init(storage:)();
      sub_1000180EC(v90, &qword_100CBEA70);
      v62 = v40;
      goto LABEL_13;
    case 4u:
      sub_1004BC5E0();
      v40[*(sub_10022C350(&qword_100CBEA80) + 36)] = 1;
      v59 = static SafeAreaRegions.all.getter();
      v60 = static Edge.Set.all.getter();
      v61 = &v40[*(v145 + 36)];
      *v61 = v59;
      v61[8] = v60;
      sub_100035AD0(v40, v143, &qword_100CBEA78);
      swift_storeEnumTagMultiPayload();
      sub_1004BC9B8();
      sub_1004BCAFC();
      _ConditionalContent<>.init(storage:)();
      v62 = v40;
LABEL_13:
      result = sub_1000180EC(v62, &qword_100CBEA78);
      break;
    default:
      v45 = v43;
      v46 = v132;
      sub_1004BCF28(v45, v132, type metadata accessor for SearchResultsViewModel);
      sub_1004BC5E0();
      v40[*(sub_10022C350(&qword_100CBEA80) + 36)] = 1;
      v47 = static SafeAreaRegions.all.getter();
      v48 = static Edge.Set.all.getter();
      v49 = &v40[*(v145 + 36)];
      *v49 = v47;
      v49[8] = v48;
      v50 = v44 + 16;
      v51 = v134;
      sub_100035B30(v50, v134);
      v52 = v124;
      sub_1004BCF88(v46, v51 + *(v124 + 20), type metadata accessor for SearchResultsViewModel);
      v53 = *(v52 + 24);
      *(v51 + v53) = swift_getKeyPath();
      sub_10022C350(&qword_100CA62E0);
      swift_storeEnumTagMultiPayload();
      sub_100035AD0(v40, v37, &qword_100CBEA78);
      v54 = v117;
      sub_1004BCF88(v51, v117, type metadata accessor for SearchResultsView);
      v55 = v118;
      sub_100035AD0(v37, v118, &qword_100CBEA78);
      v56 = sub_10022C350(&qword_100CBEB08);
      sub_1004BCF88(v54, v55 + *(v56 + 48), type metadata accessor for SearchResultsView);
      v135 = type metadata accessor for SearchResultsView;
      sub_1004BCFE8(v54, type metadata accessor for SearchResultsView);
      sub_1000180EC(v37, &qword_100CBEA78);
      sub_100035AD0(v55, v29, &qword_100CBEA48);
      swift_storeEnumTagMultiPayload();
      sub_1004BCAFC();
      sub_100006F64(&qword_100CBEAC8, &qword_100CBEA48);
      _ConditionalContent<>.init(storage:)();
      sub_100035AD0(v31, v138, &qword_100CBEA68);
      swift_storeEnumTagMultiPayload();
      sub_1004BCA44();
      sub_1004BCD28();
      v57 = v139;
      _ConditionalContent<>.init(storage:)();
      sub_1000180EC(v31, &qword_100CBEA68);
      sub_100035AD0(v57, v143, &qword_100CBEA70);
      swift_storeEnumTagMultiPayload();
      sub_1004BC9B8();
      _ConditionalContent<>.init(storage:)();
      sub_1000180EC(v57, &qword_100CBEA70);
      sub_1000180EC(v55, &qword_100CBEA48);
      sub_1004BCFE8(v134, v135);
      sub_1000180EC(v40, &qword_100CBEA78);
      v58 = v132;
LABEL_16:
      result = sub_1004BCFE8(v58, type metadata accessor for SearchResultsViewModel);
      break;
  }

  return result;
}

uint64_t sub_1004BC4F8()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_1004BC564()
{
  type metadata accessor for SearchView();
  sub_10022C350(&qword_100CA5A80);
  return State.wrappedValue.setter();
}

uint64_t sub_1004BC5E0()
{
  v0 = sub_10022C350(&qword_100CBEB10);
  __chkstk_darwin(v0);
  v2 = (&v16 - v1);
  v3 = sub_10022C350(&qword_100CBEAC0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - v5;
  v7 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  sub_1004BA9B0(&v16 - v8);
  v10 = type metadata accessor for UserInterfaceSizeClass();
  if (sub_100024D10(v9, 1, v10) == 1)
  {
    sub_1000180EC(v9, &qword_100CA6028);
  }

  else
  {
    v17 = v4;
    v11 = *(v10 - 8);
    v12 = (*(v11 + 88))(v9, v10);
    v13 = enum case for UserInterfaceSizeClass.regular(_:);
    (*(v11 + 8))(v9, v10);
    if (v12 == v13)
    {
      Solarium.init()();
      StaticIf<>.init(_:then:else:)();
      v14 = v17;
      (*(v17 + 16))(v2, v6, v3);
      swift_storeEnumTagMultiPayload();
      sub_1004BCCA0();
      _ConditionalContent<>.init(storage:)();
      return (*(v14 + 8))(v6, v3);
    }
  }

  *v2 = static Color.black.getter();
  swift_storeEnumTagMultiPayload();
  sub_1004BCCA0();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1004BC944@<X0>(uint64_t *a1@<X8>)
{
  result = static Color.clear.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1004BC96C@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() tertiarySystemBackgroundColor];
  result = Color.init(_:)();
  *a1 = result;
  return result;
}

unint64_t sub_1004BC9B8()
{
  result = qword_100CBEA88;
  if (!qword_100CBEA88)
  {
    sub_10022E824(&qword_100CBEA70);
    sub_1004BCA44();
    sub_1004BCD28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBEA88);
  }

  return result;
}

unint64_t sub_1004BCA44()
{
  result = qword_100CBEA90;
  if (!qword_100CBEA90)
  {
    sub_10022E824(&qword_100CBEA68);
    sub_1004BCAFC();
    sub_100006F64(&qword_100CBEAC8, &qword_100CBEA48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBEA90);
  }

  return result;
}

unint64_t sub_1004BCAFC()
{
  result = qword_100CBEA98;
  if (!qword_100CBEA98)
  {
    sub_10022E824(&qword_100CBEA78);
    sub_1004BCB88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBEA98);
  }

  return result;
}

unint64_t sub_1004BCB88()
{
  result = qword_100CBEAA0;
  if (!qword_100CBEAA0)
  {
    sub_10022E824(&qword_100CBEA80);
    sub_1004BCC14();
    sub_100061564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBEAA0);
  }

  return result;
}

unint64_t sub_1004BCC14()
{
  result = qword_100CBEAA8;
  if (!qword_100CBEAA8)
  {
    sub_10022E824(&qword_100CBEAB0);
    sub_1004BCCA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBEAA8);
  }

  return result;
}

unint64_t sub_1004BCCA0()
{
  result = qword_100CBEAB8;
  if (!qword_100CBEAB8)
  {
    sub_10022E824(&qword_100CBEAC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBEAB8);
  }

  return result;
}

unint64_t sub_1004BCD28()
{
  result = qword_100CBEAD0;
  if (!qword_100CBEAD0)
  {
    sub_10022E824(&qword_100CBEA38);
    sub_100006F64(&qword_100CBEAD8, &qword_100CBEA40);
    sub_1004BCDE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBEAD0);
  }

  return result;
}

unint64_t sub_1004BCDE0()
{
  result = qword_100CBEAE0;
  if (!qword_100CBEAE0)
  {
    sub_10022E824(&qword_100CBEA28);
    sub_100006F64(&qword_100CBEAE8, &qword_100CBEA10);
    sub_1004BD1B4(&qword_100CBEAF0, type metadata accessor for SearchDismissOverlayView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBEAE0);
  }

  return result;
}

uint64_t sub_1004BCEC8()
{
  type metadata accessor for SearchView();

  return sub_1004BC4F8();
}

uint64_t sub_1004BCF28(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1004BCF88(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1004BCFE8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1004BD05C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA6028);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1004BD0CC()
{
  result = qword_100CBEB18;
  if (!qword_100CBEB18)
  {
    sub_10022E824(&qword_100CBEA00);
    sub_100006F64(&qword_100CBEB20, &qword_100CBEB28);
    sub_1004BD1B4(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBEB18);
  }

  return result;
}

uint64_t sub_1004BD1B4(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1004BD224()
{
  State = type metadata accessor for VisibleLocationWeatherLoadState();
  Date.distance(to:)();
  v3 = *(v0 + *(State + 28));
  if (v3 >= 2)
  {
    if (v3 == 2)
    {
      v4 = (v0 + *(State + 24) + 8);
    }

    else
    {
      v4 = (v0 + *(State + 24) + 16);
    }
  }

  else
  {
    v4 = (v0 + *(State + 24));
  }

  result = v2 + *v4;
  *v4 = result;
  return result;
}

void sub_1004BD2DC()
{
  sub_1004BD360();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1004BD360()
{
  if (!qword_100CBEC40)
  {
    type metadata accessor for Font.Leading();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CBEC40);
    }
  }
}

double sub_1004BD3B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v3 + 40) & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1004BD760(v3);
    v18 = a1;
    v11 = *(v7 + 8);
    v11(v9, v6);

    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1004BD760(v3);
    v11(v9, v6);
    a1 = v18;
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v13 = sub_10022C350(&qword_100CBEC98);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  v14 = (a2 + *(sub_10022C350(&qword_100CBECA0) + 36));
  v15 = v20;
  *v14 = v19;
  v14[1] = v15;
  result = *&v21;
  v14[2] = v21;
  return result;
}

uint64_t sub_1004BD6A4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 41))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 40);
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

uint64_t sub_1004BD6E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

unint64_t sub_1004BD790()
{
  result = qword_100CBECA8;
  if (!qword_100CBECA8)
  {
    sub_10022E824(&qword_100CBECA0);
    sub_100006F64(&qword_100CBECB0, &qword_100CBEC98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBECA8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PredictedLocationsNotificationOptInListTip(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1004BD924()
{
  sub_100441798();
  sub_10002D5A4();
  return Text.init<A>(_:)();
}

uint64_t sub_1004BD964(char a1)
{
  sub_100441868(a1);
  sub_10002D5A4();
  return Text.init<A>(_:)();
}

uint64_t sub_1004BD9A4()
{
  sub_10022C350(&qword_100CAC610);
  sub_100003828();
  __chkstk_darwin(v0);
  v2 = &v6 - v1;
  Image.init(_internalSystemName:)();
  static SymbolRenderingMode.hierarchical.getter();
  v3 = type metadata accessor for SymbolRenderingMode();
  sub_10001B350(v2, 0, 1, v3);
  v4 = Image.symbolRenderingMode(_:)();

  sub_10030FE60(v2);
  return v4;
}

uint64_t sub_1004BDA7C(char a1)
{
  v2 = type metadata accessor for Tips.Action();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  sub_1000037D8();
  v6 = v5 - v4;
  *(swift_allocObject() + 16) = a1;
  Tips.Action.init(id:perform:_:)();
  sub_10022C350(&qword_100CA55B0);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100A2C3F0;
  (*(v3 + 32))(v8 + v7, v6, v2);
  v9 = static Tips.ActionBuilder.buildFinalResult(_:)();
  swift_setDeallocating();
  sub_1005C1E40();
  return v9;
}

uint64_t sub_1004BDC1C(char a1)
{
  v2 = type metadata accessor for Font.TextStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[2] = sub_1004419CC(a1);
  v14[3] = v6;
  sub_10002D5A4();
  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  (*(v3 + 104))(v5, enum case for Font.TextStyle.body(_:), v2);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  (*(v3 + 8))(v5, v2);
  v12 = Text.font(_:)();

  sub_10010CD64(v7, v9, v11 & 1);

  return v12;
}

uint64_t sub_1004BDDB8()
{
  sub_10022C350(&qword_100CA5570);
  sub_1000037C4();
  v49 = v0;
  v50 = v1;
  sub_100003828();
  __chkstk_darwin(v2);
  v47 = &v41 - v3;
  v46 = sub_10022C350(&qword_100CA5578);
  sub_1000037C4();
  v48 = v4;
  sub_100003828();
  __chkstk_darwin(v5);
  v44 = &v41 - v6;
  v7 = type metadata accessor for Tips.IgnoresDisplayFrequency();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v43 = sub_10022C350(&qword_100CA5580);
  sub_1000037C4();
  v45 = v14;
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  v18 = type metadata accessor for Tips.MaxDisplayCount();
  sub_1000037C4();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_1000037D8();
  v24 = v23 - v22;
  v25 = sub_10022C350(&qword_100CA5588);
  sub_1000037C4();
  v42 = v26;
  sub_100003828();
  __chkstk_darwin(v27);
  v29 = &v41 - v28;
  Tips.MaxDisplayCount.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v20 + 8))(v24, v18);
  Tips.IgnoresDisplayFrequency.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v9 + 8))(v13, v7);
  v51 = v18;
  v52 = &protocol witness table for Tips.MaxDisplayCount;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v44;
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v51 = v25;
  v52 = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeConformance2();
  v51 = v7;
  v52 = &protocol witness table for Tips.IgnoresDisplayFrequency;
  v33 = swift_getOpaqueTypeConformance2();
  v35 = v46;
  v34 = v47;
  v36 = v43;
  static Tips.OptionsBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v51 = v35;
  v52 = v36;
  v53 = v32;
  v54 = v33;
  swift_getOpaqueTypeConformance2();
  v37 = v34;
  v38 = v49;
  v39 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v50 + 8))(v37, v38);
  (*(v48 + 8))(v31, v35);
  (*(v45 + 8))(v17, v36);
  (*(v42 + 8))(v29, v25);
  return v39;
}

uint64_t sub_1004BE26C()
{
  v0 = sub_10022C350(&qword_100CA35A0);
  sub_100007074(v0, qword_100D90310);
  sub_10000703C(v0, qword_100D90310);
  sub_10022C350(&qword_100CA55A8);
  type metadata accessor for Tips.ParameterOption();
  *(swift_allocObject() + 16) = xmmword_100A2C3F0;
  static Tips.ParameterOption.transient.getter();
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_1004BE3BC()
{
  v0 = sub_10022C350(&qword_100CA35A0);
  sub_1000037C4();
  v2 = v1;
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = &v16 - v4;
  v6 = type metadata accessor for Tips.Rule();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  if (qword_100CA21A8 != -1)
  {
    swift_once();
  }

  v13 = sub_10000703C(v0, qword_100D90310);
  swift_beginAccess();
  (*(v2 + 16))(v5, v13, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  (*(v8 + 8))(v12, v6);
  v14 = static Tips.RuleBuilder.buildPartialBlock(first:)();

  return v14;
}

uint64_t sub_1004BE5F8@<X0>(uint64_t *a1@<X8>)
{
  sub_1002359F4();
  result = Tip.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1004BE63C()
{
  result = qword_100CBECB8;
  if (!qword_100CBECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBECB8);
  }

  return result;
}

uint64_t type metadata accessor for ConditionDetailMapView()
{
  result = qword_100CBED18;
  if (!qword_100CBED18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004BE70C()
{
  sub_1004BE800(319, &unk_100CBED28, &qword_100CB0590, &unk_100A9B7A0, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ConditionDetailMapViewModel();
    if (v1 <= 0x3F)
    {
      sub_1004BE800(319, &qword_100CB5AC8, &qword_100CB5AD0, &unk_100A492E0, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1004BE800(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10022E824(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1004BE880()
{
  sub_10022C350(&qword_100CA3898);
  sub_100003828();
  __chkstk_darwin(v1);
  v3 = &v25 - v2;
  v4 = type metadata accessor for WeatherDataModel();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v13 = v0 + *(type metadata accessor for ConditionDetailMapView() + 20);
  v14 = type metadata accessor for ConditionDetailMapViewModel();
  sub_1000955E0(v13 + *(v14 + 24), v3, &qword_100CA3898);
  v15 = type metadata accessor for WeatherData(0);
  if (sub_100024D10(v3, 1, v15) == 1)
  {
    sub_1000180EC(v3, &qword_100CA3898);
    return Dictionary.init(dictionaryLiteral:)();
  }

  else
  {
    v17 = *(v6 + 16);
    v17(v9, &v3[*(v15 + 24)], v4);
    sub_1003C8098(v3);
    (*(v6 + 32))(v12, v9, v4);
    sub_10022C350(&qword_100CBEE08);
    v18 = (sub_10022C350(&qword_100CBEE10) - 8);
    v19 = (*(*v18 + 80) + 32) & ~*(*v18 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100A2C3F0;
    v21 = (v20 + v19);
    v22 = v18[14];
    *v21 = Location.id.getter();
    v21[1] = v23;
    v17(v21 + v22, v12, v4);
    v16 = Dictionary.init(dictionaryLiteral:)();
    (*(v6 + 8))(v12, v4);
  }

  return v16;
}

void *sub_1004BEB88@<X0>(uint64_t a1@<X8>)
{
  sub_10022C350(&qword_100CBED60);
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = &__src[-v4];
  *v5 = static HorizontalAlignment.leading.getter();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v6 = sub_10022C350(&qword_100CBED68);
  sub_1004BECCC(v1, &v5[*(v6 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10002F758(v5, a1, &qword_100CBED60);
  v7 = sub_10022C350(&qword_100CBED70);
  return memcpy((a1 + *(v7 + 36)), __src, 0x70uLL);
}

uint64_t sub_1004BECCC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CBED78);
  __chkstk_darwin(v4 - 8);
  v6 = &v53 - v5;
  v7 = sub_10022C350(&qword_100CBED80);
  __chkstk_darwin(v7);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v61 = &v53 - v11;
  __chkstk_darwin(v12);
  v14 = &v53 - v13;
  v15 = (a1 + *(type metadata accessor for ConditionDetailMapView() + 20));
  v16 = v15[1];
  v60 = v15;
  if (v16)
  {
    v54 = a1;
    v55 = v7;
    v56 = v6;
    v57 = v14;
    v58 = v9;
    v59 = a2;
    v66[0] = *v15;
    v66[1] = v16;
    sub_10002D5A4();

    v17 = Text.init<A>(_:)();
    v19 = v18;
    v21 = v20;
    if (qword_100CA21A0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1004BA3F0();
    swift_endAccess();
    v22 = Text.font(_:)();
    v24 = v23;
    v26 = v25;
    v53 = v27;

    sub_10010CD64(v17, v19, v21 & 1);

    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v62 = v26 & 1;
    swift_beginAccess();
    v28 = sub_1004BA4FC();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    swift_endAccess();
    v35 = static Edge.Set.all.getter();
    v63[0] = 0;
    v65[0] = v22;
    v65[1] = v24;
    LOBYTE(v65[2]) = v26 & 1;
    v65[3] = v53;
    memcpy(&v65[4], v64, 0x70uLL);
    LOBYTE(v65[18]) = v35;
    *&v65[19] = v28;
    v65[20] = v30;
    v65[21] = v32;
    v65[22] = v34;
    LOBYTE(v65[23]) = 0;
    LocationSearchEntityFromStringResolver.init()();
    memcpy(v66, v65, 0xB9uLL);
    v9 = v58;
    v36 = v59;
    v6 = v56;
    v14 = v57;
    a1 = v54;
    v7 = v55;
  }

  else
  {
    v36 = a2;
    sub_1004BFE1C(v66);
  }

  sub_1004BF270(a1, v6);
  sub_10022C350(&qword_100CA4060);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100A2D320;
  v38 = static Edge.Set.leading.getter();
  *(v37 + 32) = v38;
  v39 = static Edge.Set.trailing.getter();
  *(v37 + 33) = v39;
  v40 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v38)
  {
    v40 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v39)
  {
    v40 = Edge.Set.init(rawValue:)();
  }

  if (*(v60 + *(type metadata accessor for ConditionDetailMapViewModel() + 36)))
  {
    if (qword_100CA21A0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1004BA278();
    swift_endAccess();
  }

  EdgeInsets.init(_all:)();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = v61;
  sub_10002F758(v6, v61, &qword_100CBED78);
  v50 = v49 + *(v7 + 36);
  *v50 = v40;
  *(v50 + 8) = v42;
  *(v50 + 16) = v44;
  *(v50 + 24) = v46;
  *(v50 + 32) = v48;
  *(v50 + 40) = 0;
  sub_10002F758(v49, v14, &qword_100CBED80);
  memcpy(v63, v66, sizeof(v63));
  sub_1001F11A0(v14, v9);
  memcpy(v64, v63, 0xB9uLL);
  memcpy(v36, v63, 0xB9uLL);
  v51 = sub_10022C350(&qword_100CBED88);
  sub_1001F11A0(v9, v36 + *(v51 + 48));
  sub_1000955E0(v64, v65, &qword_100CBED90);
  sub_1001F1208(v14);
  sub_1001F1208(v9);
  memcpy(v65, v63, 0xB9uLL);
  return sub_1000180EC(v65, &qword_100CBED90);
}

uint64_t sub_1004BF270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CBED98);
  __chkstk_darwin(v4);
  v6 = (v40 - v5);
  v7 = sub_10022C350(&qword_100CBEDA0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v46 = v40 - v9;
  v47 = sub_10022C350(&qword_100CBEDA8);
  __chkstk_darwin(v47);
  v11 = v40 - v10;
  v48 = sub_10022C350(&qword_100CBEDB0);
  __chkstk_darwin(v48);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v40 - v15;
  v17 = type metadata accessor for ConditionDetailMapView();
  v18 = (a1 + *(v17 + 24));
  v19 = *v18;
  if (*v18)
  {
    v20 = v17;
    v45 = v8;
    v21 = v18[1];
    v41 = v19;
    v22 = v21;

    *v6 = static Alignment.bottom.getter();
    v6[1] = v23;
    v24 = *(sub_10022C350(&qword_100CBEDE0) + 44);
    v42 = v4;
    v25 = v6 + v24;
    sub_1004BF794(v16);
    v26 = a1 + *(v20 + 20);
    v27 = (v26 + *(type metadata accessor for ConditionDetailMapViewModel() + 28));
    v43 = v7;
    v44 = a2;
    v29 = *v27;
    v28 = v27[1];
    sub_1000955E0(v16, v13, &qword_100CBEDB0);
    sub_1000955E0(v13, v25, &qword_100CBEDB0);
    v30 = (v25 + *(sub_10022C350(&qword_100CBEDE8) + 48));
    *v30 = v29;
    v30[1] = v28;
    swift_bridgeObjectRetain_n();
    sub_1000180EC(v16, &qword_100CBEDB0);

    sub_1000180EC(v13, &qword_100CBEDB0);
    v31 = swift_allocObject();
    v32 = v41;
    *(v31 + 16) = v41;
    *(v31 + 24) = v22;
    v40[1] = v22;
    v33 = sub_100006F64(&qword_100CBEDB8, &qword_100CBED98);

    v34 = v46;
    v35 = v42;
    View.onTapGesture(count:perform:)();

    sub_1000180EC(v6, &qword_100CBED98);
    v36 = v45;
    v37 = v43;
    (*(v45 + 16))(v11, v34, v43);
    swift_storeEnumTagMultiPayload();
    v49 = v35;
    v50 = v33;
    swift_getOpaqueTypeConformance2();
    sub_1004BFE24();
    _ConditionalContent<>.init(storage:)();
    sub_10002B028(v32);
    return (*(v36 + 8))(v34, v37);
  }

  else
  {
    sub_1004BF794(v16);
    sub_1000955E0(v16, v11, &qword_100CBEDB0);
    swift_storeEnumTagMultiPayload();
    v39 = sub_100006F64(&qword_100CBEDB8, &qword_100CBED98);
    v49 = v4;
    v50 = v39;
    swift_getOpaqueTypeConformance2();
    sub_1004BFE24();
    _ConditionalContent<>.init(storage:)();
    return sub_1000180EC(v16, &qword_100CBEDB0);
  }
}

double sub_1004BF794@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  sub_10022C350(&qword_100CBEDF0);
  sub_100003828();
  __chkstk_darwin(v3);
  v63 = &v55 - v4;
  v5 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  v12 = type metadata accessor for WeatherMapDisplayMode();
  sub_1000037C4();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_1000037D8();
  v18 = v17 - v16;
  type metadata accessor for WeatherMap();
  sub_1000037C4();
  v60 = v20;
  v61 = v19;
  __chkstk_darwin(v19);
  sub_1000037D8();
  v59 = v22 - v21;
  v58 = sub_10022C350(&qword_100CBEDD0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v23);
  v62 = &v55 - v24;
  v25 = *(sub_10022C350(&qword_100CBEDF8) + 48);
  v26 = enum case for WeatherMapDisplayMode.SnapshotSizingBehavior.autoSizing(_:);
  type metadata accessor for WeatherMapDisplayMode.SnapshotSizingBehavior();
  sub_1000037E8();
  (*(v27 + 104))(v18, v26);
  if (qword_100CA21C0 != -1)
  {
    swift_once();
  }

  *(v18 + v25) = qword_100D90348;
  (*(v14 + 104))(v18, enum case for WeatherMapDisplayMode.snapshot(_:), v12);
  v29 = *v2;
  v28 = *(v2 + 8);
  v30 = *(v2 + 16);
  if (*(v2 + 17) == 1)
  {
    v57 = *(v2 + 8);
    v56 = v30;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v31 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1004BFF94(v29, v28, v30, 0);
    (*(v7 + 8))(v11, v5);
    v57 = *&v67[8];
    v56 = v67[16];
  }

  sub_10022C350(&qword_100CBEE00);
  v32 = type metadata accessor for Location();
  sub_1000037C4();
  v34 = v33;
  v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100A2C3F0;
  v37 = v2 + *(type metadata accessor for ConditionDetailMapView() + 20);
  v38 = type metadata accessor for ConditionDetailMapViewModel();
  (*(v34 + 16))(v36 + v35, v37 + *(v38 + 20), v32);
  type metadata accessor for WeatherMapOverlayKind();
  static Binding.constant(_:)();
  v65 = Location.id.getter();
  v66 = v39;
  sub_10022C350(&qword_100CA6078);
  static Binding.constant(_:)();

  v55 = *&v67[8];
  sub_1004BE880();
  v40 = v59;
  WeatherMap.init(displayMode:startsFocused:preferredMapSize:locations:overlayKind:selectedLocationId:weatherData:options:cacheIdentifier:isPreferredForCachedInstance:debugIdentifier:)();
  LOBYTE(v34) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = v62;
  (*(v60 + 32))(v62, v40, v61);
  v50 = v49 + *(v58 + 36);
  *v50 = v34;
  *(v50 + 8) = v42;
  *(v50 + 16) = v44;
  *(v50 + 24) = v46;
  *(v50 + 32) = v48;
  *(v50 + 40) = 0;
  if (qword_100CA2B30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100957E50();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v51 = v64;
  sub_1004BFFA0(v49, v64);
  v52 = (v51 + *(sub_10022C350(&qword_100CBEDB0) + 36));
  v53 = *&v67[16];
  *v52 = *v67;
  v52[1] = v53;
  result = v68[0];
  v52[2] = *v68;
  return result;
}

unint64_t sub_1004BFE24()
{
  result = qword_100CBEDC0;
  if (!qword_100CBEDC0)
  {
    sub_10022E824(&qword_100CBEDB0);
    sub_1004BFEB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBEDC0);
  }

  return result;
}

unint64_t sub_1004BFEB0()
{
  result = qword_100CBEDC8;
  if (!qword_100CBEDC8)
  {
    sub_10022E824(&qword_100CBEDD0);
    sub_1004BFF3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBEDC8);
  }

  return result;
}

unint64_t sub_1004BFF3C()
{
  result = qword_100CBEDD8;
  if (!qword_100CBEDD8)
  {
    type metadata accessor for WeatherMap();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBEDD8);
  }

  return result;
}

uint64_t sub_1004BFF94(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1004BFFA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CBEDD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1004C0010()
{
  result = qword_100CBEE18;
  if (!qword_100CBEE18)
  {
    sub_10022E824(&qword_100CBED70);
    sub_100006F64(&qword_100CBEE20, &qword_100CBED60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBEE18);
  }

  return result;
}

uint64_t sub_1004C00C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CBEEC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for ViewState(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for VFXTestViewState();
  sub_1000037E8();
  __chkstk_darwin(v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004C02C8(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, v9);
  sub_10081BA14(v6);
  sub_1004C032C(v9);
  if (sub_100024D10(v6, 1, v10) == 1)
  {
    sub_1004C0388(v6);
    v14 = enum case for WeatherCondition.clear(_:);
    type metadata accessor for WeatherCondition();
    sub_1000037E8();
    return (*(v15 + 104))(a2, v14);
  }

  else
  {
    sub_1004C03F0(v6, v13);
    type metadata accessor for WeatherCondition();
    sub_1000037E8();
    return (*(v17 + 32))(a2, v13);
  }
}

uint64_t sub_1004C02C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004C032C(uint64_t a1)
{
  v2 = type metadata accessor for ViewState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004C0388(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CBEEC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004C03F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VFXTestViewState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s13CalendarStateVMa()
{
  result = qword_100CBEF28;
  if (!qword_100CBEF28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004C04C8()
{
  sub_1004C059C();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      v4 = type metadata accessor for Calendar();
      if (v5 > 0x3F)
      {
        return v4;
      }

      sub_1004C05F4();
      if (v6 > 0x3F)
      {
        return v4;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_1004C059C()
{
  if (!qword_100CBEF38)
  {
    type metadata accessor for Locale();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100CBEF38);
    }
  }
}

void sub_1004C05F4()
{
  if (!qword_100CBEF40)
  {
    sub_10022E824(&qword_100CA72D0);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100CBEF40);
    }
  }
}

uint64_t sub_1004C0658@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = sub_10022C350(&qword_100CA72A8);
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  sub_1004C1594(v2, &v17 - v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for Locale();
    return (*(*(v14 - 8) + 32))(a1, v13, v14);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v10, v4);
  }
}

uint64_t sub_1004C082C()
{
  v0 = type metadata accessor for Calendar.Component();
  v1 = *(v0 - 8);
  v2 = v1;
  __chkstk_darwin(v0);
  sub_1000037D8();
  v151 = v4 - v3;
  v5 = sub_10022C350(&qword_100CACE08);
  __chkstk_darwin(v5 - 8);
  v140 = &v125 - v6;
  v7 = sub_10022C350(&qword_100CBADB0);
  __chkstk_darwin(v7 - 8);
  v139 = &v125 - v8;
  v9 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v9 - 8);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v10);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v11);
  sub_100003878();
  v148 = v12;
  sub_10000386C();
  __chkstk_darwin(v13);
  sub_100003878();
  v145 = v14;
  sub_10000386C();
  __chkstk_darwin(v15);
  sub_100003878();
  v146 = v16;
  sub_10000386C();
  __chkstk_darwin(v17);
  v149 = (&v125 - v18);
  v150 = type metadata accessor for Date();
  sub_1000037C4();
  v159 = v19;
  __chkstk_darwin(v20);
  sub_100003848();
  v160 = v21;
  sub_10000386C();
  __chkstk_darwin(v22);
  v24 = &v125 - v23;
  __chkstk_darwin(v25);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v26);
  sub_100003878();
  v157 = v27;
  sub_10000386C();
  __chkstk_darwin(v28);
  v144 = &v125 - v29;
  type metadata accessor for DateComponents();
  sub_1000037C4();
  v142 = v30;
  v143 = v31;
  __chkstk_darwin(v30);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v32);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v33);
  v35 = &v125 - v34;
  v36 = type metadata accessor for Locale();
  sub_1000037C4();
  v38 = v37;
  __chkstk_darwin(v39);
  sub_1000037D8();
  v42 = v41 - v40;
  sub_1004C0658(v41 - v40);
  (*(v38 + 8))(v42, v36);
  v43 = v35;
  v44 = _s13CalendarStateVMa();
  v45 = *(v44 + 24);
  v46 = sub_10022C350(&qword_100CA53E8);
  v47 = *(v1 + 9);
  v48 = (v2[80] + 32) & ~v2[80];
  v131 = v2[80];
  v133 = v46;
  v130 = v48 + 2 * v47;
  v49 = swift_allocObject();
  v129 = xmmword_100A2D320;
  *(v49 + 16) = xmmword_100A2D320;
  v132 = v48;
  v50 = v49 + v48;
  v155 = v2;
  v51 = v2 + 104;
  v52 = *(v2 + 13);
  v52(v50, enum case for Calendar.Component.year(_:), v0);
  v134 = v47;
  v53 = v50 + v47;
  v54 = enum case for Calendar.Component.month(_:);
  v152 = v0;
  v154 = v51;
  v52(v53, enum case for Calendar.Component.month(_:), v0);
  sub_10004BCB0(v49);
  v156 = v45;
  Calendar.dateComponents(_:from:)();

  result = DateComponents.year.getter();
  if (v56)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v126 = v43;
  result = DateComponents.month.getter();
  if (v57)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v153 = v52;
  v141 = v44;
  type metadata accessor for Calendar();
  sub_100074AA8();
  *(v59 - 256) = v58;
  sub_10001B350(v60, v61, v62, v58);
  type metadata accessor for TimeZone();
  v63 = sub_1000147B8();
  *(v65 - 256) = v64;
  sub_10001B350(v63, v66, v67, v64);
  v68 = v138;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v69 = v149;
  Calendar.date(from:)();
  v70 = *(v143 + 8);
  v143 += 8;
  v135 = v70;
  v70(v68, v142);
  v71 = v150;
  result = sub_100024D10(v69, 1, v150);
  if (result == 1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v72 = *(v159 + 32);
  v72(v144, v69, v71);
  v73 = v151;
  v74 = v54;
  v75 = v152;
  v153(v151, v74, v152);
  v76 = v146;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v77 = *(v155 + 1);
  v155 += 8;
  v147 = v77;
  v77(v73, v75);
  result = sub_100003BFC(v76);
  if (v78)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v72(v157, v76, v71);
  v79 = swift_allocObject();
  *(v79 + 16) = v129;
  v80 = v79 + v132;
  v81 = v153;
  v153(v79 + v132, enum case for Calendar.Component.weekOfYear(_:), v75);
  v81(v80 + v134, enum case for Calendar.Component.yearForWeekOfYear(_:), v75);
  sub_10004BCB0(v79);
  Calendar.dateComponents(_:from:)();

  v82 = v145;
  Calendar.date(from:)();
  result = sub_100003BFC(v82);
  if (v78)
  {
    goto LABEL_22;
  }

  v83 = v71;
  v84 = v136;
  v72(v136, v82, v71);
  v85 = v159 + 16;
  v146 = *(v159 + 16);
  v146(v24, v84, v71);
  LODWORD(v145) = enum case for Calendar.Component.day(_:);
  v149 = (v85 - 8);
  v86 = _swiftEmptyArrayStorage;
  v87 = v24;
  while ((static Date.< infix(_:_:)() & 1) != 0)
  {
    v146(v160, v24, v83);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10069E4F4();
      v86 = v93;
    }

    v88 = *(v86 + 2);
    if (v88 >= *(v86 + 3) >> 1)
    {
      sub_10069E4F4();
      v86 = v94;
    }

    *(v86 + 2) = v88 + 1;
    v72(&v86[((*(v159 + 80) + 32) & ~*(v159 + 80)) + *(v159 + 72) * v88], v160, v83);
    v89 = v151;
    v90 = v152;
    v153(v151, v145, v152);
    v91 = v148;
    v24 = v87;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    v92 = v89;
    v83 = v150;
    v147(v92, v90);
    result = sub_100024D10(v91, 1, v83);
    if (result == 1)
    {
      __break(1u);
      goto LABEL_18;
    }

    (*v149)(v87, v83);
    v72(v87, v91, v83);
  }

  v161 = v86;
  sub_10022C350(&qword_100CA72D0);
  sub_1004C1530();
  v95 = Collection<>.chunk(by:)();
  v96 = v141;
  v97 = v141[9];
  v98 = v158;

  *(v98 + v97) = v95;
  v99 = v96[10];
  (*(v159 + 24))(&v99[v98], v144, v83);
  sub_100074AA8();
  sub_10001B350(v101, v102, v103, *(v100 - 256));
  v104 = sub_1000147B8();
  sub_10001B350(v104, v106, v107, *(v105 - 256));
  sub_10001C398();
  LOBYTE(v126) = 1;
  v125 = 0;
  v108 = v138;
  sub_100004368();
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v160 = v99;
  v109 = v128;
  Calendar.date(byAdding:to:wrappingComponents:)();
  v135(v108, v142);
  result = sub_100003BFC(v109);
  if (v78)
  {
    goto LABEL_23;
  }

  v110 = *(v159 + 40);
  v111 = v98 + v141[7];
  v159 += 40;
  v155 = v110;
  (v110)(v111, v109, v83);
  sub_100074AA8();
  sub_10001B350(v113, v114, v115, *(v112 - 256));
  v116 = sub_1000147B8();
  sub_10001B350(v116, v118, v119, *(v117 - 256));
  sub_10001C398();
  LOBYTE(v144) = 1;
  v143 = 0;
  sub_100004368();
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v120 = v127;
  Calendar.date(byAdding:to:wrappingComponents:)();
  v121 = v108;
  v122 = v142;
  v123 = v135;
  v135(v121, v142);
  result = sub_100003BFC(v120);
  if (!v78)
  {
    v124 = *v149;
    (*v149)(v24, v83);
    v124(v136, v83);
    v123(v137, v122);
    v124(v157, v83);
    v124(v144, v83);
    v123(v126, v122);

    return (v155)(v98 + v141[8], v120, v83);
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_1004C1530()
{
  result = qword_100CBEF88;
  if (!qword_100CBEF88)
  {
    sub_10022E824(&qword_100CA72D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBEF88);
  }

  return result;
}

uint64_t sub_1004C1594(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA72A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004C1604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v918 = a3;
  v923 = a2;
  v916 = type metadata accessor for Date();
  v914 = *(v916 - 8);
  __chkstk_darwin(v916);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v3);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v4);
  sub_10000E70C();
  sub_100003990(v5);
  v6 = sub_10022C350(&unk_100CB2CF0);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v8);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v9);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v10);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v11);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v12);
  sub_10000E70C();
  v14 = sub_100003918(v13);
  v926 = type metadata accessor for ViewState(v14);
  sub_1000037E8();
  __chkstk_darwin(v15);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v16);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v18);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v19);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v20);
  sub_10000E70C();
  sub_100003918(v21);
  v920 = type metadata accessor for TimeState();
  sub_1000037E8();
  __chkstk_darwin(v22);
  sub_100003848();
  v911 = v23;
  sub_10000386C();
  __chkstk_darwin(v24);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v25);
  sub_100003878();
  v910 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v28);
  sub_100003878();
  v909 = v29;
  sub_10000386C();
  __chkstk_darwin(v30);
  sub_10000E70C();
  sub_100003918(v31);
  v919 = type metadata accessor for NotificationsOptInState();
  sub_1000037E8();
  __chkstk_darwin(v32);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v33);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v34);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v35);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v36);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v37);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v38);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v39);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v40);
  sub_10000E70C();
  sub_100003918(v41);
  v925 = type metadata accessor for NotificationsState();
  sub_1000037E8();
  __chkstk_darwin(v42);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v43);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v44);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v45);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v46);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v47);
  sub_10000E70C();
  sub_100003918(v48);
  v924 = type metadata accessor for LocationsState();
  sub_1000037E8();
  __chkstk_darwin(v49);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v50);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v51);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v52);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v53);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v54);
  sub_10000E70C();
  sub_100003918(v55);
  v922 = type metadata accessor for EnvironmentState();
  sub_1000037E8();
  __chkstk_darwin(v56);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v57);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v58);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v59);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v60);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v61);
  sub_10000E70C();
  sub_100003918(v62);
  v921 = type metadata accessor for AppConfigurationState();
  sub_1000037E8();
  __chkstk_darwin(v63);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v64);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v65);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v66);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v67);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v68);
  sub_10000E70C();
  v70 = sub_100003918(v69);
  v915 = type metadata accessor for ModalViewState(v70);
  sub_1000037E8();
  __chkstk_darwin(v71);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v72);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v73);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v74);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v75);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v76);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v77);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v78);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v79);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v80);
  sub_100003878();
  v913 = v81;
  sub_10000386C();
  __chkstk_darwin(v82);
  sub_100003878();
  v917 = v83;
  sub_10000386C();
  __chkstk_darwin(v84);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v85);
  sub_10000E70C();
  v912 = v86;
  v87 = sub_10022C350(&qword_100CA65E8);
  v88 = sub_100003810(v87);
  __chkstk_darwin(v88);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v89);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v90);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v91);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v92);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v93);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v94);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v95);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v96);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v97);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v98);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v99);
  sub_10000E70C();
  sub_100003990(v100);
  v101 = sub_10022C350(&qword_100CA6610);
  v102 = sub_100003810(v101);
  __chkstk_darwin(v102);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v103);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v104);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v105);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v106);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v107);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v108);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v109);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v110);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v111);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v112);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v113);
  sub_10000E70C();
  sub_100003990(v114);
  v115 = sub_10022C350(&qword_100CA6618);
  v116 = sub_100003810(v115);
  __chkstk_darwin(v116);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v117);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v118);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v119);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v120);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v121);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v122);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v123);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v124);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v125);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v126);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v127);
  sub_10000E70C();
  sub_100003990(v128);
  v129 = sub_10022C350(&qword_100CA6620);
  v130 = sub_100003810(v129);
  __chkstk_darwin(v130);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v131);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v132);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v133);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v134);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v135);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v136);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v137);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v138);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v139);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v140);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v141);
  sub_10000E70C();
  sub_100003990(v142);
  v143 = sub_10022C350(&qword_100CA6628);
  v144 = sub_100003810(v143);
  __chkstk_darwin(v144);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v145);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v146);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v147);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v148);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v149);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v150);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v151);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v152);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v153);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v154);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v155);
  sub_10000E70C();
  sub_100003990(v156);
  v157 = sub_10022C350(&qword_100CA6630);
  v158 = sub_100003810(v157);
  __chkstk_darwin(v158);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v159);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v160);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v161);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v162);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v163);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v164);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v165);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v166);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v167);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v168);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v169);
  sub_10000E70C();
  sub_100003990(v170);
  v171 = sub_10022C350(&qword_100CA6638);
  v172 = sub_100003810(v171);
  __chkstk_darwin(v172);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v173);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v174);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v175);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v176);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v177);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v178);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v179);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v180);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v181);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v182);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v183);
  v185 = &v789 - v184;
  v186 = sub_10022C350(&qword_100CA6640);
  v187 = sub_100003810(v186);
  v188 = __chkstk_darwin(v187);
  __chkstk_darwin(v188);
  v190 = __chkstk_darwin(&v789 - v189);
  v192 = &v789 - v191;
  v193 = __chkstk_darwin(v190);
  v195 = &v789 - v194;
  v196 = __chkstk_darwin(v193);
  v197 = __chkstk_darwin(v196);
  v199 = &v789 - v198;
  v200 = __chkstk_darwin(v197);
  v202 = &v789 - v201;
  v203 = __chkstk_darwin(v200);
  v205 = &v789 - v204;
  v206 = __chkstk_darwin(v203);
  v207 = __chkstk_darwin(v206);
  v209 = &v789 - v208;
  v210 = __chkstk_darwin(v207);
  v212 = &v789 - v211;
  v213 = __chkstk_darwin(v210);
  v218 = &v789 - v217;
  switch(v918)
  {
    case 1:
      v912 = v216;
      sub_100003934();
      sub_10001B350(v352, v353, v354, v921);
      v355 = sub_100003BCC(&v868);
      sub_10001B350(v355, v356, v357, v922);
      v358 = sub_100003BCC(&v874);
      sub_10001B350(v358, v359, v360, v924);
      v361 = sub_100003BCC(&v880);
      sub_10001B350(v361, v362, v363, v925);
      v364 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn;
      sub_10001C3F0();
      sub_100042230();
      sub_1004C5540(v365, v366, v367);
      sub_100003934();
      v368 = v916;
      sub_10001B350(v369, v370, v371, v916);
      LODWORD(v905) = *v185;
      v918 = *(v185 + 1);
      v372 = v185[17];
      v373 = v185[18];
      v374 = v185[19];
      v375 = v185[20];
      sub_1000131DC();
      sub_1002AB08C(v376, v377, v378);
      sub_100005404(v202);
      v904 = v364;
      LODWORD(v911) = v372;
      LODWORD(v910) = v373;
      LODWORD(v908) = v374;
      LODWORD(v907) = v375;
      if (v290)
      {
        v597 = v914;
        (*(v914 + 16))(v871, &v185[v919[11]], v368);
        v379 = sub_1000162A4();
        v381 = sub_100024D10(v379, v380, v368);

        if (v381 != 1)
        {
          sub_1000180EC(v202, &unk_100CB2CF0);
        }
      }

      else
      {
        v597 = v914;
        (*(v914 + 32))(v871, v202, v368);
      }

      v598 = v919;
      v599 = v185[v919[12]];
      v600 = v185[v919[13]];
      v601 = v185[v919[14]];
      v602 = v185;
      v603 = v185[v919[15]];
      v604 = *(v602 + v919[16]);
      v605 = *(v602 + v919[17]);
      sub_100031D50(v602);
      v606 = v857;
      *v857 = v905;
      *(v606 + 1) = v918;
      v606[16] = 0;
      v606[17] = v911;
      v606[18] = v910;
      v606[19] = v908;
      v606[20] = v907;
      (*(v597 + 32))(&v606[v598[11]], v871, v916);
      v606[v598[12]] = v599;
      v606[v598[13]] = v600;
      v606[v598[14]] = v601;
      v606[v598[15]] = v603;
      v606[v598[16]] = v604;
      v606[v598[17]] = v605;
      v606[v598[18]] = 0;
      sub_10000E7B0();
      sub_10001B350(v607, v608, v609, v598);
      v610 = sub_100003BCC(&v892);
      sub_10001B350(v610, v611, v612, v920);
      v613 = v817;
      sub_100003934();
      sub_10001B350(v614, v615, v616, v926);
      sub_1000A7C60(&v825);
      sub_10000E7B0();
      sub_10001B350(v617, v618, v619, v597 + 32);
      sub_10004986C();
      sub_1000714DC(v620);
      sub_100042230();
      sub_1004C5540(v621, v622, v623);
      v624 = v599;
      v625 = v810;
      sub_1002AB08C(v624, v810, &qword_100CA65E8);
      sub_10000554C(v625);
      if (v290)
      {
        sub_1000180EC(v625, &qword_100CA65E8);
      }

      else
      {
        sub_100074AB8();
        sub_1000CA688(v603, v634);
        sub_100005518();
        sub_100073030(v625, v603, v635);
      }

      v636 = v830;
      v637 = v822;
      sub_100005518();
      sub_100073030(v603, v638, v639);
      v640 = *(v598 + 2);
      LODWORD(v916) = *(v598 + 24);
      v641 = v912;
      sub_1002AB08C(v209, v912, &qword_100CA6640);
      v642 = sub_1000131C4();
      v643 = v921;
      sub_1000038B4(v642, v644, v921);
      v918 = v640;
      if (v290)
      {
        sub_1000285B4();
        sub_1004C5540(v598 + v645, v883, v646);
        v647 = sub_1000131C4();
        v649 = sub_100024D10(v647, v648, v643);

        if (v649 != 1)
        {
          sub_1000180EC(v641, &qword_100CA6640);
        }
      }

      else
      {
        sub_10000E7D4();
        sub_100073030(v641, v883, v655);
      }

      sub_1000131DC();
      sub_1002AB08C(v656, v657, v658);
      sub_100003BDC(v640);
      if (v290)
      {
        v659 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        sub_10002014C();
        sub_100019964();
        sub_1004C5540(v598 + v659, v889, v660);
        sub_100003BDC(v640);
        if (!v290)
        {
          sub_1000180EC(v640, &qword_100CA6638);
        }
      }

      else
      {
        sub_100003BB4();
        sub_100073030(v640, v889, v664);
      }

      v665 = v796;
      sub_1002AB08C(v847, v796, &qword_100CA6630);
      sub_10002078C();
      if (v290)
      {
        v666 = sub_1000147CC(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
        sub_1004C5540(v666, v895, v667);
        sub_10002078C();
        v672 = v826;
        if (!v290)
        {
          sub_1000180EC(v665, &qword_100CA6630);
        }
      }

      else
      {
        sub_10000E7BC();
        sub_100073030(v665, v895, v671);
        v672 = v826;
      }

      sub_1002AB08C(v853, v637, &qword_100CA6628);
      sub_10000394C(v637);
      if (v290)
      {
        v673 = sub_100008760(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
        sub_1004C5540(v673, v900, v674);
        sub_10000394C(v637);
        v680 = v836;
        if (!v290)
        {
          sub_1000180EC(v637, &qword_100CA6628);
        }
      }

      else
      {
        sub_100028144();
        sub_100073030(v637, v900, v679);
        v680 = v836;
      }

      sub_1002AB08C(v857, v672, &qword_100CA6620);
      sub_10000554C(v672);
      if (v290)
      {
        sub_10001C3F0();
        sub_1004C5540(v598 + v904, v906, v681);
        sub_10000554C(v672);
        v687 = v840;
        if (!v290)
        {
          sub_1000180EC(v672, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000134C8();
        sub_100073030(v672, v906, v686);
        v687 = v840;
      }

      sub_1002AB08C(v863, v636, &qword_100CA6618);
      sub_100005404(v636);
      if (v290)
      {
        v688 = sub_100005F40(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
        sub_1004C5540(v688, v909, v689);
        sub_100005404(v636);
        if (!v290)
        {
          sub_1000180EC(v636, &qword_100CA6618);
        }
      }

      else
      {
        sub_100003B9C();
        sub_100073030(v636, v909, v695);
      }

      sub_1002AB08C(v613, v680, &qword_100CA6610);
      sub_100003BFC(v680);
      if (v290)
      {
        v696 = sub_1000101D0(OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
        sub_1004C5540(v696, v687, v697);
        sub_100003BFC(v680);
        v699 = v687;
        v700 = v913;
        if (!v290)
        {
          sub_1000180EC(v680, &qword_100CA6610);
        }
      }

      else
      {
        sub_100003B84();
        sub_100073030(v680, v687, v698);
        v699 = v687;
        v700 = v913;
      }

      sub_100005518();
      v701 = v917;
      sub_100073030(v700, v917, v702);
      v703 = *(v598 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v704 = *(v598 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      sub_1000B9964();
      sub_100071744();
      sub_100003B6C();
      sub_100051E60();
      v791 = v703;
      v792 = v704;
      v789 = v699;
      v790 = v701;
      v447 = sub_10012CCD0();
      v449 = v883;
      v450 = v889;
      v451 = v895;
      v452 = v900;
      v453 = v906;
      v500 = v909;
      break;
    case 2:
      sub_100003934();
      v292 = v291;
      sub_10001B350(v293, v294, v295, v921);
      v296 = sub_100003BCC(v866);
      v297 = v922;
      sub_10001B350(v296, v298, v299, v922);
      v300 = sub_100003BCC(&v871);
      sub_10001B350(v300, v301, v302, v924);
      v303 = sub_100003BCC(v877);
      sub_10001B350(v303, v304, v305, v925);
      v306 = sub_100003BCC(&v883);
      v307 = v919;
      sub_10001B350(v306, v308, v309, v919);
      v310 = sub_100003BCC(&v889);
      sub_10001B350(v310, v311, v312, v920);
      v313 = sub_100003BCC(&v895);
      sub_10001B350(v313, v314, v315, v926);
      sub_1000A7C60(&v818);
      sub_10000E7B0();
      sub_10001B350(v316, v317, v318, v199);
      sub_10004986C();
      sub_1000714DC(v319);
      sub_100021424();
      sub_1004C5540(v320, v321, v322);
      v323 = v212;
      v324 = v805;
      sub_1002AB08C(v323, v805, &qword_100CA65E8);
      sub_10000554C(v324);
      if (v290)
      {
        sub_1000180EC(v324, &qword_100CA65E8);
      }

      else
      {
        sub_100074AB8();
        sub_1000CA688(v292, v455);
        sub_100005518();
        sub_100073030(v324, v292, v456);
      }

      v457 = v828;
      sub_100005518();
      sub_100073030(v292, v868, v458);
      v459 = *(v218 + 2);
      LODWORD(v916) = v218[24];
      sub_1002AB08C(v205, v202, &qword_100CA6640);
      v460 = sub_1000162A4();
      v461 = v921;
      sub_1000038B4(v460, v462, v921);
      v918 = v459;
      if (v290)
      {
        sub_1000285B4();
        sub_1004C5540(&v218[v463], v873, v464);
        v465 = sub_1000162A4();
        sub_100021CF8(v465, v466);

        v468 = v824;
        if (v461 != 1)
        {
          sub_1000180EC(v202, &qword_100CA6640);
        }
      }

      else
      {
        sub_10000E7D4();
        sub_100073030(v202, v873, v467);

        v468 = v824;
      }

      v469 = v790;
      sub_1002AB08C(v843, v790, &qword_100CA6638);
      sub_1000038B4(v469, 1, v297);
      if (v290)
      {
        v470 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        sub_10002014C();
        sub_100019964();
        sub_1004C5540(&v218[v470], v879, v471);
        sub_1000038B4(v469, 1, v297);
        v474 = v833;
        v472 = v469;
        v475 = v820;
        v476 = v818;
        if (!v290)
        {
          sub_1000180EC(v472, &qword_100CA6638);
        }
      }

      else
      {
        sub_100003BB4();
        sub_100073030(v469, v879, v473);
        v474 = v833;
        v475 = v820;
        v476 = v818;
      }

      sub_1002AB08C(v845, v476, &qword_100CA6630);
      sub_100003BDC(v476);
      if (v290)
      {
        v477 = sub_1000147CC(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
        sub_1004C5540(v477, v882, v478);
        sub_100003BDC(v476);
        if (!v290)
        {
          sub_1000180EC(v476, &qword_100CA6630);
        }
      }

      else
      {
        sub_10000E7BC();
        sub_100073030(v476, v882, v479);
      }

      sub_1002AB08C(v850, v475, &qword_100CA6628);
      sub_10000E7EC(v475);
      if (v290)
      {
        v480 = sub_100008760(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
        sub_1004C5540(v480, v888, v481);
        sub_10000E7EC(v475);
        if (!v290)
        {
          sub_1000180EC(v475, &qword_100CA6628);
        }
      }

      else
      {
        sub_100028144();
        sub_100073030(v475, v888, v482);
      }

      sub_1002AB08C(v855, v468, &qword_100CA6620);
      v483 = sub_100016298();
      sub_1000038B4(v483, v484, v307);
      if (v290)
      {
        sub_10001C3F0();
        sub_1004C5540(&v218[v485], v894, v486);
        v487 = sub_100016298();
        sub_1000038B4(v487, v488, v307);
        if (!v290)
        {
          sub_1000180EC(v468, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000134C8();
        sub_100073030(v468, v894, v489);
      }

      sub_1002AB08C(v860, v457, &qword_100CA6618);
      sub_100003A40(v457);
      if (v290)
      {
        v490 = sub_100005F40(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
        sub_1004C5540(v490, v902, v491);
        sub_100003A40(v457);
        v493 = v838;
        v494 = v926;
        if (!v290)
        {
          sub_1000180EC(v457, &qword_100CA6618);
        }
      }

      else
      {
        sub_100003B9C();
        sub_100073030(v457, v902, v492);
        v493 = v838;
        v494 = v926;
      }

      sub_1000B0234(&qword_100CA6610, &v895);
      sub_10000394C(v474);
      if (v290)
      {
        v495 = sub_1000101D0(OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
        sub_1004C5540(v495, v493, v496);
        sub_10000394C(v474);
        v498 = v493;
        if (!v290)
        {
          sub_1000180EC(v474, &qword_100CA6610);
        }
      }

      else
      {
        sub_100003B84();
        sub_100073030(v474, v493, v497);
        v498 = v493;
      }

      sub_100005518();
      sub_10004375C(v499, &v900);
      sub_100020204();
      sub_1000B9964();
      sub_100071744();
      sub_100003B6C();
      sub_100051E60();
      v791 = v474;
      v792 = v494;
      v789 = v498;
      v790 = v493;
      v447 = sub_10012CCD0();
      v449 = v873;
      v450 = v879;
      v451 = v882;
      v452 = v888;
      v453 = v894;
      v454 = &v927;
      goto LABEL_80;
    case 3:
      v918 = v215;
      sub_100003934();
      sub_10001B350(v325, v326, v327, v921);
      v328 = sub_100003BCC(&v870);
      sub_10001B350(v328, v329, v330, v922);
      v331 = sub_100003BCC(&v876);
      sub_10001B350(v331, v332, v333, v924);
      v334 = sub_100003BCC(&v882);
      sub_10001B350(v334, v335, v336, v925);
      sub_10001C3F0();
      v906 = v337;
      sub_1000131DC();
      sub_1004C5540(v338, v339, v340);
      sub_100003934();
      v341 = v916;
      sub_10001B350(v342, v343, v344, v916);
      LODWORD(v908) = *v202;
      v345 = *(v202 + 1);
      LODWORD(v913) = v202[17];
      LODWORD(v912) = v202[18];
      LODWORD(v911) = v202[19];
      LODWORD(v909) = v202[20];
      sub_100021424();
      sub_1002AB08C(v346, v347, v348);
      sub_100005404(v209);
      if (v290)
      {
        sub_100086778();
        v349(v872);
        v350 = sub_100016298();
        sub_100021CF8(v350, v351);

        v501 = v345;
        if (v341 != 1)
        {
          sub_1000180EC(v209, &unk_100CB2CF0);
        }
      }

      else
      {
        (*(v914 + 32))(v872, v209, v341);

        v501 = v345;
      }

      v502 = v919;
      v503 = v202[v919[12]];
      v504 = v202[v919[13]];
      v505 = v202;
      v506 = v202[v919[15]];
      v507 = *(v505 + v919[16]);
      sub_100031D50(v505);
      v508 = v859;
      *v859 = v908;
      *(v508 + 1) = v501;
      v508[16] = 0;
      v508[17] = v913;
      v508[18] = v912;
      v508[19] = v911;
      v509 = sub_100071974(v909);
      v510(v509, v872, v916);
      v508[v502[12]] = v503;
      sub_100086574();
      v508[v511] = v506;
      v508[v502[16]] = v507;
      v508[v502[17]] = 1;
      v508[v502[18]] = 0;
      sub_10000E7B0();
      sub_10001B350(v512, v513, v514, v502);
      v515 = sub_100003BCC(&v894);
      v516 = v920;
      sub_10001B350(v515, v517, v518, v920);
      v519 = sub_100003BCC(&v898);
      sub_10001B350(v519, v520, v521, v926);
      v522 = *(&v809 + 1);
      sub_100003934();
      sub_10001B350(v523, v524, v525, v915);
      sub_10004986C();
      sub_1000714DC(v526);
      sub_1000131DC();
      sub_1004C5540(v527, v528, v529);
      sub_100042230();
      sub_1002AB08C(v530, v531, v532);
      sub_100003A40(v522);
      if (v290)
      {
        sub_1000180EC(v522, &qword_100CA65E8);
      }

      else
      {
        sub_100074AB8();
        sub_1000CA688(v506, v533);
        sub_100005518();
        sub_100073030(v522, v506, v534);
      }

      v536 = v924;
      v535 = v925;
      v537 = v832;
      sub_100005518();
      sub_100073030(v538, v539, v540);
      v541 = *(v504 + 16);
      LODWORD(v924) = *(v504 + 24);
      v542 = v918;
      sub_1002AB08C(v199, v918, &qword_100CA6640);
      v543 = sub_1000131C4();
      v544 = v921;
      sub_1000038B4(v543, v545, v921);
      v925 = v541;
      if (v290)
      {
        sub_1000285B4();
        sub_1004C5540(v504 + v546, v885, v547);
        v548 = sub_1000131C4();
        v550 = sub_100024D10(v548, v549, v544);

        if (v550 != 1)
        {
          sub_1000180EC(v542, &qword_100CA6640);
        }
      }

      else
      {
        sub_10000E7D4();
        sub_100073030(v542, v885, v551);
      }

      sub_1000519E0();
      sub_1002AB08C(v552, v553, v554);
      sub_100003BDC(v541);
      if (v290)
      {
        v555 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        sub_10002014C();
        sub_100019964();
        sub_1004C5540(v504 + v555, v891, v556);
        sub_100003BDC(v541);
        v558 = v841;
        if (!v290)
        {
          sub_1000180EC(v541, &qword_100CA6638);
        }
      }

      else
      {
        sub_100003BB4();
        sub_100073030(v541, v891, v557);
        v558 = v841;
      }

      v559 = v798;
      sub_1002AB08C(v849, v798, &qword_100CA6630);
      sub_10002078C();
      if (v290)
      {
        v560 = sub_1000147CC(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
        sub_1004C5540(v560, v896, v561);
        sub_10002078C();
        if (!v290)
        {
          sub_1000180EC(v559, &qword_100CA6630);
        }
      }

      else
      {
        sub_10000E7BC();
        sub_100073030(v559, v896, v562);
      }

      sub_100042230();
      sub_1002AB08C(v563, v564, v565);
      sub_100003BFC(v536);
      if (v290)
      {
        v566 = sub_100008760(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
        sub_1004C5540(v566, v901, v567);
        sub_100003BFC(v536);
        if (!v290)
        {
          sub_1000180EC(v536, &qword_100CA6628);
        }
      }

      else
      {
        sub_100028144();
        sub_100073030(v536, v901, v568);
      }

      sub_1000131DC();
      sub_1002AB08C(v569, v570, v571);
      sub_10000E7EC(v535);
      if (v290)
      {
        sub_10001C3F0();
        sub_1004C5540(v504 + v906, v907, v572);
        sub_10000E7EC(v535);
        if (!v290)
        {
          sub_1000180EC(v535, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000134C8();
        sub_100073030(v535, v907, v573);
      }

      sub_1002AB08C(v864, v537, &qword_100CA6618);
      sub_10000394C(v537);
      if (v290)
      {
        v574 = sub_100005F40(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
        sub_1004C5540(v574, v910, v575);
        sub_10000394C(v537);
        if (!v290)
        {
          sub_1000180EC(v537, &qword_100CA6618);
        }
      }

      else
      {
        sub_100003B9C();
        sub_100073030(v537, v910, v576);
      }

      sub_100021424();
      sub_1002AB08C(v577, v578, v579);
      v580 = sub_100016298();
      sub_1000038B4(v580, v581, v926);
      if (v290)
      {
        v582 = sub_1000101D0(OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
        sub_1004C5540(v582, v558, v583);
        sub_100003A40(v516);
        if (!v290)
        {
          sub_1000180EC(v516, &qword_100CA6610);
        }
      }

      else
      {
        sub_100003B84();
        sub_100073030(v516, v558, v584);
      }

      sub_100005518();
      sub_100073030(v875, v917, v585);
      sub_100071744();
      sub_100003B6C();
      v447 = v925;
      v448 = v924;
      v449 = v885;
      v450 = v891;
      v451 = v896;
      v452 = v901;
      v453 = v907;
      v500 = v910;
      break;
    case 4:
      sub_100003934();
      v254 = v921;
      v256 = v255;
      sub_10001B350(v257, v258, v259, v921);
      v260 = sub_100003BCC(v867);
      sub_10001B350(v260, v261, v262, v922);
      v263 = sub_100003BCC(&v873);
      sub_10001B350(v263, v264, v265, v924);
      v266 = sub_100003BCC(&v879);
      sub_10001B350(v266, v267, v268, v925);
      v269 = sub_100003BCC(&v885);
      sub_10001B350(v269, v270, v271, v919);
      v272 = sub_100003BCC(&v891);
      sub_10001B350(v272, v273, v274, v920);
      v275 = sub_100003BCC(&v897);
      v276 = v926;
      sub_10001B350(v275, v277, v278, v926);
      v279 = v803;
      v280 = v915;
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v281, v282, v283, v280);
      sub_10004986C();
      sub_1000714DC(v284);
      sub_100042230();
      sub_1004C5540(v285, v286, v287);
      v288 = v279;
      v289 = v806;
      sub_1002AB08C(v288, v806, &qword_100CA65E8);
      sub_10000554C(v289);
      if (v290)
      {
        sub_1000180EC(v289, &qword_100CA65E8);
      }

      else
      {
        sub_100074AB8();
        sub_1000CA688(v256, v410);
        sub_100005518();
        sub_100073030(v289, v256, v411);
      }

      v412 = v829;
      sub_100005518();
      sub_100073030(v256, v869, v413);
      v414 = *(v218 + 2);
      LODWORD(v916) = v218[24];
      sub_1002AB08C(v195, v192, &qword_100CA6640);
      sub_100005404(v192);
      v918 = v414;
      if (v290)
      {
        sub_1000285B4();
        sub_1004C5540(&v218[v415], v876, v416);
        sub_100021CF8(v192, 1);

        if (v254 != 1)
        {
          sub_1000180EC(v192, &qword_100CA6640);
        }
      }

      else
      {
        sub_10000E7D4();
        sub_100073030(v192, v876, v417);
      }

      sub_1000519E0();
      sub_1002AB08C(v418, v419, v420);
      sub_1000038B4(v192, 1, v922);
      if (v290)
      {
        v421 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        sub_10002014C();
        sub_100019964();
        sub_1004C5540(&v218[v421], v880, v422);
        sub_100003BDC(v192);
        v425 = v835;
        v426 = v821;
        v423 = v192;
        v427 = v819;
        if (!v290)
        {
          sub_1000180EC(v423, &qword_100CA6638);
        }
      }

      else
      {
        sub_100003BB4();
        sub_100073030(v192, v880, v424);
        v425 = v835;
        v426 = v821;
        v427 = v819;
      }

      sub_1002AB08C(v846, v427, &qword_100CA6630);
      sub_10000E7EC(v427);
      if (v290)
      {
        v428 = sub_1000147CC(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
        sub_1004C5540(v428, v884, v429);
        sub_10000E7EC(v427);
        v431 = v825;
        if (!v290)
        {
          sub_1000180EC(v427, &qword_100CA6630);
        }
      }

      else
      {
        sub_10000E7BC();
        sub_100073030(v427, v884, v430);
        v431 = v825;
      }

      sub_1002AB08C(v852, v426, &qword_100CA6628);
      sub_10002078C();
      if (v290)
      {
        v432 = sub_100008760(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
        sub_1004C5540(v432, v890, v433);
        sub_10002078C();
        if (!v290)
        {
          sub_1000180EC(v426, &qword_100CA6628);
        }
      }

      else
      {
        sub_100028144();
        sub_100073030(v426, v890, v434);
      }

      sub_1002AB08C(v856, v431, &qword_100CA6620);
      sub_100003BFC(v431);
      if (v290)
      {
        sub_10001C3F0();
        sub_1004C5540(&v218[v435], v897, v436);
        sub_100003BFC(v431);
        if (!v290)
        {
          sub_1000180EC(v431, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000134C8();
        sub_100073030(v431, v897, v437);
      }

      sub_1002AB08C(v862, v412, &qword_100CA6618);
      sub_100003A40(v412);
      if (v290)
      {
        v438 = sub_100005F40(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
        sub_1004C5540(v438, v903, v439);
        sub_100003A40(v412);
        v441 = v839;
        if (!v290)
        {
          sub_1000180EC(v412, &qword_100CA6618);
        }
      }

      else
      {
        sub_100003B9C();
        sub_100073030(v412, v903, v440);
        v441 = v839;
      }

      sub_1000B0234(&qword_100CA6610, &v897);
      sub_10000394C(v425);
      if (v290)
      {
        v442 = sub_1000101D0(OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
        sub_1004C5540(v442, v441, v443);
        sub_10000394C(v425);
        v445 = v441;
        if (!v290)
        {
          sub_1000180EC(v425, &qword_100CA6610);
        }
      }

      else
      {
        sub_100003B84();
        sub_100073030(v425, v441, v444);
        v445 = v441;
      }

      sub_100005518();
      sub_10004375C(v446, &v901);
      sub_100020204();
      sub_1000B9964();
      sub_100071744();
      sub_100003B6C();
      sub_100051E60();
      v791 = v425;
      v792 = v276;
      v789 = v445;
      v790 = v441;
      v447 = sub_10012CCD0();
      v449 = v876;
      v450 = v880;
      v451 = v884;
      v452 = v890;
      v453 = v897;
      v454 = &v928;
LABEL_80:
      v500 = *(v454 - 32);
      break;
    case 5:
      v918 = v214;
      v913 = v213;
      sub_100003934();
      sub_10001B350(v382, v383, v384, v921);
      v385 = sub_100003BCC(&v872);
      sub_10001B350(v385, v386, v387, v922);
      v388 = sub_100003BCC(&v878);
      sub_10001B350(v388, v389, v390, v924);
      v391 = sub_100003BCC(&v884);
      sub_10001B350(v391, v392, v393, v925);
      sub_10001C3F0();
      v903 = v394;
      sub_1000131DC();
      sub_1004C5540(v395, v396, v397);
      sub_100003934();
      v398 = v916;
      sub_10001B350(v399, v400, v401, v916);
      LODWORD(v912) = *v202;
      v402 = *(v202 + 1);
      LODWORD(v910) = v202[16];
      LODWORD(v909) = v202[17];
      LODWORD(v907) = v202[18];
      LODWORD(v906) = v202[19];
      LODWORD(v905) = v202[20];
      sub_100021424();
      sub_1002AB08C(v403, v404, v405);
      sub_100005404(v209);
      if (v290)
      {
        sub_100086778();
        v406(v874);
        v407 = sub_100016298();
        v409 = sub_100024D10(v407, v408, v398);

        if (v409 != 1)
        {
          sub_1000180EC(v209, &unk_100CB2CF0);
        }
      }

      else
      {
        (*(v914 + 32))(v874, v209, v398);
      }

      v705 = v919;
      v706 = v202[v919[12]];
      v707 = v202[v919[13]];
      v708 = v202[v919[15]];
      v709 = v202;
      v710 = v202[v919[17]];
      v711 = *(v709 + v919[18]);
      sub_100031D50(v709);
      v712 = v861;
      *v861 = v912;
      *(v712 + 1) = v402;
      v712[16] = v910;
      v712[17] = v909;
      v712[18] = v907;
      v712[19] = v906;
      v713 = sub_100071974(v905);
      v714(v713, v874, v916);
      v712[v705[12]] = v706;
      sub_100086574();
      v712[v715] = v708;
      v712[v705[16]] = 1;
      v712[v705[17]] = v710;
      v712[v705[18]] = v711;
      sub_10000E7B0();
      sub_10001B350(v716, v717, v718, v705);
      v719 = sub_100003BCC(&v896);
      sub_10001B350(v719, v720, v721, v920);
      v722 = sub_100003BCC(&v899);
      sub_10001B350(v722, v723, v724, v926);
      v725 = v813;
      *v813 = 1;
      v726 = v915;
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v727, v728, v729, v726);
      sub_10004986C();
      v731 = sub_1000714DC(v730);
      v732 = v816;
      sub_1004C5540(v731, v816, v733);
      sub_1000131DC();
      sub_1002AB08C(v734, v735, v736);
      sub_10000554C(v725);
      if (v290)
      {
        sub_1000180EC(v725, &qword_100CA65E8);
      }

      else
      {
        sub_100074AB8();
        sub_1000CA688(v732, v737);
        sub_100005518();
        sub_100073030(v725, v732, v738);
      }

      v740 = v924;
      v739 = v925;
      v741 = v921;
      v742 = v834;
      sub_100005518();
      sub_100073030(v743, v744, v745);
      v746 = *(v707 + 16);
      LODWORD(v924) = *(v707 + 24);
      v747 = v918;
      sub_1002AB08C(v913, v918, &qword_100CA6640);
      sub_100005404(v747);
      v925 = v746;
      if (v290)
      {
        sub_1000285B4();
        sub_1004C5540(v707 + v748, v887, v749);
        v750 = sub_100016298();
        sub_100021CF8(v750, v751);

        if (v741 != 1)
        {
          sub_1000180EC(v747, &qword_100CA6640);
        }
      }

      else
      {
        sub_10000E7D4();
        sub_100073030(v747, v887, v752);
      }

      sub_1000519E0();
      sub_1002AB08C(v753, v754, v755);
      sub_100003BDC(v746);
      if (v290)
      {
        v756 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        sub_10002014C();
        sub_100019964();
        sub_1004C5540(v707 + v756, v893, v757);
        sub_100003BDC(v746);
        v759 = v837;
        if (!v290)
        {
          sub_1000180EC(v746, &qword_100CA6638);
        }
      }

      else
      {
        sub_100003BB4();
        sub_100073030(v746, v893, v758);
        v759 = v837;
      }

      v760 = v799;
      sub_1002AB08C(v851, v799, &qword_100CA6630);
      sub_10002078C();
      if (v290)
      {
        v761 = sub_1000147CC(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
        sub_1004C5540(v761, v898, v762);
        sub_10002078C();
        if (!v290)
        {
          sub_1000180EC(v760, &qword_100CA6630);
        }
      }

      else
      {
        sub_10000E7BC();
        sub_100073030(v760, v898, v763);
      }

      sub_100042230();
      sub_1002AB08C(v764, v765, v766);
      sub_100003BFC(v740);
      if (v290)
      {
        v767 = sub_100008760(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
        sub_1004C5540(v767, v904, v768);
        sub_100003BFC(v740);
        if (!v290)
        {
          sub_1000180EC(v740, &qword_100CA6628);
        }
      }

      else
      {
        sub_100028144();
        sub_100073030(v740, v904, v769);
      }

      sub_1000131DC();
      sub_1002AB08C(v770, v771, v772);
      sub_10000E7EC(v739);
      if (v290)
      {
        sub_10001C3F0();
        sub_1004C5540(v707 + v903, v908, v773);
        sub_10000E7EC(v739);
        if (!v290)
        {
          sub_1000180EC(v739, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000134C8();
        sub_100073030(v739, v908, v774);
      }

      sub_1002AB08C(v865, v742, &qword_100CA6618);
      sub_100003A40(v742);
      if (v290)
      {
        v775 = sub_100005F40(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
        sub_1004C5540(v775, v911, v776);
        sub_100003A40(v742);
        v778 = v842;
        if (!v290)
        {
          sub_1000180EC(v742, &qword_100CA6618);
        }
      }

      else
      {
        sub_100003B9C();
        sub_100073030(v742, v911, v777);
        v778 = v842;
      }

      sub_1000B0234(&qword_100CA6610, &v899);
      v779 = sub_1000131C4();
      sub_1000038B4(v779, v780, v926);
      if (v290)
      {
        v781 = sub_1000101D0(OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
        sub_1004C5540(v781, v778, v782);
        sub_10000554C(v759);
        v784 = v778;
        if (!v290)
        {
          sub_1000180EC(v759, &qword_100CA6610);
        }
      }

      else
      {
        sub_100003B84();
        sub_100073030(v759, v778, v783);
        v784 = v778;
      }

      sub_100005518();
      sub_10004375C(v785, &v909);
      sub_100020204();
      sub_1000B9964();
      sub_100071744();
      sub_100003B6C();
      sub_100051E60();
      v791 = v759;
      v792 = v747;
      v789 = v784;
      v790 = v778;
      v447 = v925;
      v448 = v924;
      v449 = v887;
      v450 = v893;
      v451 = v898;
      v452 = v904;
      v453 = v908;
      v500 = v911;
      break;
    default:
      sub_100003934();
      v219 = v921;
      sub_10001B350(v220, v221, v222, v921);
      sub_100003934();
      sub_10001B350(v223, v224, v225, v922);
      v226 = sub_100003BCC(&v869);
      sub_10001B350(v226, v227, v228, v924);
      v229 = sub_100003BCC(&v875);
      sub_10001B350(v229, v230, v231, v925);
      v232 = sub_100003BCC(&v881);
      sub_10001B350(v232, v233, v234, v919);
      v235 = sub_100003BCC(&v887);
      sub_10001B350(v235, v236, v237, v920);
      v238 = sub_100003BCC(&v893);
      sub_10001B350(v238, v239, v240, v926);
      v241 = v800;
      *v800 = 0;
      v242 = v915;
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v243, v244, v245, v242);
      sub_10004986C();
      sub_1000519E0();
      sub_1004C5540(v246, v247, v248);
      sub_1000131DC();
      sub_1002AB08C(v249, v250, v251);
      v252 = sub_1000162A4();
      if (sub_100024D10(v252, v253, v242) == 1)
      {
        sub_1000180EC(v241, &qword_100CA65E8);
      }

      else
      {
        sub_100074AB8();
        sub_1000CA688(v192, v586);
        sub_100005518();
        sub_100073030(v241, v192, v587);
      }

      sub_100005518();
      sub_100073030(v588, v589, v590);
      v591 = v923;
      v592 = *(v923 + 16);
      LODWORD(v916) = *(v923 + 24);
      sub_1002AB08C(v218, v212, &qword_100CA6640);
      sub_100005404(v212);
      v593 = v797;
      v594 = v793;
      v918 = v592;
      if (v290)
      {
        sub_1000285B4();
        sub_1004C5540(v591 + v595, v870, v596);
        sub_100021CF8(v212, 1);

        v627 = v591;
        if (v219 != 1)
        {
          sub_1000180EC(v212, &qword_100CA6640);
        }
      }

      else
      {
        sub_10000E7D4();
        sub_100073030(v212, v870, v626);

        v627 = v591;
      }

      sub_100021424();
      sub_1002AB08C(v628, v629, v630);
      sub_10000554C(v591);
      if (v290)
      {
        v631 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        sub_10002014C();
        sub_100019964();
        sub_1004C5540(v627 + v631, v878, v632);
        sub_10000554C(v591);
        v633 = v591;
        v651 = v827;
        v652 = v823;
        if (!v290)
        {
          sub_1000180EC(v633, &qword_100CA6638);
        }
      }

      else
      {
        sub_100003BB4();
        sub_100073030(v591, v878, v650);
        v651 = v827;
        v652 = v823;
      }

      sub_1002AB08C(v844, v594, &qword_100CA6630);
      sub_1000038B4(v594, 1, v924);
      if (v290)
      {
        v653 = sub_1000147CC(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
        sub_1004C5540(v653, v881, v654);
        sub_100005404(v594);
        if (!v290)
        {
          sub_1000180EC(v594, &qword_100CA6630);
        }
      }

      else
      {
        sub_10000E7BC();
        sub_100073030(v594, v881, v661);
      }

      sub_1002AB08C(v848, v593, &qword_100CA6628);
      sub_100003BDC(v593);
      if (v290)
      {
        v662 = sub_100008760(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
        sub_1004C5540(v662, v886, v663);
        sub_100003BDC(v593);
        if (!v290)
        {
          sub_1000180EC(v593, &qword_100CA6628);
        }
      }

      else
      {
        sub_100028144();
        sub_100073030(v593, v886, v668);
      }

      sub_1002AB08C(v854, v652, &qword_100CA6620);
      sub_10000E7EC(v652);
      if (v290)
      {
        sub_10001C3F0();
        sub_1004C5540(v627 + v669, v892, v670);
        sub_10000E7EC(v652);
        v676 = v831;
        if (!v290)
        {
          sub_1000180EC(v652, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000134C8();
        sub_100073030(v652, v892, v675);
        v676 = v831;
      }

      sub_1002AB08C(v858, v651, &qword_100CA6618);
      sub_10000554C(v651);
      if (v290)
      {
        v677 = sub_100005F40(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
        sub_1004C5540(v677, v899, v678);
        sub_10000554C(v651);
        v683 = v905;
        if (!v290)
        {
          sub_1000180EC(v651, &qword_100CA6618);
        }
      }

      else
      {
        sub_100003B9C();
        sub_100073030(v651, v899, v682);
        v683 = v905;
      }

      sub_1000B0234(&qword_100CA6610, &v893);
      sub_100003A40(v676);
      if (v290)
      {
        v684 = sub_1000101D0(OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
        sub_1004C5540(v684, v683, v685);
        sub_100003A40(v676);
        v691 = v912;
        if (!v290)
        {
          sub_1000180EC(v676, &qword_100CA6610);
        }
      }

      else
      {
        sub_100003B84();
        sub_100073030(v676, v683, v690);
        v691 = v912;
      }

      sub_100005518();
      v692 = v691;
      v693 = v917;
      sub_100073030(v692, v917, v694);
      sub_100020204();
      sub_1000B9964();
      sub_100071744();
      sub_100003B6C();
      sub_100051E60();
      v791 = v676;
      v792 = v651;
      v790 = v693;
      v789 = v905;
      v447 = sub_10012CCD0();
      v449 = v870;
      v450 = v878;
      v451 = v881;
      v452 = v886;
      v453 = v892;
      v500 = v899;
      break;
  }

  sub_10003E038(v447, v448, v449, v450, v451, v452, v453, v500, v789, v790, v791, v792, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806, v807, v808, v809, v810, v811, v812, v813, v814, v815);
  v787 = v786;

  return v787;
}