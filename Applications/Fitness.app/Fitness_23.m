uint64_t getEnumTagSinglePayload for StackDetailItemView.Configuration(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StackDetailItemView.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1002D80FC(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

BOOL sub_1002D8124(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  if (a2 <= 1u)
  {
    if (!a2)
    {
      if (!a4)
      {
        return sub_1002D4640(a3, a1);
      }

      return 0;
    }

    if (a4 == 1)
    {
      return sub_1002D4640(a3, a1);
    }

    return 0;
  }

  if (a2 == 2)
  {
    if (a4 == 2)
    {
      return sub_1002D4640(a3, a1);
    }

    return 0;
  }

  return a4 >= 3u;
}

unint64_t sub_1002D8190()
{
  result = qword_1008EB590;
  if (!qword_1008EB590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EB590);
  }

  return result;
}

uint64_t sub_1002D81F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002D8294(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1002D82A8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1002D82C8(void *a1, char a2)
{
  v4 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v4 - 8);
  v6 = v51 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v51 - v12;
  v14 = type metadata accessor for DateComponents();
  __chkstk_darwin(v14);
  v16 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = __chkstk_darwin(v17).n128_u64[0];
  v21 = v51 - v20;
  if (a2)
  {
    return 34;
  }

  v52 = v8;
  v53 = v18;
  v54 = 0;
  v23 = [a1 dateOfBirthComponentsWithError:{&v54, v19}];
  v24 = v54;
  v25 = &unk_1006D4000;
  if (!v23)
  {
    v34 = v54;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_13:
    static os_log_type_t.error.getter();
    v36 = HKLogActivity;
    sub_100140278(&unk_1008E4E50);
    v37 = swift_allocObject();
    *(v37 + 16) = v25[108];
    *(v37 + 56) = &type metadata for String;
    *(v37 + 64) = sub_10000A788();
    *(v37 + 32) = 0xD00000000000003DLL;
    *(v37 + 40) = 0x8000000100753AF0;
    v38 = v36;
    os_log(_:dso:log:_:_:)();

    return 0;
  }

  v26 = v23;
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v24;

  v54 = 0;
  v28 = [a1 biologicalSexWithError:&v54];
  if (!v28)
  {
    v35 = v54;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_11;
  }

  v29 = v28;
  v30 = v54;
  v51[2] = [v29 biologicalSex];

  Date.init()();
  if (qword_1008DA540 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Calendar();
  v32 = sub_10001AC90(v31, qword_100924FE8);
  Calendar.date(from:)();
  v33 = v52;
  if ((*(v52 + 48))(v6, 1, v7) == 1)
  {
    sub_10000EA04(v6, &unk_1008F73A0);
    sub_1002D89C0();
    swift_allocError();
    swift_willThrow();
    (*(v33 + 8))(v13, v7);
LABEL_11:
    (*(v53 + 8))(v21, v14);
LABEL_12:
    v25 = &unk_1006D4000;
    goto LABEL_13;
  }

  (*(v33 + 32))(v10, v6, v7);
  sub_100140278(&unk_1008E51B0);
  v39 = type metadata accessor for Calendar.Component();
  v40 = *(v39 - 8);
  v51[1] = v32;
  v41 = v40;
  v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1006D46C0;
  (*(v41 + 104))(v43 + v42, enum case for Calendar.Component.year(_:), v39);
  v51[0] = sub_10001C970(v43);
  swift_setDeallocating();
  (*(v41 + 8))(v43 + v42, v39);
  swift_deallocClassInstance();
  Calendar.dateComponents(_:from:to:)();

  v44 = DateComponents.year.getter();
  if (v45)
  {
    sub_1002D89C0();
    swift_allocError();
    swift_willThrow();
    v46 = *(v53 + 8);
    v46(v16, v14);
    v47 = *(v52 + 8);
    v47(v10, v7);
    v47(v13, v7);
    v46(v21, v14);
    goto LABEL_12;
  }

  v48 = *(v53 + 8);
  v49 = v44;
  v48(v16, v14);
  v50 = *(v52 + 8);
  v50(v10, v7);
  v50(v13, v7);
  v48(v21, v14);
  return v49;
}

unint64_t sub_1002D89C0()
{
  result = qword_1008E6AE8;
  if (!qword_1008E6AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E6AE8);
  }

  return result;
}

uint64_t type metadata accessor for MetricFamilyRoomView()
{
  result = qword_1008E6B48;
  if (!qword_1008E6B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002D8ACC()
{
  sub_1002D8D58(319, &qword_1008E6B58, &type metadata for ActivityDashboardMetric, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    type metadata accessor for MetricFormattingHelper();
    if (v1 <= 0x3F)
    {
      type metadata accessor for MetricsDataProvider();
      if (v2 <= 0x3F)
      {
        sub_1000059F8(319, &qword_1008F24B0);
        if (v3 <= 0x3F)
        {
          sub_1000059F8(319, &unk_1008DC348);
          if (v4 <= 0x3F)
          {
            type metadata accessor for WorkoutImageProvider();
            if (v5 <= 0x3F)
            {
              type metadata accessor for SeymourCatalogItemDataProvider();
              if (v6 <= 0x3F)
              {
                type metadata accessor for AAUIAwardsDataProvider();
                if (v7 <= 0x3F)
                {
                  type metadata accessor for ActivityDashboardViewController();
                  if (v8 <= 0x3F)
                  {
                    sub_1002D8CF4();
                    if (v9 <= 0x3F)
                    {
                      sub_1002D8D58(319, &qword_1008DC318, &type metadata for MetricDataProviderTimeScale, &type metadata accessor for State);
                      if (v10 <= 0x3F)
                      {
                        sub_1002D8D58(319, &qword_1008DC320, &type metadata for Int, &type metadata accessor for State);
                        if (v11 <= 0x3F)
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
        }
      }
    }
  }
}

void sub_1002D8CF4()
{
  if (!qword_1008E6B60)
  {
    sub_100141EEC(&unk_1008E6B68);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1008E6B60);
    }
  }
}

void sub_1002D8D58(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1002D8DC4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MetricFamilyRoomView();
  v5 = *(v4 - 8);
  v6 = v4 - 8;
  v36 = v4 - 8;
  __chkstk_darwin(v4 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&qword_1008E6BD8);
  v35 = v9;
  __chkstk_darwin(v9);
  v11 = &v33 - v10;
  v37 = v1;
  static Axis.Set.vertical.getter();
  sub_100140278(&qword_1008E6BE0);
  sub_1002DBC9C();
  ScrollView.init(_:showsIndicators:content:)();
  v12 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v13 = &v11[*(v9 + 36)];
  *v13 = v12;
  *(v13 + 1) = v14;
  *(v13 + 2) = v15;
  *(v13 + 3) = v16;
  *(v13 + 4) = v17;
  v13[40] = 0;
  v18 = *(v6 + 84);
  v34 = v2;
  v19 = (v2 + v18);
  v20 = *v19;
  v21 = *(v19 + 8);
  v22 = v19[2];
  v40 = v20;
  v41 = v21;
  v42 = v22;
  sub_100140278(&qword_1008DC3E8);
  State.wrappedValue.getter();
  v40 = v38;
  v41 = v39;
  sub_1002DC6D8(v2, v8, type metadata accessor for MetricFamilyRoomView);
  v23 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v24 = swift_allocObject();
  sub_1002DC0E8(v8, v24 + v23, type metadata accessor for MetricFamilyRoomView);
  sub_1002DBDC8();
  sub_10015243C();
  View.onChange<A>(of:initial:_:)();

  sub_10000EA04(v11, &qword_1008E6BD8);
  v25 = v34;
  sub_1002DC6D8(v34, v8, type metadata accessor for MetricFamilyRoomView);
  v26 = swift_allocObject();
  sub_1002DC0E8(v8, v26 + v23, type metadata accessor for MetricFamilyRoomView);
  v27 = (a1 + *(sub_100140278(&qword_1008E6C18) + 36));
  type metadata accessor for _TaskModifier();
  static TaskPriority.userInitiated.getter();
  *v27 = &unk_1006E6C00;
  v27[1] = v26;
  v28 = *(*(v25 + *(v36 + 40)) + OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_metricCategoryUpdates);
  sub_1002DC6D8(v25, v8, type metadata accessor for MetricFamilyRoomView);
  v29 = swift_allocObject();
  sub_1002DC0E8(v8, v29 + v23, type metadata accessor for MetricFamilyRoomView);
  v30 = sub_100140278(&qword_1008E6C20);
  *(a1 + *(v30 + 52)) = v28;
  v31 = (a1 + *(v30 + 56));
  *v31 = sub_1002DBF4C;
  v31[1] = v29;
}

uint64_t sub_1002D91A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_100140278(&qword_1008E6C30);
  sub_1002D9258(a1, a2 + *(v4 + 44));
  LOBYTE(a1) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = sub_100140278(&qword_1008E6BE0);
  v14 = a2 + *(result + 36);
  *v14 = a1;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_1002D9258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v162 = a1;
  v144 = a2;
  v145 = sub_100140278(&qword_1008DE0B0);
  v141 = *(v145 - 8);
  __chkstk_darwin(v145);
  v130[0] = v130 - v3;
  v4 = sub_100140278(&qword_1008DE0B8);
  __chkstk_darwin(v4 - 8);
  v161 = v130 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v160 = v130 - v7;
  v8 = type metadata accessor for MetricFamilyRoomView();
  v9 = *(v8 - 8);
  v156 = v8 - 8;
  v140 = v9;
  v139 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  *&v157 = v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100140278(&qword_1008E6C38);
  __chkstk_darwin(v11 - 8);
  v159 = v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v143 = v130 - v14;
  __chkstk_darwin(v15);
  v142 = (v130 - v16);
  __chkstk_darwin(v17);
  v164 = (v130 - v18);
  v151 = type metadata accessor for Date();
  v146 = *(v151 - 8);
  __chkstk_darwin(v151);
  v137 = v130 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Calendar.Component();
  v133 = *(v20 - 8);
  v134 = v20;
  __chkstk_darwin(v20);
  v132 = v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Calendar();
  KeyPath = *(v22 - 8);
  v136 = v22;
  __chkstk_darwin(v22);
  v131 = v130 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Font.Leading();
  v154 = *(v24 - 8);
  v155 = v24;
  __chkstk_darwin(v24);
  v153 = v130 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for AccessibilityTraits();
  v150 = *(v152 - 8);
  __chkstk_darwin(v152);
  v149 = v130 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100140278(&qword_1008DC498);
  __chkstk_darwin(v27 - 8);
  v158 = v130 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v163 = v130 - v30;
  v138 = *(a1 + 16);
  v177 = sub_100183B10(v138);
  v178 = v31;
  v130[1] = sub_10000FCBC();
  v32 = Text.init<A>(_:)();
  v34 = v33;
  v36 = v35;
  static Font.largeTitle.getter();
  v37 = Text.font(_:)();
  v39 = v38;
  v41 = v40;

  sub_10004642C(v32, v34, v36 & 1);

  static Font.Weight.bold.getter();
  v42 = Text.fontWeight(_:)();
  v44 = v43;
  LOBYTE(v32) = v45;
  v47 = v46;
  sub_10004642C(v37, v39, v41 & 1);

  v177 = v42;
  v178 = v44;
  LOBYTE(v179) = v32 & 1;
  v180 = v47;
  v48 = v149;
  static AccessibilityTraits.isHeader.getter();
  View.accessibilityAddTraits(_:)();
  (*(v150 + 8))(v48, v152);
  sub_10004642C(v42, v44, v32 & 1);

  v49 = v162 + *(v156 + 84);
  v150 = *v49;
  LODWORD(v149) = *(v49 + 8);
  v148 = *(v49 + 16);
  v177 = v150;
  LOBYTE(v178) = v149;
  v179 = v148;
  v147 = sub_100140278(&qword_1008DC3E8);
  State.wrappedValue.getter();
  v177 = sub_1004AA12C();
  v178 = v50;
  v51 = Text.init<A>(_:)();
  v53 = v52;
  v55 = v54;
  static Font.body.getter();
  v57 = v153;
  v56 = v154;
  v58 = v155;
  (*(v154 + 104))(v153, enum case for Font.Leading.tight(_:), v155);
  Font.leading(_:)();

  (*(v56 + 8))(v57, v58);
  v59 = Text.font(_:)();
  v61 = v60;
  LOBYTE(v57) = v62;

  sub_10004642C(v51, v53, v55 & 1);

  static Font.Weight.semibold.getter();
  v63 = Text.fontWeight(_:)();
  v65 = v64;
  LOBYTE(v44) = v66;
  sub_10004642C(v59, v61, v57 & 1);

  LODWORD(v177) = static HierarchicalShapeStyle.secondary.getter();
  v67 = Text.foregroundStyle<A>(_:)();
  v154 = v68;
  v155 = v67;
  LOBYTE(v59) = v69;
  v156 = v70;
  sub_10004642C(v63, v65, v44 & 1);

  LODWORD(v153) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  LODWORD(v152) = v59 & 1;
  LOBYTE(v177) = v59 & 1;
  *&v170 = v150;
  BYTE8(v170) = v149;
  *&v171 = v148;
  State.projectedValue.getter();
  v149 = v178;
  v150 = v177;
  v148 = v179;
  LODWORD(v65) = v180;
  v79 = v131;
  static Calendar.current.getter();
  v81 = v132;
  v80 = v133;
  v82 = v134;
  (*(v133 + 104))(v132, enum case for Calendar.Component.year(_:), v134);
  v83 = v137;
  Date.init()();
  v147 = Calendar.component(_:from:)();
  (*(v146 + 8))(v83, v151);
  (*(v80 + 8))(v81, v82);
  (*(KeyPath + 8))(v79, v136);
  LODWORD(v146) = static Edge.Set.all.getter();
  LODWORD(v151) = v65;
  v207 = v65;
  v205 = 1;
  v202 = 0;
  v84 = static HorizontalAlignment.center.getter();
  v85 = v164;
  *v164 = v84;
  v85[1] = 0x4024000000000000;
  *(v85 + 16) = 0;
  v86 = sub_100140278(&qword_1008E6C40);
  v136 = *(v86 + 44);
  v137 = v86;
  v87 = v162;
  v88 = *v162;
  v177 = *v162;
  KeyPath = swift_getKeyPath();
  v89 = v157;
  sub_1002DC6D8(v87, v157, type metadata accessor for MetricFamilyRoomView);
  v90 = (*(v140 + 80) + 16) & ~*(v140 + 80);
  v140 = v90 + v139;
  v91 = swift_allocObject();
  sub_1002DC0E8(v89, v91 + v90, type metadata accessor for MetricFamilyRoomView);

  v92 = sub_100140278(&qword_1008E6C48);
  v93 = type metadata accessor for MetricFamilyChartView();
  v94 = sub_10014A6B0(&qword_1008E6C50, &qword_1008E6C48);
  sub_1002DC598();
  v139 = v92;
  KeyPath = v94;
  v136 = v93;
  ForEach<>.init(_:id:content:)();
  v95 = v162;
  v96 = *(v162 + 8);
  if (*(v96 + 16) && *(v88 + 16))
  {
    v97 = v130[0];
    Divider.init()();
    v98 = static Edge.Set.vertical.getter();
    EdgeInsets.init(_all:)();
    v99 = v145;
    v100 = v97 + *(v145 + 36);
    *v100 = v98;
    *(v100 + 8) = v101;
    *(v100 + 16) = v102;
    *(v100 + 24) = v103;
    *(v100 + 32) = v104;
    *(v100 + 40) = 0;
    v105 = v97;
    v106 = v160;
    sub_1002DC5F0(v105, v160);
    v107 = 0;
  }

  else
  {
    v107 = 1;
    v106 = v160;
    v99 = v145;
  }

  (*(v141 + 56))(v106, v107, 1, v99);
  v145 = (v138 - 3) < 0xFEu;
  v108 = static HorizontalAlignment.center.getter();
  v109 = v142;
  *v142 = v108;
  *(v109 + 8) = 0x4024000000000000;
  *(v109 + 16) = 0;
  v177 = v96;
  swift_getKeyPath();
  v110 = v95;
  v111 = v157;
  sub_1002DC6D8(v110, v157, type metadata accessor for MetricFamilyRoomView);
  v112 = swift_allocObject();
  sub_1002DC0E8(v111, v112 + v90, type metadata accessor for MetricFamilyRoomView);

  ForEach<>.init(_:id:content:)();
  v113 = v158;
  sub_10001B104(v163, v158, &qword_1008DC498);
  v114 = v143;
  sub_10001B104(v164, v143, &qword_1008E6C38);
  sub_10001B104(v106, v161, &qword_1008DE0B8);
  sub_10001B104(v109, v159, &qword_1008E6C38);
  v115 = v113;
  v116 = v144;
  sub_10001B104(v115, v144, &qword_1008DC498);
  v117 = sub_100140278(&qword_1008E6C60);
  v118 = (v116 + v117[12]);
  *&v165 = v155;
  *(&v165 + 1) = v154;
  LOBYTE(v166) = v152;
  *(&v166 + 1) = v209[0];
  DWORD1(v166) = *(v209 + 3);
  *(&v166 + 1) = v156;
  v162 = xmmword_1006E6B40;
  v167 = xmmword_1006E6B40;
  LOBYTE(v168) = v153;
  *(&v168 + 1) = *v208;
  DWORD1(v168) = *&v208[3];
  *(&v168 + 1) = v72;
  *&v169[0] = v74;
  *(&v169[0] + 1) = v76;
  *&v169[1] = v78;
  BYTE8(v169[1]) = 0;
  *(v118 + 73) = *(v169 + 9);
  v119 = v169[0];
  v120 = v167;
  v118[3] = v168;
  v118[4] = v119;
  v121 = v166;
  *v118 = v165;
  v118[1] = v121;
  v118[2] = v120;
  v122 = v116 + v117[16];
  *&v170 = v150;
  *(&v170 + 1) = v149;
  *&v171 = v148;
  BYTE8(v171) = v151;
  HIDWORD(v171) = *&v206[3];
  *(&v171 + 9) = *v206;
  *&v172 = v145;
  BYTE8(v172) = 1;
  HIDWORD(v172) = *&v204[3];
  *(&v172 + 9) = *v204;
  *&v173 = v147;
  BYTE8(v173) = v146;
  HIDWORD(v173) = *&v203[3];
  *(&v173 + 9) = *v203;
  v157 = xmmword_1006D4690;
  v174 = xmmword_1006D4690;
  v175 = xmmword_1006D4690;
  v176 = 0;
  *(v122 + 96) = 0;
  *(v122 + 64) = xmmword_1006D4690;
  *(v122 + 80) = xmmword_1006D4690;
  v123 = v170;
  v124 = v171;
  v125 = v173;
  *(v122 + 32) = v172;
  *(v122 + 48) = v125;
  *v122 = v123;
  *(v122 + 16) = v124;
  v126 = v114;
  sub_10001B104(v114, v116 + v117[20], &qword_1008E6C38);
  v127 = v161;
  sub_10001B104(v161, v116 + v117[24], &qword_1008DE0B8);
  v128 = v159;
  sub_10001B104(v159, v116 + v117[28], &qword_1008E6C38);
  sub_10001B104(&v165, &v177, &qword_1008E6C68);
  sub_10001B104(&v170, &v177, &qword_1008DC518);
  sub_10000EA04(v109, &qword_1008E6C38);
  sub_10000EA04(v160, &qword_1008DE0B8);
  sub_10000EA04(v164, &qword_1008E6C38);
  sub_10000EA04(v163, &qword_1008DC498);
  sub_10000EA04(v128, &qword_1008E6C38);
  sub_10000EA04(v127, &qword_1008DE0B8);
  sub_10000EA04(v126, &qword_1008E6C38);
  v177 = v150;
  v178 = v149;
  v179 = v148;
  LOBYTE(v180) = v151;
  *(&v180 + 1) = *v206;
  HIDWORD(v180) = *&v206[3];
  v181 = v145;
  v182 = 1;
  *v183 = *v204;
  *&v183[3] = *&v204[3];
  v184 = v147;
  v185 = v146;
  *&v186[3] = *&v203[3];
  *v186 = *v203;
  v187 = v157;
  v188 = v157;
  v189 = 0;
  sub_10000EA04(&v177, &qword_1008DC518);
  v190[0] = v155;
  v190[1] = v154;
  v191 = v152;
  *v192 = v209[0];
  *&v192[3] = *(v209 + 3);
  v193 = v156;
  v194 = v162;
  v195 = v153;
  *v196 = *v208;
  *&v196[3] = *&v208[3];
  v197 = v72;
  v198 = v74;
  v199 = v76;
  v200 = v78;
  v201 = 0;
  sub_10000EA04(v190, &qword_1008E6C68);
  return sub_10000EA04(v158, &qword_1008DC498);
}

void sub_1002DA3B8(uint64_t a1@<X0>, uint64_t (*a2)(char *, uint64_t, uint64_t)@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for MetricDetailViewModel();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (v4 + *(type metadata accessor for MetricFamilyRoomView() + 72));
  v15 = *v13;
  v14 = v13[1];
  v32 = v15;
  v33 = v14;
  sub_100140278(&qword_1008E6C28);
  State.wrappedValue.getter();
  v16 = v31;
  if (*(v31 + 16))
  {
    v29 = v10;
    v30 = a3;
    v17 = a3 & 1;
    v18 = sub_1004C53EC(a2, a3 & 1);
    if (v19)
    {
      v20 = *(*(v16 + 56) + 8 * v18);

      if (*(v20 + 16))
      {
        v21 = sub_1004CD4B0(a1);
        if (v22)
        {
          sub_1002DC6D8(*(v20 + 56) + *(v29 + 72) * v21, v12, type metadata accessor for MetricDetailViewModel);

          sub_1002DC0E8(v12, a4, type metadata accessor for MetricDetailViewModel);
          return;
        }
      }
    }

    v23 = v30;
  }

  else
  {

    v17 = a3 & 1;
    v23 = a3;
  }

  v24 = sub_1004D3AD8(a1);
  v25 = objc_opt_self();
  v26 = [v25 quantityWithUnit:v24 doubleValue:0.0];
  v27 = [v25 quantityWithUnit:v24 doubleValue:0.0];
  sub_100062880(a2, v17, a4 + *(v9 + 36));
  Date.init()();

  *a4 = v26;
  *(a4 + 8) = v27;
  *(a4 + 16) = _swiftEmptyArrayStorage;
  *(a4 + 24) = _swiftEmptyArrayStorage;
  *(a4 + 32) = a2;
  *(a4 + 40) = v23 & 1;
  *(a4 + *(v9 + 40)) = 0;
}

id sub_1002DA648@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v11 = *(a2 + 16);
  v5 = *a1;
  v10 = type metadata accessor for MetricFamilyRoomView();
  sub_100140278(&qword_1008DC3E8);
  State.wrappedValue.getter();
  v6 = type metadata accessor for MetricFamilyChartView();
  sub_1002DA3B8(v5, v12, v13, &a3[v6[6]]);
  State.wrappedValue.getter();
  sub_1002DC6D8(a2 + *(v10 + 28), &a3[v6[8]], type metadata accessor for MetricFormattingHelper);
  v7 = *(a2 + *(v10 + 56));
  *a3 = v5;
  a3[1] = v11;
  v8 = &a3[v6[7]];
  *v8 = v12;
  v8[8] = v13;
  *&a3[v6[9]] = v7;

  return v7;
}

uint64_t sub_1002DA7AC()
{
  type metadata accessor for MetricFamilyRoomView();
  sub_100140278(&qword_1008DC3E8);
  State.wrappedValue.getter();
  if (v2)
  {
    State.wrappedValue.getter();
    return v1;
  }

  else
  {
    sub_100140278(&qword_1008DC400);
    State.wrappedValue.getter();
    return sub_1004ABC14(v1);
  }
}

uint64_t sub_1002DA8A4(uint64_t (*a1)(char *, uint64_t, uint64_t), int a2)
{
  v3 = v2;
  v49 = a2;
  v55 = a1;
  v4 = type metadata accessor for MetricFamilyRoomView();
  v48 = *(v4 - 8);
  __chkstk_darwin(v4);
  v46 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v5;
  v6 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v6 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v54 = &v41 - v10;
  v11 = type metadata accessor for MetricDetailViewModel();
  __chkstk_darwin(v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = *v2;

  sub_10019F090(v14);
  v15 = v62;
  v16 = *(v62 + 16);
  if (v16)
  {
    v57 = 0;
    v52 = *(v2 + *(v4 + 32));
    v51 = v49 & 1;
    v17 = 32;
    v44 = v8;
    v45 = v2;
    v43 = v11;
    v42 = v13;
    v53 = v62;
    do
    {
      v56 = v16;
      v18 = *(v15 + v17);
      v19 = v55;
      v20 = v51;
      sub_1003C500C(v18, v55, v51, v13);
      v21 = static Animation.easeInOut.getter();
      __chkstk_darwin(v21);
      *(&v41 - 4) = v3;
      *(&v41 - 3) = v19;
      *(&v41 - 16) = v20;
      *(&v41 - 15) = v18;
      *(&v41 - 1) = v13;
      v22 = v57;
      withAnimation<A>(_:_:)();
      v57 = v22;

      if ((v13[*(v11 + 40)] & 1) == 0)
      {
        v23 = type metadata accessor for TaskPriority();
        v50 = *(v23 - 8);
        v24 = v54;
        (*(v50 + 56))(v54, 1, 1, v23);
        v25 = v46;
        sub_1002DC6D8(v3, v46, type metadata accessor for MetricFamilyRoomView);
        type metadata accessor for MainActor();
        v26 = static MainActor.shared.getter();
        v27 = (*(v48 + 80) + 32) & ~*(v48 + 80);
        v28 = v27 + v47;
        v29 = (v27 + v47) & 0xFFFFFFFFFFFFFFF8;
        v30 = swift_allocObject();
        *(v30 + 16) = v26;
        *(v30 + 24) = &protocol witness table for MainActor;
        LOBYTE(v26) = v49;
        v31 = v25;
        v32 = v44;
        sub_1002DC0E8(v31, v30 + v27, type metadata accessor for MetricFamilyRoomView);
        *(v30 + v28) = v18;
        v33 = v50;
        v34 = v30 + v29;
        *(v34 + 8) = v55;
        *(v34 + 16) = v26 & 1;
        sub_10001B104(v24, v32, &qword_1008E1760);
        LODWORD(v26) = (*(v33 + 48))(v32, 1, v23);

        if (v26 == 1)
        {
          sub_10000EA04(v32, &qword_1008E1760);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v33 + 8))(v32, v23);
        }

        v35 = *(v30 + 16);
        swift_unknownObjectRetain();

        v3 = v45;
        if (v35)
        {
          swift_getObjectType();
          v36 = dispatch thunk of Actor.unownedExecutor.getter();
          v38 = v37;
          swift_unknownObjectRelease();
        }

        else
        {
          v36 = 0;
          v38 = 0;
        }

        sub_10000EA04(v54, &qword_1008E1760);
        v39 = swift_allocObject();
        *(v39 + 16) = &unk_1006E6C40;
        *(v39 + 24) = v30;
        if (v38 | v36)
        {
          v58 = 0;
          v59 = 0;
          v60 = v36;
          v61 = v38;
        }

        v11 = v43;
        v13 = v42;
        swift_task_create();
      }

      sub_1002DC168(v13);
      ++v17;
      v16 = v56 - 1;
      v15 = v53;
    }

    while (v56 != 1);
  }
}

uint64_t sub_1002DAE34(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002DAECC, v3, v2);
}

uint64_t sub_1002DAECC()
{

  v1 = sub_1002DA7AC();
  sub_1002DA8A4(v1, v2 & 1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002DAF38(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MetricFamilyRoomView();
  v51 = *(v4 - 8);
  __chkstk_darwin(v4);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v5;
  v6 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v6 - 8);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v42 - v10;
  *&v61 = *v1;

  sub_10019F090(v12);
  v13 = v61;
  v14 = *(v61 + 16);
  if (!v14)
  {
  }

  v15 = 0;
  v47 = a1;
  v45 = v8;
  v46 = v4;
  v48 = v2;
  v43 = v14;
  v44 = v61;
  while (v15 < *(v13 + 16))
  {
    v16 = *(v13 + v15 + 32);
    if (v16 - 4 >= 0x22)
    {
      if (v16 >= 4)
      {
        if (a1 == 2)
        {
LABEL_9:
          v17 = v2 + *(v4 + 76);
          v18 = *v17;
          v19 = *(v17 + 8);
          v20 = *(v17 + 16);
          *&v61 = *v17;
          BYTE8(v61) = v19;
          v62 = v20;
          sub_100140278(&qword_1008DC3E8);
          State.wrappedValue.getter();
          v54 = v16;
          if (v60)
          {
            *&v61 = v18;
            BYTE8(v61) = v19;
            v62 = v20;
            State.wrappedValue.getter();
            v52 = v59;
            v21 = v60;
            goto LABEL_13;
          }

          v61 = *(v2 + *(v4 + 80));
          sub_100140278(&qword_1008DC400);
          State.wrappedValue.getter();
          a1 = v59;
          v52 = v59;
          if (v59 >= 3)
          {
            if (v59 <= 2)
            {
              goto LABEL_34;
            }

            v53 = 0;
          }

          else
          {
            v21 = 1;
LABEL_13:
            v53 = v21;
          }

          v22 = type metadata accessor for TaskPriority();
          v23 = *(v22 - 8);
          (*(v23 + 56))(v11, 1, 1, v22);
          v24 = v49;
          sub_1002DC6D8(v2, v49, type metadata accessor for MetricFamilyRoomView);
          type metadata accessor for MainActor();
          v25 = static MainActor.shared.getter();
          v26 = (*(v51 + 80) + 32) & ~*(v51 + 80);
          v27 = v11;
          v28 = v26 + v50;
          v29 = (v26 + v50) & 0xFFFFFFFFFFFFFFF8;
          v30 = swift_allocObject();
          *(v30 + 16) = v25;
          *(v30 + 24) = &protocol witness table for MainActor;
          sub_1002DC0E8(v24, v30 + v26, type metadata accessor for MetricFamilyRoomView);
          *(v30 + v28) = v54;
          v11 = v27;
          v31 = v30 + v29;
          *(v31 + 8) = v52;
          *(v31 + 16) = v53;
          v32 = v45;
          sub_10001B104(v27, v45, &qword_1008E1760);
          LODWORD(v25) = (*(v23 + 48))(v32, 1, v22);

          if (v25 == 1)
          {
            sub_10000EA04(v32, &qword_1008E1760);
          }

          else
          {
            TaskPriority.rawValue.getter();
            (*(v23 + 8))(v32, v22);
          }

          v33 = *(v30 + 16);
          swift_unknownObjectRetain();

          v2 = v48;
          a1 = v47;
          v4 = v46;
          if (v33)
          {
            swift_getObjectType();
            v34 = dispatch thunk of Actor.unownedExecutor.getter();
            v36 = v35;
            swift_unknownObjectRelease();
          }

          else
          {
            v34 = 0;
            v36 = 0;
          }

          v13 = v44;
          sub_10000EA04(v11, &qword_1008E1760);
          v37 = swift_allocObject();
          *(v37 + 16) = &unk_1006E6C28;
          *(v37 + 24) = v30;
          if (v36 | v34)
          {
            v55 = 0;
            v56 = 0;
            v57 = v34;
            v58 = v36;
          }

          v14 = v43;
          swift_task_create();
        }
      }

      else if (!a1)
      {
        goto LABEL_9;
      }
    }

    else if (a1 == 1)
    {
      goto LABEL_9;
    }

    if (v14 == ++v15)
    {
    }
  }

  __break(1u);
LABEL_34:
  *&v61 = 0;
  *(&v61 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(77);
  v39._countAndFlagsBits = 0xD000000000000038;
  v39._object = 0x8000000100753B60;
  String.append(_:)(v39);
  v59 = a1;
  v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v40);

  v41._object = 0x8000000100753BA0;
  v41._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v41);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1002DB58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  *(v7 + 105) = a7;
  *(v7 + 104) = a5;
  *(v7 + 16) = a4;
  *(v7 + 24) = a6;
  v8 = type metadata accessor for MetricDetailViewModel();
  *(v7 + 32) = v8;
  *(v7 + 40) = *(v8 - 8);
  *(v7 + 48) = swift_task_alloc();
  sub_100140278(&qword_1008DC408);
  *(v7 + 56) = swift_task_alloc();
  *(v7 + 64) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v7 + 72) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 80) = v10;
  *(v7 + 88) = v9;

  return _swift_task_switch(sub_1002DB6CC, v10, v9);
}

uint64_t sub_1002DB6CC()
{
  v1 = *(v0 + 105);
  type metadata accessor for MetricFamilyRoomView();
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_1002DB784;
  v3 = *(v0 + 64);
  v4 = *(v0 + 24);
  v5 = *(v0 + 104);

  return sub_1003C59C0(v3, v5, v4, v1 & 1);
}

uint64_t sub_1002DB784()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_1002DB8A4, v3, v2);
}

