BOOL sub_1004923D4()
{
  v0 = type metadata accessor for Calendar.Component();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Calendar();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v24 - v18;
  Date.init()();
  static Calendar.current.getter();
  (*(v1 + 104))(v3, enum case for Calendar.Component.day(_:), v0);
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v1 + 8))(v3, v0);
  (*(v25 + 8))(v6, v26);
  sub_1000082B4(v12, v9, &unk_100AD4790);
  v20 = *(v14 + 48);
  if (v20(v9, 1, v13) == 1)
  {
    (*(v14 + 16))(v16, v19, v13);
    if (v20(v9, 1, v13) != 1)
    {
      sub_100004F84(v9, &unk_100AD4790);
    }
  }

  else
  {
    (*(v14 + 32))(v16, v9, v13);
  }

  sub_100067EB4(&qword_100AD2698, &type metadata accessor for Date);
  v21 = dispatch thunk of static Comparable.< infix(_:_:)();
  v22 = *(v14 + 8);
  v22(v16, v13);
  sub_100004F84(v12, &unk_100AD4790);
  v22(v19, v13);
  return (v21 & 1) == 0;
}

uint64_t sub_1004927E8()
{
  v0 = type metadata accessor for DateComponents();
  v32 = *(v0 - 8);
  v33 = v0;
  __chkstk_darwin(v0);
  v31 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Calendar();
  v28 = v2;
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v30 = v6;
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v26 - v12;
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  static Calendar.current.getter();
  Calendar.startOfDay(for:)();
  v16 = *(v3 + 8);
  v16(v5, v2);
  v27 = v16;
  static Calendar.current.getter();
  Date.init()();
  Calendar.startOfDay(for:)();
  v29 = *(v7 + 8);
  v29(v10, v6);
  v16(v5, v2);
  static Calendar.current.getter();
  sub_1000F24EC(&qword_100AD3BF0);
  v17 = type metadata accessor for Calendar.Component();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100940080;
  (*(v18 + 104))(v20 + v19, enum case for Calendar.Component.day(_:), v17);
  sub_10005FF80(v20);
  swift_setDeallocating();
  (*(v18 + 8))(v20 + v19, v17);
  swift_deallocClassInstance();
  v21 = v31;
  Calendar.dateComponents(_:from:to:)();

  v27(v5, v28);
  v22 = DateComponents.day.getter();
  (*(v32 + 8))(v21, v33);
  v24 = v29;
  v23 = v30;
  v29(v13, v30);
  v24(v15, v23);
  return v22;
}

uint64_t sub_100492BF0()
{
  v0 = type metadata accessor for Calendar();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Date();
  v4 = *(v24 - 8);
  v5 = __chkstk_darwin(v24);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v23 - v9;
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  v13 = [objc_allocWithZone(NSRelativeDateTimeFormatter) init];
  [v13 setUnitsStyle:0];
  [v13 setDateTimeStyle:0];
  static Calendar.current.getter();
  Calendar.startOfDay(for:)();
  v14 = *(v1 + 8);
  v14(v3, v0);
  static Calendar.current.getter();
  Date.init()();
  Calendar.startOfDay(for:)();
  v15 = *(v4 + 8);
  v16 = v7;
  v17 = v24;
  v15(v16, v24);
  v14(v3, v0);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v19 = Date._bridgeToObjectiveC()().super.isa;
  v20 = [v13 localizedStringForDate:isa relativeToDate:v19];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15(v10, v17);
  v15(v12, v17);
  return v21;
}

uint64_t sub_100492EAC@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v1 - 8);
  v31 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v29 = &v25 - v4;
  v30 = type metadata accessor for Calendar();
  v5 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DateComponents();
  v26 = *(v8 - 8);
  v27 = v8;
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  sub_1000F24EC(&qword_100AD3BF0);
  v11 = type metadata accessor for Calendar.Component();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100942000;
  v16 = v15 + v14;
  v17 = *(v12 + 104);
  v17(v16, enum case for Calendar.Component.year(_:), v11);
  v17(v16 + v13, enum case for Calendar.Component.month(_:), v11);
  v18 = v29;
  v17(v16 + 2 * v13, enum case for Calendar.Component.day(_:), v11);
  sub_10005FF80(v15);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  Calendar.dateComponents(_:from:)();

  v19 = *(v5 + 8);
  v20 = v30;
  v19(v7, v30);
  static Calendar.current.getter();
  Calendar.date(from:)();
  v19(v7, v20);
  v21 = v31;
  sub_1000082B4(v18, v31, &unk_100AD4790);
  v22 = type metadata accessor for Date();
  v23 = *(v22 - 8);
  result = (*(v23 + 48))(v21, 1, v22);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_100004F84(v18, &unk_100AD4790);
    (*(v26 + 8))(v10, v27);
    return (*(v23 + 32))(v28, v21, v22);
  }

  return result;
}

void *sub_1004932CC(void *a1, uint64_t a2, char a3)
{
  v6 = _s23YearAdaptiveFormatStyleVMa();
  __chkstk_darwin(v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Calendar();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v47 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  if ((a3 & 1) == 0 && (a1[2] < 2uLL || *(a2 + 16) < 2uLL))
  {
    return 0;
  }

  v46 = &v41 - v17;
  v48 = a1;

  sub_1006AD8DC(v18);

  sub_1004942A8(&v48);

  v19 = v48[2];
  if (!v19)
  {

    return 0;
  }

  v43 = v6;
  v44 = v14;
  v42 = v9;
  v21 = *(v14 + 16);
  v20 = v14 + 16;
  v22 = v48 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
  v23 = v46;
  v21(v46, v22, v13);
  v24 = &v22[*(v20 + 56) * (v19 - 1)];
  v25 = v47;
  v45 = v13;
  v21(v47, v24, v13);

  static Calendar.current.getter();
  LOBYTE(v22) = Calendar.isDate(_:inSameDayAs:)();
  (*(v10 + 8))(v12, v42);
  if (v22)
  {
    static Date.FormatStyle.TimeStyle.omitted.getter();
    static FormatStyleCapitalizationContext.standalone.getter();
    static Locale.autoupdatingCurrent.getter();
    static Calendar.autoupdatingCurrent.getter();
    static TimeZone.autoupdatingCurrent.getter();
    static Date.now.getter();
    sub_100067EB4(&qword_100AD1F88, _s23YearAdaptiveFormatStyleVMa);
    Date.formatted<A>(_:)();
    sub_1000FBBCC(v8);
    v26 = v45;
    v27 = *(v44 + 8);
    v27(v25, v45);
    v27(v23, v26);
    return v48;
  }

  else
  {
    if (qword_100AD04E0 != -1)
    {
      swift_once();
    }

    v42 = xmmword_100B305A0;
    sub_1000F24EC(&unk_100AD5B10);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100940050;
    static Date.FormatStyle.TimeStyle.omitted.getter();
    static FormatStyleCapitalizationContext.standalone.getter();
    static Locale.autoupdatingCurrent.getter();
    static Calendar.autoupdatingCurrent.getter();
    static TimeZone.autoupdatingCurrent.getter();
    static Date.now.getter();
    sub_100067EB4(&qword_100AD1F88, _s23YearAdaptiveFormatStyleVMa);
    v30 = v46;
    Date.formatted<A>(_:)();
    sub_1000FBBCC(v8);
    v31 = v48;
    v32 = v49;
    *(v29 + 56) = &type metadata for String;
    v33 = sub_100031B20();
    *(v29 + 64) = v33;
    *(v29 + 32) = v31;
    *(v29 + 40) = v32;
    static Date.FormatStyle.TimeStyle.omitted.getter();
    static FormatStyleCapitalizationContext.standalone.getter();
    static Locale.autoupdatingCurrent.getter();
    static Calendar.autoupdatingCurrent.getter();
    static TimeZone.autoupdatingCurrent.getter();
    static Date.now.getter();
    v34 = v47;
    Date.formatted<A>(_:)();
    sub_1000FBBCC(v8);
    v35 = v48;
    v36 = v49;
    *(v29 + 96) = &type metadata for String;
    *(v29 + 104) = v33;
    *(v29 + 72) = v35;
    *(v29 + 80) = v36;
    v37 = static String.localizedStringWithFormat(_:_:)();

    v38 = *(v44 + 8);
    v39 = v34;
    v40 = v45;
    v38(v39, v45);
    v38(v30, v40);
    return v37;
  }
}

uint64_t sub_100493894()
{
  v73 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v65 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v65 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  v75 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for Date.FormatStyle();
  v74 = *(v80 - 8);
  v3 = __chkstk_darwin(v80);
  v66 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v67 = &v65 - v6;
  v7 = __chkstk_darwin(v5);
  v77 = &v65 - v8;
  __chkstk_darwin(v7);
  v79 = &v65 - v9;
  v88 = type metadata accessor for Calendar.SearchDirection();
  v84 = *(v88 - 8);
  __chkstk_darwin(v88);
  v87 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v81 = *(v11 - 8);
  v12 = v81;
  __chkstk_darwin(v11);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Calendar.MatchingPolicy();
  v16 = *(v15 - 8);
  v82 = v15;
  v83 = v16;
  __chkstk_darwin(v15);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Calendar();
  v85 = *(v19 - 8);
  v86 = v19;
  __chkstk_darwin(v19);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v22 - 8);
  v24 = &v65 - v23;
  v90 = type metadata accessor for Date();
  v25 = *(v90 - 8);
  v26 = __chkstk_darwin(v90);
  v28 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v89 = &v65 - v29;
  static Calendar.current.getter();
  static Date.now.getter();
  (*(v16 + 104))(v18, enum case for Calendar.MatchingPolicy.nextTime(_:), v15);
  v30 = *(v12 + 104);
  v31 = v14;
  v32 = v11;
  v30(v14, enum case for Calendar.RepeatedTimePolicy.first(_:), v11);
  v33 = v84;
  v35 = v87;
  v34 = v88;
  (*(v84 + 104))(v87, enum case for Calendar.SearchDirection.forward(_:), v88);
  Calendar.date(bySettingHour:minute:second:of:matchingPolicy:repeatedTimePolicy:direction:)();
  (*(v33 + 8))(v35, v34);
  (*(v81 + 8))(v31, v32);
  (*(v83 + 8))(v18, v82);
  v36 = *(v25 + 8);
  v37 = v28;
  v38 = v90;
  v36(v37, v90);
  v39 = v21;
  v40 = v24;
  (*(v85 + 8))(v39, v86);
  result = (*(v25 + 48))(v24, 1, v38);
  if (result == 1)
  {
    goto LABEL_12;
  }

  v42 = v89;
  (*(v25 + 32))(v89, v40, v38);
  Date.timeIntervalSince1970.getter();
  v44 = v43;
  result = Date.timeIntervalSince1970.getter();
  v46 = v44 - v45;
  if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v46 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v46 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v47 = (v75 + 8);
  v48 = (v74 + 8);
  if (v46 > 604799)
  {
    v56 = v66;
    static FormatStyle<>.dateTime.getter();
    v57 = v76;
    static Date.FormatStyle.Symbol.Weekday.abbreviated.getter();
    v58 = v67;
    Date.FormatStyle.weekday(_:)();
    (*v47)(v57, v78);
    v59 = *v48;
    v60 = v80;
    (*v48)(v56, v80);
    v61 = v68;
    static Date.FormatStyle.Symbol.Month.abbreviated.getter();
    v62 = v77;
    Date.FormatStyle.month(_:)();
    (*(v69 + 8))(v61, v70);
    v59(v58, v60);
    v63 = v71;
    static Date.FormatStyle.Symbol.Day.defaultDigits.getter();
    v64 = v79;
    Date.FormatStyle.day(_:)();
    (*(v72 + 8))(v63, v73);
    v59(v62, v60);
    sub_100067EB4(&qword_100AD3CE8, &type metadata accessor for Date.FormatStyle);
    Date.formatted<A>(_:)();
    v59(v64, v60);
    v54 = v89;
    v55 = v90;
  }

  else
  {
    v49 = v77;
    static FormatStyle<>.dateTime.getter();
    v50 = v76;
    static Date.FormatStyle.Symbol.Weekday.wide.getter();
    v51 = v79;
    Date.FormatStyle.weekday(_:)();
    (*v47)(v50, v78);
    v52 = *v48;
    v53 = v80;
    (*v48)(v49, v80);
    sub_100067EB4(&qword_100AD3CE8, &type metadata accessor for Date.FormatStyle);
    Date.formatted<A>(_:)();
    v52(v51, v53);
    v54 = v42;
    v55 = v38;
  }

  v36(v54, v55);
  return v91;
}

void sub_1004942A8(void **a1)
{
  v2 = *(type metadata accessor for Date() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10020500C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_100494350(v5);
  *a1 = v3;
}

void sub_100494350(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for Date();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 2) = v5;
      }

      v7 = *(type metadata accessor for Date() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100494700(v8, v9, a1, v4);
      v6[2] = 0.0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10049447C(0, v2, 1, a1);
  }
}

