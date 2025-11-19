void sub_100053DE0()
{
  if (!qword_100116E50)
  {
    sub_1000D9090();
    sub_1000581F8(&qword_100116E58, &type metadata accessor for Date);
    v0 = sub_1000DB8C0();
    if (!v1)
    {
      atomic_store(v0, &qword_100116E50);
    }
  }
}

unint64_t sub_100053E74()
{
  result = qword_100116E68;
  if (!qword_100116E68)
  {
    sub_100053DE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116E68);
  }

  return result;
}

void sub_100053EE4()
{
  if (!qword_100116E70)
  {
    sub_100053D0C();
    sub_100057714(255, &qword_100116E78, &type metadata for Double, &protocol witness table for Double, &type metadata accessor for ClosedRange);
    sub_100052B84();
    sub_100053DE0();
    sub_1000581F8(&qword_100116E60, sub_100052B84);
    sub_100053E74();
    swift_getOpaqueTypeConformance2();
    sub_100054034();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116E70);
    }
  }
}

unint64_t sub_100054034()
{
  result = qword_100116E80;
  if (!qword_100116E80)
  {
    sub_100057714(255, &qword_100116E78, &type metadata for Double, &protocol witness table for Double, &type metadata accessor for ClosedRange);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116E80);
  }

  return result;
}

void sub_1000540D0()
{
  if (!qword_100116E88)
  {
    sub_100053EE4();
    sub_1000542B4(255);
    sub_100053D0C();
    sub_100057714(255, &qword_100116E78, &type metadata for Double, &protocol witness table for Double, &type metadata accessor for ClosedRange);
    sub_100052B84();
    sub_100053DE0();
    sub_1000581F8(&qword_100116E60, sub_100052B84);
    sub_100053E74();
    swift_getOpaqueTypeConformance2();
    sub_100054034();
    swift_getOpaqueTypeConformance2();
    sub_100054E7C(&qword_100116F10, sub_1000542B4, sub_100054A94);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116E88);
    }
  }
}

void sub_100054330()
{
  if (!qword_100116EA0)
  {
    sub_1000543A4();
    sub_100054420(255);
    v0 = sub_1000DA3A0();
    if (!v1)
    {
      atomic_store(v0, &qword_100116EA0);
    }
  }
}

void sub_1000543A4()
{
  if (!qword_100116EA8)
  {
    sub_10005471C(255, &qword_100116EB0, &type metadata accessor for AxisGridLine);
    v0 = sub_1000DBE80();
    if (!v1)
    {
      atomic_store(v0, &qword_100116EA8);
    }
  }
}

void sub_100054454()
{
  if (!qword_100116EC0)
  {
    sub_1000544EC();
    sub_10005471C(255, &qword_100116EE8, &type metadata accessor for AxisTick);
    v0 = sub_1000DA3A0();
    if (!v1)
    {
      atomic_store(v0, &qword_100116EC0);
    }
  }
}

void sub_1000544EC()
{
  if (!qword_100116EC8)
  {
    sub_1000545E8();
    sub_100057714(255, &qword_100116ED8, &type metadata for Never, &protocol witness table for Never, &type metadata accessor for AxisValueLabel);
    sub_100054698();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116EC8);
    }
  }
}

void sub_1000545E8()
{
  if (!qword_100116ED0)
  {
    sub_100057714(255, &qword_100116ED8, &type metadata for Never, &protocol witness table for Never, &type metadata accessor for AxisValueLabel);
    sub_100054698();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116ED0);
    }
  }
}

unint64_t sub_100054698()
{
  result = qword_100116EE0;
  if (!qword_100116EE0)
  {
    sub_100057714(255, &qword_100116ED8, &type metadata for Never, &protocol witness table for Never, &type metadata accessor for AxisValueLabel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116EE0);
  }

  return result;
}

void sub_10005471C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1000547B4()
{
  result = qword_100116EF0;
  if (!qword_100116EF0)
  {
    sub_100054330();
    sub_100054880();
    sub_100054E7C(&qword_100116F00, sub_100054420, sub_10005493C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116EF0);
  }

  return result;
}

unint64_t sub_100054880()
{
  result = qword_100116EF8;
  if (!qword_100116EF8)
  {
    sub_1000543A4();
    sub_1000DA390();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116EF8);
  }

  return result;
}

unint64_t sub_10005493C()
{
  result = qword_100116F08;
  if (!qword_100116F08)
  {
    sub_100054454();
    sub_1000545E8();
    sub_100057714(255, &qword_100116ED8, &type metadata for Never, &protocol witness table for Never, &type metadata accessor for AxisValueLabel);
    sub_100054698();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000DA5C0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116F08);
  }

  return result;
}

void sub_100054AC8()
{
  if (!qword_100116F20)
  {
    sub_1000540D0();
    sub_100054D34(255);
    sub_100053EE4();
    sub_1000542B4(255);
    sub_100053D0C();
    sub_100057714(255, &qword_100116E78, &type metadata for Double, &protocol witness table for Double, &type metadata accessor for ClosedRange);
    sub_100052B84();
    sub_100053DE0();
    sub_1000581F8(&qword_100116E60, sub_100052B84);
    sub_100053E74();
    swift_getOpaqueTypeConformance2();
    sub_100054034();
    swift_getOpaqueTypeConformance2();
    sub_100054E7C(&qword_100116F10, sub_1000542B4, sub_100054A94);
    swift_getOpaqueTypeConformance2();
    sub_100054E7C(&qword_100116F38, sub_100054D34, sub_100054EEC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116F20);
    }
  }
}

void sub_100054D68()
{
  if (!qword_100116F30)
  {
    sub_1000544EC();
    sub_1000545E8();
    sub_100057714(255, &qword_100116ED8, &type metadata for Never, &protocol witness table for Never, &type metadata accessor for AxisValueLabel);
    sub_100054698();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v0 = sub_1000DA640();
    if (!v1)
    {
      atomic_store(v0, &qword_100116F30);
    }
  }
}

uint64_t sub_100054E7C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100054F20()
{
  if (!qword_100116F48)
  {
    sub_100054AC8();
    sub_1000551DC();
    sub_1000540D0();
    sub_100054D34(255);
    sub_100053EE4();
    sub_1000542B4(255);
    sub_100053D0C();
    sub_100057714(255, &qword_100116E78, &type metadata for Double, &protocol witness table for Double, &type metadata accessor for ClosedRange);
    sub_100052B84();
    sub_100053DE0();
    sub_1000581F8(&qword_100116E60, sub_100052B84);
    sub_100053E74();
    swift_getOpaqueTypeConformance2();
    sub_100054034();
    swift_getOpaqueTypeConformance2();
    sub_100054E7C(&qword_100116F10, sub_1000542B4, sub_100054A94);
    swift_getOpaqueTypeConformance2();
    sub_100054E7C(&qword_100116F38, sub_100054D34, sub_100054EEC);
    swift_getOpaqueTypeConformance2();
    sub_10005523C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116F48);
    }
  }
}

void sub_1000551DC()
{
  if (!qword_100116F50)
  {
    sub_1000DA490();
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_100116F50);
    }
  }
}

unint64_t sub_10005523C()
{
  result = qword_100116F58;
  if (!qword_100116F58)
  {
    sub_1000551DC();
    sub_1000581F8(&qword_100116F60, &type metadata accessor for ChartPlotContent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116F58);
  }

  return result;
}

void sub_100055368()
{
  if (!qword_100116F78)
  {
    sub_1000552EC(255);
    sub_1000553EC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116F78);
    }
  }
}

unint64_t sub_1000553EC()
{
  result = qword_100116F80;
  if (!qword_100116F80)
  {
    sub_1000552EC(255);
    sub_100054AC8();
    sub_1000551DC();
    sub_1000540D0();
    sub_100054D34(255);
    sub_100053EE4();
    sub_1000542B4(255);
    sub_100053D0C();
    sub_100057714(255, &qword_100116E78, &type metadata for Double, &protocol witness table for Double, &type metadata accessor for ClosedRange);
    sub_100052B84();
    sub_100053DE0();
    sub_1000581F8(&qword_100116E60, sub_100052B84);
    sub_100053E74();
    swift_getOpaqueTypeConformance2();
    sub_100054034();
    swift_getOpaqueTypeConformance2();
    sub_100054E7C(&qword_100116F10, sub_1000542B4, sub_100054A94);
    swift_getOpaqueTypeConformance2();
    sub_100054E7C(&qword_100116F38, sub_100054D34, sub_100054EEC);
    swift_getOpaqueTypeConformance2();
    sub_10005523C();
    swift_getOpaqueTypeConformance2();
    sub_1000581F8(&qword_100116F88, sub_100055334);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116F80);
  }

  return result;
}

void sub_100055700()
{
  if (!qword_100116F90)
  {
    sub_100055368();
    type metadata accessor for SparklineViewAccessibilityChartDescriptorRepresentable(255);
    sub_1000552EC(255);
    sub_1000553EC();
    swift_getOpaqueTypeConformance2();
    sub_1000581F8(&qword_100116F98, type metadata accessor for SparklineViewAccessibilityChartDescriptorRepresentable);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116F90);
    }
  }
}

id sub_100055860()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  [v0 setDateStyle:0];
  result = [v0 setTimeStyle:1];
  qword_100116C48 = v0;
  return result;
}

id sub_1000558C4()
{
  v0 = sub_1000D91C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(NSNumberFormatter) init];
  sub_1000D9170();
  isa = sub_1000D9130().super.isa;
  (*(v1 + 8))(v4, v0);
  [v5 setLocale:isa];

  result = [v5 setMaximumFractionDigits:4];
  qword_100116C50 = v5;
  return result;
}

void sub_1000559E4()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v6._countAndFlagsBits = 0x80000001000E8BB0;
  v7._countAndFlagsBits = 0x7250206B636F7453;
  v7._object = 0xEB00000000656369;
  v8.value._countAndFlagsBits = 0;
  v8.value._object = 0;
  v2.super.isa = v1;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v3 = sub_1000D8E50(v7, v8, v2, v9, v6);
  v5 = v4;

  qword_100116C58 = v3;
  unk_100116C60 = v5;
}

void sub_100055AB0()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v6._countAndFlagsBits = 0x80000001000E8B70;
  v7._countAndFlagsBits = 1701669204;
  v7._object = 0xE400000000000000;
  v8.value._countAndFlagsBits = 0;
  v8.value._object = 0;
  v2.super.isa = v1;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v3 = sub_1000D8E50(v7, v8, v2, v9, v6);
  v5 = v4;

  qword_100116C68 = v3;
  unk_100116C70 = v5;
}

void sub_100055B6C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v6._countAndFlagsBits = 0x80000001000E8B30;
  v7._countAndFlagsBits = 0x6563697250;
  v7._object = 0xE500000000000000;
  v8.value._countAndFlagsBits = 0;
  v8.value._object = 0;
  v2.super.isa = v1;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v3 = sub_1000D8E50(v7, v8, v2, v9, v6);
  v5 = v4;

  qword_100116C78 = v3;
  unk_100116C80 = v5;
}

uint64_t sub_100055C2C()
{
  v1 = type metadata accessor for SparklineViewAccessibilityChartDescriptorRepresentable(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  v18[0] = sub_100033ED8(0, &qword_1001170A0, AXChartDescriptor_ptr);
  if (qword_1001140E0 != -1)
  {
    swift_once();
  }

  sub_100033ED8(0, &qword_1001170A8, AXNumericDataAxisDescriptor_ptr);
  v4 = qword_1001140E8;

  if (v4 != -1)
  {
    swift_once();
  }

  sub_100056018();
  sub_100057AC8(v0, v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SparklineViewAccessibilityChartDescriptorRepresentable);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  sub_100057C94(v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for SparklineViewAccessibilityChartDescriptorRepresentable);
  sub_1000DBE30();
  if (qword_1001140F0 != -1)
  {
    swift_once();
  }

  v7 = (v0 + *(type metadata accessor for PreparedSparkline(0) + 28));
  v8 = *v7;
  v9 = v7[1];

  sub_1000DBE30();
  sub_100024A74(0, &qword_100116910);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000E04C0;
  v11 = *v0;
  __chkstk_darwin(v10);
  v18[-2] = v0;
  sub_100017F48(sub_100057D6C, &v18[-4], v12);
  v13 = objc_allocWithZone(AXDataSeriesDescriptor);
  v14 = sub_1000DB910();
  sub_100033ED8(0, &qword_1001170B0, AXDataPoint_ptr);
  isa = sub_1000DBB00().super.isa;

  v16 = [v13 initWithName:v14 isContinuous:1 dataPoints:{isa, v18[0]}];

  *(v10 + 32) = v16;
  return sub_1000DBDE0();
}

char *sub_100056018()
{
  v0 = sub_1000D9210();
  v73 = *(v0 - 8);
  v74 = v0;
  v1 = *(v73 + 64);
  __chkstk_darwin(v0);
  v72 = v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1000D9220();
  v71 = *(v80 - 8);
  v3 = *(v71 + 64);
  __chkstk_darwin(v80);
  v70 = v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1000D91F0();
  v68 = *(v79 - 8);
  v5 = *(v68 + 64);
  __chkstk_darwin(v79);
  v78 = v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100023750(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v82 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1000D9090();
  v10 = *(v84 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v84);
  v13 = v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v75 = v64 - v15;
  __chkstk_darwin(v16);
  v18 = v64 - v17;
  v81 = sub_1000D9280();
  v83 = *(v81 - 8);
  v19 = *(v83 + 64);
  __chkstk_darwin(v81);
  v21 = v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000D8E40();
  v76 = *(v22 - 8);
  v77 = v22;
  v23 = *(v76 + 64);
  __chkstk_darwin(v22);
  v25 = v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = [objc_opt_self() currentCalendar];
  sub_1000D9230();

  sub_100057D8C(0, &qword_1001170B8, &type metadata accessor for Calendar.Component, &type metadata accessor for _ContiguousArrayStorage);
  v27 = sub_1000D9270();
  v28 = *(v27 - 8);
  v29 = *(v28 + 72);
  v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1000DDD30;
  (*(v28 + 104))(v31 + v30, enum case for Calendar.Component.hour(_:), v27);
  sub_100057DF0(v31);
  swift_setDeallocating();
  (*(v28 + 8))(v31 + v30, v27);
  v32 = v84;
  swift_deallocClassInstance();
  sub_1000D9050();
  sub_1000D9200();

  v67 = v10;
  v34 = *(v10 + 8);
  v33 = v10 + 8;
  v65 = v18;
  v85 = v34;
  v34(v18, v32);
  v35 = *(v83 + 8);
  v83 += 8;
  v35(v21, v81);
  v36 = sub_1000D8E30();
  LOBYTE(v27) = v37;
  (*(v76 + 8))(v25, v77);
  if (v27)
  {
    return _swiftEmptyArrayStorage;
  }

  v64[1] = v33;
  v76 = v36;
  v66 = v21;
  sub_1000D9250();
  v38 = type metadata accessor for PreparedSparkline(0);
  v39 = v68;
  v40 = v69 + *(v38 + 20);
  (*(v68 + 104))(v78, enum case for Calendar.MatchingPolicy.nextTime(_:), v79);
  v77 = v35;
  v41 = v70;
  v42 = v71;
  (*(v71 + 104))(v70, enum case for Calendar.RepeatedTimePolicy.first(_:), v80);
  v43 = v72;
  v44 = v73;
  v45 = v74;
  (*(v73 + 104))(v72, enum case for Calendar.SearchDirection.forward(_:), v74);
  sub_1000D9240();
  (*(v44 + 8))(v43, v45);
  (*(v42 + 8))(v41, v80);
  (*(v39 + 8))(v78, v79);
  v77(v66, v81);
  v46 = v67;
  if ((*(v67 + 48))(v82, 1, v32) == 1)
  {
    sub_100058104(v82, sub_100023750);
    return _swiftEmptyArrayStorage;
  }

  v48 = *(v46 + 32);
  v49 = v75;
  v48(v75, v82, v32);
  (*(v46 + 16))(v13, v49, v32);
  sub_100053DE0();
  v51 = *(v50 + 36);
  sub_1000D8FF0();
  v47 = _swiftEmptyArrayStorage;
  if (v52 <= 0.0)
  {
    v55 = v65;
    do
    {
      sub_1000D8FF0();
      v58 = v57;
      sub_1000D8FF0();
      v60 = v58 / v59;
      if (v60 >= 0.0 && v60 <= 1.0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = sub_10007BAF0(0, *(v47 + 2) + 1, 1, v47);
        }

        v63 = *(v47 + 2);
        v62 = *(v47 + 3);
        if (v63 >= v62 >> 1)
        {
          v47 = sub_10007BAF0((v62 > 1), v63 + 1, 1, v47);
        }

        *(v47 + 2) = v63 + 1;
        *&v47[8 * v63 + 32] = v60;
        v32 = v84;
      }

      sub_1000DBC80();
      sub_1000D9000();
      v85(v13, v32);
      v48(v13, v55, v32);
      sub_1000D8FF0();
    }

    while (v56 <= 0.0);
  }

  v53 = v85;
  v85(v13, v32);
  v53(v75, v32);
  return v47;
}

uint64_t sub_1000568F0(uint64_t a1)
{
  v2 = sub_1000D9090();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  if (qword_1001140D0 != -1)
  {
    swift_once();
  }

  v10 = qword_100116C48;
  v11 = type metadata accessor for PreparedSparkline(0);
  v12 = *(v11 + 24);
  v13 = v10;
  isa = sub_1000D92A0().super.isa;
  [v13 setTimeZone:isa];

  v15 = qword_100116C48;
  v16 = a1 + *(v11 + 20);
  sub_100053DE0();
  v18 = *(v17 + 36);
  v19 = v15;
  sub_1000D8FF0();
  (*(v3 + 16))(v6, v16, v2);
  sub_1000D8FE0();
  v20 = sub_1000D9010().super.isa;
  (*(v3 + 8))(v9, v2);
  v21 = [v19 stringFromDate:v20];

  v22 = sub_1000DB950();
  return v22;
}

uint64_t sub_100056B18(double a1)
{
  if (qword_1001140D8 != -1)
  {
    swift_once();
  }

  v2 = qword_100116C50;
  v3 = objc_allocWithZone(NSNumber);
  v4 = v2;
  v5 = [v3 initWithDouble:a1];
  v6 = [v4 stringFromNumber:v5];

  if (v6)
  {
    v7 = sub_1000DB950();
  }

  else
  {
    sub_1000DBC70();
    return 0;
  }

  return v7;
}

AXDataPoint sub_100056C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, AXDataPoint *a3@<X8>)
{
  sub_100033ED8(0, &qword_1001170B0, AXDataPoint_ptr);
  v6 = a2 + *(type metadata accessor for PreparedSparkline(0) + 20);
  sub_1000D8FF0();
  v8 = v7;
  sub_100053DE0();
  v10 = v6 + *(v9 + 36);
  sub_1000D8FF0();
  v12 = v8 / v11;
  v15.value = *(a1 + *(type metadata accessor for PreparedSparkline.Entry(0) + 20));
  v13._rawValue = _swiftEmptyArrayStorage;
  v15.is_nil = 0;
  v16.value._countAndFlagsBits = 0;
  v16.value._object = 0;
  result.super.isa = sub_1000DBD90(v12, v15, v13, v16).super.isa;
  a3->super.isa = result.super.isa;
  return result;
}