uint64_t sub_1002DB8A4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);

  sub_10001B104(v1, v2, &qword_1008DC408);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = *(v0 + 56);
    sub_10000EA04(*(v0 + 64), &qword_1008DC408);
    sub_10000EA04(v5, &qword_1008DC408);
  }

  else
  {
    v6 = *(v0 + 64);
    v7 = *(v0 + 48);
    v8 = *(v0 + 105);
    v9 = *(v0 + 104);
    v11 = *(v0 + 16);
    v10 = *(v0 + 24);
    sub_1002DC0E8(*(v0 + 56), v7, type metadata accessor for MetricDetailViewModel);
    static Animation.easeInOut.getter();
    v12 = swift_task_alloc();
    *(v12 + 16) = v11;
    *(v12 + 24) = v10;
    *(v12 + 32) = v8 & 1;
    *(v12 + 33) = v9;
    *(v12 + 40) = v7;
    withAnimation<A>(_:_:)();

    sub_10000EA04(v6, &qword_1008DC408);
    sub_1002DC168(v7);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002DBA74(uint64_t a1, Swift::UInt a2, char a3, int a4, uint64_t a5)
{
  HIDWORD(v24) = a4;
  v9 = sub_100140278(&qword_1008DC408);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  v12 = (a1 + *(type metadata accessor for MetricFamilyRoomView() + 72));
  v13 = *v12;
  v14 = v12[1];
  v29 = *v12;
  v30 = v14;
  sub_100140278(&qword_1008E6C28);
  State.wrappedValue.getter();
  v15 = v26;
  if (*(v26 + 16) && (v16 = sub_1004C53EC(a2, a3 & 1), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);
  }

  else
  {
    v18 = sub_1004CB298(_swiftEmptyArrayStorage);
  }

  v31 = v18;
  sub_1002DC6D8(a5, v11, type metadata accessor for MetricDetailViewModel);
  v19 = type metadata accessor for MetricDetailViewModel();
  (*(*(v19 - 8) + 56))(v11, 0, 1, v19);
  sub_10055A5C4(v11, HIDWORD(v24));
  v20 = v31;
  v29 = v13;
  v30 = v14;

  State.wrappedValue.getter();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = v28;
  sub_100490ABC(v20, a2, a3 & 1, isUniquelyReferenced_nonNull_native);
  v22 = v26;
  v26 = v13;
  v27 = v14;
  v25 = v22;
  State.wrappedValue.setter();
}

unint64_t sub_1002DBC9C()
{
  result = qword_1008E6BE8;
  if (!qword_1008E6BE8)
  {
    sub_100141EEC(&qword_1008E6BE0);
    sub_10014A6B0(&qword_1008E6BF0, &qword_1008E6BF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E6BE8);
  }

  return result;
}

uint64_t sub_1002DBD54()
{
  type metadata accessor for MetricFamilyRoomView();
  v0 = sub_1002DA7AC();
  return sub_1002DA8A4(v0, v1 & 1);
}

unint64_t sub_1002DBDC8()
{
  result = qword_1008E6C00;
  if (!qword_1008E6C00)
  {
    sub_100141EEC(&qword_1008E6BD8);
    sub_10014A6B0(&qword_1008E6C08, &qword_1008E6C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E6C00);
  }

  return result;
}

uint64_t sub_1002DBE80()
{
  v2 = *(type metadata accessor for MetricFamilyRoomView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002BBC0;

  return sub_1002DAE34(v0 + v3);
}

uint64_t sub_1002DBFB0(uint64_t a1)
{
  v4 = *(type metadata accessor for MetricFamilyRoomView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + (v6 & 0xFFFFFFFFFFFFFFF8);
  v10 = *(v9 + 8);
  v11 = *(v9 + 16);
  v12 = *(v1 + v6);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_10002BBC0;

  return sub_1002DB58C(a1, v7, v8, v1 + v5, v12, v10, v11);
}

uint64_t sub_1002DC0E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002DC168(uint64_t a1)
{
  v2 = type metadata accessor for MetricDetailViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002DC1EC()
{
  v1 = (type metadata accessor for MetricFamilyRoomView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (v3 + *(*v1 + 64)) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = (v0 + v3 + v1[9]);

  v7 = type metadata accessor for MetricFormattingHelper();
  v8 = *(v7 + 20);
  v9 = type metadata accessor for AttributedString();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);

  return _swift_deallocObject(v0, v4 + 17, v2 | 7);
}

uint64_t sub_1002DC3A8(uint64_t a1)
{
  v4 = *(type metadata accessor for MetricFamilyRoomView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + (v6 & 0xFFFFFFFFFFFFFFF8);
  v10 = *(v9 + 8);
  v11 = *(v9 + 16);
  v12 = *(v1 + v6);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_10002BACC;

  return sub_1002DB58C(a1, v7, v8, v1 + v5, v12, v10, v11);
}

uint64_t sub_1002DC4E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002BACC;

  return sub_10000DA58(a1, v4);
}

unint64_t sub_1002DC598()
{
  result = qword_1008E6C58;
  if (!qword_1008E6C58)
  {
    type metadata accessor for MetricFamilyChartView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E6C58);
  }

  return result;
}

uint64_t sub_1002DC5F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DE0B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002DC6D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_1002DC75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC10FitnessApp43RecentWorkoutAppRecommendationTableViewCell_workoutAppRecommendationCollectionViewController] = 0;
  if (a3)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for RecentWorkoutAppRecommendationTableViewCell();
  v6 = objc_msgSendSuper2(&v11, "initWithStyle:reuseIdentifier:", a1, v5);

  v7 = v6;
  v8 = [v7 contentView];
  v9 = sub_100046170();
  [v8 setBackgroundColor:v9];

  return v7;
}

id sub_1002DC8F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecentWorkoutAppRecommendationTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1002DCC50(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_12:

    type metadata accessor for DownhillRunsStats();
    swift_allocObject();
    *&v1[OBJC_IVAR___CHWorkoutDownhillRunsStats_downhillRunsStats] = DownhillRunsStats.init(downhillRuns:)();
    v10.receiver = v1;
    v10.super_class = type metadata accessor for DownhillRunsStatsBridge();
    return objc_msgSendSuper2(&v10, "init");
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_12;
  }

LABEL_3:
  v11 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v3 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = v5 + 1;
        v7 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + OBJC_IVAR___CHWorkoutDownhillRun_downhillRun);
        swift_unknownObjectRelease();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v5 = v6;
      }

      while (v3 != v6);
    }

    else
    {
      v8 = 32;
      do
      {
        v9 = *(*(a1 + v8) + OBJC_IVAR___CHWorkoutDownhillRun_downhillRun);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v8 += 8;
        --v3;
      }

      while (v3);
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

id sub_1002DCE94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DownhillRunsStatsBridge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002DCEFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002DCF44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002DCFC4(void *a1)
{
  v2 = type metadata accessor for TrendsActionContext(0);
  __chkstk_darwin(v2);
  v4 = &v15[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TrendListMetric();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = &v4[*(v2 + 20)];
  *v6 = _swiftEmptyArrayStorage;
  v6[8] = 0;
  sub_1002DD154(a1, v16);
  if (v17)
  {
    v7 = sub_1000066AC(v16, v17);
    v15[3] = v2;
    v8 = sub_100005994(v15);
    sub_1002DD220(v4, v8);
    v9 = *v7;
    v10 = a1[8];
    v11 = a1[9];
    v12 = sub_1000066AC(a1 + 5, v10);
    sub_100607BA4(v12, v15, v9, v10, v11);
    sub_1002DD1C4(v4);
    sub_10000EA04(v15, &qword_1008E51F0);
    return sub_100005A40(v16);
  }

  else
  {
    sub_1002DD1C4(v4);
    return sub_10000EA04(v16, &qword_1008DC808);
  }
}

uint64_t sub_1002DD154(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DC808);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002DD1C4(uint64_t a1)
{
  v2 = type metadata accessor for TrendsActionContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002DD220(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrendsActionContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002DD284()
{
  result = qword_1008E6CE8;
  if (!qword_1008E6CE8)
  {
    sub_100141EEC(&qword_1008E6CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E6CE8);
  }

  return result;
}

char *sub_1002DD2E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_topLeadingDetailItemView;
  v7 = type metadata accessor for StackDetailItemView();
  v8 = [objc_allocWithZone(v7) init];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v6] = v8;
  v9 = OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_topTrailingDetailItemView;
  v10 = [objc_allocWithZone(v7) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v9] = v10;
  v11 = OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_bottomLeadingDetailItemView;
  v12 = [objc_allocWithZone(v7) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v11] = v12;
  v13 = OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_bottomTrailingDetailItemView;
  v14 = [objc_allocWithZone(v7) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v13] = v14;
  if (a3)
  {
    v15 = String._bridgeToObjectiveC()();
  }

  else
  {
    v15 = 0;
  }

  v23.receiver = v3;
  v23.super_class = type metadata accessor for StackDetailSideBySideItemsCell();
  v16 = objc_msgSendSuper2(&v23, "initWithStyle:reuseIdentifier:", a1, v15);

  v17 = v16;
  v18 = [v17 contentView];
  [v18 addSubview:*&v17[OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_topLeadingDetailItemView]];

  v19 = [v17 contentView];
  [v19 addSubview:*&v17[OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_topTrailingDetailItemView]];

  v20 = [v17 contentView];
  [v20 addSubview:*&v17[OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_bottomLeadingDetailItemView]];

  v21 = [v17 contentView];
  [v21 addSubview:*&v17[OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_bottomTrailingDetailItemView]];

  return v17;
}

void sub_1002DD568(uint64_t a1)
{
  v2 = *(a1 + 56);
  sub_100140278(&unk_1008E4E20);
  if (v2 < 0)
  {
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1006D9830;
    v35 = OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_topLeadingDetailItemView;
    v36 = [*&v1[OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_topLeadingDetailItemView] topAnchor];
    v37 = [v1 contentView];
    v38 = [v37 topAnchor];

    v39 = [v36 constraintEqualToAnchor:v38];
    *(v34 + 32) = v39;
    v40 = [*&v1[v35] leadingAnchor];
    v41 = [v1 contentView];
    v42 = [v41 leadingAnchor];

    v43 = [v40 constraintEqualToAnchor:v42 constant:16.0];
    *(v34 + 40) = v43;
    v44 = [*&v1[v35] trailingAnchor];
    v45 = [v1 contentView];
    v46 = [v45 leadingAnchor];

    v47 = [v44 constraintEqualToAnchor:v46 constant:sub_1000B7BC0()];
    *(v34 + 48) = v47;
    v48 = OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_topTrailingDetailItemView;
    v49 = [*&v1[OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_topTrailingDetailItemView] topAnchor];
    v50 = [*&v1[v35] topAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];

    *(v34 + 56) = v51;
    v52 = [*&v1[v48] leadingAnchor];
    v53 = [v1 contentView];
    v54 = [v53 leadingAnchor];

    v55 = [v52 constraintEqualToAnchor:v54 constant:sub_1000B7BC0()];
    *(v34 + 64) = v55;
    v56 = [*&v1[v48] trailingAnchor];
    v57 = [v1 contentView];
    v58 = [v57 trailingAnchor];

    v59 = [v56 constraintEqualToAnchor:v58 constant:-16.0];
    *(v34 + 72) = v59;
    v60 = OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_bottomLeadingDetailItemView;
    v61 = [*&v1[OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_bottomLeadingDetailItemView] topAnchor];
    v62 = [*&v1[v35] bottomAnchor];
    v63 = [v61 constraintEqualToAnchor:v62 constant:16.0];

    *(v34 + 80) = v63;
    v64 = [*&v1[v60] leadingAnchor];
    v65 = [v1 contentView];
    v66 = [v65 leadingAnchor];

    v67 = [v64 constraintEqualToAnchor:v66 constant:16.0];
    *(v34 + 88) = v67;
    v68 = [*&v1[v60] trailingAnchor];
    v69 = [v1 contentView];
    v70 = [v69 leadingAnchor];

    v71 = [v68 constraintEqualToAnchor:v70 constant:sub_1000B7BC0()];
    *(v34 + 96) = v71;
    v72 = [*&v1[v60] bottomAnchor];
    v73 = [v1 contentView];
    v74 = [v73 bottomAnchor];

    v75 = [v72 constraintLessThanOrEqualToAnchor:v74 constant:-27.0];
    *(v34 + 104) = v75;
    v4 = &v1[OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_bottomTrailingDetailItemView];
    v76 = [*&v1[OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_bottomTrailingDetailItemView] topAnchor];
    v77 = [*&v1[v60] topAnchor];
    v78 = [v76 constraintEqualToAnchor:v77];

    *(v34 + 112) = v78;
    v79 = [*v4 leadingAnchor];
    v80 = [v1 contentView];
    v81 = [v80 leadingAnchor];

    v82 = [v79 constraintEqualToAnchor:v81 constant:sub_1000B7BC0()];
    *(v34 + 120) = v82;
    v83 = [*v4 trailingAnchor];
    v84 = [v1 contentView];
    v85 = [v84 trailingAnchor];

    v86 = [v83 constraintEqualToAnchor:v85 constant:-16.0];
    *(v34 + 128) = v86;
    v33 = (v34 + 136);
  }

  else
  {
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1006D68B0;
    v4 = &v1[OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_topLeadingDetailItemView];
    v5 = [*&v1[OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_topLeadingDetailItemView] topAnchor];
    v6 = [v1 contentView];
    v7 = [v6 topAnchor];

    v8 = [v5 constraintEqualToAnchor:v7];
    *(v3 + 32) = v8;
    v9 = [*v4 leadingAnchor];
    v10 = [v1 contentView];
    v11 = [v10 leadingAnchor];

    v12 = [v9 constraintEqualToAnchor:v11 constant:16.0];
    *(v3 + 40) = v12;
    v13 = [*v4 trailingAnchor];
    v14 = [v1 contentView];
    v15 = [v14 leadingAnchor];

    v16 = [v13 constraintEqualToAnchor:v15 constant:sub_1000B7BC0()];
    *(v3 + 48) = v16;
    v17 = [*v4 bottomAnchor];
    v18 = [v1 contentView];
    v19 = [v18 bottomAnchor];

    v20 = [v17 constraintLessThanOrEqualToAnchor:v19 constant:-27.0];
    *(v3 + 56) = v20;
    v21 = OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_topTrailingDetailItemView;
    v22 = [*&v1[OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_topTrailingDetailItemView] topAnchor];
    v23 = [*v4 topAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];

    *(v3 + 64) = v24;
    v25 = [*&v1[v21] leadingAnchor];
    v26 = [v1 contentView];
    v27 = [v26 leadingAnchor];

    v28 = [v25 constraintEqualToAnchor:v27 constant:sub_1000B7BC0()];
    *(v3 + 72) = v28;
    v29 = [*&v1[v21] trailingAnchor];
    v30 = [v1 contentView];
    v31 = [v30 trailingAnchor];

    v32 = [v29 constraintEqualToAnchor:v31 constant:-16.0];
    *(v3 + 80) = v32;
    v33 = (v3 + 88);
  }

  v87 = [*v4 bottomAnchor];
  v88 = [v1 contentView];
  v89 = [v88 bottomAnchor];

  v90 = [v87 constraintLessThanOrEqualToAnchor:v89 constant:-27.0];
  *v33 = v90;
  v91 = objc_opt_self();
  sub_10019EC5C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v91 activateConstraints:isa];
}

void sub_1002DE03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *a3;
  v6 = *(a3 + 8);
  v9 = *(a3 + 16);
  v8 = *(a3 + 24);
  v10 = *(a3 + 56);
  v11 = v10 >> 6;
  if (v10 >> 6 > 1)
  {
    v13 = *(a3 + 40);
    v26 = *(a3 + 32);
    if (v11 == 2)
    {
      v14 = *(v3 + OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_topLeadingDetailItemView);
      sub_1002DE534(v14, v7, v6, a2);

      v15 = *(v3 + OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_topTrailingDetailItemView);
      sub_1002DE534(v15, v9, v8, a2);

      v16 = *(v3 + OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_bottomLeadingDetailItemView);
      v17 = v16;
      v18 = v26;
      v19 = v13;
    }

    else
    {
      v25 = *(a3 + 48);
      v22 = *(v3 + OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_topLeadingDetailItemView);
      sub_1002DE534(v22, v7, v6, a2);

      v23 = *(v3 + OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_topTrailingDetailItemView);
      sub_1002DE534(v23, v9, v8, a2);

      v24 = *(v3 + OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_bottomLeadingDetailItemView);
      sub_1002DE534(v24, v26, v13, a2);

      v16 = *(v3 + OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_bottomTrailingDetailItemView);
      v17 = v16;
      v19 = v10 & 0x3F;
      v18 = v25;
    }

    sub_1002DE534(v16, v18, v19, a2);
  }

  else
  {
    if (v11)
    {
      v20 = *(v3 + OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_topLeadingDetailItemView);
      sub_1002DE534(v20, v7, v6, a2);

      v21 = *(v3 + OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_topTrailingDetailItemView);
      sub_1002DE534(v21, v9, v8, a2);
    }

    else
    {
      v12 = *(v3 + OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_topLeadingDetailItemView);
      sub_1002DE534(v12, v7, v6, a2);
    }

    [*(v3 + OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_bottomLeadingDetailItemView) removeFromSuperview];
    [*(v3 + OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_bottomTrailingDetailItemView) removeFromSuperview];
  }

  sub_1002DD568(a3);
}

void sub_1002DE28C()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for StackDetailSideBySideItemsCell();
  objc_msgSendSuper2(&v13, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_topLeadingDetailItemView];
  v2 = *&v1[OBJC_IVAR____TtC10FitnessApp19StackDetailItemView_titleLabel];
  v3 = v1;
  [v2 setText:0];
  [*&v3[OBJC_IVAR____TtC10FitnessApp19StackDetailItemView_subtitleLabel] setAttributedText:0];

  v4 = *&v0[OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_topTrailingDetailItemView];
  v5 = *&v4[OBJC_IVAR____TtC10FitnessApp19StackDetailItemView_titleLabel];
  v6 = v4;
  [v5 setText:0];
  [*&v6[OBJC_IVAR____TtC10FitnessApp19StackDetailItemView_subtitleLabel] setAttributedText:0];

  v7 = *&v0[OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_bottomLeadingDetailItemView];
  v8 = *&v7[OBJC_IVAR____TtC10FitnessApp19StackDetailItemView_titleLabel];
  v9 = v7;
  [v8 setText:0];
  [*&v9[OBJC_IVAR____TtC10FitnessApp19StackDetailItemView_subtitleLabel] setAttributedText:0];

  v10 = *&v0[OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_bottomTrailingDetailItemView];
  v11 = *&v10[OBJC_IVAR____TtC10FitnessApp19StackDetailItemView_titleLabel];
  v12 = v10;
  [v11 setText:0];
  [*&v12[OBJC_IVAR____TtC10FitnessApp19StackDetailItemView_subtitleLabel] setAttributedText:0];
}

id sub_1002DE470()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StackDetailSideBySideItemsCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1002DE534(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  if (a3 > 1u)
  {
    v6 = *(a1 + OBJC_IVAR____TtC10FitnessApp19StackDetailItemView_titleLabel);
    if (a3 == 2)
    {
      sub_100408D88();
      v7 = String._bridgeToObjectiveC()();

      [v6 setText:v7];

      v8 = *(a1 + OBJC_IVAR____TtC10FitnessApp19StackDetailItemView_subtitleLabel);
      v9 = sub_10040885C(*&a2);
    }

    else
    {
      sub_1004093AC();
      v10 = String._bridgeToObjectiveC()();

      [v6 setText:v10];

      v8 = *(a1 + OBJC_IVAR____TtC10FitnessApp19StackDetailItemView_subtitleLabel);
      v9 = sub_100408E70(*&a2);
    }

    v11 = v9;
    [v8 setAttributedText:v9];
  }

  else if (a3)
  {
    sub_1003A058C(a4, *&a2);
  }

  else
  {
    sub_1003A055C(a4, *&a2);
  }
}