void sub_10049447C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for Date();
  __chkstk_darwin(v8);
  v40 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v44 = &v30 - v11;
  v14 = __chkstk_darwin(v12);
  v43 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v41 = *(v13 + 16);
    v42 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v19 = (v16 + v17 * (a3 - 1));
    v37 = -v17;
    v38 = (v13 + 32);
    v20 = a1 - a3;
    v39 = v16;
    v31 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v35 = v19;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    while (1)
    {
      v22 = v43;
      v23 = v41;
      (v41)(v43, v21, v8, v14);
      v24 = v44;
      v23(v44, v19, v8);
      v25 = static Date.< infix(_:_:)();
      v26 = *v18;
      (*v18)(v24, v8);
      v26(v22, v8);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v36 + 1;
        v19 = &v35[v31];
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v27 = *v38;
      v28 = v40;
      (*v38)(v40, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v27(v19, v28, v8);
      v19 += v37;
      v21 += v37;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_100494700(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v122 = a1;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v125 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v133 = &v118 - v13;
  __chkstk_darwin(v14);
  v139 = &v118 - v15;
  v17 = __chkstk_darwin(v16);
  v138 = &v118 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v122;
    if (!*v122)
    {
      goto LABEL_136;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v112 = a4;
    }

    else
    {
LABEL_130:
      v112 = sub_100204C44(a4);
    }

    v113 = v6;
    v141 = v112;
    a4 = *(v112 + 2);
    if (a4 >= 2)
    {
      v114 = v10;
      v10 = a3;
      a3 = v114;
      while (*v10)
      {
        v115 = *&v112[16 * a4];
        v116 = v112;
        v6 = *&v112[16 * a4 + 24];
        sub_1004950EC(*v10 + a3[9] * v115, *v10 + a3[9] * *&v112[16 * a4 + 16], *v10 + a3[9] * v6, v5);
        if (v113)
        {
          goto LABEL_107;
        }

        if (v6 < v115)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = sub_100204C44(v116);
        }

        if (a4 - 2 >= *(v116 + 2))
        {
          goto LABEL_124;
        }

        v117 = &v116[16 * a4];
        *v117 = v115;
        *(v117 + 1) = v6;
        v141 = v116;
        sub_100204BB8(a4 - 1);
        v112 = v141;
        a4 = *(v141 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_134;
    }

LABEL_107:

    return;
  }

  v20 = 0;
  v136 = (v10 + 1);
  v137 = v10 + 2;
  v135 = (v10 + 4);
  v21 = _swiftEmptyArrayStorage;
  v123 = a3;
  v121 = a4;
  v140 = v9;
  while (1)
  {
    v22 = v20;
    v126 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v131 = v19;
      v120 = v6;
      v128 = *a3;
      v23 = v128;
      v24 = v10[9];
      v5 = v128 + v24 * (v20 + 1);
      v25 = v10[2];
      v26 = v138;
      v25(v138, v5, v9, v17);
      v27 = v23 + v24 * v22;
      v28 = v139;
      v130 = v25;
      (v25)(v139, v27, v9);
      LODWORD(v132) = static Date.< infix(_:_:)();
      v29 = v9;
      v30 = v10[1];
      v30(v28, v29);
      v129 = v30;
      v30(v26, v29);
      v119 = v22;
      v31 = v22 + 2;
      v134 = v24;
      v32 = v128 + v24 * (v22 + 2);
      while (1)
      {
        v33 = v131;
        if (v131 == v31)
        {
          break;
        }

        v34 = v10;
        v35 = v138;
        v36 = v140;
        v37 = v130;
        (v130)(v138, v32, v140);
        v38 = v139;
        v37(v139, v5, v36);
        v39 = static Date.< infix(_:_:)() & 1;
        v40 = v129;
        (v129)(v38, v36);
        v41 = v35;
        v10 = v34;
        v40(v41, v36);
        ++v31;
        v32 += v134;
        v5 += v134;
        if ((v132 & 1) != v39)
        {
          v33 = v31 - 1;
          break;
        }
      }

      a3 = v123;
      v21 = v126;
      v6 = v120;
      a4 = v121;
      v9 = v140;
      v22 = v119;
      if (v132)
      {
        if (v33 < v119)
        {
          goto LABEL_127;
        }

        if (v119 < v33)
        {
          v118 = v10;
          v42 = v134 * (v33 - 1);
          v43 = v33 * v134;
          v44 = v33;
          v45 = v119;
          v46 = v119 * v134;
          do
          {
            if (v45 != --v44)
            {
              v48 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v49 = v33;
              v5 = &v48[v46];
              v132 = *v135;
              (v132)(v125, &v48[v46], v140, v21);
              if (v46 < v42 || v5 >= &v48[v43])
              {
                v47 = v140;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v47 = v140;
                if (v46 != v42)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v132(&v48[v42], v125, v47);
              a3 = v123;
              v21 = v126;
              v33 = v49;
            }

            ++v45;
            v42 -= v134;
            v43 -= v134;
            v46 += v134;
          }

          while (v45 < v44);
          v6 = v120;
          a4 = v121;
          v10 = v118;
          v9 = v140;
          v22 = v119;
        }
      }
    }

    v50 = a3[1];
    if (v33 < v50)
    {
      if (__OFSUB__(v33, v22))
      {
        goto LABEL_126;
      }

      if (v33 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_128;
        }

        if ((v22 + a4) >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v22 + a4;
        }

        if (v51 < v22)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v33 != v51)
        {
          break;
        }
      }
    }

    v52 = v33;
    if (v33 < v22)
    {
      goto LABEL_125;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = v126;
    }

    else
    {
      v21 = sub_1003E4B80(0, *(v126 + 2) + 1, 1, v126);
    }

    a4 = *(v21 + 2);
    v53 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v53 >> 1)
    {
      v21 = sub_1003E4B80((v53 > 1), a4 + 1, 1, v21);
    }

    *(v21 + 2) = v5;
    v54 = &v21[16 * a4];
    *(v54 + 4) = v22;
    *(v54 + 5) = v52;
    v55 = *v122;
    if (!*v122)
    {
      goto LABEL_135;
    }

    v127 = v52;
    if (a4)
    {
      while (1)
      {
        v56 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v57 = *(v21 + 4);
          v58 = *(v21 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_52:
          if (v60)
          {
            goto LABEL_114;
          }

          v73 = &v21[16 * v5];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_117;
          }

          v79 = &v21[16 * v56 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_121;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v83 = &v21[16 * v5];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_66:
        if (v78)
        {
          goto LABEL_116;
        }

        v86 = &v21[16 * v56];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_119;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v56 - 1;
        if (v56 - 1 >= v5)
        {
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
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v94 = v21;
        v95 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v56 + 40];
        sub_1004950EC(*a3 + v10[9] * v95, *a3 + v10[9] * *&v21[16 * v56 + 32], *a3 + v10[9] * v5, v55);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v95)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_100204C44(v94);
        }

        if (a4 >= *(v94 + 2))
        {
          goto LABEL_111;
        }

        v96 = &v94[16 * a4];
        *(v96 + 4) = v95;
        *(v96 + 5) = v5;
        v141 = v94;
        sub_100204BB8(v56);
        v21 = v141;
        v5 = *(v141 + 2);
        v9 = v140;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v21[16 * v5 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_112;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_113;
      }

      v68 = &v21[16 * v5];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_115;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_118;
      }

      if (v72 >= v64)
      {
        v90 = &v21[16 * v56 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_122;
        }

        if (v59 < v93)
        {
          v56 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v127;
    a4 = v121;
    if (v127 >= v19)
    {
      goto LABEL_95;
    }
  }

  v120 = v6;
  v97 = *a3;
  v98 = v10[9];
  v118 = v10;
  v134 = v10[2];
  v99 = v97 + v98 * (v33 - 1);
  v100 = -v98;
  v119 = v22;
  v101 = (v22 - v33);
  v132 = v97;
  v124 = v98;
  v5 = v97 + v33 * v98;
  v127 = v51;
LABEL_85:
  v130 = v99;
  v131 = v33;
  v128 = v5;
  v129 = v101;
  v102 = v99;
  while (1)
  {
    v103 = v138;
    v104 = v134;
    (v134)(v138, v5, v9, v21);
    v105 = v139;
    v104(v139, v102, v140);
    v106 = static Date.< infix(_:_:)();
    a4 = v136;
    v107 = *v136;
    v108 = v105;
    v9 = v140;
    (*v136)(v108, v140);
    v107(v103, v9);
    if ((v106 & 1) == 0)
    {
LABEL_84:
      v33 = v131 + 1;
      v99 = &v130[v124];
      v101 = v129 - 1;
      v5 = v128 + v124;
      v52 = v127;
      if (v131 + 1 != v127)
      {
        goto LABEL_85;
      }

      v6 = v120;
      a3 = v123;
      v10 = v118;
      v22 = v119;
      if (v127 < v119)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v132)
    {
      break;
    }

    a4 = v135;
    v109 = *v135;
    v110 = v133;
    (*v135)(v133, v5, v9);
    swift_arrayInitWithTakeFrontToBack();
    v109(v102, v110, v9);
    v102 += v100;
    v5 += v100;
    if (__CFADD__(v101++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
}

void sub_1004950EC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v56 = type metadata accessor for Date();
  v8 = *(v56 - 8);
  __chkstk_darwin(v56);
  v54 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v53 = &v44 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v55 = a3;
  v15 = (a2 - a1) / v13;
  v59 = a1;
  v58 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = a4 + v17;
    if (v17 < 1)
    {
      v32 = a4 + v17;
    }

    else
    {
      v29 = -v13;
      v48 = (v8 + 8);
      v49 = (v8 + 16);
      v30 = a4 + v17;
      v31 = v55;
      v32 = v28;
      v46 = a1;
      v47 = a4;
      v50 = -v13;
      do
      {
        v44 = v32;
        v33 = a2;
        v34 = a2 + v29;
        v51 = v33;
        v52 = v34;
        while (1)
        {
          if (v33 <= a1)
          {
            v59 = v33;
            v57 = v44;
            goto LABEL_59;
          }

          v36 = v31;
          v45 = v32;
          v55 = v31 + v29;
          v37 = v30 + v29;
          v38 = *v49;
          v39 = v53;
          v40 = v56;
          v41 = v30;
          (*v49)(v53, v37, v56);
          v42 = v54;
          (v38)(v54, v34, v40);
          LOBYTE(v38) = static Date.< infix(_:_:)();
          v43 = *v48;
          (*v48)(v42, v40);
          v43(v39, v40);
          if (v38)
          {
            break;
          }

          v32 = v37;
          v31 = v55;
          if (v36 < v41 || v55 >= v41)
          {
            swift_arrayInitWithTakeFrontToBack();
            v34 = v52;
            a1 = v46;
          }

          else
          {
            v34 = v52;
            a1 = v46;
            if (v36 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v30 = v37;
          v35 = v37 > v47;
          v29 = v50;
          v33 = v51;
          if (!v35)
          {
            a2 = v51;
            goto LABEL_58;
          }
        }

        v44 = v41;
        v31 = v55;
        if (v36 < v51 || v55 >= v51)
        {
          a2 = v52;
          swift_arrayInitWithTakeFrontToBack();
          v32 = v45;
          a1 = v46;
          v29 = v50;
        }

        else
        {
          a2 = v52;
          v32 = v45;
          a1 = v46;
          v29 = v50;
          if (v36 != v51)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v30 = v44;
      }

      while (v44 > v47);
    }

LABEL_58:
    v59 = a2;
    v57 = v32;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v52 = a4 + v16;
    v57 = a4 + v16;
    if (v16 >= 1 && a2 < v55)
    {
      v50 = *(v8 + 16);
      v51 = v8 + 16;
      v48 = v13;
      v49 = (v8 + 8);
      do
      {
        v19 = v53;
        v20 = v56;
        v21 = v50;
        (v50)(v53, a2, v56);
        v22 = a2;
        v23 = v54;
        v21(v54, a4, v20);
        v24 = static Date.< infix(_:_:)();
        v25 = *v49;
        (*v49)(v23, v20);
        v25(v19, v20);
        if (v24)
        {
          v26 = v48;
          a2 = v48 + v22;
          if (a1 < v22 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v22)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v26 = v48;
          v27 = v48 + a4;
          if (a1 < a4 || a1 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v22;
          }

          else
          {
            a2 = v22;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v58 = v27;
          a4 += v26;
        }

        a1 += v26;
        v59 = a1;
      }

      while (a4 < v52 && a2 < v55);
    }
  }

LABEL_59:
  sub_100204C58(&v59, &v58, &v57);
}

void *sub_10049567C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F24EC(&qword_100ADFA98);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100495870(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F24EC(&qword_100ADB880);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = *(v6 + 8 * v4);
      result = static Hasher._hash(seed:_:)();
      v13 = result & v7;
      v14 = (result & v7) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v7);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v11)
        {
          v13 = (v13 + 1) & v7;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v11;
        v8 = *(v3 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v10;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

Swift::Int sub_1004959AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F24EC(&qword_100ADB728);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_100495AE8(uint64_t a1)
{
  v2 = type metadata accessor for AssetType();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1000F24EC(&qword_100ADB780);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_100067EB4(&qword_100ADFEE0, &type metadata accessor for AssetType);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_100067EB4(&qword_100ADC690, &type metadata accessor for AssetType);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_100495E08(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_1000F24EC(&qword_100ADB7D8);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for JournalMO();
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for JournalMO();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void *sub_1004960D4(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1000F24EC(&qword_100ADB708);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_100067EB4(&qword_100AD4B40, &type metadata accessor for UUID);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_100067EB4(&qword_100AD9220, &type metadata accessor for UUID);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_1004963F4(uint64_t a1)
{
  v2 = type metadata accessor for Transcriber.TranscriptionOption();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1000F24EC(&qword_100ADB7D0);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_100067EB4(&qword_100ADB7C0, &type metadata accessor for Transcriber.TranscriptionOption);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_100067EB4(&qword_100ADB7C8, &type metadata accessor for Transcriber.TranscriptionOption);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_100496714(uint64_t a1)
{
  v2 = type metadata accessor for Transcriber.ReportingOption();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1000F24EC(&qword_100AE5190);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_100067EB4(&qword_100AE5198, &type metadata accessor for Transcriber.ReportingOption);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_100067EB4(&qword_100AE51A0, &type metadata accessor for Transcriber.ReportingOption);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_100496A34(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptionResultAttributeOption();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1000F24EC(&qword_100AE5178);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_100067EB4(&qword_100AE5180, &type metadata accessor for TranscriptionResultAttributeOption);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_100067EB4(&qword_100AE5188, &type metadata accessor for TranscriptionResultAttributeOption);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_100496D78(uint64_t a1)
{
  v2 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1000F24EC(&qword_100ADD018);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_100067EB4(&qword_100ADD020, &type metadata accessor for Duration.UnitsFormatStyle.Unit);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_100067EB4(&qword_100ADD028, &type metadata accessor for Duration.UnitsFormatStyle.Unit);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100497098(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD2680);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_100497130(double a1, double a2, double a3, double a4)
{
  v43 = type metadata accessor for PaperMarkupViewController.TouchMode();
  v9 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FeatureSet();
  __chkstk_darwin(v11 - 8);
  v12 = sub_1000F24EC(&unk_100ADC5E0);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for UIView.Invalidations.Layout();
  __chkstk_darwin(v15);
  v16 = sub_1000F24EC(&qword_100AE5298);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v41 - v18;
  *&v4[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperCanvasDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_toolPicker] = 0;
  *&v4[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_opaqueColor] = 0;
  v20 = OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_contentBackgroundView;
  *&v4[v20] = [objc_allocWithZone(UIView) init];
  *&v4[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_tapToDismissRecognizer] = 0;
  v4[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_tapToDismiss] = 0;
  v4[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_allowContentGrowth] = 0;
  v4[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_allowContentZoom] = 1;
  v4[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_hasFixedHeight] = 0;
  *&v4[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_markupChangeDebounceTimer] = 0;
  v4[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_hasInformedDelegateDrawingStarted] = 0;
  v4[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_allowDrawing] = 1;
  v4[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_needsContentAdjusted] = 0;
  v21 = OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView__preferredMarkupHeight;
  v45 = 0;
  UIView.Invalidations.Layout.init()();
  sub_100026580();
  UIView.Invalidating.init(wrappedValue:_:)();
  (*(v17 + 32))(&v4[v21], v19, v16);
  *&v4[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_maxZoomRange] = 0x4014000000000000;
  PaperMarkup.init(bounds:)();
  v22 = type metadata accessor for PaperMarkup();
  (*(*(v22 - 8) + 56))(v14, 0, 1, v22);
  static FeatureSet.latest.getter();
  v23 = objc_allocWithZone(type metadata accessor for PaperMarkupViewController());
  *&v4[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController] = PaperMarkupViewController.init(markup:supportedFeatureSet:)();
  v24 = type metadata accessor for PaperKitDrawingCanvasView();
  v44.receiver = v4;
  v44.super_class = v24;
  v25 = objc_msgSendSuper2(&v44, "initWithFrame:", a1, a2, a3, a4);
  v26 = OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController;
  v27 = *&v25[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController];
  (*(v9 + 104))(v42, enum case for PaperMarkupViewController.TouchMode.drawing(_:), v43);
  v28 = v25;
  v29 = v27;
  dispatch thunk of PaperMarkupViewController.directTouchMode.setter();

  v30 = *&v25[v26];
  sub_10049AB58();
  v31 = v28;
  v32 = v30;
  dispatch thunk of PaperMarkupViewController.delegate.setter();

  v33 = [objc_allocWithZone(type metadata accessor for TouchDetectionRecognizer()) initWithTarget:v31 action:"handleGesture:"];
  v34 = v33;
  v35 = String._bridgeToObjectiveC()();
  [v34 setName:v35];

  [v34 setDelegate:v31];
  [v31 addGestureRecognizer:v34];
  v36 = *&v25[v26];
  Strong = swift_unknownObjectWeakLoadStrong();
  v38 = v36;
  if (Strong)
  {
    v39 = [Strong view];
  }

  dispatch thunk of PaperMarkupViewController.rulerHostView.setter();

  return v31;
}

id sub_100497714()
{
  v1 = OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_markupChangeDebounceTimer;
  v2 = *&v0[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_markupChangeDebounceTimer];
  if (v2)
  {
    [v2 invalidate];
    v3 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = 0;

  v5.receiver = v0;
  v5.super_class = type metadata accessor for PaperKitDrawingCanvasView();
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t type metadata accessor for PaperKitDrawingCanvasView()
{
  result = qword_100AE5278;
  if (!qword_100AE5278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004978F8()
{
  v1 = *&v0[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_opaqueColor];
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    v4 = [v0 backgroundColor];
    if (!v4 || (v5 = v4, sub_10018D564(), v12 = v3, v6 = static NSObject.== infix(_:_:)(), v5, v12, (v6 & 1) == 0))
    {
      v7 = *&v2[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_contentBackgroundView];
      [v7 setBackgroundColor:v3];
      v8 = OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController;
      v9 = *&v2[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController];
      v10 = v7;
      dispatch thunk of PaperMarkupViewController.contentView.setter();

      [v2 setBackgroundColor:v3];
      v11 = [*&v2[v8] view];
      if (!v11)
      {
        __break(1u);
        return;
      }

      v12 = v11;
      [v11 setBackgroundColor:v3];
    }
  }
}

void sub_100497A54(uint64_t a1)
{
  v2 = v1;
  v17.receiver = v2;
  v17.super_class = type metadata accessor for PaperKitDrawingCanvasView();
  objc_msgSendSuper2(&v17, "willMoveToSuperview:", a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong addChildViewController:*&v2[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController]];
  }

  v6 = OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController;
  v7 = [*&v2[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController] view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = v7;
  [v2 addSubview:v7];

  v9 = [*&v2[v6] view];
  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = v9;
  sub_100013178(0.0);

  v11 = [objc_opt_self() clearColor];
  v12 = *&v2[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_contentBackgroundView];
  [v12 setBackgroundColor:v11];
  v13 = *&v2[v6];
  v14 = v12;
  dispatch thunk of PaperMarkupViewController.contentView.setter();

  [v2 setBackgroundColor:v11];
  v15 = [*&v2[v6] view];
  if (v15)
  {
    v16 = v15;
    [v15 setBackgroundColor:v11];

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_100497C78()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for PaperKitDrawingCanvasView();
  objc_msgSendSuper2(&v13, "didMoveToSuperview");
  v2 = OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController;
  v3 = *&v0[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController];
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = v3;
  [v5 didMoveToParentViewController:Strong];

  v6 = [objc_opt_self() clearColor];
  v7 = *&v1[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_contentBackgroundView];
  [v7 setBackgroundColor:v6];
  v8 = *&v1[v2];
  v9 = v7;
  dispatch thunk of PaperMarkupViewController.contentView.setter();

  [v1 setBackgroundColor:v6];
  v10 = [*&v1[v2] view];
  if (v10)
  {
    v11 = v10;
    [v10 setBackgroundColor:v6];

    if (*&v1[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_maxZoomRange] >= 0.1)
    {
      v12 = *&v1[v2];
      dispatch thunk of PaperMarkupViewController.zoomRange.setter();

      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100497E44()
{
  v1 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v1 - 8);
  v3 = v30 - v2;
  v4 = sub_1000F24EC(&unk_100ADC5E0);
  __chkstk_darwin(v4 - 8);
  v6 = v30 - v5;
  v7 = type metadata accessor for PaperMarkup();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PaperKitDrawingCanvasView();
  v31.receiver = v0;
  v31.super_class = v11;
  objc_msgSendSuper2(&v31, "layoutSubviews");
  if (v0[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_allowContentGrowth] == 1)
  {
    v0[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_needsContentAdjusted] = 1;
    v12 = v0;
    v13 = *&v0[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController];
    dispatch thunk of PaperMarkupViewController.markup.getter();

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      return sub_1002A03D4(v6);
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      PaperMarkup.bounds.getter();
      v20 = v19;
      v22 = v21;
      v24 = v23;
      swift_getKeyPath();
      swift_getKeyPath();
      static UIView.Invalidating.subscript.getter();

      v25 = *&v30[1];
      [v12 bounds];
      Height = CGRectGetHeight(v32);
      PaperMarkup.bounds.getter();
      v27 = CGRectGetHeight(v33);
      if (v25 > Height)
      {
        v28 = v25;
      }

      else
      {
        v28 = Height;
      }

      if (v28 > v27)
      {
        v29 = v28;
      }

      else
      {
        v29 = v27;
      }

      sub_100499094(v20, v22, v24, v29);
      return (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v17 = static MainActor.shared.getter();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = &protocol witness table for MainActor;
    v18[4] = v16;

    sub_1003E9628(0, 0, v3, &unk_1009579F8, v18);
  }
}

void sub_100498364(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = sub_1000F24EC(&qword_100AD5170);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v19 - v11;
  v13 = OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_needsContentAdjusted;
  if (*(v4 + OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_needsContentAdjusted) == 1)
  {
    [v4 bounds];
    v22.origin.x = 0.0;
    v22.origin.y = 0.0;
    v22.size.width = 0.0;
    v22.size.height = 0.0;
    if (!CGRectEqualToRect(v20, v22))
    {
      [v4 bounds];
      v23.origin.x = a1;
      v23.origin.y = a2;
      v23.size.width = a3;
      v23.size.height = a4;
      if (!CGRectEqualToRect(v21, v23))
      {
        v14 = type metadata accessor for TaskPriority();
        (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
        v15 = swift_allocObject();
        swift_unknownObjectWeakInit();
        type metadata accessor for MainActor();

        v16 = v4;
        v17 = static MainActor.shared.getter();
        v18 = swift_allocObject();
        v18[2] = v17;
        v18[3] = &protocol witness table for MainActor;
        v18[4] = v15;

        sub_1003E9628(0, 0, v12, &unk_1009579F0, v18);

        v16[v13] = 0;
      }
    }
  }
}

void sub_100498548(void *a1, void *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController;
  v7 = *(v2 + OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController);
  v8 = [a2 view];
  dispatch thunk of PaperMarkupViewController.rulerHostView.setter();

  v9 = *(v3 + v6);
  v10 = sub_100544E50();
  [v10 addObserver:v9];

  swift_unknownObjectWeakAssign();
  v12 = *(v3 + OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_toolPicker);
  *(v3 + OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_toolPicker) = a1;
  v11 = a1;
}

uint64_t sub_10049862C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&unk_100ADC5E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v31[-v5];
  v7 = type metadata accessor for PaperMarkup();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v31[-v12];
  (*(v8 + 16))(&v31[-v12], a1, v7);
  PaperMarkup.bounds.getter();
  if (v14 > 768.0)
  {
    PaperMarkup.bounds.getter();
    CGAffineTransformMakeScale(&v32, 768.0 / v15, 768.0 / v15);
    PaperMarkup.transformContent(_:)();
  }

  v16 = OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController;
  v17 = *&v1[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController];
  dispatch thunk of PaperMarkupViewController.markup.getter();

  v18 = *(v8 + 48);
  if (v18(v6, 1, v7) == 1)
  {
    sub_1002A03D4(v6);
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    PaperMarkup.bounds.getter();
    Height = CGRectGetHeight(v33);
    [v2 bounds];
    if (CGRectGetHeight(v34) < Height)
    {
      PaperMarkup.bounds.getter();
      v21 = v20;
      v23 = v22;
      v25 = v24;
      PaperMarkup.bounds.getter();
      v26 = CGRectGetHeight(v35);
      sub_100499094(v21, v23, v25, v26);
    }

    (*(v8 + 8))(v11, v7);
  }

  v27 = *&v2[v16];
  v28 = dispatch thunk of PaperMarkupViewController.markup.modify();
  if (!v18(v29, 1, v7))
  {
    PaperMarkup.append(contentsOf:)();
  }

  v28(v31, 0);

  return (*(v8 + 8))(v13, v7);
}

double sub_10049893C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  return v1;
}

uint64_t sub_1004989B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_1000F24EC(&unk_100ADC5E0);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v5 = type metadata accessor for PaperMarkup();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100498AF4, v7, v6);
}

void sub_100498AF4()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong bounds];
    if (CGRectGetHeight(v73) <= 0.0)
    {
LABEL_17:

      goto LABEL_22;
    }

    v3 = v2[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_allowContentZoom];
    v4 = OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController;
    v5 = (v0[9] + 48);
    v6 = *&v2[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController];
    v7 = v0[8];
    if (v3 == 1)
    {
      v8 = v0[7];
      dispatch thunk of PaperMarkupViewController.markup.getter();

      if ((*v5)(v8, 1, v7) == 1)
      {
        v9 = v0[7];
LABEL_8:

        sub_1002A03D4(v9);
        goto LABEL_22;
      }

      (*(v0[9] + 32))(v0[11], v0[7], v0[8]);
      [v2 bounds];
      v87.origin.x = 0.0;
      v87.origin.y = 0.0;
      v87.size.width = 0.0;
      v87.size.height = 0.0;
      v11 = CGRectEqualToRect(v74, v87);
      v12 = v0[11];
      if (v11)
      {
        goto LABEL_16;
      }

      PaperMarkup.contentsRenderFrame.getter();
      v17 = v13;
      v18 = v14;
      v19 = v15;
      v20 = v16;
      if (v2[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_hasFixedHeight] == 1)
      {
        Height = CGRectGetHeight(*&v13);
        [v2 bounds];
        if (v22 < Height)
        {
          [v2 bounds];
          CGRectGetHeight(v75);
          v76.origin.x = v17;
          v76.origin.y = v18;
          v76.size.width = v19;
          v76.size.height = v20;
          CGRectGetWidth(v76);
          [v2 bounds];
          CGRectGetWidth(v77);
          v78.origin.x = v17;
          v78.origin.y = v18;
          v78.size.width = v19;
          v78.size.height = v20;
          CGRectGetWidth(v78);
        }
      }

      PaperMarkup.contentsRenderFrame.getter();
      if (v24 == 0.0 && v23 == 0.0)
      {
        v12 = v0[11];
LABEL_16:
        (*(v0[9] + 8))(v12, v0[8]);
        goto LABEL_17;
      }

      if (*&v2[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_maxZoomRange] >= 0.1)
      {
        v51 = *&v2[v4];
        dispatch thunk of PaperMarkupViewController.zoomRange.setter();

        v52 = *&v2[v4];
        dispatch thunk of PaperMarkupViewController.setContentVisibleFrame(_:animated:)();

        v53 = *&v2[v4];
        dispatch thunk of PaperMarkupViewController.contentVisibleFrame.getter();
        v55 = v54;
        v57 = v56;
        v59 = v58;
        v61 = v60;

        v85.origin.x = v55;
        v85.origin.y = v57;
        v85.size.width = v59;
        v85.size.height = v61;
        CGRectGetWidth(v85);
        v62 = [*&v2[v4] view];
        if (v62)
        {
          v63 = v62;
          [v62 frame];
          v65 = v64;
          v67 = v66;
          v69 = v68;
          v71 = v70;

          v86.origin.x = v65;
          v86.origin.y = v67;
          v86.size.width = v69;
          v86.size.height = v71;
          CGRectGetWidth(v86);
          v46 = v0[11];
          goto LABEL_21;
        }

LABEL_31:
        __break(1u);
        return;
      }
    }

    else
    {
      v10 = v0[6];
      dispatch thunk of PaperMarkupViewController.markup.getter();

      if ((*v5)(v10, 1, v7) == 1)
      {
        v9 = v0[6];
        goto LABEL_8;
      }

      (*(v0[9] + 32))(v0[10], v0[6], v0[8]);
      PaperMarkup.bounds.getter();
      CGRectGetWidth(v79);
      [v2 bounds];
      CGRectGetWidth(v80);
      [v2 bounds];
      CGRectGetHeight(v81);
      PaperMarkup.bounds.getter();
      CGRectGetWidth(v82);
      if (*&v2[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_maxZoomRange] >= 0.1)
      {
        v25 = *&v2[v4];
        dispatch thunk of PaperMarkupViewController.zoomRange.setter();

        v26 = *&v2[v4];
        dispatch thunk of PaperMarkupViewController.setContentVisibleFrame(_:animated:)();

        v27 = *&v2[v4];
        dispatch thunk of PaperMarkupViewController.contentVisibleFrame.getter();
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;

        v83.origin.x = v29;
        v83.origin.y = v31;
        v83.size.width = v33;
        v83.size.height = v35;
        CGRectGetWidth(v83);
        v36 = [*&v2[v4] view];
        if (v36)
        {
          v37 = v36;
          [v36 frame];
          v39 = v38;
          v41 = v40;
          v43 = v42;
          v45 = v44;

          v84.origin.x = v39;
          v84.origin.y = v41;
          v84.size.width = v43;
          v84.size.height = v45;
          CGRectGetWidth(v84);
          v46 = v0[10];
LABEL_21:
          v47 = v0[8];
          v48 = v0[9];
          v49 = *&v2[v4];
          dispatch thunk of PaperMarkupViewController.zoomRange.setter();

          (*(v48 + 8))(v46, v47);
          goto LABEL_22;
        }

        goto LABEL_30;
      }

      __break(1u);
      __break(1u);
    }

    __break(1u);
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_22:

  v50 = v0[1];

  v50();
}

uint64_t sub_100499094(CGFloat a1, CGFloat a2, CGFloat a3, double a4)
{
  v9 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - v10;
  v12 = sub_1000F24EC(&unk_100ADC5E0);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  v15 = type metadata accessor for PaperMarkup();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v4 + OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController);
  dispatch thunk of PaperMarkupViewController.markup.getter();

  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_1002A03D4(v14);
  }

  v21 = ceil(a4);
  (*(v16 + 32))(v18, v14, v15);
  PaperMarkup.bounds.getter();
  v28.origin.x = a1;
  v28.origin.y = a2;
  v28.size.width = a3;
  v28.size.height = v21;
  if (!CGRectEqualToRect(v27, v28))
  {
    v22 = type metadata accessor for TaskPriority();
    (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v24 = static MainActor.shared.getter();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = &protocol witness table for MainActor;
    *(v25 + 32) = v23;
    *(v25 + 40) = a1;
    *(v25 + 48) = a2;
    *(v25 + 56) = a3;
    *(v25 + 64) = v21;

    sub_1003E9628(0, 0, v11, &unk_100957998, v25);
  }

  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_100499394(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = a3;
  *(v8 + 128) = a4;
  *(v8 + 104) = a1;
  *(v8 + 112) = a2;
  *(v8 + 96) = a8;
  type metadata accessor for MainActor();
  *(v8 + 136) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100499434, v10, v9);
}

char *sub_100499434()
{

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (*&result[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_maxZoomRange] < 0.1)
    {
      __break(1u);
      __break(1u);
      goto LABEL_15;
    }

    v2 = result;
    v3 = *&result[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController];
    dispatch thunk of PaperMarkupViewController.zoomRange.setter();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController);

    v7 = dispatch thunk of PaperMarkupViewController.markup.modify();
    v9 = v8;
    v10 = type metadata accessor for PaperMarkup();
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {
      PaperMarkup.bounds.setter();
    }

    v7(v0 + 16, 0);
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = v11;
  v13 = OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController;
  v14 = *(v11 + OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController);
  dispatch thunk of PaperMarkupViewController.contentVisibleFrame.getter();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v35.origin.x = v16;
  v35.origin.y = v18;
  v35.size.width = v20;
  v35.size.height = v22;
  CGRectGetWidth(v35);
  result = [*&v12[v13] view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v23 = result;
  [result frame];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v36.origin.x = v25;
  v36.origin.y = v27;
  v36.size.width = v29;
  v36.size.height = v31;
  CGRectGetWidth(v36);
  v32 = *&v12[v13];
  dispatch thunk of PaperMarkupViewController.zoomRange.setter();

LABEL_11:
  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1004996CC()
{
  v1 = v0;
  v2 = sub_1000F24EC(&unk_100ADC5E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for PaperMarkup();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController);
  dispatch thunk of PaperMarkupViewController.markup.getter();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_1002A03D4(v4);
  }

  (*(v6 + 32))(v8, v4, v5);
  PaperMarkup.contentsRenderFrame.getter();
  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v17.size.width = 0.0;
  v17.size.height = 0.0;
  if (CGRectEqualToRect(v15, v17) || (PaperMarkup.contentsRenderFrame.getter(), v18.origin.x = CGRectNull.origin.x, v18.origin.y = CGRectNull.origin.y, v18.size.width = CGRectNull.size.width, v18.size.height = CGRectNull.size.height, CGRectEqualToRect(v16, v18)))
  {
    v11 = v1 + OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperCanvasDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = *(v11 + 8);
      ObjectType = swift_getObjectType();
      (*(v12 + 16))(v1, ObjectType, v12);
      swift_unknownObjectRelease();
    }
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_100499924()
{
  sub_100499A08();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100499A08()
{
  if (!qword_100AE5288)
  {
    type metadata accessor for UIView.Invalidations.Layout();
    sub_100026580();
    v0 = type metadata accessor for UIView.Invalidating();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE5288);
    }
  }
}

void sub_100499A88()
{
  v1 = v0;
  v2 = sub_1000F24EC(&unk_100ADC5E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for PaperMarkup();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v0 undoManager];
  if (v10)
  {
    v11 = v10;
    sub_10012ACEC();
  }

  sub_1004978F8();
  v12 = OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_hasInformedDelegateDrawingStarted;
  if ((v1[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_hasInformedDelegateDrawingStarted] & 1) == 0)
  {
    dispatch thunk of PaperMarkupViewController.markup.getter();
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_1002A03D4(v4);
    }

    else
    {
      (*(v6 + 32))(v9, v4, v5);
      PaperMarkup.contentsRenderFrame.getter();
      v19.origin.x = 0.0;
      v19.origin.y = 0.0;
      v19.size.width = 0.0;
      v19.size.height = 0.0;
      if (CGRectEqualToRect(v17, v19) || (PaperMarkup.contentsRenderFrame.getter(), v20.origin.x = CGRectNull.origin.x, v20.origin.y = CGRectNull.origin.y, v20.size.width = CGRectNull.size.width, v20.size.height = CGRectNull.size.height, CGRectEqualToRect(v18, v20)))
      {
        (*(v6 + 8))(v9, v5);
      }

      else
      {
        v13 = &v1[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperCanvasDelegate];
        if (swift_unknownObjectWeakLoadStrong())
        {
          v14 = *(v13 + 1);
          ObjectType = swift_getObjectType();
          (*(v14 + 24))(v1, ObjectType, v14);
          swift_unknownObjectRelease();
        }

        (*(v6 + 8))(v9, v5);
        v1[v12] = 1;
      }
    }
  }
}

void sub_100499CF4()
{
  v1 = v0;
  v2 = sub_1000F24EC(&unk_100ADC5E0);
  __chkstk_darwin(v2 - 8);
  v4 = aBlock - v3;
  v5 = type metadata accessor for PaperMarkup();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_hasInformedDelegateDrawingStarted;
  if ((*(v0 + OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_hasInformedDelegateDrawingStarted) & 1) == 0)
  {
    dispatch thunk of PaperMarkupViewController.markup.getter();
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_1002A03D4(v4);
    }

    else
    {
      (*(v6 + 32))(v9, v4, v5);
      PaperMarkup.contentsRenderFrame.getter();
      v23.origin.x = 0.0;
      v23.origin.y = 0.0;
      v23.size.width = 0.0;
      v23.size.height = 0.0;
      if (CGRectEqualToRect(v21, v23) || (PaperMarkup.contentsRenderFrame.getter(), v24.origin.x = CGRectNull.origin.x, v24.origin.y = CGRectNull.origin.y, v24.size.width = CGRectNull.size.width, v24.size.height = CGRectNull.size.height, CGRectEqualToRect(v22, v24)))
      {
        (*(v6 + 8))(v9, v5);
      }

      else
      {
        v11 = v0 + OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperCanvasDelegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v12 = *(v11 + 8);
          ObjectType = swift_getObjectType();
          (*(v12 + 24))(v0, ObjectType, v12);
          swift_unknownObjectRelease();
        }

        (*(v6 + 8))(v9, v5);
        *(v0 + v10) = 1;
      }
    }
  }

  v14 = OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_markupChangeDebounceTimer;
  [*(v0 + OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_markupChangeDebounceTimer) invalidate];
  v15 = objc_opt_self();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10049A9B8;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10016B4D8;
  aBlock[3] = &unk_100A6EBF0;
  v17 = _Block_copy(aBlock);

  v18 = [v15 scheduledTimerWithTimeInterval:0 repeats:v17 block:0.0083];
  _Block_release(v17);
  v19 = *(v1 + v14);
  *(v1 + v14) = v18;
}

void sub_10049A028()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperCanvasDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      (*(v3 + 32))(v1, ObjectType, v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_10049A0DC(char *a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&unk_100ADC5E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v62 - v8;
  __chkstk_darwin(v10);
  v12 = &v62 - v11;
  v13 = type metadata accessor for PaperMarkup();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = &v62 - v19;
  if ([a1 state] != 3)
  {
    return;
  }

  v66 = v6;
  v67 = OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController;
  v21 = *(v2 + OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController);
  dispatch thunk of PaperMarkupViewController.markup.getter();

  v22 = *(v14 + 48);
  if (v22(v12, 1, v13) == 1)
  {
    sub_1002A03D4(v12);
    return;
  }

  (*(v14 + 32))(v20, v12, v13);
  v23 = *(v2 + OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_toolPicker);
  if (!v23)
  {
    goto LABEL_39;
  }

  v62 = v22;
  v63 = v14;
  v24 = &a1[OBJC_IVAR____TtC7Journal24TouchDetectionRecognizer_type];
  v25 = a1[OBJC_IVAR____TtC7Journal24TouchDetectionRecognizer_type + 8];
  v64 = v23;
  v65 = v2;
  if ((v25 & 1) != 0 || *v24 != 2)
  {
    v27 = v23;
    v28 = sub_100544E50();
    v29 = [v28 isVisible];

    v2 = v65;
    if ((v29 & 1) == 0 && (*(v65 + OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_tapToDismiss) & 1) == 0)
    {
      (*(v63 + 8))(v20, v13);

      return;
    }
  }

  else
  {
    v26 = v23;
  }

  if (v24[8] & 1) == 0 && *v24 == 2 || (v30 = sub_100544E50(), v31 = [v30 isVisible], v30, (v31))
  {
    v32 = 1;
  }

  else
  {
    v33 = v2;
    v34 = v2 + OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperCanvasDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v35 = *(v34 + 8);
      ObjectType = swift_getObjectType();
      (*(v35 + 40))(v33, ObjectType, v35);
      swift_unknownObjectRelease();
    }

    v32 = 0;
  }

  v14 = v63;
  if (*(v65 + OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_tapToDismiss) != 1)
  {
    goto LABEL_26;
  }

  v37 = *(v65 + v67);
  v38 = dispatch thunk of PaperMarkupViewController.contentView.getter();

  [a1 locationInView:v38];
  v40 = v39;

  PaperMarkup.contentsRenderFrame.getter();
  v72.origin.x = 0.0;
  v72.origin.y = 0.0;
  v72.size.width = 0.0;
  v72.size.height = 0.0;
  if (!CGRectEqualToRect(v68, v72))
  {
    PaperMarkup.contentsRenderFrame.getter();
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
    v73.origin.x = CGRectNull.origin.x;
    v73.origin.y = y;
    v73.size.width = width;
    v73.size.height = height;
    if (!CGRectEqualToRect(v69, v73))
    {
      if (v32)
      {
        goto LABEL_26;
      }

      PaperMarkup.contentsRenderFrame.getter();
      v74.origin.x = 0.0;
      v74.origin.y = 0.0;
      v74.size.width = 0.0;
      v74.size.height = 0.0;
      if (!CGRectEqualToRect(v70, v74))
      {
        PaperMarkup.contentsRenderFrame.getter();
        v75.origin.x = CGRectNull.origin.x;
        v75.origin.y = y;
        v75.size.width = width;
        v75.size.height = height;
        if (!CGRectEqualToRect(v71, v75))
        {
          v48 = v65;
          v49 = *(v65 + v67);
          dispatch thunk of PaperMarkupViewController.markup.getter();

          if (v62(v9, 1, v13))
          {
            v50 = v14;
            sub_1002A03D4(v9);
            v51 = 0.0;
          }

          else
          {
            (*(v14 + 16))(v16, v9, v13);
            sub_1002A03D4(v9);
            PaperMarkup.contentsRenderFrame.getter();
            v51 = v52;
            v50 = v14;
            (*(v14 + 8))(v16, v13);
          }

          v53 = *(v48 + v67);
          v54 = v66;
          dispatch thunk of PaperMarkupViewController.markup.getter();

          v55 = v54;
          if (v62(v54, 1, v13))
          {
            sub_1002A03D4(v54);
            v14 = v50;
            if (v51 >= v40)
            {

              (*(v50 + 8))(v20, v13);
              return;
            }
          }

          else
          {
            v14 = v50;
            (*(v50 + 16))(v16, v55, v13);
            sub_1002A03D4(v55);
            PaperMarkup.contentsRenderFrame.getter();
            v57 = v56;
            v58 = *(v50 + 8);
            v58(v16, v13);
            if (v51 + v57 >= v40)
            {

              v58(v20, v13);
              return;
            }
          }

          v59 = v48 + OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperCanvasDelegate;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v60 = *(v59 + 8);
            v61 = swift_getObjectType();
            (*(v60 + 8))(v20, v61, v60);
            swift_unknownObjectRelease();
          }
        }
      }

LABEL_39:
      (*(v14 + 8))(v20, v13);
      return;
    }
  }

  if (v32)
  {
LABEL_26:
    (*(v14 + 8))(v20, v13);

    return;
  }

  v44 = v65;
  v45 = v65 + OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperCanvasDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v46 = *(v45 + 8);
    v47 = swift_getObjectType();
    (*(v46 + 16))(v44, v47, v46);
    swift_unknownObjectRelease();
  }

  (*(v63 + 8))(v20, v13);
}

uint64_t sub_10049A820(void *a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 5 && (v5 = [a1 name]) != 0)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000777B4();
    v7 = StringProtocol.contains<A>(_:)();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_10049A9C0(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100032ECC;

  return sub_100499394(v7, v8, v9, v10, a1, v4, v5, v6);
}

uint64_t sub_10049AAA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1004989B0(a1, v4, v5, v6);
}

unint64_t sub_10049AB58()
{
  result = qword_100AE52A0;
  if (!qword_100AE52A0)
  {
    type metadata accessor for PaperKitDrawingCanvasView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE52A0);
  }

  return result;
}

void sub_10049ABB0()
{
  v1 = type metadata accessor for UIView.Invalidations.Layout();
  __chkstk_darwin(v1);
  v2 = sub_1000F24EC(&qword_100AE5298);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v8 - v4;
  *(v0 + OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperCanvasDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_toolPicker) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_opaqueColor) = 0;
  v6 = OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_contentBackgroundView;
  *(v0 + v6) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_tapToDismissRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_tapToDismiss) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_allowContentGrowth) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_allowContentZoom) = 1;
  *(v0 + OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_hasFixedHeight) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_markupChangeDebounceTimer) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_hasInformedDelegateDrawingStarted) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_allowDrawing) = 1;
  *(v0 + OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_needsContentAdjusted) = 0;
  v7 = OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView__preferredMarkupHeight;
  v8[1] = 0;
  UIView.Invalidations.Layout.init()();
  sub_100026580();
  UIView.Invalidating.init(wrappedValue:_:)();
  (*(v3 + 32))(v0 + v7, v5, v2);
  *(v0 + OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_maxZoomRange) = 0x4014000000000000;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10049AE34()
{
  v1 = v0;
  v48 = type metadata accessor for AssetType();
  v2 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = Notification.userInfo.getter();
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v6;
  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16) || (v7 = sub_100361EDC(v53), (v8 & 1) == 0))
  {
    sub_100177B94(v53);
    goto LABEL_7;
  }

  sub_10000BA20(*(v5 + 56) + 32 * v7, &v51);
  sub_100177B94(v53);
  sub_1000F24EC(&qword_100AE2A90);
  if (!swift_dynamicCast())
  {
LABEL_7:
    v9 = &_swiftEmptySetSingleton;
    goto LABEL_8;
  }

  v9 = v50;
LABEL_8:
  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v10;
  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16) || (v11 = sub_100361EDC(v53), (v12 & 1) == 0))
  {

    sub_100177B94(v53);
    goto LABEL_13;
  }

  sub_10000BA20(*(v5 + 56) + 32 * v11, &v51);
  sub_100177B94(v53);

  sub_1000F24EC(&qword_100AE2A90);
  if (!swift_dynamicCast())
  {
LABEL_13:
    v13 = &_swiftEmptySetSingleton;
    goto LABEL_14;
  }

  v13 = v50;