unint64_t sub_100056D08()
{
  result = qword_100116FA0;
  if (!qword_100116FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116FA0);
  }

  return result;
}

uint64_t sub_100056D5C()
{
  v1 = type metadata accessor for SparklineView(0);
  v21 = *(*(v1 - 1) + 64);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  v3 = *v2;

  v4 = type metadata accessor for PreparedSparkline(0);
  v5 = &v2[*(v4 + 20)];
  v6 = sub_1000D9090();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  sub_100053DE0();
  v7(&v5[*(v8 + 36)], v6);
  v9 = *(v4 + 24);
  v10 = sub_1000D92D0();
  (*(*(v10 - 8) + 8))(&v2[v9], v10);
  v11 = *&v2[v1[5] + 24];

  v12 = *&v2[v1[6] + 24];

  v13 = v1[11];
  sub_100057D8C(0, &qword_100116108, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment.Content);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1000DA980();
    (*(*(v14 - 8) + 8))(&v2[v13], v14);
  }

  else
  {
    v15 = *&v2[v13];
  }

  v16 = *&v2[v1[12]];

  v17 = *&v2[v1[13]];

  v18 = *&v2[v1[14] + 24];

  v19 = *&v2[v1[15]];

  return swift_deallocObject();
}

uint64_t sub_100056FD8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for SparklineView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_10005706C()
{
  result = qword_100116FA8;
  if (!qword_100116FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116FA8);
  }

  return result;
}

uint64_t sub_1000570F4()
{
  v1 = type metadata accessor for SparklineView(0);
  v21 = *(*(v1 - 1) + 64);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80)));
  v3 = *v2;

  v4 = type metadata accessor for PreparedSparkline(0);
  v5 = &v2[*(v4 + 20)];
  v6 = sub_1000D9090();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  sub_100053DE0();
  v7(&v5[*(v8 + 36)], v6);
  v9 = *(v4 + 24);
  v10 = sub_1000D92D0();
  (*(*(v10 - 8) + 8))(&v2[v9], v10);
  v11 = *&v2[v1[5] + 24];

  v12 = *&v2[v1[6] + 24];

  v13 = v1[11];
  sub_100057D8C(0, &qword_100116108, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment.Content);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1000DA980();
    (*(*(v14 - 8) + 8))(&v2[v13], v14);
  }

  else
  {
    v15 = *&v2[v13];
  }

  v16 = *&v2[v1[12]];

  v17 = *&v2[v1[13]];

  v18 = *&v2[v1[14] + 24];

  v19 = *&v2[v1[15]];

  return swift_deallocObject();
}

uint64_t sub_100057358@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SparklineView(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_10004F430(a1, v6, v7, a2);
}

void sub_1000573DC()
{
  if (!qword_100116FB8)
  {
    sub_1000543A4();
    sub_100054420(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100116FB8);
    }
  }
}

void sub_10005744C()
{
  if (!qword_100116FC0)
  {
    sub_1000544EC();
    sub_10005471C(255, &qword_100116EE8, &type metadata accessor for AxisTick);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100116FC0);
    }
  }
}