void sub_1002DE698()
{
  v1 = OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_topLeadingDetailItemView;
  v2 = type metadata accessor for StackDetailItemView();
  v3 = [objc_allocWithZone(v2) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v1) = v3;
  v4 = OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_topTrailingDetailItemView;
  v5 = [objc_allocWithZone(v2) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v4) = v5;
  v6 = OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_bottomLeadingDetailItemView;
  v7 = [objc_allocWithZone(v2) init];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v6) = v7;
  v8 = OBJC_IVAR____TtC10FitnessApp30StackDetailSideBySideItemsCell_bottomTrailingDetailItemView;
  v9 = [objc_allocWithZone(v2) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v8) = v9;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1002DE7C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Feature();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = URL.host.getter();
  v10 = v9;
  v11 = static NavigationConstants.host.getter();
  if (v10)
  {
    if (v8 == v11 && v10 == v12)
    {
    }

    else
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v13 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v14 = URL.pathComponents.getter();
    if (v14[2] != 2)
    {
      v21 = type metadata accessor for URL();
      (*(*(v21 - 8) + 8))(a1, v21);

      goto LABEL_11;
    }

    v15 = v14[6];
    v16 = v14[7];

    v17._countAndFlagsBits = v15;
    v17._object = v16;
    v18 = _findStringSwitchCase(cases:string:)(&off_100844E38, v17);

    if (!v18)
    {
      v23 = Platform.supportedFeatures.getter();
      (*(v5 + 104))(v7, enum case for Feature.trainerTipsObfuscation(_:), v4);
      v24 = sub_1003A5DE0(v7, v23);

      v25 = type metadata accessor for URL();
      (*(*(v25 - 8) + 8))(a1, v25);
      result = (*(v5 + 8))(v7, v4);
      v22 = 0;
      if (v24)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else
  {
  }

LABEL_9:
  v19 = type metadata accessor for URL();
  result = (*(*(v19 - 8) + 8))(a1, v19);
LABEL_11:
  v22 = 1;
LABEL_12:
  *a2 = 0;
  a2[1] = v22;
  a2[3] = 0;
  a2[4] = 0;
  a2[2] = 0;
  return result;
}

uint64_t sub_1002DEA80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for URLQueryItem();
  v93 = *(v4 - 8);
  v94 = v4;
  __chkstk_darwin(v4);
  v91 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v89 = &v81 - v7;
  __chkstk_darwin(v8);
  v10 = &v81 - v9;
  __chkstk_darwin(v11);
  v90 = &v81 - v12;
  __chkstk_darwin(v13);
  v15 = &v81 - v14;
  __chkstk_darwin(v16);
  v18 = &v81 - v17;
  v19 = type metadata accessor for Feature();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = URL.host.getter();
  if (!v24)
  {
    v36 = type metadata accessor for URL();
    result = (*(*(v36 - 8) + 8))(a1, v36);
    goto LABEL_43;
  }

  v25 = v24;
  v92 = a1;
  v26._countAndFlagsBits = v23;
  v26._object = v25;
  v27 = _findStringSwitchCase(cases:string:)(&off_100844E38, v26);

  if (!v27)
  {
    v37 = Platform.supportedFeatures.getter();
    (*(v20 + 104))(v22, enum case for Feature.trainerTipsObfuscation(_:), v19);
    v38 = sub_1003A5DE0(v22, v37);

    v39 = type metadata accessor for URL();
    (*(*(v39 - 8) + 8))(v92, v39);
    result = (*(v20 + 8))(v22, v19);
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    if (v38)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  if (v27 != 1)
  {
LABEL_42:
    v72 = type metadata accessor for URL();
    result = (*(*(v72 - 8) + 8))(v92, v72);
    goto LABEL_43;
  }

  v28 = v92;
  v29 = URL.pathComponents.getter();
  if (v29[2] != 2)
  {
    v45 = type metadata accessor for URL();
    (*(*(v45 - 8) + 8))(v28, v45);
LABEL_11:

    goto LABEL_43;
  }

  v30 = v29[6];
  v31 = v29[7];

  v32._countAndFlagsBits = v30;
  v32._object = v31;
  v33 = _findStringSwitchCase(cases:string:)(&off_100844E88, v32);

  if (v33)
  {
    v34 = type metadata accessor for URL();
    result = (*(*(v34 - 8) + 8))(v28, v34);
LABEL_43:
    v40 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v41 = 1;
LABEL_44:
    *a2 = v40;
    a2[1] = v41;
    a2[2] = v42;
    a2[3] = v43;
    a2[4] = v44;
    return result;
  }

  result = URL.queryItems.getter();
  v46 = result;
  v47 = *(result + 16);
  if (!v47)
  {
LABEL_41:

    goto LABEL_42;
  }

  v48 = 0;
  v87 = (v93 + 8);
  v88 = v93 + 16;
  while (1)
  {
    if (v48 >= *(v46 + 16))
    {
      __break(1u);
      goto LABEL_53;
    }

    v49 = *(v93 + 72);
    v84 = (*(v93 + 80) + 32) & ~*(v93 + 80);
    v85 = v49;
    v86 = *(v93 + 16);
    v86(v15, v46 + v84 + v49 * v48, v94);
    if (URLQueryItem.name.getter() == 0x696669746E656469 && v50 == 0xEA00000000007265)
    {
      break;
    }

    v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v51)
    {
      goto LABEL_21;
    }

    ++v48;
    result = (*v87)(v15, v94);
    if (v47 == v48)
    {
      goto LABEL_41;
    }
  }

LABEL_21:

  v52 = v94;
  v53 = v93 + 32;
  v54 = *(v93 + 32);
  v54(v18, v15, v94);
  v40 = URLQueryItem.value.getter();
  v41 = v55;
  v93 = v53;
  v83 = *(v53 - 24);
  v83(v18, v52);
  if (!v41)
  {
    goto LABEL_42;
  }

  v81 = v54;
  result = URL.queryItems.getter();
  v56 = result;
  v82 = *(result + 16);
  if (!v82)
  {
LABEL_40:

    goto LABEL_41;
  }

  v57 = 0;
  v58 = 0x656C746974;
  v59 = result + v84;
  while (v57 < *(v56 + 16))
  {
    v86(v10, v59, v94);
    if (URLQueryItem.name.getter() == v58 && v60 == 0xE500000000000000)
    {

LABEL_31:

      v63 = v90;
      v64 = v94;
      v81(v90, v10, v94);
      v43 = URLQueryItem.value.getter();
      v44 = v65;
      v83(v63, v64);
      if (!v44)
      {
        v73 = type metadata accessor for URL();
        (*(*(v73 - 8) + 8))(v92, v73);
        goto LABEL_11;
      }

      result = URL.queryItems.getter();
      v90 = result;
      v82 = *(result + 16);
      if (!v82)
      {
LABEL_39:

        goto LABEL_40;
      }

      v66 = 0;
      v67 = 0x5379616C70736964;
      v68 = &v90[v84];
      while (v66 < *(v90 + 2))
      {
        v86(v91, v68, v94);
        if (URLQueryItem.name.getter() == v67 && v69 == 0xEC000000656C7974)
        {

LABEL_47:

          v74 = v89;
          v75 = v94;
          v81(v89, v91, v94);
          URLQueryItem.value.getter();
          v77 = v76;
          v83(v74, v75);
          if (!v77)
          {
            v80 = type metadata accessor for URL();
            (*(*(v80 - 8) + 8))(v92, v80);

            goto LABEL_11;
          }

          v78 = ShelfDisplayStyle.init(rawValue:)();
          v79 = type metadata accessor for URL();
          result = (*(*(v79 - 8) + 8))(v92, v79);
          if (v78 == 49)
          {

            goto LABEL_11;
          }

          v42 = v78;
          goto LABEL_44;
        }

        v70 = v67;
        v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v71)
        {
          goto LABEL_47;
        }

        ++v66;
        result = (v83)(v91, v94);
        v68 += v85;
        v67 = v70;
        if (v82 == v66)
        {
          goto LABEL_39;
        }
      }

      goto LABEL_54;
    }

    v61 = v58;
    v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v62)
    {
      goto LABEL_31;
    }

    ++v57;
    result = (v83)(v10, v94);
    v59 += v85;
    v58 = v61;
    if (v82 == v57)
    {
      goto LABEL_40;
    }
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

uint64_t sub_1002DF3E4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100140278(&unk_1008EAF30);
  __chkstk_darwin(v10 - 8);
  v12 = &v42 - v11;
  v13 = type metadata accessor for URLComponents();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    (*(v7 + 8))(a1, v6);
    result = sub_10000EA04(v12, &unk_1008EAF30);
    v18 = 0;
    v19 = xmmword_1006E6990;
    v20 = 0uLL;
    goto LABEL_31;
  }

  LODWORD(v43) = a2;
  v44 = a3;
  (*(v14 + 32))(v16, v12, v13);
  v21 = URLComponents.scheme.getter();
  v23 = v22;
  v24 = static NavigationConstants.sharingURLScheme.getter();
  if (v23)
  {
    if (v21 == v24 && v23 == v25)
    {
      goto LABEL_26;
    }

    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v27)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v28 = URLComponents.scheme.getter();
  v30 = v29;
  v31 = static NavigationConstants.secureSharingURLScheme.getter();
  if (v30)
  {
    if (v28 == v31 && v30 == v32)
    {
      goto LABEL_26;
    }

    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v34)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v35 = URLComponents.host.getter();
  v37 = v36;
  v38 = static NavigationConstants.host.getter();
  if (v37)
  {
    if (v35 != v38 || v37 != v39)
    {
      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v41 & 1) == 0)
      {
        goto LABEL_33;
      }

LABEL_27:
      (*(v7 + 16))(v9, a1, v6);
      sub_1002DE7C0(v9, v46);
      goto LABEL_28;
    }

LABEL_26:

    goto LABEL_27;
  }

LABEL_33:
  (*(v7 + 16))(v9, a1, v6);
  sub_1002DEA80(v9, v46);
LABEL_28:
  v42 = v46[1];
  v43 = v46[0];
  v18 = v47;
  sub_1002DF83C(v46, v45);
  (*(v7 + 8))(a1, v6);
  result = (*(v14 + 8))(v16, v13);
  if (*(&v46[0] + 1) == 1)
  {
    v18 = 0;
    v19 = xmmword_1006E6990;
    v20 = 0uLL;
    a3 = v44;
  }

  else
  {
    result = sub_10000EA04(v46, &unk_1008F5510);
    a3 = v44;
    v20 = v42;
    v19 = v43;
  }

LABEL_31:
  *a3 = v19;
  *(a3 + 16) = v20;
  *(a3 + 32) = v18;
  return result;
}

uint64_t sub_1002DF83C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&unk_1008F5510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1002DF8AC()
{
  v1 = OBJC_IVAR____TtC10FitnessApp26AddToYourRingTableViewCell____lazy_storage___heightConstraint;
  v2 = *&v0[OBJC_IVAR____TtC10FitnessApp26AddToYourRingTableViewCell____lazy_storage___heightConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC10FitnessApp26AddToYourRingTableViewCell____lazy_storage___heightConstraint];
  }

  else
  {
    v4 = [v0 contentView];
    v5 = [v4 heightAnchor];

    v6 = [v5 constraintEqualToConstant:0.0];
    v7 = *&v0[v1];
    *&v0[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1002DF964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC10FitnessApp26AddToYourRingTableViewCell____lazy_storage___heightConstraint] = 0;
  if (a3)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for AddToYourRingTableViewCell();
  v7 = objc_msgSendSuper2(&v12, "initWithStyle:reuseIdentifier:", a1, v6);

  v8 = v7;
  v9 = [v8 contentView];
  v10 = sub_100046170();
  [v9 setBackgroundColor:v10];

  return v8;
}

void sub_1002DFAA8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v2 = [Strong view];
    if (v2)
    {
      v3 = v2;
      v4 = objc_opt_self();
      sub_100140278(&unk_1008E4E20);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1006D9810;
      v6 = [v3 topAnchor];
      v7 = [v0 contentView];
      v8 = [v7 topAnchor];

      v9 = [v6 constraintEqualToAnchor:v8];
      *(v5 + 32) = v9;
      v10 = [v3 bottomAnchor];
      v11 = [v0 contentView];
      v12 = [v11 bottomAnchor];

      v13 = [v10 constraintEqualToAnchor:v12];
      *(v5 + 40) = v13;
      v14 = [v3 trailingAnchor];
      v15 = [v0 contentView];
      v16 = [v15 trailingAnchor];

      v17 = [v14 constraintEqualToAnchor:v16];
      *(v5 + 48) = v17;
      v18 = [v3 leadingAnchor];
      v19 = [v0 contentView];
      v20 = [v19 leadingAnchor];

      v21 = [v18 constraintEqualToAnchor:v20];
      *(v5 + 56) = v21;
      *(v5 + 64) = sub_1002DF8AC();
      sub_1000059F8(0, &qword_1008DC980);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v4 activateConstraints:isa];

      v23 = isa;
    }

    else
    {
      v23 = v24;
    }
  }
}

void sub_1002DFDCC(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = Strong;
  if (Strong)
  {
  }

  swift_unknownObjectWeakAssign();
  v6 = [a1 view];
  if (v6)
  {
    v26 = v5;
    v27 = v6;
    v7 = [v1 contentView];
    [v7 frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    [v27 setFrame:{v9, v11, v13, v15}];
    v16 = [v2 contentView];
    v17 = [v16 subviews];

    sub_1000059F8(0, &qword_1008E7580);
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v18 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v20 = 0;
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v21 = *(v18 + 8 * v20 + 32);
        }

        v22 = v21;
        v23 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        [v21 removeFromSuperview];

        ++v20;
        if (v23 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:

    v24 = [v2 contentView];
    [v24 addSubview:v27];

    v25 = sub_1002DF8AC();
    sub_1006715E8();
    [v25 setConstant:?];

    if (!v26)
    {
      sub_1002DFAA8();
    }
  }
}

id sub_1002E00F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddToYourRingTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1002E019C()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6[4] = sub_1001CE774;
  v6[5] = v2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_1000449A8;
  v6[3] = &unk_100851678;
  v3 = _Block_copy(v6);

  v4 = [v1 beginBackgroundTaskWithExpirationHandler:v3];
  _Block_release(v3);

  v5 = v0 + OBJC_IVAR___CHBackgroundTaskAssertion_identifier;
  *v5 = v4;
  *(v5 + 8) = 0;
  *(v0 + OBJC_IVAR___CHBackgroundTaskAssertion_state) = 1;
}

void sub_1002E02C4()
{
  static os_log_type_t.error.getter();
  v0 = HKLogActivity;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR___CHBackgroundTaskAssertion_state] = 2;
  }
}

void sub_1002E03BC()
{
  v1 = OBJC_IVAR___CHBackgroundTaskAssertion_state;
  if (*(v0 + OBJC_IVAR___CHBackgroundTaskAssertion_state) == 1 && (v2 = (v0 + OBJC_IVAR___CHBackgroundTaskAssertion_identifier), (*(v0 + OBJC_IVAR___CHBackgroundTaskAssertion_identifier + 8) & 1) == 0))
  {
    v3 = *v2;
    v4 = [objc_opt_self() sharedApplication];
    [v4 endBackgroundTask:v3];

    *v2 = 0;
    *(v2 + 8) = 1;
    *(v0 + v1) = 3;
  }

  else
  {
    static os_log_type_t.error.getter();
    v5 = HKLogActivity;
    os_log(_:dso:log:_:_:)();
  }
}

id sub_1002E0588()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BackgroundTaskAssertion();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1002E05F4()
{
  result = qword_1008E6DB0;
  if (!qword_1008E6DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E6DB0);
  }

  return result;
}

uint64_t sub_1002E0648(double a1)
{
  v2 = sub_100140278(&unk_1008E3FB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_100140278(&unk_1008E51A0);
  result = __chkstk_darwin(v5 - 8);
  v8 = &v12 - v7;
  v9 = round(a1);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v9 < 9.22337204e18)
  {
    v10 = type metadata accessor for Calendar();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    v11 = type metadata accessor for TimeZone();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    DateComponents.minute.setter();
    return DateComponents.second.setter();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1002E08AC(uint64_t a1)
{
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&qword_1008DE590);
  __chkstk_darwin(v7 - 8);
  v9 = &v49 - v8;
  v10 = type metadata accessor for DateComponents();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002E12DC(a1, v51);
  if (v52)
  {
    v14 = swift_dynamicCast();
    (*(v11 + 56))(v9, v14 ^ 1u, 1, v10);
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      (*(v11 + 32))(v13, v9, v10);
      v15 = v1;
      if (*(v1 + OBJC_IVAR____TtC10FitnessApp13PaceFormatter_isLocaleAware) == 1)
      {
        static Locale.current.getter();
        v16 = Locale.identifier.getter();
        v18 = v17;
        (*(v4 + 8))(v6, v3);
        if (v16 == 0x53555F6E65 && v18 == 0xE500000000000000)
        {
        }

        else
        {
          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v19 & 1) == 0)
          {
            v45 = *(v15 + OBJC_IVAR____TtC10FitnessApp13PaceFormatter_componentsFormatter);
            isa = DateComponents._bridgeToObjectiveC()().super.isa;
            v47 = [v45 stringFromDateComponents:isa];

            if (v47)
            {
              v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();

              (*(v11 + 8))(v13, v10);
              return v48;
            }

LABEL_17:
            (*(v11 + 8))(v13, v10);
            return 0;
          }
        }
      }

      v20 = DateComponents.minute.getter();
      if ((v21 & 1) == 0)
      {
        v22 = v20;
        v23 = DateComponents.second.getter();
        if ((v24 & 1) == 0)
        {
          v25 = v23;
          v26 = *(v15 + OBJC_IVAR____TtC10FitnessApp13PaceFormatter_minutesFormatter);
          v27 = [objc_allocWithZone(NSNumber) initWithInteger:v22];
          v28 = [v26 stringFromNumber:v27];

          if (v28)
          {
            v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v31 = v30;

            v32 = *(v15 + OBJC_IVAR____TtC10FitnessApp13PaceFormatter_secondsFormatter);
            v33 = [objc_allocWithZone(NSNumber) initWithInteger:v25];
            v34 = [v32 stringFromNumber:v33];

            if (v34)
            {
              v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v36 = v35;

              v37 = [objc_opt_self() mainBundle];
              v38 = String._bridgeToObjectiveC()();
              v39 = [v37 localizedStringForKey:v38 value:0 table:0];

              static String._unconditionallyBridgeFromObjectiveC(_:)();
              sub_100140278(&unk_1008E4E50);
              v40 = swift_allocObject();
              *(v40 + 16) = xmmword_1006D1F70;
              *(v40 + 56) = &type metadata for String;
              v41 = sub_10000A788();
              *(v40 + 32) = v29;
              *(v40 + 40) = v31;
              *(v40 + 96) = &type metadata for String;
              *(v40 + 104) = v41;
              v42 = v50;
              *(v40 + 64) = v41;
              *(v40 + 72) = v42;
              *(v40 + 80) = v36;
              v43 = static String.localizedStringWithFormat(_:_:)();

              (*(v11 + 8))(v13, v10);
              return v43;
            }

            (*(v11 + 8))(v13, v10);

            return 0;
          }
        }
      }

      goto LABEL_17;
    }
  }

  else
  {
    sub_10000EA04(v51, &qword_1008E51F0);
    (*(v11 + 56))(v9, 1, 1, v10);
  }

  sub_10000EA04(v9, &qword_1008DE590);
  return 0;
}

id sub_1002E0F54()
{
  v1 = OBJC_IVAR____TtC10FitnessApp13PaceFormatter_componentsFormatter;
  v2 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v2 setUnitsStyle:0];
  *&v0[v1] = v2;
  v3 = OBJC_IVAR____TtC10FitnessApp13PaceFormatter_secondsFormatter;
  v4 = [objc_allocWithZone(NSNumberFormatter) init];
  [v4 setMinimumIntegerDigits:2];
  [v4 setMaximumFractionDigits:0];
  [v4 setRoundingMode:4];
  *&v0[v3] = v4;
  v5 = OBJC_IVAR____TtC10FitnessApp13PaceFormatter_minutesFormatter;
  v6 = [objc_allocWithZone(NSNumberFormatter) init];
  [v6 setMaximumFractionDigits:0];
  [v6 setRoundingMode:4];
  *&v0[v5] = v6;
  v0[OBJC_IVAR____TtC10FitnessApp13PaceFormatter_isLocaleAware] = 1;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for PaceFormatter();
  return objc_msgSendSuper2(&v8, "init");
}

id sub_1002E10A8(void *a1)
{
  v3 = OBJC_IVAR____TtC10FitnessApp13PaceFormatter_componentsFormatter;
  v4 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v4 setUnitsStyle:0];
  *&v1[v3] = v4;
  v5 = OBJC_IVAR____TtC10FitnessApp13PaceFormatter_secondsFormatter;
  v6 = [objc_allocWithZone(NSNumberFormatter) init];
  [v6 setMinimumIntegerDigits:2];
  [v6 setMaximumFractionDigits:0];
  [v6 setRoundingMode:4];
  *&v1[v5] = v6;
  v7 = OBJC_IVAR____TtC10FitnessApp13PaceFormatter_minutesFormatter;
  v8 = [objc_allocWithZone(NSNumberFormatter) init];
  [v8 setMaximumFractionDigits:0];
  [v8 setRoundingMode:4];
  *&v1[v7] = v8;
  v1[OBJC_IVAR____TtC10FitnessApp13PaceFormatter_isLocaleAware] = 1;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for PaceFormatter();
  v9 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);

  if (v9)
  {
  }

  return v9;
}

id sub_1002E1228()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaceFormatter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002E12DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E51F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1002E134C()
{
  result = [objc_opt_self() standardUserDefaults];
  qword_1009255B0 = result;
  return result;
}

uint64_t sub_1002E1388@<X0>(uint64_t *a1@<X8>)
{
  result = SleepingSampleDataType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1002E13B4()
{
  v0 = sub_100140278(&qword_1008E6E00);
  __chkstk_darwin(v0 - 8);
  v2 = v60 - v1;
  v3 = type metadata accessor for SleepingSampleDataType();
  v4 = *(v3 - 8);
  v5 = v4;
  __chkstk_darwin(v3);
  v69 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v65 = *(v7 - 8);
  v66 = v7;
  __chkstk_darwin(v7);
  v9 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v60 - v11;
  __chkstk_darwin(v13);
  v64 = v60 - v14;
  sub_100140278(&qword_1008DE5C0);
  v15 = *(v4 + 72);
  v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1006D6BC0;
  v67 = v17;
  v68 = v16;
  v18 = v17 + v16;
  v63 = v5;
  v19 = *(v5 + 104);
  v19(v18, enum case for SleepingSampleDataType.heartRate(_:), v3);
  v19(v18 + v15, enum case for SleepingSampleDataType.respiratoryRate(_:), v3);
  v19(v18 + 2 * v15, enum case for SleepingSampleDataType.wristTemperature(_:), v3);
  v19(v18 + 3 * v15, enum case for SleepingSampleDataType.bloodOxygen(_:), v3);
  v19(v18 + 4 * v15, enum case for SleepingSampleDataType.timeAsleep(_:), v3);
  if (qword_1008DA8A0 != -1)
  {
    swift_once();
  }

  v20 = qword_1009255B0;
  v21 = String._bridgeToObjectiveC()();
  v22 = [v20 arrayForKey:v21];

  if (v22)
  {
    v23 = objc_opt_self();
    v70 = 0;
    v24 = [v23 dataWithPropertyList:v22 format:100 options:0 error:&v70];

    v25 = v70;
    if (v24)
    {
      v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      type metadata accessor for PropertyListDecoder();
      swift_allocObject();
      PropertyListDecoder.init()();
      sub_100140278(&qword_1008E4D78);
      sub_1002E23EC(&qword_1008E6E08);
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      v61 = v26;
      v62 = v28;

      v40 = *(v70 + 2);
      v60[1] = v70;
      if (v40)
      {
        v41 = v70 + 32;
        v42 = (v63 + 48);
        v43 = (v63 + 32);
        v44 = _swiftEmptyArrayStorage;
        do
        {
          v41 += 8;
          SleepingSampleDataType.init(rawValue:)();
          if ((*v42)(v2, 1, v3) == 1)
          {
            sub_1002E1C3C(v2);
          }

          else
          {
            v45 = *v43;
            (*v43)(v69, v2, v3);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v44 = sub_1001A1F9C(0, v44[2] + 1, 1, v44);
            }

            v47 = v44[2];
            v46 = v44[3];
            v48 = v44;
            if (v47 >= v46 >> 1)
            {
              v48 = sub_1001A1F9C(v46 > 1, v47 + 1, 1, v44);
            }

            *(v48 + 16) = v47 + 1;
            v44 = v48;
            v45((v48 + v68 + v47 * v15), v69, v3);
          }

          --v40;
        }

        while (v40);
      }

      else
      {
        v44 = _swiftEmptyArrayStorage;
      }

      v49 = v64;
      static WOLog.trainingLoad.getter();

      v50 = v44;
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();

      v53 = os_log_type_enabled(v51, v52);
      v67 = v50;
      if (v53)
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v70 = v55;
        *v54 = 136315138;
        v56 = Array.description.getter();
        v58 = sub_10000AFDC(v56, v57, &v70);

        *(v54 + 4) = v58;
        _os_log_impl(&_mh_execute_header, v51, v52, "Successfully read user overnightMetrics=%s", v54, 0xCu);
        sub_100005A40(v55);
      }

      sub_10000AF88(v61, v62);

      (*(v65 + 8))(v49, v66);
    }

    else
    {
      v32 = v25;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      static WOLog.trainingLoad.getter();
      swift_errorRetain();
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v70 = v36;
        *v35 = 136315138;
        swift_getErrorValue();
        v37 = Error.errorDescription.getter();
        v39 = sub_10000AFDC(v37, v38, &v70);

        *(v35 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v33, v34, "Failed to decode and save OvernightMetrics error=%s", v35, 0xCu);
        sub_100005A40(v36);
      }

      else
      {
      }

      (*(v65 + 8))(v9, v66);
    }
  }

  else
  {
    static WOLog.trainingLoad.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "OvernightMetrics not present in user defaults. Will use system defaults.", v31, 2u);
    }

    (*(v65 + 8))(v12, v66);
  }

  return v67;
}

uint64_t sub_1002E1C3C(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E6E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002E1CA4(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v60 = *(v2 - 8);
  v61 = v2;
  __chkstk_darwin(v2);
  v4 = v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v57 = v56 - v6;
  v64 = type metadata accessor for SleepingSampleDataType();
  v7 = *(v64 - 8);
  __chkstk_darwin(v64);
  v9 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  v10 = PropertyListEncoder.init()();
  v11 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  v56[1] = a1;
  if (v11)
  {
    v58 = v10;
    v59 = v4;
    v66[0] = _swiftEmptyArrayStorage;
    sub_10018606C(0, v11, 0);
    v12 = v66[0];
    v14 = *(v7 + 16);
    v13 = v7 + 16;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v62 = *(v13 + 56);
    v63 = v14;
    do
    {
      v16 = v64;
      v63(v9, v15, v64);
      v17 = SleepingSampleDataType.rawValue.getter();
      (*(v13 - 8))(v9, v16);
      v66[0] = v12;
      v19 = v12[2];
      v18 = v12[3];
      if (v19 >= v18 >> 1)
      {
        sub_10018606C((v18 > 1), v19 + 1, 1);
        v12 = v66[0];
      }

      v12[2] = v19 + 1;
      v12[v19 + 4] = v17;
      v15 += v62;
      --v11;
    }

    while (v11);
    v4 = v59;
  }

  v66[0] = v12;
  sub_100140278(&qword_1008E4D78);
  sub_1002E23EC(&qword_1008E6E10);
  v28 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v30 = v29;

  v31 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v65 = 0;
  v33 = [v31 propertyListWithData:isa options:0 format:0 error:&v65];

  v34 = v65;
  if (v33)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    if (qword_1008DA8A0 != -1)
    {
      swift_once();
    }

    v35 = qword_1009255B0;
    sub_1000066AC(v66, v66[3]);
    v36 = v35;
    v37 = _bridgeAnythingToObjectiveC<A>(_:)();
    v38 = String._bridgeToObjectiveC()();
    [v36 setObject:v37 forKey:v38];

    swift_unknownObjectRelease();
    v39 = qword_1009255B0;
    v40 = objc_opt_self();
    v41 = v39;
    v42 = [v40 standardUserDefaults];
    sub_1002E2458();
    LOBYTE(v39) = static NSObject.== infix(_:_:)();

    v43 = v57;
    if (v39)
    {
      v44 = String._bridgeToObjectiveC()();
      [v40 fu_backupStandardUserDefaultsKey:v44];
    }

    static WOLog.trainingLoad.getter();

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v65 = v48;
      *v47 = 136315138;
      v49 = Array.description.getter();
      v51 = v30;
      v52 = sub_10000AFDC(v49, v50, &v65);

      *(v47 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v45, v46, "Saved OvernightMetrics to user defaults overnightMetrics=%s", v47, 0xCu);
      sub_100005A40(v48);

      v53 = v28;
      v54 = v51;
    }

    else
    {
      v53 = v28;
      v54 = v30;
    }

    sub_10000AF88(v53, v54);

    (*(v60 + 8))(v43, v61);
    return sub_100005A40(v66);
  }

  else
  {
    v55 = v34;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10000AF88(v28, v30);
    static WOLog.trainingLoad.getter();
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v66[0] = v23;
      *v22 = 136315138;
      swift_getErrorValue();
      v24 = Error.errorDescription.getter();
      v26 = sub_10000AFDC(v24, v25, v66);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to encode and save OvernightMetrics error=%s", v22, 0xCu);
      sub_100005A40(v23);
    }

    else
    {
    }

    return (*(v60 + 8))(v4, v61);
  }
}