LABEL_14:
  sub_1003DE548(v13, v9);
  v42[1] = v1;
  v42[3] = v14;
  if ((v14 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000065A8(0, &unk_100AE4860);
    sub_10049C830();
    Set.Iterator.init(_cocoa:)();
    v15 = v53[0];
    v16 = v53[1];
    v17 = v53[2];
    v18 = v53[3];
    v19 = v53[4];
  }

  else
  {
    v20 = -1 << *(v14 + 32);
    v16 = v14 + 56;
    v17 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v19 = v22 & *(v14 + 56);
    v18 = 0;
  }

  v42[2] = v17;
  v23 = (v17 + 64) >> 6;
  v45 = enum case for AssetType.link(_:);
  v43 = (v2 + 8);
  v44 = (v2 + 104);
  v46 = v15;
  v24 = v48;
  while (1)
  {
    v25 = v19;
    v26 = v18;
    if (v15 < 0)
    {
      v30 = __CocoaSet.Iterator.next()();
      if (!v30 || (v50 = v30, sub_1000065A8(0, &unk_100AE4860), swift_dynamicCast(), (v29 = v51) == 0))
      {
LABEL_41:
        sub_100014FF8();

        return;
      }

      goto LABEL_32;
    }

    v27 = v18;
    v28 = v19;
    if (!v19)
    {
      break;
    }

LABEL_28:
    v19 = (v28 - 1) & v28;
    v29 = *(*(v15 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v28)))));
    if (!v29)
    {
      goto LABEL_41;
    }

LABEL_32:
    type metadata accessor for JournalEntryAssetMO();
    v31 = swift_dynamicCastClass();
    if (v31)
    {
      v42[4] = v25;
      v42[5] = v26;
      v32 = [v31 assetType];
      v49 = v19;
      if (v32)
      {
        v33 = v32;
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;
      }

      else
      {
        v34 = 0;
        v36 = 0;
      }

      v37 = v47;
      (*v44)(v47, v45, v24);
      v38 = AssetType.rawValue.getter();
      v40 = v39;
      (*v43)(v37, v24);
      if (!v36)
      {

        v15 = v46;
        v19 = v49;
        goto LABEL_22;
      }

      if (v34 == v38 && v36 == v40)
      {

LABEL_44:
        sub_100014FF8();

        sub_10049C240();
        return;
      }

      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v15 = v46;
      v19 = v49;
      if (v41)
      {
        goto LABEL_44;
      }
    }

    else
    {
LABEL_22:
    }
  }

  while (1)
  {
    v18 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v18 >= v23)
    {
      goto LABEL_41;
    }

    v28 = *(v16 + 8 * v18);
    ++v27;
    if (v28)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
}

uint64_t sub_10049B38C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 160);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);

  sub_10007E1CC();

  (*(v4 + 8))(v2, v3);

  v5 = *(v0 + 8);

  return v5();
}