uint64_t sub_1000574E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100057548(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1000575B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_10005763C()
{
  if (!qword_100116FE8)
  {
    type metadata accessor for PreparedSparkline.Entry(255);
    v0 = sub_1000DA4C0();
    if (!v1)
    {
      atomic_store(v0, &qword_100116FE8);
    }
  }
}

void sub_1000576A4()
{
  if (!qword_100116FF0)
  {
    type metadata accessor for PreparedSparkline.Entry(255);
    sub_1000D9090();
    v0 = sub_1000DA4C0();
    if (!v1)
    {
      atomic_store(v0, &qword_100116FF0);
    }
  }
}

void sub_100057714(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_100057768(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1000577C8()
{
  if (!qword_100117008)
  {
    sub_100052EB0(255);
    sub_100053030();
    sub_100053480();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100117008);
    }
  }
}

uint64_t sub_100057864(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreparedSparkline(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000578E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreparedSparkline(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100057954()
{
  result = type metadata accessor for PreparedSparkline(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000579C0()
{
  sub_100055700();
  sub_100055368();
  type metadata accessor for SparklineViewAccessibilityChartDescriptorRepresentable(255);
  sub_1000552EC(255);
  sub_1000553EC();
  swift_getOpaqueTypeConformance2();
  sub_1000581F8(&qword_100116F98, type metadata accessor for SparklineViewAccessibilityChartDescriptorRepresentable);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100057AC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100057B30()
{
  v1 = *(type metadata accessor for SparklineViewAccessibilityChartDescriptorRepresentable(0) - 8);
  v2 = *(v1 + 64);
  v3 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  v4 = *v3;

  v5 = type metadata accessor for PreparedSparkline(0);
  v6 = &v3[*(v5 + 20)];
  v7 = sub_1000D9090();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  sub_100053DE0();
  v8(&v6[*(v9 + 36)], v7);
  v10 = *(v5 + 24);
  v11 = sub_1000D92D0();
  (*(*(v11 - 8) + 8))(&v3[v10], v11);

  return swift_deallocObject();
}

uint64_t sub_100057C94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100057CFC()
{
  v1 = *(type metadata accessor for SparklineViewAccessibilityChartDescriptorRepresentable(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1000568F0(v2);
}

void sub_100057D8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_100057DF0(uint64_t a1)
{
  v2 = sub_1000D9270();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_100058164();
    v10 = sub_1000DBF20();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1000581F8(&qword_1001170C8, &type metadata accessor for Calendar.Component);
      v18 = sub_1000DB870();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v6, *(v10 + 48) + v20 * v15, v2);
          sub_1000581F8(&qword_1001170D0, &type metadata accessor for Calendar.Component);
          v25 = sub_1000DB8D0();
          v26 = *v16;
          (*v16)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100058104(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100058164()
{
  if (!qword_1001170C0)
  {
    sub_1000D9270();
    sub_1000581F8(&qword_1001170C8, &type metadata accessor for Calendar.Component);
    v0 = sub_1000DBF30();
    if (!v1)
    {
      atomic_store(v0, &qword_1001170C0);
    }
  }
}

uint64_t sub_1000581F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005825C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000D9090();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for DetailContentViewModel(0);
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      sub_100059ECC(0, &qword_100114B58, &type metadata accessor for WidgetQuote);
      if (*(*(v14 - 8) + 84) == a2)
      {
        v8 = v14;
        v12 = *(v14 - 8);
        v13 = a3[6];
      }

      else
      {
        v15 = sub_1000D9690();
        if (*(*(v15 - 8) + 84) != a2)
        {
          v17 = *(a1 + a3[8]);
          if (v17 >= 2)
          {
            return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
          }

          else
          {
            return 0;
          }
        }

        v8 = v15;
        v12 = *(v15 - 8);
        v13 = a3[7];
      }
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_100058438(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000D9090();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for DetailContentViewModel(0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      sub_100059ECC(0, &qword_100114B58, &type metadata accessor for WidgetQuote);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = sub_1000D9690();
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8]) = a2 + 1;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for DetailTimelineEntry()
{
  result = qword_100117130;
  if (!qword_100117130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100058638()
{
  sub_1000D9090();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DetailContentViewModel(319);
    if (v1 <= 0x3F)
    {
      sub_100059ECC(319, &qword_100114B58, &type metadata accessor for WidgetQuote);
      if (v2 <= 0x3F)
      {
        sub_1000D9690();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100058718@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v5 = sub_1000DB720();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v30 - v11;
  v31 = type metadata accessor for DetailContentViewModel(0);
  v13 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v32 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = enum case for WidgetFamily.accessoryRectangular(_:);
  (*(v6 + 104))(v12, enum case for WidgetFamily.accessoryRectangular(_:), v5);
  sub_10005A24C(&qword_100116638, &type metadata accessor for WidgetFamily);
  sub_1000DBAD0();
  sub_1000DBAD0();
  v16 = *(v6 + 8);
  v16(v12, v5);
  if (v35 == v34)
  {
    if (qword_100114128 != -1)
    {
      swift_once();
    }

    v17 = sub_100015294(v31, qword_100128EE0);
    v18 = v32;
    sub_10005A180(v17, v32, type metadata accessor for DetailContentViewModel);
  }

  else
  {
    (*(v6 + 16))(v10, a1, v5);
    v19 = (*(v6 + 88))(v10, v5);
    v21 = v19 == enum case for WidgetFamily.accessoryCircular(_:) || v19 == v15 || v19 == enum case for WidgetFamily.accessoryInline(_:);
    v22 = v21;
    if (!v21)
    {
      v16(v10, v5);
    }

    v18 = v32;
    sub_10006467C(v22, v32);
  }

  v23 = type metadata accessor for DetailTimelineEntry();
  sub_10005A180(v18, a3 + v23[5], type metadata accessor for DetailContentViewModel);
  v24 = v23[6];
  v25 = sub_1000D9450();
  (*(*(v25 - 8) + 56))(a3 + v24, 1, 1, v25);
  v26 = v23[7];
  v27 = enum case for PriceChangeDisplay.currency(_:);
  v28 = sub_1000D9690();
  (*(*(v28 - 8) + 104))(a3 + v26, v27, v28);
  sub_1000D9080();
  result = sub_100059FE8(v18, type metadata accessor for DetailContentViewModel);
  *(a3 + v23[8]) = 1;
  *(a3 + v23[9]) = v33 & 1;
  return result;
}

uint64_t sub_100058AF0@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = sub_1000D9480();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100059E4C();
  v7 = v6;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100059ECC(0, &qword_100114B58, &type metadata accessor for WidgetQuote);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v39 - v13;
  sub_100059ECC(0, &qword_100117180, &type metadata accessor for ExchangeStatus);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v43 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v39 - v19;
  __chkstk_darwin(v21);
  v23 = &v39 - v22;
  v41 = type metadata accessor for DetailTimelineEntry();
  v42 = v1;
  sub_100059F20(v1 + *(v41 + 24), v14, &qword_100114B58, &type metadata accessor for WidgetQuote);
  v24 = sub_1000D9450();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v14, 1, v24) == 1)
  {
    sub_100059F8C(v14, &qword_100114B58, &type metadata accessor for WidgetQuote);
    v26 = 1;
  }

  else
  {
    sub_1000D93F0();
    (*(v25 + 8))(v14, v24);
    v26 = 0;
  }

  v27 = *(v3 + 56);
  v27(v23, v26, 1, v2);
  (*(v3 + 104))(v20, enum case for ExchangeStatus.open(_:), v2);
  v27(v20, 0, 1, v2);
  v28 = *(v7 + 48);
  sub_100059F20(v23, v10, &qword_100117180, &type metadata accessor for ExchangeStatus);
  sub_100059F20(v20, &v10[v28], &qword_100117180, &type metadata accessor for ExchangeStatus);
  v29 = *(v3 + 48);
  if (v29(v10, 1, v2) == 1)
  {
    sub_100059F8C(v20, &qword_100117180, &type metadata accessor for ExchangeStatus);
    sub_100059F8C(v23, &qword_100117180, &type metadata accessor for ExchangeStatus);
    if (v29(&v10[v28], 1, v2) == 1)
    {
      sub_100059F8C(v10, &qword_100117180, &type metadata accessor for ExchangeStatus);
LABEL_11:
      *(v42 + *(v41 + 36));
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v30 = v43;
  sub_100059F20(v10, v43, &qword_100117180, &type metadata accessor for ExchangeStatus);
  if (v29(&v10[v28], 1, v2) == 1)
  {
    sub_100059F8C(v20, &qword_100117180, &type metadata accessor for ExchangeStatus);
    sub_100059F8C(v23, &qword_100117180, &type metadata accessor for ExchangeStatus);
    (*(v3 + 8))(v30, v2);
LABEL_9:
    sub_100059FE8(v10, sub_100059E4C);
    goto LABEL_12;
  }

  v31 = &v10[v28];
  v32 = v40;
  (*(v3 + 32))(v40, v31, v2);
  sub_10005A24C(&qword_100117188, &type metadata accessor for ExchangeStatus);
  v33 = v30;
  v34 = sub_1000DB8D0();
  v35 = *(v3 + 8);
  v35(v32, v2);
  sub_100059F8C(v20, &qword_100117180, &type metadata accessor for ExchangeStatus);
  sub_100059F8C(v23, &qword_100117180, &type metadata accessor for ExchangeStatus);
  v35(v33, v2);
  sub_100059F8C(v10, &qword_100117180, &type metadata accessor for ExchangeStatus);
  if (v34)
  {
    goto LABEL_11;
  }

LABEL_12:
  v36 = v44;
  sub_1000DB790();
  v37 = sub_1000DB7A0();
  return (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
}

uint64_t sub_10005915C(void *a1)
{
  v3 = v1;
  sub_10005A1E8(0, &qword_1001171C0, &type metadata accessor for KeyedEncodingContainer);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v10 = &v19[-v9];
  v11 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_10005A048();
  sub_1000DC480();
  v19[15] = 0;
  sub_1000D9090();
  sub_10005A24C(&qword_1001171C8, &type metadata accessor for Date);
  sub_1000DC2F0();
  if (!v2)
  {
    v12 = type metadata accessor for DetailTimelineEntry();
    v13 = v12[5];
    v19[14] = 1;
    type metadata accessor for DetailContentViewModel(0);
    sub_10005A24C(&qword_1001171D0, type metadata accessor for DetailContentViewModel);
    sub_1000DC2F0();
    v14 = v12[6];
    v19[13] = 2;
    sub_1000D9450();
    sub_10005A24C(&qword_1001171D8, &type metadata accessor for WidgetQuote);
    sub_1000DC2A0();
    v15 = v12[7];
    v19[12] = 3;
    sub_1000D9690();
    sub_10005A24C(&qword_1001171E0, &type metadata accessor for PriceChangeDisplay);
    sub_1000DC2F0();
    v16 = *(v3 + v12[8]);
    v19[11] = 4;
    sub_1000DC2C0();
    v17 = *(v3 + v12[9]);
    v19[10] = 5;
    sub_1000DC2C0();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1000594B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v46 = sub_1000D9690();
  v39 = *(v46 - 8);
  v3 = *(v39 + 64);
  __chkstk_darwin(v46);
  v36 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100059ECC(0, &qword_100114B58, &type metadata accessor for WidgetQuote);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v35 - v7;
  v9 = type metadata accessor for DetailContentViewModel(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000D9090();
  v43 = *(v13 - 8);
  v14 = *(v43 + 64);
  __chkstk_darwin(v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005A1E8(0, &qword_100117190, &type metadata accessor for KeyedDecodingContainer);
  v40 = v17;
  v37 = *(v17 - 8);
  v18 = *(v37 + 64);
  __chkstk_darwin(v17);
  v20 = &v35 - v19;
  v44 = type metadata accessor for DetailTimelineEntry();
  v21 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v42 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D9080();
  v24 = a1[3];
  v23 = a1[4];
  v45 = a1;
  sub_100006C7C(a1, v24);
  sub_10005A048();
  v38 = v20;
  v25 = v41;
  sub_1000DC470();
  if (v25)
  {
    v26 = v13;
    v27 = v43;
    v28 = v42;
    sub_100006D0C(v45);
    return (*(v27 + 8))(v28, v26);
  }

  else
  {
    v41 = v9;
    v52 = 0;
    sub_10005A24C(&qword_1001171A0, &type metadata accessor for Date);
    sub_1000DC220();
    v30 = v42;
    (*(v43 + 40))(v42, v16, v13);
    v51 = 1;
    sub_10005A24C(&qword_1001171A8, type metadata accessor for DetailContentViewModel);
    sub_1000DC220();
    v31 = v44;
    sub_10005A09C(v12, v30 + *(v44 + 20));
    sub_1000D9450();
    v50 = 2;
    sub_10005A24C(&qword_1001171B0, &type metadata accessor for WidgetQuote);
    sub_1000DC1D0();
    sub_10005A100(v8, v30 + v31[6]);
    v49 = 3;
    sub_10005A24C(&qword_1001171B8, &type metadata accessor for PriceChangeDisplay);
    v32 = v36;
    v33 = v46;
    sub_1000DC220();
    (*(v39 + 32))(v30 + v31[7], v32, v33);
    v48 = 4;
    v34 = v38;
    *(v30 + v31[8]) = sub_1000DC1F0() & 1;
    v47 = 5;
    LOBYTE(v32) = sub_1000DC1F0();
    (*(v37 + 8))(v34, v40);
    *(v30 + v31[9]) = v32 & 1;
    sub_10005A180(v30, v35, type metadata accessor for DetailTimelineEntry);
    sub_100006D0C(v45);
    return sub_100059FE8(v30, type metadata accessor for DetailTimelineEntry);
  }
}

unint64_t sub_100059C54()
{
  v1 = *v0;
  v2 = 1702125924;
  v3 = 0xD000000000000012;
  v4 = 0xD000000000000018;
  if (v1 != 4)
  {
    v4 = 0x726F7272457369;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C65646F6DLL;
  if (v1 != 1)
  {
    v5 = 0x65746F7571;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100059D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005A4EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100059D38(uint64_t a1)
{
  v2 = sub_10005A048();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100059D74(uint64_t a1)
{
  v2 = sub_10005A048();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100059DB0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000D9090();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void sub_100059E4C()
{
  if (!qword_100117178)
  {
    sub_100059ECC(255, &qword_100117180, &type metadata accessor for ExchangeStatus);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100117178);
    }
  }
}

void sub_100059ECC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000DBE80();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100059F20(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_100059ECC(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100059F8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_100059ECC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100059FE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10005A048()
{
  result = qword_100117198;
  if (!qword_100117198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117198);
  }

  return result;
}

uint64_t sub_10005A09C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailContentViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005A100(uint64_t a1, uint64_t a2)
{
  sub_100059ECC(0, &qword_100114B58, &type metadata accessor for WidgetQuote);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005A180(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_10005A1E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_10005A048();
    v7 = a3(a1, &type metadata for DetailTimelineEntry.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_10005A24C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for DetailTimelineEntry.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DetailTimelineEntry.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10005A3E8()
{
  result = qword_1001171E8;
  if (!qword_1001171E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001171E8);
  }

  return result;
}

unint64_t sub_10005A440()
{
  result = qword_1001171F0;
  if (!qword_1001171F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001171F0);
  }

  return result;
}

unint64_t sub_10005A498()
{
  result = qword_1001171F8;
  if (!qword_1001171F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001171F8);
  }

  return result;
}

uint64_t sub_10005A4EC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_1000DC360() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000 || (sub_1000DC360() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746F7571 && a2 == 0xE500000000000000 || (sub_1000DC360() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001000E8BE0 == a2 || (sub_1000DC360() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001000E8C00 == a2 || (sub_1000DC360() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x726F7272457369 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1000DC360();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

Swift::Double __swiftcall Double.percentChange(with:)(Swift::Double with)
{
  v2 = v1 - with;
  result = with / v2;
  if (v2 <= 0.0)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_10005A790()
{
  *(v0 + 48) = *(*(v0 + 40) + OBJC_IVAR____TtC12StocksWidget24TodayPrivateDataProvider_cache);
  sub_1000DA0D0();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = [*(v0 + 16) bundleSubscription];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 bundleChannelIDs];
      v5 = [v4 count];

      if (v5 >= 1)
      {
        v6 = *(v0 + 40) + OBJC_IVAR____TtC12StocksWidget24TodayPrivateDataProvider_logger;
        v7 = sub_1000DA350();
        v8 = sub_1000DBDD0();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          *v9 = 0;
          _os_log_impl(&_mh_execute_header, v7, v8, "Skipping today dropbox to use cached value", v9, 2u);
        }

        v10 = *(v0 + 8);

        return v10(v1);
      }
    }

    swift_unknownObjectRelease();
  }

  v12 = *(v0 + 40) + OBJC_IVAR____TtC12StocksWidget24TodayPrivateDataProvider_logger;
  v13 = sub_1000DA350();
  v14 = sub_1000DBDD0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Peeking at today dropbox", v15, 2u);
  }

  v16 = *(v0 + 40);

  *(v0 + 56) = *(v16 + 112);

  return _swift_task_switch(sub_10005A9D0, 0, 0);
}

uint64_t sub_10005A9D0()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCancellation<A>(after:operation:)[1];
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = sub_10005B368();
  *v4 = v0;
  v4[1] = sub_10005AAB4;

  return withCancellation<A>(after:operation:)(v0 + 3, 5000000000000000000, 0, &unk_1000E0D60, v2, v5);
}

uint64_t sub_10005AAB4()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_10005AC80;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_10005ABD0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10005ABD0()
{
  v1 = v0[5];
  v0[11] = v0[3];
  return _swift_task_switch(sub_10005ABF4, v1, 0);
}

uint64_t sub_10005ABF4()
{
  v1 = v0[5];
  v2 = v0[6];
  v0[4] = v0[11];
  swift_unknownObjectRetain();
  sub_1000DA0E0();
  sub_10005AD50();
  v3 = v0[11];
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_10005AC80()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);

  return _swift_task_switch(sub_10005ACEC, v2, 0);
}

uint64_t sub_10005ACEC()
{
  v1 = v0[5];
  sub_10005AD50();
  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

void sub_10005AD50()
{
  oslog = sub_1000DA350();
  v0 = sub_1000DBDD0();
  if (os_log_type_enabled(oslog, v0))
  {
    v1 = swift_slowAlloc();
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v0, "Did peek at today dropbox", v1, 2u);
  }
}

uint64_t sub_10005ADFC()
{
  v1 = OBJC_IVAR____TtC12StocksWidget24TodayPrivateDataProvider_logger;
  v2 = sub_1000DA370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC12StocksWidget24TodayPrivateDataProvider_cache);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for TodayPrivateDataProvider()
{
  result = qword_100117240;
  if (!qword_100117240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005AEE0()
{
  result = sub_1000DA370();
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

unint64_t sub_10005AFB8()
{
  result = qword_1001172F0;
  if (!qword_1001172F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001172F0);
  }

  return result;
}

uint64_t sub_10005B018(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10005B038, 0, 0);
}

uint64_t sub_10005B038()
{
  v1 = v0[3];
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withEagerCancellation<A>(_:)[1];
  v4 = v1;
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = sub_10005B368();
  *v5 = v0;
  v5[1] = sub_10005B128;
  v7 = v0[2];

  return withEagerCancellation<A>(_:)(v7, &unk_1000E0D70, v2, v6);
}

uint64_t sub_10005B128()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10005B264, 0, 0);
  }

  else
  {
    v4 = v3[4];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_10005B264()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_10005B2C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001079C;

  return sub_10005B018(a1, v4);
}

unint64_t sub_10005B368()
{
  result = qword_100115D40;
  if (!qword_100115D40)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100115D40);
  }

  return result;
}

uint64_t sub_10005B3CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10005B3EC, 0, 0);
}

uint64_t sub_10005B3EC()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = sub_10005B368();
  *v4 = v0;
  v4[1] = sub_10005B4E8;
  v6 = v0[2];

  return withCheckedContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD000000000000011, 0x80000001000E8C80, sub_10005B930, v2, v5);
}

uint64_t sub_10005B4E8()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

void sub_10005B5FC(uint64_t a1, void *a2)
{
  sub_10005B938();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v4);
  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5, v8);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  aBlock[4] = sub_10005BA28;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10005B7F8;
  aBlock[3] = &unk_100109F98;
  v11 = _Block_copy(aBlock);

  [a2 peekWithAccessor:v11];
  _Block_release(v11);
}

uint64_t sub_10005B7A0()
{
  sub_10005B938();
  swift_unknownObjectRetain();
  return sub_1000DBBF0();
}

uint64_t sub_10005B7F8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_10005B858()
{

  return swift_deallocObject();
}

uint64_t sub_10005B890(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000ECF4;

  return sub_10005B3CC(a1, v4);
}

void sub_10005B938()
{
  if (!qword_100117300)
  {
    sub_10005B368();
    v0 = sub_1000DBC00();
    if (!v1)
    {
      atomic_store(v0, &qword_100117300);
    }
  }
}

uint64_t sub_10005B9A0()
{
  sub_10005B938();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_10005BA28()
{
  sub_10005B938();
  v1 = *(*(v0 - 8) + 80);

  return sub_10005B7A0();
}

uint64_t sub_10005BA98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005BAB0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2 & 1;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4 & 1;
  sub_1000DB2B0();
}

double sub_10005BB90()
{
  sub_10004CAC0();
  sub_1000DAC20();
  return v1;
}

void *sub_10005BBD0(void *result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a3)
  {
    if (a5)
    {
      return result;
    }

LABEL_5:
    result[2] = a4;
    return result;
  }

  *result = a2;
  if ((a5 & 1) == 0)
  {
    goto LABEL_5;
  }

  return result;
}

void *sub_10005BC04(void *result)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  if (*(v1 + 24))
  {
    if (*(v1 + 40))
    {
      return result;
    }

LABEL_5:
    result[2] = v2;
    return result;
  }

  *result = *(v1 + 16);
  if ((v3 & 1) == 0)
  {
    goto LABEL_5;
  }

  return result;
}

double sub_10005BC40@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_10005BC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10005BCB0();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

unint64_t sub_10005BCB0()
{
  result = qword_100117310;
  if (!qword_100117310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117310);
  }

  return result;
}

__n128 sub_10005BD10(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10005BD24(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t sub_10005BD80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10005BE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v17 = *(v2 + 1);
  v18 = *(v2 + 3);
  v19 = *(v2 + 40);
  v6 = sub_10004C554();
  sub_10004C554();
  v8 = v7;
  sub_10005CC78();
  v10 = a2 + *(v9 + 36);
  *v10 = v5;
  *(v10 + 8) = v6;
  *(v10 + 16) = v8;
  *(v10 + 24) = swift_getKeyPath();
  *(v10 + 32) = 0;
  v11 = *(type metadata accessor for TextOverflowModifier() + 32);
  *(v10 + v11) = swift_getKeyPath();
  sub_10005CF6C(0, &qword_100116C18, &type metadata accessor for Font.Context, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  sub_10005D5A8(0, &qword_100117320, sub_10002E25C, &type metadata for OverflowIntoTextMarginsModifier, &type metadata accessor for _ViewModifier_Content);
  (*(*(v12 - 8) + 16))(a2, a1, v12);
  KeyPath = swift_getKeyPath();
  sub_10005CDE0();
  v15 = a2 + *(v14 + 36);
  *v15 = KeyPath;
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
}

uint64_t sub_10005BFC8()
{
  v1 = sub_1000DB020();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000DAC10();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0)
  {
    v12 = *v0;
  }

  else
  {
    v19[0] = v9;
    v13 = v0[3];
    v14 = *(v0 + 32);

    if ((v14 & 1) == 0)
    {
      sub_1000DBDC0();
      v15 = sub_1000DAED0();
      sub_1000DA330();

      sub_1000DAC00();
      swift_getAtKeyPath();
      j__swift_release();
      (*(v7 + 8))(v11, v19[0]);
      v13 = v19[1];
    }

    if (!v13)
    {
      sub_1000DAF70();
    }
  }

  v16 = *(type metadata accessor for TextOverflowModifier() + 32);

  sub_10004CF58(v5);
  v17 = sub_1000DAF50();

  (*(v2 + 8))(v5, v1);
  return v17;
}

uint64_t sub_10005C200()
{
  v0 = sub_1000DA730();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  sub_10005CF6C(0, &qword_100117458, &type metadata accessor for LayoutSubview, &type metadata accessor for Optional);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v19 - v10;
  v12 = sub_1000DA7F0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002BC88(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10005D8FC(v11);
    return sub_1000DA700();
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    sub_1000DA720();
    sub_1000DA7E0();
    sub_1000DAF10();
    sub_1000DA710();
    v18 = *(v1 + 8);
    v18(v4, v0);
    v18(v7, v0);
    return (*(v13 + 8))(v16, v12);
  }
}

uint64_t sub_10005C49C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v21[0] = a1;
  v21[1] = a3;
  v6 = sub_1000DA870();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005CF6C(0, &qword_100117458, &type metadata accessor for LayoutSubview, &type metadata accessor for Optional);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v21 - v13;
  v15 = sub_1000DA7F0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002BC88(v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_10005D8FC(v14);
  }

  (*(v16 + 32))(v19, v14, v15);
  v23 = a2 & 1;
  v22 = a4 & 1;
  sub_1000DA7B0();
  sub_1000DAC50();
  sub_1000DA880();
  sub_1000DAC60();
  sub_1000DA880();
  sub_1000DAC70();
  sub_1000DA880();
  sub_1000DAC40();
  sub_1000DA880();
  sub_1000DA850();
  sub_1000DA860();
  (*(v7 + 8))(v10, v6);
  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_10005C7C0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v25 = a1;
  v26 = a3;
  v6 = sub_1000DA870();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005CF6C(0, &qword_100117458, &type metadata accessor for LayoutSubview, &type metadata accessor for Optional);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v23 - v13;
  v15 = sub_1000DA7F0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002BC88(v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_10005D8FC(v14);
  }

  (*(v16 + 32))(v19, v14, v15);
  v21 = a2 & 1;
  v30 = v21;
  v22 = a4 & 1;
  v29 = v22;
  v24 = v6;
  sub_1000DA7B0();
  sub_1000DAC50();
  sub_1000DA880();
  sub_1000DAC60();
  sub_1000DA880();
  sub_1000DAC70();
  sub_1000DA880();
  sub_1000DAC40();
  sub_1000DA880();
  (*(v7 + 8))(v10, v24);
  sub_1000DB670();
  v28 = v21;
  v27 = v22;
  sub_1000DA7D0();
  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_10005CAD8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return sub_10005C200();
}

uint64_t sub_10005CAE4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  return sub_10005C49C(a1, a2 & 1, a3, a4 & 1);
}

uint64_t sub_10005CB04(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  return sub_10005C7C0(a1, a2 & 1, a3, a4 & 1);
}

void (*sub_10005CB24(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000DA670();
  return sub_100027D30;
}

uint64_t sub_10005CBD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10005BFC8();
  CapHeight = CTFontGetCapHeight(v5);

  *a2 = CapHeight;
  *(a2 + 8) = *(v2 + 8);
  sub_10005D4D8();
  v8 = *(v7 + 44);
  sub_10005D664();
  v10 = *(*(v9 - 8) + 16);

  return v10(a2 + v8, a1, v9);
}

void sub_10005CC78()
{
  if (!qword_100117318)
  {
    sub_10005D5A8(255, &qword_100117320, sub_10002E25C, &type metadata for OverflowIntoTextMarginsModifier, &type metadata accessor for _ViewModifier_Content);
    type metadata accessor for TextOverflowModifier();
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_100117318);
    }
  }
}

uint64_t type metadata accessor for TextOverflowModifier()
{
  result = qword_100117398;
  if (!qword_100117398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005CD64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000DAB50();
  *a1 = result;
  return result;
}

uint64_t sub_10005CD90(uint64_t *a1)
{
  v1 = *a1;

  return sub_1000DAB60();
}

void sub_10005CDE0()
{
  if (!qword_100117328)
  {
    sub_10005CC78();
    sub_100032968(255, &qword_100117330, &type metadata for EdgeInsets, &type metadata accessor for _EnvironmentKeyWritingModifier);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_100117328);
    }
  }
}

uint64_t sub_10005CE80(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    sub_10005CF6C(0, &qword_100117338, &type metadata accessor for Font.Context, &type metadata accessor for Environment);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 32);

    return v11(v12, a2, v10);
  }
}

void sub_10005CF6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_10005CFE4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    sub_10005CF6C(0, &qword_100117338, &type metadata accessor for Font.Context, &type metadata accessor for Environment);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void sub_10005D0B8()
{
  sub_100032968(319, &qword_1001158F0, &type metadata for Font, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10005D1B8();
    if (v1 <= 0x3F)
    {
      sub_10005CF6C(319, &qword_100117338, &type metadata accessor for Font.Context, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10005D1B8()
{
  if (!qword_1001173A8)
  {
    sub_100032968(255, &qword_1001158F0, &type metadata for Font, &type metadata accessor for Optional);
    v0 = sub_1000DA6C0();
    if (!v1)
    {
      atomic_store(v0, &qword_1001173A8);
    }
  }
}

unint64_t sub_10005D238()
{
  result = qword_1001173E8;
  if (!qword_1001173E8)
  {
    sub_10005CDE0();
    sub_10005D2B8();
    sub_10005D440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001173E8);
  }

  return result;
}

unint64_t sub_10005D2B8()
{
  result = qword_1001173F0;
  if (!qword_1001173F0)
  {
    sub_10005CC78();
    sub_10005D368();
    sub_10005D3F8(&qword_100117400, type metadata accessor for TextOverflowModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001173F0);
  }

  return result;
}

unint64_t sub_10005D368()
{
  result = qword_1001173F8;
  if (!qword_1001173F8)
  {
    sub_10005D5A8(255, &qword_100117320, sub_10002E25C, &type metadata for OverflowIntoTextMarginsModifier, &type metadata accessor for _ViewModifier_Content);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001173F8);
  }

  return result;
}

uint64_t sub_10005D3F8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10005D440()
{
  result = qword_100117408;
  if (!qword_100117408)
  {
    sub_100032968(255, &qword_100117330, &type metadata for EdgeInsets, &type metadata accessor for _EnvironmentKeyWritingModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117408);
  }

  return result;
}

void sub_10005D4D8()
{
  if (!qword_100117410)
  {
    sub_10005D5A8(255, &qword_100117418, sub_10005D610, &type metadata for TextOverflowModifier.Layout, &type metadata accessor for _LayoutRoot);
    sub_10005D664();
    sub_10005D828(&qword_100117430);
    v0 = sub_1000DA800();
    if (!v1)
    {
      atomic_store(v0, &qword_100117410);
    }
  }
}

void sub_10005D5A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_10005D610()
{
  result = qword_100117420;
  if (!qword_100117420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117420);
  }

  return result;
}

void sub_10005D664()
{
  if (!qword_100117428)
  {
    type metadata accessor for TextOverflowModifier();
    sub_10005D3F8(&qword_100117400, type metadata accessor for TextOverflowModifier);
    v0 = sub_1000DADC0();
    if (!v1)
    {
      atomic_store(v0, &qword_100117428);
    }
  }
}

uint64_t getEnumTagSinglePayload for TextOverflowModifier.Layout(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TextOverflowModifier.Layout(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_10005D75C()
{
  result = qword_100117438;
  if (!qword_100117438)
  {
    sub_10005D4D8();
    sub_10005D828(&qword_100117440);
    sub_10005D3F8(&qword_100117448, sub_10005D664);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117438);
  }

  return result;
}

uint64_t sub_10005D828(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10005D5A8(255, &qword_100117418, sub_10005D610, &type metadata for TextOverflowModifier.Layout, &type metadata accessor for _LayoutRoot);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10005D8A8()
{
  result = qword_100117450;
  if (!qword_100117450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117450);
  }

  return result;
}

uint64_t sub_10005D8FC(uint64_t a1)
{
  sub_10005CF6C(0, &qword_100117458, &type metadata accessor for LayoutSubview, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005D994()
{
  v0 = type metadata accessor for PriceFormatter();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_1000D9140();
  qword_100117460 = v3;
  return result;
}

uint64_t sub_10005D9E4(void *a1)
{
  v3 = v1;
  sub_10006074C(0, &qword_100117520, sub_1000606F8, &_s22StocksPriceFormatStyleV10CodingKeysON, &type metadata accessor for KeyedEncodingContainer);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v10 = &v19 - v9;
  v11 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_1000606F8();
  sub_1000DC480();
  v12 = *v3;
  v13 = v3[1];
  v23 = 0;
  sub_1000DC270();
  if (!v2)
  {
    v14 = *(v3 + 16);
    v22 = 1;
    sub_1000DC2C0();
    v15 = v3[3];
    v21 = 2;
    sub_1000DC2E0();
    v16 = v3[4];
    v17 = v3[5];
    v20 = 3;
    sub_1000DC2B0();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_10005DBB0()
{
  v1 = 0x79636E6572727563;
  v2 = 0x647574696E67616DLL;
  if (*v0 != 2)
  {
    v2 = 0x6B6361626C6C6166;
  }

  if (*v0)
  {
    v1 = 0xD000000000000016;
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

uint64_t sub_10005DC44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005F4F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10005DC78(uint64_t a1)
{
  v2 = sub_1000606F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005DCB4(uint64_t a1)
{
  v2 = sub_1000606F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005DCF0@<X0>(double *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 16) | (2 * (v6 != 0));
  if (qword_1001140F8 != -1)
  {
    v13 = *v2;
    v14 = v6;
    v15 = v4;
    v16 = v7;
    v17 = v10;
    swift_once();
    v10 = v17;
    v7 = v16;
    v6 = v14;
    v5 = v13;
    v4 = v15;
  }

  result = sub_100028E40(v5, v6, v7, 1, v10, v4);
  if (!v12)
  {

    result = v8;
    v12 = v9;
  }

  *a2 = result;
  a2[1] = v12;
  return result;
}

double sub_10005DDD8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10005F66C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

Swift::Int sub_10005DE34()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[5];
  sub_1000DC420();
  if (v2)
  {
    sub_1000DC440(1u);
    sub_1000DB9F0();
  }

  else
  {
    sub_1000DC440(0);
  }

  sub_1000DC440(v3);
  sub_1000DC430(v5);
  sub_1000DB9F0();
  return sub_1000DC460();
}

uint64_t sub_10005DEE8()
{
  v1 = *(v0 + 16);
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[5];
  if (v0[1])
  {
    v5 = *v0;
    sub_1000DC440(1u);
    sub_1000DB9F0();
  }

  else
  {
    sub_1000DC440(0);
  }

  sub_1000DC440(v1);
  sub_1000DC430(v3);

  return sub_1000DB9F0();
}

Swift::Int sub_10005DF8C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[5];
  sub_1000DC420();
  if (v2)
  {
    sub_1000DC440(1u);
    sub_1000DB9F0();
  }

  else
  {
    sub_1000DC440(0);
  }

  sub_1000DC440(v3);
  sub_1000DC430(v5);
  sub_1000DB9F0();
  return sub_1000DC460();
}

uint64_t sub_10005E03C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v11 = *(a2 + 24);
  v10 = *(a2 + 32);
  v12 = *(a2 + 40);
  if (!v3)
  {
    result = 0;
    if (v8)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (!v8)
  {
    return 0;
  }

  if (*a1 != *a2 || v3 != v8)
  {
    v14 = sub_1000DC360();
    result = 0;
    if ((v14 & 1) == 0)
    {
      return result;
    }

LABEL_11:
    if (v4 != v9)
    {
      return result;
    }

    goto LABEL_12;
  }

  result = 0;
  if (v4 != v9)
  {
    return result;
  }

LABEL_12:
  if (v6 == v11)
  {
    if (v5 == v10 && v7 == v12)
    {
      return 1;
    }

    else
    {

      return sub_1000DC360();
    }
  }

  return result;
}

uint64_t sub_10005E14C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = *(v4 + 56);
    v6 = *(v4 + 64);
  }

  else if ((*v4 & 1) != 0 && a4)
  {
    v10 = *(v4 + 32);
    v5 = *(v4 + 40);
    v11 = *(v4 + 48);
    if (*(v4 + 24))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v13 = qword_1001140F8;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = sub_100028E40(a3, a4, v10, 1, v12, *&a1);
    if (v15)
    {
      v16 = v14;

      return v16;
    }
  }

  else
  {
    v17 = *(v4 + 8);
    v18 = *(v4 + 16);
    v19 = *(v4 + 32);
    v20 = *(v4 + 40);
    v21 = *(v4 + 48);
    v22 = 3;
    if (!v18)
    {
      v22 = 1;
    }

    if (*(v4 + 24))
    {
      v23 = v22;
    }

    else
    {
      v23 = 2 * (v18 != 0);
    }

    if (qword_1001140F8 != -1)
    {
      v27 = *(v4 + 8);
      v28 = *(v4 + 16);
      v29 = v19;
      v30 = v23;
      swift_once();
      v23 = v30;
      v19 = v29;
      v18 = v28;
      v17 = v27;
    }

    v24 = sub_100028E40(v17, v18, v19, 1, v23, *&a1);
    if (v25)
    {
      return v24;
    }

    else
    {

      return v20;
    }
  }

  return v5;
}

uint64_t sub_10005E300(void *a1)
{
  v3 = v1;
  sub_10006074C(0, &qword_100117508, sub_10006066C, &_s11FormatStyleV10CodingKeysON, &type metadata accessor for KeyedEncodingContainer);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v10 = v17 - v9;
  v11 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_10006066C();
  sub_1000DC480();
  v12 = *v3;
  LOBYTE(v17[0]) = 0;
  sub_1000DC2C0();
  if (!v2)
  {
    v13 = *(v3 + 24);
    v17[0] = *(v3 + 8);
    v17[1] = v13;
    v17[2] = *(v3 + 40);
    v18 = 1;
    sub_1000605C0();
    sub_1000DC2F0();
    v14 = *(v3 + 7);
    v15 = *(v3 + 8);
    LOBYTE(v17[0]) = 2;
    sub_1000DC2B0();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_10005E4EC()
{
  v1 = 0x74537265626D756ELL;
  if (*v0 != 1)
  {
    v1 = 0x6B6361626C6C6166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72727543776F6873;
  }
}

uint64_t sub_10005E560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005F8F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10005E588(uint64_t a1)
{
  v2 = sub_10006066C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005E5C4(uint64_t a1)
{
  v2 = sub_10006066C();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10005E618@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10005FA18(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_10005E684(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_10005F380(v7, v9) & 1;
}

uint64_t sub_10005E6E0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    inited = *(v4 + 56);
    v7 = *(v4 + 64);
LABEL_3:

    return inited;
  }

  if (*&a1 > 1000000.0)
  {
    type metadata accessor for UnitNumberFormatter();
    inited = swift_initStackObject();
    v12 = [objc_allocWithZone(SCICUNumberFormatter) init];
    *(inited + 16) = v12;
    if ((~a1 & 0x7FF0000000000000) != 0)
    {
      if (*&a1 > -9.22337204e18)
      {
        if (*&a1 < 9.22337204e18)
        {
          v15 = v12;
          inited = sub_100045A4C(*&a1, 0, 0);
          v17 = v16;

          if (v17)
          {
            return inited;
          }

          goto LABEL_9;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

LABEL_9:
  v12 = *(v4 + 8);
  v13 = *(v4 + 16);
  v5 = *(v4 + 32);
  inited = *(v4 + 40);
  v18 = *(v4 + 48);
  if ((*v4 & 1) == 0 || !a4)
  {
    v24 = 3;
    if (!v13)
    {
      v24 = 1;
    }

    if (*(v4 + 24))
    {
      v14 = v24;
    }

    else
    {
      v14 = 2 * (v13 != 0);
    }

    if (qword_1001140F8 == -1)
    {
LABEL_24:
      v25 = sub_100028E40(v12, v13, v5, 1, v14, *&a1);
      if (v26)
      {
        return v25;
      }

      goto LABEL_3;
    }

LABEL_30:
    v28 = v12;
    v29 = v13;
    v30 = v14;
    swift_once();
    v14 = v30;
    v13 = v29;
    v12 = v28;
    goto LABEL_24;
  }

  if (*(v4 + 24))
  {
    v19 = 3;
  }

  else
  {
    v19 = 2;
  }

  v20 = qword_1001140F8;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = sub_100028E40(a3, a4, v5, 1, v19, *&a1);
  if (v22)
  {
    v23 = v21;

    return v23;
  }

  return inited;
}

uint64_t sub_10005E930(void *a1)
{
  v2 = v1;
  sub_10006074C(0, &qword_1001174A0, sub_10005FFBC, &_s17WidgetFormatStyleV10CodingKeysON, &type metadata accessor for KeyedEncodingContainer);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v9 = v14 - v8;
  v10 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_10005FFBC();
  sub_1000DC480();
  v11 = *(v2 + 48);
  v18 = *(v2 + 32);
  v19 = v11;
  v20 = *(v2 + 64);
  v12 = *(v2 + 16);
  v16 = *v2;
  v17 = v12;
  sub_100060064(v2, v14);
  sub_10006009C();
  sub_1000DC2F0();
  v14[2] = v18;
  v14[3] = v19;
  v15 = v20;
  v14[0] = v16;
  v14[1] = v17;
  sub_1000600F0(v14);
  return (*(v6 + 8))(v9, v5);
}

Swift::Int sub_10005EAEC()
{
  sub_1000DC420();
  sub_1000DC430(0);
  return sub_1000DC460();
}

Swift::Int sub_10005EB58()
{
  sub_1000DC420();
  sub_1000DC430(0);
  return sub_1000DC460();
}

uint64_t sub_10005EBA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1702060386 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1000DC360();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10005EC3C(uint64_t a1)
{
  v2 = sub_10005FFBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005EC78(uint64_t a1)
{
  v2 = sub_10005FFBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005ECCC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X3>, uint64_t *a3@<X8>)
{
  result = a2(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  *a3 = result;
  a3[1] = v5;
  return result;
}

__n128 sub_10005ED14(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

__n128 sub_10005ED50@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10005FDC4(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_10005EDA4(void *a1)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 8);
  v3 = *v1;
  v4 = v1[1];
  return sub_10005E930(a1);
}

Swift::Int sub_10005EDEC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  v9 = *(v0 + 64);
  sub_1000DC420();
  sub_1000DC440(v1);
  if (v3)
  {
    sub_1000DC440(1u);
    sub_1000DB9F0();
  }

  else
  {
    sub_1000DC440(0);
  }

  sub_1000DC440(v4);
  sub_1000DC430(v6);
  sub_1000DB9F0();
  sub_1000DB9F0();
  return sub_1000DC460();
}

uint64_t sub_10005EED0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = *(v0 + 64);
  sub_1000DC440(*v0);
  if (v2)
  {
    sub_1000DC440(1u);
    sub_1000DB9F0();
  }

  else
  {
    sub_1000DC440(0);
  }

  sub_1000DC440(v3);
  sub_1000DC430(v5);
  sub_1000DB9F0();

  return sub_1000DB9F0();
}

Swift::Int sub_10005EF98()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  v9 = *(v0 + 64);
  sub_1000DC420();
  sub_1000DC440(v1);
  if (v3)
  {
    sub_1000DC440(1u);
    sub_1000DB9F0();
  }

  else
  {
    sub_1000DC440(0);
  }

  sub_1000DC440(v4);
  sub_1000DC430(v6);
  sub_1000DB9F0();
  sub_1000DB9F0();
  return sub_1000DC460();
}

BOOL sub_10005F074(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_10005F230(v7, v9);
}

unint64_t sub_10005F0D4()
{
  result = qword_100117468;
  if (!qword_100117468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117468);
  }

  return result;
}

unint64_t sub_10005F12C()
{
  result = qword_100117470;
  if (!qword_100117470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117470);
  }

  return result;
}

unint64_t sub_10005F184()
{
  result = qword_100117478;
  if (!qword_100117478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117478);
  }

  return result;
}

unint64_t sub_10005F1DC()
{
  result = qword_100117480;
  if (!qword_100117480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117480);
  }

  return result;
}

BOOL sub_10005F230(uint64_t a1, uint64_t a2)
{
  if ((*a1 ^ *a2))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v16 = *(a2 + 48);
  v15 = *(a2 + 56);
  v17 = *(a2 + 64);
  if (v4)
  {
    if (!v11)
    {
      return 0;
    }

    if (*(a1 + 8) != *(a2 + 8) || v4 != v11)
    {
      v24 = *(a2 + 56);
      v25 = *(a2 + 64);
      v18 = *(a1 + 64);
      v19 = *(a1 + 56);
      v20 = *(a1 + 48);
      v21 = sub_1000DC360();
      v9 = v20;
      v8 = v19;
      v10 = v18;
      v15 = v24;
      v17 = v25;
      if ((v21 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (((v5 ^ v12) & 1) != 0 || v7 != v13)
  {
    return 0;
  }

  if (v6 != v14 || v9 != v16)
  {
    v22 = v8;
    v23 = sub_1000DC360();
    v8 = v22;
    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  return v8 == v15 && v10 == v17 || (sub_1000DC360() & 1) != 0;
}

uint64_t sub_10005F380(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2))
  {
    return 0;
  }

  v4 = *(a1 + 2);
  v5 = a1[24];
  v7 = *(a1 + 4);
  v6 = *(a1 + 5);
  v8 = *(a1 + 6);
  v9 = *(a2 + 2);
  v10 = a2[24];
  v12 = *(a2 + 4);
  v11 = *(a2 + 5);
  v13 = *(a2 + 6);
  if (v4)
  {
    if (!v9)
    {
      return 0;
    }

    if (*(a1 + 1) != *(a2 + 1) || v4 != v9)
    {
      v14 = a1;
      v15 = *(a1 + 1);
      v16 = a2;
      v17 = sub_1000DC360();
      a2 = v16;
      v18 = v17;
      a1 = v14;
      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v2 = 0;
  if (((v5 ^ v10) & 1) != 0 || v7 != v12)
  {
    return v2;
  }

  if (v6 != v11 || v8 != v13)
  {
    v19 = a1;
    v20 = a2;
    v21 = sub_1000DC360();
    a2 = v20;
    v22 = v21;
    a1 = v19;
    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 7) == *(a2 + 7) && *(a1 + 8) == *(a2 + 8))
  {
    return 1;
  }

  v23 = *(a1 + 7);

  return sub_1000DC360();
}

uint64_t sub_10005F4F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43;
  if (v4 || (sub_1000DC360() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001000E8CC0 == a2 || (sub_1000DC360() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x647574696E67616DLL && a2 == 0xE900000000000065 || (sub_1000DC360() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xEC00000074786554)
  {

    return 3;
  }

  else
  {
    v6 = sub_1000DC360();

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

uint64_t sub_10005F66C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  sub_10006074C(0, &qword_100117510, sub_1000606F8, &_s22StocksPriceFormatStyleV10CodingKeysON, &type metadata accessor for KeyedDecodingContainer);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_1000606F8();
  sub_1000DC470();
  if (v2)
  {
    return sub_100006D0C(a1);
  }

  v11 = v6;
  v12 = v23;
  v28 = 0;
  v13 = sub_1000DC1A0();
  v15 = v14;
  v16 = v13;
  v27 = 1;
  v24 = sub_1000DC1F0();
  v26 = 2;
  v22 = sub_1000DC210();
  v25 = 3;
  v17 = sub_1000DC1E0();
  v18 = v9;
  v20 = v19;
  (*(v11 + 8))(v18, v5);
  result = sub_100006D0C(a1);
  *v12 = v16;
  *(v12 + 8) = v15;
  *(v12 + 16) = v24 & 1;
  *(v12 + 24) = v22;
  *(v12 + 32) = v17;
  *(v12 + 40) = v20;
  return result;
}

uint64_t sub_10005F8F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72727543776F6873 && a2 == 0xEC00000079636E65;
  if (v4 || (sub_1000DC360() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74537265626D756ELL && a2 == 0xEB00000000656C79 || (sub_1000DC360() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xEC00000074786554)
  {

    return 2;
  }

  else
  {
    v6 = sub_1000DC360();

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

uint64_t sub_10005FA18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  sub_10006074C(0, &qword_1001174F8, sub_10006066C, &_s11FormatStyleV10CodingKeysON, &type metadata accessor for KeyedDecodingContainer);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v9 = &v26 - v8;
  v10 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_10006066C();
  sub_1000DC470();
  if (v2)
  {
    return sub_100006D0C(a1);
  }

  v11 = v6;
  v12 = v50;
  LOBYTE(v38) = 0;
  v13 = sub_1000DC1F0();
  LOBYTE(v33) = 1;
  sub_100060568();
  sub_1000DC220();
  v14 = v39;
  v31 = v38;
  v30 = v40;
  v29 = v41;
  v28 = v42;
  v32 = v43;
  v47 = 2;
  v15 = sub_1000DC1E0();
  v16 = v13 & 1;
  v27 = v13 & 1;
  v17 = *(v11 + 8);
  v18 = v15;
  v26 = v19;
  v17(v9, v5);
  LOBYTE(v33) = v16;
  *(&v33 + 1) = v49[0];
  DWORD1(v33) = *(v49 + 3);
  *(&v33 + 1) = v31;
  *&v34 = v14;
  BYTE8(v34) = v30;
  *(&v34 + 9) = *v48;
  HIDWORD(v34) = *&v48[3];
  v20 = v29;
  v21 = v28;
  *&v35 = v29;
  *(&v35 + 1) = v28;
  *&v36 = v32;
  *(&v36 + 1) = v18;
  v22 = v26;
  v37 = v26;
  sub_1000606C0(&v33, &v38);
  sub_100006D0C(a1);
  LOBYTE(v38) = v27;
  *(&v38 + 1) = v49[0];
  HIDWORD(v38) = *(v49 + 3);
  v39 = v31;
  v40 = v14;
  LOBYTE(v41) = v30;
  *(&v41 + 1) = *v48;
  HIDWORD(v41) = *&v48[3];
  v42 = v20;
  v43 = v21;
  v44 = v32;
  v45 = v18;
  v46 = v22;
  result = sub_1000600F0(&v38);
  v24 = v36;
  *(v12 + 32) = v35;
  *(v12 + 48) = v24;
  *(v12 + 64) = v37;
  v25 = v34;
  *v12 = v33;
  *(v12 + 16) = v25;
  return result;
}

uint64_t sub_10005FDC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  sub_10006074C(0, &qword_100117488, sub_10005FFBC, &_s17WidgetFormatStyleV10CodingKeysON, &type metadata accessor for KeyedDecodingContainer);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_10005FFBC();
  sub_1000DC470();
  if (v2)
  {
    return sub_100006D0C(a1);
  }

  v11 = v25;
  sub_100060010();
  sub_1000DC220();
  (*(v6 + 8))(v9, v5);
  v17 = v22;
  v18 = v23;
  v19 = v24;
  v15 = v20;
  v16 = v21;
  result = sub_100006D0C(a1);
  v13 = v18;
  *(v11 + 32) = v17;
  *(v11 + 48) = v13;
  *(v11 + 64) = v19;
  v14 = v16;
  *v11 = v15;
  *(v11 + 16) = v14;
  return result;
}

unint64_t sub_10005FFBC()
{
  result = qword_100117490;
  if (!qword_100117490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117490);
  }

  return result;
}

unint64_t sub_100060010()
{
  result = qword_100117498;
  if (!qword_100117498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117498);
  }

  return result;
}

unint64_t sub_10006009C()
{
  result = qword_1001174A8;
  if (!qword_1001174A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001174A8);
  }

  return result;
}

uint64_t _s17WidgetFormatStyleV10CodingKeysOwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *_s17WidgetFormatStyleV10CodingKeysOwst(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_100060200(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100060248(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_1000602A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000602EC(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

unint64_t sub_100060350()
{
  result = qword_1001174B0;
  if (!qword_1001174B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001174B0);
  }

  return result;
}

unint64_t sub_1000603B0()
{
  result = qword_1001174B8;
  if (!qword_1001174B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001174B8);
  }

  return result;
}

unint64_t sub_100060408()
{
  result = qword_1001174C0;
  if (!qword_1001174C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001174C0);
  }

  return result;
}

unint64_t sub_100060460()
{
  result = qword_1001174C8;
  if (!qword_1001174C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001174C8);
  }

  return result;
}

unint64_t sub_1000604B8()
{
  result = qword_1001174D0;
  if (!qword_1001174D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001174D0);
  }

  return result;
}

unint64_t sub_100060510()
{
  result = qword_1001174D8;
  if (!qword_1001174D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001174D8);
  }

  return result;
}

unint64_t sub_100060568()
{
  result = qword_1001174E0;
  if (!qword_1001174E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001174E0);
  }

  return result;
}

unint64_t sub_1000605C0()
{
  result = qword_1001174E8;
  if (!qword_1001174E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001174E8);
  }

  return result;
}

unint64_t sub_100060618()
{
  result = qword_1001174F0;
  if (!qword_1001174F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001174F0);
  }

  return result;
}

unint64_t sub_10006066C()
{
  result = qword_100117500;
  if (!qword_100117500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117500);
  }

  return result;
}

unint64_t sub_1000606F8()
{
  result = qword_100117518;
  if (!qword_100117518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117518);
  }

  return result;
}

void sub_10006074C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for TickerCellViewModel.CellType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TickerCellViewModel.CellType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100060918()
{
  result = qword_100117528;
  if (!qword_100117528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117528);
  }

  return result;
}

unint64_t sub_100060970()
{
  result = qword_100117530;
  if (!qword_100117530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117530);
  }

  return result;
}

unint64_t sub_1000609C8()
{
  result = qword_100117538;
  if (!qword_100117538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117538);
  }

  return result;
}

unint64_t sub_100060A20()
{
  result = qword_100117540;
  if (!qword_100117540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117540);
  }

  return result;
}

unint64_t sub_100060A78()
{
  result = qword_100117548;
  if (!qword_100117548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117548);
  }

  return result;
}

unint64_t sub_100060AD0()
{
  result = qword_100117550;
  if (!qword_100117550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117550);
  }

  return result;
}