uint64_t sub_1002E23EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(&qword_1008E4D78);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1002E2458()
{
  result = qword_1008E6E18;
  if (!qword_1008E6E18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008E6E18);
  }

  return result;
}

id sub_1002E2608()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaletteViewControllerSizingDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id AVPlayer.forNonAudioSessionParticipation()()
{
  [v0 _setParticipatesInAudioSession:0];

  return v2;
}

void sub_1002E26B8()
{
  sub_1002E318C();
  if ((*(v0 + OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_daysRingsClosed90 + 8) & 1) == 0 && (*(v0 + OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_daysRingsClosed365 + 8) & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_ringClosureSummary);
    if (v1)
    {
      v2 = *(v0 + OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_daysRingsClosed90);
      v3 = *(v0 + OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_daysRingsClosed365);
      v4 = *(v0 + OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_trendType);
      v5 = *(v0 + OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_isWheelchairUser);
      v6 = *(v1 + OBJC_IVAR____TtC10FitnessApp26TrendDetailRingClosureView_titleLabel);
      sub_100583290(v5, v4);
      if (v7)
      {
        v8 = String._bridgeToObjectiveC()();
      }

      else
      {
        v8 = 0;
      }

      [v6 setText:v8];

      v9 = OBJC_IVAR____TtC10FitnessApp26TrendDetailRingClosureView_valueLabel90;
      v10 = *(v1 + OBJC_IVAR____TtC10FitnessApp26TrendDetailRingClosureView_valueLabel90);
      v11 = sub_100582888(v4);
      v12 = *&v11[OBJC_IVAR____TtC10FitnessApp12MetricColors_text];

      [v10 setTextColor:v12];
      v13 = *(v1 + v9);
      v14 = sub_100604BFC(v2, 90);
      [v13 setAttributedText:v14];

      v15 = OBJC_IVAR____TtC10FitnessApp26TrendDetailRingClosureView_valueLabel365;
      v16 = *(v1 + OBJC_IVAR____TtC10FitnessApp26TrendDetailRingClosureView_valueLabel365);
      v17 = [objc_opt_self() secondaryLabelColor];
      [v16 setTextColor:v17];

      v18 = *(v1 + v15);
      v19 = sub_100604BFC(v3, 365);
      [v18 setAttributedText:v19];
    }
  }
}

void sub_1002E2990()
{
  v1 = v0;
  v2 = [objc_allocWithZone(UIView) init];
  [v1 setView:v2];

  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = v3;
  v5 = objc_opt_self();
  v6 = [v5 systemBackgroundColor];
  [v4 setBackgroundColor:v6];

  v29 = [objc_allocWithZone(UIScrollView) init];
  [v29 setAutoresizingMask:18];
  [v29 _setHostsLayoutEngine:1];
  v7 = [v5 systemBackgroundColor];
  [v29 setBackgroundColor:v7];

  [v29 setAlwaysBounceVertical:1];
  v8 = [v1 view];
  if (!v8)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = v8;
  [v8 addSubview:v29];

  v10 = [v1 view];
  if (!v10)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v11 = v10;
  [v10 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  [v29 setFrame:{v13, v15, v17, v19}];
  v20 = [v1 navigationItem];
  v21 = v1[OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_trendType];
  v22 = v1[OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_isWheelchairUser];
  sub_10007C29C();
  v23 = String._bridgeToObjectiveC()();

  [v20 setTitle:v23];

  v24 = *&v1[OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_stackView];
  [v29 addSubview:v24];
  [v24 setAxis:1];
  [v24 setDistribution:0];
  [v24 addArrangedSubview:*&v1[OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_summaryView]];
  [v24 addArrangedSubview:*&v1[OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_chartView]];
  if (*&v1[OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_dailyChart])
  {
    [v24 addArrangedSubview:?];
  }

  if (*&v1[OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_ringClosureSummary])
  {
    [v24 addArrangedSubview:?];
  }

  v25 = *&v1[OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_explanationView];
  v26 = [*(*&v1[OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_formattingManager] + OBJC_IVAR____TtC10FitnessApp23TrendsFormattingManager_fiuiFormatter) unitManager];
  if (!v26)
  {
    goto LABEL_15;
  }

  v27 = v26;
  sub_1005837A0(v22, v26, *&v1[OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_pairedWatchManager], v21);
  v28 = sub_100632828(v21);

  [*(v25 + OBJC_IVAR____TtC10FitnessApp20TrendExplanationView_textView) setAttributedText:v28];

  [v24 addArrangedSubview:v25];
  sub_1002E2DE0();
}

void sub_1002E2DE0()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_stackView);
  v2 = [v1 superview];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 topAnchor];
    v5 = [v3 topAnchor];
    v6 = [v4 constraintEqualToAnchor:v5];

    v7 = [v1 leftAnchor];
    v8 = [v3 leftAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];

    v10 = [v1 widthAnchor];
    v11 = [v3 widthAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    v13 = [v1 bottomAnchor];
    v14 = [v3 bottomAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    v16 = objc_opt_self();
    sub_100140278(&unk_1008E4E20);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1006D5300;
    *(v17 + 32) = v6;
    *(v17 + 40) = v9;
    *(v17 + 48) = v12;
    *(v17 + 56) = v15;
    sub_1000059F8(0, &qword_1008DC980);
    v28 = v6;
    v18 = v9;
    v19 = v12;
    v20 = v15;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v16 activateConstraints:isa];

    v22 = *(v0 + OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_vO2MaxChart);
    if (v22)
    {
      v23 = *&v22[OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_pill90];
      v24 = v22;
      v25 = [v23 centerXAnchor];
      v26 = [*(*(v0 + OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_chartView) + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_averagePlatter90) centerXAnchor];
      v27 = [v25 constraintEqualToAnchor:v26];

      [v27 setActive:1];
    }
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void sub_1002E318C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_direction);
  v3 = *(v0 + OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_trendType);
  if (v2 == 1)
  {
    v5 = sub_1006032CC(v3);
    v6 = *(v0 + OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_isWheelchairUser);
    v4 = v5;
    sub_100583424(v6, v3);
  }

  else
  {
    v4 = sub_100602E08(*(v0 + OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_valueQuantity), v3);
  }

  v7 = *(v1 + OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_summaryView);
  v8 = *(v7 + OBJC_IVAR____TtC10FitnessApp22TrendDetailSummaryView_arrow);
  v9 = sub_100582888(v3);
  v10 = *&v9[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient];

  v11 = *(v8 + OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_gradientColors);
  *(v8 + OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_gradientColors) = v10;
  v12 = v10;

  sub_100513D74();
  *(v7 + OBJC_IVAR____TtC10FitnessApp22TrendDetailSummaryView_arrowDirection) = v2;
  sub_100514B5C(v2, v2 != 1);
  v13 = OBJC_IVAR____TtC10FitnessApp22TrendDetailSummaryView_valueLabel;
  [*(v7 + OBJC_IVAR____TtC10FitnessApp22TrendDetailSummaryView_valueLabel) setAttributedText:v4];
  v14 = *(v7 + v13);
  v15 = sub_100582888(v3);
  v16 = *&v15[OBJC_IVAR____TtC10FitnessApp12MetricColors_text];

  [v14 setTextColor:v16];
  v17 = *(v7 + OBJC_IVAR____TtC10FitnessApp22TrendDetailSummaryView_coachingLabel);
  v18 = String._bridgeToObjectiveC()();

  [v17 setText:v18];
}

void sub_1002E3420()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for TrendDetailViewController();
  objc_msgSendSuper2(&v10, "viewDidLoad");
  if ([objc_opt_self() isAppleInternalInstall])
  {
    if (qword_1008DAFA0 != -1)
    {
      swift_once();
    }

    if ((byte_1008F8688 & 1) == 0)
    {
      v1 = objc_opt_self();
      v2 = String._bridgeToObjectiveC()();
      v3 = [v1 __systemImageNamedSwift:v2];

      v4 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v3 style:0 target:v0 action:"tapToRadar"];
      v5 = [v0 navigationItem];
      sub_100140278(&unk_1008E4E20);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1006D4E70;
      *(v6 + 32) = v4;
      sub_1000059F8(0, &qword_1008EB5C0);
      v7 = v4;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v5 setRightBarButtonItems:isa];
    }
  }

  sub_1002E318C();
  v9 = [objc_opt_self() defaultCenter];
  [v9 addObserver:v0 selector:"contentSizeCategoryDidChangeWithNote:" name:UIContentSizeCategoryDidChangeNotification object:0];
}

void sub_1002E3690(char a1)
{
  v2 = v1;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for TrendDetailViewController();
  objc_msgSendSuper2(&v5, "viewWillAppear:", a1 & 1);
  if (v2[OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_direction] != 1)
  {
    v4 = *(*&v2[OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_summaryView] + OBJC_IVAR____TtC10FitnessApp22TrendDetailSummaryView_arrowDirection);
    if (v4 == 1)
    {
      sub_100514B5C(v4, 0);
    }

    else
    {
      sub_100515494(v4);
    }
  }

  *(*&v2[OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_chartView] + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_filled) = 1;
}

uint64_t sub_1002E38BC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_stackView;
  sub_1000059F8(0, &qword_1008E6F30);
  *(v1 + v4) = sub_10065AF60();
  v5 = OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_summaryView;
  type metadata accessor for TrendDetailSummaryView();
  *(v1 + v5) = sub_10065AF60();
  v6 = OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_explanationView;
  type metadata accessor for TrendExplanationView();
  v7 = sub_10065AF60();

  *(v2 + v6) = v7;
  type metadata accessor for TrendDetailViewController();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_1002E39EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrendDetailViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002E3D9C()
{
  v1 = v0;
  v2 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v2 - 8);
  v30 = &v30 - v3;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v30 - v10;
  __chkstk_darwin(v9);
  v13 = &v30 - v12;
  v32 = *(v5 + 16);
  v33 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutStartDate;
  v32(&v30 - v12, v0 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutStartDate, v4);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  Date.timeIntervalSince(_:)();
  v31 = v5;
  v14 = *(v5 + 8);
  v15 = v11;
  v16 = v8;
  v14(v15, v4);
  v14(v13, v4);
  v17 = v32;
  v32(v13, v0 + v33, v4);
  Date.addingTimeInterval(_:)();
  v14(v13, v4);
  v18 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_onScreenBucketStartDate;
  swift_beginAccess();
  v17(v13, v0 + v18, v4);
  sub_1002E6060();
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = v13;
  v21 = v14;
  v14(v20, v4);
  if ((v19 & 1) == 0)
  {
    swift_beginAccess();
    (*(v31 + 24))(v1 + v18, v16, v4);
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v23 = Strong;
      v24 = v30;
      (*(v31 + 56))(v30, 1, 1, v4);
      sub_10063DDC0(v24);
      sub_10000EA04(v24, &unk_1008F73A0);
      v25 = *(v23 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_mapRoutePolyline);
      if (v25)
      {
        v26 = OBJC_IVAR___CHWorkoutDetailedMetricsViewController_mapView;
        v27 = *(v23 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_mapView);
        v28 = v25;
        [v27 removeOverlay:v28];
        [*(v23 + v26) addOverlay:v28 level:1];
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  return v21(v16, v4);
}

uint64_t sub_1002E41A8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_1002E4220()
{
  v9 = type metadata accessor for Date();
  v0 = *(v9 - 8);
  __chkstk_darwin(v9);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100140278(&unk_1008E51C0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006D6950;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7[1] = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_onScreenBuckets;
  Date.addingTimeInterval(_:)();
  v3 = v0 + 8;
  v4 = *(v0 + 8);
  v7[0] = v3;
  v4(v2, v9);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  Date.addingTimeInterval(_:)();
  v5 = v9;
  v4(v2, v9);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  Date.addingTimeInterval(_:)();
  v4(v2, v5);
  return v8;
}

uint64_t sub_1002E4518()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v24 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&qword_1008E7250);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  v9 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v9 - 8);
  v25 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  __chkstk_darwin(v14);
  v16 = &v24 - v15;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_1002E4990(v26, v16);
  v17 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_selectedDate;
  swift_beginAccess();
  v18 = *(v6 + 56);
  sub_1001CE7A0(v1 + v17, v8);
  sub_1001CE7A0(v16, &v8[v18]);
  v19 = *(v3 + 48);
  if (v19(v8, 1, v2) == 1)
  {
    if (v19(&v8[v18], 1, v2) == 1)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  sub_1001CE7A0(v8, v13);
  if (v19(&v8[v18], 1, v2) == 1)
  {
    (*(v3 + 8))(v13, v2);
LABEL_6:
    sub_10000EA04(v8, &qword_1008E7250);
    goto LABEL_7;
  }

  v21 = v24;
  (*(v3 + 32))(v24, &v8[v18], v2);
  sub_1002E6060();
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  v23 = *(v3 + 8);
  v23(v21, v2);
  v23(v13, v2);
  sub_10000EA04(v8, &unk_1008F73A0);
  if (v22)
  {
    return sub_10000EA04(v16, &unk_1008F73A0);
  }

LABEL_7:
  swift_beginAccess();
  sub_1002E5FF0(v16, v1 + v17);
  swift_endAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = v25;
    sub_1001CE7A0(v1 + v17, v25);
    sub_10063FAC0(v8);
    swift_unknownObjectRelease();
LABEL_9:
    sub_10000EA04(v8, &unk_1008F73A0);
  }

  return sub_10000EA04(v16, &unk_1008F73A0);
}

uint64_t sub_1002E4918()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1002E4990@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Date();
  v7 = __chkstk_darwin(v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 & 1) != 0 || (*(v2 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_viewWidth + 8))
  {
    v10 = *(v6 + 56);

    return v10(a2, 1, 1, v5, v7);
  }

  else
  {
    v12 = *(v6 + 16);
    v14 = v6;
    v12(v9, v2 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutStartDate, v5);
    Date.addingTimeInterval(_:)();
    (*(v14 + 8))(v9, v5);
    return (*(v14 + 56))(a2, 0, 1, v5);
  }
}

uint64_t sub_1002E4BC8()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutStartDate;
  v7 = *(v2 + 16);
  v7(v5, v0 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutStartDate, v1, v3);
  Date.timeIntervalSince(_:)();
  v9 = v8;
  v10 = *(v2 + 8);
  result = v10(v5, v1);
  v12 = v9 / *(v0 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_bucketDuration);
  if (COERCE__INT64(fabs(v12)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v12 < 9.22337204e18)
  {
    (v7)(v5, v0 + v6, v1);
    Date.addingTimeInterval(_:)();
    return v10(v5, v1);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1002E4D88()
{
  v1 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v1 - 8);
  v3 = &v22 - v2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  v14 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_selectedDate;
  swift_beginAccess();
  sub_1001CE7A0(v0 + v14, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10000EA04(v3, &unk_1008F73A0);
LABEL_5:
    *&result = 0.0;
    return result;
  }

  (*(v5 + 32))(v13, v3, v4);
  if (*(v0 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_viewWidth + 8))
  {
    (*(v5 + 8))(v13, v4);
    goto LABEL_5;
  }

  v16 = *(v0 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_viewWidth);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  Date.addingTimeInterval(_:)();
  v17 = *(v5 + 8);
  v17(v7, v4);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  Date.timeIntervalSince(_:)();
  v19 = v18;
  v17(v7, v4);
  v17(v10, v4);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  Date.timeIntervalSince(_:)();
  v21 = v20;
  v17(v10, v4);
  v17(v13, v4);
  *&result = v16 * (v21 / v19);
  return result;
}

uint64_t sub_1002E5134(uint64_t a1, char a2)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v27 - v11;
  result = __chkstk_darwin(v10);
  v15 = v27 - v14;
  v16 = *(v2 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutDuration);
  v17 = *(v2 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_bucketDuration);
  v18 = *(v2 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_onScreenBuckets) * v17;
  if (v18 >= v16)
  {
    v26 = *(v6 + 16);
    v26(v12, v2 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutStartDate, v5);
    swift_getKeyPath();
    swift_getKeyPath();
    v26(v9, v12, v5);

    static Published.subscript.setter();
    sub_1002E3D9C();
    return (*(v6 + 8))(v12, v5);
  }

  else
  {
    if ((a2 & 1) == 0 && (*(v2 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_offsetFrom + 8) & 1) == 0)
    {
      v19 = (v2 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_viewWidth);
      if ((*(v2 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_viewWidth + 8) & 1) == 0 && *v19 > 0.0)
      {
        v20 = (v17 * ceil(v16 / v17) - v18) / (v18 / *v19);
        v21 = 0.0;
        if (*(v2 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_offsetFrom) - *&a1 + *(v2 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_offsetAmount) >= 0.0)
        {
          v21 = *(v2 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_offsetFrom) - *&a1 + *(v2 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_offsetAmount);
        }

        if (v20 >= v21)
        {
          v20 = v21;
        }

        *(v2 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_offsetAmount) = v20;
        v28 = *(v6 + 16);
        v29 = v6 + 16;
        v28(v12, v2 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutStartDate, v5);
        v31 = v2;
        Date.addingTimeInterval(_:)();
        v30 = *(v6 + 8);
        v30(v12, v5);
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v22 = v30;

        sub_1002E6060();
        v23 = dispatch thunk of static Equatable.== infix(_:_:)();
        v22(v12, v5);
        if ((v23 & 1) == 0)
        {
          v24 = v28;
          v28(v12, v15, v5);
          v27[1] = swift_getKeyPath();
          v27[0] = swift_getKeyPath();
          v24(v9, v12, v5);

          static Published.subscript.setter();
          v22 = v30;
          sub_1002E3D9C();
          v22(v12, v5);
        }

        result = (v22)(v15, v5);
        v2 = v31;
      }
    }

    v25 = v2 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_offsetFrom;
    *v25 = *&a1;
    *(v25 + 8) = a2 & 1;
  }

  return result;
}

void sub_1002E552C(int a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_100140278(&unk_1008F73A0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v54[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v54[-v12];
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v54[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v16);
  v21 = &v54[-v20];
  __chkstk_darwin(v19);
  v23 = &v54[-v22];
  if (a1)
  {
    v24 = *(v4 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutDuration);
    v25 = v24 / a3;
    if (v24 / a3 < a2)
    {
      v25 = a2;
    }

    *(v4 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_bucketDuration) = v25;
    v26 = ceil(v24 / v25);
    if (v26 <= a3)
    {
      a3 = v26;
    }
  }

  else
  {
    *(v4 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_bucketDuration) = a2;
  }

  *(v4 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_onScreenBuckets) = a3;
  v27 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_selectedDate;
  swift_beginAccess();
  sub_1001CE7A0(v4 + v27, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10000EA04(v13, &unk_1008F73A0);
    *(v4 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_offsetAmount) = 0;
    v28 = v4 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_offsetFrom;
    *v28 = 0;
    *(v28 + 8) = 0;
    sub_1002E5134(0, 0);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v30 = Strong;
      (*(v15 + 56))(v11, 1, 1, v14);
      sub_10063DDC0(v11);
      sub_10000EA04(v11, &unk_1008F73A0);
      v31 = *(v30 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_mapRoutePolyline);
      if (v31)
      {
        v32 = OBJC_IVAR___CHWorkoutDetailedMetricsViewController_mapView;
        v33 = *(v30 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_mapView);
        v34 = v31;
        [v33 removeOverlay:v34];
        [*(v30 + v32) addOverlay:v34 level:1];
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    v56 = v27;
    v55 = a1;
    v63 = v11;
    (*(v15 + 32))(v23, v13, v14);
    v35 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutStartDate;
    v36 = *(v15 + 16);
    v36(v21, v4 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutStartDate, v14);
    v61 = v23;
    Date.timeIntervalSince(_:)();
    v38 = v37;
    v58 = v15;
    v39 = *(v15 + 8);
    v57 = v15 + 8;
    v39(v21, v14);
    v40 = v18;
    v41 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_bucketDuration;
    v59 = v15 + 16;
    v36(v21, v4 + v35, v14);
    v62 = v40;
    Date.addingTimeInterval(_:)();
    v60 = v39;
    v39(v21, v14);
    v42 = (v4 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_viewWidth);
    if (*(v4 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_viewWidth + 8) & 1) != 0 || (v46 = *(v4 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_onScreenBuckets) * *(v4 + v41), v46 <= 0.0) || (v55)
    {
      v43 = v36;
      v44 = 0.0;
      *(v4 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_offsetAmount) = 0;
      v45 = v4 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_offsetFrom;
      *v45 = 0;
      *(v45 + 8) = 0;
    }

    else
    {
      v43 = v36;
      v47 = *v42;
      *(v4 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_offsetAmount) = v38 * (*v42 / v46);
      v48 = v4 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_offsetFrom;
      *v48 = 0;
      *(v48 + 8) = 0;
      v44 = v47 * 0.5;
    }

    v49 = v63;
    v50 = v56;
    sub_1002E5134(*&v44, 0);
    v51 = v62;
    v43(v49, v62, v14);
    v52 = *(v58 + 56);
    v52(v49, 0, 1, v14);
    swift_beginAccess();
    sub_100169198(v49, v4 + v50);
    swift_endAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v43(v49, v51, v14);
      v52(v49, 0, 1, v14);
      sub_10063FAC0(v49);
      swift_unknownObjectRelease();
      sub_10000EA04(v49, &unk_1008F73A0);
    }

    v53 = v60;
    v60(v51, v14);
    v53(v61, v14);
  }
}

uint64_t sub_1002E5B3C()
{
  v1 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutStartDate;
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutEndDate, v2);
  v3(v0 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_onScreenBucketStartDate, v2);
  v4 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties__onScreenStartDate;
  v5 = sub_100140278(&qword_1008E7258);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties__touchPoint;
  v7 = sub_100140278(&unk_1008F73D0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  sub_1000A7304(v0 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_delegate);
  sub_10000EA04(v0 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_selectedDate, &unk_1008F73A0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutChartProperties()
{
  result = qword_1008E6F98;
  if (!qword_1008E6F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002E5D40()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_1002E5F50(319, &qword_1008E6FA8, &type metadata accessor for Published);
    if (v1 <= 0x3F)
    {
      sub_1002E5EEC();
      if (v2 <= 0x3F)
      {
        sub_1002E5F50(319, &qword_1008E0E18, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1002E5EEC()
{
  if (!qword_1008E6FB0)
  {
    sub_100141EEC(&unk_1008F73E0);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1008E6FB0);
    }
  }
}

void sub_1002E5F50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Date();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1002E5FB0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WorkoutChartProperties();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1002E5FF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&unk_1008F73A0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002E6060()
{
  result = qword_1008E1D78;
  if (!qword_1008E1D78)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1D78);
  }

  return result;
}

void sub_1002E60B8()
{
  v0 = [objc_opt_self() briskColors];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 nonGradientTextColor];

    if (v2)
    {
      qword_1008E7260 = v2;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1002E612C()
{
  sub_1000059F8(0, &qword_1008F73C0);
  v0 = UIFontTextStyleTitle3;
  v1 = static UIFont.preferredFont(forTextStyle:design:symbolicTraits:weight:compatibleWith:)();

  qword_1008E7268 = v1;
}

char *sub_1002E61F0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_tapOnAchievement];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v4[OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_tapOnShowAllAchievements];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v4[OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_templateUniqueName];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v4[OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_stackTemplateUniqueNames] = _swiftEmptyArrayStorage;
  v13 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_roundedView;
  v14 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15 = [v14 layer];
  [v15 setCornerRadius:16.0];

  [v14 setClipsToBounds:1];
  v16 = sub_100046170();
  [v14 setBackgroundColor:v16];

  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v13] = v14;
  v17 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_sectionLabel;
  v18 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v18 setLineBreakMode:0];
  [v18 setNumberOfLines:0];
  v19 = UILabel.withLineBreakMode(_:)();

  if (qword_1008DA8B0 != -1)
  {
    swift_once();
  }

  v20 = UILabel.withFont(_:)();

  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v17] = v20;
  v21 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_achievementLabel;
  v22 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v23 = UILabel.textAlignment(_:)();

  [v23 setLineBreakMode:0];
  [v23 setNumberOfLines:0];
  v24 = UILabel.withLineBreakMode(_:)();

  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v21] = v24;
  v25 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_badgeImageView;
  v26 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v27 = UIView.withUserInteractionEnabled(_:)();

  v28 = UIView.withContentMode(_:)();
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v25] = v28;
  v29 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_badgeStackImageView;
  v30 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v31 = UIView.withContentMode(_:)();

  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v29] = v31;
  type metadata accessor for ShowAllButton();
  v32 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (qword_1008DA8C0 != -1)
  {
    swift_once();
  }

  v33 = UIButton.withTitleLabelFont(_:)();

  if (qword_1008DA8A8 != -1)
  {
    swift_once();
  }

  v34 = UIButton.withTitleTextColor(_:for:)();

  v35 = [objc_opt_self() mainBundle];
  v36 = String._bridgeToObjectiveC()();
  v37 = [v35 localizedStringForKey:v36 value:0 table:0];

  if (!v37)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = String._bridgeToObjectiveC()();
  }

  v38 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_showAllButton;
  [v34 setTitle:v37 forState:{objc_msgSend(v34, "state")}];

  v39 = [v34 titleLabel];
  [v39 setLineBreakMode:0];

  v40 = [v34 titleLabel];
  [v40 setLineBreakMode:0];

  v41 = [v34 titleLabel];
  [v41 setNumberOfLines:0];

  [v34 setContentHorizontalAlignment:2];
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v38] = v34;
  v60.receiver = v5;
  v60.super_class = type metadata accessor for TrophyCaseGoForItCell();
  v42 = objc_msgSendSuper2(&v60, "initWithFrame:", a1, a2, a3, a4);
  v43 = objc_allocWithZone(UITapGestureRecognizer);
  v44 = v42;
  v45 = [v43 initWithTarget:v44 action:"didTapTopAchievement:"];
  v46 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_badgeImageView;
  [*&v44[OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_badgeImageView] addGestureRecognizer:v45];
  v47 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_achievementLabel;
  v48 = *&v44[OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_achievementLabel];
  if (FIUILocaleIsRightToLeft())
  {
    v49 = 2;
  }

  else
  {
    v49 = 0;
  }

  [v48 setTextAlignment:v49];

  v50 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_showAllButton;
  v51 = *&v44[OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_showAllButton];
  if (FIUILocaleIsRightToLeft())
  {
    v52 = 1;
  }

  else
  {
    v52 = 2;
  }

  [v51 setContentHorizontalAlignment:v52];

  v53 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_badgeStackImageView;
  v54 = *&v44[OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_badgeStackImageView];
  if (FIUILocaleIsRightToLeft())
  {
    v55 = 7;
  }

  else
  {
    v55 = 8;
  }

  [v54 setContentMode:v55];

  [*&v44[v50] addTarget:v44 action:"didTapShowAllButton:" forControlEvents:64];
  v56 = [objc_opt_self() sharedApplication];
  v57 = [v56 preferredContentSizeCategory];

  LOBYTE(v56) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v56)
  {
    [*&v44[v47] setTextAlignment:1];
  }

  v58 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_roundedView;
  [*&v44[OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_roundedView] addSubview:*&v44[OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_sectionLabel]];
  [*&v44[v58] addSubview:*&v44[v46]];
  [*&v44[v58] addSubview:*&v44[v47]];
  [*&v44[v58] addSubview:*&v44[v53]];
  [*&v44[v58] addSubview:*&v44[v50]];
  [v44 addSubview:*&v44[v58]];
  sub_1002E69D8();

  return v44;
}