void sub_10049B494(void *a1)
{
  v3 = type metadata accessor for LinkAssetMetadata();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1000F24EC(&qword_100AD50C8);
  __chkstk_darwin(v7 - 8);
  v9 = &v92 - v8;
  type metadata accessor for JournalEntryAssetMO();
  v10 = NSManagedObjectContext.fetch<A>(_:)();
  if (!v1)
  {
    v11 = v10;
    v107 = v9;
    v105 = v3;
    v12 = v10 >> 62;
    v96 = 0;
    if (v10 >> 62)
    {
LABEL_74:
      v13 = _CocoaArrayWrapper.endIndex.getter();
      if (v13)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
LABEL_4:
        if (qword_100ACFDE8 != -1)
        {
          swift_once();
        }

        v14 = type metadata accessor for Logger();
        v15 = sub_10000617C(v14, qword_100AE52B0);

        v111 = v15;
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.default.getter();
        v18 = os_log_type_enabled(v16, v17);
        v95 = a1;
        v100 = v6;
        v109 = v13;
        if (v18)
        {
          v19 = swift_slowAlloc();
          *v19 = 134217984;
          if (v12)
          {
            v20 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v20 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v19 + 4) = v20;

          _os_log_impl(&_mh_execute_header, v16, v17, "AssetContentTypeOperation found %ld assets to update.", v19, 0xCu);
        }

        else
        {
        }

        v22 = 0;
        v110 = v11 & 0xC000000000000001;
        v103 = v11 & 0xFFFFFFFFFFFFFF8;
        v104 = v4 + 6;
        v98 = v4 + 1;
        v99 = v4 + 2;
        v97 = 0x80000001008DC410;
        *&v21 = 138412546;
        v106 = v21;
        a1 = v107;
        v108 = v11;
        while (1)
        {
          if (v110)
          {
            v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v22 >= *(v103 + 16))
            {
              goto LABEL_73;
            }

            v23 = *(v11 + 8 * v22 + 32);
          }

          v6 = v23;
          v12 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            __break(1u);
LABEL_73:
            __break(1u);
            goto LABEL_74;
          }

          v4 = sub_100039CE0();
          type metadata accessor for LinkAsset();
          v24 = swift_dynamicCastClass();
          if (!v24)
          {
            v33 = v6;
            v34 = v4;
            v4 = Logger.logObject.getter();
            v6 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v4, v6))
            {
              v35 = swift_slowAlloc();
              v36 = swift_slowAlloc();
              *v35 = v106;
              v37 = [v33 objectID];
              *(v35 + 4) = v37;
              *(v35 + 12) = 2112;
              *(v35 + 14) = v34;
              *v36 = v37;
              v36[1] = v34;
              v38 = v34;
              _os_log_impl(&_mh_execute_header, v4, v6, "AssetContentTypeOperation[%@]: asset (%@) is not LinkAsset.", v35, 0x16u);
              sub_1000F24EC(&unk_100AD4BB0);
              swift_arrayDestroy();
              a1 = v107;
            }

            else
            {
            }

            goto LABEL_15;
          }

          v25 = v24;
          if (!*(v24 + OBJC_IVAR____TtC7Journal9LinkAsset_metadata))
          {
            goto LABEL_25;
          }

          sub_10025E308(a1);

          v26 = v105;
          if ((v104->isa)(a1, 1, v105))
          {
            sub_100004F84(a1, &qword_100AD50C8);
LABEL_25:
            v27 = v6;
            v6 = v4;
            v4 = Logger.logObject.getter();
            v28 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v4, v28))
            {
              v29 = swift_slowAlloc();
              v30 = swift_slowAlloc();
              *v29 = v106;
              v31 = [v27 objectID];
              *(v29 + 4) = v31;
              *(v29 + 12) = 2112;
              *(v29 + 14) = v25;
              *v30 = v31;
              v30[1] = v25;
              v32 = v6;
              _os_log_impl(&_mh_execute_header, v4, v28, "AssetContentTypeOperation[%@]: can't get linkMetadata from %@.", v29, 0x16u);
              sub_1000F24EC(&unk_100AD4BB0);
              swift_arrayDestroy();
              a1 = v107;
            }

            else
            {
            }

            v11 = v108;
            goto LABEL_15;
          }

          v39 = v100;
          (v99->isa)(v100, a1, v26);
          sub_100004F84(a1, &qword_100AD50C8);
          v40 = LinkAssetMetadata.data.getter();
          v102 = v22 + 1;
          v41 = v40;
          v43 = v42;
          a1 = v107;
          (v98->isa)(v39, v26);
          isa = Data._bridgeToObjectiveC()().super.isa;
          v45 = [objc_opt_self() metadataWithDataRepresentation:isa];

          v46 = v41;
          v12 = v102;
          sub_1000340DC(v46, v43);
          if (!v45)
          {
            goto LABEL_25;
          }

          v101 = v45;
          v47 = sub_1001D8C1C();
          v48 = 0xD000000000000010;
          if (v47 != 5)
          {
            v48 = 0x6E776F6E6B6E75;
          }

          v49 = v97;
          if (v47 != 5)
          {
            v49 = 0xE700000000000000;
          }

          v50 = 1802465122;
          if (v47 != 3)
          {
            v50 = 30324;
          }

          v51 = 0xE400000000000000;
          if (v47 != 3)
          {
            v51 = 0xE200000000000000;
          }

          if (v47 <= 4)
          {
            v48 = v50;
            v49 = v51;
          }

          v52 = 0x74736163646F70;
          if (v47 != 1)
          {
            v52 = 0x656C6369747261;
          }

          v53 = 0xE700000000000000;
          if (!v47)
          {
            v52 = 0x636973756DLL;
            v53 = 0xE500000000000000;
          }

          v54 = v47 <= 2 ? v52 : v48;
          v55 = v47 <= 2 ? v53 : v49;
          v56 = [v6 contentType];
          if (!v56)
          {
            break;
          }

          v57 = v56;
          v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v60 = v59;

          if (v58 == v54 && v60 == v55)
          {

            v11 = v108;
          }

          else
          {
            v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v11 = v108;
            if ((v61 & 1) == 0)
            {
              break;
            }
          }

          v62 = v6;

          v6 = Logger.logObject.getter();
          v63 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v6, v63))
          {
            v64 = swift_slowAlloc();
            v92 = v6;
            v6 = v64;
            v65 = swift_slowAlloc();
            v66 = v62;
            v94 = v62;
            v67 = v65;
            v93 = swift_slowAlloc();
            v112 = v93;
            LODWORD(v6->isa) = v106;
            v68 = [v66 objectID];
            *(&v6->isa + 4) = v68;
            *v67 = v68;
            WORD2(v6[1].isa) = 2080;
            v69 = sub_100008458(v54, v55, &v112);

            *(&v6[1].isa + 6) = v69;
            v11 = v108;
            v70 = v63;
            v71 = v92;
            _os_log_impl(&_mh_execute_header, v92, v70, "AssetContentTypeOperation[%@]: contentType is already set to correct value (%s)", v6, 0x16u);
            sub_100004F84(v67, &unk_100AD4BB0);

            sub_10000BA7C(v93);

            v72 = v94;
          }

          else
          {

            v72 = v101;
          }

LABEL_64:
          v12 = v102;
LABEL_15:
          ++v22;
          if (v12 == v109)
          {

            v84 = v95;
            if ([v95 hasChanges])
            {
              v112 = 0;
              if (![v84 save:&v112])
              {
                v90 = v112;
                _convertNSErrorToError(_:)();

                swift_willThrow();
                return;
              }

              v85 = v112;
              v86 = Logger.logObject.getter();
              v87 = static os_log_type_t.default.getter();
              if (!os_log_type_enabled(v86, v87))
              {
                goto LABEL_80;
              }

              v88 = swift_slowAlloc();
              *v88 = 0;
              v89 = "AssetContentTypeOperation saved successfully.";
            }

            else
            {
              v86 = Logger.logObject.getter();
              v87 = static os_log_type_t.default.getter();
              if (!os_log_type_enabled(v86, v87))
              {
                goto LABEL_80;
              }

              v88 = swift_slowAlloc();
              *v88 = 0;
              v89 = "AssetContentTypeOperation no changes to save.";
            }

LABEL_79:
            _os_log_impl(&_mh_execute_header, v86, v87, v89, v88, 2u);

            goto LABEL_80;
          }
        }

        v73 = String._bridgeToObjectiveC()();
        [v6 setContentType:v73];

        v74 = v6;

        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v75, v76))
        {
          v6 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v93 = v75;
          v78 = v77;
          v94 = swift_slowAlloc();
          v112 = v94;
          LODWORD(v6->isa) = v106;
          v79 = [v74 objectID];
          *(&v6->isa + 4) = v79;
          *v78 = v79;
          WORD2(v6[1].isa) = 2080;
          v80 = sub_100008458(v54, v55, &v112);
          v81 = v74;
          v82 = v80;

          *(&v6[1].isa + 6) = v82;
          v83 = v93;
          _os_log_impl(&_mh_execute_header, v93, v76, "AssetContentTypeOperation[%@]: setting content type to %s", v6, 0x16u);
          sub_100004F84(v78, &unk_100AD4BB0);

          sub_10000BA7C(v94);
        }

        else
        {
        }

        v11 = v108;
        goto LABEL_64;
      }
    }

    if (qword_100ACFDE8 != -1)
    {
      swift_once();
    }

    v91 = type metadata accessor for Logger();
    sub_10000617C(v91, qword_100AE52B0);
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      v89 = "AssetContentTypeOperation - nothing to process.";
      goto LABEL_79;
    }

LABEL_80:
  }
}

id sub_10049C200()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssetContentTypeOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10049C240()
{
  v1 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  if (qword_100AE52E0)
  {
    if (qword_100ACFDE8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000617C(v4, qword_100AE52B0);
    v11 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v11, v5, "AssetContentTypeOperation.scheduleOperation - operation already scheduled", v6, 2u);
    }

    v7 = v11;
  }

  else
  {
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v0;
    qword_100AE52E0 = sub_1003E9628(0, 0, v3, &unk_100957A60, v9);
  }
}

uint64_t sub_10049C430()
{
  v1 = type metadata accessor for ContinuousClock();
  v0[4] = v1;
  v0[5] = *(v1 - 8);
  v0[6] = swift_task_alloc();

  return _swift_task_switch(sub_10049C4EC, 0, 0);
}

uint64_t sub_10049C4EC()
{
  if (qword_100ACFDE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 56) = sub_10000617C(v1, qword_100AE52B0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "AssetContentTypeOperation.scheduleOperation - starting operation task timer", v4, 2u);
  }

  static Clock<>.continuous.getter();
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_10049C67C;

  return sub_10003FA1C(5000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_10049C67C()
{
  v2 = *v1;

  v3 = v2[6];
  v4 = v2[5];
  v5 = v2[4];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_10049C94C;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_10007DCB0;
  }

  return _swift_task_switch(v6, 0, 0);
}

unint64_t sub_10049C830()
{
  result = qword_100AE2A98;
  if (!qword_100AE2A98)
  {
    sub_1000065A8(255, &unk_100AE4860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2A98);
  }

  return result;
}

uint64_t sub_10049C898()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100032ECC;

  return sub_10049C430();
}

uint64_t sub_10049C950()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001F15C0, v2, v1);
}

void sub_10049C9E4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController_recordingManager + 8);
  ObjectType = swift_getObjectType();
  if ((*(v2 + 32))(ObjectType, v2))
  {
    v4 = sub_10049D160();
    sub_10049CB14();
    if (v5)
    {
      v6 = String._bridgeToObjectiveC()();
    }

    else
    {
      v6 = 0;
    }

    [v4 setText:v6];

    v7 = *(v1 + OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController____lazy_storage___timeLabel);
    sub_10049CD1C();
    if (v8)
    {
      v9 = String._bridgeToObjectiveC()();
    }

    else
    {
      v9 = 0;
    }

    [v7 setAccessibilityValue:v9];
  }
}

uint64_t sub_10049CB14()
{
  v1 = type metadata accessor for Duration.TimeFormatStyle.Pattern();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Duration.TimeFormatStyle();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v0 + OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController_recordingManager;
  v10 = *(v0 + OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController_recordingManager);
  v11 = *(v9 + 8);
  ObjectType = swift_getObjectType();
  v14 = v10;
  (*(*(v11 + 8) + 24))(ObjectType);
  static Duration.seconds(_:)();
  static Duration.TimeFormatStyle.Pattern.minuteSecond.getter();
  static FormatStyle<>.time(pattern:)();
  (*(v2 + 8))(v4, v1);
  sub_10049E8B0(&qword_100ADD0F0, &type metadata accessor for Duration.TimeFormatStyle);
  Duration.formatted<A>(_:)();
  (*(v6 + 8))(v8, v5);
  return v14;
}

uint64_t sub_10049CD1C()
{
  v1 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  v29 = *(v1 - 8);
  v30 = v1;
  __chkstk_darwin(v1);
  v3 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  v27 = *(v4 - 8);
  v28 = v4;
  __chkstk_darwin(v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v7 = *(v26 - 8);
  __chkstk_darwin(v26);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Duration.UnitsFormatStyle();
  v11 = *(v10 - 8);
  v24 = v10;
  v25 = v11;
  __chkstk_darwin(v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v0 + OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController_recordingManager;
  v16 = *(v0 + OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController_recordingManager);
  v15 = *(v14 + 8);
  ObjectType = swift_getObjectType();
  v31 = v16;
  (*(*(v15 + 8) + 24))(ObjectType);
  v18 = static Duration.seconds(_:)();
  v23[1] = v19;
  v23[2] = v18;
  static Duration.UnitsFormatStyle.UnitWidth.wide.getter();
  sub_1000F24EC(&qword_100ADCE28);
  type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100942000;
  static Duration.UnitsFormatStyle.Unit.hours.getter();
  static Duration.UnitsFormatStyle.Unit.minutes.getter();
  static Duration.UnitsFormatStyle.Unit.seconds.getter();
  sub_1002E42F8(v20);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
  static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide.getter();
  static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();

  (*(v29 + 8))(v3, v30);
  (*(v27 + 8))(v6, v28);
  (*(v7 + 8))(v9, v26);
  sub_10049E8B0(&qword_100ADD0F8, &type metadata accessor for Duration.UnitsFormatStyle);
  v21 = v24;
  Duration.formatted<A>(_:)();
  (*(v25 + 8))(v13, v21);
  return v31;
}

id sub_10049D160()
{
  v1 = OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController____lazy_storage___timeLabel;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController____lazy_storage___timeLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController____lazy_storage___timeLabel);
  }

  else
  {
    v4 = sub_10049D81C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10049D1C0()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController____lazy_storage___stopButton;
  v4 = *(v0 + OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController____lazy_storage___stopButton);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController____lazy_storage___stopButton);
  }

  else
  {
    sub_1000065A8(0, &qword_100AD4420);
    *(swift_allocObject() + 24) = *(v0 + OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController_recordingManager + 8);
    swift_unknownObjectWeakInit();
    v6 = v0;
    v7 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    type metadata accessor for AudioRecordingLiveActivityStopButton();
    v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:v7 primaryAction:{0.0, 0.0, 0.0, 0.0}];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    swift_getKeyPath();
    swift_getKeyPath();
    v9 = v8;
    static UIView.Invalidating.subscript.setter();
    v10 = v9;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v11 = String._bridgeToObjectiveC()();

    [v10 setAccessibilityLabel:v11];

    v12 = *(v6 + v3);
    *(v6 + v3) = v10;
    v5 = v10;

    v4 = 0;
  }

  v13 = v4;
  return v5;
}

uint64_t sub_10049D654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10049D6EC, v6, v5);
}

id sub_10049D6EC()
{
  result = [*(v0 + 16) view];
  if (result)
  {
    v2 = result;

    [v2 setNeedsLayout];

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10049D81C()
{
  v0 = type metadata accessor for ColorResource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = [objc_allocWithZone(UILabel) init];
  sub_1000065A8(0, &qword_100AD4C70);
  if (qword_100AD0CB0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000617C(v0, qword_100B31520);
  (*(v1 + 16))(v3, v5, v0);
  v6 = UIColor.init(resource:)();
  [v4 setTextColor:v6];

  sub_1000F24EC(&unk_100ADFBF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100940050;
  *(inited + 32) = UIFontWeightMedium;
  *(inited + 40) = 0;
  *(inited + 48) = 3;
  *(inited + 56) = xmmword_100957A70;
  *(inited + 72) = 2;
  v8 = sub_100047788(UIFontTextStyleTitle3, inited, 0);
  swift_setDeallocating();
  swift_arrayDestroy();
  [v4 setFont:v8];

  [v4 setAdjustsFontForContentSizeCategory:1];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v4;
}

uint64_t sub_10049DA64(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    sub_100885C48(ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10049DAF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioRecordingLiveActivityViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void (*sub_10049DC10())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_10049DC6C;
}

uint64_t sub_10049DCA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_10049D654(a1, v4, v5, v6);
}

uint64_t sub_10049DD58(char *a1)
{
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = *&a1[OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController_recordingManager + 8];
  ObjectType = swift_getObjectType();
  result = (*(v5 + 32))(ObjectType, v5);
  if (!result)
  {
    v8 = OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController_recordingFinishedTask;
    v9 = *&a1[OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController_recordingFinishedTask];
    if (!v9)
    {
      v10 = type metadata accessor for TaskPriority();
      (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
      type metadata accessor for MainActor();
      v11 = a1;
      v12 = static MainActor.shared.getter();
      v13 = swift_allocObject();
      v13[2] = v12;
      v13[3] = &protocol witness table for MainActor;
      v13[4] = v11;
      v9 = sub_1003E9628(0, 0, v4, &unk_100957AE8, v13);
    }

    *&a1[v8] = v9;
  }

  return result;
}

uint64_t sub_10049DEEC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v4[5] = static MainActor.shared.getter();
  v8 = (*((swift_isaMask & *a4) + 0xA8) + **((swift_isaMask & *a4) + 0xA8));
  v6 = swift_task_alloc();
  v4[6] = v6;
  *v6 = v4;
  v6[1] = sub_10049E040;

  return v8();
}

uint64_t sub_10049E040()
{
  v1 = *v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v1 + 56) = v3;
  *(v1 + 64) = v2;

  return _swift_task_switch(sub_10049E184, v3, v2);
}

uint64_t sub_10049E184()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController_recordingManager);
  v3 = *v1;
  v2 = v1[1];
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_10049E244;

  return (sub_10057509C)(v3, v2);
}

uint64_t sub_10049E244()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_10049E364, v3, v2);
}

uint64_t sub_10049E364()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000EC728, v1, v0);
}

void sub_10049E3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    type metadata accessor for MainActor();
    v10 = v8;
    v11 = static MainActor.shared.getter();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = &protocol witness table for MainActor;
    v12[4] = v10;
    sub_1003E9628(0, 0, v6, a3, v12);
  }
}

uint64_t sub_10049E574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10049E60C, v6, v5);
}

uint64_t sub_10049E60C()
{
  v1 = *(v0 + 16);

  *(swift_task_alloc() + 16) = v1;
  *(swift_task_alloc() + 16) = v1;
  withObservationTracking<A>(_:onChange:)();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10049E6E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_10049E574(a1, v4, v5, v6);
}

void (*sub_10049E798())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_10049E53C;
}

uint64_t sub_10049E7F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_10049DEEC(a1, v4, v5, v6);
}

uint64_t sub_10049E8B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10049E900()
{
  v0 = sub_1000F24EC(&qword_100AEE0E0);
  sub_100006118(v0, qword_100B2F990);
  sub_10000617C(v0, qword_100B2F990);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_10049E9B4()
{
  v0 = sub_1000F24EC(&qword_100AEE0E0);
  sub_100006118(v0, qword_100B2F9A8);
  sub_10000617C(v0, qword_100B2F9A8);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_10049EA74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v16 = a1;
  v17 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v3 = *(v17 - 8);
  __chkstk_darwin(v17);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000F24EC(&qword_100ADA098);
  v6 = *(v18 - 8);
  __chkstk_darwin(v18);
  v8 = &v16 - v7;
  v9 = sub_1000F24EC(&qword_100ADA0A0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  sub_10000B58C(&qword_100ADA0A8, &qword_100ADA0A0);
  static PredicateExpressions.build_Arg<A>(_:)();
  v19 = 1;
  static PredicateExpressions.build_Arg<A>(_:)();
  v13 = v17;
  (*(v3 + 104))(v5, enum case for PredicateExpressions.ComparisonOperator.greaterThan(_:), v17);
  a2[3] = sub_1000F24EC(&qword_100ADA0B0);
  a2[4] = sub_1000B1210();
  sub_10001A770(a2);
  sub_10000B58C(&qword_100ADA0D0, &qword_100ADA098);
  v14 = v18;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  (*(v3 + 8))(v5, v13);
  (*(v6 + 8))(v8, v14);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_10049ED9C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000F24EC(&qword_100ADA050);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-v4];
  v6 = sub_1000F24EC(&qword_100ADA058);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11[-v8];
  sub_10000B58C(&qword_100ADA060, &qword_100ADA058);
  static PredicateExpressions.build_Arg<A>(_:)();
  v11[15] = 0;
  static PredicateExpressions.build_Arg<A>(_:)();
  a1[3] = sub_1000F24EC(&qword_100ADA068);
  a1[4] = sub_10023F2A0();
  sub_10001A770(a1);
  sub_10000B58C(&qword_100ADA088, &qword_100ADA050);
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10049F0D4()
{
  v0 = sub_1000F24EC(&qword_100ADC228);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - v2;
  v4 = type metadata accessor for Tips.MaxDisplayCount();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100ADC238);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  Tips.MaxDisplayCount.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v5 + 8))(v7, v4);
  v15 = v4;
  v16 = &protocol witness table for Tips.MaxDisplayCount;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v15 = v8;
  v16 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v13 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v1 + 8))(v3, v0);
  (*(v9 + 8))(v11, v8);
  return v13;
}

uint64_t sub_10049F378@<X0>(uint64_t *a1@<X8>)
{
  sub_10015CEB4();
  result = Tip.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10049F3BC()
{
  result = qword_100AE5458;
  if (!qword_100AE5458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5458);
  }

  return result;
}