uint64_t sub_100060B50@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  sub_1000613D0();
  v36 = v1;
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006147C(0, &qword_100117600, &qword_100117608, FCNewsTabiConfiguration_ptr);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v11 = v32 - v10;
  v35 = v32 - v10;
  sub_100061424();
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[1] = v17;
  sub_10006147C(0, &qword_100117618, &qword_100117620, FCNewsArticleEmbeddingsConfiguration_ptr);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18);
  v38 = v32 - v21;
  v22 = enum case for FeatureState.disabled<A>(_:);
  (*(v23 + 104))(v20);
  sub_1000614D4();
  v37 = v24;
  (*(v14 + 104))(v17, v22, v13);
  v34 = sub_1000D9590();
  v33 = sub_1000D9530();
  (*(v8 + 104))(v11, v22, v7);
  (*(v2 + 104))(v5, v22, v36);
  sub_100061C08(_swiftEmptyArrayStorage);
  v25 = objc_allocWithZone(FCPersonalizationPublisherDampeningConfig);
  isa = sub_1000DB830().super.isa;

  [v25 initWithConfig:isa];

  sub_100061C08(_swiftEmptyArrayStorage);
  v27 = objc_allocWithZone(FCPersonalizationPublisherDampeningConfig);
  v28 = sub_1000DB830().super.isa;

  [v27 initWithConfig:v28];

  v29 = objc_allocWithZone(FCStatelessPersonalizationPublisherFavorability);
  sub_100061E64(0, &qword_100117628, &type metadata for AnyHashable, &protocol witness table for AnyHashable, &type metadata accessor for Dictionary);
  v30 = sub_1000DBB00().super.isa;
  [v29 initWithArray:v30];

  return sub_1000DA2B0();
}