void sub_1002E69D8()
{
  v1 = v0;
  sub_100140278(&unk_1008E4E20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1006E7130;
  v3 = *&v1[OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_roundedView];
  v4 = [v3 topAnchor];
  v5 = [v1 topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  *(v2 + 32) = v6;
  v7 = [v3 bottomAnchor];
  v8 = [v1 bottomAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v2 + 40) = v9;
  v10 = [v3 leadingAnchor];
  v11 = [v1 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v2 + 48) = v12;
  v13 = [v3 trailingAnchor];
  v14 = [v1 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v2 + 56) = v15;
  v16 = *&v1[OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_badgeImageView];
  v17 = [v16 topAnchor];
  v18 = [v3 topAnchor];
  v19 = [v17 constraintGreaterThanOrEqualToAnchor:v18 constant:16.0];

  *(v2 + 64) = v19;
  v20 = [v16 centerYAnchor];
  v21 = [v3 centerYAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v2 + 72) = v22;
  v23 = [v16 leadingAnchor];
  v151 = v3;
  v24 = [v3 leadingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:16.0];

  *(v2 + 80) = v25;
  v26 = [v16 widthAnchor];
  v27 = [v16 heightAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  *(v2 + 88) = v28;
  v29 = [v16 widthAnchor];
  v30 = [v29 constraintEqualToConstant:72.0];

  *(v2 + 96) = v30;
  v31 = *&v1[OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_sectionLabel];
  v32 = [v31 topAnchor];
  v33 = [v3 topAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:16.0];

  *(v2 + 104) = v34;
  v35 = [v31 leadingAnchor];
  v36 = [v16 trailingAnchor];
  v37 = [v35 constraintEqualToAnchor:v36 constant:12.0];

  *(v2 + 112) = v37;
  v152 = v31;
  v38 = [v31 trailingAnchor];
  v39 = *&v1[OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_badgeStackImageView];
  v40 = [v39 leadingAnchor];
  v41 = [v38 constraintEqualToAnchor:v40 constant:-12.0];

  *(v2 + 120) = v41;
  v42 = *&v1[OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_achievementLabel];
  v43 = [v42 topAnchor];
  v44 = [v31 lastBaselineAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:5.0];

  *(v2 + 128) = v45;
  v46 = [v42 leadingAnchor];
  v47 = [v16 trailingAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:12.0];

  *(v2 + 136) = v48;
  v153 = v42;
  v49 = [v42 trailingAnchor];
  v50 = [v39 leadingAnchor];
  v51 = [v49 constraintEqualToAnchor:v50 constant:-12.0];

  *(v2 + 144) = v51;
  v52 = [v42 bottomAnchor];
  v53 = [v151 bottomAnchor];
  v54 = [v52 constraintEqualToAnchor:v53 constant:-16.0];

  *(v2 + 152) = v54;
  v55 = [v39 topAnchor];
  v56 = [v151 topAnchor];
  v57 = [v55 constraintEqualToAnchor:v56 constant:16.0];

  *(v2 + 160) = v57;
  v58 = [v39 trailingAnchor];
  v59 = [v151 trailingAnchor];
  v60 = [v58 constraintEqualToAnchor:v59 constant:-16.0];

  *(v2 + 168) = v60;
  v61 = [v39 heightAnchor];
  v62 = [v61 constraintEqualToConstant:34.0];

  *(v2 + 176) = v62;
  v63 = [v39 widthAnchor];
  v64 = [v16 widthAnchor];
  v65 = [v63 constraintEqualToAnchor:v64];

  *(v2 + 184) = v65;
  v66 = *&v1[OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_showAllButton];
  v67 = [v66 topAnchor];
  v68 = [v39 bottomAnchor];
  v69 = [v67 constraintGreaterThanOrEqualToAnchor:v68 constant:12.0];

  *(v2 + 192) = v69;
  v70 = [v66 bottomAnchor];
  v71 = [v151 bottomAnchor];
  v72 = [v70 constraintEqualToAnchor:v71 constant:-16.0];

  *(v2 + 200) = v72;
  v73 = [v66 trailingAnchor];
  v74 = [v151 trailingAnchor];
  v75 = [v73 constraintEqualToAnchor:v74 constant:-16.0];

  *(v2 + 208) = v75;
  v76 = [v66 leadingAnchor];
  v77 = [v39 leadingAnchor];
  v78 = [v76 constraintEqualToAnchor:v77];

  *(v2 + 216) = v78;
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_1006E7140;
  v80 = [v151 topAnchor];
  v81 = [v1 topAnchor];
  v82 = [v80 constraintEqualToAnchor:v81];

  *(v79 + 32) = v82;
  v83 = [v151 bottomAnchor];
  v84 = [v1 bottomAnchor];
  v85 = [v83 constraintEqualToAnchor:v84];

  *(v79 + 40) = v85;
  v86 = [v151 leadingAnchor];
  v87 = [v1 leadingAnchor];
  v88 = [v86 constraintEqualToAnchor:v87];

  *(v79 + 48) = v88;
  v89 = [v151 trailingAnchor];
  v90 = [v1 trailingAnchor];
  v91 = [v89 constraintEqualToAnchor:v90];

  *(v79 + 56) = v91;
  v92 = [v152 topAnchor];
  v93 = [v151 topAnchor];
  v94 = [v92 constraintEqualToAnchor:v93 constant:16.0];

  *(v79 + 64) = v94;
  v95 = [v152 leadingAnchor];
  v96 = [v151 leadingAnchor];
  v97 = [v95 constraintEqualToAnchor:v96 constant:12.0];

  *(v79 + 72) = v97;
  v98 = [v152 trailingAnchor];
  v99 = [v151 trailingAnchor];
  v100 = [v98 constraintEqualToAnchor:v99 constant:-16.0];

  *(v79 + 80) = v100;
  v101 = [v16 topAnchor];
  v102 = [v152 bottomAnchor];
  v103 = [v101 constraintGreaterThanOrEqualToAnchor:v102 constant:16.0];

  *(v79 + 88) = v103;
  v104 = [v16 centerXAnchor];
  v105 = [v151 centerXAnchor];
  v106 = [v104 constraintEqualToAnchor:v105];

  *(v79 + 96) = v106;
  v107 = [v16 widthAnchor];
  v108 = [v16 heightAnchor];
  v109 = [v107 constraintEqualToAnchor:v108];

  *(v79 + 104) = v109;
  v110 = [v16 widthAnchor];
  v111 = [v151 widthAnchor];
  v112 = [v110 constraintEqualToAnchor:v111 multiplier:0.6];

  *(v79 + 112) = v112;
  v113 = [v153 topAnchor];
  v114 = [v16 bottomAnchor];
  v115 = [v113 constraintEqualToAnchor:v114 constant:20.0];

  *(v79 + 120) = v115;
  v116 = [v153 leadingAnchor];
  v117 = [v151 leadingAnchor];
  v118 = [v116 constraintEqualToAnchor:v117 constant:16.0];

  *(v79 + 128) = v118;
  v119 = [v153 trailingAnchor];
  v120 = [v151 trailingAnchor];
  v121 = [v119 constraintEqualToAnchor:v120 constant:-16.0];

  *(v79 + 136) = v121;
  v122 = [v39 topAnchor];
  v123 = [v153 bottomAnchor];
  v124 = [v122 constraintGreaterThanOrEqualToAnchor:v123 constant:16.0];

  *(v79 + 144) = v124;
  v125 = [v39 leadingAnchor];
  v126 = [v151 leadingAnchor];
  v127 = [v125 constraintEqualToAnchor:v126 constant:16.0];

  *(v79 + 152) = v127;
  v128 = [v39 trailingAnchor];
  v129 = [v151 centerXAnchor];
  v130 = [v128 constraintEqualToAnchor:v129 constant:-5.0];

  *(v79 + 160) = v130;
  v131 = [v39 heightAnchor];
  v132 = [v131 constraintEqualToConstant:41.0];

  *(v79 + 168) = v132;
  v133 = [v39 bottomAnchor];
  v134 = [v151 bottomAnchor];
  v135 = [v133 constraintEqualToAnchor:v134 constant:-16.0];

  *(v79 + 176) = v135;
  v136 = [v66 topAnchor];
  v137 = [v153 bottomAnchor];
  v138 = [v136 constraintGreaterThanOrEqualToAnchor:v137 constant:16.0];

  *(v79 + 184) = v138;
  v139 = [v66 bottomAnchor];
  v140 = [v151 bottomAnchor];
  v141 = [v139 constraintEqualToAnchor:v140 constant:-16.0];

  *(v79 + 192) = v141;
  v142 = [v66 trailingAnchor];
  v143 = [v151 trailingAnchor];
  v144 = [v142 constraintEqualToAnchor:v143 constant:-16.0];

  *(v79 + 200) = v144;
  v145 = [v66 leadingAnchor];
  v146 = [v151 centerXAnchor];
  v147 = [v145 constraintEqualToAnchor:v146 constant:16.0];

  *(v79 + 208) = v147;
  v148 = [objc_opt_self() sharedApplication];
  v149 = [v148 preferredContentSizeCategory];

  UIContentSizeCategory.isAccessibilityCategory.getter();

  v150 = objc_opt_self();
  sub_1000059F8(0, &qword_1008DC980);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v150 activateConstraints:isa];
}

void sub_1002E7D60(void *a1, void *a2)
{
  v51 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v4 - 8);
  v49 = v4;
  __chkstk_darwin(v4);
  v46 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchQoS();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v42 = *(v7 - 8);
  v43 = v7;
  __chkstk_darwin(v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppEntityVisualState();
  __chkstk_darwin(v10);
  v11 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v11 - 8);
  sub_1002E9DF0();
  v13 = v12;
  v15 = v14;
  v50 = v2;
  v16 = *&v2[OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_badgeImageView];
  sub_100140278(&unk_1008F8F40);
  v17 = a1;
  LocalizedStringResource.init(stringLiteral:)();
  v18 = EntityProperty<>.init(title:)();
  v19 = v17;

  LOBYTE(aBlock) = [v19 unearned] ^ 1;
  EntityProperty.wrappedValue.setter();

  aBlock = _swiftEmptyArrayStorage;
  sub_100045CF8(&qword_1008DC918, &type metadata accessor for AppEntityVisualState);
  sub_100140278(&unk_1008F8F50);
  sub_100282B7C(&qword_1008DC920, &unk_1008F8F50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  aBlock = v18;
  v54 = v19;
  v20 = objc_allocWithZone(type metadata accessor for AppEntityViewAnnotation());
  sub_10007151C();
  v21 = AppEntityViewAnnotation.init<A>(entity:state:)();
  UIView.annotate(with:)();

  v22 = [v19 template];
  v23 = [v22 uniqueName];

  if (v23)
  {
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  v27 = v50;
  v28 = &v50[OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_templateUniqueName];
  *v28 = v24;
  v28[1] = v26;

  v29 = v51;
  if ([v51 hasCachedThumbnailImageForAchievement:v19 size:{v13, v15}])
  {
    v30 = [v29 thumbnailImageForAchievement:v19 size:{v13, v15}];
    [v16 setImage:v30];
  }

  else
  {
    sub_1000059F8(0, &qword_1008E3FD0);
    v32 = v42;
    v31 = v43;
    (*(v42 + 104))(v9, enum case for DispatchQoS.QoSClass.userInitiated(_:), v43);
    v33 = static OS_dispatch_queue.global(qos:)();
    (*(v32 + 8))(v9, v31);
    v34 = swift_allocObject();
    *(v34 + 2) = v29;
    *(v34 + 3) = v19;
    v34[4] = v13;
    v34[5] = v15;
    *(v34 + 6) = v27;
    v57 = sub_1002EA244;
    v58 = v34;
    aBlock = _NSConcreteStackBlock;
    v54 = 1107296256;
    v55 = sub_1000449A8;
    v56 = &unk_1008517E8;
    v35 = _Block_copy(&aBlock);
    v36 = v19;
    v37 = v29;
    v38 = v27;
    v39 = v44;
    static DispatchQoS.unspecified.getter();
    v52 = _swiftEmptyArrayStorage;
    sub_100045CF8(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100140278(&unk_1008E7F50);
    sub_100282B7C(&qword_1008E33C0, &unk_1008E7F50);
    v40 = v46;
    v41 = v49;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v35);

    (*(v48 + 8))(v40, v41);
    (*(v45 + 8))(v39, v47);
  }
}

uint64_t sub_1002E8414(void *a1, void *a2, double a3, double a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v23 = *(v11 - 8);
  v24 = v11;
  __chkstk_darwin(v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 thumbnailImageForAchievement:a2 size:{a3, a4}];
  sub_1000059F8(0, &qword_1008E3FD0);
  v15 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a2;
  v17[4] = v14;
  aBlock[4] = sub_1002EA254;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_100851838;
  v18 = _Block_copy(aBlock);
  v19 = a2;
  v20 = v14;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100045CF8(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_100282B7C(&qword_1008E33C0, &unk_1008E7F50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v25 + 8))(v10, v8);
  return (*(v23 + 8))(v13, v24);
}

void sub_1002E8764(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_templateUniqueName);
    v6 = *(Strong + OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_templateUniqueName + 8);
    v8 = Strong;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v9 = [a2 template];
  v10 = [v9 uniqueName];

  if (!v10)
  {
    if (!v6)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (!v6)
  {
    if (!v13)
    {
      goto LABEL_18;
    }

LABEL_16:

    return;
  }

  if (!v13)
  {
    goto LABEL_16;
  }

  if (v7 == v11 && v6 == v13)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      return;
    }
  }

LABEL_18:
  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    v18 = *(v16 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_badgeImageView);

    [v18 setImage:a3];
  }
}

void sub_1002E8914(unint64_t a1, unint64_t a2, unsigned int a3)
{
  v65 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v61 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v60 = *(v9 - 1);
  __chkstk_darwin(v9);
  v59 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v57 = *(v11 - 8);
  v58 = v11;
  __chkstk_darwin(v11);
  v56 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002E9F30();
  v14 = v13;
  v16 = v15;
  v17 = [objc_opt_self() sharedApplication];
  v18 = [v17 preferredContentSizeCategory];

  LOBYTE(v17) = UIContentSizeCategory.isAccessibilityCategory.getter();
  IsRightToLeft = FIUILocaleIsRightToLeft();
  if (v17)
  {
    v64 = IsRightToLeft;
    v20 = *&v3[OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_badgeStackImageView];
    if (FIUILocaleIsRightToLeft())
    {
      v21 = 8;
    }

    else
    {
      v21 = 7;
    }
  }

  else
  {
    v64 = IsRightToLeft ^ 1;
    v20 = *&v3[OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_badgeStackImageView];
    if (FIUILocaleIsRightToLeft())
    {
      v21 = 7;
    }

    else
    {
      v21 = 8;
    }
  }

  [v20 setContentMode:v21];
  v66 = v3;
  if (a1 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v62 = v9;
    v63 = v6;
    v55 = v20;
    if (!i)
    {
      break;
    }

    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100073020(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      return;
    }

    v53 = a2;
    v54 = v7;
    a2 = 0;
    v9 = aBlock[0];
    v67 = a1 & 0xFFFFFFFFFFFFFF8;
    v68 = (a1 & 0xC000000000000001);
    while (1)
    {
      v7 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      if (v68)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a2 >= *(v67 + 16))
        {
          goto LABEL_30;
        }

        v23 = *(a1 + 8 * a2 + 32);
      }

      v24 = v23;
      v25 = a1;
      v26 = [v23 template];
      v27 = [v26 uniqueName];

      if (!v27)
      {
        goto LABEL_33;
      }

      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v29;

      aBlock[0] = v9;
      v31 = v9[2];
      v30 = v9[3];
      v20 = (v31 + 1);
      if (v31 >= v30 >> 1)
      {
        sub_100073020((v30 > 1), v31 + 1, 1);
        v9 = aBlock[0];
      }

      v9[2] = v20;
      v32 = &v9[2 * v31];
      v32[4] = v28;
      v32[5] = v6;
      ++a2;
      a1 = v25;
      if (v7 == i)
      {
        v7 = v54;
        a2 = v53;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_24:
  v33 = v66;
  *&v66[OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_stackTemplateUniqueNames] = v9;

  sub_1000059F8(0, &qword_1008E8750);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v36 = v64;
  v35 = v65;
  v37 = [a2 hasCachedThumbnailImageForAchievements:isa size:v64 alignment:v65 stackType:{v14, v16}];

  if (v37)
  {
    v38 = Array._bridgeToObjectiveC()().super.isa;
    v68 = [a2 thumbnailImageForAchievements:v38 size:v36 alignment:v35 stackType:{v14, v16}];

    [v55 setImage:v68];
    v39 = v68;
  }

  else
  {
    sub_1000059F8(0, &qword_1008E3FD0);
    v41 = v57;
    v40 = v58;
    v42 = v7;
    v43 = v56;
    (*(v57 + 104))(v56, enum case for DispatchQoS.QoSClass.userInitiated(_:), v58);
    v68 = static OS_dispatch_queue.global(qos:)();
    (*(v41 + 8))(v43, v40);
    v44 = swift_allocObject();
    *(v44 + 16) = a2;
    *(v44 + 24) = a1;
    *(v44 + 32) = v14;
    *(v44 + 40) = v16;
    *(v44 + 48) = v36;
    *(v44 + 52) = v35;
    *(v44 + 56) = v33;
    aBlock[4] = sub_1002EA224;
    aBlock[5] = v44;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000449A8;
    aBlock[3] = &unk_100851720;
    v45 = _Block_copy(aBlock);
    v46 = a2;

    v47 = v33;
    v48 = v59;
    static DispatchQoS.unspecified.getter();
    v69 = _swiftEmptyArrayStorage;
    sub_100045CF8(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100140278(&unk_1008E7F50);
    sub_100282B7C(&qword_1008E33C0, &unk_1008E7F50);
    v49 = v61;
    v50 = v63;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v51 = v68;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v45);

    (*(v42 + 1))(v49, v50);
    (*(v60 + 8))(v48, v62);
  }
}

uint64_t sub_1002E9050(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v27 = *(v15 - 8);
  v28 = v15;
  __chkstk_darwin(v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000059F8(0, &qword_1008E8750);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v19 = [a1 thumbnailImageForAchievements:isa size:a3 alignment:a4 stackType:{a5, a6}];

  sub_1000059F8(0, &qword_1008E3FD0);
  v20 = static OS_dispatch_queue.main.getter();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = a2;
  v22[4] = v19;
  aBlock[4] = sub_1002EA238;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_100851798;
  v23 = _Block_copy(aBlock);

  v24 = v19;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100045CF8(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_100282B7C(&qword_1008E33C0, &unk_1008E7F50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v29 + 8))(v14, v12);
  return (*(v27 + 8))(v17, v28);
}

void sub_1002E93E0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_stackTemplateUniqueNames);
    v7 = Strong;
  }

  else
  {
    v6 = 0;
  }

  v24 = a3;
  if (a2 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (!i)
    {
LABEL_19:
      if (v6)
      {
        v20 = sub_10031B15C(v6, _swiftEmptyArrayStorage);

        if (v20)
        {
          swift_beginAccess();
          v21 = swift_unknownObjectWeakLoadStrong();
          if (v21)
          {
            v22 = v21;
            v23 = *(v21 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_badgeStackImageView);

            [v23 setImage:v24];
          }
        }
      }

      else
      {
      }

      return;
    }

    sub_100073020(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v25 = v6;
    v9 = 0;
    while (1)
    {
      v6 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v10 = *(a2 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = [v10 template];
      v13 = [v12 uniqueName];

      if (!v13)
      {
        goto LABEL_29;
      }

      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v18 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];
      if (v18 >= v17 >> 1)
      {
        sub_100073020((v17 > 1), v18 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v18 + 1;
      v19 = &_swiftEmptyArrayStorage[2 * v18];
      v19[4] = v14;
      v19[5] = v16;
      ++v9;
      if (v6 == i)
      {
        v6 = v25;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

id sub_1002E9658()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrophyCaseGoForItCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_1002E97AC()
{
  [*(*v0 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_badgeImageView) frame];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  UIEdgeInsets.init(uniform:)();

  return sub_1002957AC(v2, v4, v6, v8, v9, v10);
}

void sub_1002E987C()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_tapOnAchievement);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_tapOnShowAllAchievements);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_templateUniqueName);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_stackTemplateUniqueNames) = _swiftEmptyArrayStorage;
  v5 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_roundedView;
  v6 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v7 = [v6 layer];
  [v7 setCornerRadius:16.0];

  [v6 setClipsToBounds:1];
  v8 = sub_100046170();
  [v6 setBackgroundColor:v8];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v5) = v6;
  v9 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_sectionLabel;
  v10 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v10 setLineBreakMode:0];
  [v10 setNumberOfLines:0];
  v11 = UILabel.withLineBreakMode(_:)();

  if (qword_1008DA8B0 != -1)
  {
    swift_once();
  }

  v12 = UILabel.withFont(_:)();

  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v9) = v12;
  v13 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_achievementLabel;
  v14 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15 = UILabel.textAlignment(_:)();

  [v15 setLineBreakMode:0];
  [v15 setNumberOfLines:0];
  v16 = UILabel.withLineBreakMode(_:)();

  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v13) = v16;
  v17 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_badgeImageView;
  v18 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19 = UIView.withUserInteractionEnabled(_:)();

  v20 = UIView.withContentMode(_:)();
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v17) = v20;
  v21 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_badgeStackImageView;
  v22 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v23 = UIView.withContentMode(_:)();

  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v21) = v23;
  type metadata accessor for ShowAllButton();
  v24 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (qword_1008DA8C0 != -1)
  {
    swift_once();
  }

  v25 = UIButton.withTitleLabelFont(_:)();

  if (qword_1008DA8A8 != -1)
  {
    swift_once();
  }

  v26 = UIButton.withTitleTextColor(_:for:)();

  v27 = [objc_opt_self() mainBundle];
  v28 = String._bridgeToObjectiveC()();
  v29 = [v27 localizedStringForKey:v28 value:0 table:0];

  if (!v29)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = String._bridgeToObjectiveC()();
  }

  v30 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_showAllButton;
  [v26 setTitle:v29 forState:{objc_msgSend(v26, "state")}];

  v31 = [v26 titleLabel];
  [v31 setLineBreakMode:0];

  v32 = [v26 titleLabel];
  [v32 setLineBreakMode:0];

  v33 = [v26 titleLabel];
  [v33 setNumberOfLines:0];

  [v26 setContentHorizontalAlignment:2];
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v30) = v26;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1002E9DF0()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v11.origin.x = v2;
  v11.origin.y = v4;
  v11.size.width = v6;
  v11.size.height = v8;
  CGRectGetWidth(v11);
  if (qword_1008DA900 != -1)
  {
    swift_once();
  }

  v9 = [objc_opt_self() sharedApplication];
  v10 = [v9 preferredContentSizeCategory];

  UIContentSizeCategory.isAccessibilityCategory.getter();
}

void sub_1002E9F30()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v11.origin.x = v2;
  v11.origin.y = v4;
  v11.size.width = v6;
  v11.size.height = v8;
  CGRectGetWidth(v11);
  if (qword_1008DA900 != -1)
  {
    swift_once();
  }

  v9 = [objc_opt_self() sharedApplication];
  v10 = [v9 preferredContentSizeCategory];

  UIContentSizeCategory.isAccessibilityCategory.getter();
}

void sub_1002EA080(uint64_t a1, void *a2, unint64_t a3, void *a4, void *a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = *(v10 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_sectionLabel);
  v17 = sub_100293DDC();
  [v16 setAttributedText:v17];

  v18 = (v10 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_tapOnAchievement);
  v19 = *(v10 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_tapOnAchievement);
  *v18 = a7;
  v18[1] = a8;

  sub_1000245E0(v19);
  v20 = (v10 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_tapOnShowAllAchievements);
  v21 = *(v10 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_tapOnShowAllAchievements);
  *v20 = a9;
  v20[1] = a10;

  sub_1000245E0(v21);
  if (a2)
  {
    v22 = a2;
    sub_1002E7D60(v22, a4);
    sub_1002E8914(a3, a4, a6);
    v23 = *(v10 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseGoForItCell_achievementLabel);
    if (qword_1008DA8B8 != -1)
    {
      swift_once();
    }

    v26 = sub_100293378(v22, qword_1008E7270, a5);
    [v23 setAttributedText:v26];
  }
}