uint64_t sub_10049F410()
{
  v0 = sub_1000F24EC(&unk_100ADE720);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v18 - v2;
  v4 = sub_1000F24EC(&qword_100AEE0E0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - v6;
  v8 = type metadata accessor for Tips.Rule();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100ACFDF8 != -1)
  {
    swift_once();
  }

  v12 = sub_10000617C(v4, qword_100B2F990);
  swift_beginAccess();
  v18[0] = *(v5 + 16);
  (v18[0])(v7, v12, v4);
  Tips.Rule.init<A>(_:_:)();
  v18[1] = static Tips.RuleBuilder.buildExpression(_:)();
  v13 = *(v9 + 8);
  v13(v11, v8);
  if (qword_100ACFF08 != -1)
  {
    swift_once();
  }

  v14 = sub_10000617C(v0, qword_100B2FAA8);
  (*(v1 + 16))(v3, v14, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v13(v11, v8);
  if (qword_100ACFE00 != -1)
  {
    swift_once();
  }

  v15 = sub_10000617C(v4, qword_100B2F9A8);
  swift_beginAccess();
  (v18[0])(v7, v15, v4);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v13(v11, v8);
  static Tips.RuleBuilder.buildPartialBlock(first:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  v16 = static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  return v16;
}

void sub_10049F884()
{
  v1 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  if (!*(v0 + 24))
  {
    static TaskPriority.background.getter();
    v4 = type metadata accessor for TaskPriority();
    (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v5;
    *(v0 + 24) = sub_1003E9628(0, 0, v3, &unk_100957CF0, v6);
  }
}

uint64_t sub_10049F9C0()
{
  if (*(v0 + 24))
  {

    Task.cancel()();
  }

  *(v0 + 24) = 0;

  return swift_deallocClassInstance();
}

unint64_t sub_10049FA94()
{
  result = qword_100AE5510;
  if (!qword_100AE5510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5510);
  }

  return result;
}

uint64_t sub_10049FAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = type metadata accessor for NWInterface.InterfaceType();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = type metadata accessor for NWPath.Status();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v7 = type metadata accessor for NWPath();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE5518);
  v4[17] = swift_task_alloc();
  v8 = type metadata accessor for NWPathMonitor.Iterator();
  v4[18] = v8;
  v4[19] = *(v8 - 8);
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_10049FD00, 0, 0);
}

uint64_t sub_10049FD00()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 168) = Strong;
  if (Strong)
  {

    NWPathMonitor.makeAsyncIterator()();
    v2 = enum case for NWInterface.InterfaceType.wifi(_:);
    *(v0 + 192) = enum case for NWPath.Status.satisfied(_:);
    *(v0 + 196) = v2;
    v3 = enum case for NWInterface.InterfaceType.cellular(_:);
    *(v0 + 200) = enum case for NWInterface.InterfaceType.wiredEthernet(_:);
    *(v0 + 204) = v3;
    v4 = sub_1004A0934();
    v5 = swift_task_alloc();
    *(v0 + 176) = v5;
    *v5 = v0;
    v5[1] = sub_10049FEA4;
    v6 = *(v0 + 136);
    v7 = *(v0 + 144);

    return dispatch thunk of AsyncIteratorProtocol.next()(v6, v7, v4);
  }

  else
  {

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_10049FEA4()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1004A0384;
  }

  else
  {
    v2 = sub_10049FFB8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10049FFD4()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));

LABEL_5:

    v10 = *(v0 + 8);

    return v10();
  }

  (*(v3 + 32))(*(v0 + 128), v1, v2);
  if (static Task<>.isCancelled.getter())
  {
    v4 = *(v0 + 160);
    v5 = *(v0 + 144);
    v6 = *(v0 + 152);
    v8 = *(v0 + 120);
    v7 = *(v0 + 128);
    v9 = *(v0 + 112);

    (*(v8 + 8))(v7, v9);
    (*(v6 + 8))(v4, v5);
    goto LABEL_5;
  }

  v12 = *(v0 + 192);
  v14 = *(v0 + 96);
  v13 = *(v0 + 104);
  v15 = *(v0 + 80);
  v16 = *(v0 + 88);
  v17 = *(*(v0 + 168) + 32);
  NWPath.status.getter();
  (*(v16 + 104))(v14, v12, v15);
  v18 = static NWPath.Status.== infix(_:_:)();
  v19 = *(v16 + 8);
  v19(v14, v15);
  v19(v13, v15);
  if (v18)
  {
    v21 = *(v0 + 64);
    v20 = *(v0 + 72);
    v22 = *(v0 + 56);
    v23 = *(v21 + 104);
    v23(v20, *(v0 + 196), v22);
    v24 = NWPath.usesInterfaceType(_:)();
    v25 = *(v21 + 8);
    v25(v20, v22);
    if (v24)
    {
      v26 = 1;
    }

    else
    {
      v34 = *(v0 + 72);
      v35 = *(v0 + 56);
      v23(v34, *(v0 + 200), v35);
      v36 = NWPath.usesInterfaceType(_:)();
      v25(v34, v35);
      if (v36)
      {
        v26 = 2;
      }

      else
      {
        v37 = *(v0 + 72);
        v38 = *(v0 + 56);
        v23(v37, *(v0 + 204), v38);
        v39 = NWPath.usesInterfaceType(_:)();
        v25(v37, v38);
        if (v39)
        {
          v26 = 0;
        }

        else
        {
          v26 = 3;
        }
      }
    }
  }

  else
  {
    v26 = 4;
  }

  v28 = *(v0 + 120);
  v27 = *(v0 + 128);
  v29 = *(v0 + 112);
  v17(v26);
  (*(v28 + 8))(v27, v29);
  v30 = sub_1004A0934();
  v31 = swift_task_alloc();
  *(v0 + 176) = v31;
  *v31 = v0;
  v31[1] = sub_10049FEA4;
  v32 = *(v0 + 136);
  v33 = *(v0 + 144);

  return dispatch thunk of AsyncIteratorProtocol.next()(v32, v33, v30);
}

uint64_t sub_1004A0384()
{
  *(v0 + 40) = *(v0 + 184);
  sub_1000F24EC(&qword_100AD5BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1004A0410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = type metadata accessor for NWPath();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE5518);
  v4[7] = swift_task_alloc();
  v6 = type metadata accessor for NWPathMonitor.Iterator();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_1004A0564, 0, 0);
}

uint64_t sub_1004A0564()
{

  NWPathMonitor.makeAsyncIterator()();
  v1 = sub_1004A0934();
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_1004A0628;
  v3 = v0[7];
  v4 = v0[8];

  return dispatch thunk of AsyncIteratorProtocol.next()(v3, v4, v1);
}

uint64_t sub_1004A0628()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_100248BF8;
  }

  else
  {
    v2 = sub_1004A073C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004A0758()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v4 = v0[6];
    v5 = v0[3];
    (*(v3 + 32))(v4, v1, v2);
    v6 = *(v5 + 32);
    v7 = sub_1004A098C();
    v6(v7);
    (*(v3 + 8))(v4, v2);
  }

  (*(v0[9] + 8))(v0[10], v0[8]);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1004A0880(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_10049FAE8(a1, v4, v5, v6);
}

unint64_t sub_1004A0934()
{
  result = qword_100AE5520;
  if (!qword_100AE5520)
  {
    type metadata accessor for NWPathMonitor.Iterator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5520);
  }

  return result;
}

uint64_t sub_1004A098C()
{
  v0 = type metadata accessor for NWInterface.InterfaceType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NWPath.Status();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  NWPath.status.getter();
  (*(v5 + 104))(v8, enum case for NWPath.Status.satisfied(_:), v4);
  v11 = static NWPath.Status.== infix(_:_:)();
  v12 = *(v5 + 8);
  v12(v8, v4);
  v12(v10, v4);
  if ((v11 & 1) == 0)
  {
    return 4;
  }

  v13 = *(v1 + 104);
  v13(v3, enum case for NWInterface.InterfaceType.wifi(_:), v0);
  v14 = NWPath.usesInterfaceType(_:)();
  v15 = *(v1 + 8);
  v15(v3, v0);
  if (v14)
  {
    return 1;
  }

  v13(v3, enum case for NWInterface.InterfaceType.wiredEthernet(_:), v0);
  v17 = NWPath.usesInterfaceType(_:)();
  v15(v3, v0);
  if (v17)
  {
    return 2;
  }

  v13(v3, enum case for NWInterface.InterfaceType.cellular(_:), v0);
  v18 = NWPath.usesInterfaceType(_:)();
  v15(v3, v0);
  if (v18)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_1004A0C48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1004A5160();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC7Journal22DeleteJournalViewModel__selectedDestinationJournal;
  swift_beginAccess();
  return sub_1002A63A4(v3 + v4, a2);
}

uint64_t sub_1004A0CE0(uint64_t a1)
{
  v2 = sub_1000F24EC(&unk_100AD4400);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_1002A63A4(a1, &v6 - v3);
  return sub_1002A44A8(v4);
}

id sub_1004A0E00(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC7Journal38DeleteJournalMoveEntriesViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_1000065A8(0, &qword_100AE55B0);
  UIViewController.ViewLoading.init()();
  sub_1000065A8(0, &qword_100AE88C0);
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  sub_1000065A8(0, &qword_100ADFC10);
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  *&v1[OBJC_IVAR____TtC7Journal38DeleteJournalMoveEntriesViewController_viewModel] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for DeleteJournalMoveEntriesViewController();
  return objc_msgSendSuper2(&v4, "initWithNibName:bundle:", 0, 0);
}

void sub_1004A0FD4()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v27[1] = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v27[0] = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&unk_100AD4400);
  __chkstk_darwin(v6 - 8);
  v8 = v27 - v7;
  v9 = type metadata accessor for JournalSidebarViewModel(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for DeleteJournalMoveEntriesViewController();
  v29.receiver = v0;
  v29.super_class = v14;
  objc_msgSendSuper2(&v29, "viewWillLayoutSubviews");
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v15 = v28;
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);
  v17 = OBJC_IVAR____TtC7Journal38DeleteJournalMoveEntriesViewController_viewModel;

  v18 = sub_100521CB8();

  v28 = v18;
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v19._object = 0x80000001008F5F60;
  v19._countAndFlagsBits = 0xD00000000000001BLL;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v19);
  v20 = *&v1[v17];
  swift_getKeyPath();
  v28 = v20;
  sub_1004A5160();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = OBJC_IVAR____TtC7Journal22DeleteJournalViewModel__selectedDestinationJournal;
  swift_beginAccess();
  sub_1002A63A4(v20 + v21, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100004F84(v8, &unk_100AD4400);

    v22 = 0;
    v23 = 0xE000000000000000;
  }

  else
  {

    sub_100132B1C(v8, v12);
    v22 = *v12;
    v23 = v12[1];

    sub_1004A522C(v12, type metadata accessor for JournalSidebarViewModel);
  }

  v24._countAndFlagsBits = v22;
  v24._object = v23;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v24);

  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v25);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v26 = String._bridgeToObjectiveC()();

  [v15 setText:v26];
}

uint64_t sub_1004A1564()
{
  v1 = type metadata accessor for JournalSidebarViewModel(0);
  v183 = *(v1 - 8);
  __chkstk_darwin(v1 - 8);
  v182 = &v181 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v206 = *(v190 - 8);
  __chkstk_darwin(v190);
  v189 = &v181 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = type metadata accessor for UIButton.Configuration.Size();
  v207 = *(v203 - 8);
  __chkstk_darwin(v203);
  v205 = &v181 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = type metadata accessor for UIButton.Configuration();
  v194 = *(v204 - 8);
  __chkstk_darwin(v204);
  v193 = &v181 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v192 = &v181 - v7;
  __chkstk_darwin(v8);
  v202 = &v181 - v9;
  __chkstk_darwin(v10);
  v191 = &v181 - v11;
  v12 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for Locale();
  __chkstk_darwin(v13 - 8);
  v15 = &v181 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v16 - 8);
  v18 = &v181 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [objc_allocWithZone(UIStackView) init];
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock[0] = v19;
  v20 = v0;
  static UIViewController.ViewLoading.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v21 = aBlock[0];
  [aBlock[0] setAxis:1];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v22 = aBlock[0];
  [aBlock[0] setAlignment:3];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v23 = aBlock[0];
  [aBlock[0] setSpacing:8.0];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v24 = aBlock[0];
  [aBlock[0] setTranslatesAutoresizingMaskIntoConstraints:0];

  v25 = [objc_allocWithZone(UILabel) init];
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock[0] = v25;
  v26 = v20;
  static UIViewController.ViewLoading.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v27 = aBlock[0];
  v28 = sub_100047788(UIFontTextStyleTitle3, &off_100A59FB8, 0);
  sub_100047D60(&unk_100A59FD8);
  [v27 setFont:v28];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v29 = aBlock[0];
  v30 = objc_opt_self();
  v31 = [v30 labelColor];
  [v29 setTextColor:v31];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v32 = aBlock[0];
  [aBlock[0] setTextAlignment:1];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v33 = aBlock[0];
  String.LocalizationValue.init(stringLiteral:)();
  v196 = v15;
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v34 = String._bridgeToObjectiveC()();

  [v33 setText:v34];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v35 = aBlock[0];
  [aBlock[0] setNumberOfLines:0];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v36 = aBlock[0];
  [aBlock[0] setTranslatesAutoresizingMaskIntoConstraints:0];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v37 = aBlock[0];
  v38 = UIAccessibilityTraitHeader;
  v39 = [aBlock[0] accessibilityTraits];
  if ((v38 & ~v39) != 0)
  {
    v40 = v38;
  }

  else
  {
    v40 = 0;
  }

  [v37 setAccessibilityTraits:v40 | v39];

  v41 = [objc_allocWithZone(UILabel) init];
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock[0] = v41;
  v42 = v26;
  static UIViewController.ViewLoading.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v43 = aBlock[0];
  v188 = objc_opt_self();
  v44 = [v188 preferredFontForTextStyle:UIFontTextStyleBody];
  [v43 setFont:v44];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v45 = aBlock[0];
  v46 = [v30 secondaryLabelColor];
  [v45 setTextColor:v46];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v47 = aBlock[0];
  [aBlock[0] setTextAlignment:1];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v48 = aBlock[0];
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v49._object = 0x80000001008F5E90;
  v49._countAndFlagsBits = 0x100000000000002ELL;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v49);
  v184 = OBJC_IVAR____TtC7Journal38DeleteJournalMoveEntriesViewController_viewModel;
  v50 = (*&v42[OBJC_IVAR____TtC7Journal38DeleteJournalMoveEntriesViewController_viewModel] + OBJC_IVAR____TtC7Journal22DeleteJournalViewModel_viewModelForDeletion);
  v51 = *v50;
  v52 = v50[1];

  v53._countAndFlagsBits = v51;
  v53._object = v52;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v53);

  v54._countAndFlagsBits = 0x72756F6A209D80E2;
  v54._object = 0xAC0000002E6C616ELL;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v54);
  v195 = v18;
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v55 = String._bridgeToObjectiveC()();

  [v48 setText:v55];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v56 = aBlock[0];
  [aBlock[0] setNumberOfLines:0];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v57 = aBlock[0];
  [aBlock[0] setTranslatesAutoresizingMaskIntoConstraints:0];

  v58 = v191;
  static UIButton.Configuration.gray()();
  UIButton.Configuration.imagePlacement.setter();
  UIButton.Configuration.imagePadding.setter();
  v201 = enum case for UIButton.Configuration.Size.large(_:);
  v59 = *(v207 + 104);
  v207 += 104;
  v200 = v59;
  v60 = v203;
  v59(v205);
  UIButton.Configuration.buttonSize.setter();
  v198 = sub_1000065A8(0, &qword_100ADFC10);
  v61 = *(v194 + 16);
  v197 = v194 + 16;
  v199 = v61;
  v62 = v204;
  v61(v202, v58, v204);
  v63 = UIButton.init(configuration:primaryAction:)();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock[0] = v63;
  v185 = v42;
  v64 = v42;
  static UIViewController.ViewLoading.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v65 = aBlock[0];
  [aBlock[0] setContentHorizontalAlignment:4];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v66 = aBlock[0];
  [aBlock[0] setShowsMenuAsPrimaryAction:1];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v67 = aBlock[0];
  [aBlock[0] setChangesSelectionAsPrimaryAction:1];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v68 = aBlock[0];
  [aBlock[0] setTranslatesAutoresizingMaskIntoConstraints:0];

  v69 = [objc_allocWithZone(UILabel) init];
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock[0] = v69;
  v70 = v64;
  static UIViewController.ViewLoading.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v71 = aBlock[0];
  v72 = [v188 preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v71 setFont:v72];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v73 = aBlock[0];
  v186 = v30;
  v74 = [v30 secondaryLabelColor];
  [v73 setTextColor:v74];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v75 = aBlock[0];
  [aBlock[0] setNumberOfLines:0];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v76 = aBlock[0];
  [aBlock[0] setTranslatesAutoresizingMaskIntoConstraints:0];

  v77 = v192;
  static UIButton.Configuration.filled()();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  UIButton.Configuration.title.setter();
  v200(v205, v201, v60);
  UIButton.Configuration.buttonSize.setter();
  LODWORD(v188) = enum case for UIButton.Configuration.CornerStyle.capsule(_:);
  v78 = *(v206 + 104);
  v206 += 104;
  v187 = v78;
  v79 = v189;
  v80 = v190;
  v78(v189);
  UIButton.Configuration.cornerStyle.setter();
  v81 = v202;
  v199(v202, v77, v62);
  v82 = UIButton.init(configuration:primaryAction:)();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock[0] = v82;
  v83 = v70;
  static UIViewController.ViewLoading.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v84 = aBlock[0];
  [aBlock[0] setTranslatesAutoresizingMaskIntoConstraints:0];

  v85 = v193;
  static UIButton.Configuration.gray()();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  UIButton.Configuration.title.setter();
  v200(v205, v201, v203);
  UIButton.Configuration.buttonSize.setter();
  v187(v79, v188, v80);
  UIButton.Configuration.cornerStyle.setter();
  v199(v81, v85, v204);
  v86 = UIButton.init(configuration:primaryAction:)();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock[0] = v86;
  v87 = v83;
  static UIViewController.ViewLoading.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v88 = aBlock[0];
  [aBlock[0] setTranslatesAutoresizingMaskIntoConstraints:0];

  v89 = [v87 view];
  if (!v89)
  {
    __break(1u);
    goto LABEL_25;
  }

  v90 = v89;
  v91 = [v186 systemBackgroundColor];
  [v90 setBackgroundColor:v91];

  v92 = [v87 view];
  if (!v92)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v93 = v92;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v94 = aBlock[0];
  [v93 addSubview:aBlock[0]];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v95 = aBlock[0];
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v96 = aBlock[0];
  [v95 addArrangedSubview:aBlock[0]];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v97 = aBlock[0];
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v98 = aBlock[0];
  [v97 addArrangedSubview:aBlock[0]];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v99 = aBlock[0];
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v100 = aBlock[0];
  [v99 setCustomSpacing:aBlock[0] afterView:24.0];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v101 = aBlock[0];
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v102 = aBlock[0];
  [v101 addArrangedSubview:aBlock[0]];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v103 = aBlock[0];
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v104 = aBlock[0];
  [v103 addArrangedSubview:aBlock[0]];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v105 = aBlock[0];
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v106 = aBlock[0];
  [v105 setCustomSpacing:aBlock[0] afterView:24.0];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v107 = aBlock[0];
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v108 = aBlock[0];
  [v107 addArrangedSubview:aBlock[0]];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v109 = aBlock[0];
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v110 = aBlock[0];
  [v109 addArrangedSubview:aBlock[0]];

  sub_1000F24EC(&unk_100AD4780);
  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_100957D10;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v112 = aBlock[0];
  v113 = [aBlock[0] centerXAnchor];

  v80 = &selRef_setSuggestedName_;
  v114 = [v87 view];
  if (!v114)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v115 = v114;
  v116 = [v114 centerXAnchor];

  v117 = [v113 constraintEqualToAnchor:v116];
  *(v111 + 32) = v117;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v118 = aBlock[0];
  v119 = [aBlock[0] centerYAnchor];

  v120 = [v87 view];
  if (!v120)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v121 = v120;
  v122 = [v120 centerYAnchor];

  v123 = [v119 constraintEqualToAnchor:v122];
  *(v111 + 40) = v123;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v124 = aBlock[0];
  v125 = [aBlock[0] topAnchor];

  v126 = [v87 view];
  if (!v126)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v127 = v126;
  v128 = [v126 topAnchor];

  v129 = [v125 constraintGreaterThanOrEqualToAnchor:v128 constant:12.0];
  *(v111 + 48) = v129;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v130 = aBlock[0];
  v131 = [aBlock[0] bottomAnchor];

  v132 = [v87 view];
  if (!v132)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v133 = v132;
  v134 = [v132 bottomAnchor];

  v135 = [v131 constraintLessThanOrEqualToAnchor:v134 constant:-12.0];
  *(v111 + 56) = v135;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v136 = aBlock[0];
  v137 = [aBlock[0] leadingAnchor];

  v138 = [v87 view];
  if (!v138)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v139 = v138;
  v140 = [v138 leadingAnchor];

  v141 = [v137 constraintGreaterThanOrEqualToAnchor:v140 constant:12.0];
  *(v111 + 64) = v141;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v142 = aBlock[0];
  v143 = [aBlock[0] widthAnchor];

  v144 = [v87 view];
  if (!v144)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v145 = v144;
  v146 = [v144 widthAnchor];

  v147 = [v143 constraintEqualToAnchor:v146 constant:-24.0];
  *(v111 + 72) = v147;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v148 = aBlock[0];
  v149 = [aBlock[0] widthAnchor];

  v150 = [v87 view];
  if (!v150)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v151 = v150;
  v152 = [v150 widthAnchor];

  v153 = [v149 constraintEqualToAnchor:v152 constant:-24.0];
  *(v111 + 80) = v153;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v154 = aBlock[0];
  v155 = [aBlock[0] widthAnchor];

  v156 = [v87 view];
  if (v156)
  {
    v157 = v156;
    v158 = objc_opt_self();
    v159 = [v157 widthAnchor];

    v160 = [v155 constraintEqualToAnchor:v159 constant:-24.0];
    *(v111 + 88) = v160;
    sub_1000065A8(0, &qword_100AD8000);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v158 activateConstraints:isa];

    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v162 = aBlock[0];
    [aBlock[0] addTarget:v87 action:"didTapDelete" forControlEvents:64];

    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v163 = aBlock[0];
    [aBlock[0] addTarget:v87 action:"didTapCancel" forControlEvents:64];

    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v164 = aBlock[0];
    v165 = _swiftEmptyArrayStorage;
    aBlock[0] = _swiftEmptyArrayStorage;
    v166 = *(*&v185[v184] + OBJC_IVAR____TtC7Journal22DeleteJournalViewModel_destinationJournals);
    v167 = *(v166 + 16);

    if (v167)
    {
      v168 = 0;
      v169 = v183;
      v170 = v182;
      while (v168 < *(v166 + 16))
      {
        sub_100132B80(v166 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v168, v170);
        sub_1004A3FC8(v170, v87, aBlock);
        ++v168;
        sub_1004A522C(v170, type metadata accessor for JournalSidebarViewModel);
        if (v167 == v168)
        {
          v165 = aBlock[0];
          goto LABEL_19;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_19:

      if (!(v165 >> 62))
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        sub_1000065A8(0, &unk_100ADC630);
        v171 = v165;
LABEL_21:
        sub_1000065A8(0, &unk_100AD4D00);
        v172._countAndFlagsBits = 0;
        v172._object = 0xE000000000000000;
        v209.value.super.isa = 0;
        v209.is_nil = 0;
        v173 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v172, 0, v209, 0, 0xFFFFFFFFFFFFFFFFLL, v171, v180).super.super.isa;

        [v164 setMenu:v173];

        swift_getKeyPath();
        swift_getKeyPath();
        static UIViewController.ViewLoading.subscript.getter();

        v174 = aBlock[0];
        v175 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_1004A5158;
        aBlock[5] = v175;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10016B4D8;
        aBlock[3] = &unk_100A6EED0;
        v176 = _Block_copy(aBlock);

        [v174 setConfigurationUpdateHandler:v176];
        _Block_release(v176);

        v177 = *(v194 + 8);
        v178 = v204;
        v177(v193, v204);
        v177(v192, v178);
        return (v177)(v191, v178);
      }
    }

    sub_1000065A8(0, &unk_100ADC630);

    v171 = _bridgeCocoaArray<A>(_:)();

    goto LABEL_21;
  }