uint64_t sub_100060FE0(uint64_t a1, void (*a2)(char *))
{
  v3 = sub_1000DA2C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100060B50(v7);
  a2(v7);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1000610C4()
{
  sub_100006D0C((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_100061120@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000D95E0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 48);
  sub_100006C7C((*v1 + 16), *(*v1 + 40));
  sub_1000D98B0();
  sub_100060B50(a1);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100061220()
{
  v1 = *v0;
  sub_1000D95E0();
  sub_1000DA180();
  v2 = sub_1000DA100();
  sub_1000DA2C0();
  v3 = sub_1000DA130();

  return v3;
}

uint64_t sub_1000612C0(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 48);
  sub_100006C7C((*v2 + 16), *(*v2 + 40));
  sub_1000D98A0();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v7 = sub_1000DA100();
  sub_1000D9F80();

  return sub_100006D0C(v9);
}

uint64_t sub_100061390()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void sub_1000613D0()
{
  if (!qword_1001175F8)
  {
    v0 = sub_1000DA2A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1001175F8);
    }
  }
}

void sub_100061424()
{
  if (!qword_100117610)
  {
    sub_1000DA290();
    v0 = sub_1000DA2A0();
    if (!v1)
    {
      atomic_store(v0, &qword_100117610);
    }
  }
}