uint64_t sub_1002EA274@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActivitySharingHighlight() + 20);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ActivitySharingHighlightViewModel()
{
  result = qword_1008E7360;
  if (!qword_1008E7360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002EA364()
{
  result = type metadata accessor for ActivitySharingHighlight();
  if (v1 <= 0x3F)
  {
    result = sub_1000059F8(319, &qword_1008DFF98);
    if (v2 <= 0x3F)
    {
      result = sub_1000059F8(319, &unk_1008E7370);
      if (v3 <= 0x3F)
      {
        result = sub_1000059F8(319, &qword_1008F24B0);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for SeymourCatalogItemDataProvider();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for FIUIRelativeDateTimeFormatter();
            if (v6 <= 0x3F)
            {
              result = sub_1000059F8(319, &qword_1008E2848);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_1002EA4BC()
{
  result = qword_1008E73B8;
  if (!qword_1008E73B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E73B8);
  }

  return result;
}

uint64_t sub_1002EA510()
{
  result = _UISolariumEnabled();
  v1 = 8.0;
  if (result)
  {
    v1 = 16.0;
  }

  qword_1008E72F8 = *&v1;
  return result;
}

id sub_1002EA540()
{
  result = sub_1002EA560();
  qword_1008E7300 = result;
  return result;
}

id sub_1002EA560()
{
  v0 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle2];
  v1 = [v0 fontDescriptorWithSymbolicTraits:0x8000];
  if (v1)
  {
    v2 = v1;

    v0 = v2;
  }

  v3 = [v0 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];
  if (v3)
  {
    v4 = v3;

    v0 = v4;
  }

  v5 = [objc_opt_self() fontWithDescriptor:v0 size:0.0];

  return v5;
}

uint64_t sub_1002EA63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_1002EA65C, 0, 0);
}

uint64_t sub_1002EA65C()
{
  v2 = v0[2];
  v1 = v0[3];
  type metadata accessor for ActivitySharingAvatarProvider();
  v3 = type metadata accessor for ActivitySharingHighlight();
  *v2 = sub_100549740(*(v1 + *(v3 + 28)), 32.0);
  v4 = v0[1];

  return v4();
}

id sub_1002EA6EC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Font.Leading();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 8))
  {
    v7 = *v1;
    if (*(v1 + 8) == 1)
    {
      v8 = v7;
      [v8 _isStandalonePhoneSummary];
    }

    else
    {
      v8 = v7;
      sub_10069885C(v8);
    }
  }

  v9 = [objc_opt_self() mainBundle];
  v10 = String._bridgeToObjectiveC()();

  v11 = [v9 localizedStringForKey:v10 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1006D46C0;
  result = [*(v1 + *(type metadata accessor for ActivitySharingHighlight() + 28)) displayName];
  if (result)
  {
    v14 = result;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_10000A788();
    *(v12 + 32) = v15;
    *(v12 + 40) = v17;
    v18 = String.init(format:_:)();
    v20 = v19;

    v35[2] = v18;
    v35[3] = v20;
    sub_10000FCBC();
    v21 = Text.init<A>(_:)();
    v23 = v22;
    LOBYTE(v20) = v24;
    static Font.body.getter();
    (*(v4 + 104))(v6, enum case for Font.Leading.tight(_:), v3);
    Font.leading(_:)();

    (*(v4 + 8))(v6, v3);
    v25 = Text.font(_:)();
    v27 = v26;
    LOBYTE(v15) = v28;

    sub_10004642C(v21, v23, v20 & 1);

    static Color.primary.getter();
    v29 = Text.foregroundColor(_:)();
    v31 = v30;
    LOBYTE(v20) = v32;
    v34 = v33;

    sub_10004642C(v25, v27, v15 & 1);

    *a1 = v29;
    *(a1 + 8) = v31;
    *(a1 + 16) = v20 & 1;
    *(a1 + 24) = v34;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002EAAE8@<X0>(uint64_t *a1@<X8>)
{
  v37 = a1;
  v2 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v2 - 8);
  v36 = type metadata accessor for AttributedString();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  Date.init()();
  v19 = type metadata accessor for ActivitySharingHighlight();
  v20 = *(v13 + 16);
  v21 = v1 + *(v19 + 24);
  v35 = v12;
  v20(v15, v21, v12);
  LODWORD(v12) = *(v1 + 8);
  type metadata accessor for ActivitySharingHighlightViewModel();
  if (v12 == 2)
  {
    FIUIRelativeDateTimeFormatter.localizedString(for:relativeTo:)();
  }

  else
  {
    FIUIRelativeDateTimeFormatter.localizedDayString(for:)();
  }

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v22 = v8;
  v23 = v36;
  (*(v3 + 32))(v11, v22, v36);
  v38 = [objc_opt_self() secondaryLabelColor];
  sub_1002EFC08();
  AttributedString.subscript.setter();
  v38 = static Font.caption2.getter();
  sub_10005F988();
  AttributedString.subscript.setter();
  (*(v3 + 16))(v5, v11, v23);
  v24 = Text.init(_:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  (*(v3 + 8))(v11, v23);
  v31 = *(v13 + 8);
  v32 = v35;
  v31(v15, v35);
  result = (v31)(v18, v32);
  v34 = v37;
  *v37 = v24;
  v34[1] = v26;
  *(v34 + 16) = v28 & 1;
  v34[3] = v30;
  return result;
}

double sub_1002EAE70@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ActivitySharingHighlightViewModel();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  if (!*(v1 + 8))
  {
    if (*(v1 + *(v6 + 36)))
    {
      v10 = 100.0;
    }

    else
    {
      v10 = 165.0;
    }

    v11 = *(v1 + *(v6 + 20));
    v12 = v8;
    if ([v11 thumbnailImageForAchievement:v12 size:{v10, v10}])
    {
      v13 = Image.init(uiImage:)();
    }

    else
    {
      v13 = 0;
    }

    *&v22 = v13;
    BYTE8(v22) = 0;

    sub_100140278(&qword_1008DC850);
    sub_100077604();
    _ConditionalContent<>.init(storage:)();
    *&v22 = v26;
    *(&v22 + 1) = BYTE8(v26);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    sub_100140278(&qword_1008E7408);
    sub_100140278(&qword_1008E7410);
    sub_1002EF7E4();
    sub_10014A6B0(&qword_1008E7420, &qword_1008E7410);
    _ConditionalContent<>.init(storage:)();
    goto LABEL_12;
  }

  if (*(v1 + 8) != 1)
  {
    sub_1002EF188(v1, &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = v8;
    sub_1002EF1EC(v7, v15 + v14);
    *&v26 = 0;
    BYTE8(v26) = 1;
    v12 = v8;
    v16 = AnyView.init<A>(_:)();
    v17 = swift_allocObject();
    *(v17 + 16) = &unk_1006E7380;
    *(v17 + 24) = v15;
    *&v22 = v16;
    State.init(wrappedValue:)();
    v22 = v26;
    v23 = &unk_1006E7390;
    v24 = v17;
    v25 = 1;

    sub_100140278(&qword_1008E7408);
    sub_100140278(&qword_1008E7410);
    sub_1002EF7E4();
    sub_10014A6B0(&qword_1008E7420, &qword_1008E7410);
    _ConditionalContent<>.init(storage:)();

LABEL_12:

    goto LABEL_13;
  }

  v9 = v8;
  *&v22 = sub_1002EB368(v9);
  BYTE8(v22) = 1;

  sub_100140278(&qword_1008DC850);
  sub_100077604();
  _ConditionalContent<>.init(storage:)();
  *&v22 = v26;
  *(&v22 + 1) = BYTE8(v26);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  j__swift_retain();
  sub_100140278(&qword_1008E7408);
  sub_100140278(&qword_1008E7410);
  sub_1002EF7E4();
  sub_10014A6B0(&qword_1008E7420, &qword_1008E7410);
  _ConditionalContent<>.init(storage:)();

  j__swift_release();

LABEL_13:
  result = *&v26;
  v19 = v27;
  v20 = v28;
  *a1 = v26;
  *(a1 + 16) = v19;
  *(a1 + 32) = v20;
  return result;
}

uint64_t sub_1002EB368(uint64_t a1)
{
  if (*(v1 + *(type metadata accessor for ActivitySharingHighlightViewModel() + 36)))
  {
    v3 = 100.0;
  }

  else
  {
    v3 = 165.0;
  }

  v4 = objc_opt_self();
  [v4 preferredActivityRingThicknessForDiameter:v3];
  v6 = v5;
  [v4 preferredActivityRingInterspacingForDiameter:v3];
  v8 = v7;
  v9 = [v4 activityRingGroupForRingType:3];
  v10 = [v9 forCompanion];

  *&v11 = v3;
  [v10 setGroupDiameter:v11];
  *&v12 = v6;
  [v10 setThickness:v12];
  *&v13 = v8;
  [v10 setInterspacing:v13];
  [v10 hk_configureWithActivitySummary:a1 animated:0];
  v14 = objc_opt_self();
  if (qword_1008DA638 != -1)
  {
    v18 = v14;
    swift_once();
    v14 = v18;
  }

  v15 = [v14 renderRingGroup:v10 withRenderer:static ARUIRendererCacheWrapper.sharedRenderer];
  v16 = Image.init(uiImage:)();

  return v16;
}

__n128 sub_1002EB514@<Q0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for AttributedString();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  if (*(v1 + 8))
  {
    if (*(v1 + 8) == 1)
    {
      v22 = v6;
      v23 = v9;
      [v23 _isStandalonePhoneSummary];
      v10 = *(type metadata accessor for ActivitySharingHighlightViewModel() + 44);
      v24 = a1;
      v11 = *(v1 + v10);
      type metadata accessor for ActivitySharingHighlight();
      isa = Date._bridgeToObjectiveC()().super.isa;
      v13 = [v11 stringFromDate:isa];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      AttributeContainer.init()();
      AttributedString.init(_:attributes:)();
      v14 = static HorizontalAlignment.center.getter();
      LOBYTE(v64) = 0;
      sub_1002ECC94(v8, v36);
      *(v73 + 7) = v36[0];
      *(&v73[1] + 7) = v36[1];
      *(&v73[2] + 7) = v36[2];
      *(&v73[3] + 7) = v36[3];
      (*(v5 + 8))(v8, v22);
      v25 = v14;
      LOBYTE(v26[0]) = v64;
      *(v26 + 1) = v73[0];
      *&v26[4] = *(&v73[3] + 15);
      *(&v26[3] + 1) = v73[3];
      *(&v26[2] + 1) = v73[2];
      *(&v26[1] + 1) = v73[1];
      v37 = v14;
      v38 = v26[0];
      *&v42 = *&v26[4];
      v40 = v26[2];
      v41 = v26[3];
      v39 = v26[1];
      sub_1002ED058(&v37);
      v75 = v43;
      v76 = v44;
      LOBYTE(v77) = v45;
      v73[2] = v39;
      v73[3] = v40;
      v73[4] = v41;
      v74 = v42;
      v73[0] = v37;
      v73[1] = v38;
      sub_10001B104(&v25, &v64, &qword_1008E3220);
      sub_100140278(&qword_1008E73E0);
      sub_100140278(&qword_1008E3220);
      sub_10014A6B0(&qword_1008E73D8, &qword_1008E73E0);
      sub_10014A6B0(&qword_1008E3230, &qword_1008E3220);
      _ConditionalContent<>.init(storage:)();
      v52 = v33;
      v53 = v34;
      v48 = v29;
      v49 = v30;
      v50 = v31;
      v51 = v32;
      v46 = v27;
      v47 = v28;
      v70 = v33;
      v71 = v34;
      v66 = v29;
      v67 = v30;
      v68 = v31;
      v69 = v32;
      v54 = v35;
      LOBYTE(v72) = v35;
      v64 = v27;
      v65 = v28;
      sub_1002ED064(&v64);
      v75 = v70;
      v76 = v71;
      v77 = v72;
      v73[2] = v66;
      v73[3] = v67;
      v73[4] = v68;
      v74 = v69;
      v73[0] = v64;
      v73[1] = v65;
      sub_10001B104(&v46, &v55, &qword_1008E73C8);
      sub_100140278(&qword_1008E73C8);
      sub_100140278(&qword_1008E73C0);
      sub_1002EC73C();
      sub_10014A6B0(&qword_1008E73E8, &qword_1008E73C0);
      a1 = v24;
      _ConditionalContent<>.init(storage:)();

      sub_10000EA04(&v46, &qword_1008E73C8);
      v15 = &v25;
      v16 = &qword_1008E3220;
    }

    else
    {
      v17 = v9;
      sub_1002EC0F4(v17, &v46);
      v66 = v48;
      v67 = v49;
      v68 = v50;
      *&v69 = v51;
      v64 = v46;
      v65 = v47;
      sub_1002EC730(&v64);
      v75 = v70;
      v76 = v71;
      v77 = v72;
      v73[2] = v66;
      v73[3] = v67;
      v73[4] = v68;
      v74 = v69;
      v73[0] = v64;
      v73[1] = v65;
      sub_10001B104(&v46, &v55, &qword_1008E73C0);
      sub_100140278(&qword_1008E73C8);
      sub_100140278(&qword_1008E73C0);
      sub_1002EC73C();
      sub_10014A6B0(&qword_1008E73E8, &qword_1008E73C0);
      _ConditionalContent<>.init(storage:)();

      v15 = &v46;
      v16 = &qword_1008E73C0;
    }

    sub_10000EA04(v15, v16);
    v75 = v61;
    v76 = v62;
    v77 = v63;
    v73[2] = v57;
    v73[3] = v58;
    v73[4] = v59;
    v74 = v60;
    v73[0] = v55;
    v73[1] = v56;
  }

  else
  {
    v23 = v9;
    sub_1002EBE48(v23, &v25);
    v41 = v26[3];
    v42 = v26[4];
    v43 = v26[5];
    v44 = v26[6];
    v37 = v25;
    v38 = v26[0];
    v39 = v26[1];
    v40 = v26[2];
    sub_1002ED06C(&v37);
    v75 = v43;
    v76 = v44;
    LOBYTE(v77) = v45;
    v73[2] = v39;
    v73[3] = v40;
    v73[4] = v41;
    v74 = v42;
    v73[0] = v37;
    v73[1] = v38;
    sub_10001B104(&v25, &v64, &qword_1008E73E0);
    sub_100140278(&qword_1008E73E0);
    v24 = a1;
    sub_100140278(&qword_1008E3220);
    v22 = &protocol conformance descriptor for VStack<A>;
    sub_10014A6B0(&qword_1008E73D8, &qword_1008E73E0);
    sub_10014A6B0(&qword_1008E3230, &qword_1008E3220);
    _ConditionalContent<>.init(storage:)();
    v52 = v33;
    v53 = v34;
    v48 = v29;
    v49 = v30;
    v50 = v31;
    v51 = v32;
    v46 = v27;
    v47 = v28;
    v70 = v33;
    v71 = v34;
    v66 = v29;
    v67 = v30;
    v68 = v31;
    v69 = v32;
    v54 = v35;
    LOBYTE(v72) = v35;
    v64 = v27;
    v65 = v28;
    sub_1002ED064(&v64);
    v75 = v70;
    v76 = v71;
    v77 = v72;
    v73[2] = v66;
    v73[3] = v67;
    v73[4] = v68;
    v74 = v69;
    v73[0] = v64;
    v73[1] = v65;
    sub_10001B104(&v46, &v55, &qword_1008E73C8);
    sub_100140278(&qword_1008E73C8);
    sub_100140278(&qword_1008E73C0);
    sub_1002EC73C();
    a1 = v24;
    sub_10014A6B0(&qword_1008E73E8, &qword_1008E73C0);
    _ConditionalContent<>.init(storage:)();

    sub_10000EA04(&v46, &qword_1008E73C8);
    sub_10000EA04(&v25, &qword_1008E73E0);
    v75 = v61;
    v76 = v62;
    v77 = v63;
    v73[2] = v57;
    v73[3] = v58;
    v73[4] = v59;
    v74 = v60;
    v73[0] = v55;
    v73[1] = v56;
  }

  v18 = v76;
  *(a1 + 96) = v75;
  *(a1 + 112) = v18;
  *(a1 + 128) = v77;
  v19 = v73[3];
  *(a1 + 32) = v73[2];
  *(a1 + 48) = v19;
  v20 = v74;
  *(a1 + 64) = v73[4];
  *(a1 + 80) = v20;
  result = v73[1];
  *a1 = v73[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1002EBE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v5 - 8);
  v23 = type metadata accessor for AttributedString();
  v6 = *(v23 - 8);
  __chkstk_darwin(v23);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ActivitySharingHighlightViewModel();
  v10 = [*(v2 + *(v9 + 24)) titleForAchievement:a1];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0xE000000000000000;
  }

  v15 = *(v2 + *(v9 + 44));
  type metadata accessor for ActivitySharingHighlight();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v17 = [v15 stringFromDate:isa];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_1002EC81C(v12, v14, v8, &v25);
  v36 = v29;
  v37 = v30;
  v38 = v31;
  v32 = v25;
  v33 = v26;
  v34 = v27;
  v35 = v28;
  v39[0] = v25;
  v39[1] = v26;
  v39[2] = v27;
  v39[3] = v28;
  v39[4] = v29;
  v39[5] = v30;
  v40 = v31;
  sub_10001B104(&v32, &v24, &qword_1008E73F0);
  sub_10000EA04(v39, &qword_1008E73F0);

  v18 = v34;
  *(a2 + 72) = v35;
  v19 = v37;
  *(a2 + 88) = v36;
  *(a2 + 104) = v19;
  v20 = v33;
  *(a2 + 24) = v32;
  *(a2 + 40) = v20;
  *(a2 + 120) = v38;
  *(a2 + 56) = v18;
  return (*(v6 + 8))(v8, v23);
}

id sub_1002EC0F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for ActivitySharingHighlightViewModel();
  v6 = v5 - 8;
  v67 = *(v5 - 8);
  v7 = *(v67 + 64);
  __chkstk_darwin(v5);
  v73 = type metadata accessor for Font.Leading();
  v8 = *(v73 - 8);
  __chkstk_darwin(v73);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AttributedString();
  v75 = *(v11 - 8);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v76 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 workoutActivityType];
  result = [*(v2 + *(v6 + 36)) unitManager];
  v16 = result;
  v74 = a2;
  v69 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v2;
  v68 = v7;
  if (v14 == 84)
  {
    if (result)
    {

      if (qword_1008DAA58 != -1)
      {
        swift_once();
      }

      v17 = qword_1008EC4B0;
      v18 = a1;
      [a1 duration];
      v19 = [v17 stringFromTimeInterval:?];

      if (v19)
      {
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        v19 = 0;
        v23 = 0;
      }

      else
      {
        v23 = 0;
        v20 = 0;
        v22 = 0xE000000000000000;
      }

      v28 = 2;
      goto LABEL_11;
    }

    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  if (!result)
  {
    goto LABEL_21;
  }

  v24 = a1;
  v20 = sub_1003F3918(a1, result);
  v22 = v25;
  v19 = v26;
  v23 = v27;

  v18 = v24;
  v28 = [v24 _goalType];
LABEL_11:
  v29 = [objc_opt_self() metricColorsForGoalTypeIdentifier:v28];
  v30 = [v29 nonGradientTextColor];

  if (v23)
  {
    *&v77[0] = v19;
    *(&v77[0] + 1) = v23;
    sub_10000FCBC();
    v31 = StringProtocol.localizedUppercase.getter();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0xE000000000000000;
  }

  v72 = v11;
  if (qword_1008DA8D0 != -1)
  {
    swift_once();
  }

  v71 = v30;
  sub_1004C1ADC(v20, v22, v31, v33, qword_1008E7300, v30, v76);

  v34 = v18;
  v35 = [objc_opt_self() activityTypeWithWorkout:v18];
  v36 = [v35 localizedName];

  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  *&v77[0] = v37;
  *(&v77[0] + 1) = v39;
  sub_10000FCBC();
  v40 = Text.init<A>(_:)();
  v42 = v41;
  v44 = v43;
  static Font.subheadline.getter();
  v45 = v73;
  (*(v8 + 104))(v10, enum case for Font.Leading.tight(_:), v73);
  Font.leading(_:)();

  (*(v8 + 8))(v10, v45);
  v46 = Text.font(_:)();
  v48 = v47;
  v50 = v49;
  v52 = v51;

  sub_10004642C(v40, v42, v44 & 1);

  if (sub_10069885C(v34))
  {
    v53 = v69;
    sub_1002EF188(v70, v69);
    v54 = (*(v67 + 80) + 16) & ~*(v67 + 80);
    v55 = (v68 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    sub_1002EF1EC(v53, v56 + v54);
    *(v56 + v55) = v34;
    v57 = v34;
    v58 = &unk_1006E7350;
  }

  else
  {
    v58 = 0;
    v56 = 0;
  }

  v59 = v72;
  v60 = v75;
  v61 = static HorizontalAlignment.center.getter();
  v62 = v74;
  *v74 = v61;
  v62[1] = 0;
  *(v62 + 16) = 1;
  v63 = v76;
  sub_1002ED074(v76, v46, v48, v50 & 1, v52, v58, v56, v77);

  sub_1000245E0(v58);
  v64 = v77[1];
  *(v62 + 3) = v77[0];
  *(v62 + 5) = v64;
  v65 = v77[3];
  *(v62 + 7) = v77[2];
  *(v62 + 9) = v65;
  sub_10004642C(v46, v48, v50 & 1);

  return (*(v60 + 8))(v63, v59);
}

unint64_t sub_1002EC73C()
{
  result = qword_1008E73D0;
  if (!qword_1008E73D0)
  {
    sub_100141EEC(&qword_1008E73C8);
    sub_10014A6B0(&qword_1008E73D8, &qword_1008E73E0);
    sub_10014A6B0(&qword_1008E3230, &qword_1008E3220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E73D0);
  }

  return result;
}

uint64_t sub_1002EC81C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a3;
  v53 = a4;
  v6 = type metadata accessor for AttributedString();
  v50 = *(v6 - 8);
  v51 = v6;
  __chkstk_darwin(v6);
  v49 = &KeyPath - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Font.Leading();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &KeyPath - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v63 = a1;
  *(&v63 + 1) = a2;
  sub_10000FCBC();

  v12 = Text.init<A>(_:)();
  v14 = v13;
  LOBYTE(a2) = v15;
  static Font.subheadline.getter();
  (*(v9 + 104))(v11, enum case for Font.Leading.tight(_:), v8);
  Font.leading(_:)();

  (*(v9 + 8))(v11, v8);
  v16 = Text.font(_:)();
  v47 = v17;
  v48 = v18;
  LOBYTE(v11) = v19;

  sub_10004642C(v12, v14, a2 & 1);

  KeyPath = swift_getKeyPath();
  v46 = swift_getKeyPath();
  v54 = v11 & 1;
  LOBYTE(v63) = v11 & 1;
  LOBYTE(v68[0]) = 0;
  (*(v50 + 16))(v49, v52, v51);
  v20 = Text.init(_:)();
  v22 = v21;
  LOBYTE(v11) = v23;
  LODWORD(v63) = static HierarchicalShapeStyle.secondary.getter();
  v24 = Text.foregroundStyle<A>(_:)();
  v26 = v25;
  v28 = v27;
  sub_10004642C(v20, v22, v11 & 1);

  static Font.footnote.getter();
  v29 = Text.font(_:)();
  v31 = v30;
  LODWORD(v52) = v32;
  v34 = v33;

  sub_10004642C(v24, v26, v28 & 1);

  v35 = v47;
  v36 = v48;
  *&v58 = v16;
  *(&v58 + 1) = v47;
  LOBYTE(v59) = v54;
  *(&v59 + 1) = *v57;
  DWORD1(v59) = *&v57[3];
  v38 = KeyPath;
  v37 = v46;
  *(&v59 + 1) = v48;
  *&v60 = KeyPath;
  *(&v60 + 1) = 2;
  LOBYTE(v61) = 0;
  *(&v61 + 1) = *v56;
  DWORD1(v61) = *&v56[3];
  *(&v61 + 1) = v46;
  v62 = 1;
  LOBYTE(v67) = 1;
  v63 = v58;
  v64 = v59;
  v65 = v60;
  v66 = v61;
  LOBYTE(v24) = v52 & 1;
  v55 = v52 & 1;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  v42 = v67;
  v43 = v53;
  *(v53 + 32) = v60;
  *(v43 + 48) = v41;
  *v43 = v39;
  *(v43 + 16) = v40;
  *(v43 + 64) = v42;
  *(v43 + 72) = v29;
  *(v43 + 80) = v31;
  *(v43 + 88) = v24;
  *(v43 + 96) = v34;
  sub_10001B104(&v58, v68, &qword_1008DCB28);
  sub_10006965C(v29, v31, v24);

  sub_10004642C(v29, v31, v24);

  v68[0] = v16;
  v68[1] = v35;
  v69 = v54;
  *v70 = *v57;
  *&v70[3] = *&v57[3];
  v71 = v36;
  v72 = v38;
  v73 = 2;
  v74 = 0;
  *v75 = *v56;
  *&v75[3] = *&v56[3];
  v76 = v37;
  v77 = 1;
  return sub_10000EA04(v68, &qword_1008DCB28);
}

uint64_t sub_1002ECC94@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v46 = a1;
  v3 = type metadata accessor for AttributedString();
  v44 = *(v3 - 8);
  v45 = v3;
  __chkstk_darwin(v3);
  v43 = &v38[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for Font.Leading();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LocalizedStringKey.init(stringLiteral:)();
  v9 = Text.init(_:tableName:bundle:comment:)();
  v11 = v10;
  v13 = v12;
  static Font.subheadline.getter();
  (*(v6 + 104))(v8, enum case for Font.Leading.tight(_:), v5);
  Font.leading(_:)();

  (*(v6 + 8))(v8, v5);
  v14 = Text.font(_:)();
  v40 = v15;
  v41 = v14;
  v39 = v16;
  v42 = v17;

  sub_10004642C(v9, v11, v13 & 1);

  (*(v44 + 16))(v43, v46, v45);
  v18 = Text.init(_:)();
  v20 = v19;
  LOBYTE(v6) = v21;
  v48 = static HierarchicalShapeStyle.secondary.getter();
  v22 = Text.foregroundStyle<A>(_:)();
  v24 = v23;
  LOBYTE(v5) = v25;
  sub_10004642C(v18, v20, v6 & 1);

  static Font.footnote.getter();
  v26 = Text.font(_:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;

  sub_10004642C(v22, v24, v5 & 1);

  v33 = v39 & 1;
  v47 = v39 & 1;
  v50 = v39 & 1;
  v49 = v30 & 1;
  v35 = v40;
  v34 = v41;
  *a2 = v41;
  *(a2 + 8) = v35;
  *(a2 + 16) = v33;
  *(a2 + 24) = v42;
  *(a2 + 32) = v26;
  *(a2 + 40) = v28;
  *(a2 + 48) = v30 & 1;
  *(a2 + 56) = v32;
  v36 = v34;
  sub_10006965C(v34, v35, v33);

  sub_10006965C(v26, v28, v30 & 1);

  sub_10004642C(v26, v28, v30 & 1);

  sub_10004642C(v36, v35, v47);
}

uint64_t sub_1002ED074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v35 = a2;
  v36 = a3;
  v37 = a4;
  v38 = a5;
  v15 = type metadata accessor for AttributedString();
  v16 = __chkstk_darwin(v15);
  (*(v18 + 16))(&v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v16);
  v19 = Text.init(_:)();
  v21 = v20;
  HIDWORD(v33) = v22;
  v24 = v23;

  sub_10006965C(a2, a3, a4 & 1);
  v25 = AnyView.init<A>(_:)();
  if (a6)
  {
    v26 = swift_allocObject();
    *(v26 + 16) = a6;
    *(v26 + 24) = a7;
    v27 = &unk_1006E7370;
  }

  else
  {
    v27 = 0;
    v26 = 0;
  }

  v34 = v25;
  sub_10000B210(a6);
  State.init(wrappedValue:)();
  v28 = v35;
  v29 = v36;
  v30 = BYTE4(v33);
  v31 = BYTE4(v33) & 1;
  LOBYTE(v35) = BYTE4(v33) & 1;
  *a8 = v19;
  *(a8 + 8) = v21;
  *(a8 + 16) = v30 & 1;
  *(a8 + 24) = v24;
  *(a8 + 32) = v28;
  *(a8 + 40) = v29;
  *(a8 + 48) = v27;
  *(a8 + 56) = v26;
  sub_10006965C(v19, v21, v30 & 1);

  sub_10000B210(v27);

  sub_1000245E0(v27);
  sub_10004642C(v19, v21, v31);
}

uint64_t sub_1002ED2B0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1002ED39C;

  return v5();
}

uint64_t sub_1002ED39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 16);
  v12 = *v4;

  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  v10 = *(v12 + 8);

  return v10();
}

uint64_t sub_1002ED4CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return _swift_task_switch(sub_1002ED4EC, 0, 0);
}

uint64_t sub_1002ED4EC()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *(v1 + 16) = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  v3 = sub_100140278(&qword_1008E73F8);
  *v2 = v0;
  v2[1] = sub_1002ED5F4;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD00000000000003ALL, 0x80000001007544B0, sub_1002EF470, v1, v3);
}

uint64_t sub_1002ED5F4()
{

  return _swift_task_switch(sub_1002ED70C, 0, 0);
}

uint64_t sub_1002ED728(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100140278(&qword_1008E7400);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - v8;
  v10 = *(a2 + *(type metadata accessor for ActivitySharingHighlightViewModel() + 32));
  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  sub_100171CD0(a3, sub_1002EF478, v12, v10);
}