LABEL_33:
  __break(1u);

  result = sub_1004A522C(v80, type metadata accessor for JournalSidebarViewModel);
  __break(1u);
  return result;
}

uint64_t sub_1004A3B44(uint64_t a1)
{
  v2 = sub_1000F24EC(&unk_100AD4400);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v5 = type metadata accessor for JournalSidebarViewModel(0);
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin(v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100AE4250);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  v14 = type metadata accessor for UIButton.Configuration();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  UIButton.configuration.getter();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_100004F84(v13, &qword_100AE4250);
  }

  (*(v15 + 32))(v17, v13, v14);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = a1;
    v20 = *(Strong + OBJC_IVAR____TtC7Journal38DeleteJournalMoveEntriesViewController_viewModel);
    v21 = Strong;

    swift_getKeyPath();
    v28 = v20;
    sub_1004A5160();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v22 = OBJC_IVAR____TtC7Journal22DeleteJournalViewModel__selectedDestinationJournal;
    swift_beginAccess();
    sub_1002A63A4(v20 + v22, v4);
    if ((*(v26 + 48))(v4, 1, v27) == 1)
    {
      sub_100004F84(v4, &unk_100AD4400);
    }

    else
    {

      sub_100132B1C(v4, v7);

      sub_1004A522C(v7, type metadata accessor for JournalSidebarViewModel);
    }
  }

  UIButton.Configuration.title.setter();
  swift_beginAccess();
  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v23;

    sub_1002A4704();
  }

  UIButton.Configuration.image.setter();
  (*(v15 + 16))(v10, v17, v14);
  (*(v15 + 56))(v10, 0, 1, v14);
  UIButton.configuration.setter();
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_1004A3FC8(uint64_t a1, void *a2, void *a3)
{
  v79 = a3;
  v73 = a2;
  v76 = sub_1000F24EC(&qword_100ADBD20);
  __chkstk_darwin(v76);
  v78 = &v65 - v4;
  v5 = sub_1000F24EC(&unk_100AD4400);
  __chkstk_darwin(v5 - 8);
  v67 = (&v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v81 = &v65 - v8;
  __chkstk_darwin(v9);
  v77 = &v65 - v10;
  v11 = type metadata accessor for JournalSidebarViewModel(0);
  v75 = *(v11 - 8);
  __chkstk_darwin(v11);
  v66 = (&v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = v12;
  __chkstk_darwin(v13);
  v71 = &v65 - v14;
  v70 = type metadata accessor for Font.TextStyle();
  v15 = *(v70 - 8);
  __chkstk_darwin(v70);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MergeableJournalAttributes.Icon();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (&v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for JournalMembershipBadge();
  __chkstk_darwin(v22);
  v83 = (&v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = *(a1 + 16);
  v68 = sub_1005215F4();
  v25 = v24;
  v80 = v11;
  v26 = *(v11 + 28);
  v27 = *(v19 + 16);
  v74 = a1;
  v27(v21, a1 + v26, v18);
  if ((*(v19 + 88))(v21, v18) == enum case for MergeableJournalAttributes.Icon.emoji(_:))
  {
    (*(v19 + 96))(v21, v18);
    v28 = *v21;
    v29 = v21[1];
  }

  else
  {
    (*(v19 + 8))(v21, v18);
    v28 = 0;
    v29 = 0;
  }

  v30 = v83;
  v31 = v68;
  *v83 = v69;
  v30[1] = v31;
  v30[2] = v25;
  v30[3] = v28;
  v30[4] = v29;
  *(v30 + 40) = 1;
  v82 = 0x4030000000000000;
  v32 = enum case for Font.TextStyle.footnote(_:);
  v33 = *(v15 + 104);
  v34 = v70;
  v33(v17, enum case for Font.TextStyle.footnote(_:), v70);
  sub_10009BA68();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v82 = 0x4038000000000000;
  v33(v17, v32, v34);
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v82 = 0x4040000000000000;
  v33(v17, v32, v34);
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v70 = sub_1000065A8(0, &qword_100AD4420);
  v35 = v74;
  v36 = objc_opt_self();

  v37 = [v36 currentTraitCollection];
  sub_1003AC4EC(v37);

  v38 = v71;
  sub_100132B80(v35, v71);
  v39 = v75;
  v40 = (*(v75 + 80) + 24) & ~*(v75 + 80);
  v41 = swift_allocObject();
  v42 = v73;
  *(v41 + 16) = v73;
  sub_100132B1C(v38, v41 + v40);
  v43 = v42;
  v44 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v45 = v35;
  v46 = v77;
  sub_100132B80(v45, v77);
  v47 = v80;
  (*(v39 + 56))(v46, 0, 1, v80);
  v48 = *&v43[OBJC_IVAR____TtC7Journal38DeleteJournalMoveEntriesViewController_viewModel];
  swift_getKeyPath();
  v82 = v48;
  sub_1004A5160();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v49 = OBJC_IVAR____TtC7Journal22DeleteJournalViewModel__selectedDestinationJournal;
  swift_beginAccess();
  v50 = v81;
  sub_1002A63A4(v48 + v49, v81);

  v51 = *(v76 + 48);
  v52 = v78;
  sub_1002A63A4(v46, v78);
  sub_1002A63A4(v50, v52 + v51);
  v53 = *(v39 + 48);
  if (v53(v52, 1, v47) == 1)
  {
    sub_100004F84(v50, &unk_100AD4400);
    sub_100004F84(v46, &unk_100AD4400);
    v54 = v53(v52 + v51, 1, v47);
    v55 = v79;
    if (v54 == 1)
    {
      sub_100004F84(v52, &unk_100AD4400);
LABEL_7:
      [v44 setState:1];
      goto LABEL_20;
    }

    goto LABEL_10;
  }

  v56 = v47;
  v57 = v67;
  sub_1002A63A4(v52, v67);
  v58 = v53(v52 + v51, 1, v56);
  v55 = v79;
  if (v58 == 1)
  {
    sub_100004F84(v81, &unk_100AD4400);
    sub_100004F84(v46, &unk_100AD4400);
    sub_1004A522C(v57, type metadata accessor for JournalSidebarViewModel);
LABEL_10:
    v59 = &qword_100ADBD20;
    v60 = v52;
LABEL_19:
    sub_100004F84(v60, v59);
    goto LABEL_20;
  }

  v61 = v66;
  sub_100132B1C(v52 + v51, v66);
  if ((*v57 != *v61 || v57[1] != v61[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_1000065A8(0, &unk_100AD43A0), (static NSObject.== infix(_:_:)() & 1) == 0) || (sub_100524B84(v57 + *(v80 + 24), v61 + *(v80 + 24)) & 1) == 0)
  {
    sub_100004F84(v81, &unk_100AD4400);
    sub_100004F84(v46, &unk_100AD4400);
    sub_1004A522C(v61, type metadata accessor for JournalSidebarViewModel);
    sub_1004A522C(v57, type metadata accessor for JournalSidebarViewModel);
    v60 = v52;
    v59 = &unk_100AD4400;
    goto LABEL_19;
  }

  v62 = static MergeableJournalAttributes.Icon.== infix(_:_:)();
  sub_100004F84(v81, &unk_100AD4400);
  sub_100004F84(v46, &unk_100AD4400);
  sub_1004A522C(v61, type metadata accessor for JournalSidebarViewModel);
  sub_1004A522C(v57, type metadata accessor for JournalSidebarViewModel);
  sub_100004F84(v52, &unk_100AD4400);
  if (v62)
  {
    goto LABEL_7;
  }

LABEL_20:
  v63 = v44;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  return sub_1004A522C(v83, type metadata accessor for JournalMembershipBadge);
}

uint64_t sub_1004A49BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000F24EC(&unk_100AD4400);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  sub_100132B80(a3, &v9 - v5);
  v7 = type metadata accessor for JournalSidebarViewModel(0);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);

  sub_1002A44A8(v6);
}

id sub_1004A4AA8()
{
  v1 = v0;
  v2 = type metadata accessor for SceneSplitViewController.ContentType(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1002A5250();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [v6 parentViewController];

    if (v7)
    {
      type metadata accessor for SceneSplitViewController(0);
      while (1)
      {
        v8 = swift_dynamicCastClass();
        if (v8)
        {
          break;
        }

        v9 = v7;
        v7 = [v9 parentViewController];

        if (!v7)
        {
          goto LABEL_11;
        }
      }

      v10 = [*(v8 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView) isCollapsed];

      if ((v10 & 1) == 0)
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          v11 = sub_1000F24EC(&qword_100AD47A0);
          (*(*(v11 - 8) + 56))(v4, 2, 2, v11);
          v12 = sub_1000F24EC(&unk_100AD4BA0);
          (*(*(v12 - 8) + 56))(v4, 0, 2, v12);
          sub_1002E5234(v4, 0);
          swift_unknownObjectRelease();
          sub_1004A522C(v4, type metadata accessor for SceneSplitViewController.ContentType);
        }

        sub_10002CCF8(0);
      }
    }

LABEL_11:
    swift_unknownObjectRelease();
  }

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

id sub_1004A4D94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeleteJournalMoveEntriesViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DeleteJournalMoveEntriesViewController()
{
  result = qword_100AE5598;
  if (!qword_100AE5598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004A4FF0()
{
  sub_10000E788(319, &qword_100AE55A8, &qword_100AE55B0);
  if (v0 <= 0x3F)
  {
    sub_10000E788(319, &qword_100AE55B8, &qword_100AE88C0);
    if (v1 <= 0x3F)
    {
      sub_10000E788(319, &qword_100AE55C0, &qword_100ADFC10);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_1004A5160()
{
  result = qword_100ADBD18;
  if (!qword_100ADBD18)
  {
    type metadata accessor for DeleteJournalViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADBD18);
  }

  return result;
}

uint64_t sub_1004A51B8(uint64_t a1)
{
  v3 = *(type metadata accessor for JournalSidebarViewModel(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1004A49BC(a1, v4, v5);
}

uint64_t sub_1004A522C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1004A528C()
{
  *(v0 + OBJC_IVAR____TtC7Journal38DeleteJournalMoveEntriesViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1000065A8(0, &qword_100AE55B0);
  UIViewController.ViewLoading.init()();
  sub_1000065A8(0, &qword_100AE88C0);
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  sub_1000065A8(0, &qword_100ADFC10);
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1004A53D8()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE55E0);
  v1 = sub_10000617C(v0, qword_100AE55E0);
  if (qword_100AD01C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FFE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004A54A0()
{
  v1 = sub_1000F24EC(&qword_100AD5B20);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC7Journal10PhotoAsset_metadata);
  if (v4)
  {

    sub_100046ADC(v3);

    v5 = type metadata accessor for PhotoLibraryAssetMetadata();
    v4 = 0;
    if (!(*(*(v5 - 8) + 48))(v3, 1, v5))
    {
      v4 = PhotoLibraryAssetMetadata.placeName.getter();
    }

    sub_100004F84(v3, &qword_100AD5B20);
  }

  return v4;
}

id sub_1004A55CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotoAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1004A5630()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v3 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v51 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v6 - 8);
  v52 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v48 - v9;
  v11 = type metadata accessor for UTType();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000F24EC(&qword_100AD5B20);
  __chkstk_darwin(v15 - 8);
  v17 = &v48 - v16;
  v18 = type metadata accessor for PhotoLibraryAssetMetadata();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v0;
  sub_1006ABED4(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_100004F84(v17, &qword_100AD5B20);
    return 0;
  }

  v49 = v10;
  (*(v19 + 32))(v21, v17, v18);
  v22 = PhotoLibraryAssetMetadata.placeName.getter();
  if (!v23)
  {
    (*(v19 + 8))(v21, v18);
    return 0;
  }

  v24 = v22;
  v25 = v23;
  v48 = v3;
  static UTType.image.getter();
  v26 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = UTType._bridgeToObjectiveC()().super.isa;
  v28 = [v26 initWithContentType:isa];

  (*(v12 + 8))(v14, v11);
  sub_10012B77C(v24, v25, 0, 0);

  v29 = v52;
  PhotoLibraryAssetMetadata.date.getter();
  v30 = v29;
  v31 = type metadata accessor for Date();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  if (v33(v30, 1, v31) == 1)
  {
    v34 = *(v50 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
    if (v34)
    {
      v35 = [v34 entry];
      if (v35)
      {
        v36 = v35;
        v37 = v49;
        JournalEntryMO.displayDate.getter();

        v38 = 0;
      }

      else
      {
        v38 = 1;
        v37 = v49;
      }

      v30 = v52;
    }

    else
    {
      v38 = 1;
      v37 = v49;
    }

    (*(v32 + 56))(v37, v38, 1, v31);
    if (v33(v30, 1, v31) != 1)
    {
      sub_100004F84(v30, &unk_100AD4790);
    }
  }

  else
  {
    v37 = v49;
    (*(v32 + 32))(v49, v30, v31);
    (*(v32 + 56))(v37, 0, 1, v31);
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v39 = String.init(localized:table:bundle:locale:comment:)();
  v41 = v40;
  sub_1000F24EC(&unk_100AD9A60);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_100940080;
  v43 = sub_10012C00C(v39, v41, v37);
  v45 = v44;

  *(v42 + 32) = v43;
  *(v42 + 40) = v45;
  v46 = Array._bridgeToObjectiveC()().super.isa;

  [v28 setAlternateNames:v46];

  sub_100004F84(v37, &unk_100AD4790);
  (*(v19 + 8))(v21, v18);
  return v28;
}

void sub_1004A5C7C()
{
  type metadata accessor for Dictionary();
  if (v0 <= 0x3F)
  {
    sub_1004A5D4C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1004A5D4C()
{
  if (!qword_100AE56F0)
  {
    v0 = type metadata accessor for ComparableComparator();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE56F0);
    }
  }
}

uint64_t sub_1004A5E34()
{
  Dictionary.subscript.getter();
  Dictionary.subscript.getter();
  if (v2)
  {
    return v1 ^ 1u;
  }

  if (v1)
  {
    return -1;
  }

  sub_1000F24EC(qword_100AE5668);
  return ComparableComparator.compare(_:_:)();
}

uint64_t sub_1004A5F1C(uint64_t a1, uint64_t a2)
{
  if ((static Dictionary<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for ListComparator() + 36);

  return static ComparableComparator.== infix(_:_:)(a1 + v4, a2 + v4, &type metadata for Int, &protocol witness table for Int);
}

uint64_t sub_1004A5FC4()
{
  Dictionary<>.hash(into:)();
  sub_1000F24EC(qword_100AE5668);
  sub_1004A619C();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1004A6040()
{
  Hasher.init(_seed:)();
  sub_1004A5FC4();
  return Hasher._finalize()();
}

uint64_t (*sub_1004A6098(uint64_t a1, uint64_t a2))()
{
  *a1 = v2;
  *(a1 + 8) = a2;
  *(a1 + 16) = sub_1004A5DA4();
  return sub_1004A60E4;
}

Swift::Int sub_1004A6114()
{
  Hasher.init(_seed:)();
  sub_1004A5FC4();
  return Hasher._finalize()();
}

unint64_t sub_1004A619C()
{
  result = qword_100AE56F8;
  if (!qword_100AE56F8)
  {
    sub_1000F2A18(qword_100AE5668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE56F8);
  }

  return result;
}

uint64_t sub_1004A6200()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE5700);
  v1 = sub_10000617C(v0, qword_100AE5700);
  if (qword_100AD0268 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B301D8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004A62C8(uint64_t a1)
{
  v2[11] = v1;
  sub_1000F24EC(&unk_100AD6DD0);
  v2[12] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v2[13] = v4;
  v2[14] = v6;

  return _swift_task_switch(sub_1004A63A0, v4, v6);
}

uint64_t sub_1004A63A0()
{
  v19 = v0;
  if (qword_100ACFE10 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = type metadata accessor for Logger();
  sub_10000617C(v2, qword_100AE5700);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 88);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = v17;
    *v7 = 138412546;
    v9 = *(v6 + qword_100B2F9D0);
    *(v7 + 4) = v9;
    *v8 = v9;
    *(v7 + 12) = 2080;
    type metadata accessor for URL();
    sub_1004A6FEC(&qword_100ADEFD0, &type metadata accessor for URL);
    v10 = v9;
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = sub_100008458(v11, v12, &v18);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Transcribing objectID %@ with audio asset at %s", v7, 0x16u);
    sub_100004F84(v8, &unk_100AD4BB0);

    sub_10000BA7C(v17);
  }

  *(v0 + 120) = type metadata accessor for MainActor();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 128) = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004A6630, v15, v14);
}

uint64_t sub_1004A6630()
{

  type metadata accessor for TranscriptionCoordinator(0);
  swift_allocObject();
  v0[17] = sub_100241630((v0 + 2));
  v1 = v0[13];
  v2 = v0[14];

  return _swift_task_switch(sub_1004A66B8, v1, v2);
}

uint64_t sub_1004A66B8()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = qword_100B2F9C8;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v2 + v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_1004A67E0;
  v7 = v0[12];

  return sub_100242704(v7);
}

uint64_t sub_1004A67E0()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  *(*v1 + 152) = v0;

  sub_100004F84(v3, &unk_100AD6DD0);
  v4 = *(v2 + 112);
  v5 = *(v2 + 104);
  if (v0)
  {
    v6 = sub_1004A6B6C;
  }

  else
  {
    v6 = sub_1004A6948;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1004A6948()
{
  *(v0 + 160) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004A69D4, v2, v1);
}

uint64_t sub_1004A69D4()
{
  v1 = v0[17];

  swift_getKeyPath();
  v0[10] = v1;
  sub_1004A6FEC(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v0[21] = *(v1 + 72);
  v2 = v0[13];
  v3 = v0[14];

  return _swift_task_switch(sub_1004A6AE0, v2, v3);
}

uint64_t sub_1004A6AE0()
{
  v1 = v0[11];

  v2 = *(v1 + qword_100B2F9D0);

  v3 = v0[1];
  v4 = v0[21];

  return v3(v2, v4);
}

uint64_t sub_1004A6B6C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1004A6C0C()
{
  v1 = qword_100B2F9C8;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_100B2F9D0);
}

id sub_1004A6C84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioAssetTranscriptionOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1004A6CBC(uint64_t a1)
{
  v2 = qword_100B2F9C8;
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = *(a1 + qword_100B2F9D0);
}

uint64_t type metadata accessor for AudioAssetTranscriptionOperation()
{
  result = qword_100AE5740;
  if (!qword_100AE5740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004A6D84()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1004A6E20(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1004A6EC8;

  return sub_1004A62C8(a2);
}

uint64_t sub_1004A6EC8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_1004A6FEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004A7034(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_100004F84(a1, &qword_100AD1420);
    sub_100651B20(a2, v7);
    (*(v9 + 8))(a2, v8);
    return sub_100004F84(v7, &qword_100AD1420);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_100201E1C(v11, a2, isUniquelyReferenced_nonNull_native);
    result = (*(v9 + 8))(a2, v8);
    *v2 = v15;
  }

  return result;
}

uint64_t sub_1004A7224()
{
  type metadata accessor for AppIconProvider();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = &_swiftEmptyDictionarySingleton;
  qword_100B2F9D8 = v0;
  return result;
}

uint64_t sub_1004A726C(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return _swift_task_switch(sub_1004A7290, v2, 0);
}

uint64_t sub_1004A7290()
{
  v1 = objc_allocWithZone(ISIcon);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithBundleIdentifier:v2];
  v0[22] = v3;

  v4 = [objc_allocWithZone(ISImageDescriptor) init];
  v0[23] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1004A7418;
  v5 = swift_continuation_init();
  v0[17] = sub_1000F24EC(&qword_100AE5900);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1004A75BC;
  v0[13] = &unk_100A6EF88;
  v0[14] = v5;
  [v3 getCGImageForImageDescriptor:v4 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004A7418()
{
  v1 = *(*v0 + 168);

  return _swift_task_switch(sub_1004A750C, v1, 0);
}

uint64_t sub_1004A750C()
{
  v1 = v0[18];
  v2 = v0[22];
  v3 = v0[23];
  if (v1)
  {
    v4 = [objc_allocWithZone(UIImage) initWithCGImage:v1];
  }

  else
  {

    v4 = 0;
  }

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1004A75BC(uint64_t a1, void *a2)
{
  v3 = sub_10000CA14((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_1004A7664()
{
  v1 = v0[8];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {

    v3 = sub_100094E98(0xD000000000000019, 0x80000001008F6110);
    if (v4)
    {
      v5 = *(*(v2 + 56) + 8 * v3);

      v6 = v0[1];

      return v6(v5);
    }
  }

  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_1004A77A0;

  return sub_1004A726C(0xD000000000000019, 0x80000001008F6110);
}

uint64_t sub_1004A77A0(uint64_t a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_1004A78B8, v2, 0);
}

uint64_t sub_1004A78B8()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    swift_beginAccess();
    v2 = v1;
    sub_100094CA4(v1, 0xD000000000000019, 0x80000001008F6110);
    swift_endAccess();

    v3 = *(v0 + 80);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + 8);

  return v4(v3);
}

Swift::Int sub_1004A7980()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1004A79E4()
{
  Hasher._combine(_:)(*(v0 + 16));

  return String.hash(into:)();
}

Swift::Int sub_1004A7A38()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1004A7A98(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (a1[2])
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  if (v3 == *a2 && a1[1] == *(a2 + 8))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int sub_1004A7AEC()
{
  Hasher.init(_seed:)();
  UUID.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1004A7B30()
{
  Hasher.init(_seed:)();
  UUID.hash(into:)();
  return Hasher._finalize()();
}

id sub_1004A7BD8()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for ManagedObjectBrowser();
  objc_msgSendSuper2(&v12, "viewDidLoad");
  v2 = [*&v0[OBJC_IVAR____TtC7Journal20ManagedObjectBrowser_managedObject] entity];
  v3 = [v2 name];

  [v1 setTitle:v3];
  v4 = [v1 navigationItem];
  sub_1000065A8(0, &qword_100AD43B0);
  sub_1000065A8(0, &qword_100AD4420);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v6.value._countAndFlagsBits = 0x65736F6C43;
  v6.value._object = 0xE500000000000000;
  v13.value.super.isa = 0;
  v14.value.super.super.isa = 0;
  isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v6, v13, v14, v15).super.super.isa;
  [v4 setRightBarButtonItem:{isa, 0, 0, 0, sub_100402D34, v5}];

  result = [v1 tableView];
  if (result)
  {
    v9 = objc_allocWithZone(sub_1000F24EC(&qword_100AE5A38));
    v10 = UITableViewDiffableDataSource.init(tableView:cellProvider:)();
    v11 = *&v1[OBJC_IVAR____TtC7Journal20ManagedObjectBrowser_dataSource];
    *&v1[OBJC_IVAR____TtC7Journal20ManagedObjectBrowser_dataSource] = v10;

    return sub_1004A8EB8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1004A7E44(char a1)
{
  v14.receiver = v1;
  v14.super_class = type metadata accessor for ManagedObjectBrowser();
  objc_msgSendSuper2(&v14, "viewWillAppear:", a1 & 1);
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 5)
  {
    v5 = [v1 navigationController];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 viewControllers];

      sub_1000065A8(0, &qword_100AD4C80);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v8 >> 62)
      {
        v9 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v9 >= 2)
      {
        v10 = [v1 navigationItem];
        sub_1000065A8(0, &qword_100AD43B0);
        sub_1000065A8(0, &qword_100AD4420);
        v11 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v15.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        v12.value._countAndFlagsBits = 1801675074;
        v12.value._object = 0xE400000000000000;
        v15.value.super.isa = 0;
        v16.value.super.super.isa = 0;
        isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v12, v15, v16, v17).super.super.isa;
        [v10 setLeftBarButtonItem:{isa, 0, 0, 0, sub_1004AAB4C, v11}];
      }
    }
  }
}

void sub_1004A80CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong navigationController];

    if (v2)
    {
      v3 = [v2 popViewControllerAnimated:1];
    }
  }
}

id sub_1004A8160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(UITableViewCell) init];
  v9 = [v8 textLabel];
  if (v9)
  {
    v10 = v9;
    [v9 setNumberOfLines:0];
  }

  v11 = [v8 textLabel];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_opt_self() systemFontOfSize:14.0];
    [v12 setFont:v13];
  }

  v14 = [v8 textLabel];
  if (v14)
  {
    v15 = v14;
    v16 = [objc_opt_self() labelColor];
    [v15 setTextColor:v16];
  }

  v17 = *(a3 + *(type metadata accessor for ManagedObjectBrowser.Item() + 28));
  if (v17)
  {
    v18 = v17;
    v19 = [v18 entity];
    v20 = [v19 name];

    if (v20)
    {
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;
    }

    else
    {
      v23 = 0xE600000000000000;
      v21 = 0x7463656A624FLL;
    }

    v27 = [v18 objectID];
    v28 = [v27 URIRepresentation];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = URL.lastPathComponent.getter();
    v31 = v30;
    (*(v5 + 8))(v7, v4);
    v32 = [v8 textLabel];
    if (v32)
    {
      v33 = v32;
      v39[0] = v21;
      v39[1] = v23;
      v34._countAndFlagsBits = 23328;
      v34._object = 0xE200000000000000;
      String.append(_:)(v34);
      v35._countAndFlagsBits = v29;
      v35._object = v31;
      String.append(_:)(v35);

      v36._countAndFlagsBits = 93;
      v36._object = 0xE100000000000000;
      String.append(_:)(v36);
      v37 = String._bridgeToObjectiveC()();

      [v33 setText:v37];
    }

    else
    {
    }

    [v8 setAccessoryType:1];
    [v8 setSelectionStyle:3];
  }

  else
  {
    v24 = [v8 textLabel];
    if (v24)
    {
      v25 = v24;
      sub_1004A8558();
      v26 = String._bridgeToObjectiveC()();

      [v25 setText:v26];
    }

    [v8 setAccessoryType:0];
    [v8 setSelectionStyle:0];
  }

  return v8;
}