void sub_10006147C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100033ED8(255, a3, a4);
    v5 = sub_1000DA2A0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1000614D4()
{
  v0 = sub_1000D9940();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000D8DE0();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_1000D8DD0();
  sub_1000D9550();
  sub_100061E0C();
  v8 = sub_1000D8DC0();
  v10 = v9;
  (*(v1 + 8))(v4, v0);

  v11 = objc_opt_self();
  isa = sub_1000D8F40().super.isa;
  v20[0] = 0;
  v13 = [v11 JSONObjectWithData:isa options:4 error:v20];

  if (!v13)
  {
    v18 = v20[0];
    sub_1000D8E60();

    swift_willThrow();

    goto LABEL_6;
  }

  v14 = v20[0];
  sub_1000DBEC0();
  swift_unknownObjectRelease();
  sub_100061E64(0, &qword_100117648, &type metadata for String, &protocol witness table for String, &type metadata accessor for Dictionary);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    [objc_allocWithZone(FCPersonalizationTreatment) init];
    sub_10003DB6C(v8, v10);
    return;
  }

  sub_100061814(v19[1]);
  v15 = objc_allocWithZone(FCPersonalizationTreatment);
  v16 = sub_1000DB830().super.isa;

  v17 = [v15 initWithPersonalizationTreatmentDictionary:v16];

  if (v17)
  {

    sub_10003DB6C(v8, v10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100061814(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100061E64(0, &qword_100117630, &type metadata for AnyHashable, &protocol witness table for AnyHashable, &type metadata accessor for _DictionaryStorage);
    v2 = sub_1000DC130();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100061EC4(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10003491C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10003491C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10003491C(v31, v32);
    result = sub_1000DBF00(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_10003491C(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_100061AFC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000DBF00(*(v2 + 40));

  return sub_100061B40(a1, v4);
}

unint64_t sub_100061B40(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100033F88(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1000DBF10();
      sub_100033FE4(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100061C08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100061E64(0, &qword_100117630, &type metadata for AnyHashable, &protocol witness table for AnyHashable, &type metadata accessor for _DictionaryStorage);
    v3 = sub_1000DC130();
    v4 = a1 + 32;

    while (1)
    {
      sub_100061D44(v4, v13);
      result = sub_100061AFC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10003491C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100061D44(uint64_t a1, uint64_t a2)
{
  sub_100061DA8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100061DA8()
{
  if (!qword_100117638)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100117638);
    }
  }
}

unint64_t sub_100061E0C()
{
  result = qword_100117640;
  if (!qword_100117640)
  {
    sub_1000D9940();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117640);
  }

  return result;
}

void sub_100061E64(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, char *))
{
  if (!*a2)
  {
    v6 = a5(0, a3, &type metadata for Any[8]);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_100061EC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100061F20()
{
  v1 = v0[6];
  sub_100006C7C(v0 + 2, v0[5]);
  return sub_1000D98C0();
}

uint64_t type metadata accessor for OverviewTimelineEntry()
{
  result = qword_1001176C0;
  if (!qword_1001176C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100062008()
{
  sub_1000328C0();
  if (v0 <= 0x3F)
  {
    sub_1000323F4(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10006207C()
{
  if (!qword_100115C60)
  {
    v0 = sub_1000DBE80();
    if (!v1)
    {
      atomic_store(v0, &qword_100115C60);
    }
  }
}

uint64_t sub_1000620CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for OverviewTimelineEntry();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000628BC(v2, v7, type metadata accessor for OverviewTimelineEntry);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000323F4(0);
    v9 = v8;
    v7[*(v8 + 64)];
    sub_1000DB790();
    v15 = *(v9 + 48);
    v16 = sub_1000DB7A0();
    (*(*(v16 - 8) + 56))(a1, 0, 1, v16);
    sub_1000626F4(&v7[v15]);
  }

  else
  {
    sub_1000328C0();
    v11 = v10;
    v12 = *&v7[*(v10 + 48) + 8];

    v13 = *&v7[*(v11 + 64) + 8];

    sub_1000DB790();
    v14 = sub_1000DB7A0();
    (*(*(v14 - 8) + 56))(a1, 0, 1, v14);
  }

  v17 = sub_1000D9090();
  return (*(*(v17 - 8) + 8))(v7, v17);
}

uint64_t sub_1000622C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for WatchlistOverviewContentViewModel(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for OverviewTimelineEntry();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000628BC(v2, v11, type metadata accessor for OverviewTimelineEntry);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000323F4(0);
    sub_10003251C(&v11[*(v12 + 48)], v7);
    v13 = *(v4 + 20);
    sub_100062750(0, &qword_100116390, sub_10003F304, &qword_1001163A0, sub_10003F304);
    sub_100023704(0);
    sub_1000DA1D0();
    sub_1000626F4(v7);
    v14 = 0;
  }

  else
  {
    sub_1000328C0();
    v16 = v15;
    v17 = *&v11[*(v15 + 48) + 8];

    v18 = *&v11[*(v16 + 64) + 8];

    v14 = 1;
  }

  sub_100062750(0, &qword_1001176F8, sub_1000627D0, &qword_100117708, sub_1000627D0);
  (*(*(v19 - 8) + 56))(a1, v14, 1, v19);
  v20 = sub_1000D9090();
  return (*(*(v20 - 8) + 8))(v11, v20);
}

uint64_t sub_100062590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000628BC(v7, v6, type metadata accessor for OverviewTimelineEntry);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000323F4(0);
    v9 = *(v8 + 48);
    v10 = sub_1000D9090();
    (*(*(v10 - 8) + 32))(a2, v6, v10);
    return sub_1000626F4(&v6[v9]);
  }

  else
  {
    sub_1000328C0();
    v13 = v12;
    v14 = *&v6[*(v12 + 48) + 8];

    v15 = *&v6[*(v13 + 64) + 8];

    v16 = sub_1000D9090();
    return (*(*(v16 - 8) + 32))(a2, v6, v16);
  }
}

uint64_t sub_1000626F4(uint64_t a1)
{
  v2 = type metadata accessor for WatchlistOverviewContentViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100062750(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_100062868(a4, a5);
    v8 = sub_1000DA220();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100062804(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100062868(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000628BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100062938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1000638B4(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_100023694(0);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 40);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_100062AA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1000638B4(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_100023694(0);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 40);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t type metadata accessor for LargeDetailWithNewsContentView()
{
  result = qword_100117768;
  if (!qword_100117768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100062C40()
{
  sub_100063718(319, &qword_1001156D0, &type metadata for StockPrice, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100063718(319, &unk_1001156D8, &type metadata for ValueChangeTrend, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000638B4(319, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_100023694(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100062DA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  sub_1000637C8(0, &qword_1001177E0, type metadata accessor for HeadlinesList);
  v79 = v3;
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v82 = &v66[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v80 = &v66[-v7];
  sub_100063768();
  v78 = v8;
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v81 = &v66[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v85 = &v66[-v12];
  sub_1000637C8(0, &qword_1001177D0, type metadata accessor for RowWithChartTicker);
  v76 = v13;
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v84 = &v66[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v18 = &v66[-v17];
  LODWORD(v75) = *(a1 + 80);
  v19 = *a1;
  v20 = a1[1];
  v21 = a1[3];
  v73 = a1[2];
  v74 = v19;
  v22 = a1[5];
  v72 = a1[4];
  v23 = a1[6];
  v24 = a1[7];
  v70 = v20;
  v71 = v23;
  v25 = a1[8];
  v26 = a1[9];
  v27 = *(a1 + 13);
  v98[0] = *(a1 + 11);
  v98[1] = v27;
  v99[0] = *(a1 + 15);
  *(v99 + 9) = *(a1 + 129);
  v28 = *(a1 + 13);
  v100 = *(a1 + 11);
  v101 = v28;
  v102[0] = *(a1 + 15);
  *(v102 + 9) = *(a1 + 129);
  v77 = type metadata accessor for LargeDetailWithNewsContentView();
  v29 = *(v77 + 36);
  v30 = type metadata accessor for RowWithChartTicker();
  sub_100024964(a1 + v29, &v18[*(v30 + 36)]);
  v31 = v101;
  *(v18 + 88) = v100;
  *v18 = v75;
  v32 = v73;
  v33 = v70;
  v34 = v71;
  *(v18 + 1) = v74;
  *(v18 + 2) = v33;
  *(v18 + 3) = v32;
  *(v18 + 4) = v21;
  *(v18 + 5) = v72;
  *(v18 + 6) = v22;
  *(v18 + 7) = v34;
  *(v18 + 8) = v24;
  *(v18 + 9) = v25;
  *(v18 + 10) = v26;
  *(v18 + 104) = v31;
  *(v18 + 120) = v102[0];
  *(v18 + 129) = *(v102 + 9);
  v75 = v30;
  v35 = *(v30 + 40);

  sub_10002B054(v34, v24, v25, v26);
  sub_10002B068(v98, &v86);
  if (qword_100114158 != -1)
  {
    swift_once();
  }

  sub_100063858(0, &qword_1001141F8, &type metadata for Bool, &protocol witness table for Bool, &type metadata accessor for SettingProperty);
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();

  *&v18[v35] = sub_1000D9DD0();
  v39 = *(v75 + 44);
  *&v18[v39] = swift_getKeyPath();
  sub_1000638B4(0, &qword_100116108, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 24) = 1;
  *(v41 + 32) = 0;
  *(v41 + 40) = 0;
  v42 = &v18[*(v76 + 36)];
  *v42 = KeyPath;
  v42[1] = sub_10002B050;
  v42[2] = v41;
  sub_1000DB600();
  sub_1000DA7A0();
  v75 = v94;
  v76 = v92;
  v73 = v97;
  v74 = v96;
  v105 = 1;
  v104 = v93;
  v103 = v95;
  v43 = v85;
  sub_1000DB560();
  v44 = swift_getKeyPath();
  v45 = &v43[*(v78 + 36)];
  *v45 = 1;
  *(v45 + 1) = v44;
  *(v45 + 2) = 0;
  *(v45 + 3) = 0;
  *(v45 + 4) = 0;
  v45[40] = 0;
  sub_1000DB600();
  sub_1000DA7A0();
  v78 = v86;
  v71 = v90;
  v72 = v88;
  v70 = v91;
  v108 = 1;
  v107 = v87;
  v106 = v89;
  v46 = *(v77 + 40);
  sub_100023694(0);
  v48 = v80;
  (*(*(v47 - 8) + 16))(v80, a1 + v46, v47);
  v49 = type metadata accessor for HeadlinesList();
  *(v48 + *(v49 + 20)) = 3;
  *(v48 + *(v49 + 24)) = 0x4028000000000000;
  v50 = swift_getKeyPath();
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  *(v51 + 24) = 0;
  *(v51 + 32) = 0;
  *(v51 + 40) = 1;
  v52 = (v48 + *(v79 + 36));
  *v52 = v50;
  v52[1] = sub_10002B5D4;
  v52[2] = v51;
  v53 = v84;
  sub_100063934(v18, v84, &qword_1001177D0, type metadata accessor for RowWithChartTicker);
  v54 = v105;
  v67 = v104;
  v68 = v103;
  v55 = v81;
  sub_1000639A0(v43, v81);
  v69 = v108;
  LODWORD(v77) = v107;
  LODWORD(v79) = v106;
  v56 = v82;
  sub_100063934(v48, v82, &qword_1001177E0, type metadata accessor for HeadlinesList);
  v57 = v53;
  v58 = v83;
  sub_100063934(v57, v83, &qword_1001177D0, type metadata accessor for RowWithChartTicker);
  sub_10006361C();
  v60 = v59;
  v61 = v58 + *(v59 + 48);
  *v61 = 0;
  *(v61 + 8) = v54;
  *(v61 + 16) = v76;
  *(v61 + 24) = v67;
  *(v61 + 32) = v75;
  *(v61 + 40) = v68;
  v62 = v73;
  *(v61 + 48) = v74;
  *(v61 + 56) = v62;
  sub_1000639A0(v55, v58 + *(v59 + 64));
  v63 = v58 + *(v60 + 80);
  *v63 = 0;
  *(v63 + 8) = v69;
  *(v63 + 16) = v78;
  *(v63 + 24) = v77;
  *(v63 + 32) = v72;
  *(v63 + 40) = v79;
  v64 = v70;
  *(v63 + 48) = v71;
  *(v63 + 56) = v64;
  sub_100063934(v56, v58 + *(v60 + 96), &qword_1001177E0, type metadata accessor for HeadlinesList);
  sub_100063A60(v48, &qword_1001177E0, type metadata accessor for HeadlinesList);
  sub_100063A04(v85);
  sub_100063A60(v18, &qword_1001177D0, type metadata accessor for RowWithChartTicker);
  sub_100063A60(v56, &qword_1001177E0, type metadata accessor for HeadlinesList);
  sub_100063A04(v55);
  return sub_100063A60(v84, &qword_1001177D0, type metadata accessor for RowWithChartTicker);
}

uint64_t sub_10006353C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1000DAD00();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_100063584();
  return sub_100062DA8(v1, a1 + *(v3 + 44));
}

void sub_100063584()
{
  if (!qword_1001177B8)
  {
    sub_1000638B4(255, &qword_1001177C0, sub_10006361C, &type metadata accessor for TupleView);
    v0 = sub_1000DA800();
    if (!v1)
    {
      atomic_store(v0, &qword_1001177B8);
    }
  }
}

void sub_10006361C()
{
  if (!qword_1001177C8)
  {
    sub_1000637C8(255, &qword_1001177D0, type metadata accessor for RowWithChartTicker);
    sub_100063858(255, &qword_100116558, &type metadata for Spacer, &type metadata for _FrameLayout, &type metadata accessor for ModifiedContent);
    sub_100063768();
    sub_1000637C8(255, &qword_1001177E0, type metadata accessor for HeadlinesList);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1001177C8);
    }
  }
}

void sub_100063718(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_100063768()
{
  if (!qword_1001177D8)
  {
    sub_1000DB570();
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_1001177D8);
    }
  }
}

void sub_1000637C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_100063718(255, &qword_100115740, &type metadata for EdgeInsets, &type metadata accessor for _EnvironmentKeyTransformModifier);
    v4 = sub_1000DA930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100063858(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1000638B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100063934(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1000637C8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000639A0(uint64_t a1, uint64_t a2)
{
  sub_100063768();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100063A04(uint64_t a1)
{
  sub_100063768();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100063A60(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1000637C8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100063AC0()
{
  result = qword_1001177E8;
  if (!qword_1001177E8)
  {
    sub_100063B18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001177E8);
  }

  return result;
}

void sub_100063B18()
{
  if (!qword_1001177F0)
  {
    sub_1000638B4(255, &qword_1001177C0, sub_10006361C, &type metadata accessor for TupleView);
    sub_100063BAC();
    v0 = sub_1000DB540();
    if (!v1)
    {
      atomic_store(v0, &qword_1001177F0);
    }
  }
}

unint64_t sub_100063BAC()
{
  result = qword_1001177F8;
  if (!qword_1001177F8)
  {
    sub_1000638B4(255, &qword_1001177C0, sub_10006361C, &type metadata accessor for TupleView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001177F8);
  }

  return result;
}

uint64_t sub_100063C38@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_100002A50(0, &qword_100118F40);
  result = sub_1000D9F00();
  if (v30)
  {
    v6 = a1[4];
    sub_100006C7C(a1, a1[3]);
    sub_100002A50(0, &qword_100117938);
    result = sub_1000D9F00();
    if (v28)
    {
      v7 = v30;
      v8 = sub_10006457C(v29, v30);
      v9 = *(*(v7 - 8) + 64);
      v10 = __chkstk_darwin(v8);
      v12 = (&v26[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v13 + 16))(v12, v10);
      v14 = *v12;
      v15 = type metadata accessor for TodayPrivateDataProvider();
      v26[3] = v15;
      v26[4] = &off_100109F38;
      v26[0] = v14;
      v16 = type metadata accessor for WidgetScoringService();
      v17 = swift_allocObject();
      v18 = sub_10006457C(v26, v15);
      v19 = *(*(v15 - 8) + 64);
      v20 = __chkstk_darwin(v18);
      v22 = (&v26[-1] - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v23 + 16))(v22, v20);
      v24 = *v22;
      v17[5] = v15;
      v17[6] = &off_100109F38;
      v17[2] = v24;
      v17[12] = 0;
      sub_100023738(&v27, (v17 + 7));
      sub_100006D0C(v26);
      sub_100006D0C(v29);
      a2[3] = v16;
      result = sub_1000645CC(qword_100117960, type metadata accessor for WidgetScoringService);
      a2[4] = result;
      *a2 = v17;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100063EF4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_100006C7C(a1, a1[3]);
  v4 = type metadata accessor for WidgetPersonalizationConfigurationManager();
  result = sub_1000D9EF0();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_1000645CC(&qword_100117958, type metadata accessor for WidgetPersonalizationConfigurationManager);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100063F9C(void *a1)
{
  v1 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_100002A50(0, &qword_100115330);
  result = sub_1000D9F00();
  if (v5)
  {
    type metadata accessor for WidgetPersonalizationConfigurationManager();
    v3 = swift_allocObject();
    sub_100023738(&v4, v3 + 16);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100064038@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_100002A50(0, &qword_100117948);
  result = sub_1000D9F00();
  if (!v16)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_100002A50(0, &qword_100116990);
  result = sub_1000D9F00();
  if (!v15)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v7 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_100002A50(0, &qword_100115330);
  result = sub_1000D9F00();
  if (!v14)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_100002A50(0, &qword_100117930);
  result = sub_1000D9F00();
  if (v13)
  {
    v9 = sub_1000DA310();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = sub_1000DA300();
    a2[3] = v9;
    result = sub_1000645CC(&qword_100117950, &type metadata accessor for NewsHeadlineScorerFactory);
    a2[4] = result;
    *a2 = v12;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_100064240@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = sub_1000D99A0();
  a1[4] = &protocol witness table for NoopFeedPersonalizerHeadlineScorer;
  sub_100064614(a1);
  return sub_1000D9990();
}

uint64_t sub_1000642A8()
{
  sub_1000D9F40();
  sub_100002A50(0, &qword_100117930);
  sub_1000DA070();
}

uint64_t sub_100064328()
{
  v0 = sub_1000DA0F0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D9F40();
  sub_100002A50(0, &qword_100117930);
  sub_1000DA070();

  sub_1000D9F40();
  sub_100002A50(0, &qword_100117938);
  sub_1000DA070();

  sub_1000D9F50();
  type metadata accessor for WidgetPersonalizationConfigurationManager();
  sub_1000DA060();

  (*(v1 + 104))(v4, enum case for Scope.singleton(_:), v0);
  sub_1000D9EA0();

  (*(v1 + 8))(v4, v0);
  sub_1000D9F40();
  sub_100002A50(0, &qword_100117940);
  sub_1000DA070();
}

uint64_t sub_10006457C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1000645CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_100064614(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10006467C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_100066C4C(0, &qword_100114B58, &type metadata accessor for WidgetQuote, &type metadata accessor for Optional);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v56 = &v54 - v6;
  sub_100066C4C(0, &qword_1001152B8, sub_100023694, &type metadata accessor for Optional);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v57 = &v54 - v9;
  v10 = sub_1000D9B40();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WidgetStock();
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v54 - v20;
  if (a1)
  {
    if (qword_100114108 != -1)
    {
      swift_once();
    }

    v22 = static Stock.compactPlaceholder;
  }

  else
  {
    if (qword_100114100 != -1)
    {
      swift_once();
    }

    v22 = static Stock.placeholder;
  }

  v23 = sub_100015294(v10, v22);
  (*(v11 + 16))(v14, v23, v10);
  v24 = *(v15 + 20);
  v25 = sub_1000D9450();
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v54 = v24;
  v27(&v21[v24], 1, 1, v25);
  v28 = *(v15 + 24);
  sub_10006F9D8(&v21[v28]);
  v29 = type metadata accessor for PreparedSparkline(0);
  v30 = *(*(v29 - 8) + 56);
  v55 = v28;
  v30(&v21[v28], 0, 1, v29);
  (*(v11 + 32))(v21, v14, v10);
  if (qword_100114120 != -1)
  {
    swift_once();
  }

  v31 = qword_100128ED8;
  sub_100023694(0);
  (*(*(v32 - 8) + 56))(v57, 1, 1, v32);
  sub_100065CB0(v21, v19);

  v33 = sub_1000D9AC0();
  v35 = v34;
  v36 = sub_1000D9B30();
  v38 = v37;
  sub_100065D14(v19);
  *a2 = v33;
  *(a2 + 8) = v35;
  *(a2 + 16) = v36;
  *(a2 + 24) = v38;
  *(a2 + 32) = sub_1000D9AF0();
  *(a2 + 40) = v39;
  *(a2 + 48) = sub_1000BA50C();
  *(a2 + 56) = v40 & 1;
  *(a2 + 64) = v41;
  *(a2 + 72) = v42;
  sub_100065CB0(v21, v19);
  sub_10009FCB4(v19, v58);
  v43 = v58[1];
  *(a2 + 80) = v58[0];
  *(a2 + 96) = v43;
  *(a2 + 112) = v59[0];
  *(a2 + 121) = *(v59 + 9);
  v44 = v56;
  sub_100066B5C(&v21[v54], v56, &qword_100114B58, &type metadata accessor for WidgetQuote);
  if ((*(v26 + 48))(v44, 1, v25) == 1)
  {
    sub_100066BDC(v44, &qword_100114B58, &type metadata accessor for WidgetQuote);
    v45 = 2;
    v46 = v57;
  }

  else
  {
    v47 = COERCE_DOUBLE(sub_1000D93D0());
    v49 = v48;
    (*(v26 + 8))(v44, v25);
    v46 = v57;
    if (v49)
    {
      v45 = 2;
    }

    else
    {
      v45 = v47 < 0.0;
    }
  }

  *(a2 + 137) = v45;
  v50 = type metadata accessor for DetailContentViewModel(0);
  *(a2 + v50[10]) = v31;
  sub_100066B5C(v46, a2 + v50[11], &qword_1001152B8, sub_100023694);
  sub_100066B5C(&v21[v55], a2 + v50[9], &qword_100114B60, type metadata accessor for PreparedSparkline);
  v51 = v50[12];
  sub_1000D9AD0();
  sub_100066BDC(v46, &qword_1001152B8, sub_100023694);
  sub_100065D14(v21);
  v52 = sub_1000D8F30();
  return (*(*(v52 - 8) + 56))(a2 + v51, 0, 1, v52);
}

uint64_t sub_100064CB4()
{
  v0 = sub_1000D9C40();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000D9B40();
  sub_1000152CC(v5, static Stock.placeholder);
  sub_100015294(v5, static Stock.placeholder);
  (*(v1 + 104))(v4, enum case for StockType.equity(_:), v0);
  return sub_1000D9B10();
}

uint64_t sub_100064E5C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000D9C40();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000D9B40();
  sub_1000152CC(v8, a2);
  sub_100015294(v8, a2);
  (*(v4 + 104))(v7, enum case for StockType.equity(_:), v3);
  return sub_1000D9B10();
}

uint64_t sub_100065030(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_1000D9B40();

  return sub_100015294(v3, a2);
}

uint64_t sub_1000650A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1000D9B40();
  v6 = sub_100015294(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_100065140()
{
  sub_100066C4C(0, &qword_1001152F0, &type metadata accessor for Date, &type metadata accessor for Optional);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v12 - v2;
  v4 = sub_1000D9480();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000D9450();
  sub_1000152CC(v9, qword_100128EC0);
  sub_100015294(v9, qword_100128EC0);
  (*(v5 + 104))(v8, enum case for ExchangeStatus.open(_:), v4);
  v10 = sub_1000D9090();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  return sub_1000D9430();
}

uint64_t sub_10006531C()
{
  v21 = sub_1000D90C0();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = &_swiftEmptyArrayStorage;
  v4 = 10;
  sub_10007BCEC(0, 10, 0);
  v5 = v23;
  v20 = (v0 + 8);
  do
  {
    sub_1000D90B0();
    v6 = sub_1000D90A0();
    v8 = v7;
    (*v20)(v3, v21);
    v22 = 0;
    swift_stdlib_random();
    v24._countAndFlagsBits = 46;
    v24._object = 0xE100000000000000;
    v9 = sub_1000DBA30(v24, (v22 >> 62) + 3);
    v11 = v10;
    v22 = 0;
    swift_stdlib_random();
    v25._countAndFlagsBits = 46;
    v25._object = 0xE100000000000000;
    result = sub_1000DBA30(v25, (v22 >> 63) | 2);
    v23 = v5;
    v15 = *(v5 + 16);
    v14 = *(v5 + 24);
    if (v15 >= v14 >> 1)
    {
      v19 = result;
      v17 = v13;
      sub_10007BCEC((v14 > 1), v15 + 1, 1);
      v13 = v17;
      result = v19;
      v5 = v23;
    }

    *(v5 + 16) = v15 + 1;
    v16 = (v5 + 48 * v15);
    v16[4] = v6;
    v16[5] = v8;
    v16[6] = v9;
    v16[7] = v11;
    v16[8] = result;
    v16[9] = v13;
    --v4;
  }

  while (v4);
  qword_100128ED8 = v5;
  return result;
}

uint64_t sub_100065504()
{
  sub_100066C4C(0, &qword_100114B58, &type metadata accessor for WidgetQuote, &type metadata accessor for Optional);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v42 - v2;
  sub_100066C4C(0, &qword_1001152B8, sub_100023694, &type metadata accessor for Optional);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v42 - v6;
  v8 = type metadata accessor for WidgetStock();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v42 - v13;
  v15 = type metadata accessor for DetailContentViewModel(0);
  sub_1000152CC(v15, qword_100128EE0);
  v16 = sub_100015294(v15, qword_100128EE0);
  if (qword_100114130 != -1)
  {
    swift_once();
  }

  v17 = sub_100015294(v8, qword_100128EF8);
  sub_100065CB0(v17, v14);
  if (qword_100114120 != -1)
  {
    swift_once();
  }

  v18 = qword_100128ED8;
  sub_100023694(0);
  v20 = *(*(v19 - 8) + 56);
  v43 = v7;
  v20(v7, 1, 1, v19);
  sub_100065CB0(v14, v12);
  v42 = v18;

  v21 = sub_1000D9AC0();
  v23 = v22;
  v24 = sub_1000D9B30();
  v26 = v25;
  sub_100065D14(v12);
  *v16 = v21;
  *(v16 + 8) = v23;
  *(v16 + 16) = v24;
  *(v16 + 24) = v26;
  *(v16 + 32) = sub_1000D9AF0();
  *(v16 + 40) = v27;
  *(v16 + 48) = sub_1000BA50C();
  *(v16 + 56) = v28 & 1;
  *(v16 + 64) = v29;
  *(v16 + 72) = v30;
  sub_100065CB0(v14, v12);
  sub_10009FCB4(v12, v44);
  v31 = v44[1];
  *(v16 + 80) = v44[0];
  *(v16 + 96) = v31;
  *(v16 + 112) = v45[0];
  *(v16 + 121) = *(v45 + 9);
  sub_100066B5C(&v14[*(v8 + 20)], v3, &qword_100114B58, &type metadata accessor for WidgetQuote);
  v32 = sub_1000D9450();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v3, 1, v32) == 1)
  {
    sub_100066BDC(v3, &qword_100114B58, &type metadata accessor for WidgetQuote);
    v34 = 2;
  }

  else
  {
    v35 = COERCE_DOUBLE(sub_1000D93D0());
    v37 = v36;
    (*(v33 + 8))(v3, v32);
    if (v37)
    {
      v34 = 2;
    }

    else
    {
      v34 = v35 < 0.0;
    }
  }

  *(v16 + 137) = v34;
  v38 = v43;
  *(v16 + v15[10]) = v42;
  sub_100066B5C(v38, v16 + v15[11], &qword_1001152B8, sub_100023694);
  sub_100066B5C(&v14[*(v8 + 24)], v16 + v15[9], &qword_100114B60, type metadata accessor for PreparedSparkline);
  v39 = v15[12];
  sub_1000D9AD0();
  sub_100066BDC(v38, &qword_1001152B8, sub_100023694);
  sub_100065D14(v14);
  v40 = sub_1000D8F30();
  return (*(*(v40 - 8) + 56))(v16 + v39, 0, 1, v40);
}

uint64_t sub_1000659E4()
{
  sub_100066C4C(0, &qword_100114B58, &type metadata accessor for WidgetQuote, &type metadata accessor for Optional);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v18 - v2;
  v4 = sub_1000D9B40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WidgetStock();
  sub_1000152CC(v9, qword_100128EF8);
  v10 = sub_100015294(v9, qword_100128EF8);
  if (qword_100114110 != -1)
  {
    swift_once();
  }

  v11 = sub_100015294(v4, static Stock.largeComplicationPlaceholder);
  (*(v5 + 16))(v8, v11, v4);
  if (qword_100114118 != -1)
  {
    swift_once();
  }

  v12 = sub_1000D9450();
  v13 = sub_100015294(v12, qword_100128EC0);
  v14 = *(v12 - 8);
  (*(v14 + 16))(v3, v13, v12);
  (*(v14 + 56))(v3, 0, 1, v12);
  v15 = *(v9 + 24);
  v16 = type metadata accessor for PreparedSparkline(0);
  (*(*(v16 - 8) + 56))(v10 + v15, 1, 1, v16);
  (*(v5 + 32))(v10, v8, v4);
  return sub_10005A100(v3, v10 + *(v9 + 20));
}

uint64_t sub_100065CB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetStock();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100065D14(uint64_t a1)
{
  v2 = type metadata accessor for WidgetStock();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100065D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v22[0] = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1000DBE80();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v22 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  v16 = __chkstk_darwin(v15);
  v18 = v22 - v17;
  (*(v9 + 16))(v12, a1, v8, v16);
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v9 + 8))(v12, v8);
    v19 = *(a2 + 60);
    v20 = swift_getAssociatedTypeWitness();
    return (*(*(v20 - 8) + 16))(a3, v22[1] + v19, v20);
  }

  else
  {
    (*(v13 + 32))(v18, v12, AssociatedTypeWitness);
    sub_1000D8D30();
    return (*(v13 + 8))(v18, AssociatedTypeWitness);
  }
}

uint64_t sub_100065FDC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v3 || (sub_1000DC360() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F686563616C70 && a2 == 0xEB00000000726564)
  {

    return 1;
  }

  else
  {
    v6 = sub_1000DC360();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1000660AC(char a1)
{
  if (a1)
  {
    return 0x6C6F686563616C70;
  }

  else
  {
    return 1702060386;
  }
}

uint64_t sub_1000660E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(*(a4 + 24) + 8);
  if (sub_1000DB8D0())
  {
    swift_getAssociatedTypeWitness();
    v9 = *(type metadata accessor for NilPlaceholderFormatStyle() + 60);
    v10 = *(a7 + 8);
    v11 = sub_1000DB8D0();
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1000661B0(void *a1, uint64_t a2)
{
  v18 = *(a2 + 16);
  v3 = v18;
  v17 = *(a2 + 24);
  v15 = a2;
  v16 = *(a2 + 40);
  v19 = v17;
  v20 = v16;
  type metadata accessor for NilPlaceholderFormatStyle.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_1000DC300();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  v9 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_1000DC480();
  LOBYTE(v18) = 0;
  v10 = *(v17 + 16);
  *&v17 = v3;
  v11 = v21;
  sub_1000DC2F0();
  if (!v11)
  {
    v12 = *(v15 + 60);
    LOBYTE(v18) = 1;
    swift_getAssociatedTypeWitness();
    sub_1000DC2F0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1000663B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(*(a2 + 24) + 24);
  sub_1000DB880();
  v5 = *(a2 + 60);
  swift_getAssociatedTypeWitness();
  v6 = *(a2 + 48);
  return sub_1000DB880();
}

Swift::Int sub_10006642C(uint64_t a1)
{
  sub_1000DC420();
  sub_1000663B0(v3, a1);
  return sub_1000DC460();
}

uint64_t sub_100066474@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v44 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = *(AssociatedTypeWitness - 8);
  v13 = *(v43 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v45 = &v41 - v14;
  v48 = *(a2 - 8);
  v15 = *(v48 + 64);
  __chkstk_darwin(v16);
  v52 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a2;
  v55 = a3;
  v56 = a4;
  v57 = a5;
  v58 = a6;
  type metadata accessor for NilPlaceholderFormatStyle.CodingKeys();
  swift_getWitnessTable();
  v53 = sub_1000DC240();
  v47 = *(v53 - 8);
  v18 = *(v47 + 64);
  __chkstk_darwin(v53);
  v20 = &v41 - v19;
  v49 = a2;
  v50 = a3;
  v54 = a2;
  v55 = a3;
  v46 = a4;
  v56 = a4;
  v57 = a5;
  v58 = a6;
  v21 = type metadata accessor for NilPlaceholderFormatStyle();
  v42 = *(v21 - 8);
  v22 = *(v42 + 64);
  __chkstk_darwin(v21);
  v24 = &v41 - v23;
  v25 = a1[4];
  sub_100006C7C(a1, a1[3]);
  v26 = v59;
  sub_1000DC470();
  if (v26)
  {
    return sub_100006D0C(a1);
  }

  v27 = v24;
  v41 = v21;
  v29 = v47;
  v28 = v48;
  v59 = a1;
  v30 = AssociatedTypeWitness;
  LOBYTE(v54) = 0;
  v31 = *(v50 + 1);
  v32 = v52;
  v33 = v49;
  sub_1000DC220();
  v34 = *(v28 + 32);
  v50 = v27;
  v34(v27, v32, v33);
  LOBYTE(v54) = 1;
  v35 = v45;
  v36 = v30;
  sub_1000DC220();
  (*(v29 + 8))(v20, v53);
  v37 = v41;
  v38 = v50;
  (*(v43 + 32))(&v50[*(v41 + 60)], v35, v36);
  v39 = v42;
  (*(v42 + 16))(v44, v38, v37);
  sub_100006D0C(v59);
  return (*(v39 + 8))(v38, v37);
}

BOOL sub_1000668EC(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  v7 = a3[6];
  return static StockChartHighlightStyle.__derived_enum_equals(_:_:)(*a1, *a2);
}

Swift::Int sub_100066908(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  return StockChartHighlightStyle.hashValue.getter(*v1);
}

void sub_100066920(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  StockChartHighlightStyle.hash(into:)(a1, *v2);
}

Swift::Int sub_100066938(uint64_t a1, void *a2)
{
  sub_1000DC420();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  StockChartHighlightStyle.hash(into:)(v10, *v2);
  return sub_1000DC460();
}

uint64_t sub_100066988(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  return sub_1000660AC(*v1);
}

uint64_t sub_1000669A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  v9 = a3[6];
  result = sub_100065FDC(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1000669D8@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  result = sub_1000673D8();
  *a2 = result;
  return result;
}

uint64_t sub_100066A10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_100066A64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

Swift::Int sub_100066B04(uint64_t a1, uint64_t a2)
{
  sub_1000DC420();
  sub_1000663B0(v4, a2);
  return sub_1000DC460();
}

uint64_t sub_100066B5C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_100066C4C(0, a3, a4, &type metadata accessor for Optional);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100066BDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_100066C4C(0, a2, a3, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_100066C4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100066CB8(uint64_t a1)
{
  v2 = *(a1 + 16);
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_100066D60(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(AssociatedTypeWitness - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_100066FD8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
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

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t sub_1000673E0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 48) = 1;
  *(a3 + 56) = 1;
  v4 = objc_opt_self();
  *(a3 + 64) = [v4 labelColor];
  *(a3 + 72) = [v4 systemBackgroundColor];
  *(a3 + 80) = [objc_allocWithZone(UIColor) initWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:1.0];
  *(a3 + 88) = [v4 separatorColor];
  *(a3 + 96) = [v4 separatorColor];
  *(a3 + 104) = [objc_allocWithZone(UIColor) initWithRed:0.882352941 green:0.960784314 blue:0.905882353 alpha:1.0];
  *(a3 + 112) = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.490196078 blue:0.105882353 alpha:1.0];
  *(a3 + 120) = [objc_allocWithZone(UIColor) initWithRed:0.203921569 green:0.780392157 blue:0.349019608 alpha:1.0];
  *(a3 + 128) = [objc_allocWithZone(UIColor) initWithRed:0.247058824 green:0.941176471 blue:0.419607843 alpha:1.0];
  *(a3 + 136) = [objc_allocWithZone(UIColor) initWithRed:0.870588235 green:0.0274509804 blue:0.109803922 alpha:1.0];
  *(a3 + 144) = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.231372549 blue:0.188235294 alpha:1.0];
  *(a3 + 152) = [objc_allocWithZone(UIColor) initWithRed:0.231372549 green:0.588235294 blue:0.97254902 alpha:1.0];
  *(a3 + 160) = [v4 secondaryLabelColor];
  *(a3 + 168) = [v4 tertiaryLabelColor];
  *(a3 + 176) = [v4 secondaryLabelColor];
  *(a3 + 184) = [objc_allocWithZone(UIColor) initWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:0.14];
  *(a3 + 192) = [objc_allocWithZone(UIColor) initWithRed:0.298039216 green:0.850980392 blue:0.392156863 alpha:1.0];
  *(a3 + 200) = [objc_allocWithZone(UIColor) initWithRed:0.352941176 green:0.784313725 blue:0.980392157 alpha:1.0];
  *(a3 + 208) = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.592156863 blue:1.0 alpha:1.0];
  *(a3 + 216) = [objc_allocWithZone(UIColor) initWithRed:0.552941176 green:0.294117647 blue:1.0 alpha:1.0];
  *(a3 + 224) = [objc_allocWithZone(UIColor) initWithRed:0.407843137 green:0.0 blue:1.0 alpha:1.0];
  *(a3 + 232) = 1;
  *(a3 + 240) = [objc_allocWithZone(UIColor) initWithWhite:0.670588235 alpha:1.0];
  v5 = [v4 whiteColor];
  v6 = [v5 colorWithAlphaComponent:0.25];

  *(a3 + 248) = v6;
  v7 = [v4 whiteColor];
  v8 = [v7 colorWithAlphaComponent:0.25];

  *(a3 + 256) = v8;
  v9 = [v4 whiteColor];
  v10 = [v9 colorWithAlphaComponent:0.6];

  *(a3 + 264) = v10;
  v11 = [v4 grayColor];
  v12 = [v11 colorWithAlphaComponent:0.3];

  *(a3 + 272) = v12;
  *(a3 + 280) = [objc_allocWithZone(UIColor) initWithRed:0.365 green:0.365 blue:0.365 alpha:1.0];
  *(a3 + 288) = [v4 whiteColor];
  *(a3 + 296) = [v4 blackColor];
  *(a3 + 304) = [v4 secondaryLabelColor];
  *(a3 + 312) = [v4 secondarySystemBackgroundColor];
  *(a3 + 320) = [v4 secondaryLabelColor];
  *(a3 + 328) = [v4 labelColor];
  *(a3 + 336) = [v4 secondarySystemFillColor];
  *(a3 + 344) = [objc_allocWithZone(UIColor) initWithRed:0.305882353 green:0.305882353 blue:0.31372549 alpha:0.2];
  *(a3 + 352) = [objc_allocWithZone(UIColor) initWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:1.0];
  *(a3 + 360) = [objc_allocWithZone(UIColor) initWithRed:1.0 green:1.0 blue:1.0 alpha:0.3];
  *(a3 + 368) = [v4 secondaryLabelColor];
  *(a3 + 376) = [v4 labelColor];
  result = sub_100023738(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t sub_100067A74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 384))
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

uint64_t sub_100067ABC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 376) = 0;
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 384) = 1;
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

    *(result + 384) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_100067B70()
{
  v1 = *(v0 + 40);
  if (v1 && (v2 = [v1 horizontalSizeClass], v2 >= 2))
  {
    if (v2 == 2)
    {
      sub_100068510();
      return sub_1000DBE40();
    }

    else
    {
      result = sub_1000DC0D0();
      __break(1u);
    }
  }

  else
  {
    if (sub_1000DB5C0())
    {
      v3 = [objc_opt_self() currentDevice];
      v4 = [v3 userInterfaceIdiom];

      v5 = objc_opt_self();
      if (v4)
      {
        v6 = [v5 secondarySystemBackgroundColor];
      }

      else
      {
        v6 = [v5 systemBackgroundColor];
      }
    }

    else
    {
      v6 = [objc_opt_self() secondarySystemBackgroundColor];
    }

    return v6;
  }

  return result;
}

id sub_100067CC4()
{
  v1 = *(v0 + 40);
  if (v1 && (v2 = [v1 horizontalSizeClass], v2 >= 2))
  {
    if (v2 != 2)
    {
      result = sub_1000DC0D0();
      __break(1u);
      return result;
    }

    v4 = objc_opt_self();
    v5 = &selRef_systemBackgroundColor;
  }

  else
  {
    v3 = sub_1000DB5C0();
    v4 = objc_opt_self();
    v5 = &selRef_systemBackgroundColor;
    if (v3)
    {
      v5 = &selRef_clearColor;
    }
  }

  v6 = [v4 *v5];

  return v6;
}

id sub_100067DB4()
{
  v1 = *(v0 + 40);
  if (v1 && (v2 = [v1 horizontalSizeClass], v2 >= 2))
  {
    if (v2 == 2)
    {
      sub_100068510();
      return sub_1000DBE40();
    }

    else
    {
      result = sub_1000DC0D0();
      __break(1u);
    }
  }

  else
  {
    v3 = sub_1000DB5C0();
    v4 = objc_opt_self();
    if (v3)
    {
      v5 = [v4 clearColor];
    }

    else
    {
      v5 = [v4 secondarySystemBackgroundColor];
    }

    return v5;
  }

  return result;
}

id sub_100067EE8()
{
  v0 = [objc_opt_self() systemBackgroundColor];

  return v0;
}

id sub_100067F28()
{
  v0 = [objc_opt_self() systemGroupedBackgroundColor];

  return v0;
}

id sub_100067F6C()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = objc_opt_self();
  v3 = &selRef_systemBackgroundColor;
  if (v1)
  {
    v3 = &selRef_secondarySystemBackgroundColor;
  }

  v4 = [v2 *v3];

  return v4;
}

id sub_100068000()
{
  if (sub_1000DB5C0())
  {
    v0 = [objc_opt_self() clearColor];

    return v0;
  }

  else
  {

    return sub_100067B70();
  }
}

id sub_100068078(uint64_t a1, uint64_t a2, SEL *a3, SEL *a4)
{
  sub_1000DB5C0();
  v6 = sub_1000DB5C0();
  v7 = objc_opt_self();
  if (v6)
  {
    v8 = a3;
  }

  else
  {
    v8 = a4;
  }

  v9 = [v7 *v8];

  return v9;
}

uint64_t sub_1000680E0()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_100006C7C(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_100068138()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_100006C7C(v0, v1);
  return (*(v2 + 24))(v1, v2);
}

id sub_10006818C()
{
  v0 = [objc_opt_self() whiteColor];

  return v0;
}

id sub_1000681F8()
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v1 = 112;
  }

  else
  {
    v2 = UIAccessibilityDarkerSystemColorsEnabled();
    v1 = 120;
    if (v2)
    {
      v1 = 128;
    }
  }

  v3 = *(v0 + v1);

  return v3;
}

id sub_100068244()
{
  v1 = UIAccessibilityDarkerSystemColorsEnabled();
  v2 = 144;
  if (v1)
  {
    v2 = 136;
  }

  v3 = *(v0 + v2);

  return v3;
}

id sub_100068280()
{
  v1 = UIAccessibilityDarkerSystemColorsEnabled();
  v2 = 120;
  if (v1)
  {
    v2 = 128;
  }

  v3 = *(v0 + v2);

  return v3;
}

id sub_1000682F8()
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v1 = UIAccessibilityDarkerSystemColorsEnabled();
    v2 = 120;
    if (v1)
    {
      v2 = 128;
    }
  }

  else
  {
    v2 = 192;
  }

  v3 = *(v0 + v2);

  return v3;
}

uint64_t sub_100068374()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_100006C7C(v0, v1);
  return (*(v2 + 32))(v1, v2);
}

id sub_1000683E0()
{
  v0 = sub_1000DB5C0();
  v1 = objc_opt_self();
  v2 = &selRef_tertiarySystemFillColor;
  if ((v0 & 1) == 0)
  {
    v2 = &selRef_secondarySystemFillColor;
  }

  v3 = [v1 *v2];

  return v3;
}

id sub_100068464()
{
  v0 = [objc_opt_self() secondarySystemBackgroundColor];

  return v0;
}

unint64_t sub_100068510()
{
  result = qword_100117A68;
  if (!qword_100117A68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100117A68);
  }

  return result;
}

uint64_t sub_100068598(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1000685E0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100068630(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[2] = a5;
  v15[1] = a4;
  sub_10006A1D0(0, &qword_100117B00, sub_10006A17C, &type metadata for WidgetSectionConfigRecord.SymbolConfiguration.Article.CodingKeys, &type metadata accessor for KeyedEncodingContainer);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v11 = v15 - v10;
  v12 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_10006A17C();
  sub_1000DC480();
  v17 = 0;
  v13 = v15[3];
  sub_1000DC2B0();
  if (!v13)
  {
    v16 = 1;
    sub_1000DC270();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1000687CC(void *a1, uint64_t a2)
{
  sub_10006A1D0(0, &qword_100117AC0, sub_100069EF8, &type metadata for WidgetSectionConfigRecord.SymbolConfiguration.CodingKeys, &type metadata accessor for KeyedEncodingContainer);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_100069EF8();
  sub_1000DC480();
  v12[1] = a2;
  sub_100069F4C();
  sub_100069FF0(&qword_100117AC8, sub_10006A05C);
  sub_1000DC2F0();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10006897C()
{
  if (*v0)
  {
    result = 0x65764F656C746974;
  }

  else
  {
    result = 0x49656C6369747261;
  }

  *v0;
  return result;
}

uint64_t sub_1000689C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x49656C6369747261 && a2 == 0xE900000000000044;
  if (v6 || (sub_1000DC360() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65764F656C746974 && a2 == 0xED00006564697272)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000DC360();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100068AB4(uint64_t a1)
{
  v2 = sub_10006A17C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100068AF0(uint64_t a1)
{
  v2 = sub_10006A17C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100068B2C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100069500(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_100068B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001000E8DA0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1000DC360();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_100068C2C(uint64_t a1)
{
  v2 = sub_100069EF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100068C68(uint64_t a1)
{
  v2 = sub_100069EF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100068CA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_100069714(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100068CEC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = 0x4E64726F6365725FLL;
  }

  if (v3)
  {
    v5 = 0xEB00000000656D61;
  }

  else
  {
    v5 = 0x80000001000E7B90;
  }

  if (*a2)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v6 = 0x4E64726F6365725FLL;
  }

  if (*a2)
  {
    v7 = 0x80000001000E7B90;
  }

  else
  {
    v7 = 0xEB00000000656D61;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000DC360();
  }

  return v9 & 1;
}

Swift::Int sub_100068DA0()
{
  v1 = *v0;
  sub_1000DC420();
  sub_1000DB9F0();

  return sub_1000DC460();
}

uint64_t sub_100068E30()
{
  *v0;
  sub_1000DB9F0();
}

Swift::Int sub_100068EAC()
{
  v1 = *v0;
  sub_1000DC420();
  sub_1000DB9F0();

  return sub_1000DC460();
}

uint64_t sub_100068F38@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100108C48;
  v8._object = v3;
  v5 = sub_1000DC170(v4, v8);

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

void sub_100068F98(unint64_t *a1@<X8>)
{
  v2 = 0x80000001000E7B90;
  v3 = 0x4E64726F6365725FLL;
  if (*v1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v2 = 0xEB00000000656D61;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_100068FE4()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0x4E64726F6365725FLL;
  }

  *v0;
  return result;
}

uint64_t sub_10006902C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_100108C48;
  v9._object = a2;
  v6 = sub_1000DC170(v5, v9);

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

uint64_t sub_10006909C(uint64_t a1)
{
  v2 = sub_100069DF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000690D8(uint64_t a1)
{
  v2 = sub_100069DF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100069114(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v32 = a4;
  v33 = a2;
  v5 = sub_1000DB9A0();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000D8DA0();
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006A1D0(0, &qword_100117AD8, sub_100069DF0, &type metadata for WidgetSectionConfigRecord.CodingKeys, &type metadata accessor for KeyedEncodingContainer);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  v18 = &v29 - v17;
  v19 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_100069DF0();
  sub_1000DC480();
  v38 = 0;
  v20 = v35;
  sub_1000DC2B0();
  if (v20)
  {
    return (*(v15 + 8))(v18, v14);
  }

  v35 = v8;
  v21 = sub_1000D8DE0();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  sub_1000D8DD0();
  (*(v30 + 104))(v12, enum case for JSONEncoder.DateEncodingStrategy.iso8601(_:), v31);
  sub_1000D8DB0();
  v36 = v32;
  sub_100069E44();
  sub_10006A0B0(&qword_100117AE0, sub_10006A128);

  v25 = sub_1000D8DC0();
  v27 = v26;

  sub_1000DB990();
  result = sub_1000DB970();
  if (v28)
  {
    v37 = 1;
    sub_1000DC2B0();
    (*(v15 + 8))(v18, v14);
    sub_10003DB6C(v25, v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000694B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100069908(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_100069500(uint64_t *a1)
{
  sub_10006A1D0(0, &qword_100117AF0, sub_10006A17C, &type metadata for WidgetSectionConfigRecord.SymbolConfiguration.Article.CodingKeys, &type metadata accessor for KeyedDecodingContainer);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v8 = &v11 - v7;
  v9 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_10006A17C();
  sub_1000DC470();
  if (!v1)
  {
    v13 = 0;
    v9 = sub_1000DC1E0();
    v12 = 1;
    sub_1000DC1A0();
    (*(v5 + 8))(v8, v4);
  }

  sub_100006D0C(a1);
  return v9;
}

void *sub_100069714(uint64_t *a1)
{
  sub_10006A1D0(0, &qword_100117A98, sub_100069EF8, &type metadata for WidgetSectionConfigRecord.SymbolConfiguration.CodingKeys, &type metadata accessor for KeyedDecodingContainer);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v8 = v13 - v7;
  v9 = a1[4];
  v10 = sub_100006C7C(a1, a1[3]);
  sub_100069EF8();
  v11 = v10;
  sub_1000DC470();
  if (!v1)
  {
    sub_100069F4C();
    sub_100069FF0(&qword_100117AB0, sub_100069F9C);
    sub_1000DC220();
    (*(v5 + 8))(v8, v4);
    v11 = v13[1];
  }

  sub_100006D0C(a1);
  return v11;
}

uint64_t sub_100069908(uint64_t *a1)
{
  v2 = sub_1000D8D50();
  v35 = *(v2 - 8);
  v36 = v2;
  v3 = *(v35 + 64);
  __chkstk_darwin(v2);
  v37 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000DB9A0();
  v39 = *(v5 - 8);
  v6 = *(v39 + 64);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006A1D0(0, &qword_100117A70, sub_100069DF0, &type metadata for WidgetSectionConfigRecord.CodingKeys, &type metadata accessor for KeyedDecodingContainer);
  v10 = v9;
  v38 = *(v9 - 8);
  v11 = *(v38 + 64);
  __chkstk_darwin(v9);
  v13 = &v31 - v12;
  v14 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_100069DF0();
  v15 = v40;
  sub_1000DC470();
  if (v15)
  {
    return sub_100006D0C(a1);
  }

  v16 = v8;
  v17 = v38;
  v18 = v39;
  v40 = v5;
  v43 = 0;
  sub_1000DC1D0();
  if (v42)
  {
    v19 = v41;
  }

  else
  {
    v19 = 0x676E697373696DLL;
  }

  LOBYTE(v41) = 1;
  v34 = v10;
  v20 = sub_1000DC1A0();
  v33 = v19;
  v23 = a1;
  if (!v21)
  {
    goto LABEL_14;
  }

  v24 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v24 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

LABEL_14:
    sub_100033928(_swiftEmptyArrayStorage);
    (*(v17 + 8))(v13, v34);
    goto LABEL_15;
  }

  v32 = v13;
  sub_1000DB990();
  v31 = sub_1000DB960();
  v26 = v25;
  result = (*(v18 + 8))(v16, v40);
  if (v26 >> 60 != 15)
  {

    v27 = sub_1000D8D90();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    sub_1000D8D80();
    (*(v35 + 104))(v37, enum case for JSONDecoder.DateDecodingStrategy.iso8601(_:), v36);
    sub_1000D8D60();
    sub_100069E44();
    sub_10006A0B0(&qword_100117A88, sub_100069EA4);
    v30 = v31;
    sub_1000D8D70();
    (*(v17 + 8))(v32, v34);

    sub_10003F0E4(v30, v26);
    v23 = a1;
LABEL_15:
    sub_100006D0C(v23);
    return v33;
  }

  __break(1u);
  return result;
}

unint64_t sub_100069DF0()
{
  result = qword_100117A78;
  if (!qword_100117A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117A78);
  }

  return result;
}

void sub_100069E44()
{
  if (!qword_100117A80)
  {
    v0 = sub_1000DB860();
    if (!v1)
    {
      atomic_store(v0, &qword_100117A80);
    }
  }
}

unint64_t sub_100069EA4()
{
  result = qword_100117A90;
  if (!qword_100117A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117A90);
  }

  return result;
}

unint64_t sub_100069EF8()
{
  result = qword_100117AA0;
  if (!qword_100117AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117AA0);
  }

  return result;
}

void sub_100069F4C()
{
  if (!qword_100117AA8)
  {
    v0 = sub_1000DBBB0();
    if (!v1)
    {
      atomic_store(v0, &qword_100117AA8);
    }
  }
}

unint64_t sub_100069F9C()
{
  result = qword_100117AB8;
  if (!qword_100117AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117AB8);
  }

  return result;
}

uint64_t sub_100069FF0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100069F4C();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10006A05C()
{
  result = qword_100117AD0;
  if (!qword_100117AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117AD0);
  }

  return result;
}

uint64_t sub_10006A0B0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100069E44();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10006A128()
{
  result = qword_100117AE8;
  if (!qword_100117AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117AE8);
  }

  return result;
}

unint64_t sub_10006A17C()
{
  result = qword_100117AF8;
  if (!qword_100117AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117AF8);
  }

  return result;
}

void sub_10006A1D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_10006A274()
{
  result = qword_100117B08;
  if (!qword_100117B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117B08);
  }

  return result;
}

unint64_t sub_10006A2CC()
{
  result = qword_100117B10;
  if (!qword_100117B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117B10);
  }

  return result;
}

unint64_t sub_10006A324()
{
  result = qword_100117B18;
  if (!qword_100117B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117B18);
  }

  return result;
}

unint64_t sub_10006A37C()
{
  result = qword_100117B20;
  if (!qword_100117B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117B20);
  }

  return result;
}

unint64_t sub_10006A3D4()
{
  result = qword_100117B28;
  if (!qword_100117B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117B28);
  }

  return result;
}

unint64_t sub_10006A42C()
{
  result = qword_100117B30;
  if (!qword_100117B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117B30);
  }

  return result;
}

unint64_t sub_10006A484()
{
  result = qword_100117B38;
  if (!qword_100117B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117B38);
  }

  return result;
}

unint64_t sub_10006A4DC()
{
  result = qword_100117B40;
  if (!qword_100117B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117B40);
  }

  return result;
}

unint64_t sub_10006A534()
{
  result = qword_100117B48;
  if (!qword_100117B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117B48);
  }

  return result;
}

uint64_t sub_10006A598(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_10006A5BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_10006A5F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
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

uint64_t sub_10006A638(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_10006A6CC@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  sub_10006BAA0(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  sub_10006B808(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v30 - v17;
  *v18 = sub_1000DAC50();
  *(v18 + 1) = 0;
  v18[16] = 0;
  sub_10006BDD4(0, &qword_100117C00, sub_10006B8F8);
  sub_10006AA04(a1, &v18[*(v19 + 44)]);
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 1;
  *(v21 + 32) = 0;
  *(v21 + 40) = 0;
  v22 = &v18[*(v12 + 44)];
  *v22 = KeyPath;
  v22[1] = sub_10002B050;
  v22[2] = v21;
  *v10 = sub_1000DAC50();
  *(v10 + 1) = 0;
  v10[16] = 0;
  sub_10006BDD4(0, &qword_100117C08, sub_10006BB8C);
  sub_10006AF40(a1, &v10[*(v23 + 44)]);
  v24 = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = 0;
  *(v25 + 40) = 1;
  v26 = &v10[*(v4 + 44)];
  *v26 = v24;
  v26[1] = sub_10002B5D4;
  v26[2] = v25;
  sub_10006C120(v18, v15, sub_10006B808);
  sub_10006C120(v10, v7, sub_10006BAA0);
  v27 = v31;
  sub_10006C120(v15, v31, sub_10006B808);
  sub_10006B798();
  sub_10006C120(v7, v27 + *(v28 + 48), sub_10006BAA0);
  sub_10006BE40(v10, sub_10006BAA0);
  sub_10006BE40(v18, sub_10006B808);
  sub_10006BE40(v7, sub_10006BAA0);
  return sub_10006BE40(v15, sub_10006B808);
}

uint64_t sub_10006AA04@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for PriceChangeView();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10006BA6C(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v42 = &v39[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v41 = &v39[-v11];
  v12 = type metadata accessor for SymbolTrendView();
  v13 = *(*(v12 - 1) + 64);
  __chkstk_darwin(v12);
  v15 = &v39[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10006B9C4(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v39[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v22 = &v39[-v21];
  v23 = *a1;
  v40 = *a1;
  v24 = *(a1 + 8);
  v48 = *(a1 + 24);
  v49 = v24;
  KeyPath = swift_getKeyPath();
  *v15 = v23;
  *(v15 + 24) = *(a1 + 24);
  *(v15 + 8) = *(a1 + 8);
  v26 = v12[6];
  *&v15[v26] = swift_getKeyPath();
  sub_10006B92C(0, &qword_1001159E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v27 = v12[7];
  *&v15[v27] = swift_getKeyPath();
  sub_10006B92C(0, &qword_100116758, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v28 = &v15[v12[8]];
  *v28 = KeyPath;
  v28[8] = 0;
  sub_10006C0C4(&v49, &v45);
  sub_10006C0C4(&v48, &v45);
  sub_10006BD74(&qword_100117C38, type metadata accessor for SymbolTrendView);
  sub_1000DB2C0();
  sub_10006BE40(v15, type metadata accessor for SymbolTrendView);
  v29 = *(a1 + 104);
  v45 = *(a1 + 88);
  v46 = v29;
  v47[0] = *(a1 + 120);
  *(v47 + 9) = *(a1 + 129);
  *v6 = swift_getKeyPath();
  sub_10006B92C(0, &qword_100116650, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v30 = (v6 + *(v3 + 20));
  v31 = v46;
  *v30 = v45;
  v30[1] = v31;
  v30[2] = v47[0];
  *(v30 + 41) = *(v47 + 9);
  *(v6 + *(v3 + 24)) = v40;
  sub_10006BEFC(&v45, v44);
  sub_10006BD74(&qword_100117C28, type metadata accessor for PriceChangeView);
  v32 = v41;
  sub_1000DB2C0();
  sub_10006BE40(v6, type metadata accessor for PriceChangeView);
  sub_10006C120(v22, v19, sub_10006B9C4);
  v33 = v32;
  v34 = v42;
  sub_10006C120(v32, v42, sub_10006BA6C);
  v35 = v43;
  sub_10006C120(v19, v43, sub_10006B9C4);
  sub_10006B990(0);
  v37 = v35 + *(v36 + 48);
  *v37 = 0x4020000000000000;
  *(v37 + 8) = 0;
  sub_10006C120(v34, v35 + *(v36 + 64), sub_10006BA6C);
  sub_10006BE40(v33, sub_10006BA6C);
  sub_10006BE40(v22, sub_10006B9C4);
  sub_10006BE40(v34, sub_10006BA6C);
  return sub_10006BE40(v19, sub_10006B9C4);
}

uint64_t sub_10006AF40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10006BD0C(0);
  v5 = v4;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10006BCD8(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v33[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v33[-v14];
  sub_10006BC78();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v33[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v22 = &v33[-v21];
  v23 = *(a1 + 48);
  *&v34 = *(a1 + 40);
  *(&v34 + 1) = v23;
  sub_10006BEA0();
  sub_1000DB2C0();
  v24 = *(a1 + 104);
  v34 = *(a1 + 88);
  v35 = v24;
  v36[0] = *(a1 + 120);
  *(v36 + 9) = *(a1 + 129);
  LOBYTE(a1) = *a1;
  *v8 = swift_getKeyPath();
  sub_10006B92C(0, &qword_100116650, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v25 = type metadata accessor for PriceChangeView();
  v26 = (v8 + *(v25 + 20));
  v27 = v35;
  *v26 = v34;
  v26[1] = v27;
  v26[2] = v36[0];
  *(v26 + 41) = *(v36 + 9);
  *(v8 + *(v25 + 24)) = a1;
  KeyPath = swift_getKeyPath();
  v29 = (v8 + *(v5 + 36));
  *v29 = KeyPath;
  v29[1] = sub_10006B2C0;
  v29[2] = 0;
  sub_10006BEFC(&v34, v33);
  sub_10006BFD4();
  sub_1000DB2C0();
  sub_10006BE40(v8, sub_10006BD0C);
  sub_10006C120(v22, v19, sub_10006BC78);
  sub_10006C120(v15, v12, sub_10006BCD8);
  sub_10006C120(v19, a2, sub_10006BC78);
  sub_10006BBC0(0);
  v31 = a2 + *(v30 + 48);
  *v31 = 0x4020000000000000;
  *(v31 + 8) = 0;
  sub_10006C120(v12, a2 + *(v30 + 64), sub_10006BCD8);
  sub_10006BE40(v15, sub_10006BCD8);
  sub_10006BE40(v22, sub_10006BC78);
  sub_10006BE40(v12, sub_10006BCD8);
  return sub_10006BE40(v19, sub_10006BC78);
}

uint64_t sub_10006B2C0(uint64_t a1)
{
  v2 = sub_1000D9690();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v17 - v9;
  (*(v3 + 32))(&v17 - v9, a1, v2, v8);
  (*(v3 + 16))(v6, v10, v2);
  v11 = (*(v3 + 88))(v6, v2);
  if (v11 == enum case for PriceChangeDisplay.currency(_:))
  {
    (*(v3 + 8))(v10, v2);
    v12 = enum case for PriceChangeDisplay.percentage(_:);
    return (*(v3 + 104))(a1, v12, v2);
  }

  v13 = enum case for PriceChangeDisplay.percentage(_:);
  if (v11 == enum case for PriceChangeDisplay.percentage(_:))
  {
    v14 = v10;
    v15 = enum case for PriceChangeDisplay.currency(_:);
    (*(v3 + 8))(v14, v2);
    v12 = v15;
    return (*(v3 + 104))(a1, v12, v2);
  }

  if (v11 == enum case for PriceChangeDisplay.marketCapitalization(_:))
  {
    (*(v3 + 8))(v10, v2);
    v12 = v13;
    return (*(v3 + 104))(a1, v12, v2);
  }

  result = sub_1000DC350();
  __break(1u);
  return result;
}

uint64_t sub_10006B4C0()
{
  v1 = sub_1000DAE60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006B6D0();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 112);
  v16[6] = *(v0 + 96);
  v16[7] = v10;
  v16[8] = *(v0 + 128);
  v17 = *(v0 + 144);
  v11 = *(v0 + 48);
  v16[2] = *(v0 + 32);
  v16[3] = v11;
  v12 = *(v0 + 80);
  v16[4] = *(v0 + 64);
  v16[5] = v12;
  v13 = *(v0 + 16);
  v16[0] = *v0;
  v16[1] = v13;
  *v9 = sub_1000DAD00();
  *(v9 + 1) = 0x4000000000000000;
  v9[16] = 0;
  sub_10006BDD4(0, &qword_100117BF0, sub_10006B764);
  sub_10006A6CC(v16, &v9[*(v14 + 44)]);
  sub_1000DAE40();
  sub_10006BD74(&qword_100117BF8, sub_10006B6D0);
  sub_1000DB2A0();
  (*(v2 + 8))(v5, v1);
  return sub_10006BE40(v9, sub_10006B6D0);
}

void sub_10006B6D0()
{
  if (!qword_100117B50)
  {
    sub_10006B764(255);
    sub_10006BD74(&qword_100117BE8, sub_10006B764);
    v0 = sub_1000DB540();
    if (!v1)
    {
      atomic_store(v0, &qword_100117B50);
    }
  }
}

void sub_10006B798()
{
  if (!qword_100117B60)
  {
    sub_10006B808(255);
    sub_10006BAA0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100117B60);
    }
  }
}

void sub_10006B864(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_10006BD74(a4, a5);
    v8 = sub_1000DB4A0();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10006B92C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10006B9F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1000DA930();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_10006BAC0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_10006BF84(255, &qword_100115740, &type metadata for EdgeInsets, &type metadata accessor for _EnvironmentKeyTransformModifier);
    v4 = sub_1000DA930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10006BBF4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_10006BC78()
{
  if (!qword_100117BC0)
  {
    sub_1000DAEB0();
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_100117BC0);
    }
  }
}

uint64_t sub_10006BD74(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10006BDD4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000DA800();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10006BE40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10006BEA0()
{
  result = qword_100117C10;
  if (!qword_100117C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117C10);
  }

  return result;
}

uint64_t sub_10006BEFC(uint64_t a1, uint64_t a2)
{
  sub_10006BF84(0, &qword_100117C18, &type metadata for PriceChange, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10006BF84(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_10006BFD4()
{
  result = qword_100117C20;
  if (!qword_100117C20)
  {
    sub_10006BD0C(255);
    sub_10006BD74(&qword_100117C28, type metadata accessor for PriceChangeView);
    sub_10006BD74(&qword_100117C30, sub_10006BD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117C20);
  }

  return result;
}

uint64_t sub_10006C120(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10006C188()
{
  sub_10006B6D0();
  sub_10006BD74(&qword_100117BF8, sub_10006B6D0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10006C24C()
{
  v1 = v0;
  v2 = v0 + 2;
  v21 = v0 + 31;
  v22 = v0 + 10;
  v3 = v0[33];
  v4 = sub_10006CB68(v3);
  v6 = v5;
  v0[34] = v4;
  v0[35] = v5;
  sub_10006D000();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000DDD30;
  *(inited + 32) = 0xD000000000000019;
  v8 = inited + 32;
  *(inited + 40) = 0x80000001000E8960;
  *(inited + 48) = _swiftEmptyArrayStorage;
  sub_100033908(inited);
  swift_setDeallocating();
  sub_10006D0DC(v8);
  v9 = [objc_opt_self() ignoreCacheCachePolicy];
  v0[36] = v9;
  v10 = objc_allocWithZone(FCEdgeCacheHint);
  v11 = sub_1000DB910();
  v12 = sub_1000DB910();
  v13 = [v10 initWithGroupName:v11 cacheControlKey:v12];
  v1[37] = v13;

  v14 = v3[14];
  sub_10006D138(0, &qword_100115350, &type metadata accessor for _ContiguousArrayStorage);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000DDD30;
  *(v15 + 32) = v4;
  *(v15 + 40) = v6;

  isa = sub_1000DBB00().super.isa;
  v1[38] = isa;

  sub_10006D138(0, &qword_100114E28, &type metadata accessor for Array);
  v17 = sub_1000DB830().super.isa;
  v1[39] = v17;

  v1[2] = v1;
  v1[7] = v21;
  v1[3] = sub_10006C568;
  v18 = swift_continuation_init();
  sub_10006D18C();
  v1[17] = v19;
  v1[14] = v18;
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10006CCD8;
  v1[13] = &unk_10010ACD0;
  [v14 fetchRecordTreeWithRootIDs:isa branchKeysByRecordType:v17 cachePolicy:v9 edgeCacheHint:v13 completion:v22];

  return _swift_continuation_await(v2);
}