uint64_t sub_1002ED88C(uint64_t a1)
{
  v2 = type metadata accessor for Font.Leading();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v7 = [*(a1 + OBJC_IVAR___CHCatalogItemViewModel_title) string];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    *&v25 = v8;
    *(&v25 + 1) = v10;
    sub_10000FCBC();
    v11 = Text.init<A>(_:)();
    v13 = v12;
    v15 = v14;
    static Font.subheadline.getter();
    (*(v3 + 104))(v6, enum case for Font.Leading.tight(_:), v2);
    Font.leading(_:)();

    (*(v3 + 8))(v6, v2);
    v16 = Text.font(_:)();
    v18 = v17;
    v20 = v19;
    v22 = v21;

    sub_10004642C(v11, v13, v15 & 1);

    *&v25 = v16;
    *(&v25 + 1) = v18;
    *&v26 = v20 & 1;
    *(&v26 + 1) = v22;
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  sub_100140278(&qword_1008E7400);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1002EDA98(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1002EDB84;

  return v5();
}

uint64_t sub_1002EDB84(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1002EDC94(uint64_t a1, uint64_t a2)
{
  v2[51] = a1;
  v2[52] = a2;
  v3 = type metadata accessor for ActivitySharingHighlightViewModel();
  v2[53] = v3;
  v4 = *(v3 - 8);
  v2[54] = v4;
  v2[55] = *(v4 + 64);
  v2[56] = swift_task_alloc();
  v2[57] = sub_100140278(&qword_1008E7428);
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = sub_100140278(&qword_1008E0AB0);
  v2[61] = swift_task_alloc();
  sub_100140278(&qword_1008E7430);
  v2[62] = swift_task_alloc();
  v5 = type metadata accessor for Image.ResizingMode();
  v2[63] = v5;
  v2[64] = *(v5 - 8);
  v2[65] = swift_task_alloc();

  return _swift_task_switch(sub_1002EDE74, 0, 0);
}

uint64_t sub_1002EDE74()
{
  v1 = sub_100433844(*(v0 + 408));
  v2 = [v1 nonGradientTextColor];

  if (v2)
  {
    v7 = *(v0 + 416);
    v6 = *(v0 + 424);
    v8 = *(v0 + 408);
    v9 = Color.init(uiColor:)();
    *(v0 + 528) = v9;
    v10 = *(v6 + 36);
    v11 = *(v7 + v10);
    v12 = 1;
    if (*(v7 + v10))
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    v14 = sub_1003F3D58(v8, v13);
    KeyPath = v15;
    v18 = v17;
    *(v0 + 536) = v14;
    *(v0 + 544) = v15;
    *(v0 + 552) = v17;
    if (v14)
    {
      v19 = v14;
      v14 = Image.init(uiImage:)();
      v12 = 2;
    }

    v70 = v14;
    *(v0 + 560) = v14;
    v69 = v11;
    if (KeyPath)
    {
      v20 = *(v0 + 520);
      v21 = *(v0 + 504);
      v22 = *(v0 + 512);
      v23 = [KeyPath imageWithRenderingMode:v12];
      Image.init(uiImage:)();
      (*(v22 + 104))(v20, enum case for Image.ResizingMode.stretch(_:), v21);
      v68 = Image.resizable(capInsets:resizingMode:)();

      (*(v22 + 8))(v20, v21);
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v24 = *(v0 + 304);
      LOBYTE(v22) = *(v0 + 312);
      v25 = *(v0 + 320);
      v26 = *(v0 + 328);
      v27 = *(v0 + 336);
      v28 = *(v0 + 344);
      KeyPath = swift_getKeyPath();
      *(v0 + 16) = v68;
      *(v0 + 24) = v24;
      *(v0 + 32) = v22;
      *(v0 + 40) = v25;
      *(v0 + 48) = v26;
      *(v0 + 56) = v27;
    }

    else
    {
      v28 = 0;
      v9 = 0;
      *(v0 + 32) = 0u;
      *(v0 + 48) = 0u;
      *(v0 + 16) = 0u;
    }

    *(v0 + 64) = v28;
    *(v0 + 72) = KeyPath;
    *(v0 + 80) = v9;
    v29 = *(v0 + 496);
    if (v18)
    {
      v30 = *(v0 + 480);
      v31 = *(v0 + 488);
      v32 = v18;
      v33 = Image.init(uiImage:)();
      if (v69)
      {
        v34 = 35.0;
      }

      else
      {
        v34 = 60.0;
      }

      if (v69)
      {
        v35 = 7.0;
      }

      else
      {
        v35 = 14.0;
      }

      v36 = (v31 + *(v30 + 36));
      v37 = *(type metadata accessor for RoundedRectangle() + 20);
      v38 = enum case for RoundedCornerStyle.continuous(_:);
      v39 = type metadata accessor for RoundedCornerStyle();
      (*(*(v39 - 8) + 104))(v36 + v37, v38, v39);
      *v36 = v35;
      v36[1] = v35;
      *(v36 + *(sub_100140278(&qword_1008DE1E0) + 36)) = 256;
      *v31 = v33;
      sub_1002EF97C(v31, v29);
      v40 = sub_100140278(&qword_1008E7438);
      v41 = (v29 + *(v40 + 36));
      *v41 = v34;
      v41[1] = v34;
      (*(*(v40 - 8) + 56))(v29, 0, 1, v40);
    }

    else
    {
      v42 = sub_100140278(&qword_1008E7438);
      (*(*(v42 - 8) + 56))(v29, 1, 1, v42);
    }

    v43 = *(v0 + 496);
    v44 = *(v0 + 472);
    v45 = *(v0 + 408);
    v46 = *(v0 + 64);
    *(v0 + 192) = *(v0 + 48);
    *(v0 + 208) = v46;
    *(v0 + 224) = *(v0 + 80);
    v47 = *(v0 + 32);
    *(v0 + 160) = *(v0 + 16);
    *(v0 + 176) = v47;
    sub_10001B104(v0 + 16, v0 + 232, &qword_1008E7440);
    *v44 = static Alignment.center.getter();
    v44[1] = v48;
    v49 = sub_100140278(&qword_1008E7448);
    sub_1002EE708(v70, (v0 + 160), v43, v44 + *(v49 + 44));
    v50 = *(v0 + 160);
    *(v0 + 104) = *(v0 + 176);
    v51 = *(v0 + 208);
    *(v0 + 120) = *(v0 + 192);
    *(v0 + 136) = v51;
    *(v0 + 152) = *(v0 + 224);
    *(v0 + 88) = v50;
    sub_10000EA04(v0 + 88, &qword_1008E7440);
    v52 = sub_10069885C(v45);
    if (v52)
    {
      v53 = *(v0 + 440);
      v54 = *(v0 + 448);
      v55 = *(v0 + 432);
      v56 = *(v0 + 408);
      sub_1002EF188(*(v0 + 416), v54);
      v57 = (*(v55 + 80) + 16) & ~*(v55 + 80);
      v58 = (v53 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
      v59 = swift_allocObject();
      sub_1002EF1EC(v54, v59 + v57);
      *(v59 + v58) = v56;
      v60 = v56;
      v61 = &unk_1006E73F0;
    }

    else
    {
      v61 = 0;
      v59 = 0;
    }

    *(v0 + 576) = v59;
    *(v0 + 568) = v61;
    sub_10001B104(*(v0 + 472), *(v0 + 464), &qword_1008E7428);
    sub_10014A6B0(&qword_1008E7450, &qword_1008E7428);
    *(v0 + 584) = AnyView.init<A>(_:)();
    if (v52)
    {
      v62 = swift_allocObject();
      *(v62 + 16) = v61;
      *(v62 + 24) = v59;
      v63 = &unk_1006E73E0;
    }

    else
    {
      v63 = 0;
      v62 = 0;
    }

    *(v0 + 600) = v62;
    *(v0 + 592) = v63;
    type metadata accessor for MainActor();
    sub_10000B210(v61);
    *(v0 + 608) = static MainActor.shared.getter();
    v64 = dispatch thunk of Actor.unownedExecutor.getter();
    v66 = v65;
    v3 = sub_1002EE45C;
    v4 = v64;
    v5 = v66;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1002EE45C()
{
  v1 = v0[73];

  v0[50] = v1;
  State.init(wrappedValue:)();
  v2 = v0[49];
  v0[77] = v0[48];
  v0[78] = v2;

  return _swift_task_switch(sub_1002EE4EC, 0, 0);
}

uint64_t sub_1002EE4EC()
{
  v1 = v0[78];
  v2 = v0[75];
  v3 = v0[74];
  v7 = v0[71];
  v8 = v0[69];
  v9 = v0[68];
  v11 = v0[67];
  v12 = v0[62];
  v10 = v0[59];
  v0[44] = v0[77];
  v0[45] = v1;
  v0[46] = v3;
  v0[47] = v2;

  sub_10000B210(v3);
  sub_100140278(&qword_1008E7410);
  sub_10014A6B0(&qword_1008E7420, &qword_1008E7410);
  v4 = AnyView.init<A>(_:)();

  sub_1000245E0(v3);
  sub_1000245E0(v7);
  sub_10000EA04((v0 + 2), &qword_1008E7440);

  sub_10000EA04(v10, &qword_1008E7428);
  sub_10000EA04(v12, &qword_1008E7430);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1002EE708@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100140278(&qword_1008E7430);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  v11 = a2[3];
  v22[2] = a2[2];
  v22[3] = v11;
  v23 = *(a2 + 8);
  v12 = *a2;
  v22[1] = a2[1];
  v22[0] = v12;
  sub_10001B104(a3, v22 - v9, &qword_1008E7430);
  *a4 = a1;
  v14 = a2[3];
  v25 = a2[2];
  v13 = v25;
  v26 = v14;
  v27 = *(a2 + 8);
  v15 = v27;
  v16 = a2[1];
  v24[0] = *a2;
  v17 = v24[0];
  v24[1] = v16;
  *(a4 + 24) = v16;
  *(a4 + 40) = v13;
  *(a4 + 56) = v14;
  *(a4 + 72) = v15;
  *(a4 + 8) = v17;
  v18 = sub_100140278(&qword_1008E7478);
  sub_10001B104(v10, a4 + *(v18 + 64), &qword_1008E7430);
  sub_10001B104(v22, v28, &qword_1008E7440);
  swift_retain_n();
  sub_10001B104(v24, v28, &qword_1008E7440);
  sub_10000EA04(v10, &qword_1008E7430);
  v19 = a2[3];
  v28[2] = a2[2];
  v28[3] = v19;
  v29 = *(a2 + 8);
  v20 = a2[1];
  v28[0] = *a2;
  v28[1] = v20;
  sub_10000EA04(v28, &qword_1008E7440);
}

uint64_t sub_1002EE8C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return _swift_task_switch(sub_1002EE8E8, 0, 0);
}

uint64_t sub_1002EE8E8()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_100140278(&qword_1008E7458);
  *v2 = v0;
  v2[1] = sub_1002EE9F0;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000038, 0x80000001007544F0, sub_1002EF9EC, v1, v3);
}

uint64_t sub_1002EE9F0()
{

  return _swift_task_switch(sub_1002EEB08, 0, 0);
}

uint64_t sub_1002EEB20(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = a3;
  v5 = type metadata accessor for ActivitySharingHighlightViewModel();
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100140278(&qword_1008E7460);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v21 - v14;
  v16 = *(a2 + *(v6 + 40));
  (*(v11 + 16))(&v21 - v14, a1, v10, v13);
  sub_1002EF188(a2, v9);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = (v12 + *(v7 + 80) + v17) & ~*(v7 + 80);
  v19 = swift_allocObject();
  (*(v11 + 32))(v19 + v17, v15, v10);
  sub_1002EF1EC(v9, v19 + v18);
  sub_100171CD0(v22, sub_1002EF9F4, v19, v16);
}

void sub_1002EED28(void *a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E7460);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - v6;
  if (a1)
  {
    type metadata accessor for ActivitySharingHighlightViewModel();
    (*(v5 + 16))(v7, a2, v4);
    v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v9 = swift_allocObject();
    (*(v5 + 32))(v9 + v8, v7, v4);
    v10 = a1;
    sub_100419358(v10, sub_1002EFAD4, v9);
  }

  else
  {
    v11[1] = 0;
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1002EEEF0(void *a1)
{
  v2 = sub_100140278(&qword_1008E7468);
  __chkstk_darwin(v2);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = (v18 - v6);
  if (a1)
  {
    v8 = a1;
    v9 = Image.init(uiImage:)();
    if (qword_1008DA8C8 != -1)
    {
      swift_once();
    }

    v10 = qword_1008E72F8;
    v11 = sub_100140278(&qword_1008E0AB0);
    v12 = (v7 + *(v11 + 36));
    v13 = *(type metadata accessor for RoundedRectangle() + 20);
    v14 = enum case for RoundedCornerStyle.continuous(_:);
    v15 = type metadata accessor for RoundedCornerStyle();
    (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
    *v12 = v10;
    v12[1] = v10;
    *(v12 + *(sub_100140278(&qword_1008DE1E0) + 36)) = 256;
    *v7 = v9;
    (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  }

  else
  {
    v16 = sub_100140278(&qword_1008E0AB0);
    (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  }

  sub_10001B104(v7, v4, &qword_1008E7468);
  sub_1002EFB84();
  v18[1] = AnyView.init<A>(_:)();
  sub_100140278(&qword_1008E7460);
  CheckedContinuation.resume(returning:)();
  return sub_10000EA04(v7, &qword_1008E7468);
}

uint64_t sub_1002EF188(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySharingHighlightViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002EF1EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySharingHighlightViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002EF250()
{
  v2 = *(type metadata accessor for ActivitySharingHighlightViewModel() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1002EF354;

  return sub_1002ED4CC(v0 + v3, v4);
}

uint64_t sub_1002EF354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *v4;

  v9 = *(v11 + 8);

  return v9(a1, a2, a3, a4);
}

uint64_t sub_1002EF4A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002BACC;

  return sub_1002ED2B0(a1, v4);
}

uint64_t sub_1002EF558()
{
  v2 = *(type metadata accessor for ActivitySharingHighlightViewModel() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1002EF630;

  return sub_1002EDC94(v4, v0 + v3);
}

uint64_t sub_1002EF630(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1002EF72C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002BBC0;

  return sub_1002EDA98(a1, v4);
}

unint64_t sub_1002EF7E4()
{
  result = qword_1008E7418;
  if (!qword_1008E7418)
  {
    sub_100141EEC(&qword_1008E7408);
    sub_100077604();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E7418);
  }

  return result;
}

uint64_t sub_1002EF878()
{
  v2 = *(type metadata accessor for ActivitySharingHighlightViewModel() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1002EFC60;

  return sub_1002EE8C8(v0 + v3, v4);
}

uint64_t sub_1002EF97C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E0AB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1002EF9F4(void *a1)
{
  v3 = *(sub_100140278(&qword_1008E7460) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  type metadata accessor for ActivitySharingHighlightViewModel();

  sub_1002EED28(a1, v1 + v4);
}

uint64_t sub_1002EFAFC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(sub_100140278(a2) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

unint64_t sub_1002EFB84()
{
  result = qword_1008E7470;
  if (!qword_1008E7470)
  {
    sub_100141EEC(&qword_1008E7468);
    sub_1001E9D3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E7470);
  }

  return result;
}

unint64_t sub_1002EFC08()
{
  result = qword_1008E7480;
  if (!qword_1008E7480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E7480);
  }

  return result;
}

uint64_t sub_1002EFC64(uint64_t a1)
{
  if ((*(a1 + 32) & 0x10) != 0)
  {
    return (*a1 + 16);
  }

  else
  {
    return *(a1 + 32) & 0x1F;
  }
}

uint64_t sub_1002EFC80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF0 && *(a1 + 33))
  {
    return (*a1 + 240);
  }

  v3 = *(a1 + 32);
  if (v3 <= 0x10)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1002EFCC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEF)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 240;
    *(result + 8) = 0;
    if (a3 >= 0xF0)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF0)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002EFD10(uint64_t result, unsigned int a2)
{
  if (a2 >= 0x10)
  {
    *result = a2 - 16;
    *(result + 8) = 0;
    LOBYTE(a2) = 16;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1002EFD2C@<X0>(uint64_t *a1@<X8>)
{
  sub_1002EFD8C(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  result = String.init<A>(describing:)();
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_1002EFD8C(id result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 6:
    case 7:
    case 9:
    case 10:
    case 13:
    case 14:

      result = result;
      break;
    case 5:
      goto LABEL_6;
    case 8:
    case 11:
    case 12:
    case 15:
      v5 = result;
LABEL_6:

      break;
    default:
      return result;
  }

  return result;
}

id sub_1002EFE2C(unsigned __int8 a1)
{
  v1 = a1;
  if (a1 <= 3u)
  {
    if (a1 >= 3u)
    {
      goto LABEL_10;
    }

    sub_1002F1390();
    result = [swift_getObjCClassFromMetadata() calorieGoal];
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  if ((v1 - 5) < 2)
  {
    sub_1002F1390();
    result = [swift_getObjCClassFromMetadata() standGoal];
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  sub_1002F1390();
  result = [swift_getObjCClassFromMetadata() exerciseGoal];
  if (!result)
  {
    __break(1u);
LABEL_10:
    sub_1002F1390();
    result = [swift_getObjCClassFromMetadata() moveMinuteGoal];
    if (!result)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_1002EFEF8(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    if (a1 != 4)
    {
      v1 = [objc_opt_self() countUnit];
      goto LABEL_9;
    }
  }

  else
  {
    if (a1 < 2u)
    {
      v1 = [objc_opt_self() kilocalorieUnit];
      goto LABEL_9;
    }

    if (a1 == 2)
    {
      v1 = [objc_opt_self() jouleUnitWithMetricPrefix:9];
      goto LABEL_9;
    }
  }

  v1 = [objc_opt_self() minuteUnit];
LABEL_9:

  return v1;
}

uint64_t sub_1002EFFAC()
{
  v0 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for TypeDisplayRepresentation();
  sub_100163368(v5, qword_1009255E8);
  sub_10001AC90(v5, qword_1009255E8);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v4 + 56))(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

unint64_t sub_1002F0134()
{
  result = qword_1008E7488;
  if (!qword_1008E7488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E7488);
  }

  return result;
}

uint64_t sub_1002F0194()
{
  String.hash(into:)();
}

unint64_t sub_1002F02B4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002F1344(*a1);
  *a2 = result;
  return result;
}

void sub_1002F02E4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7105633;
  v5 = 0xE500000000000000;
  v6 = 0x646E617473;
  if (v2 != 5)
  {
    v6 = 1819045746;
    v5 = 0xE400000000000000;
  }

  v7 = 0xEB00000000736574;
  v8 = 0x756E694D65766F6DLL;
  if (v2 != 3)
  {
    v8 = 0x6573696372657865;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC00000073656972;
  v10 = 0x6F6C614365766F6DLL;
  if (v2 != 1)
  {
    v10 = 0x6F6C694B65766F6DLL;
    v9 = 0xEE0073656C756F6ALL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1002F03D0()
{
  result = qword_1008E7490;
  if (!qword_1008E7490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E7490);
  }

  return result;
}

unint64_t sub_1002F0428()
{
  result = qword_1008E7498;
  if (!qword_1008E7498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E7498);
  }

  return result;
}

unint64_t sub_1002F0480()
{
  result = qword_1008E74A0;
  if (!qword_1008E74A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E74A0);
  }

  return result;
}

unint64_t sub_1002F04D8()
{
  result = qword_1008E74A8;
  if (!qword_1008E74A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E74A8);
  }

  return result;
}

unint64_t sub_1002F052C()
{
  result = qword_1008E74B0;
  if (!qword_1008E74B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E74B0);
  }

  return result;
}

unint64_t sub_1002F0584()
{
  result = qword_1008E74B8;
  if (!qword_1008E74B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E74B8);
  }

  return result;
}

uint64_t sub_1002F05D8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1008DA8D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_10001AC90(v2, qword_1009255E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1002F06D0(uint64_t a1)
{
  v2 = sub_1002BFCDC();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1002F0720()
{
  result = qword_1008E74C0;
  if (!qword_1008E74C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E74C0);
  }

  return result;
}

unint64_t sub_1002F0778()
{
  result = qword_1008E74C8;
  if (!qword_1008E74C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E74C8);
  }

  return result;
}

unint64_t sub_1002F07D0()
{
  result = qword_1008E74D0;
  if (!qword_1008E74D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E74D0);
  }

  return result;
}

uint64_t sub_1002F0828(uint64_t a1)
{
  v2 = sub_1002F0584();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1002F0878()
{
  result = qword_1008E74D8;
  if (!qword_1008E74D8)
  {
    sub_100141EEC(&qword_1008E5E58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E74D8);
  }

  return result;
}

unint64_t sub_1002F08FC()
{
  v0 = sub_100140278(&qword_1008DDB78);
  __chkstk_darwin(v0 - 8);
  v51 = &v46 - v1;
  v2 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v2 - 8);
  v4 = &v46 - v3;
  v5 = type metadata accessor for LocalizedStringResource();
  v57 = v5;
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100140278(&qword_1008E74E0);
  v9 = sub_100140278(&qword_1008E74E8);
  v63 = v9;
  v10 = *(v9 - 8);
  v58 = *(v10 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  v48 = v12;
  *(v12 + 16) = xmmword_1006E76B0;
  v13 = (v12 + v11);
  *&v52 = *(v9 + 48);
  *v13 = 0;
  LocalizedStringResource.init(stringLiteral:)();
  v14 = *(v6 + 56);
  v6 += 56;
  v62 = v14;
  v14(v4, 1, 1, v5);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  v15 = sub_100140278(&qword_1008E60A0);
  v16 = *(v6 + 16);
  v17 = *(v6 + 24);
  v54 = v6;
  v60 = v17;
  v61 = v16;
  v18 = (v17 + 32) & ~v17;
  v19 = 2 * v16;
  v59 = v15;
  *(swift_allocObject() + 16) = xmmword_1006D64F0;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  *&v53 = v19;
  LocalizedStringResource.init(stringLiteral:)();
  v56 = v13;
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  v20 = v58;
  v47 = *(v63 + 48);
  v13[v58] = 1;
  v21 = v8;
  LocalizedStringResource.init(stringLiteral:)();
  v22 = v4;
  v62(v4, 1, 1, v57);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  v23 = swift_allocObject();
  v52 = xmmword_1006D1F70;
  *(v23 + 16) = xmmword_1006D1F70;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v55 = v21;
  v49 = v4;
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  v24 = 2 * v20;
  v25 = v63;
  v47 = *(v63 + 48);
  v56[2 * v20] = 2;
  LocalizedStringResource.init(stringLiteral:)();
  v26 = v22;
  v27 = v57;
  v28 = v62;
  v62(v26, 1, 1, v57);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  v50 = v18;
  *(swift_allocObject() + 16) = v52;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v29 = v49;
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  v30 = v24 + v58;
  v31 = v56;
  v32 = &v56[v30];
  v33 = *(v25 + 48);
  v46 = v32;
  v47 = v33;
  *v32 = 3;
  LocalizedStringResource.init(stringLiteral:)();
  v28(v29, 1, 1, v27);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  *(swift_allocObject() + 16) = v52;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  v34 = v58;
  *&v52 = 4 * v58;
  v35 = v63;
  v47 = *(v63 + 48);
  v31[4 * v58] = 4;
  LocalizedStringResource.init(stringLiteral:)();
  v36 = v57;
  v62(v29, 1, 1, v57);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  v37 = swift_allocObject();
  v53 = xmmword_1006D46C0;
  *(v37 + 16) = xmmword_1006D46C0;
  LocalizedStringResource.init(stringLiteral:)();
  v38 = v49;
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  v39 = v52 + v34;
  v40 = v56;
  *&v52 = *(v35 + 48);
  v56[v39] = 5;
  LocalizedStringResource.init(stringLiteral:)();
  v41 = v38;
  v42 = v38;
  v43 = v62;
  v62(v41, 1, 1, v36);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  *(swift_allocObject() + 16) = v53;
  LocalizedStringResource.init(stringLiteral:)();
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  v40[6 * v58] = 6;
  LocalizedStringResource.init(stringLiteral:)();
  v43(v42, 1, 1, v57);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  *(swift_allocObject() + 16) = v53;
  LocalizedStringResource.init(stringLiteral:)();
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  v44 = sub_1004CB548(v48);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v44;
}

unint64_t sub_1002F1344(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100844EE8, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1002F1390()
{
  result = qword_1008DEE18;
  if (!qword_1008DEE18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008DEE18);
  }

  return result;
}

void sub_1002F1408(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_1002F145C(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = OBJC_IVAR___CHWorkoutRouteViewController_mapView;
  *&v7[v13] = [objc_allocWithZone(MKMapView) init];
  v14 = OBJC_IVAR___CHWorkoutRouteViewController_toggleMapTypeButton;
  v15 = objc_opt_self();
  *&v7[v14] = [v15 buttonWithType:0];
  v16 = OBJC_IVAR___CHWorkoutRouteViewController_divider;
  *&v7[v16] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v17 = OBJC_IVAR___CHWorkoutRouteViewController_reportProblemButton;
  *&v7[v17] = [v15 buttonWithType:0];
  v18 = OBJC_IVAR___CHWorkoutRouteViewController_geoMapFeatureAccess;
  *&v7[v18] = [objc_allocWithZone(GEOMapFeatureAccess) init];
  *&v7[OBJC_IVAR___CHWorkoutRouteViewController_excludedActivityTypes] = a7;
  *&v7[OBJC_IVAR___CHWorkoutRouteViewController_locationReadings] = a1;
  v19 = &v7[OBJC_IVAR___CHWorkoutRouteViewController_shareText];
  *v19 = a5;
  v19[1] = a6;
  v7[OBJC_IVAR___CHWorkoutRouteViewController_sharingEnabled] = a4;
  v20 = a1;
  v21 = [v20 workout];
  *&v7[OBJC_IVAR___CHWorkoutRouteViewController_workout] = v21;
  v25.receiver = v7;
  v25.super_class = type metadata accessor for WorkoutRouteViewController();
  v22 = objc_msgSendSuper2(&v25, "initWithNibName:bundle:", 0, 0);
  v23 = String._bridgeToObjectiveC()();

  [v22 setTitle:v23];

  return v22;
}

void sub_1002F1728(char a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for WorkoutRouteViewController();
  objc_msgSendSuper2(&v9, "viewWillAppear:", a1 & 1);
  v3 = [v1 navigationItem];
  v4 = [objc_allocWithZone(UINavigationBarAppearance) init];
  [v3 setScrollEdgeAppearance:v4];

  v5 = [v1 tabBarController];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 tabBar];

    v8 = [objc_allocWithZone(UITabBarAppearance) init];
    [v7 setScrollEdgeAppearance:v8];
  }
}

id sub_1002F1944()
{
  v37.receiver = v0;
  v37.super_class = type metadata accessor for WorkoutRouteViewController();
  objc_msgSendSuper2(&v37, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR___CHWorkoutRouteViewController_mapView];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = result;
  [result bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v1 setFrame:{v5, v7, v9, v11}];
  result = [v0 navigationController];
  if (!result)
  {
    return result;
  }

  v12 = result;
  v13 = [result navigationBar];

  [v13 frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v38.origin.x = v15;
  v38.origin.y = v17;
  v38.size.width = v19;
  v38.size.height = v21;
  MaxY = CGRectGetMaxY(v38);
  result = [v0 view];
  if (!result)
  {
    goto LABEL_9;
  }

  v23 = result;
  [result bounds];
  v25 = v24;

  v26 = MaxY + 12.0;
  [*&v0[OBJC_IVAR___CHWorkoutRouteViewController_toggleMapTypeButton] setFrame:{v25 + -45.0 + -12.0, v26, 45.0, 45.0}];
  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v27 = result;
  [result bounds];
  v29 = v28;

  v30 = v26 + 45.0;
  [*&v0[OBJC_IVAR___CHWorkoutRouteViewController_reportProblemButton] setFrame:{v29 + -45.0 + -12.0, v30, 45.0, 45.0}];
  result = [v0 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v31 = result;
  [result bounds];
  v33 = v32;

  v34 = [objc_opt_self() mainScreen];
  [v34 scale];
  v36 = v35;

  return [*&v0[OBJC_IVAR___CHWorkoutRouteViewController_divider] setFrame:{v33 + -45.0 + -12.0, v30, 45.0, 1.0 / v36}];
}

void sub_1002F1C68()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for WorkoutRouteViewController();
  objc_msgSendSuper2(&v18, "viewDidLoad");
  v1 = [v0 navigationItem];
  v2 = objc_allocWithZone(UIBarButtonItem);
  v3 = v0;
  v4 = [v2 initWithBarButtonSystemItem:24 target:v3 action:"close"];
  [v1 setRightBarButtonItem:v4];

  v5 = v3;
  if (v3[OBJC_IVAR___CHWorkoutRouteViewController_sharingEnabled] == 1)
  {
    v6 = [v3 navigationItem];
    v5 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:9 target:v3 action:"shareButtonPressed"];

    [v6 setLeftBarButtonItem:v5];
  }

  v7 = *&v3[OBJC_IVAR___CHWorkoutRouteViewController_mapView];
  if ([*&v3[OBJC_IVAR___CHWorkoutRouteViewController_workout] workoutActivityType] == 84)
  {
    v8 = 2000.0;
  }

  else
  {
    v8 = 100.0;
  }

  v9 = [objc_allocWithZone(MKMapCameraZoomRange) initWithMinCenterCoordinateDistance:v8];
  [v7 setCameraZoomRange:v9];

  [v7 setDelegate:v3];
  [v7 _setEdgeInsets:{80.0, 40.0, 40.0, 40.0}];
  [v7 setShowsScale:0];
  [v7 setShowsCompass:0];
  [v7 setShowsAttribution:0];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_1002F2450(5);
  v10 = [v3 view];
  if (v10)
  {
    v11 = v10;
    [v10 addSubview:v7];

    v12 = *&v3[OBJC_IVAR___CHWorkoutRouteViewController_toggleMapTypeButton];
    v13 = objc_opt_self();
    v14 = [v13 secondarySystemBackgroundColor];
    [v12 setBackgroundColor:v14];

    v15 = [v13 whiteColor];
    [v12 setTintColor:v15];

    v16 = [v3 view];
    if (v16)
    {
      v17 = v16;
      [v16 addSubview:v12];

      [v12 addTarget:v3 action:"toggleMapType" forControlEvents:64];
      sub_1002F26A8();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1002F203C()
{
  v1 = sub_1002F2230();
  if (v1)
  {
    v2 = v1;
    sub_100140278(&qword_1008E7590);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1006D64F0;
    *(v3 + 56) = type metadata accessor for WorkoutRouteViewController();
    *(v3 + 32) = v0;
    v4 = sub_1000059F8(0, &qword_1008DD8C0);
    *(v3 + 64) = v2;
    v5 = *&v0[OBJC_IVAR___CHWorkoutRouteViewController_shareText];
    v6 = *&v0[OBJC_IVAR___CHWorkoutRouteViewController_shareText + 8];
    *(v3 + 120) = &type metadata for String;
    *(v3 + 88) = v4;
    *(v3 + 96) = v5;
    *(v3 + 104) = v6;
    v7 = objc_allocWithZone(UIActivityViewController);
    v8 = v0;
    v9 = v2;

    isa = Array._bridgeToObjectiveC()().super.isa;

    v12 = [v7 initWithActivityItems:isa applicationActivities:0];

    type metadata accessor for ActivityType(0);
    v11 = Array._bridgeToObjectiveC()().super.isa;
    [v12 setExcludedActivityTypes:v11];

    [v8 presentViewController:v12 animated:1 completion:0];
  }
}

uint64_t sub_1002F2230()
{
  [*&v0[OBJC_IVAR___CHWorkoutRouteViewController_mapView] bounds];
  v3 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{v1, v2}];
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1002F3EAC;
  *(v5 + 24) = v4;
  v10[4] = sub_1002F3F08;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1002F1408;
  v10[3] = &unk_100851C68;
  v6 = _Block_copy(v10);
  v7 = v0;

  v8 = [v3 imageWithActions:v6];

  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if ((v3 & 1) == 0)
  {
    return v8;
  }

  __break(1u);
  return result;
}

void sub_1002F2450(uint64_t a1)
{
  [*(v1 + OBJC_IVAR___CHWorkoutRouteViewController_mapView) setMapType:a1];
  v2 = *(v1 + OBJC_IVAR___CHWorkoutRouteViewController_toggleMapTypeButton);
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() systemImageNamed:v3];

  [v2 setImage:v4 forState:0];
  v5 = [objc_opt_self() mainBundle];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 localizedStringForKey:v6 value:0 table:0];

  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

  [v2 setAccessibilityLabel:v7];
}

void sub_1002F26A8()
{
  v5 = OBJC_IVAR___CHWorkoutRouteViewController_locationReadings;
  v6 = [*&v0[OBJC_IVAR___CHWorkoutRouteViewController_locationReadings] allValidLocations];
  v7 = sub_1000059F8(0, &qword_1008E55D0);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_30;
    }
  }

  else if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_30;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_34;
    }

    v9 = *(v8 + 32);
  }

  v10 = v9;

  v2 = &selRef_initWithLayer_;
  [v10 coordinate];
  v3 = v11;
  v4 = v12;

  v13 = [*&v0[v5] allValidLocations];
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v14 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
    if (v15)
    {
LABEL_8:
      v16 = __OFSUB__(v15, 1);
      v17 = v15 - 1;
      if (!v16)
      {
        if ((v14 & 0xC000000000000001) == 0)
        {
          if ((v17 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v17 < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v18 = *(v14 + 8 * v17 + 32);
            goto LABEL_13;
          }

          __break(1u);
          goto LABEL_38;
        }

LABEL_35:
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_13:
        v19 = v18;

        [v19 v2[122]];
        v21 = v20;
        v23 = v22;

        v45 = [objc_allocWithZone(type metadata accessor for WorkoutStartLocationAnnotation()) init];
        [v45 setCoordinate:{v3, v4}];
        v14 = *&v0[OBJC_IVAR___CHWorkoutRouteViewController_mapView];
        [v14 addAnnotation:v45];
        v1 = &selRef__setFont_;
        if ([*&v0[v5] count] == 1)
        {
          v48.latitude = v3;
          v48.longitude = v4;
          v24 = MKMapPointForCoordinate(v48);
          [v14 setVisibleMapRect:{v24.x, v24.y, 1500.0, 1500.0}];
          [v14 setCenterCoordinate:{v3, v4}];
          goto LABEL_41;
        }

        v13 = [objc_allocWithZone(type metadata accessor for WorkoutEndLocationAnnotation()) init];
        [v13 setCoordinate:{v21, v23}];
        [v14 addAnnotation:v13];
        v25 = [*&v0[v5] allValidLocations];
        v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (!(v7 >> 62))
        {
          v26 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v26)
          {
LABEL_17:
            v42 = v13;
            v43 = v14;
            v44 = v0;
            aBlock[0] = _swiftEmptyArrayStorage;
            sub_10018609C(0, v26 & ~(v26 >> 63), 0);
            if (v26 < 0)
            {
              __break(1u);
              return;
            }

            v27 = 0;
            v28 = aBlock[0];
            do
            {
              if ((v7 & 0xC000000000000001) != 0)
              {
                v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v29 = *(v7 + 8 * v27 + 32);
              }

              v30 = v29;
              [v29 v2[122]];
              v31 = MKMapPointForCoordinate(v49);

              aBlock[0] = v28;
              v33 = v28[2];
              v32 = v28[3];
              if (v33 >= v32 >> 1)
              {
                sub_10018609C((v32 > 1), v33 + 1, 1);
                v0 = v44;
                v28 = aBlock[0];
              }

              ++v27;
              v28[2] = v33 + 1;
              *&v28[2 * v33 + 4] = v31;
            }

            while (v26 != v27);

            v13 = v42;
            v14 = v43;
            v1 = &selRef__setFont_;
            goto LABEL_40;
          }

LABEL_39:

          v28 = _swiftEmptyArrayStorage;
LABEL_40:
          v34 = [objc_opt_self() polylineWithPoints:v28 + 4 count:{objc_msgSend(*&v0[v5], v1[503])}];

          [v14 addOverlay:v34 level:1];
          [v34 boundingMapRect];
          [v14 setVisibleMapRect:?];

LABEL_41:
          v35 = *&v0[OBJC_IVAR___CHWorkoutRouteViewController_workout];
          if ([v35 supportsTrackWorkout])
          {
            v36 = *&v0[OBJC_IVAR___CHWorkoutRouteViewController_geoMapFeatureAccess];
            [v36 setAllowNetworkTileLoad:1];
            [v36 setAllowStaleData:1];
            if ([v35 workoutActivityType] == 84)
            {
              v37 = 2000.0;
            }

            else
            {
              v37 = 100.0;
            }

            v38 = swift_allocObject();
            *(v38 + 16) = v0;
            aBlock[4] = sub_1002F3E7C;
            aBlock[5] = v38;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1002F2D10;
            aBlock[3] = &unk_100851BF0;
            v39 = _Block_copy(aBlock);
            v40 = v0;

            v41 = [v36 findRunningTrackFlagsNear:v39 radius:0 handler:v3 completionHandler:{v4, v37}];

            _Block_release(v39);
            swift_unknownObjectRelease();
          }

          else
          {
          }

          return;
        }

LABEL_38:
        v26 = _CocoaArrayWrapper.endIndex.getter();
        if (v26)
        {
          goto LABEL_17;
        }

        goto LABEL_39;
      }

LABEL_34:
      __break(1u);
      goto LABEL_35;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_8;
    }
  }