uint64_t sub_1004A8558()
{
  v43 = sub_1000F24EC(&qword_100ADE5A0);
  __chkstk_darwin(v43);
  v42 = &v42 - v1;
  v45 = sub_1000F24EC(&qword_100ADB870);
  __chkstk_darwin(v45);
  v44 = &v42 - v2;
  v48 = type metadata accessor for MergeableEntryAttributes();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v46 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MergeableJournalAttributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v42 - v10;
  v12 = type metadata accessor for ManagedObjectBrowser.Item();
  v13 = *(v12 + 24);
  v14 = *(v0 + *(v12 + 20));
  v15 = *(v0 + v13 + 8);
  v49 = *(v0 + v13);
  v16 = v15;
  v17 = String._bridgeToObjectiveC()();
  v18 = [v14 valueForKey:v17];

  if (v18)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
  }

  v54 = v52;
  v55[0] = v53;
  if (*(&v53 + 1))
  {
    sub_10002432C(&v54, v56);
    *&v54 = v14;
    *(&v54 + 1) = v49;
    v19 = v16;
    *&v55[0] = v16;
    sub_10000BA20(v56, v55 + 8);
    v20 = v14;

    if (swift_dynamicCast())
    {
      (*(v6 + 32))(v8, v11, v5);
      v21 = [objc_allocWithZone(NSDateFormatter) init];
      [v21 setDateStyle:2];
      [v21 setTimeStyle:1];
      isa = Date._bridgeToObjectiveC()().super.isa;
      v23 = [v21 stringFromDate:isa];

      v24 = v20;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v6 + 8))(v8, v5);
      sub_10000BA7C(v56);
      sub_10000BA7C(v55 + 8);

LABEL_36:

      return v25;
    }

    type metadata accessor for JournalMO();
    if (swift_dynamicCastClass())
    {
      type metadata accessor for WrappedMergeableJournalAttributes();
      if (swift_dynamicCast())
      {
        v26 = v52;
        WrappedMergeableJournalAttributes.value.getter();
        v27 = v20;
        v25 = String.init<A>(reflecting:)();

LABEL_35:
        sub_10000BA7C(v56);
        sub_10000BA7C(v55 + 8);

        goto LABEL_36;
      }
    }

    type metadata accessor for JournalEntryMO();
    if (swift_dynamicCastClass())
    {
      type metadata accessor for WrappedMergeableEntryAttributes();
      if (swift_dynamicCast())
      {
        v28 = v51;
        *&v52 = 0;
        *(&v52 + 1) = 0xE000000000000000;
        v29 = v46;
        WrappedMergeableEntryAttributes.value.getter();
        v30 = v48;
        _print_unlocked<A, B>(_:_:)();
        (*(v47 + 8))(v29, v30);

LABEL_14:
        v27 = v20;
        v25 = v52;
        goto LABEL_35;
      }

      if (swift_dynamicCast())
      {
        v31 = v20;
        v32 = v52;
        sub_1000F24EC(&qword_100AE4BA8);
        sub_10046C1F4();
        Data.asObject<A>(of:)();
        if (v51)
        {
          type metadata accessor for UUID();
          sub_1004AA2CC(&qword_100AD4B40, &type metadata accessor for UUID);
          v25 = Dictionary.description.getter();
        }

        else
        {
          v25 = sub_1004AA04C(v32, *(&v32 + 1));
        }

        sub_1000340DC(v32, *(&v32 + 1));
        sub_10000BA7C(v56);
        sub_10000BA7C(v55 + 8);

        goto LABEL_36;
      }

      if (swift_dynamicCast())
      {
        v33 = v51;
        if (v49 == 0xD00000000000001ALL && 0x80000001008F61B0 == v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v50 = v33;
          *&v52 = dispatch thunk of CustomStringConvertible.description.getter();
          *(&v52 + 1) = v34;
          v35._countAndFlagsBits = 2112800;
          v35._object = 0xE300000000000000;
          String.append(_:)(v35);
          JournalAppVersion.init(rawValue:)();
LABEL_23:
          v36._countAndFlagsBits = String.init<A>(describing:)();
          String.append(_:)(v36);

          goto LABEL_14;
        }

        if (v49 == 0xD00000000000001ELL && 0x80000001008F61D0 == v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v50 = v33;
          *&v52 = dispatch thunk of CustomStringConvertible.description.getter();
          *(&v52 + 1) = v37;
          v38._countAndFlagsBits = 2112800;
          v38._object = 0xE300000000000000;
          String.append(_:)(v38);
          UnsupportedEntryMode.init(rawValue:)();
          goto LABEL_23;
        }
      }
    }

    type metadata accessor for JournalEntryAssetMO();
    if (!swift_dynamicCastClass() || (v49 != 0x74654D7465737361 || v19 != 0xED00006174614461) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if (!swift_dynamicCast())
      {
        *&v52 = 0;
        *(&v52 + 1) = 0xE000000000000000;
        _print_unlocked<A, B>(_:_:)();
        v25 = v52;
        sub_10000BA7C(v56);
        sub_100004F84(&v54, &qword_100AE59F0);
        return v25;
      }

      v40 = v52;
      v41 = v20;
      v25 = sub_1004AA04C(v52, *(&v52 + 1));
      sub_1000340DC(v40, *(&v40 + 1));
      sub_10000BA7C(v56);
      sub_10000BA7C(v55 + 8);

      goto LABEL_36;
    }

    v27 = v20;
    JournalEntryAssetMO.metadata.getter();
    sub_1000F24EC(&qword_100AE59F8);
    v25 = String.init<A>(describing:)();

    goto LABEL_35;
  }

  sub_100004F84(&v54, &qword_100AD13D0);
  return 7104878;
}

uint64_t sub_1004A8EB8()
{
  v1 = type metadata accessor for ManagedObjectBrowser.Item();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AE5A00);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v52 - v7;
  sub_1004AA278();
  sub_1004AA2CC(&qword_100AE5A10, type metadata accessor for ManagedObjectBrowser.Item);
  NSDiffableDataSourceSnapshot.init()();
  v9 = *(v0 + OBJC_IVAR____TtC7Journal20ManagedObjectBrowser_managedObject);
  v59 = v0;
  v60 = v9;
  v56 = [v9 entity];
  v10 = [v56 attributesByName];
  sub_1000065A8(0, &qword_100AE5A18);
  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = sub_1003E745C(*(v11 + 16), 0);
    *&v64 = sub_1001C3378(&v67, v13 + 4, v12, v11);
    v62 = *(&v67 + 1);
    v57 = v69;
    v58 = v68;
    v55 = v70;

    sub_100014FF8();
    if (v64 == v12)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v13 = _swiftEmptyArrayStorage;
LABEL_5:
  v57 = v4;
  v58 = v5;
  v62 = v2;
  v63 = v1;
  v61 = v8;
  v53 = v6;
  *&v67 = v13;
  sub_100254A04(&v67);
  v54 = 0;

  v55 = v67;
  v14 = *(v67 + 16);
  v15 = v57;
  v16 = v60;
  v17 = v63;
  if (v14)
  {
    v18 = (v55 + 40);
    v64 = xmmword_100940080;
    do
    {
      v19 = *(v18 - 1);
      v20 = *v18;
      swift_bridgeObjectRetain_n();
      v21 = v16;
      UUID.init()();
      *(v15 + v17[5]) = v21;
      v22 = (v15 + v17[6]);
      *v22 = v19;
      v22[1] = v20;
      *(v15 + v17[7]) = 0;
      sub_1000F24EC(&qword_100AE5A20);
      v23 = swift_allocObject();
      *(v23 + 16) = v64;
      *(v23 + 32) = v19;
      *(v23 + 40) = v20;
      *(v23 + 48) = 0;

      NSDiffableDataSourceSnapshot.appendSections(_:)(v23);

      sub_1000F24EC(&qword_100AD65D8);
      v24 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = v64;
      sub_1004AA314(v15, v25 + v24);
      *&v67 = v19;
      *(&v67 + 1) = v20;
      LOBYTE(v68) = 0;
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

      v17 = v63;

      sub_1004AA378(v15);
      v18 += 2;
      --v14;
    }

    while (v14);
  }

  v26 = [v56 relationshipsByName];
  sub_1000065A8(0, &qword_100AE5A28);
  v27 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = sub_1003E745C(*(v27 + 16), 0);
    v30 = sub_1001C3378(&v67, v29 + 4, v28, v27);

    sub_100014FF8();
    v32 = v57;
    v31 = v58;
    v33 = v61;
    if (v30 == v28)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  v29 = _swiftEmptyArrayStorage;
  v32 = v57;
  v31 = v58;
  v33 = v61;
LABEL_12:
  *&v67 = v29;
  v34 = v54;
  sub_100254A04(&v67);
  if (!v34)
  {

    v58 = v67;
    v35 = *(v67 + 16);
    if (v35)
    {
      v36 = (v58 + 40);
      v64 = xmmword_100940080;
      do
      {
        v43 = *(v36 - 1);
        v42 = *v36;
        sub_1000F24EC(&qword_100AE5A20);
        v44 = swift_allocObject();
        *(v44 + 16) = v64;
        *(v44 + 32) = v43;
        *(v44 + 40) = v42;
        *(v44 + 48) = 1;
        swift_bridgeObjectRetain_n();
        NSDiffableDataSourceSnapshot.appendSections(_:)(v44);

        v45 = String._bridgeToObjectiveC()();
        v46 = v31;
        v47 = v60;
        v48 = [v60 valueForKey:v45];

        if (v48)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          sub_10002432C(&v65, &v67);
          sub_1004A9678(&v67, v43, v42);

          *&v65 = v43;
          *(&v65 + 1) = v42;
          v66 = 1;
          NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

          sub_10000BA7C(&v67);
        }

        else
        {
          v37 = v47;
          UUID.init()();
          v38 = v63;
          *(v32 + v63[5]) = v37;
          v39 = (v32 + v38[6]);
          *v39 = v43;
          v39[1] = v42;
          *(v32 + v38[7]) = 0;
          sub_1000F24EC(&qword_100AD65D8);
          v40 = (*(v62 + 80) + 32) & ~*(v62 + 80);
          v41 = swift_allocObject();
          *(v41 + 16) = v64;
          sub_1004AA314(v32, v41 + v40);
          *&v67 = v43;
          *(&v67 + 1) = v42;
          LOBYTE(v68) = 1;
          NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

          sub_1004AA378(v32);
        }

        v31 = v46;
        v36 += 2;
        --v35;
        v33 = v61;
      }

      while (v35);
    }

    v49 = *(v59 + OBJC_IVAR____TtC7Journal20ManagedObjectBrowser_dataSource);
    if (v49)
    {
      v50 = v49;

      dispatch thunk of UITableViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

      return (*(v53 + 8))(v33, v31);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

double *sub_1004A9678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for ManagedObjectBrowser.Item();
  v9 = *(v8 - 1);
  __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000BA20(a1, v51);
  sub_1000065A8(0, &unk_100AE4860);
  if (swift_dynamicCast())
  {
    v12 = v48;
    sub_1000F24EC(&qword_100AD65D8);
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100940080;
    v15 = a2;
    v16 = v14 + v13;
    v17 = *(v4 + OBJC_IVAR____TtC7Journal20ManagedObjectBrowser_managedObject);

    v18 = v12;
    UUID.init()();
    *(v16 + v8[5]) = v17;
    v19 = (v14 + v13 + v8[6]);
    *v19 = v15;
    v19[1] = a3;
    *(v16 + v8[7]) = v12;

    return v14;
  }

  sub_10000BA20(a1, v51);
  sub_1000065A8(0, &qword_100ADB750);
  if (!swift_dynamicCast())
  {
    return _swiftEmptyArrayStorage;
  }

  v46 = a3;
  v43 = v48;
  v20 = [v48 allObjects];
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = v21;
  v50 = _swiftEmptyArrayStorage;
  v23 = *(v21 + 16);
  if (v23)
  {
    v47 = v4;
    v45 = v22;
    v24 = v22 + 32;
    v25 = _swiftEmptyArrayStorage;
    do
    {
      sub_10000BA20(v24, v51);
      sub_10002432C(v51, &v48);
      if ((swift_dynamicCast() & 1) != 0 && v49)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v44 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v25 = v50;
      }

      v24 += 32;
      --v23;
    }

    while (v23);

    v4 = v47;
    if (!(v25 >> 62))
    {
LABEL_13:
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v26)
      {
        goto LABEL_14;
      }

      goto LABEL_25;
    }
  }

  else
  {

    v25 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_13;
    }
  }

  v26 = _CocoaArrayWrapper.endIndex.getter();
  if (!v26)
  {
LABEL_25:

    return _swiftEmptyArrayStorage;
  }

LABEL_14:
  v44 = v8;
  v45 = a2;
  v47 = v25;
  *&v51[0] = _swiftEmptyArrayStorage;
  result = sub_10019A210(0, v26 & ~(v26 >> 63), 0);
  if ((v26 & 0x8000000000000000) == 0)
  {
    v28 = 0;
    v14 = *&v51[0];
    v29 = *(v4 + OBJC_IVAR____TtC7Journal20ManagedObjectBrowser_managedObject);
    v30 = v47 & 0xC000000000000001;
    v31 = v9;
    v32 = v26;
    v33 = v46;
    do
    {
      if (v30)
      {
        v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v34 = *(v47 + 8 * v28 + 32);
      }

      v35 = v34;

      v36 = v29;
      UUID.init()();
      v38 = v44;
      v37 = v45;
      *&v11[v44[5]] = v36;
      v39 = &v11[v38[6]];
      *v39 = v37;
      *(v39 + 1) = v33;
      *&v11[v38[7]] = v35;
      *&v51[0] = v14;
      v41 = *(v14 + 16);
      v40 = *(v14 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_10019A210(v40 > 1, v41 + 1, 1);
        v14 = *&v51[0];
      }

      ++v28;
      *(v14 + 16) = v41 + 1;
      sub_1004AA214(v11, v14 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v41);
    }

    while (v32 != v28);

    return v14;
  }

  __break(1u);
  return result;
}

id sub_1004A9CC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedObjectBrowser();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ManagedObjectBrowser.Item()
{
  result = qword_100AE5998;
  if (!qword_100AE5998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004A9DDC()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1000065A8(319, &unk_100AE4860);
    if (v1 <= 0x3F)
    {
      sub_1004A9E90();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1004A9E90()
{
  if (!qword_100AE59A8)
  {
    sub_1000065A8(255, &unk_100AE4860);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE59A8);
    }
  }
}

uint64_t sub_1004A9F04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1004A9F4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1004A9FB0()
{
  result = qword_100AE59E0;
  if (!qword_100AE59E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE59E0);
  }

  return result;
}

uint64_t sub_1004AA04C(uint64_t a1, unint64_t a2)
{
  _StringGuts.grow(_:)(20);

  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2 || !__OFSUB__(*(a1 + 24), *(a1 + 16)))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v5)
  {
    goto LABEL_9;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    __break(1u);
    return result;
  }

LABEL_9:
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x29736574796220;
  v7._object = 0xE700000000000000;
  String.append(_:)(v7);
  v8 = Data.getAttributedString()();
  if (v8)
  {
    v9 = v8;
    _StringGuts.grow(_:)(22);

    v10 = [v9 string];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14._countAndFlagsBits = v11;
    v14._object = v13;
    String.append(_:)(v14);

    v15._countAndFlagsBits = 0xD000000000000014;
    v15._object = 0x80000001008F61F0;
    String.append(_:)(v15);
  }

  return 0x6F6C422061746144;
}

uint64_t sub_1004AA214(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedObjectBrowser.Item();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1004AA278()
{
  result = qword_100AE5A08;
  if (!qword_100AE5A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5A08);
  }

  return result;
}

uint64_t sub_1004AA2CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004AA314(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedObjectBrowser.Item();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004AA378(uint64_t a1)
{
  v2 = type metadata accessor for ManagedObjectBrowser.Item();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1004AA3D4(unint64_t a1)
{
  v3 = sub_1000F24EC(&qword_100AE5A00);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v38 - v5;
  v7 = *(v1 + OBJC_IVAR____TtC7Journal20ManagedObjectBrowser_dataSource);
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v7;
  dispatch thunk of UITableViewDiffableDataSource.snapshot()();

  v9 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  (*(v4 + 8))(v6, v3);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(v9 + 16) <= a1)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v10 = v9 + 24 * a1;
  v12 = *(v10 + 32);
  v11 = *(v10 + 40);
  v13 = *(v10 + 48);
  sub_1004AAB3C();

  v14 = [objc_allocWithZone(UILabel) init];
  v15 = [objc_opt_self() boldSystemFontOfSize:14.0];
  [v14 setFont:v15];

  v16 = objc_opt_self();
  v17 = [v16 secondaryLabelColor];
  [v14 setTextColor:v17];

  if (v13 == 1)
  {
    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v38 = v12;
    v39 = v11;

    v18._countAndFlagsBits = 0x6974616C65722820;
    v18._object = 0xEF29706968736E6FLL;
    String.append(_:)(v18);
    sub_1004AAB44();
  }

  v19 = String._bridgeToObjectiveC()();

  [v14 setText:v19];

  v20 = [objc_allocWithZone(UIView) init];
  v21 = [v16 systemGroupedBackgroundColor];
  [v20 setBackgroundColor:v21];

  v22 = v14;
  [v20 addSubview:v22];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = objc_opt_self();
  sub_1000F24EC(&unk_100AD4780);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100941830;
  v25 = [v22 topAnchor];
  v26 = [v20 topAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:4.0];

  *(v24 + 32) = v27;
  v28 = [v22 trailingAnchor];

  v29 = [v20 trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:-16.0];

  *(v24 + 40) = v30;
  v31 = [v22 bottomAnchor];

  v32 = [v20 bottomAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:-4.0];

  *(v24 + 48) = v33;
  v34 = [v22 leadingAnchor];

  v35 = [v20 leadingAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:16.0];

  *(v24 + 56) = v36;
  sub_1000065A8(0, &qword_100AD8000);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v23 activateConstraints:isa];
}

void sub_1004AA904()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AE5A30);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for ManagedObjectBrowser.Item();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v0[OBJC_IVAR____TtC7Journal20ManagedObjectBrowser_dataSource];
  if (v9)
  {
    v10 = v9;
    dispatch thunk of UITableViewDiffableDataSource.itemIdentifier(for:)();

    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_100004F84(v4, &qword_100AE5A30);
      return;
    }

    sub_1004AA214(v4, v8);
    v11 = *&v8[*(v5 + 28)];
    if (!v11)
    {
      goto LABEL_7;
    }

    v12 = type metadata accessor for ManagedObjectBrowser();
    v13 = objc_allocWithZone(v12);
    *&v13[OBJC_IVAR____TtC7Journal20ManagedObjectBrowser_dataSource] = 0;
    *&v13[OBJC_IVAR____TtC7Journal20ManagedObjectBrowser_managedObject] = v11;
    v18.receiver = v13;
    v18.super_class = v12;
    v14 = v11;
    v15 = objc_msgSendSuper2(&v18, "initWithStyle:", 1);
    v16 = [v1 navigationController];
    if (v16)
    {
      v17 = v16;
      [v16 pushViewController:v15 animated:1];

LABEL_7:
      sub_1004AA378(v8);
      return;
    }

    sub_1004AA378(v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1004AAB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000082B4(a3, v25 - v10, &qword_100AD5170);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100004F84(v11, &qword_100AD5170);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_1004AAE14()
{
  [*(*(v0 + 16) + qword_100AEC680) removeAllObjects];
  sub_1004B49E8();
  if (qword_100ACFCC0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100ADFC48);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Image cache cleared.", v3, 2u);
  }
}

void sub_1004AAF1C()
{
  [*(*(v0 + 16) + qword_100AEC680) removeAllObjects];
  if (qword_100ACFCC0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100ADFC48);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Image memory cache cleared.", v3, 2u);
  }
}

uint64_t sub_1004AB020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a2;
  v5 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v5 - 8);
  v57 = &v52 - v6;
  v7 = sub_1000F24EC(&qword_100AE5C30);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v52 - v12;
  __chkstk_darwin(v14);
  v16 = &v52 - v15;
  v17 = sub_1000F24EC(&qword_100AE5C38);
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v52 - v20;
  (*(v18 + 16))(&v52 - v20, a1, v17, v19);
  v22 = (*(v18 + 88))(v21, v17);
  if (v22 == enum case for EventSubmitResult.success<A>(_:))
  {
    (*(v18 + 96))(v21, v17);
    (*(v8 + 32))(v16, v21, v7);
    if (qword_100ACFD88 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000617C(v23, qword_100AE43F8);
    v24 = *(v8 + 16);
    v24(v13, v16, v7);
    v24(v10, v16, v7);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v56 = a3;
      v28 = v27;
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v59 = v55;
      *v28 = 136315394;
      v53 = v25;
      v29 = ProcessEvent.name.getter();
      v31 = v30;
      v32 = *(v8 + 8);
      v32(v13, v7);
      v33 = sub_100008458(v29, v31, &v59);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2112;
      v34 = ProcessEvent.json.getter();
      v32(v10, v7);
      *(v28 + 14) = v34;
      v35 = v54;
      *v54 = v34;
      v36 = v26;
      v37 = v53;
      _os_log_impl(&_mh_execute_header, v53, v36, "Event submitted: %s ~> %@", v28, 0x16u);
      sub_100004F84(v35, &unk_100AD4BB0);

      sub_10000BA7C(v55);

      a3 = v56;

      v32(v16, v7);
    }

    else
    {

      v44 = *(v8 + 8);
      v44(v10, v7);
      v44(v13, v7);
      v44(v16, v7);
    }
  }

  else if (v22 == enum case for EventSubmitResult.failed<A>(_:))
  {
    (*(v18 + 96))(v21, v17);
    if (qword_100ACFD88 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000617C(v38, qword_100AE43F8);
    swift_errorRetain();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      swift_errorRetain();
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v43;
      *v42 = v43;
      _os_log_impl(&_mh_execute_header, v39, v40, "Failed to submit event: %@", v41, 0xCu);
      sub_100004F84(v42, &unk_100AD4BB0);
    }

    else
    {
    }
  }

  else
  {
    (*(v18 + 8))(v21, v17);
  }

  v45 = type metadata accessor for TaskPriority();
  v46 = v57;
  (*(*(v45 - 8) + 56))(v57, 1, 1, v45);
  type metadata accessor for AnalyticsActor();
  v47 = v58;
  sub_100021E80(v58);
  v48 = static AnalyticsActor.shared.getter();
  v49 = sub_1004B6488(&qword_100AD9C80, &type metadata accessor for AnalyticsActor);
  v50 = swift_allocObject();
  v50[2] = v48;
  v50[3] = v49;
  v50[4] = v47;
  v50[5] = a3;
  sub_1003E9BBC(0, 0, v46, &unk_100958510, v50);
}

uint64_t sub_1004AB748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a2;
  v5 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v5 - 8);
  v57 = &v52 - v6;
  v7 = sub_1000F24EC(&qword_100AE5C48);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v52 - v12;
  __chkstk_darwin(v14);
  v16 = &v52 - v15;
  v17 = sub_1000F24EC(&unk_100AE5C50);
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v52 - v20;
  (*(v18 + 16))(&v52 - v20, a1, v17, v19);
  v22 = (*(v18 + 88))(v21, v17);
  if (v22 == enum case for EventSubmitResult.success<A>(_:))
  {
    (*(v18 + 96))(v21, v17);
    (*(v8 + 32))(v16, v21, v7);
    if (qword_100ACFD88 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000617C(v23, qword_100AE43F8);
    v24 = *(v8 + 16);
    v24(v13, v16, v7);
    v24(v10, v16, v7);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v56 = a3;
      v28 = v27;
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v59 = v55;
      *v28 = 136315394;
      v53 = v25;
      v29 = ProcessEvent.name.getter();
      v31 = v30;
      v32 = *(v8 + 8);
      v32(v13, v7);
      v33 = sub_100008458(v29, v31, &v59);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2112;
      v34 = ProcessEvent.json.getter();
      v32(v10, v7);
      *(v28 + 14) = v34;
      v35 = v54;
      *v54 = v34;
      v36 = v26;
      v37 = v53;
      _os_log_impl(&_mh_execute_header, v53, v36, "Event submitted: %s ~> %@", v28, 0x16u);
      sub_100004F84(v35, &unk_100AD4BB0);

      sub_10000BA7C(v55);

      a3 = v56;

      v32(v16, v7);
    }

    else
    {

      v44 = *(v8 + 8);
      v44(v10, v7);
      v44(v13, v7);
      v44(v16, v7);
    }
  }

  else if (v22 == enum case for EventSubmitResult.failed<A>(_:))
  {
    (*(v18 + 96))(v21, v17);
    if (qword_100ACFD88 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000617C(v38, qword_100AE43F8);
    swift_errorRetain();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      swift_errorRetain();
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v43;
      *v42 = v43;
      _os_log_impl(&_mh_execute_header, v39, v40, "Failed to submit event: %@", v41, 0xCu);
      sub_100004F84(v42, &unk_100AD4BB0);
    }

    else
    {
    }
  }

  else
  {
    (*(v18 + 8))(v21, v17);
  }

  v45 = type metadata accessor for TaskPriority();
  v46 = v57;
  (*(*(v45 - 8) + 56))(v57, 1, 1, v45);
  type metadata accessor for AnalyticsActor();
  v47 = v58;
  sub_100021E80(v58);
  v48 = static AnalyticsActor.shared.getter();
  v49 = sub_1004B6488(&qword_100AD9C80, &type metadata accessor for AnalyticsActor);
  v50 = swift_allocObject();
  v50[2] = v48;
  v50[3] = v49;
  v50[4] = v47;
  v50[5] = a3;
  sub_1003E9BBC(0, 0, v46, &unk_100958528, v50);
}

NSString sub_1004ABE70()
{
  result = String._bridgeToObjectiveC()();
  qword_100AE5A58 = result;
  return result;
}

id sub_1004ABEA8()
{
  v1 = OBJC_IVAR____TtC7Journal11AppDelegate____lazy_storage___trackingConsent;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal11AppDelegate____lazy_storage___trackingConsent);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Journal11AppDelegate____lazy_storage___trackingConsent);
  }

  else
  {
    v4 = v0;
    type metadata accessor for TrackingConsent();
    v5 = TrackingConsent.__allocating_init(keychainAccessGroup:)();
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_1004ABF30()
{
  v1 = (v0 + OBJC_IVAR____TtC7Journal11AppDelegate____lazy_storage___versionNumber);
  if (!*(v0 + OBJC_IVAR____TtC7Journal11AppDelegate____lazy_storage___versionNumber + 8))
  {
    v3 = [objc_opt_self() mainBundle];
    v4 = [v3 infoDictionary];

    if (v4)
    {
      v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v5 + 16) && (v6 = sub_100094E98(0xD00000000000001ALL, 0x80000001008E6DE0), (v7 & 1) != 0))
      {
        sub_10000BA20(*(v5 + 56) + 32 * v6, v12);

        if (swift_dynamicCast())
        {
          v2 = v10;
          v8 = v11;
LABEL_10:
          *v1 = v2;
          v1[1] = v8;

          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    v8 = 0xE700000000000000;
    v2 = 0x6E776F6E6B6E55;
    goto LABEL_10;
  }

  v2 = *v1;
LABEL_11:

  return v2;
}

uint64_t sub_1004AC098()
{
  v1 = (v0 + OBJC_IVAR____TtC7Journal11AppDelegate____lazy_storage___buildNumber);
  if (!*(v0 + OBJC_IVAR____TtC7Journal11AppDelegate____lazy_storage___buildNumber + 8))
  {
    v3 = [objc_opt_self() mainBundle];
    v4 = [v3 infoDictionary];

    if (v4)
    {
      v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v5 + 16) && (v6 = sub_100094E98(0x656C646E75424643, 0xEF6E6F6973726556), (v7 & 1) != 0))
      {
        sub_10000BA20(*(v5 + 56) + 32 * v6, v12);

        if (swift_dynamicCast())
        {
          v2 = v10;
          v8 = v11;
LABEL_10:
          *v1 = v2;
          v1[1] = v8;

          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    v8 = 0xE700000000000000;
    v2 = 0x6E776F6E6B6E55;
    goto LABEL_10;
  }

  v2 = *v1;
LABEL_11:

  return v2;
}

uint64_t sub_1004AC208()
{
  v1 = OBJC_IVAR____TtC7Journal11AppDelegate____lazy_storage___sessionManager;
  if (*(v0 + OBJC_IVAR____TtC7Journal11AppDelegate____lazy_storage___sessionManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC7Journal11AppDelegate____lazy_storage___sessionManager);
  }

  else
  {
    v2 = sub_1004AC270();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1004AC270()
{
  v0 = type metadata accessor for TimeDurationGranularity();
  __chkstk_darwin(v0 - 8);
  v22 = v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for FlushEvents();
  __chkstk_darwin(v2);
  v3 = type metadata accessor for SessionManager.Options();
  __chkstk_darwin(v3);
  v21 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PrivacyValidation();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SessionManagerConfiguration();
  v19 = *(v9 - 8);
  v20 = v9;
  __chkstk_darwin(v9);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[2] = sub_1004AC808();
  if (qword_100AD0B80 != -1)
  {
    swift_once();
  }

  (*(v6 + 16))(v8, qword_100B311C0 + OBJC_IVAR____TtC7Journal16AnalyticsManager_privacyValidation, v5);
  type metadata accessor for JournalPrivacyProvider(0);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + OBJC_IVAR____TtC7Journal22JournalPrivacyProvider_privacyValidation, v8, v5);
  v18[1] = sub_1004B6488(&qword_100AE5BE0, type metadata accessor for JournalPrivacyProvider);
  v23[0] = _swiftEmptyArrayStorage;
  sub_1004B6488(&qword_100AE5BE8, &type metadata accessor for SessionManager.Options);
  sub_1000F24EC(&qword_100AE5BF0);
  sub_10001F408(&qword_100AE5BF8, &qword_100AE5BF0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_1000F24EC(&qword_100AE5C00);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100942000;
  static FlushEvents.didStartSession.getter();
  static FlushEvents.didEndSession.getter();
  static FlushEvents.didLeaveGroup.getter();
  v23[0] = v13;
  sub_1004B6488(&qword_100AE5C08, &type metadata accessor for FlushEvents);
  sub_1000F24EC(&qword_100AE5C10);
  sub_10001F408(&qword_100AE5C18, &qword_100AE5C10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for FlushProcessor();
  swift_allocObject();
  FlushProcessor.init(flushEvents:flushInterval:)();
  v14 = type metadata accessor for TimestampJitter();
  v23[3] = v14;
  v23[4] = &protocol witness table for TimestampJitter;
  v15 = sub_10001A770(v23);
  (*(*(v14 - 8) + 104))(v15, enum case for TimestampJitter.disabled(_:), v14);
  static TimeDurationGranularity.milliseconds.getter();
  SessionManagerConfiguration.init(options:flushProcessor:timestampConfigurationProvider:privacyValidationProvider:timeDurationGranularity:)();
  v16 = AppSessionManager.createSessionManager(with:)();

  (*(v19 + 8))(v11, v20);
  return v16;
}

uint64_t sub_1004AC808()
{
  v1 = v0;
  v2 = type metadata accessor for DiagnosticsConsentProvider();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000F24EC(&unk_100AE5B80);
  __chkstk_darwin(v3 - 8);
  v5 = v15 - v4;
  v6 = type metadata accessor for SummaryEventConfiguration();
  __chkstk_darwin(v6 - 8);
  v7 = OBJC_IVAR____TtC7Journal11AppDelegate____lazy_storage___appSessionManager;
  if (*(v0 + OBJC_IVAR____TtC7Journal11AppDelegate____lazy_storage___appSessionManager))
  {
    v8 = *(v0 + OBJC_IVAR____TtC7Journal11AppDelegate____lazy_storage___appSessionManager);
  }

  else
  {
    type metadata accessor for AppSessionManager();
    sub_1004ABEA8();
    static SummaryEventConfiguration.defaultCadence.getter();
    if (qword_100AD0B88 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for UserDataConfiguration();
    v10 = sub_10000617C(v9, qword_100B311C8);
    v11 = *(v9 - 8);
    (*(v11 + 16))(v5, v10, v9);
    (*(v11 + 56))(v5, 0, 1, v9);
    v12 = type metadata accessor for CrashDetector();
    v13 = static CrashDetector.shared.getter();
    v15[4] = v12;
    v15[5] = &protocol witness table for CrashDetector;
    v15[1] = v13;
    static DiagnosticsConsentProvider.default.getter();
    v8 = AppSessionManager.__allocating_init(trackingConsent:crashDetector:summaryEventConfiguration:userDataConfiguration:diagnosticsConsentProvider:)();
    *(v1 + v7) = v8;
  }

  return v8;
}

uint64_t sub_1004ACA70()
{
  v1 = OBJC_IVAR____TtC7Journal11AppDelegate____lazy_storage___flushManager;
  if (*(v0 + OBJC_IVAR____TtC7Journal11AppDelegate____lazy_storage___flushManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC7Journal11AppDelegate____lazy_storage___flushManager);
  }

  else
  {
    type metadata accessor for FlushManager();
    v3 = v0;
    sub_1004AC808();
    sub_1004ABF30();
    sub_1004AC098();
    v4 = objc_allocWithZone(type metadata accessor for Client());
    Client.init(identifier:name:version:buildNumber:)();
    sub_1004FEE14();
    type metadata accessor for UploadBatchEventConfig();
    static UploadBatchEventConfig.default.getter();
    type metadata accessor for URLSessionUploadClientFactory();
    swift_allocObject();
    URLSessionUploadClientFactory.init()();
    v2 = FlushManager.__allocating_init(appSessionManager:client:endpoint:contentType:config:clientFactory:)();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1004ACC80()
{
  if (qword_100AD0B80 != -1)
  {
    result = swift_once();
  }

  *(qword_100B311C0 + 16) = 1;
  return result;
}

void sub_1004ACCD8(_BYTE *a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  if (*a1 == 1)
  {
    *(a2 + OBJC_IVAR____TtC7Journal11AppDelegate_hasProcessedLatestAppUnlock) = 0;
    *a1 = 0;
    sub_1004AC208();
    type metadata accessor for AppSessionEndEvent(0);
    SessionManager.tracker.getter();
    v7 = swift_allocObject();
    sub_1004B6488(&unk_100AE5C20, type metadata accessor for AppSessionEndEvent);
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    Tracker.submit<A>(_:onlyIfTimed:completion:)();

    v8 = *(a2 + OBJC_IVAR____TtC7Journal11AppDelegate____lazy_storage___sessionManager);
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    type metadata accessor for AnalyticsActor();
    swift_retain_n();
    v10 = static AnalyticsActor.shared.getter();
    v11 = sub_1004B6488(&qword_100AD9C80, &type metadata accessor for AnalyticsActor);
    v12 = swift_allocObject();
    v12[2] = v10;
    v12[3] = v11;
    v12[4] = v8;
    sub_1003E9628(0, 0, v6, &unk_1009584F8, v12);

    if (qword_100AD0B80 != -1)
    {
      swift_once();
    }
  }

  else if (qword_100AD0B80 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1004ACF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Date();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for AnalyticsActor();
  v4[6] = static AnalyticsActor.shared.getter();
  sub_1004B6488(&qword_100AD9C80, &type metadata accessor for AnalyticsActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004AD0BC, v7, v6);
}

uint64_t sub_1004AD0BC()
{

  sub_10043E2A4();
  sub_10043D1B0();
  if (qword_100AD0210 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100B300D0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Ending session...", v4, 2u);
  }

  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  Date.init()();
  SessionManager.end(endDate:completion:)();
  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8();
}