LABEL_30:
}

void sub_1002F2D10(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1002F2E60()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v0 view];
  if (v11)
  {
    v12 = v11;
    sub_1000059F8(0, &qword_1008E7580);
    v13 = UIFocusEnvironment.contains(_:)();

    if ((v13 & 1) == 0)
    {
      sub_1000059F8(0, &qword_1008E3FD0);
      v14 = static OS_dispatch_queue.main.getter();
      v15 = swift_allocObject();
      *(v15 + 16) = v1;
      aBlock[4] = sub_1002F3E74;
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000449A8;
      aBlock[3] = &unk_100851BA0;
      v16 = _Block_copy(aBlock);
      v17 = v1;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1000261C4();
      sub_100140278(&unk_1008E7F50);
      sub_10002621C();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v16);

      (*(v3 + 8))(v5, v2);
      (*(v7 + 8))(v10, v6);
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_1002F3154(char *a1)
{
  v2 = [*&a1[OBJC_IVAR___CHWorkoutRouteViewController_toggleMapTypeButton] layer];
  [v2 setMaskedCorners:3];

  v3 = *&a1[OBJC_IVAR___CHWorkoutRouteViewController_reportProblemButton];
  v4 = objc_opt_self();
  v5 = [v4 secondarySystemBackgroundColor];
  [v3 setBackgroundColor:v5];

  v6 = [v4 whiteColor];
  [v3 setTintColor:v6];

  v7 = [v3 layer];
  [v7 setMaskedCorners:12];

  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() systemImageNamed:v8];

  [v3 setImage:v9 forState:0];
  v10 = [objc_opt_self() mainBundle];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 localizedStringForKey:v11 value:0 table:0];

  if (!v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();
  }

  [v3 setAccessibilityLabel:v12];
  result = [a1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v14 = result;
  [result addSubview:v3];

  v15 = *&a1[OBJC_IVAR___CHWorkoutRouteViewController_divider];
  v16 = [v4 whiteColor];
  v17 = [v16 colorWithAlphaComponent:0.3];

  [v15 setBackgroundColor:v17];
  result = [a1 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v18 = result;
  [result addSubview:v15];

  return [v3 addTarget:a1 action:"reportProblem" forControlEvents:64];
}

id sub_1002F34BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutRouteViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1002F3764(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___CHWorkoutRouteViewController_locationReadings);
  *(v1 + OBJC_IVAR___CHWorkoutRouteViewController_locationReadings) = a1;
  v3 = a1;

  v4 = *(v1 + OBJC_IVAR___CHWorkoutRouteViewController_mapView);
  isa = [v4 annotations];
  if (!isa)
  {
    sub_100140278(&qword_1008E7568);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v4 removeAnnotations:isa];

  v6 = [v4 overlays];
  if (!v6)
  {
    sub_100140278(&unk_1008E7570);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = Array._bridgeToObjectiveC()().super.isa;
  }

  [v4 removeOverlays:v6];

  sub_1002F26A8();
}

void sub_1002F390C()
{
  v1 = OBJC_IVAR___CHWorkoutRouteViewController_mapView;
  *(v0 + v1) = [objc_allocWithZone(MKMapView) init];
  v2 = OBJC_IVAR___CHWorkoutRouteViewController_toggleMapTypeButton;
  v3 = objc_opt_self();
  *(v0 + v2) = [v3 buttonWithType:0];
  v4 = OBJC_IVAR___CHWorkoutRouteViewController_divider;
  *(v0 + v4) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR___CHWorkoutRouteViewController_reportProblemButton;
  *(v0 + v5) = [v3 buttonWithType:0];
  v6 = OBJC_IVAR___CHWorkoutRouteViewController_geoMapFeatureAccess;
  *(v0 + v6) = [objc_allocWithZone(GEOMapFeatureAccess) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1002F3A44(uint64_t a1)
{
  v2 = v1;
  v4 = [*(v1 + OBJC_IVAR___CHWorkoutRouteViewController_workout) metadata];
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v6 + 16))
  {

    goto LABEL_8;
  }

  v9 = sub_100066F20(v7, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_8:

    goto LABEL_9;
  }

  sub_10000B1B4(*(v6 + 56) + 32 * v9, v24);

  sub_1000059F8(0, &qword_1008E1750);
  if (swift_dynamicCast())
  {
    if ([v22 BOOLValue])
    {
      v12 = *(v2 + OBJC_IVAR___CHWorkoutRouteViewController_locationReadings);
      v13 = objc_allocWithZone(type metadata accessor for WorkoutExtendedModePathRenderer());
      v14 = v12;
      v15 = swift_unknownObjectRetain();
      sub_100372D94(v15, v14);
      v17 = v16;

      swift_unknownObjectRelease();
      return v17;
    }
  }

LABEL_9:
  v19 = *(v2 + OBJC_IVAR___CHWorkoutRouteViewController_locationReadings);
  v20 = objc_allocWithZone(type metadata accessor for WorkoutGradientPathRenderer());
  *&v20[OBJC_IVAR____TtC10FitnessApp26WorkoutOverlayPathRenderer_locationReadings] = v19;
  v23.receiver = v20;
  v23.super_class = type metadata accessor for WorkoutOverlayPathRenderer();
  v21 = v19;
  return objc_msgSendSuper2(&v23, "initWithOverlay:", a1);
}

id sub_1002F3C34(uint64_t a1)
{
  if ([*(v1 + OBJC_IVAR___CHWorkoutRouteViewController_workout) workoutActivityType] == 84)
  {
    v3 = [objc_allocWithZone(type metadata accessor for DivingLocationAnnotationView()) initWithAnnotation:a1 reuseIdentifier:0];
    [v3 setCollisionMode:2];
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for WorkoutLocationAnnotationView()) initWithAnnotation:a1 reuseIdentifier:0];
    [v3 setCollisionMode:2];
    type metadata accessor for WorkoutStartLocationAnnotation();
    if (swift_dynamicCastClass())
    {
      [v3 _setZIndex:2];
    }

    else
    {
      type metadata accessor for WorkoutEndLocationAnnotation();
      if (swift_dynamicCastClass())
      {
        [v3 _setZIndex:1];
      }
    }
  }

  return v3;
}

id sub_1002F3D4C()
{
  v0 = [objc_allocWithZone(LPLinkMetadata) init];
  v1 = sub_1002F2230();
  if (v1)
  {
    v2 = v1;
    v3 = UIImagePNGRepresentation(v1);
    if (v3)
    {
      v4 = v3;
      v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      v8 = objc_allocWithZone(LPImage);
      sub_100215414(v5, v7);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v10 = String._bridgeToObjectiveC()();
      v11 = [v8 initWithData:isa MIMEType:v10];

      sub_10000AF88(v5, v7);
      [v0 setImage:v11];

      sub_10000AF88(v5, v7);
    }
  }

  return v0;
}

void sub_1002F3E7C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    sub_1002F2E60();
  }
}

id sub_1002F3EAC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___CHWorkoutRouteViewController_mapView);
  [v1 bounds];

  return [v1 drawViewHierarchyInRect:1 afterScreenUpdates:?];
}

id sub_1002F3F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC10FitnessApp28DivingLocationAnnotationView_pinSize] = 0x402E000000000000;
  if (a3)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v17.receiver = v3;
  v17.super_class = type metadata accessor for DivingLocationAnnotationView();
  v6 = objc_msgSendSuper2(&v17, "initWithAnnotation:reuseIdentifier:", a1, v5);

  v7 = v6;
  [v7 setFrame:{0.0, 0.0, 15.0, 15.0}];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 clearColor];
  [v9 setBackgroundColor:v10];

  [v9 setCanShowCallout:0];
  v11 = String._bridgeToObjectiveC()();
  v12 = [objc_opt_self() systemImageNamed:v11];

  [v9 setGlyphImage:v12];
  v13 = [v8 whiteColor];
  [v9 setGlyphTintColor:v13];

  result = [objc_opt_self() diveColors];
  if (result)
  {
    v15 = result;

    v16 = [v15 nonGradientTextColor];

    [v9 setMarkerTintColor:v16];
    swift_unknownObjectRelease();

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1002F4218()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DivingLocationAnnotationView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_1002F4270(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1002F429C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002F42E4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1002F4368()
{
  static Font.body.getter();
  v0 = Font.bold()();

  qword_1008E75C8 = v0;
  return result;
}

uint64_t sub_1002F43A4()
{
  v0 = type metadata accessor for Color.RGBColorSpace();
  v1 = __chkstk_darwin(v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:), v1);
  result = Color.init(_:red:green:blue:opacity:)();
  qword_1008E75D0 = result;
  return result;
}

uint64_t sub_1002F4488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = sub_100140278(&qword_1008E75E0);
  __chkstk_darwin(v3 - 8);
  v86 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v84 = &v77 - v6;
  v81 = sub_100140278(&qword_1008E75E8);
  v7 = *(v81 - 8);
  __chkstk_darwin(v81);
  v9 = (&v77 - v8);
  v10 = sub_100140278(&qword_1008E75F0);
  __chkstk_darwin(v10);
  v12 = &v77 - v11;
  v13 = sub_100140278(&qword_1008E75F8);
  v78 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v77 - v14;
  v16 = sub_100140278(&qword_1008E7600);
  __chkstk_darwin(v16 - 8);
  v83 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v88 = &v77 - v19;
  v20 = sub_100140278(&qword_1008E7608);
  __chkstk_darwin(v20 - 8);
  v82 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v77 - v23;
  *&v26 = __chkstk_darwin(v25).n128_u64[0];
  v87 = &v77 - v27;
  v28 = *(a1 + 40);
  if ([v28 isCompetitionActive] & 1) != 0 || (objc_msgSend(v28, "hasCompetitionHistory"))
  {
    v29 = sub_100140278(&qword_1008E7610);
    (*(*(v29 - 8) + 56))(v24, 1, 1, v29);
  }

  else
  {
    sub_1002F4E10(v24);
    v30 = sub_100140278(&qword_1008E7610);
    (*(*(v30 - 8) + 56))(v24, 0, 1, v30);
  }

  sub_100015E80(v24, v87, &qword_1008E7608);
  v31 = [v28 isAwaitingCompetitionResponseFromMe];
  v79 = v12;
  v80 = a1;
  if (v31)
  {
    v32 = v15;
    v77 = v15;
    sub_1002F5030(v15);
    v33 = v78;
    v78[2](v12, v32, v13);
    swift_storeEnumTagMultiPayload();
    v34 = sub_100141EEC(&qword_1008E7618);
    v35 = sub_100141EEC(&qword_1008E7620);
    v36 = sub_100141EEC(&qword_1008E7628);
    v37 = type metadata accessor for BorderedProminentButtonStyle();
    v38 = sub_1002F71F8();
    v39 = sub_1002F72DC();
    v89 = v36;
    v90 = v37;
    v91 = v38;
    v92 = v39;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v41 = sub_1002F7334();
    v89 = v34;
    v90 = &type metadata for Solarium;
    v91 = v35;
    v92 = OpaqueTypeConformance2;
    v93 = &protocol witness table for Solarium;
    v94 = v41;
    swift_getOpaqueTypeConformance2();
    v42 = sub_100141EEC(&qword_1008E7650);
    v43 = v33;
    v44 = sub_100141EEC(&qword_1008E7658);
    v45 = sub_100141EEC(&qword_1008E7660);
    v46 = sub_1002F7448();
    v89 = v45;
    v90 = v37;
    v91 = v46;
    v92 = v39;
    v47 = swift_getOpaqueTypeConformance2();
    v48 = sub_1002F752C();
    v89 = v42;
    v90 = &type metadata for Solarium;
    v91 = v44;
    v92 = v47;
    v93 = &protocol witness table for Solarium;
    v94 = v48;
    swift_getOpaqueTypeConformance2();
    v49 = v88;
    _ConditionalContent<>.init(storage:)();
    (v43[1])(v77, v13);
  }

  else
  {
    sub_1002F53DC(v9);
    v50 = *(v7 + 16);
    v51 = v7;
    v52 = v81;
    v50(v12, v9, v81);
    swift_storeEnumTagMultiPayload();
    v53 = sub_100141EEC(&qword_1008E7618);
    v54 = sub_100141EEC(&qword_1008E7620);
    v55 = sub_100141EEC(&qword_1008E7628);
    v56 = type metadata accessor for BorderedProminentButtonStyle();
    v77 = v13;
    v57 = v56;
    v58 = sub_1002F71F8();
    v78 = v9;
    v59 = v58;
    v60 = sub_1002F72DC();
    v89 = v55;
    v90 = v57;
    v91 = v59;
    v92 = v60;
    v61 = swift_getOpaqueTypeConformance2();
    v62 = sub_1002F7334();
    v89 = v53;
    v90 = &type metadata for Solarium;
    v91 = v54;
    v92 = v61;
    v93 = &protocol witness table for Solarium;
    v94 = v62;
    swift_getOpaqueTypeConformance2();
    v63 = sub_100141EEC(&qword_1008E7650);
    v64 = sub_100141EEC(&qword_1008E7658);
    v65 = sub_100141EEC(&qword_1008E7660);
    v66 = sub_1002F7448();
    v89 = v65;
    v90 = v57;
    v91 = v66;
    v92 = v60;
    v67 = swift_getOpaqueTypeConformance2();
    v68 = sub_1002F752C();
    v89 = v63;
    v90 = &type metadata for Solarium;
    v91 = v64;
    v92 = v67;
    v93 = &protocol witness table for Solarium;
    v94 = v68;
    swift_getOpaqueTypeConformance2();
    v49 = v88;
    _ConditionalContent<>.init(storage:)();
    (*(v51 + 8))(v78, v52);
  }

  v69 = v84;
  sub_1002F5784(v84);
  v70 = v87;
  v71 = v82;
  sub_10001B104(v87, v82, &qword_1008E7608);
  v72 = v83;
  sub_10001B104(v49, v83, &qword_1008E7600);
  v73 = v86;
  sub_10001B104(v69, v86, &qword_1008E75E0);
  v74 = v85;
  sub_10001B104(v71, v85, &qword_1008E7608);
  v75 = sub_100140278(&qword_1008E7678);
  sub_10001B104(v72, v74 + *(v75 + 48), &qword_1008E7600);
  sub_10001B104(v73, v74 + *(v75 + 64), &qword_1008E75E0);
  sub_10000EA04(v69, &qword_1008E75E0);
  sub_10000EA04(v88, &qword_1008E7600);
  sub_10000EA04(v70, &qword_1008E7608);
  sub_10000EA04(v73, &qword_1008E75E0);
  sub_10000EA04(v72, &qword_1008E7600);
  return sub_10000EA04(v71, &qword_1008E7608);
}

uint64_t sub_1002F4E10@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100140278(&qword_1008E7680);
  __chkstk_darwin(v3 - 8);
  v5 = v26 - v4;
  v6 = sub_100140278(&qword_1008E7688);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = v26 - v8;
  *v5 = static VerticalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v10 = sub_100140278(&qword_1008E7690);
  sub_1002F5B8C(v1, &v5[*(v10 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100015E80(v5, v9, &qword_1008E7680);
  v11 = &v9[*(v7 + 44)];
  v12 = v26[5];
  *(v11 + 4) = v26[4];
  *(v11 + 5) = v12;
  *(v11 + 6) = v26[6];
  v13 = v26[1];
  *v11 = v26[0];
  *(v11 + 1) = v13;
  v14 = v26[3];
  *(v11 + 2) = v26[2];
  *(v11 + 3) = v14;
  v15 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_100015E80(v9, a1, &qword_1008E7688);
  result = sub_100140278(&qword_1008E7610);
  v25 = a1 + *(result + 36);
  *v25 = v15;
  *(v25 + 8) = v17;
  *(v25 + 16) = v19;
  *(v25 + 24) = v21;
  *(v25 + 32) = v23;
  *(v25 + 40) = 0;
  return result;
}

uint64_t sub_1002F5030@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26[1] = a1;
  v3 = type metadata accessor for BorderedProminentButtonStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&qword_1008E7628);
  __chkstk_darwin(v7);
  v9 = v26 - v8;
  v10 = sub_100140278(&qword_1008E7618);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v26 - v12;
  v14 = swift_allocObject();
  v15 = *(v2 + 80);
  *(v14 + 80) = *(v2 + 64);
  *(v14 + 96) = v15;
  *(v14 + 112) = *(v2 + 96);
  v16 = *(v2 + 16);
  *(v14 + 16) = *v2;
  *(v14 + 32) = v16;
  v17 = *(v2 + 48);
  *(v14 + 48) = *(v2 + 32);
  *(v14 + 64) = v17;
  v26[4] = v2;
  sub_1002F769C(v2, v27);
  sub_100140278(&qword_1008E76B0);
  sub_1002F76D4();
  Button.init(action:label:)();
  v18 = [objc_opt_self() as_competitionButtonGold];
  v19 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v27[0] = v19;
  v21 = AnyShapeStyle.init<A>(_:)();
  v22 = &v9[*(v7 + 36)];
  *v22 = KeyPath;
  v22[1] = v21;
  BorderedProminentButtonStyle.init()();
  v23 = sub_1002F71F8();
  v24 = sub_1002F72DC();
  View.buttonStyle<A>(_:)();
  (*(v4 + 8))(v6, v3);
  sub_10000EA04(v9, &qword_1008E7628);
  Solarium.init()();
  sub_100140278(&qword_1008E7620);
  v27[0] = v7;
  v27[1] = v3;
  v27[2] = v23;
  v27[3] = v24;
  swift_getOpaqueTypeConformance2();
  sub_1002F7334();
  View.staticIf<A, B>(_:then:)();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1002F53DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = type metadata accessor for BorderedProminentButtonStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&qword_1008E7660);
  __chkstk_darwin(v7);
  v9 = &v27[-1] - v8;
  v10 = sub_100140278(&qword_1008E7650);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27[-1] - v12;
  v14 = swift_allocObject();
  v15 = *(v2 + 80);
  *(v14 + 80) = *(v2 + 64);
  *(v14 + 96) = v15;
  *(v14 + 112) = *(v2 + 96);
  v16 = *(v2 + 16);
  *(v14 + 16) = *v2;
  *(v14 + 32) = v16;
  v17 = *(v2 + 48);
  *(v14 + 48) = *(v2 + 32);
  *(v14 + 64) = v17;
  sub_1002F769C(v2, v27);
  sub_100140278(&qword_1008DC530);
  sub_100065FB4();
  Button.init(action:label:)();
  v18 = [objc_opt_self() as_competitionButtonGold];
  v19 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v27[0] = v19;
  v21 = AnyShapeStyle.init<A>(_:)();
  v22 = &v9[*(v7 + 36)];
  *v22 = KeyPath;
  v22[1] = v21;
  BorderedProminentButtonStyle.init()();
  v23 = sub_1002F7448();
  v24 = sub_1002F72DC();
  View.buttonStyle<A>(_:)();
  (*(v4 + 8))(v6, v3);
  sub_10000EA04(v9, &qword_1008E7660);
  Solarium.init()();
  sub_100140278(&qword_1008E7658);
  v27[0] = v7;
  v27[1] = v3;
  v27[2] = v23;
  v27[3] = v24;
  swift_getOpaqueTypeConformance2();
  sub_1002F752C();
  View.staticIf<A, B>(_:then:)();
  return (*(v11 + 8))(v13, v10);
}