uint64_t sub_1003B4ADC(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_100140278(&qword_1008E4EC0);
  __chkstk_darwin(v6);
  v8 = &v76[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v76[-v10];
  v12 = type metadata accessor for TrendPairTableViewCell.TrailingMetricType(0);
  __chkstk_darwin(v12 - 8);
  v80 = &v76[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v79 = type metadata accessor for TrendListMetric();
  v14 = *(v79 - 8);
  __chkstk_darwin(v79);
  v84 = &v76[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v85 = &v76[-v17];
  __chkstk_darwin(v18);
  v86 = &v76[-v19];
  v20 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v22 = [a2 dequeueReusableCellWithIdentifier:v20 forIndexPath:isa];

  type metadata accessor for TrendPairTableViewCell(0);
  v23 = swift_dynamicCastClass();
  if (!v23)
  {
    goto LABEL_26;
  }

  v24 = v23;
  v81 = v11;
  v82 = v6;
  v78 = v8;
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = (v24 + OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_selectionFunction);
  *v25 = sub_1003B6CC0;
  v25[1] = v22;

  v26 = [v3 view];
  if (!v26)
  {
    __break(1u);
LABEL_26:

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v27 = v26;
  [v26 bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v87.origin.x = v29;
  v87.origin.y = v31;
  v87.size.width = v33;
  v87.size.height = v35;
  Width = CGRectGetWidth(v87);
  v37 = objc_opt_self();
  v38 = [v37 literUnitWithMetricPrefix:4];
  v39 = [v37 gramUnitWithMetricPrefix:9];
  v40 = [v37 minuteUnit];
  v41 = [v38 unitDividedByUnit:v39];
  v42 = [v41 unitDividedByUnit:v40];

  v43 = [objc_opt_self() quantityWithUnit:v42 doubleValue:99.99];
  v44 = sub_100602E08(v43, 4u);

  v45 = Width * 0.5 + -16.0 + -8.0 + -40.0 + -12.0;
  [v44 boundingRectWithSize:3 options:0 context:{1.79769313e308, 1.79769313e308}];
  v47 = v46;

  v48 = v47 < v45;
  v83 = v24;
  v49 = sub_1003B476C(a1, v48);
  v50 = *(v49 + 16);
  if (v50)
  {
    v77 = v47 < v45;
    v51 = OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_metricsByTrendType;
    swift_beginAccess();
    v52 = _swiftEmptyArrayStorage;
    v53 = 32;
    v54 = v14;
    do
    {
      v56 = *&v3[v51];
      if (*(v56 + 16))
      {
        v57 = sub_1004CD4B0(*(v49 + v53));
        if (v58)
        {
          v59 = *(v14 + 72);
          v60 = *(v56 + 56) + v59 * v57;
          v61 = v85;
          sub_1003B6CDC(v60, v85, type metadata accessor for TrendListMetric);
          sub_10025D2D0(v61, v86);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v52 = sub_1001A1EF0(0, v52[2] + 1, 1, v52);
          }

          v63 = v52[2];
          v62 = v52[3];
          if (v63 >= v62 >> 1)
          {
            v52 = sub_1001A1EF0(v62 > 1, v63 + 1, 1, v52);
          }

          v52[2] = v63 + 1;
          v55 = v52 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + v63 * v59;
          v14 = v54;
          sub_10025D2D0(v86, v55);
        }
      }

      ++v53;
      --v50;
    }

    while (v50);

    v48 = v77;
  }

  else
  {

    v52 = _swiftEmptyArrayStorage;
  }

  v64 = v52[2];
  v65 = v84;
  if (v64)
  {
    v66 = v52 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    sub_1003B6CDC(v66, v84, type metadata accessor for TrendListMetric);
    if (v64 == 1)
    {

      v67 = v80;
      if (v48)
      {
        v68 = 1;
      }

      else
      {
        v68 = 2;
      }

      (*(v14 + 56))(v80, v68, 2, v79);
    }

    else
    {
      v67 = v80;
      sub_1003B6CDC(v66 + *(v14 + 72), v80, type metadata accessor for TrendListMetric);

      (*(v14 + 56))(v67, 0, 2, v79);
    }

    v71 = v81;
    v70 = v82;
    v72 = *(v82 + 48);
    sub_1003B6CDC(v65, v81, type metadata accessor for TrendListMetric);
    sub_1003B6CDC(v67, v71 + v72, type metadata accessor for TrendPairTableViewCell.TrailingMetricType);
    v73 = v78;
    sub_1003B6D44(v71, v78);
    v74 = *(v70 + 48);
    v69 = v83;
    sub_100594FD8(v73, v73 + v74);
    sub_10000EA04(v71, &qword_1008E4EC0);
    sub_1003B6DB4(v67, type metadata accessor for TrendPairTableViewCell.TrailingMetricType);
    sub_1003B6DB4(v65, type metadata accessor for TrendListMetric);
    sub_1003B6DB4(v73 + v74, type metadata accessor for TrendPairTableViewCell.TrailingMetricType);
    sub_1003B6DB4(v73, type metadata accessor for TrendListMetric);
  }

  else
  {

    return v83;
  }

  return v69;
}

uint64_t sub_1003B52D0(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v41[1] = a5;
  v8 = v5;
  v10 = sub_100140278(&qword_1008E3D18);
  __chkstk_darwin(v10 - 8);
  v44 = v41 - v11;
  v12 = type metadata accessor for TrendListMetric();
  v42 = *(v12 - 8);
  v43 = v12;
  __chkstk_darwin(v12);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v41 - v16;
  v18 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v20 = [a2 dequeueReusableCellWithIdentifier:v18 forIndexPath:isa];

  type metadata accessor for TrendingDownTableViewCell();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    goto LABEL_10;
  }

  v22 = v21;
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = (v22 + OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_selectionFunction);
  *v24 = a3;
  v24[1] = v23;

  v25 = *(v5 + OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_dataProvider);
  v26 = IndexPath.row.getter();
  v27 = *a4;
  swift_beginAccess();
  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v28 = *(v25 + v27);
  if (v26 >= *(v28 + 16))
  {
LABEL_9:
    __break(1u);
LABEL_10:

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v29 = *(v28 + v26 + 32);
  v30 = OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_metricsByTrendType;
  swift_beginAccess();
  v31 = *(v8 + v30);
  if (*(v31 + 16))
  {
    v32 = sub_1004CD4B0(v29);
    if (v33)
    {
      v34 = v42;
      sub_1003B6CDC(*(v31 + 56) + *(v42 + 72) * v32, v14, type metadata accessor for TrendListMetric);
      sub_10025D2D0(v14, v17);
      v36 = v43;
      v35 = v44;
      sub_1003B6CDC(v17, v44, type metadata accessor for TrendListMetric);
      (*(v34 + 56))(v35, 0, 1, v36);
      v37 = OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_metric;
      swift_beginAccess();
      sub_1003B6E14(v35, v22 + v37);
      swift_endAccess();
      sub_100543264(v17, 0);
      v38 = *(v22 + OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_detailLabel);
      v39 = String._bridgeToObjectiveC()();
      [v38 setText:v39];

      sub_1003B6DB4(v17, type metadata accessor for TrendListMetric);
    }
  }

  return v22;
}

void sub_1003B56BC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1003B2EA0(a1);
  }
}

id sub_1003B5718(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = IndexPath.section.getter();
  if (v6 <= 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {

        return sub_1003B4ADC(a2, a1);
      }
    }

    else
    {
      v11 = String._bridgeToObjectiveC()();
      v12 = [a1 dequeueReusableCellWithIdentifier:v11];

      if (v12)
      {
        type metadata accessor for TrendsPregnancyDisclaimerCell();
        v13 = swift_dynamicCastClass();
        if (v13)
        {
          v14 = v13;
          if (*(v3 + OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_pregnancyState + 8))
          {
            v15 = 0;
          }

          else
          {
            v15 = *(v3 + OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_pregnancyState);
          }

          sub_10053D47C(v15);
          return v14;
        }
      }
    }

LABEL_26:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (v6 == 2)
  {
    v7 = &OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_orderedValidDownTrends;
    v8 = a2;
    v9 = a1;
    v10 = 533;
    return sub_1003B52D0(v8, v9, sub_1003B751C, v7, v10);
  }

  if (v6 == 3)
  {
    v7 = &OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_orderedInvalidTrends;
    v8 = a2;
    v9 = a1;
    v10 = 551;
    return sub_1003B52D0(v8, v9, sub_1003B751C, v7, v10);
  }

  if (v6 != 4)
  {
    goto LABEL_26;
  }

  v16 = String._bridgeToObjectiveC()();
  v14 = [a1 dequeueReusableCellWithIdentifier:v16];

  if (v14)
  {
    return v14;
  }

  v18 = objc_allocWithZone(UITableViewCell);

  return [v18 init];
}

char *sub_1003B5A98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100140278(&qword_1008EB540);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v113 - v8;
  if ([v3 tableView:a1 numberOfRowsInSection:{a2, v7}] < 1)
  {
    return 0;
  }

  v10 = 0;
  v11 = 0xE000000000000000;
  v12 = 1;
  if (a2 <= 1)
  {
    if (!a2)
    {
      return v10;
    }

    if (a2 != 1)
    {
      goto LABEL_28;
    }

    if ([v3 tableView:a1 numberOfRowsInSection:2] || (v32 = *&v3[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_userFirstName + 8]) == 0)
    {
      v13 = [objc_opt_self() mainBundle];
      v14 = String._bridgeToObjectiveC()();
      v15 = [v13 localizedStringForKey:v14 value:0 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v16;

LABEL_27:
      v10 = 0;
      v12 = 0;
      goto LABEL_28;
    }

    v33 = *&v3[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_userFirstName];
    v34 = objc_opt_self();

    v35 = [v34 mainBundle];
    v36 = String._bridgeToObjectiveC()();
    v37 = [v35 localizedStringForKey:v36 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100140278(&unk_1008E4E50);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1006D46C0;
    *(v38 + 56) = &type metadata for String;
    *(v38 + 64) = sub_10000A788();
    *(v38 + 32) = v33;
    *(v38 + 40) = v32;
    static String.localizedStringWithFormat(_:_:)();
    v11 = v39;

LABEL_26:

    goto LABEL_27;
  }

  switch(a2)
  {
    case 2:
      if ([v3 tableView:a1 numberOfRowsInSection:1])
      {
        v17 = [objc_opt_self() mainBundle];
        v18 = String._bridgeToObjectiveC()();
        v19 = [v17 localizedStringForKey:v18 value:0 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v20;

        v10 = 0;
        v12 = 1;
        break;
      }

      v25 = *&v3[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_userFirstName + 8];
      if (v25)
      {
        v26 = *&v3[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_userFirstName];
        v27 = objc_opt_self();

        v28 = [v27 mainBundle];
        v29 = String._bridgeToObjectiveC()();
        v30 = [v28 localizedStringForKey:v29 value:0 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100140278(&unk_1008E4E50);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1006D46C0;
        *(v31 + 56) = &type metadata for String;
        *(v31 + 64) = sub_10000A788();
        *(v31 + 32) = v26;
        *(v31 + 40) = v25;
        static String.localizedStringWithFormat(_:_:)();
      }

      else
      {
        v40 = [objc_opt_self() mainBundle];
        v41 = String._bridgeToObjectiveC()();
        v42 = [v40 localizedStringForKey:v41 value:0 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      sub_100140278(&unk_1008E7FB0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1006D1F70;
      *(inited + 32) = NSFontAttributeName;
      v44 = objc_opt_self();
      v45 = NSFontAttributeName;
      v46 = [v44 preferredFontForTextStyle:UIFontTextStyleSubheadline];
      v47 = sub_1000059F8(0, &qword_1008F73C0);
      *(inited + 40) = v46;
      *(inited + 64) = v47;
      *(inited + 72) = NSForegroundColorAttributeName;
      v48 = objc_opt_self();
      v49 = NSForegroundColorAttributeName;
      v50 = [v48 secondaryLabelColor];
      *(inited + 104) = sub_1000059F8(0, &qword_1008E7FC0);
      *(inited + 80) = v50;
      sub_1004C9200(inited);
      swift_setDeallocating();
      sub_100140278(&unk_1008EE730);
      swift_arrayDestroy();
      v51 = objc_allocWithZone(NSAttributedString);
      v52 = String._bridgeToObjectiveC()();

      type metadata accessor for Key(0);
      sub_10005FB54(&qword_1008E7FD0, type metadata accessor for Key);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v10 = [v51 initWithString:v52 attributes:isa];

      goto LABEL_23;
    case 3:
      if ([v3 tableView:a1 numberOfRowsInSection:1] || objc_msgSend(v3, "tableView:numberOfRowsInSection:", a1, 2))
      {
        v21 = [objc_opt_self() mainBundle];
        v22 = String._bridgeToObjectiveC()();
        v23 = [v21 localizedStringForKey:v22 value:0 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v24;

        v10 = 0;
        break;
      }

      v55 = objc_opt_self();
      v56 = [v55 mainBundle];
      v57 = String._bridgeToObjectiveC()();
      v58 = [v56 localizedStringForKey:v57 value:0 table:0];

      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;

      v134 = 10;
      v135 = 0xE100000000000000;
      v132 = v59;
      v133 = v61;
      v132 = String.init<A>(_:)();
      v133 = v62;
      String.append<A>(contentsOf:)();
      v63 = v132;
      v64 = v133;
      v65 = [v55 mainBundle];
      v66 = String._bridgeToObjectiveC()();
      v67 = [v65 localizedStringForKey:v66 value:0 table:0];

      v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v69;

      v134 = v68;
      v135 = v11;
      v132 = v63;
      v133 = v64;
      v70 = v64;
      v130 = v64;

      v132 = String.init<A>(_:)();
      v133 = v71;
      String.append<A>(contentsOf:)();
      v72 = v133;
      v131 = v132;
      v134 = v132;
      v135 = v133;
      v132 = v63;
      v133 = v70;
      v73 = type metadata accessor for Locale();
      v74 = *(*(v73 - 8) + 56);
      v74(v9, 1, 1, v73);
      v129 = sub_10000FCBC();
      v75 = StringProtocol.range<A>(of:options:range:locale:)();
      v127 = v76;
      v128 = v75;
      LOBYTE(v65) = v77;
      sub_10000EA04(v9, &qword_1008EB540);

      if (v65)
      {
        goto LABEL_26;
      }

      v134 = v131;
      v135 = v72;
      v132 = v68;
      v133 = v11;
      v74(v9, 1, 1, v73);
      v78 = StringProtocol.range<A>(of:options:range:locale:)();
      v80 = v79;
      v82 = v81;
      sub_10000EA04(v9, &qword_1008EB540);
      if (v82)
      {
        goto LABEL_26;
      }

      v91 = objc_allocWithZone(NSMutableAttributedString);
      v92 = v131;
      v93 = String._bridgeToObjectiveC()();
      v130 = v78;
      v94 = v93;
      v125 = [v91 initWithString:v93];

      v124 = sub_100140278(&unk_1008E7FB0);
      v95 = swift_initStackObject();
      v123 = xmmword_1006D1F70;
      *(v95 + 16) = xmmword_1006D1F70;
      v126 = v80;
      *(v95 + 32) = NSFontAttributeName;
      v96 = objc_opt_self();
      v122 = v96;
      v121 = NSFontAttributeName;
      v97 = [v96 preferredFontForTextStyle:UIFontTextStyleTitle2];
      v98 = sub_1000059F8(0, &qword_1008F73C0);
      v120 = v98;
      *(v95 + 40) = v97;
      *(v95 + 64) = v98;
      *(v95 + 72) = NSForegroundColorAttributeName;
      v99 = objc_opt_self();
      v118 = v99;
      v119 = NSForegroundColorAttributeName;
      v100 = [v99 labelColor];
      v117 = sub_1000059F8(0, &qword_1008E7FC0);
      *(v95 + 104) = v117;
      *(v95 + 80) = v100;
      sub_1004C9200(v95);
      swift_setDeallocating();
      v116 = sub_100140278(&unk_1008EE730);
      swift_arrayDestroy();
      type metadata accessor for Key(0);
      v115 = v101;
      sub_10005FB54(&qword_1008E7FD0, type metadata accessor for Key);
      v102 = Dictionary._bridgeToObjectiveC()().super.isa;

      v134 = v128;
      v135 = v127;
      v132 = v92;
      v133 = v72;
      v114 = v72;

      sub_100140278(&qword_1008EB548);
      sub_10014A6B0(&qword_1008EB550, &qword_1008EB548);
      v103 = _NSRange.init<A, B>(_:in:)();
      v104 = v125;
      [v125 addAttributes:v102 range:{v103, v105}];

      v106 = swift_initStackObject();
      *(v106 + 16) = v123;
      v107 = v122;
      *(v106 + 32) = v121;
      *(v106 + 40) = [v107 preferredFontForTextStyle:UIFontTextStyleSubheadline];
      v108 = v119;
      *(v106 + 64) = v120;
      *(v106 + 72) = v108;
      v109 = [v118 secondaryLabelColor];
      *(v106 + 104) = v117;
      *(v106 + 80) = v109;
      sub_1004C9200(v106);
      swift_setDeallocating();
      swift_arrayDestroy();
      v110 = Dictionary._bridgeToObjectiveC()().super.isa;

      v134 = v130;
      v135 = v126;
      v132 = v131;
      v133 = v114;
      v111 = _NSRange.init<A, B>(_:in:)();
      [v104 addAttributes:v110 range:{v111, v112}];

      v10 = [objc_allocWithZone(NSAttributedString) initWithAttributedString:v104];
LABEL_23:
      v54 = v10;
      v12 = 0;
      v11 = 0;
      break;
    case 4:
      return v10;
  }

LABEL_28:
  v83 = [objc_allocWithZone(type metadata accessor for TrendListHeaderView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v84 = v83;
  if ((v3[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_pregnancyState + 8] & 1) == 0)
  {
    v89 = *&v3[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_pregnancyState];
    if (v89 == 1)
    {
      v85 = 0.0;
      if (!v12)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (v89 == 2)
      {
        v90 = v12;
      }

      else
      {
        v90 = 1;
      }

      v85 = 0.0;
      if ((v90 & 1) == 0)
      {
        goto LABEL_30;
      }
    }
  }

  v85 = 25.0;
LABEL_30:
  [*&v83[OBJC_IVAR____TtC10FitnessApp19TrendListHeaderView_topConstraint] setConstant:v85];
  if (v11)
  {
    v86 = *&v84[OBJC_IVAR____TtC10FitnessApp19TrendListHeaderView_label];
    v87 = String._bridgeToObjectiveC()();

    [v86 setText:v87];
  }

  if (v10)
  {
    [*&v84[OBJC_IVAR____TtC10FitnessApp19TrendListHeaderView_label] setAttributedText:v10];
  }

  return v84;
}

uint64_t sub_1003B6C2C()
{
  result = type metadata accessor for AttributedString();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1003B6CDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003B6D44(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E4EC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003B6DB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003B6E14(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E3D18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003B7060(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  if (a1 <= 1)
  {
    if (!a1)
    {
      return ((*&v2[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_pregnancyState] - 1) < 2) & ~v2[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_pregnancyState + 8];
    }

    if (a1 != 1)
    {
      goto LABEL_13;
    }

    result = [v2 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v5 = result;
    [result bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v40.origin.x = v7;
    v40.origin.y = v9;
    v40.size.width = v11;
    v40.size.height = v13;
    Width = CGRectGetWidth(v40);
    v15 = objc_opt_self();
    v16 = [v15 literUnitWithMetricPrefix:4];
    v17 = [v15 gramUnitWithMetricPrefix:9];
    v18 = [v15 minuteUnit];
    v19 = [v16 unitDividedByUnit:v17];
    v20 = [v19 unitDividedByUnit:v18];

    v21 = [objc_opt_self() quantityWithUnit:v20 doubleValue:99.99];
    v32 = sub_100602E08(v21, 4u);

    v33 = Width * 0.5 + -16.0 + -8.0 + -40.0 + -12.0;
    [v32 boundingRectWithSize:3 options:0 context:{1.79769313e308, 1.79769313e308}];
    v35 = v34;

    if (v35 < v33)
    {
      v36 = *&v2[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_dataProvider];
      v37 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_orderedValidUpTrends;
      swift_beginAccess();
      return (*(*(v36 + v37) + 16) & 1) + (*(*(v36 + v37) + 16) >> 1);
    }

    v22 = *&v2[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_dataProvider];
    v23 = &OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_orderedValidUpTrends;
LABEL_19:
    v38 = *v23;
    swift_beginAccess();
    return *(*(v22 + v38) + 16);
  }

  switch(a1)
  {
    case 2:
      v22 = *&v2[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_dataProvider];
      v23 = &OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_orderedValidDownTrends;
      goto LABEL_19;
    case 3:
      v22 = *&v2[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_dataProvider];
      v23 = &OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_orderedInvalidTrends;
      goto LABEL_19;
    case 4:
      return 1;
  }

LABEL_13:
  v24 = static os_log_type_t.default.getter();
  v25 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v24))
  {
    v26 = v25;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v39[0] = v28;
    *v27 = 136315394;
    v29 = _typeName(_:qualified:)();
    v31 = sub_10000AFDC(v29, v30, v39);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2048;
    *(v27 + 14) = a1;
    _os_log_impl(&_mh_execute_header, v26, v24, "%s Unexpectedly encountered section with value %ld", v27, 0x16u);
    sub_100005A40(v28);
  }

  return 0;
}

unint64_t sub_1003B74BC()
{
  result = qword_1008EB5D8;
  if (!qword_1008EB5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EB5D8);
  }

  return result;
}

uint64_t sub_1003B7520(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_1000066AC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100140278(&qword_1008EB640);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

id sub_1003B75EC(uint64_t a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC10FitnessApp41ActivitySharingFriendDetailViewController_dataProviderObserver] = 0;
  *&v2[OBJC_IVAR____TtC10FitnessApp41ActivitySharingFriendDetailViewController_achievementTransitionAnimator] = 0;
  *&v2[OBJC_IVAR____TtC10FitnessApp41ActivitySharingFriendDetailViewController_dataProvider] = a1;
  *&v2[OBJC_IVAR____TtC10FitnessApp41ActivitySharingFriendDetailViewController_pauseRingsCoordinator] = a2;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for ActivitySharingFriendDetailViewController();

  v4 = a2;
  v5 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", 0, 0);
  result = [v5 tableView];
  if (result)
  {
    v7 = result;
    [result setSeparatorStyle:0];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003B76D8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v37.receiver = v0;
  v37.super_class = type metadata accessor for ActivitySharingFriendDetailViewController();
  objc_msgSendSuper2(&v37, "viewDidLoad");
  v3 = [v0 navigationItem];
  [v3 setLargeTitleDisplayMode:2];

  v4 = [v1 navigationItem];
  v5 = sub_1003B9D38();
  [v4 setRightBarButtonItem:v5];

  v6 = [v1 tableView];
  if (!v6)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = v6;
  [v6 setEstimatedRowHeight:100.0];

  v8 = [v1 tableView];
  if (!v8)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v9 = v8;
  [v8 setSectionHeaderTopPadding:0.0];

  v10 = [v1 tableView];
  if (!v10)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v11 = v10;

  v12 = [v1 tableView];
  if (!v12)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v13 = v12;
  v14 = sub_1003BE3A0();
  [v13 setTableFooterView:v14];

  v15 = [v1 tableView];
  if (!v15)
  {
    goto LABEL_35;
  }

  v16 = v15;
  v36 = ObjectType;
  type metadata accessor for ActivityTileSectionHeader();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = String._bridgeToObjectiveC()();
  [v16 registerClass:ObjCClassFromMetadata forHeaderFooterViewReuseIdentifier:v18];

  v19 = 0;
  do
  {
    v20 = *(&off_100845828 + v19 + 32);
    if (v20 > 4)
    {
      if (*(&off_100845828 + v19 + 32) <= 6u)
      {
        if (v20 == 5)
        {
          type metadata accessor for ActivitySharingFriendDetailPaletteTableViewCell();
          v21 = &off_10084EA10;
          goto LABEL_25;
        }

        goto LABEL_20;
      }

      if (v20 == 7)
      {
        type metadata accessor for ActivitySharingCompetitionActionListSwiftUITableViewCell();
        v21 = &off_10085B3D0;
      }

      else if (v20 == 8)
      {
        type metadata accessor for WorkoutsListTableViewCell();
        v21 = &off_100863458;
      }

      else
      {
        type metadata accessor for AwardsActivityTile();
        v21 = &off_100853768;
      }
    }

    else if (*(&off_100845828 + v19 + 32) <= 1u)
    {
      if (*(&off_100845828 + v19 + 32))
      {
        type metadata accessor for ActivitySharingFriendDetailCompetitionScoreTableViewCell();
        v21 = &off_10084EA20;
      }

      else
      {
        type metadata accessor for ActivitySharingHeaderSwiftUITableViewCell();
        v21 = &off_10084A950;
      }
    }

    else
    {
      if (v20 != 2)
      {
        if (v20 != 3)
        {
          type metadata accessor for TodayActivityTile();
          v21 = &off_100849ED0;
          goto LABEL_25;
        }

LABEL_20:
        type metadata accessor for ActivitySharingFriendDetailCompetitionTotalWinsTableViewCell();
        v21 = &off_100856BE8;
        goto LABEL_25;
      }

      type metadata accessor for ActivitySharingFriendDetailCompetitionGraphTableViewCell();
      v21 = &off_100854B78;
    }

LABEL_25:
    v22 = [v1 tableView];
    if (!v22)
    {
      __break(1u);
      goto LABEL_31;
    }

    v23 = v22;
    ++v19;
    v24 = swift_getObjCClassFromMetadata();
    (v21[1])();
    v25 = String._bridgeToObjectiveC()();

    [v23 registerClass:v24 forCellReuseIdentifier:v25];
  }

  while (v19 != 10);
  type metadata accessor for ActivitySharingFriendDetailDataProvider();
  sub_1003BFEC4(&unk_1008E8770, type metadata accessor for ActivitySharingFriendDetailDataProvider);
  ObservableObject<>.objectWillChange.getter();
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v36;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1003BFEB4;
  *(v28 + 24) = v27;
  type metadata accessor for ObservableObjectPublisher();
  v29 = Publisher<>.sink(receiveValue:)();

  *&v1[OBJC_IVAR____TtC10FitnessApp41ActivitySharingFriendDetailViewController_dataProviderObserver] = v29;

  type metadata accessor for ActivitySharingFriendDetailAlertCoordinator();
  sub_1003BFEC4(&qword_1008EB690, type metadata accessor for ActivitySharingFriendDetailAlertCoordinator);

  ObservedObject.init(wrappedValue:)();
  v30 = objc_allocWithZone(sub_100140278(&qword_1008EB698));

  v31 = UIHostingController.init(rootView:)();
  v32 = [v1 view];
  if (!v32)
  {
    goto LABEL_36;
  }

  v33 = v32;
  v34 = [v31 view];
  if (v34)
  {
    v35 = v34;
    [v33 addSubview:v34];

    return;
  }

LABEL_37:
  __break(1u);
}

uint64_t sub_1003B7D10()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v22 = *(v4 - 8);
  v23 = v4;
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = static os_log_type_t.default.getter();
  v8 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v7))
  {
    v9 = v8;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v1;
    v12 = v11;
    aBlock[0] = v11;
    *v10 = 136315138;
    v13 = _typeName(_:qualified:)();
    v15 = sub_10000AFDC(v13, v14, aBlock);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v7, "%s received object will change", v10, 0xCu);
    sub_100005A40(v12);
    v1 = v21;
  }

  sub_1000059F8(0, &qword_1008E3FD0);
  v16 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  aBlock[4] = sub_1003BFEBC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_100855E40;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1003BFEC4(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v1 + 8))(v3, v0);
  return (*(v22 + 8))(v6, v23);
}

void sub_1003B8104()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v25[2] = v22;
    v25[3] = v23;
    v26[0] = v24[0];
    *(v26 + 9) = *(v24 + 9);
    v25[0] = v20;
    v25[1] = v21;
    v2 = *(&v22 + 1);
    sub_100319D40(v25);
    v3 = [v2 isFriendshipCurrentlyActive];

    if ((v3 & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , v22 = v17, v23 = v18, v24[0] = *v19, *(v24 + 9) = *&v19[9], v20 = v15, v21 = v16, v4 = *(&v17 + 1), sub_100319D40(&v20), v5 = [v4 isMe], v4, v5))
    {
      v6 = [v1 navigationItem];
      v7 = sub_1003B9D38();
      [v6 setRightBarButtonItem:v7];

      v8 = v1;
      v9 = [v8 tableView];
      if (v9)
      {
        v10 = v9;
        [v9 reloadData];

        v11 = [v8 tableView];
        if (v11)
        {
          v12 = sub_1003BE3A0();
          [v11 setTableFooterView:v12];

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    else
    {
      v13 = [v1 navigationController];
      if (v13)
      {
        v14 = v13;
      }
    }
  }
}

uint64_t sub_1003B853C(void *a1, char *a2)
{
  KeyPath = v2;
  v6 = sub_100140278(&qword_1008EB658);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v85 - v8;
  v10 = IndexPath.section.getter();
  v11 = sub_1003D2448(v10);
  v12 = v11;
  if (v11 == 10)
  {
    goto LABEL_70;
  }

  sub_1003D1F9C(v11);
  (*(v13 + 8))();
  v14 = String._bridgeToObjectiveC()();

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v16 = [a1 dequeueReusableCellWithIdentifier:v14 forIndexPath:isa];

  v17 = [v16 setSelectionStyle:0];
  if (v12 <= 4)
  {
    if (v12 > 1)
    {
      if (v12 != 2)
      {
        if (v12 != 3)
        {
          type metadata accessor for TodayActivityTile();
          v18 = swift_dynamicCastClass();
          if (v18)
          {
            v19 = *(*&KeyPath[OBJC_IVAR____TtC10FitnessApp41ActivitySharingFriendDetailViewController_dataProvider] + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_fiuiFormattingManager);
            v20 = *(v18 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_formattingManager);
            *(v18 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_formattingManager) = v19;
            v86 = v16;
            v21 = v19;

            swift_getKeyPath();
            swift_getKeyPath();
            static Published.subscript.getter();

            v99 = v104;
            v100 = v105;
            v101[0] = *v106;
            *(v101 + 9) = *&v106[9];
            v97 = v102;
            v98 = v103;
            v22 = *(&v105 + 1);
            v23 = *(&v105 + 1);
            sub_100319D40(&v97);
            swift_getKeyPath();
            swift_getKeyPath();
            static Published.subscript.getter();

            v104 = v94;
            v105 = v95;
            *v106 = v96[0];
            *&v106[9] = *(v96 + 9);
            v102 = v92;
            v103 = v93;
            sub_100319D40(&v102);
            LODWORD(v85) = v106[24];
            if (v22)
            {
              v24 = [v23 _wheelchairUse] == 2;
            }

            else
            {
              v24 = 0;
            }

            swift_getKeyPath();
            swift_getKeyPath();
            static Published.subscript.getter();

            v94 = v89;
            v95 = v90;
            v96[0] = v91[0];
            *(v96 + 9) = *(v91 + 9);
            v92 = v87;
            v93 = v88;
            v70 = *(&v89 + 1);
            sub_100319D40(&v92);
            v71 = [v70 isMe];

            if (v71)
            {
              if (v22)
              {
                v72 = [v23 paused];
              }

              else
              {
                v72 = [*&KeyPath[OBJC_IVAR____TtC10FitnessApp41ActivitySharingFriendDetailViewController_pauseRingsCoordinator] isPaused];
              }

              v73 = v72;
            }

            else
            {
              v73 = 0;
            }

            sub_1001B6B84(v22, v24, 1, v73, v85);

            goto LABEL_58;
          }

          return v16;
        }

LABEL_23:
        type metadata accessor for ActivitySharingFriendDetailCompetitionTotalWinsTableViewCell();
        if (swift_dynamicCastClass())
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v52 = v16;
          static Published.subscript.getter();

          v104 = v99;
          v105 = v100;
          *v106 = v101[0];
          *&v106[9] = *(v101 + 9);
          v102 = v97;
          v103 = v98;
          v53 = *(&v99 + 1);
          sub_100319D40(&v102);
          sub_1003DA870(v53);
        }

        return v16;
      }

      type metadata accessor for ActivitySharingFriendDetailCompetitionGraphTableViewCell();
      v54 = swift_dynamicCastClass();
      if (!v54)
      {
        return v16;
      }

      v55 = v54;
      swift_getKeyPath();
      swift_getKeyPath();
      v56 = v16;
      static Published.subscript.getter();

      v104 = v99;
      v105 = v100;
      *v106 = v101[0];
      *&v106[9] = *(v101 + 9);
      v102 = v97;
      v103 = v98;
      v57 = *(&v99 + 1);
      sub_100319D40(&v102);
      v58 = *(v55 + OBJC_IVAR____TtC10FitnessApp56ActivitySharingFriendDetailCompetitionGraphTableViewCell_graphView);
      v23 = [v57 currentCompetition];
      [v58 setCompetition:v23];
      goto LABEL_43;
    }

    if (v12)
    {
      type metadata accessor for ActivitySharingFriendDetailCompetitionScoreTableViewCell();
      v67 = swift_dynamicCastClass();
      if (!v67)
      {
        return v16;
      }

      v68 = v67;
      swift_getKeyPath();
      swift_getKeyPath();
      v56 = v16;
      static Published.subscript.getter();

      v104 = v99;
      v105 = v100;
      *v106 = v101[0];
      *&v106[9] = *(v101 + 9);
      v102 = v97;
      v103 = v98;
      v57 = *(&v99 + 1);
      sub_100319D40(&v102);
      v69 = *(v68 + OBJC_IVAR____TtC10FitnessApp56ActivitySharingFriendDetailCompetitionScoreTableViewCell_scoreView);
      v23 = [v57 currentCompetition];
      [v69 setFriend:v57 competition:v23];
LABEL_43:

      goto LABEL_58;
    }

    __chkstk_darwin(v17);
    *(&v103 + 1) = sub_100140278(&qword_1008EB670);
    *&v104 = sub_10014A6B0(&qword_1008EB678, &qword_1008EB670);
    sub_100005994(&v102);
    sub_1003BFA60();
    UIHostingConfiguration<>.init(content:)();
LABEL_28:
    UITableViewCell.contentConfiguration.setter();
    return v16;
  }

  if (v12 <= 6)
  {
    if (v12 != 5)
    {
      goto LABEL_23;
    }

    type metadata accessor for ActivitySharingFriendDetailPaletteTableViewCell();
    if (!swift_dynamicCastClass())
    {
      return v16;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v51 = v16;
    static Published.subscript.getter();

    v104 = v99;
    v105 = v100;
    *v106 = v101[0];
    *&v106[9] = *(v101 + 9);
    v102 = v97;
    v103 = v98;
    v23 = *(&v99 + 1);
    sub_100319D40(&v102);
    sub_10026BB7C(v23, *&KeyPath[OBJC_IVAR____TtC10FitnessApp41ActivitySharingFriendDetailViewController_pauseRingsCoordinator]);

LABEL_58:
    return v16;
  }

  if (v12 == 7)
  {
    __chkstk_darwin(v17);
    sub_1003BFA04();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.top.getter();
    *(&v103 + 1) = v6;
    *&v104 = sub_10014A6B0(&qword_1008EB668, &qword_1008EB658);
    sub_100005994(&v102);
    UIHostingConfiguration.margins(_:_:)();
    (*(v7 + 8))(v9, v6);
    goto LABEL_28;
  }

  if (v12 == 8)
  {
    type metadata accessor for WorkoutsListTableViewCell();
    v25 = swift_dynamicCastClass();
    if (!v25)
    {
      return v16;
    }

    v26 = v25;
    v27 = *&KeyPath[OBJC_IVAR____TtC10FitnessApp41ActivitySharingFriendDetailViewController_dataProvider];
    swift_getKeyPath();
    KeyPath = swift_getKeyPath();
    v28 = v16;
    static Published.subscript.getter();

    v105 = v100;
    *v106 = v101[0];
    v103 = v98;
    v104 = v99;
    *&v106[9] = *(v101 + 9);
    v102 = v97;
    v29 = *&v101[0];

    sub_100319D40(&v102);
    v30 = a2;
    v31 = IndexPath.row.getter();
    v86 = v28;
    if ((v29 & 0xC000000000000001) != 0)
    {
      v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_17;
    }

    if ((v31 & 0x8000000000000000) == 0)
    {
      if (v31 < *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v32 = *(v29 + 8 * v31 + 32);
LABEL_17:
        v33 = v32;

        v34 = [objc_opt_self() clearColor];
        v35 = OBJC_IVAR___CHWorkoutsListTableViewCell_workoutContentView;
        [*(*(v26 + OBJC_IVAR___CHWorkoutsListTableViewCell_workoutContentView) + OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_insetContentView) setBackgroundColor:v34];

        [*(*(*(v26 + v35) + OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_workoutCellImageLabelView) + OBJC_IVAR___CHWorkoutCellImageLabelView_separatorView) setHidden:0];
        v36 = *&v27[OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_fitnessAppContext];
        v37 = *&v27[OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_workoutFormattingManager];
        v38 = *(v26 + v35);
        v39 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v40 = swift_allocObject();
        v40[3] = 0;
        v40[4] = 0;
        v40[2] = v39;
        v41 = *&v38[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_workout];
        *&v38[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_workout] = v33;
        v85 = v33;
        v42 = v36;
        v43 = v37;

        *&v38[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_achievementCount] = 0;
        v44 = *&v38[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_formattingManager];
        *&v38[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_formattingManager] = v43;
        v45 = v43;

        v38[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_diveDisplayStyle] = 0;
        v46 = *&v38[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_workoutCellImageLabelView];
        v47 = *(v46 + OBJC_IVAR___CHWorkoutCellImageLabelView_workout);
        *(v46 + OBJC_IVAR___CHWorkoutCellImageLabelView_workout) = v33;

        v48 = *(v46 + OBJC_IVAR___CHWorkoutCellImageLabelView_fitnessAppContext);
        *(v46 + OBJC_IVAR___CHWorkoutCellImageLabelView_fitnessAppContext) = v42;
        v49 = v42;

        v50 = *(v46 + OBJC_IVAR___CHWorkoutCellImageLabelView_formattingManager);
        *(v46 + OBJC_IVAR___CHWorkoutCellImageLabelView_formattingManager) = v43;

        *(v46 + OBJC_IVAR___CHWorkoutCellImageLabelView_achievementCount) = 0;
        *(v46 + OBJC_IVAR___CHWorkoutCellImageLabelView_diveDisplayStyle) = 0;
        sub_100697158(sub_100175B38, v40);
        sub_100698004();
        [v38 configureWithCurrentWorkout];

        return v16;
      }

      goto LABEL_65;
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_39;
  }

  type metadata accessor for AwardsActivityTile();
  v59 = swift_dynamicCastClass();
  if (!v59)
  {
    return v16;
  }

  v30 = v59;
  v26 = *&KeyPath[OBJC_IVAR____TtC10FitnessApp41ActivitySharingFriendDetailViewController_dataProvider];
  swift_getKeyPath();
  swift_getKeyPath();
  a2 = v16;
  static Published.subscript.getter();

  *&v106[9] = *(v101 + 9);
  v105 = v100;
  *v106 = v101[0];
  v103 = v98;
  v104 = v99;
  v102 = v97;
  v60 = *(&v101[0] + 1);

  sub_100319D40(&v102);
  if (v60 >> 62)
  {
    v28 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v28 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(v101 + 9) = *(v96 + 9);
  v100 = v95;
  v101[0] = v96[0];
  v98 = v93;
  v99 = v94;
  v97 = v92;
  v61 = *(&v96[0] + 1);

  sub_100319D40(&v97);
  if ((v61 & 0xC000000000000001) != 0)
  {
    v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_64;
    }

    v62 = *(v61 + 32);
  }

  v27 = v62;

  if (v28 < 2)
  {
    v63 = 0;
    v66 = 0;
    goto LABEL_54;
  }

  v63 = swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(v96 + 9) = *(v91 + 9);
  v95 = v90;
  v96[0] = v91[0];
  v93 = v88;
  v94 = v89;
  v92 = v87;
  v64 = *(&v91[0] + 1);

  sub_100319D40(&v92);
  if ((v64 & 0xC000000000000001) != 0)
  {
    goto LABEL_66;
  }

  if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
    __break(1u);
LABEL_68:
    v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_53;
  }

  v65 = *(v64 + 40);
LABEL_39:
  v63 = v65;

  if (v28 == 2)
  {
    v66 = 0;
LABEL_54:
    v76 = [objc_opt_self() clearColor];
    [*&v30[OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_insetContentView] setBackgroundColor:v76];

    v77 = *(v26 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_achievementLocalizationProvider);
    v78 = *(v26 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_achievementBadgeImageFactory);
    v79 = v77;
    sub_100339968(v27, v63, v66, v78, v79, 1);

    v80 = swift_allocObject();
    *(v80 + 16) = KeyPath;
    v81 = &v30[OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_onDidTapAchievement];
    v82 = *&v30[OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_onDidTapAchievement];
    *v81 = sub_1003BF9D8;
    v81[1] = v80;
    v83 = KeyPath;
    sub_1000245E0(v82);

    return v16;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(v96 + 9) = *(v91 + 9);
  v95 = v90;
  v96[0] = v91[0];
  v93 = v88;
  v94 = v89;
  v92 = v87;
  v74 = *(&v91[0] + 1);

  sub_100319D40(&v92);
  if ((v74 & 0xC000000000000001) != 0)
  {
    goto LABEL_68;
  }

  if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
  {
    v75 = *(v74 + 48);
LABEL_53:
    v66 = v75;

    goto LABEL_54;
  }

  __break(1u);
LABEL_70:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1003B960C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v9[2] = v6;
  v9[3] = v7;
  v10[0] = *v8;
  *(v10 + 9) = *&v8[9];
  v9[0] = v4;
  v9[1] = v5;
  v2 = *(&v6 + 1);
  result = sub_100319D40(v9);
  *a1 = v2;
  return result;
}

id sub_1003B96C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC10FitnessApp41ActivitySharingFriendDetailViewController_dataProvider);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *v11 = *&v10[9];
  v4 = *(v3 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_achievementBadgeImageFactory);
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  *(a2 + 64) = *v10;
  *(a2 + 80) = *&v11[7];
  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 96) = v4;

  return v4;
}

uint64_t sub_1003B98AC(void *a1, unint64_t a2)
{
  v4 = sub_1003D2448(a2);
  v5 = v4;
  if (v4 < 7u || v4 - 8 < 2)
  {
    goto LABEL_3;
  }

  if (v4 == 7)
  {
    v18 = [v2 tableView];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 numberOfRowsInSection:6];

      if (v20)
      {
        v6 = 0;
        v8 = 0;
LABEL_4:
        v9 = sub_1003D20C4(v5);
        if (!(v8 | v10))
        {
          return 0;
        }

        v12 = v10;
        v13 = v9;
        v14 = String._bridgeToObjectiveC()();
        v11 = [a1 dequeueReusableHeaderFooterViewWithIdentifier:v14];

        if (v5 >= 8u)
        {
          if (v5 == 8)
          {
            v15 = sub_1003BF994;
          }

          else
          {
            v15 = sub_1003BF950;
          }

          v16 = swift_allocObject();
          *(v16 + 16) = v2;
          v21 = v2;
          if (!v11)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v15 = 0;
          v16 = 0;
          if (!v11)
          {
            goto LABEL_18;
          }
        }

        type metadata accessor for ActivityTileSectionHeader();
        if (swift_dynamicCastClass())
        {
          v17 = v11;
          sub_10050ADC0(v6, v8, v13, v12, v15, v16, 18.0);
          sub_1000245E0(v15);

LABEL_19:

          return v11;
        }

LABEL_18:
        sub_1000245E0(v15);
        goto LABEL_19;
      }

      v4 = 7;
LABEL_3:
      v6 = sub_1003D2230(v4);
      v8 = v7;
      goto LABEL_4;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_1003B9B8C(void *a1, unint64_t a2)
{
  v4 = sub_1003D2448(a2);
  v5 = v4;
  if (v4 < 7u || v4 - 8 < 2)
  {
    sub_1003D2230(v4);
    if (v6)
    {
LABEL_5:

      return [a1 numberOfRowsInSection:v5];
    }

    goto LABEL_4;
  }

  if (v4 != 7)
  {
LABEL_13:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v9 = [v2 tableView];
  if (!v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  v11 = [v9 numberOfRowsInSection:6];

  if (!v11)
  {
    sub_1003D2230(7u);
    if (v12)
    {
      goto LABEL_5;
    }
  }

LABEL_4:
  result = sub_1003D20C4(v5);
  if (v8)
  {
    goto LABEL_5;
  }

  return result;
}

Class sub_1003B9D38()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v44[2] = v41;
  v44[3] = v42;
  v45[0] = v43[0];
  *(v45 + 9) = *(v43 + 9);
  v44[0] = v39;
  v44[1] = v40;
  v0 = *(&v41 + 1);
  sub_100319D40(v44);
  v1 = [v0 isMe];

  if (v1)
  {
    return 0;
  }

  v3 = &selRef_setNavigationBarHidden_animated_;
  if (_UISolariumEnabled())
  {
    v4 = String._bridgeToObjectiveC()();
    v5 = [objc_opt_self() systemImageNamed:v4];
LABEL_8:

    goto LABEL_10;
  }

  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() systemImageNamed:v6];

  if (v7)
  {
    v8 = objc_opt_self();
    v9 = [v8 configurationWithWeight:9];
    v10 = [v7 imageByApplyingSymbolConfiguration:v9];

    if (v10)
    {
      sub_100140278(&unk_1008E4E20);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1006D68D0;
      v12 = objc_opt_self();
      *(v11 + 32) = [v12 lightGrayColor];
      *(v11 + 40) = [v12 darkGrayColor];
      sub_1000059F8(0, &qword_1008E7FC0);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v4 = [v8 configurationWithPaletteColors:isa];

      v5 = [v10 imageByApplyingSymbolConfiguration:v4];
      v3 = &selRef_setNavigationBarHidden_animated_;
      goto LABEL_8;
    }
  }

  v5 = 0;
  v3 = &selRef_setNavigationBarHidden_animated_;
LABEL_10:
  v32 = v5;
  v31 = v5;
  for (i = 0; i != 5; ++i)
  {
    v23 = *(&off_100845800 + i + 32);
    if (v23 != 3 || os_variant_has_internal_ui())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v41 = v36;
      v42 = v37;
      v43[0] = *v38;
      *(v43 + 9) = *&v38[9];
      v39 = v34;
      v40 = v35;
      v24 = *(&v36 + 1);
      sub_100319D40(&v39);
      sub_1001D1460(v24, v23);

      v15 = v23 == 4;
      v16 = String._bridgeToObjectiveC()();

      v17 = [objc_opt_self() v3[436]];

      v18 = *(&off_100855E90 + v23);
      v19 = swift_allocObject();
      *(v19 + 16) = v33;
      v20 = 2 * v15;
      sub_1000059F8(0, &qword_1008E0C88);
      v21 = swift_allocObject();
      *(v21 + 16) = v18;
      *(v21 + 24) = v19;
      v22 = v33;
      children._rawValue = v20;
      UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v3 = &selRef_setNavigationBarHidden_animated_;
    }
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    sub_1000059F8(0, &qword_1008EAA38);

    preferredElementSize = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_1000059F8(0, &qword_1008EAA38);
    preferredElementSize = _swiftEmptyArrayStorage;
  }

  sub_1000059F8(0, &qword_1008EB650);
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v47.value.super.isa = 0;
  v47.is_nil = 0;
  v27 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v26, 0, v47, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, children).super.super.isa;
  sub_1000059F8(0, &qword_1008EB5C0);
  v28 = v27;
  v46.value.super.isa = v32;
  v46.is_nil = 0;
  v48.value.super.super.isa = v27;
  v29 = UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v46, v48, v49).super.super.isa;

  return v29;
}

uint64_t sub_1003BA45C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = a2;
  v10[5] = a3;
  sub_10026E198(0, 0, v7, &unk_1006ED418, v10);
}

uint64_t sub_1003BA584(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_1001D0380;

  return v8();
}

uint64_t sub_1003BA694()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002BBC0;

  return sub_1003BA964();
}

uint64_t sub_1003BA724()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002BACC;

  return sub_1003BB068();
}

uint64_t sub_1003BA7B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002BBC0;

  return sub_1003BBDE0();
}

uint64_t sub_1003BA844()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002BBC0;

  return sub_1003BCF64();
}

uint64_t sub_1003BA8D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002BBC0;

  return sub_1003BD43C();
}

uint64_t sub_1003BA964()
{
  *(v1 + 304) = v0;
  type metadata accessor for MainActor();
  *(v1 + 312) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003BAA30, v3, v2);
}

uint64_t sub_1003BAA30()
{
  v1 = [objc_allocWithZone(CNContactStore) init];
  sub_100140278(&unk_1008E4E20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1006D68C0;
  *(v2 + 32) = CNContactEmailAddressesKey;
  *(v2 + 40) = CNContactPhoneNumbersKey;
  v3 = objc_opt_self();
  v4 = CNContactEmailAddressesKey;
  v5 = CNContactPhoneNumbersKey;
  *(v2 + 48) = [v3 descriptorForRequiredKeys];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = *(v0 + 160);
  *(v0 + 48) = *(v0 + 144);
  *(v0 + 64) = v6;
  *(v0 + 80) = *(v0 + 176);
  *(v0 + 89) = *(v0 + 185);
  v7 = *(v0 + 128);
  *(v0 + 16) = *(v0 + 112);
  *(v0 + 32) = v7;
  v8 = *(v0 + 56);
  sub_100319D40(v0 + 16);
  v9 = [v8 contact];

  if (v9)
  {
    v10 = [v9 linkedContactStoreIdentifier];

    if (v10)
    {
      sub_100140278(&unk_1008E53F0);
      isa = Array._bridgeToObjectiveC()().super.isa;
      *(v0 + 112) = 0;
      v12 = [v1 unifiedContactWithIdentifier:v10 keysToFetch:isa error:v0 + 112];

      v13 = *(v0 + 112);
      if (v12)
      {
        v14 = v13;
        v15 = [v3 viewControllerForContact:v12];

        goto LABEL_9;
      }

      v16 = v13;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v17 = *(v0 + 256);
  *(v0 + 144) = *(v0 + 240);
  *(v0 + 160) = v17;
  *(v0 + 176) = *(v0 + 272);
  *(v0 + 185) = *(v0 + 281);
  v18 = *(v0 + 224);
  *(v0 + 112) = *(v0 + 208);
  *(v0 + 128) = v18;
  v19 = *(v0 + 152);
  sub_100319D40(v0 + 112);
  v20 = [v19 contact];

  if (v20)
  {
    v21 = [v20 primaryDestinationForMessaging];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = String._bridgeToObjectiveC()();
  }

  v22 = [objc_opt_self() contactWithDisplayName:0 emailOrPhoneNumber:v20];

  v15 = [v3 viewControllerForUnknownContact:v22];
LABEL_9:
  v23 = objc_allocWithZone(UINavigationController);
  v24 = v15;
  v25 = [v23 init];
  sub_1000059F8(0, &qword_1008E0C88);
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  v27 = v25;
  v28 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v29 = [v24 navigationItem];
  sub_1000059F8(0, &qword_1008EB5C0);
  v30 = v28;
  v41.value.super.super.isa = v28;
  v41.is_nil = 0;
  v31 = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemDone, v41, v42).super.super.isa;
  [v29 setLeftBarButtonItem:v31];

  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1006D4E70;
  *(v32 + 32) = v24;
  sub_1000059F8(0, &qword_1008E4DD0);
  v33 = Array._bridgeToObjectiveC()().super.isa;

  [v27 setViewControllers:v33];

  v34 = [v27 view];
  if (!v34)
  {
    __break(1u);
  }

  v35 = v34;
  v36 = *(v0 + 304);

  v37 = [objc_opt_self() systemBlueColor];
  [v35 setTintColor:v37];

  [v36 presentViewController:v27 animated:1 completion:0];
  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1003BB068()
{
  v1[191] = v0;
  v1[192] = sub_100140278(&unk_1008DB8A0);
  v1[193] = swift_task_alloc();
  v1[194] = swift_task_alloc();
  v1[195] = swift_task_alloc();
  v1[196] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[197] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[198] = v3;
  v1[199] = v2;

  return _swift_task_switch(sub_1003BB164, v3, v2);
}

uint64_t sub_1003BB164()
{
  v1 = *(*(v0 + 1528) + OBJC_IVAR____TtC10FitnessApp41ActivitySharingFriendDetailViewController_dataProvider);
  *(v0 + 1600) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = *(v0 + 320);
  *(v0 + 208) = *(v0 + 304);
  *(v0 + 224) = v2;
  *(v0 + 240) = *(v0 + 336);
  *(v0 + 249) = *(v0 + 345);
  v3 = *(v0 + 288);
  *(v0 + 176) = *(v0 + 272);
  *(v0 + 192) = v3;
  v4 = *(v0 + 216);
  sub_100319D40(v0 + 176);
  v5 = [v4 isMuted];
  *(v0 + 170) = v5;

  v6 = *(v1 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_friendManager);
  *(v0 + 1608) = v6;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  static Published.subscript.getter();

  v8 = *(v0 + 416);
  *(v0 + 112) = *(v0 + 400);
  *(v0 + 128) = v8;
  *(v0 + 144) = *(v0 + 432);
  *(v0 + 153) = *(v0 + 441);
  v9 = *(v0 + 384);
  *(v0 + 80) = *(v0 + 368);
  *(v0 + 96) = v9;
  v10 = *(v0 + 120);
  *(v0 + 1616) = v10;
  v11 = v10;
  sub_100319D40(v0 + 80);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 169;
  *(v0 + 24) = sub_1003BB3F0;
  v12 = swift_continuation_init();
  *(v0 + 1480) = sub_100140278(&unk_1008EB630);
  *(v0 + 1456) = v12;
  *(v0 + 1424) = _NSConcreteStackBlock;
  *(v0 + 1432) = 1107296256;
  *(v0 + 1440) = sub_1003B7520;
  *(v0 + 1448) = &unk_100855BC0;
  [v7 setMuteEnabled:v5 ^ 1 forFriend:v11 completion:v0 + 1424];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1003BB3F0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 1624) = v2;
  v3 = *(v1 + 1592);
  v4 = *(v1 + 1584);
  if (v2)
  {
    v5 = sub_1003BB8E8;
  }

  else
  {
    v5 = sub_1003BB520;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1003BB520()
{
  v29 = v0;
  v1 = *(v0 + 1616);
  v2 = *(v0 + 1608);

  v3 = static os_log_type_t.default.getter();
  v4 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v3))
  {
    v26 = v3;
    v5 = *(v0 + 170);
    log = v4;
    v6 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v28 = v25;
    *v6 = 67109634;
    v7 = 1;
    *(v6 + 4) = (v5 & 1) == 0;
    *(v6 + 8) = 2082;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v8 = *(v0 + 1184);
    *(v0 + 1072) = *(v0 + 1168);
    *(v0 + 1088) = v8;
    *(v0 + 1104) = *(v0 + 1200);
    *(v0 + 1113) = *(v0 + 1209);
    v9 = *(v0 + 1152);
    *(v0 + 1040) = *(v0 + 1136);
    *(v0 + 1056) = v9;
    v10 = *(v0 + 1080);
    sub_100319D40(v0 + 1040);
    v11 = [v10 UUID];

    if (v11)
    {
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = 0;
    }

    v12 = *(v0 + 1568);
    v13 = *(v0 + 1560);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 56))(v13, v7, 1, v14);
    sub_100315E0C(v13, v12);
    v15 = Optional.description.getter();
    v17 = v16;
    sub_10000EA04(v12, &unk_1008DB8A0);
    v18 = sub_10000AFDC(v15, v17, &v28);

    *(v6 + 10) = v18;
    *(v6 + 18) = 2112;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v19 = *(v0 + 1376);
    *(v0 + 1264) = *(v0 + 1360);
    *(v0 + 1280) = v19;
    *(v0 + 1296) = *(v0 + 1392);
    *(v0 + 1305) = *(v0 + 1401);
    v20 = *(v0 + 1344);
    *(v0 + 1232) = *(v0 + 1328);
    *(v0 + 1248) = v20;
    v21 = *(v0 + 1272);
    sub_100319D40(v0 + 1232);
    *(v6 + 20) = v21;
    *v24 = v21;
    _os_log_impl(&_mh_execute_header, log, v26, "Successfully set mute status to %{BOOL}d for friend: %{public}s - %@", v6, 0x1Cu);
    sub_10000EA04(v24, &unk_1008DB8B0);

    sub_100005A40(v25);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1003BB8E8()
{
  v34 = v0;
  v1 = *(v0 + 1616);
  v2 = *(v0 + 1608);

  swift_willThrow();

  v3 = static os_log_type_t.default.getter();
  v4 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v3))
  {
    v31 = v3;
    v5 = *(v0 + 170);
    log = v4;
    v6 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v33 = v30;
    *v6 = 67109890;
    v7 = 1;
    *(v6 + 4) = (v5 & 1) == 0;
    *(v6 + 8) = 2082;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v8 = *(v0 + 800);
    *(v0 + 688) = *(v0 + 784);
    *(v0 + 704) = v8;
    *(v0 + 720) = *(v0 + 816);
    *(v0 + 729) = *(v0 + 825);
    v9 = *(v0 + 768);
    *(v0 + 656) = *(v0 + 752);
    *(v0 + 672) = v9;
    v10 = *(v0 + 696);
    sub_100319D40(v0 + 656);
    v11 = [v10 UUID];

    if (v11)
    {
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = 0;
    }

    v12 = *(v0 + 1552);
    v13 = *(v0 + 1544);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 56))(v13, v7, 1, v14);
    sub_100315E0C(v13, v12);
    v15 = Optional.description.getter();
    v17 = v16;
    sub_10000EA04(v12, &unk_1008DB8A0);
    v18 = sub_10000AFDC(v15, v17, &v33);

    *(v6 + 10) = v18;
    *(v6 + 18) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 20) = v19;
    *v29 = v19;
    *(v6 + 28) = 2112;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v20 = *(v0 + 992);
    *(v0 + 880) = *(v0 + 976);
    *(v0 + 896) = v20;
    *(v0 + 912) = *(v0 + 1008);
    *(v0 + 921) = *(v0 + 1017);
    v21 = *(v0 + 960);
    *(v0 + 848) = *(v0 + 944);
    *(v0 + 864) = v21;
    v22 = *(v0 + 888);
    sub_100319D40(v0 + 848);
    *(v6 + 30) = v22;
    v29[1] = v22;
    _os_log_impl(&_mh_execute_header, log, v31, "Failed to set mute status to %{BOOL}d for friend: %{public}s error: %{public}@ - %@", v6, 0x26u);
    sub_100140278(&unk_1008DB8B0);
    swift_arrayDestroy();

    sub_100005A40(v30);
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v23 = *(v0 + 608);
  *(v0 + 496) = *(v0 + 592);
  *(v0 + 512) = v23;
  *(v0 + 528) = *(v0 + 624);
  *(v0 + 537) = *(v0 + 633);
  v24 = *(v0 + 576);
  *(v0 + 464) = *(v0 + 560);
  *(v0 + 480) = v24;
  v25 = *(v0 + 504);
  sub_100319D40(v0 + 464);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 1488) = v25;
  *(v0 + 1496) = 0;
  *(v0 + 1512) = 0;
  *(v0 + 1504) = 0;
  *(v0 + 1520) = 1;
  v26 = v25;
  static Published.subscript.setter();

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1003BBDE0()
{
  v1[297] = v0;
  v1[298] = sub_100140278(&unk_1008DB8A0);
  v1[299] = swift_task_alloc();
  v1[300] = swift_task_alloc();
  v1[301] = swift_task_alloc();
  v1[302] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[303] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[304] = v3;
  v1[305] = v2;

  return _swift_task_switch(sub_1003BBEDC, v3, v2);
}

uint64_t sub_1003BBEDC()
{
  v1 = *(*(v0 + 2376) + OBJC_IVAR____TtC10FitnessApp41ActivitySharingFriendDetailViewController_dataProvider);
  *(v0 + 2448) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = *(v0 + 1280);
  *(v0 + 112) = *(v0 + 1264);
  *(v0 + 128) = v2;
  *(v0 + 144) = *(v0 + 1296);
  *(v0 + 153) = *(v0 + 1305);
  v3 = *(v0 + 1248);
  *(v0 + 80) = *(v0 + 1232);
  *(v0 + 96) = v3;
  v4 = *(v0 + 120);
  sub_100319D40(v0 + 80);
  v5 = [v4 isMyActivityDataCurrentlyHidden];
  *(v0 + 170) = v5;

  if (v5)
  {
LABEL_2:
    v31 = v5;
    v6 = *(v1 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_friendManager);
    *(v0 + 2456) = v6;
    swift_getKeyPath();
    swift_getKeyPath();
    v7 = v6;
    static Published.subscript.getter();

    v8 = *(v0 + 800);
    *(v0 + 688) = *(v0 + 784);
    *(v0 + 704) = v8;
    *(v0 + 720) = *(v0 + 816);
    *(v0 + 729) = *(v0 + 825);
    v9 = *(v0 + 768);
    *(v0 + 656) = *(v0 + 752);
    *(v0 + 672) = v9;
    v10 = *(v0 + 696);
    *(v0 + 2464) = v10;
    v11 = v10;
    sub_100319D40(v0 + 656);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 169;
    *(v0 + 24) = sub_1003BC574;
    v12 = swift_continuation_init();
    *(v0 + 2248) = sub_100140278(&unk_1008EB630);
    *(v0 + 2224) = v12;
    *(v0 + 2192) = _NSConcreteStackBlock;
    *(v0 + 2200) = 1107296256;
    *(v0 + 2208) = sub_1003B7520;
    *(v0 + 2216) = &unk_100855B98;
    [v7 setActivityDataVisible:v31 toFriend:v11 completion:v0 + 2192];

    return _swift_continuation_await(v0 + 16);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13 = *(v0 + 416);
  *(v0 + 304) = *(v0 + 400);
  *(v0 + 320) = v13;
  *(v0 + 336) = *(v0 + 432);
  *(v0 + 345) = *(v0 + 441);
  v14 = *(v0 + 384);
  *(v0 + 272) = *(v0 + 368);
  *(v0 + 288) = v14;
  v15 = *(v0 + 312);
  sub_100319D40(v0 + 272);
  v16 = [v15 isCompetitionActive];

  if (v16)
  {

    static os_log_type_t.default.getter();
    v17 = HKLogActivity;
    os_log(_:dso:log:_:_:)();

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v18 = *(v0 + 1376);
    *(v0 + 208) = *(v0 + 1360);
    *(v0 + 224) = v18;
    *(v0 + 240) = *(v0 + 1392);
    *(v0 + 249) = *(v0 + 1401);
    v19 = *(v0 + 1344);
    *(v0 + 176) = *(v0 + 1328);
    *(v0 + 192) = v19;
    v20 = *(v0 + 216);
    sub_100319D40(v0 + 176);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 2336) = v20;
    *(v0 + 2344) = 0;
    *(v0 + 2360) = 0;
    *(v0 + 2352) = 0;
    *(v0 + 2368) = 2;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v21 = *(v0 + 608);
    *(v0 + 496) = *(v0 + 592);
    *(v0 + 512) = v21;
    *(v0 + 528) = *(v0 + 624);
    *(v0 + 537) = *(v0 + 633);
    v22 = *(v0 + 576);
    *(v0 + 464) = *(v0 + 560);
    *(v0 + 480) = v22;
    v23 = *(v0 + 504);
    sub_100319D40(v0 + 464);
    v24 = [v23 hasPendingCompetitionRequestFromMe];

    if ((v24 & 1) == 0)
    {
      goto LABEL_2;
    }

    static os_log_type_t.default.getter();
    v25 = HKLogActivity;
    os_log(_:dso:log:_:_:)();

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v26 = *(v0 + 2144);
    *(v0 + 2032) = *(v0 + 2128);
    *(v0 + 2048) = v26;
    *(v0 + 2064) = *(v0 + 2160);
    *(v0 + 2073) = *(v0 + 2169);
    v27 = *(v0 + 2112);
    *(v0 + 2000) = *(v0 + 2096);
    *(v0 + 2016) = v27;
    v28 = *(v0 + 2040);
    sub_100319D40(v0 + 2000);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 2296) = v28;
    *(v0 + 2304) = 0;
    *(v0 + 2320) = 0;
    *(v0 + 2312) = 0;
    *(v0 + 2328) = 3;
  }

  static Published.subscript.setter();

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1003BC574()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 2472) = v2;
  v3 = *(v1 + 2440);
  v4 = *(v1 + 2432);
  if (v2)
  {
    v5 = sub_1003BCA64;
  }

  else
  {
    v5 = sub_1003BC6A4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1003BC6A4()
{
  v28 = v0;
  v1 = *(v0 + 2464);
  v2 = *(v0 + 2456);

  v3 = static os_log_type_t.default.getter();
  v4 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v3))
  {
    v5 = *(v0 + 170);
    log = v4;
    v6 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = v25;
    *v6 = 67109634;
    *(v6 + 4) = v5;
    *(v6 + 8) = 2082;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v7 = *(v0 + 1760);
    *(v0 + 1648) = *(v0 + 1744);
    *(v0 + 1664) = v7;
    *(v0 + 1680) = *(v0 + 1776);
    *(v0 + 1689) = *(v0 + 1785);
    v8 = *(v0 + 1728);
    *(v0 + 1616) = *(v0 + 1712);
    *(v0 + 1632) = v8;
    v9 = *(v0 + 1656);
    sub_100319D40(v0 + 1616);
    v10 = [v9 UUID];

    if (v10)
    {
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v11 = 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = *(v0 + 2416);
    v13 = *(v0 + 2408);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 56))(v13, v11, 1, v14);
    sub_100315E0C(v13, v12);
    v15 = Optional.description.getter();
    v17 = v16;
    sub_10000EA04(v12, &unk_1008DB8A0);
    v18 = sub_10000AFDC(v15, v17, &v27);

    *(v6 + 10) = v18;
    *(v6 + 18) = 2112;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v19 = *(v0 + 1952);
    *(v0 + 1840) = *(v0 + 1936);
    *(v0 + 1856) = v19;
    *(v0 + 1872) = *(v0 + 1968);
    *(v0 + 1881) = *(v0 + 1977);
    v20 = *(v0 + 1920);
    *(v0 + 1808) = *(v0 + 1904);
    *(v0 + 1824) = v20;
    v21 = *(v0 + 1848);
    sub_100319D40(v0 + 1808);
    *(v6 + 20) = v21;
    *v24 = v21;
    _os_log_impl(&_mh_execute_header, log, v3, "Successfully set hiding status to %{BOOL}d for friend: %{public}s - %@", v6, 0x1Cu);
    sub_10000EA04(v24, &unk_1008DB8B0);

    sub_100005A40(v25);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1003BCA64()
{
  v34 = v0;
  v1 = *(v0 + 2464);
  v2 = *(v0 + 2456);

  swift_willThrow();

  v3 = static os_log_type_t.default.getter();
  v4 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v3))
  {
    v31 = v3;
    v5 = *(v0 + 170);
    log = v4;
    v6 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v33 = v30;
    *v6 = 67109890;
    *(v6 + 4) = v5;
    *(v6 + 8) = 2082;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v7 = *(v0 + 1184);
    *(v0 + 1072) = *(v0 + 1168);
    *(v0 + 1088) = v7;
    *(v0 + 1104) = *(v0 + 1200);
    *(v0 + 1113) = *(v0 + 1209);
    v8 = *(v0 + 1152);
    *(v0 + 1040) = *(v0 + 1136);
    *(v0 + 1056) = v8;
    v9 = *(v0 + 1080);
    sub_100319D40(v0 + 1040);
    v10 = [v9 UUID];

    if (v10)
    {
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v11 = 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = *(v0 + 2400);
    v13 = *(v0 + 2392);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 56))(v13, v11, 1, v14);
    sub_100315E0C(v13, v12);
    v15 = Optional.description.getter();
    v17 = v16;
    sub_10000EA04(v12, &unk_1008DB8A0);
    v18 = sub_10000AFDC(v15, v17, &v33);

    *(v6 + 10) = v18;
    *(v6 + 18) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 20) = v19;
    *v29 = v19;
    *(v6 + 28) = 2112;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v20 = *(v0 + 1568);
    *(v0 + 1456) = *(v0 + 1552);
    *(v0 + 1472) = v20;
    *(v0 + 1488) = *(v0 + 1584);
    *(v0 + 1497) = *(v0 + 1593);
    v21 = *(v0 + 1536);
    *(v0 + 1424) = *(v0 + 1520);
    *(v0 + 1440) = v21;
    v22 = *(v0 + 1464);
    sub_100319D40(v0 + 1424);
    *(v6 + 30) = v22;
    v29[1] = v22;
    _os_log_impl(&_mh_execute_header, log, v31, "Failed to set hiding status to %{BOOL}d for friend: %{public}s error: %{public}@ - %@", v6, 0x26u);
    sub_100140278(&unk_1008DB8B0);
    swift_arrayDestroy();

    sub_100005A40(v30);
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v23 = *(v0 + 992);
  *(v0 + 880) = *(v0 + 976);
  *(v0 + 896) = v23;
  *(v0 + 912) = *(v0 + 1008);
  *(v0 + 921) = *(v0 + 1017);
  v24 = *(v0 + 960);
  *(v0 + 848) = *(v0 + 944);
  *(v0 + 864) = v24;
  v25 = *(v0 + 888);
  sub_100319D40(v0 + 848);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 2256) = v25;
  *(v0 + 2264) = 0;
  *(v0 + 2280) = 0;
  *(v0 + 2272) = 0;
  *(v0 + 2288) = 4;
  v26 = v25;
  static Published.subscript.setter();

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1003BCF64()
{
  v1[28] = v0;
  v1[29] = type metadata accessor for ActivitySharingFriendDetailInternalDashboardView();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[32] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[33] = v3;
  v1[34] = v2;

  return _swift_task_switch(sub_1003BD038, v3, v2);
}

uint64_t sub_1003BD038()
{
  v1 = *(v0[28] + OBJC_IVAR____TtC10FitnessApp41ActivitySharingFriendDetailViewController_dataProvider);
  v2 = OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_fitnessAppContext;
  v0[35] = v1;
  v0[36] = v2;
  return _swift_task_switch(sub_1003BD070, v1, 0);
}

uint64_t sub_1003BD070()
{
  v1 = *(v0[35] + v0[36]);
  v0[37] = v1;
  v2 = v0[33];
  v3 = v0[34];
  v4 = v1;

  return _swift_task_switch(sub_1003BD0F0, v2, v3);
}

uint64_t sub_1003BD0F0()
{
  v1 = v0[37];
  v2 = v0[35];
  v3 = v0[31];
  v4 = OBJC_IVAR___CHFitnessAppContext_activitySharingSettings;
  v5 = *(v0[29] + 20);
  v6 = type metadata accessor for ActivitySharingSettings();
  (*(*(v6 - 8) + 16))(v3 + v5, &v1[v4], v6);

  return _swift_task_switch(sub_1003BD1C0, v2, 0);
}

uint64_t sub_1003BD1C0()
{
  v1 = *(v0[35] + v0[36]);
  v0[38] = v1;
  v2 = v0[33];
  v3 = v0[34];
  v4 = v1;

  return _swift_task_switch(sub_1003BD240, v2, v3);
}

uint64_t sub_1003BD240()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 248);
  v4 = *(v0 + 232);
  v3 = *(v0 + 240);
  v5 = *(v0 + 224);

  v6 = *&v1[OBJC_IVAR___CHFitnessAppContext_cloudDeviceProvider];

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = *(v0 + 160);
  *(v0 + 48) = *(v0 + 144);
  *(v0 + 64) = v7;
  *(v0 + 80) = *(v0 + 176);
  *(v0 + 89) = *(v0 + 185);
  v8 = *(v0 + 128);
  *(v0 + 16) = *(v0 + 112);
  *(v0 + 32) = v8;
  v9 = *(v0 + 56);
  sub_100319D40(v0 + 16);
  *(v0 + 105) = 0;
  State.init(wrappedValue:)();
  v10 = *(v0 + 216);
  *v2 = *(v0 + 208);
  *(v2 + 8) = v10;
  *(v2 + *(v4 + 24)) = v6;
  *(v2 + *(v4 + 28)) = v9;
  sub_1003BF4CC(v2, v3);
  v11 = objc_allocWithZone(sub_100140278(&qword_1008EB648));
  v12 = UIHostingController.init(rootView:)();
  v13 = [v5 navigationController];
  v14 = *(v0 + 248);
  if (v13)
  {
    v15 = v13;
    [v13 presentViewController:v12 animated:1 completion:0];

    sub_1003BF530(v14);
  }

  else
  {
    sub_1003BF530(*(v0 + 248));
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1003BD43C()
{
  *(v1 + 56) = v0;
  type metadata accessor for MainActor();
  *(v1 + 64) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003BD4D4, v3, v2);
}

uint64_t sub_1003BD4D4()
{

  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 16) = &unk_1006ED358;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = v1;
  *(v0 + 48) = 5;

  static Published.subscript.setter();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003BD5E8(uint64_t a1)
{
  v1[170] = a1;
  v1[171] = sub_100140278(&unk_1008DB8A0);
  v1[172] = swift_task_alloc();
  v1[173] = swift_task_alloc();
  v1[174] = swift_task_alloc();
  v1[175] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[176] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[177] = v3;
  v1[178] = v2;

  return _swift_task_switch(sub_1003BD6E4, v3, v2);
}

uint64_t sub_1003BD6E4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 1432) = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong navigationController];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 popViewControllerAnimated:1];
    }

    v6 = OBJC_IVAR____TtC10FitnessApp41ActivitySharingFriendDetailViewController_dataProvider;
    *(v0 + 1440) = OBJC_IVAR____TtC10FitnessApp41ActivitySharingFriendDetailViewController_dataProvider;
    v7 = *(*&v2[v6] + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_friendManager);
    *(v0 + 1448) = v7;
    swift_getKeyPath();
    swift_getKeyPath();
    v8 = v7;
    static Published.subscript.getter();

    v9 = *(v0 + 224);
    *(v0 + 112) = *(v0 + 208);
    *(v0 + 128) = v9;
    *(v0 + 144) = *(v0 + 240);
    *(v0 + 153) = *(v0 + 249);
    v10 = *(v0 + 192);
    *(v0 + 80) = *(v0 + 176);
    *(v0 + 96) = v10;
    v11 = *(v0 + 120);
    *(v0 + 1456) = v11;
    v12 = v11;
    sub_100319D40(v0 + 80);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 169;
    *(v0 + 24) = sub_1003BD994;
    v13 = swift_continuation_init();
    *(v0 + 1288) = sub_100140278(&unk_1008EB630);
    *(v0 + 1264) = v13;
    *(v0 + 1232) = _NSConcreteStackBlock;
    *(v0 + 1240) = 1107296256;
    *(v0 + 1248) = sub_1003B7520;
    *(v0 + 1256) = &unk_100855B70;
    [v8 removeFriend:v12 completion:v0 + 1232];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1003BD994()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 1464) = v2;
  v3 = *(v1 + 1424);
  v4 = *(v1 + 1416);
  if (v2)
  {
    v5 = sub_1003BDE94;
  }

  else
  {
    v5 = sub_1003BDAC4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1003BDAC4()
{
  v29 = v0;
  v1 = *(v0 + 1456);
  v2 = *(v0 + 1448);

  v3 = static os_log_type_t.default.getter();
  v4 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v3))
  {
    v24 = v3;
    log = v4;
    v5 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = v26;
    *v5 = 136446466;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v6 = *(v0 + 992);
    *(v0 + 880) = *(v0 + 976);
    *(v0 + 896) = v6;
    *(v0 + 912) = *(v0 + 1008);
    *(v0 + 921) = *(v0 + 1017);
    v7 = *(v0 + 960);
    *(v0 + 848) = *(v0 + 944);
    *(v0 + 864) = v7;
    v8 = *(v0 + 888);
    sub_100319D40(v0 + 848);
    v9 = [v8 UUID];

    if (v9)
    {
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v10 = 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = *(v0 + 1432);
    v12 = *(v0 + 1400);
    v13 = *(v0 + 1392);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 56))(v13, v10, 1, v14);
    sub_100315E0C(v13, v12);
    v15 = Optional.description.getter();
    v17 = v16;
    sub_10000EA04(v12, &unk_1008DB8A0);
    v18 = sub_10000AFDC(v15, v17, &v28);

    *(v5 + 4) = v18;
    *(v5 + 12) = 2112;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v19 = *(v0 + 1184);
    *(v0 + 1072) = *(v0 + 1168);
    *(v0 + 1088) = v19;
    *(v0 + 1104) = *(v0 + 1200);
    *(v0 + 1113) = *(v0 + 1209);
    v20 = *(v0 + 1152);
    *(v0 + 1040) = *(v0 + 1136);
    *(v0 + 1056) = v20;
    v21 = *(v0 + 1080);
    sub_100319D40(v0 + 1040);
    *(v5 + 14) = v21;
    *v25 = v21;
    _os_log_impl(&_mh_execute_header, log, v24, "Successfully removed friend: %{public}s - %@", v5, 0x16u);
    sub_10000EA04(v25, &unk_1008DB8B0);

    sub_100005A40(v26);
  }

  else
  {
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1003BDE94()
{
  v34 = v0;
  v1 = *(v0 + 1456);
  v2 = *(v0 + 1448);

  swift_willThrow();

  v3 = static os_log_type_t.default.getter();
  v4 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v3))
  {
    v31 = v3;
    log = v4;
    v5 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v33 = v30;
    *v5 = 136446722;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v6 = *(v0 + 608);
    *(v0 + 496) = *(v0 + 592);
    *(v0 + 512) = v6;
    *(v0 + 528) = *(v0 + 624);
    *(v0 + 537) = *(v0 + 633);
    v7 = *(v0 + 576);
    *(v0 + 464) = *(v0 + 560);
    *(v0 + 480) = v7;
    v8 = *(v0 + 504);
    sub_100319D40(v0 + 464);
    v9 = [v8 UUID];

    if (v9)
    {
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v10 = 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = *(v0 + 1384);
    v12 = *(v0 + 1376);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 56))(v12, v10, 1, v13);
    sub_100315E0C(v12, v11);
    v14 = Optional.description.getter();
    v16 = v15;
    sub_10000EA04(v11, &unk_1008DB8A0);
    v17 = sub_10000AFDC(v14, v16, &v33);

    *(v5 + 4) = v17;
    *(v5 + 12) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v18;
    *v29 = v18;
    *(v5 + 22) = 2112;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v19 = *(v0 + 800);
    *(v0 + 688) = *(v0 + 784);
    *(v0 + 704) = v19;
    *(v0 + 720) = *(v0 + 816);
    *(v0 + 729) = *(v0 + 825);
    v20 = *(v0 + 768);
    *(v0 + 656) = *(v0 + 752);
    *(v0 + 672) = v20;
    v21 = *(v0 + 696);
    sub_100319D40(v0 + 656);
    *(v5 + 24) = v21;
    v29[1] = v21;
    _os_log_impl(&_mh_execute_header, log, v31, "Failed to remove friend: %{public}s error: %{public}@ - %@", v5, 0x20u);
    sub_100140278(&unk_1008DB8B0);
    swift_arrayDestroy();

    sub_100005A40(v30);
  }

  v22 = *(v0 + 1432);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v23 = *(v0 + 416);
  *(v0 + 304) = *(v0 + 400);
  *(v0 + 320) = v23;
  *(v0 + 336) = *(v0 + 432);
  *(v0 + 345) = *(v0 + 441);
  v24 = *(v0 + 384);
  *(v0 + 272) = *(v0 + 368);
  *(v0 + 288) = v24;
  v25 = *(v0 + 312);
  sub_100319D40(v0 + 272);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 1296) = v25;
  *(v0 + 1304) = 0;
  *(v0 + 1320) = 0;
  *(v0 + 1312) = 0;
  *(v0 + 1328) = 6;
  v26 = v25;
  static Published.subscript.setter();

  v27 = *(v0 + 8);

  return v27();
}

id sub_1003BE3A0()
{
  v0 = [objc_allocWithZone(UITextView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *&v23[9] = *&v21[9];
  v22[2] = v19;
  v22[3] = v20;
  *v23 = *v21;
  v22[0] = v17;
  v22[1] = v18;
  v1 = (*&v21[9] >> 56);
  sub_100319D40(v22);
  [v0 setAttributedText:v1];

  [v0 setScrollEnabled:0];
  [v0 setEditable:0];
  [v0 _setInteractiveTextSelectionDisabled:1];
  [v0 textContainerInset];
  v3 = v2;
  [v0 textContainerInset];
  [v0 setTextContainerInset:{v3, 16.0, v4, 16.0}];
  v5 = [objc_opt_self() mainScreen];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v24.origin.x = v7;
  v24.origin.y = v9;
  v24.size.width = v11;
  v24.size.height = v13;
  Width = CGRectGetWidth(v24);
  v15 = v0;
  [v15 systemLayoutSizeFittingSize:{Width, INFINITY}];
  [v15 frame];
  [v15 setFrame:?];

  return v15;
}

void sub_1003BE5E0(char a1, void *a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  objc_allocWithZone(a3(0));

  v11 = a4(v7);
  v8 = [a2 navigationController];
  if (v8)
  {
    v9 = a1 & 1;
    v10 = v8;
    [v8 pushViewController:v11 animated:v9];
  }
}

void sub_1003BE6A4(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = *(v6 + OBJC_IVAR____TtC10FitnessApp41ActivitySharingFriendDetailViewController_dataProvider);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v115[2] = v112;
  v115[3] = v113;
  v116[0] = v114[0];
  *(v116 + 9) = *(v114 + 9);
  v115[0] = aBlock;
  v115[1] = v111;
  v105 = *(&v112 + 1);
  sub_100319D40(v115);
  v12 = *(v11 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_healthStore);
  v13 = *(v11 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_friendListSectionManager);
  v14 = *(v11 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_awardsDataProvider);
  v15 = *(v11 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_achievementBadgeImageFactory);
  v16 = *(v11 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_achievementResourceProvider);
  v17 = *(v11 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_fiuiFormattingManager);
  v18 = *(v11 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_achievementLocalizationProvider);
  v19 = *(v11 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_pauseRingsCoordinator);
  v20 = *(v11 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_fitnessAppContext);
  v21 = *(v11 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_workoutFormattingManager);
  v22 = *(v11 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_workoutDataProvider);
  v101 = v12;
  v103 = v13;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v27 = v18;
  v99 = v19;
  v97 = v20;
  v96 = v21;
  v95 = v22;
  v89 = [v105 isMe];
  v109[3] = type metadata accessor for CHAwardsDataProvider();
  v109[4] = sub_1003BFEC4(&unk_1008E8740, type metadata accessor for CHAwardsDataProvider);
  v109[0] = v23;
  v104 = type metadata accessor for TrophyCaseAwardDetailViewController();
  v28 = objc_allocWithZone(v104);
  v29 = OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_celebrationVideoContainer;
  v30 = objc_allocWithZone(UIView);
  v90 = v23;
  v31 = [v30 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v32 = [objc_opt_self() blackColor];
  [v31 setBackgroundColor:v32];

  v33 = UIView.forAutoLayout()();
  *&v28[v29] = v33;
  *&v28[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_badgeViewCell] = 0;
  *&v28[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_associatedWorkout] = 0;
  *&v28[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_avPlayer] = 0;
  *&v28[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_avPlayerLayer] = 0;
  v28[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_celebrationComplete] = 0;
  v28[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_modalBadgeFlipStarted] = 0;
  v28[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_didAppear] = 0;
  v28[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_needToAnimatedBadgeView] = 0;
  *&v28[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_sharingImage] = 0;
  v34 = &v28[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_sharingText];
  *v34 = 0;
  v34[1] = 0;
  v94 = OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_friendsWithAchievement;
  *&v28[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_friendsWithAchievement] = _swiftEmptyArrayStorage;
  *&v28[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_achievement] = a1;
  *&v28[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_healthStore] = v101;
  sub_100007C5C(v109, &v28[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_achievementDataProvider]);
  *&v28[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_badgeImageFactory] = v24;
  *&v28[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_resourceProvider] = v25;
  *&v28[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_formattingManager] = v26;
  *&v28[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_localizationProvider] = v27;
  *&v28[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_pauseRingsCoordinator] = v99;
  *&v28[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_fitnessAppContext] = v97;
  *&v28[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_workoutFormattingManager] = v96;
  *&v28[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_workoutDataProvider] = v95;
  v93 = objc_allocWithZone(AAUIBadgeView);
  v102 = v101;
  v88 = v24;
  v87 = v25;
  v86 = v26;
  v85 = v27;
  v100 = v99;
  v35 = v97;
  v36 = v96;
  v98 = v95;
  v37 = a1;
  v38 = [v93 initUsingEarnedShader:1];
  *&v28[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_badgeView] = v38;
  *&v28[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_friendListManager] = v103;
  v28[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_forModalPresentation] = 0;
  v28[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_shouldShowCelebration] = 0;
  v28[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_shouldShowEarned] = 1;
  v28[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_shouldShowAssociatedWorkout] = 0;
  v28[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_formatsForFriend] = v89 ^ 1;
  type metadata accessor for FriendsAchievementDataProvider();
  inited = swift_initStackObject();
  *(inited + 16) = v37;
  *(inited + 24) = v103;
  v107 = v103;
  v40 = v37;
  v41 = sub_100288680();
  swift_setDeallocating();

  *&v28[v94] = v41;

  v42 = [objc_allocWithZone(UICollectionViewLayout) init];
  v108.receiver = v28;
  v108.super_class = v104;
  v43 = objc_msgSendSuper2(&v108, "initWithCollectionViewLayout:", v42);

  v44 = v43;
  v45 = [v44 navigationItem];
  [v45 setLargeTitleDisplayMode:2];

  v46 = [v44 collectionView];
  if (!v46)
  {
    __break(1u);
    goto LABEL_12;
  }

  v47 = v46;
  v48 = v35;
  v49 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v50 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  *&v112 = sub_100319D94;
  *(&v112 + 1) = v49;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v111 = sub_10006871C;
  *(&v111 + 1) = &unk_100855A80;
  v51 = _Block_copy(&aBlock);
  v52 = [v50 initWithSectionProvider:v51];
  _Block_release(v51);

  [v47 setCollectionViewLayout:v52];

  v53 = [v44 collectionView];
  if (!v53)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v54 = v53;
  type metadata accessor for TrophyCaseAwardDetailBadgeCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v56 = String._bridgeToObjectiveC()();
  [v54 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v56];

  v57 = [v44 collectionView];
  if (!v57)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v58 = v57;
  type metadata accessor for TrophyCaseAwardDetailWorkoutCell();
  v59 = swift_getObjCClassFromMetadata();
  v60 = String._bridgeToObjectiveC()();
  [v58 registerClass:v59 forCellWithReuseIdentifier:v60];

  v61 = [v44 collectionView];
  if (!v61)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v62 = v61;
  type metadata accessor for TrophyCaseAwardDetailFriendCell();
  v63 = swift_getObjCClassFromMetadata();
  v64 = String._bridgeToObjectiveC()();
  [v62 registerClass:v63 forCellWithReuseIdentifier:v64];

  v65 = [v44 collectionView];
  if (!v65)
  {
LABEL_15:
    __break(1u);
    return;
  }

  type metadata accessor for TrophyCaseAwardDetailViewControllerHeaderView();
  v66 = swift_getObjCClassFromMetadata();
  v67 = UICollectionElementKindSectionHeader;
  v68 = String._bridgeToObjectiveC()();
  [v65 registerClass:v66 forSupplementaryViewOfKind:v67 withReuseIdentifier:v68];

  v69 = v44;
  if (v89)
  {
    v70 = [v44 navigationItem];
    v69 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:9 target:v44 action:"shareTapped:"];

    [v70 setRightBarButtonItem:v69];
  }

  sub_1003BFEC4(&unk_1008EAEE0, type metadata accessor for TrophyCaseAwardDetailViewController);
  sub_1000066AC(&v90[OBJC_IVAR___CHAwardsDataProvider_awardsDataProvider], *&v90[OBJC_IVAR___CHAwardsDataProvider_awardsDataProvider + 24]);
  v71 = v44;
  dispatch thunk of AAUIAwardsDataProviding.add(observer:)();

  sub_100650294();
  sub_100005A40(v109);
  v72 = swift_allocObject();
  *(v72 + 16) = a2;
  v73 = swift_allocObject();
  *(v73 + 16) = a2;
  v74 = objc_allocWithZone(AAUIAchievementDetailTransitionAnimator);
  *&v112 = sub_100282E98;
  *(&v112 + 1) = v72;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v111 = sub_1000449A8;
  *(&v111 + 1) = &unk_100855AF8;
  v75 = _Block_copy(&aBlock);
  v76 = a2;
  v77 = v71;
  v78 = v76;

  *&v112 = sub_100282EB8;
  *(&v112 + 1) = v73;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v111 = sub_1000449A8;
  *(&v111 + 1) = &unk_100855B20;
  v79 = _Block_copy(&aBlock);

  v80 = [v74 initWithPresentingViewController:v92 detailViewController:v77 shouldPlayFlipInAnimation:1 initialBadgeFrame:v78 conversionView:v75 didStartAnimationBlock:v79 didFinishAnimationBlock:{a3, a4, a5, a6}];
  _Block_release(v79);
  _Block_release(v75);

  v81 = *&v92[OBJC_IVAR____TtC10FitnessApp41ActivitySharingFriendDetailViewController_achievementTransitionAnimator];
  *&v92[OBJC_IVAR____TtC10FitnessApp41ActivitySharingFriendDetailViewController_achievementTransitionAnimator] = v80;

  v82 = [v92 navigationController];
  if (v82)
  {
    v83 = v82;
    [v82 setDelegate:v92];
  }

  v84 = [v92 navigationController];
  [v84 pushViewController:v77 animated:1];
}

id sub_1003BF344()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySharingFriendDetailViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003BF420()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10002BBC0;

  return sub_1003BD5E8(v0);
}

uint64_t sub_1003BF4CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySharingFriendDetailInternalDashboardView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003BF530(uint64_t a1)
{
  v2 = type metadata accessor for ActivitySharingFriendDetailInternalDashboardView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003BF5A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002BBC0;

  return sub_1003BA8D4();
}

uint64_t sub_1003BF640()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002BBC0;

  return sub_1003BA844();
}

uint64_t sub_1003BF6D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002BBC0;

  return sub_1003BA7B4();
}

uint64_t sub_1003BF768()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002BACC;

  return sub_1003BA724();
}

uint64_t sub_1003BF7FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002BBC0;

  return sub_1003BA694();
}

uint64_t sub_1003BF890(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BBC0;

  return sub_1003BA584(a1, v4, v5, v6);
}

unint64_t sub_1003BFA04()
{
  result = qword_1008EB660;
  if (!qword_1008EB660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EB660);
  }

  return result;
}

unint64_t sub_1003BFA60()
{
  result = qword_1008EB680;
  if (!qword_1008EB680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EB680);
  }

  return result;
}

uint64_t sub_1003BFAB4(unint64_t a1)
{
  v1 = sub_1003D2448(a1);
  if (v1 == 10)
  {
    goto LABEL_39;
  }

  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v25[2] = v22;
  v25[3] = v23;
  v26[0] = v24[0];
  *(v26 + 9) = *(v24 + 9);
  v25[0] = v20;
  v25[1] = v21;
  v3 = *(&v22 + 1);
  sub_100319D40(v25);
  v4 = [v3 isCurrentlyHidingActivityDataFromMe];
  v5 = [v3 isCompetitionActive];
  if ([v3 supportsCompetitions])
  {
    v6 = [v3 contact];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 relationship];

      LODWORD(v7) = [v8 supportsCompetitions];
      v9 = v7 ^ 1;
      goto LABEL_6;
    }

    __break(1u);
LABEL_39:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v9 = 1;
LABEL_6:
  if (v2 <= 3u)
  {
    if (v2 - 1 < 3)
    {

      return (v4 ^ 1) & v5;
    }

    return 1;
  }

  if (v2 <= 6u)
  {
    if (v2 - 4 < 2)
    {

      return v4 ^ 1;
    }

    if (((v4 | v5) & 1) == 0)
    {
      v12 = [v3 hasCompetitionHistory];

      return (v12 & 1) != 0;
    }

    goto LABEL_24;
  }

  if (v2 == 7)
  {
    if ((v4 | v5 | v9))
    {
LABEL_24:

      return 0;
    }

    v13 = [v3 isMe];

    return (v13 & 1) == 0;
  }

  if (v2 == 8)
  {
    if ((v4 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v23 = v18;
      v24[0] = *v19;
      v21 = v16;
      v22 = v17;
      *(v24 + 9) = *&v19[9];
      v20 = v15;
      if (*v19 >> 62)
      {
        v11 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v11 = *((*&v24[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_100319D40(&v20);
      if (v11 >= 3)
      {
        return 3;
      }

      else
      {
        return v11;
      }
    }

LABEL_27:

    return 0;
  }

  if (v4)
  {
    goto LABEL_27;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(v24 + 9) = *&v19[9];
  v23 = v18;
  v24[0] = *v19;
  v21 = v16;
  v22 = v17;
  v20 = v15;

  sub_100319D40(&v20);
  if (*&v19[8] >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((*&v19[8] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v14 != 0;
}

uint64_t sub_1003BFEC4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1003BFF20@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController____lazy_storage___pauseRingsView;
  v4 = *(v1 + OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController____lazy_storage___pauseRingsView);
  v5 = *(v1 + OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController____lazy_storage___pauseRingsView + 8);
  v6 = *(v1 + OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController____lazy_storage___pauseRingsView + 16);
  v7 = *(v1 + OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController____lazy_storage___pauseRingsView + 24);
  v8 = *(v1 + OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController____lazy_storage___pauseRingsView + 32);
  if (v4)
  {
    v9 = (v5 >> 8) & 1;
    v3 = (v5 >> 16) & 1;
    v10 = *(v1 + OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController____lazy_storage___pauseRingsView);
    v11 = *(v1 + OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController____lazy_storage___pauseRingsView + 8);
    v12 = *(v1 + OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController____lazy_storage___pauseRingsView + 16);
    v13 = *(v1 + OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController____lazy_storage___pauseRingsView + 24);
    v14 = *(v1 + OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController____lazy_storage___pauseRingsView + 32);
    v15 = *(v1 + OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController____lazy_storage___pauseRingsView + 40);
    v16 = *(v1 + OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController____lazy_storage___pauseRingsView + 48);
  }

  else
  {
    v17 = *(v1 + OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController_pauseRingsCoordinator);
    v33 = *(v1 + OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController_shouldShowEditFlow);
    v18 = *(v1 + OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController_isStandalone);
    v19 = *(v1 + OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController_isWheelchair);
    v38 = *(v1 + OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController____lazy_storage___pauseRingsView + 8);
    v36 = *(v1 + OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController____lazy_storage___pauseRingsView + 32);
    v37 = *(v1 + OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController____lazy_storage___pauseRingsView + 16);
    v35 = *(v1 + OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController____lazy_storage___pauseRingsView + 24);
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v39[0] = 0;
    v21 = v17;

    State.init(wrappedValue:)();
    v22 = v40;
    v23 = v41;
    v24 = sub_100265534(v18, 0);

    v40 = v21;
    LOBYTE(v41) = v33;
    BYTE1(v41) = v18;
    BYTE2(v41) = v19;
    v42 = sub_1003C0724;
    v43 = v20;
    v44 = v24;
    LOBYTE(v45) = v22;
    v46 = v23;
    v25 = v41;
    v26 = v45;
    v9 = *(v3 + 8);
    v34 = *v3;
    v27 = *(v3 + 16);
    v28 = *(v3 + 24);
    v32 = *(v3 + 32);
    *v3 = v21;
    *(v3 + 8) = v25;
    *(v3 + 16) = sub_1003C0724;
    *(v3 + 24) = v20;
    *(v3 + 32) = v24;
    *(v3 + 40) = v26;
    *(v3 + 48) = v23;
    sub_1003C072C(&v40, v39);
    sub_1003C0788(v34, v9, v27, v28, v32);
    v7 = v35;
    v8 = v36;
    v6 = v37;
    v5 = v38;
    v4 = 0;
    LOBYTE(v15) = v45;
    v16 = v46;
    v13 = v43;
    v14 = v44;
    v12 = v42;
    LOBYTE(v3) = BYTE2(v41);
    LOBYTE(v9) = BYTE1(v41);
    LOBYTE(v11) = v41;
    v10 = v40;
  }

  v29 = v11 & 1;
  v30 = v15 & 1;
  result = sub_1003C07E4(v4, v5, v6, v7, v8);
  *a1 = v10;
  *(a1 + 8) = v29;
  *(a1 + 9) = v9;
  *(a1 + 10) = v3;
  *(a1 + 16) = v12;
  *(a1 + 24) = v13;
  *(a1 + 32) = v14;
  *(a1 + 40) = v30;
  *(a1 + 48) = v16;
  return result;
}

void sub_1003C0154()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_1003C023C()
{
  v29.receiver = v0;
  v29.super_class = type metadata accessor for PauseRingsViewController();
  objc_msgSendSuper2(&v29, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController_hostingController];
  if (!v1)
  {
    goto LABEL_14;
  }

  v2 = [v1 view];
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = v2;
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = v4;
  [v4 addSubview:v3];

  v6 = [v3 leadingAnchor];
  v7 = [v0 view];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v7 safeAreaLayoutGuide];

  v10 = [v9 leadingAnchor];
  v11 = [v6 constraintEqualToAnchor:v10];

  [v11 setActive:1];
  v12 = [v3 trailingAnchor];
  v13 = [v0 view];
  if (!v13)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = v13;
  v15 = [v13 safeAreaLayoutGuide];

  v16 = [v15 trailingAnchor];
  v17 = [v12 constraintEqualToAnchor:v16];

  [v17 setActive:1];
  v18 = [v3 topAnchor];
  v19 = [v0 view];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 safeAreaLayoutGuide];

    v22 = [v21 topAnchor];
    v23 = [v18 constraintEqualToAnchor:v22];

    [v23 setActive:1];
    v24 = [v3 bottomAnchor];
    v25 = [v0 view];
    if (v25)
    {
      v26 = v25;
      v27 = [v25 bottomAnchor];

      v28 = [v24 constraintEqualToAnchor:v27];
      [v28 setActive:1];

      return;
    }

    goto LABEL_13;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1003C0660()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PauseRingsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1003C0788(void *result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (result)
  {
  }

  return result;
}

id sub_1003C07E4(id result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (result)
  {
    v5 = result;

    v6 = v5;

    return a5;
  }

  return result;
}

void sub_1003C0844()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleBody;
  v2 = [v0 defaultFontForTextStyle:v1];

  if (v2)
  {
    v3 = [v2 fu_fontWithSize:12.0];

    qword_1008EB700 = v3;
  }

  else
  {
    __break(1u);
  }
}

char *sub_1003C08DC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC10FitnessApp42WorkoutAppRecommendationCollectionViewCell_iconImageView;
  v11 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = UIView.withContentMode(_:)();

  v13 = [v12 layer];
  [v13 setCornerRadius:10.0];

  [v12 setClipsToBounds:1];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v10] = v12;
  v14 = OBJC_IVAR____TtC10FitnessApp42WorkoutAppRecommendationCollectionViewCell_titleLabel;
  v15 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  LODWORD(v16) = 1148846080;
  [v15 setContentCompressionResistancePriority:1 forAxis:v16];
  [v15 setLineBreakMode:0];
  [v15 setNumberOfLines:2];
  [v15 setTextAlignment:1];
  if (qword_1008DAA00 != -1)
  {
    swift_once();
  }

  [v15 setFont:qword_1008EB700];
  v17 = [objc_opt_self() labelColor];
  v18 = UILabel.withTextColor(_:)();

  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v14] = v18;
  v23.receiver = v5;
  v23.super_class = type metadata accessor for WorkoutAppRecommendationCollectionViewCell();
  v19 = objc_msgSendSuper2(&v23, "initWithFrame:", a1, a2, a3, a4);
  v20 = [v19 contentView];
  [v20 addSubview:*&v19[OBJC_IVAR____TtC10FitnessApp42WorkoutAppRecommendationCollectionViewCell_iconImageView]];

  v21 = [v19 contentView];
  [v21 addSubview:*&v19[OBJC_IVAR____TtC10FitnessApp42WorkoutAppRecommendationCollectionViewCell_titleLabel]];

  sub_1003C0E14();
  return v19;
}

uint64_t sub_1003C0BC0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10FitnessApp42WorkoutAppRecommendationCollectionViewCell_iconImageView;
  v5 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = UIView.withContentMode(_:)();

  v7 = [v6 layer];
  [v7 setCornerRadius:10.0];

  [v6 setClipsToBounds:1];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v2 + v4) = v6;
  v8 = OBJC_IVAR____TtC10FitnessApp42WorkoutAppRecommendationCollectionViewCell_titleLabel;
  v9 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  LODWORD(v10) = 1148846080;
  [v9 setContentCompressionResistancePriority:1 forAxis:v10];
  [v9 setLineBreakMode:0];
  [v9 setNumberOfLines:2];
  [v9 setTextAlignment:1];
  if (qword_1008DAA00 != -1)
  {
    swift_once();
  }

  [v9 setFont:qword_1008EB700];
  v11 = [objc_opt_self() labelColor];
  v12 = UILabel.withTextColor(_:)();

  v13 = v12;
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  *(v2 + v8) = v13;
  type metadata accessor for WorkoutAppRecommendationCollectionViewCell();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1003C0E14()
{
  v1 = v0;
  v38 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1006D9800;
  v3 = *&v1[OBJC_IVAR____TtC10FitnessApp42WorkoutAppRecommendationCollectionViewCell_iconImageView];
  v4 = [v3 topAnchor];
  v5 = [v1 contentView];
  v6 = [v5 topAnchor];

  v7 = [v4 constraintEqualToAnchor:v6 constant:13.0];
  *(v2 + 32) = v7;
  v8 = [v3 centerXAnchor];
  v9 = [v1 contentView];
  v10 = [v9 centerXAnchor];

  v11 = [v8 constraintEqualToAnchor:v10];
  *(v2 + 40) = v11;
  v12 = [v3 widthAnchor];
  v13 = [v1 contentView];
  [v13 frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v41.origin.x = v15;
  v41.origin.y = v17;
  v41.size.width = v19;
  v41.size.height = v21;
  v22 = [v12 constraintEqualToConstant:CGRectGetWidth(v41) + -27.0];

  *(v2 + 48) = v22;
  v23 = [v3 heightAnchor];
  v24 = [v3 widthAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v2 + 56) = v25;
  v26 = *&v1[OBJC_IVAR____TtC10FitnessApp42WorkoutAppRecommendationCollectionViewCell_titleLabel];
  v27 = [v26 topAnchor];
  v28 = [v3 bottomAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:3.0];

  *(v2 + 64) = v29;
  v30 = [v26 leadingAnchor];
  v31 = [v1 contentView];
  v32 = [v31 leadingAnchor];

  v33 = [v30 constraintEqualToAnchor:v32 constant:5.0];
  *(v2 + 72) = v33;
  v34 = [v26 trailingAnchor];
  v35 = [v1 contentView];
  v36 = [v35 trailingAnchor];

  v37 = [v34 constraintEqualToAnchor:v36 constant:-5.0];
  *(v2 + 80) = v37;
  sub_10019EC5C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v38 activateConstraints:isa];
}

uint64_t sub_1003C1240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[6] = v8;
  v6[7] = v7;

  return _swift_task_switch(sub_1003C12DC, v8, v7);
}

uint64_t sub_1003C12DC()
{
  v1 = v0[3];
  v2 = *(v0[2] + OBJC_IVAR____TtC10FitnessApp42WorkoutAppRecommendationCollectionViewCell_iconImageView);
  v0[8] = v2;
  [v2 size];
  v4 = v3;
  v6 = v5;
  v7 = [objc_opt_self() mainScreen];
  v8 = [v7 traitCollection];

  [v8 displayScale];
  v10 = v9;

  sub_1000066AC(v1, v1[3]);
  v11 = swift_task_alloc();
  v0[9] = v11;
  *v11 = v0;
  v11[1] = sub_1003A1AAC;
  v12 = v0[4];

  return sub_10052CCC8(v12, v4, v6, v10);
}

id sub_1003C141C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutAppRecommendationCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1003C14C0(void *a1, char a2)
{
  v3 = v2;
  FIUIPaceFormatForWorkoutActivityType();
  v5 = [a1 workoutActivityType];
  [v5 identifier];

  if (qword_1008DA658 != -1)
  {
    swift_once();
  }

  v6 = UILabel.withFont(_:)();
  v7 = objc_opt_self();
  v8 = [v7 secondaryLabelColor];
  v9 = UILabel.withTextColor(_:)();

  v10 = String._bridgeToObjectiveC()();
  [v9 setText:v10];

  v11 = UILabel.withFont(_:)();
  v12 = [v7 secondaryLabelColor];
  v13 = UILabel.withTextColor(_:)();

  v14 = [objc_opt_self() mainBundle];
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 localizedStringForKey:v15 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = String._bridgeToObjectiveC()();
  [v13 setText:v17];

  v18 = UILabel.withFont(_:)();
  v19 = [v7 secondaryLabelColor];
  v20 = UILabel.withTextColor(_:)();

  v21 = [objc_opt_self() mainBundle];
  v22 = String._bridgeToObjectiveC()();
  v23 = [v21 localizedStringForKey:v22 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = String._bridgeToObjectiveC()();
  [v20 setText:v24];

  v25 = UILabel.withFont(_:)();
  v26 = [v7 secondaryLabelColor];
  v27 = UILabel.withTextColor(_:)();

  if (a2)
  {
    v28 = [objc_opt_self() mainBundle];
    v29 = String._bridgeToObjectiveC()();
    v30 = [v28 localizedStringForKey:v29 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v31 = String._bridgeToObjectiveC()();
  [v27 setText:v31];

  [*(v3 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorView) setHidden:1];

  return sub_1002251BC();
}

uint64_t sub_1003C1A04(void *a1, uint64_t a2, void *a3, void *a4)
{
  v25 = a4;
  v27 = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v9 = *(v28 - 8);
  __chkstk_darwin(v28);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_100140278(&qword_1008E7590);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1006D46C0;
    swift_getErrorValue();
    v14 = v29;
    v13 = v30;
    *(v12 + 56) = v30;
    v15 = sub_100005994((v12 + 32));
    (*(*(v13 - 8) + 16))(v15, v14, v13);
    swift_errorRetain();
    print(_:separator:terminator:)();
  }

  sub_1000078CC();
  v16 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  v18 = v27;
  v17[2] = a3;
  v17[3] = v18;
  v19 = v25;
  v17[4] = v25;
  aBlock[4] = sub_1003C31C0;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_100855F58;
  v20 = _Block_copy(aBlock);
  v21 = v18;
  v22 = v19;
  v23 = a3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000261C4();
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v26 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v28);
}

void sub_1003C1D68(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 localizedStringWithHeartRate:a2];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v9 = FIUIBundle();
    if (!v9)
    {
LABEL_10:
      __break(1u);
      return;
    }

    v10 = v9;
    v11 = String._bridgeToObjectiveC()();
    v5 = [v10 localizedStringForKey:v11 value:0 table:0];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v12;
  }

  v13 = FIUIBundle();
  if (!v13)
  {
    __break(1u);
    goto LABEL_10;
  }

  v14 = v13;
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 localizedStringForKey:v15 value:0 table:0];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v25 = v17;
  sub_10000FCBC();
  v20 = StringProtocol.localizedUppercase.getter();
  v22 = v21;

  v23 = *(a3 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourLabel);
  if (qword_1008DA668 != -1)
  {
    swift_once();
  }

  v24 = sub_1004C154C(v6, v8, v20, v22, qword_1009252A0);

  [v23 setAttributedText:{v24, v25, v19}];
}

id sub_1003C2074(char a1)
{
  v2 = v1;
  if (qword_1008DA660 != -1)
  {
    swift_once();
  }

  v4 = UILabel.withFont(_:)();
  v5 = [objc_opt_self() secondaryLabelColor];
  v6 = UILabel.withTextColor(_:)();

  v7 = String._bridgeToObjectiveC()();
  [v6 setText:v7];

  if (qword_1008DA668 != -1)
  {
    swift_once();
  }

  v8 = UILabel.withFont(_:)();
  v9 = objc_opt_self();
  result = [v9 elapsedTimeColors];
  if (!result)
  {
    __break(1u);
    goto LABEL_19;
  }

  v11 = result;
  v12 = [result nonGradientTextColor];

  [v8 setTextColor:v12];
  v13 = String._bridgeToObjectiveC()();
  [v8 setText:v13];

  v14 = UILabel.withFont(_:)();
  result = [v9 paceColors];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = result;
  v16 = [result nonGradientTextColor];

  [v14 setTextColor:v16];
  v17 = String._bridgeToObjectiveC()();
  [v14 setText:v17];

  v18 = UILabel.withFont(_:)();
  result = [v9 heartRateColors];
  if (!result)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v19 = result;
  v20 = [result nonGradientTextColor];

  [v18 setTextColor:v20];
  v21 = String._bridgeToObjectiveC()();
  [v18 setText:v21];

  result = [*(v2 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorView) setHidden:a1 & 1];
  if (a1)
  {
    v22 = *(v2 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewBottomAnchorStandard);
    if (v22)
    {
      [v22 setActive:0];
    }

    v23 = *(v2 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewBottomAnchorLastRow);
    if (v23)
    {
      [v23 setActive:1];
    }

    result = *(v2 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_heightAnchorHeaderFooterRow);
    if (result)
    {

      return [result setActive:1];
    }
  }

  return result;
}

id sub_1003C2514()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutDetailFourColumnSplitTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1003C256C()
{
  v0 = [objc_allocWithZone(NSLengthFormatter) init];
  result = [v0 setUnitStyle:1];
  qword_1008EB740 = v0;
  return result;
}

void sub_1003C25BC(void *a1, uint64_t a2, char a3, id a4)
{
  sub_1003C2074(a3);
  v10 = objc_opt_self();
  v11 = __OFADD__(a2, 1);
  v12 = a2 + 1;
  if (v11)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_4;
  }

  v13 = v10;
  v6 = UICollectionViewCompositionalLayout_ptr;
  p_ivars = &ResourceBundleClass.ivars;
  v14 = [objc_allocWithZone(NSNumber) initWithInteger:v12];
  v15 = [v13 localizedStringFromNumber:v14 numberStyle:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = *&v4[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneLabel];

  v17 = String._bridgeToObjectiveC()();
  [v16 setText:v17];

  v18 = [a4 unitManager];
  if (!v18)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  v19 = v18;
  v59 = a4;
  a4 = [v18 userDistanceHKUnitForDistanceType:3];

  if (qword_1008DAA08 != -1)
  {
    goto LABEL_19;
  }

LABEL_4:
  v20 = [qword_1008EB740 unitStringFromValue:objc_msgSend(objc_opt_self() unit:{"lengthFormatterUnitFromUnit:", a4), 1.0}];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = [a1 splitDelimiterDistance];
  if ((v24 * v12) >> 64 != (v24 * v12) >> 63)
  {
    __break(1u);
    goto LABEL_21;
  }

  v57 = [objc_allocWithZone(v6[214]) p_ivars[311]];
  v25 = [objc_opt_self() stringWithNumber:v57 decimalPrecision:1];
  v60 = a1;
  v61 = v4;
  v58 = a4;
  if (v25)
  {
    v26 = v25;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0xE000000000000000;
  }

  v56 = objc_opt_self();
  v30 = [v56 mainBundle];
  v31 = String._bridgeToObjectiveC()();
  v32 = [v30 localizedStringForKey:v31 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1006D1F70;
  *(v33 + 56) = &type metadata for String;
  v34 = sub_10000A788();
  *(v33 + 32) = v27;
  *(v33 + 40) = v29;
  *(v33 + 96) = &type metadata for String;
  *(v33 + 104) = v34;
  *(v33 + 64) = v34;
  *(v33 + 72) = v21;
  *(v33 + 80) = v23;

  String.init(format:_:)();

  v35 = *&v61[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoLabel];

  v36 = String._bridgeToObjectiveC()();
  [v35 setText:v36];

  v37 = [objc_opt_self() distanceColors];
  if (!v37)
  {
    goto LABEL_22;
  }

  v38 = v37;

  v39 = [v38 nonGradientTextColor];

  [v35 setTextColor:v39];
  v40 = [v60 formattedPaceWithFormattingManager:v59];
  if (v40)
  {
    v41 = v40;
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0xE000000000000000;
  }

  v45 = [v60 formattedStrokeCount];
  if (v45)
  {
    v46 = v45;
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0xE000000000000000;
  }

  v50 = [v56 mainBundle];
  v51 = String._bridgeToObjectiveC()();
  v52 = [v50 localizedStringForKey:v51 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = swift_allocObject();
  *(v53 + 16) = v55;
  *(v53 + 56) = &type metadata for String;
  *(v53 + 64) = v34;
  *(v53 + 32) = v42;
  *(v53 + 40) = v44;
  *(v53 + 96) = &type metadata for String;
  *(v53 + 104) = v34;
  *(v53 + 72) = v47;
  *(v53 + 80) = v49;
  String.init(format:_:)();

  v54 = *&v61[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeLabel];
  v62 = String._bridgeToObjectiveC()();
  [v54 setText:v62];
}

void sub_1003C2C68(void *a1, void *a2, void *a3, uint64_t a4, int a5, char a6, void *a7, void *a8)
{
  v9 = v8;
  v52 = a7;
  v53 = a1;
  v16 = type metadata accessor for DateInterval();
  v50 = *(v16 - 8);
  v51 = v16;
  __chkstk_darwin(v16);
  v49 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003C2074(a6);
  v18 = objc_opt_self();
  if (__OFADD__(a4, 1))
  {
    __break(1u);
    goto LABEL_23;
  }

  v19 = v18;
  v54 = a5;
  v20 = [objc_allocWithZone(NSNumber) initWithInteger:a4 + 1];
  v21 = [v19 localizedStringFromNumber:v20 numberStyle:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = *&v9[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneLabel];

  v23 = String._bridgeToObjectiveC()();
  [v22 setText:v23];

  [a3 duration];
  if (round(v24) < 3600.0)
  {
    v25 = 3;
  }

  else
  {
    v25 = 2;
  }

  v26 = [a8 stringWithDuration:v25 durationFormat:?];
  if (v26)
  {
    v27 = v26;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = *&v9[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoLabel];
    v29 = String._bridgeToObjectiveC()();
  }

  else
  {
    v29 = 0;
    v28 = *&v9[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoLabel];
  }

  [v28 setText:v29];

  if (a2)
  {
    v30 = [a2 fiui_activityType];
    goto LABEL_11;
  }

  v30 = [v53 fiui_activityType];
  if (!v30)
  {
LABEL_23:
    __break(1u);
    return;
  }

LABEL_11:

  v31 = FIUIPaceFormatForWorkoutActivityType();
  v32 = [objc_opt_self() meterUnit];
  [a3 distanceInMeters];
  v34 = [objc_opt_self() quantityWithUnit:v32 doubleValue:v33];

  v35 = FIUIDistanceTypeForActivityType();
  v55 = v34;
  [a3 duration];
  v36 = [a8 localizedPaceStringWithDistance:v55 overDuration:v31 paceFormat:v35 distanceType:?];

  if (v36)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = *&v9[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeLabel];
    v36 = String._bridgeToObjectiveC()();
  }

  else
  {
    v37 = *&v9[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeLabel];
  }

  [v37 setText:v36];

  if (v54)
  {
    v38 = [a3 dateInterval];
    if (v38)
    {
      v39 = v49;
      v40 = v38;
      static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

      v41.super.isa = DateInterval._bridgeToObjectiveC()().super.isa;
      (*(v50 + 8))(v39, v51);
    }

    else
    {
      v41.super.isa = 0;
    }

    v43 = v52;
    v44 = swift_allocObject();
    *(v44 + 16) = a8;
    *(v44 + 24) = v9;
    aBlock[4] = sub_1003C31B8;
    aBlock[5] = v44;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100212B08;
    aBlock[3] = &unk_100855F08;
    v45 = _Block_copy(aBlock);
    v46 = a8;
    v47 = v9;

    [v43 averageHeartRateForWorkout:v53 during:v41.super.isa completion:v45];

    _Block_release(v45);
  }

  else
  {

    v42 = v55;
  }
}

uint64_t sub_1003C31D0()
{
  result = sub_10013AA50();
  if ((result & 1) == 0)
  {
    v22 = objc_opt_self();
    v2 = [v22 defaultCenter];
    v3 = kFIUIFitnessUnitPreferencesDidChangeNotification;
    v4 = [*(*(v0 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_context) + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fiuiFormattingManager) unitManager];
    v5 = objc_opt_self();
    v6 = [v5 mainQueue];
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = sub_1003C3640;
    v29 = v7;
    aBlock = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_100026F8C;
    v27 = &unk_100855FA8;
    v8 = _Block_copy(&aBlock);

    v23 = [v2 addObserverForName:v3 object:v4 queue:v6 usingBlock:v8];
    _Block_release(v8);

    v9 = [v22 defaultCenter];
    v10 = kASFriendListChangedNotificationKey;
    v11 = [v5 mainQueue];
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = sub_1003C366C;
    v29 = v12;
    aBlock = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_100026F8C;
    v27 = &unk_100855FD0;
    v13 = _Block_copy(&aBlock);

    v14 = [v9 addObserverForName:v10 object:0 queue:v11 usingBlock:v13];
    _Block_release(v13);

    v15 = [v22 defaultCenter];
    if (qword_1008DAD60 != -1)
    {
      swift_once();
    }

    v16 = qword_100925E00;
    v17 = [v5 mainQueue];
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = sub_1003C3754;
    v29 = v18;
    aBlock = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_100026F8C;
    v27 = &unk_100855FF8;
    v19 = _Block_copy(&aBlock);

    v20 = [v15 addObserverForName:v16 object:0 queue:v17 usingBlock:v19];
    _Block_release(v19);

    sub_100140278(&qword_1008E7590);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1006D64F0;
    *(v21 + 56) = swift_getObjectType();
    *(v21 + 32) = v23;
    *(v21 + 88) = swift_getObjectType();
    *(v21 + 64) = v14;
    *(v21 + 120) = swift_getObjectType();
    *(v21 + 96) = v20;
    *(v0 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_notificationCenterObservers) = v21;
  }

  return result;
}

void sub_1003C3698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  static os_log_type_t.default.getter();
  v6 = HKLogActivity;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_100069D98(a5);
  }
}

void sub_1003C37A0(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>, int *a10)
{
  v64 = a8;
  v65 = a5;
  v74 = a7;
  v72 = a4;
  v73 = a6;
  v76 = a2;
  v12 = a3;
  v71 = type metadata accessor for UUID();
  v69 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for ActivityRingsCard();
  __chkstk_darwin(v70);
  v15 = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100140278(&unk_1008DB8A0);
  __chkstk_darwin(v16 - 8);
  v67 = v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v66 = v62 - v19;
  v20 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v20 - 8);
  v75 = v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v62 - v23;
  __chkstk_darwin(v25);
  v77 = v62 - v26;
  v27 = type metadata accessor for Calendar();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for Date();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = v62 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  if (v12 < 3 || a1 | v76)
  {
    *(a9 + 32) = 0;
    *a9 = 0u;
    *(a9 + 16) = 0u;
  }

  else
  {
    v38 = v36;
    v39 = v62 - v37;
    static Calendar.current.getter();
    Date.init()();
    Calendar.startOfDay(for:)();
    v40 = *(v32 + 8);
    v76 = v38;
    v62[0] = v40;
    v62[1] = v32 + 8;
    v40(v34, v38);
    (*(v28 + 8))(v30, v27);
    v63 = v39;
    v41 = [*(v74 + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_summaryCache) activitySummaryForCacheIndex:sub_1001E9F44()];
    v42 = v64;
    v43 = [v64 resumeDate];
    if (v43)
    {
      v44 = v43;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v45 = 0;
    }

    else
    {
      v45 = 1;
    }

    v46 = v70;
    v47 = v67;
    v70 = a10;
    (*(v32 + 56))(v24, v45, 1, v76);
    sub_1002239C4(v24, v77);
    [v41 setDeprecatedPauseForInternalSwiftClient:{objc_msgSend(v42, "isPaused")}];
    sub_10001B104(v65, v78, &qword_1008DCC60);
    v48 = v79;
    if (v79)
    {
      v49 = v80;
      sub_1000066AC(v78, v79);
      v50 = v48;
      v51 = v66;
      (*(v49 + 8))(v50, v49);
      v52 = v69;
      v53 = v71;
      (*(v69 + 56))(v51, 0, 1, v71);
      sub_100005A40(v78);
    }

    else
    {
      sub_10000EA04(v78, &qword_1008DCC60);
      v52 = v69;
      v51 = v66;
      v53 = v71;
      (*(v69 + 56))(v66, 1, 1, v71);
    }

    sub_10001B104(v77, v75, &unk_1008F73A0);
    LODWORD(v74) = *(v74 + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_isWheelchairUser);
    *(a9 + 24) = v46;
    *(a9 + 32) = &off_1008552C8;
    v71 = sub_100005994(a9);
    v54 = &v15[v46[5]];
    *v54 = 0;
    *(v54 + 1) = 0;
    v54[16] = 3;
    sub_10001B104(v51, v47, &unk_1008DB8A0);
    v55 = v51;
    v56 = v47;
    v57 = *(v52 + 48);
    v58 = v57(v56, 1, v53);
    v59 = v70;
    if (v58 == 1)
    {
      v60 = v68;
      UUID.init()();
      sub_10000EA04(v55, &unk_1008DB8A0);
      if (v57(v56, 1, v53) != 1)
      {
        sub_10000EA04(v56, &unk_1008DB8A0);
      }
    }

    else
    {
      sub_10000EA04(v55, &unk_1008DB8A0);
      v60 = v68;
      (*(v52 + 32))(v68, v56, v53);
    }

    (*(v52 + 32))(v15, v60, v53);
    v15[v46[6]] = v72 & 1;
    v15[v46[7]] = v73 & 1;
    v15[v46[8]] = 1;
    *&v15[v46[9]] = v41;
    sub_1002239C4(v75, &v15[v46[10]]);
    v15[v46[12]] = v74;
    v61 = v71;
    *&v15[v46[11]] = v70;
    sub_1003A40C0(v15, v61);
    sub_10000EA04(v77, &unk_1008F73A0);
    (v62[0])(v63, v76);
  }
}

id sub_1003C3F5C()
{
  v1 = *(v0 + 8);
  v2 = [objc_allocWithZone(CHFriendsSetupViewController) init];
  [v2 setDelegate:v1];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  [v2 setPhase:v4 animated:0];
  return v2;
}

id sub_1003C4018(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return [a1 setPhase:v3 animated:0];
}

uint64_t sub_1003C40AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1003C419C();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1003C4110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1003C419C();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1003C4174()
{
  sub_1003C419C();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1003C419C()
{
  result = qword_1008EB770;
  if (!qword_1008EB770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EB770);
  }

  return result;
}

uint64_t sub_1003C41F0(uint64_t a1)
{
  v1 = *sub_1000066AC((a1 + 32), *(a1 + 56));
  sub_1000059F8(0, &qword_1008EB220);
  **(*(v1 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return _swift_continuation_resume(v1);
}

Swift::Int sub_1003C4274()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[16];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  if ((v3 & 1) == 0)
  {
    Hasher._combine(_:)(3uLL);
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_1003C42E8()
{
  v1 = *(v0 + 1);
  v2 = v0[16];
  Hasher._combine(_:)(*v0);
  if ((v2 & 1) == 0)
  {
    Hasher._combine(_:)(3uLL);
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_1003C4338()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[16];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  if ((v3 & 1) == 0)
  {
    Hasher._combine(_:)(3uLL);
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1003C43A8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 1);
  v3 = *(a2 + 1);
  v4 = a2[16];
  if (a1[16] == 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (v3 != 1)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v3 <= 1)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
      }

      if ((v4 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v2 != v3)
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1003C4424()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_100140278(&qword_1008EB7E0);
  v3 = *(v2 - 8);
  v31 = v2;
  v32 = v3;
  __chkstk_darwin(v2);
  v30 = &ObjectType - v4;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = *(v0 + OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_workoutDataProvider);
  v37 = sub_1003CF1EC;
  v38 = v5;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_1000449A8;
  v36 = &unk_100856338;
  v7 = _Block_copy(&aBlock);

  [v6 addUpdateHandler:v7];
  _Block_release(v7);
  v37 = sub_1003CF1EC;
  v38 = v5;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_1000449A8;
  v36 = &unk_100856360;
  v8 = _Block_copy(&aBlock);

  [v6 addAnimatedUpdateHandler:v8];
  _Block_release(v8);
  [*(*(*(v1 + OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_activityDataProvider) + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_activitySummaryListener) + OBJC_IVAR____TtC10FitnessApp29ActivitySummaryChangeListener_observers) addObject:v1];
  v9 = objc_opt_self();
  v10 = [v9 defaultCenter];
  v11 = objc_opt_self();
  v12 = [v11 mainQueue];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v15 = ObjectType;
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  v37 = sub_1003CF1F4;
  v38 = v14;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_100026F8C;
  v36 = &unk_1008563B0;
  v16 = _Block_copy(&aBlock);

  v17 = [v10 addObserverForName:UIApplicationSignificantTimeChangeNotification object:0 queue:v12 usingBlock:v16];
  _Block_release(v16);

  v18 = [v9 defaultCenter];
  v19 = kFIMindfulnessSessionDataProviderDidUpdateNotification;
  v20 = [v11 mainQueue];
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = sub_1003CF1FC;
  v38 = v21;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_100026F8C;
  v36 = &unk_1008563D8;
  v22 = _Block_copy(&aBlock);

  v23 = [v18 addObserverForName:v19 object:0 queue:v20 usingBlock:v22];
  _Block_release(v22);

  swift_beginAccess();
  sub_100140278(&qword_1008DC668);
  v24 = v30;
  Published.projectedValue.getter();
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10014A6B0(&qword_1008EB7E8, &qword_1008EB7E0);
  v25 = v31;
  v26 = Publisher<>.sink(receiveValue:)();

  (*(v32 + 8))(v24, v25);
  sub_100140278(&qword_1008E7590);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1006D64F0;
  *(v27 + 56) = swift_getObjectType();
  *(v27 + 32) = v17;
  *(v27 + 88) = swift_getObjectType();
  *(v27 + 64) = v23;
  *(v27 + 120) = type metadata accessor for AnyCancellable();
  *(v27 + 96) = v26;
  *(v1 + OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_observers) = v27;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  sub_10001D544();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void sub_1003C4A68()
{
  v0 = static os_log_type_t.default.getter();
  v1 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v0))
  {
    v2 = v1;
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12[0] = v4;
    *v3 = 136315138;
    v5 = _typeName(_:qualified:)();
    v7 = sub_10000AFDC(v5, v6, v12);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v2, v0, "%s did receive significantTimeChangeNotification notification", v3, 0xCu);
    sub_100005A40(v4);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = __chkstk_darwin(Strong);
    UnfairLock.acquire<A>(_:)();
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    sub_10001D544();
  }
}

uint64_t sub_1003C4C3C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = __chkstk_darwin(Strong);
    UnfairLock.acquire<A>(_:)();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;

    PassthroughSubject.send(_:)();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_100049A20(2);
    sub_10001D544();
  }

  return result;
}

void sub_1003C4D98()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v6 = &_swiftEmptySetSingleton;
    __chkstk_darwin(Strong);

    UnfairLock.acquire<A>(_:)();

    v2 = *(&_swiftEmptySetSingleton + 2);
    if (v2)
    {
      v3 = sub_1001A3C58(v6[2], 0);
      v4 = sub_1001A9EA8(&v5, v3 + 32, v2, &_swiftEmptySetSingleton);

      sub_100022DEC();
      if (v4 != v2)
      {
        __break(1u);
      }
    }

    sub_10001D544();
  }
}

uint64_t sub_1003C4F24(uint64_t a1, uint64_t a2, char **a3)
{
  v6 = OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_activeMetrics;
  v7 = *(a1 + OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_activeMetrics);

  v8 = sub_100156AE4(a2);
  v9 = sub_100049B38(v8);

  if (*(v7 + 16) <= *(v9 + 2) >> 3)
  {

    sub_1003CD2B4(v7);

    v10 = v9;
  }

  else
  {

    v10 = sub_1003CD3A8(v7, v9);
  }

  *a3 = v10;

  *(a1 + v6) = v9;
}

uint64_t sub_1003C500C@<X0>(int a1@<W0>, uint64_t (*a2)(char *, uint64_t, uint64_t)@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v53 = a1;
  v8 = sub_100140278(&qword_1008E5C70);
  v9 = __chkstk_darwin(v8 - 8);
  v45 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v46 = &v42 - v11;
  v12 = type metadata accessor for DateInterval();
  v49 = *(v12 - 8);
  v50 = v12;
  v13 = __chkstk_darwin(v12);
  v44 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v47 = &v42 - v15;
  v16 = type metadata accessor for MetricDetailViewModel();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100140278(&qword_1008DC408);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v42 - v24;
  (*(v17 + 56))(&v42 - v24, 1, 1, v16);
  v54 = v25;
  v55 = v4;
  v48 = v4;
  v26 = v53;
  v56 = v53;
  v52 = a2;
  v57 = a2;
  v51 = a3;
  v58 = a3 & 1;
  UnfairLock.acquire<A>(_:)();
  sub_10001B104(v25, v23, &qword_1008DC408);
  if ((*(v17 + 48))(v23, 1, v16) == 1)
  {
    v27 = &qword_1008DC408;
LABEL_5:
    sub_10000EA04(v23, v27);
    v29 = v52;
    v30 = v51;
    goto LABEL_6;
  }

  sub_10002AFD4(v23, v19, type metadata accessor for MetricDetailViewModel);
  v23 = v46;
  sub_10001B104(&v19[*(v16 + 36)], v46, &qword_1008E5C70);
  v28 = *(v49 + 48);
  if (v28(v23, 1, v50) == 1)
  {
    sub_1000292B4(v19, type metadata accessor for MetricDetailViewModel);
    v27 = &qword_1008E5C70;
    goto LABEL_5;
  }

  v43 = v19;
  v36 = v50;
  v46 = *(v49 + 32);
  (v46)(v47, v23, v50);
  v30 = v51;
  v37 = v45;
  v29 = v52;
  sub_100062880(v52, v51 & 1, v45);
  if (v28(v37, 1, v36) == 1)
  {
    (*(v49 + 8))(v47, v50);
    sub_1000292B4(v43, type metadata accessor for MetricDetailViewModel);
    sub_10000EA04(v37, &qword_1008E5C70);
  }

  else
  {
    v38 = v44;
    v39 = v50;
    (v46)(v44, v37, v50);
    v40 = v47;
    LODWORD(v46) = static DateInterval.== infix(_:_:)();
    v41 = *(v49 + 8);
    v41(v38, v39);
    v41(v40, v39);
    if (v46)
    {
      sub_10002AFD4(v43, a4, type metadata accessor for MetricDetailViewModel);
      return sub_10000EA04(v25, &qword_1008DC408);
    }

    sub_1000292B4(v43, type metadata accessor for MetricDetailViewModel);
  }

  v26 = v53;
LABEL_6:
  v31 = sub_1004D3AD8(v26);
  v32 = objc_opt_self();
  v33 = [v32 quantityWithUnit:v31 doubleValue:0.0];
  v34 = [v32 quantityWithUnit:v31 doubleValue:0.0];
  sub_100062880(v29, v30 & 1, a4 + *(v16 + 36));
  Date.init()();

  *a4 = v33;
  *(a4 + 8) = v34;
  *(a4 + 16) = _swiftEmptyArrayStorage;
  *(a4 + 24) = _swiftEmptyArrayStorage;
  *(a4 + 32) = v29;
  *(a4 + 40) = v30 & 1;
  *(a4 + *(v16 + 40)) = 0;
  return sub_10000EA04(v25, &qword_1008DC408);
}

uint64_t sub_1003C5610(uint64_t a1, uint64_t a2, unsigned __int8 a3, Swift::UInt a4, char a5)
{
  v10 = sub_100140278(&qword_1008DC408);
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - v11;
  v13 = OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_modelViewCache;
  swift_beginAccess();
  v14 = *(a2 + v13);
  if (*(v14 + 16) && (v15 = sub_10002AB7C(a3, a4, a5 & 1), (v16 & 1) != 0))
  {
    v17 = v15;
    v18 = *(v14 + 56);
    v19 = type metadata accessor for MetricDetailViewModel();
    v20 = *(v19 - 8);
    sub_10002910C(v18 + *(v20 + 72) * v17, v12);
    (*(v20 + 56))(v12, 0, 1, v19);
  }

  else
  {
    v21 = type metadata accessor for MetricDetailViewModel();
    (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  }

  return sub_1003CF17C(v12, a1);
}

uint64_t sub_1003C57C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v8 = a5 > 3u;
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_10002BACC;

  return sub_1003C59C0(a1, a5, v8, 1);
}

uint64_t sub_1003C5888(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_modelViewCache;
  swift_beginAccess();

  v4 = sub_1003CD9FC(v3);

  *(a1 + v2) = v4;
}

uint64_t sub_1003C5914(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_modelViewCache;
  swift_beginAccess();

  v4 = sub_1003CE990(v3, sub_1003CECF8);

  *(a1 + v2) = v4;
}

uint64_t sub_1003C59C0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  *(v5 + 40) = a3;
  *(v5 + 48) = v4;
  *(v5 + 105) = a4;
  *(v5 + 104) = a2;
  *(v5 + 32) = a1;
  *(v5 + 56) = swift_getObjectType();
  sub_100140278(&qword_1008E1760);
  *(v5 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_10002BCC0, 0, 0);
}

uint64_t sub_1003C5A74()
{

  return _swift_task_switch(sub_1003C5B70, 0, 0);
}

uint64_t sub_1003C5B70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C5BDC(uint64_t *a1, uint64_t a2, unsigned __int8 a3, Swift::UInt a4, char a5)
{
  v10 = OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_processingModelViewCache;
  swift_beginAccess();
  if (*(*(a2 + v10) + 16) && (sub_10002AB7C(a3, a4, a5 & 1), (v11 & 1) != 0))
  {
  }

  else
  {
    v12 = 0;
  }

  *a1 = v12;
}

uint64_t sub_1003C5C94(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  v12 = v8;
  *(v12 + 64) = v19;
  *(v12 + 72) = v21;
  *(v12 + 123) = v20;
  *(v12 + 122) = a8;
  *(v12 + 121) = a7;
  *(v12 + 48) = a5;
  *(v12 + 56) = a6;
  *(v12 + 120) = a4;
  *(v12 + 40) = a1;
  sub_100140278(&qword_1008DC408);
  *(v12 + 80) = swift_task_alloc();
  *(v12 + 88) = swift_task_alloc();
  if (a4 >= 4u)
  {
    if (a4 == 38)
    {
      v16 = swift_task_alloc();
      *(v12 + 104) = v16;
      *v16 = v12;
      v16[1] = sub_1003C5EE4;

      return sub_1003C6AA4(a1, a6, a7 & 1);
    }

    else
    {
      v17 = swift_task_alloc();
      *(v12 + 112) = v17;
      *v17 = v12;
      v17[1] = sub_1003C5FE0;

      return sub_1003C7F9C(a1, a4, a6, a7 & 1);
    }
  }

  else
  {
    v14 = swift_task_alloc();
    *(v12 + 96) = v14;
    *v14 = v12;
    v14[1] = sub_1000299A0;

    return sub_1003C61FC(a1, a4, a6, a7 & 1);
  }
}

uint64_t sub_1003C5EE4()
{

  return _swift_task_switch(sub_1003CF270, 0, 0);
}

uint64_t sub_1003C5FE0()
{

  return _swift_task_switch(sub_1003CF270, 0, 0);
}

uint64_t sub_1003C60DC(uint64_t a1, unsigned __int8 a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100069D98(a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1003C613C(uint64_t a1, unsigned __int8 a2, Swift::UInt a3, char a4, uint64_t a5)
{
  v10 = OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_processingModelViewCache;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a1 + v10);
  *(a1 + v10) = 0x8000000000000000;
  sub_100490F24(a5, a2, a3, a4 & 1, isUniquelyReferenced_nonNull_native);
  *(a1 + v10) = v13;
  return swift_endAccess();
}

uint64_t sub_1003C61FC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  *(v5 + 40) = a3;
  *(v5 + 48) = v4;
  *(v5 + 145) = a4;
  *(v5 + 144) = a2;
  *(v5 + 32) = a1;
  *(v5 + 56) = swift_getObjectType();
  sub_100140278(&qword_1008E5C70);
  *(v5 + 64) = swift_task_alloc();
  v6 = type metadata accessor for DateInterval();
  *(v5 + 72) = v6;
  *(v5 + 80) = *(v6 - 8);
  *(v5 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_1003C630C, 0, 0);
}

uint64_t sub_1003C630C()
{
  v79 = v0;
  v1 = static os_log_type_t.default.getter();
  v2 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v1))
  {
    v3 = *(v0 + 145);
    v4 = *(v0 + 144);
    v5 = v2;
    v6 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *v6 = 136315650;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10000AFDC(v7, v8, &v76);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = sub_10002A094(v4);
    v12 = sub_10000AFDC(v10, v11, &v76);

    *(v6 + 14) = v12;
    *(v6 + 22) = 2080;
    v13 = *(v0 + 40);
    if (v3)
    {
      v14 = 0x6565772073696874;
      v15 = 0xE90000000000006BLL;
      if (v13 != 1)
      {
        v14 = 0x6E6F6D2073696874;
        v15 = 0xEA00000000006874;
      }

      if (v13)
      {
        v16 = v14;
      }

      else
      {
        v16 = 0x7961646F74;
      }

      if (v13)
      {
        v17 = v15;
      }

      else
      {
        v17 = 0xE500000000000000;
      }
    }

    else
    {
      v77 = 0x2072616579;
      v78 = 0xE500000000000000;
      *(v0 + 24) = v13;
      v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v18);

      v16 = v77;
      v17 = v78;
    }

    v19 = sub_10000AFDC(v16, v17, &v76);

    *(v6 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v5, v1, "%s fetchQuantitySample for %s in %s", v6, 0x20u);
    swift_arrayDestroy();
  }

  v20 = sub_10069AB38(*(v0 + 144));
  *(v0 + 96) = v20;
  if (!v20)
  {
    goto LABEL_16;
  }

  v21 = v20;
  v22 = *(v0 + 72);
  v23 = *(v0 + 80);
  v24 = *(v0 + 64);
  sub_100062880(*(v0 + 40), *(v0 + 145) & 1, v24);
  if ((*(v23 + 48))(v24, 1, v22) == 1)
  {
    v25 = *(v0 + 64);

    sub_10000EA04(v25, &qword_1008E5C70);
LABEL_16:
    v26 = static os_log_type_t.error.getter();
    v27 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v26))
    {
      v28 = *(v0 + 145);
      v29 = *(v0 + 144);
      v30 = v27;
      v31 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v31 = 136315650;
      v32 = _typeName(_:qualified:)();
      v34 = sub_10000AFDC(v32, v33, &v76);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2080;
      v35 = sub_10002A094(v29);
      v37 = sub_10000AFDC(v35, v36, &v76);

      *(v31 + 14) = v37;
      *(v31 + 22) = 2080;
      v38 = *(v0 + 40);
      if (v28)
      {
        v39 = 0x6565772073696874;
        v40 = 0xE90000000000006BLL;
        if (v38 != 1)
        {
          v39 = 0x6E6F6D2073696874;
          v40 = 0xEA00000000006874;
        }

        if (v38)
        {
          v41 = v39;
        }

        else
        {
          v41 = 0x7961646F74;
        }

        if (v38)
        {
          v42 = v40;
        }

        else
        {
          v42 = 0xE500000000000000;
        }
      }

      else
      {
        v77 = 0x2072616579;
        v78 = 0xE500000000000000;
        *(v0 + 16) = v38;
        v58._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v58);

        v41 = v77;
        v42 = v78;
      }

      v59 = sub_10000AFDC(v41, v42, &v76);

      *(v31 + 24) = v59;
      _os_log_impl(&_mh_execute_header, v30, v26, "%s error fetchQuantitySample for %s in %s: invalid sample type or date interval", v31, 0x20u);
      swift_arrayDestroy();
    }

    v60 = *(v0 + 32);
    v61 = type metadata accessor for MetricDetailViewModel();
    (*(*(v61 - 8) + 56))(v60, 1, 1, v61);

    v62 = *(v0 + 8);

    return v62();
  }

  (*(*(v0 + 80) + 32))(*(v0 + 88), *(v0 + 64), *(v0 + 72));
  v43 = objc_opt_self();
  v44 = [v43 _predicateForObjectsFromAppleWatches];
  *(v0 + 104) = v44;
  isa = DateInterval._bridgeToObjectiveC()().super.isa;
  v46 = [v43 predicateForSamplesWithinDateInterval:isa options:0];
  *(v0 + 112) = v46;

  v47 = [objc_opt_self() sharedBehavior];
  if (v47)
  {
    v55 = v47;
    v56 = [v47 isStandalonePhoneFitnessMode];

    if (v56)
    {
      v57 = v46;
    }

    else
    {
      sub_100140278(&unk_1008E4E20);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1006D68D0;
      *(v64 + 32) = v46;
      *(v64 + 40) = v44;
      sub_1000059F8(0, &unk_1008E4070);
      v65 = v46;
      v66 = v44;
      v67 = Array._bridgeToObjectiveC()().super.isa;

      v57 = [objc_opt_self() andPredicateWithSubpredicates:v67];
    }

    *(v0 + 120) = v57;
    v68 = *(v0 + 88);
    v70 = *(v0 + 48);
    v69 = *(v0 + 56);
    v71 = *(v0 + 145);
    v72 = *(v0 + 40);
    v73 = *(v0 + 144);
    v74 = swift_task_alloc();
    *(v0 + 128) = v74;
    *(v74 + 16) = v21;
    *(v74 + 24) = v57;
    *(v74 + 32) = v73;
    *(v74 + 40) = v72;
    *(v74 + 48) = v71 & 1;
    *(v74 + 56) = v70;
    *(v74 + 64) = v68;
    *(v74 + 72) = v69;
    v75 = swift_task_alloc();
    *(v0 + 136) = v75;
    v54 = sub_100140278(&qword_1008DC408);
    *v75 = v0;
    v75[1] = sub_1000297D4;
    v47 = *(v0 + 32);
    v52 = sub_1003CEDA8;
    v51 = 0x800000010075AE50;
    v48 = 0;
    v49 = 0;
    v50 = 0xD000000000000026;
    v53 = v74;
  }

  else
  {
    __break(1u);
  }

  return withCheckedContinuation<A>(isolation:function:_:)(v47, v48, v49, v50, v51, v52, v53, v54);
}

uint64_t sub_1003C6AA4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 176) = a2;
  *(v4 + 184) = v3;
  *(v4 + 376) = a3;
  *(v4 + 168) = a1;
  *(v4 + 192) = swift_getObjectType();
  sub_100140278(&unk_1008F73A0);
  *(v4 + 200) = swift_task_alloc();
  v5 = type metadata accessor for MetricChartData();
  *(v4 + 208) = v5;
  *(v4 + 216) = *(v5 - 8);
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  v6 = type metadata accessor for Date();
  *(v4 + 240) = v6;
  *(v4 + 248) = *(v6 - 8);
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  v7 = type metadata accessor for Calendar();
  *(v4 + 280) = v7;
  *(v4 + 288) = *(v7 - 8);
  *(v4 + 296) = swift_task_alloc();
  v8 = type metadata accessor for DateComponents();
  *(v4 + 304) = v8;
  *(v4 + 312) = *(v8 - 8);
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 328) = swift_task_alloc();
  sub_100140278(&qword_1008E5C70);
  *(v4 + 336) = swift_task_alloc();
  *(v4 + 344) = swift_task_alloc();
  v9 = type metadata accessor for DateInterval();
  *(v4 + 352) = v9;
  *(v4 + 360) = *(v9 - 8);
  *(v4 + 368) = swift_task_alloc();

  return _swift_task_switch(sub_1003C6D94, 0, 0);
}

uint64_t sub_1003C6D94()
{
  v44 = v0;
  v1 = static os_log_type_t.default.getter();
  v2 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v1))
  {
    v3 = *(v0 + 376);
    v4 = v2;
    v5 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_10000AFDC(v6, v7, &v41);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = *(v0 + 176);
    if (v3)
    {
      v10 = 0x6565772073696874;
      v11 = 0xE90000000000006BLL;
      if (v9 != 1)
      {
        v10 = 0x6E6F6D2073696874;
        v11 = 0xEA00000000006874;
      }

      if (v9)
      {
        v12 = v10;
      }

      else
      {
        v12 = 0x7961646F74;
      }

      if (v9)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0xE500000000000000;
      }
    }

    else
    {
      v42 = 0x2072616579;
      v43 = 0xE500000000000000;
      *(v0 + 160) = v9;
      v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v14);

      v12 = v42;
      v13 = v43;
    }

    v15 = sub_10000AFDC(v12, v13, &v41);

    *(v5 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v4, v1, "%s fetchMindfulMinutes in %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v16 = *(v0 + 352);
  v17 = *(v0 + 360);
  v18 = *(v0 + 344);
  sub_100062880(*(v0 + 176), *(v0 + 376) & 1, v18);
  if ((*(v17 + 48))(v18, 1, v16) == 1)
  {
    sub_10000EA04(*(v0 + 344), &qword_1008E5C70);
    v19 = static os_log_type_t.error.getter();
    v20 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v19))
    {
      v21 = *(v0 + 376);
      v22 = v20;
      v23 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v23 = 136315394;
      v24 = _typeName(_:qualified:)();
      v26 = sub_10000AFDC(v24, v25, &v41);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2080;
      v27 = *(v0 + 176);
      if (v21)
      {
        v28 = 0x6565772073696874;
        v29 = 0xE90000000000006BLL;
        if (v27 != 1)
        {
          v28 = 0x6E6F6D2073696874;
          v29 = 0xEA00000000006874;
        }

        if (v27)
        {
          v30 = v28;
        }

        else
        {
          v30 = 0x7961646F74;
        }

        if (v27)
        {
          v31 = v29;
        }

        else
        {
          v31 = 0xE500000000000000;
        }
      }

      else
      {
        v42 = 0x2072616579;
        v43 = 0xE500000000000000;
        *(v0 + 144) = v27;
        v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v35);

        v30 = v42;
        v31 = v43;
      }

      v36 = sub_10000AFDC(v30, v31, &v41);

      *(v23 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v22, v19, "%s error fetchMindfulMinutes in %s: invalid date interval", v23, 0x16u);
      swift_arrayDestroy();
    }

    v37 = *(v0 + 168);
    v38 = type metadata accessor for MetricDetailViewModel();
    (*(*(v38 - 8) + 56))(v37, 1, 1, v38);

    v39 = *(v0 + 8);

    return v39();
  }

  else
  {
    v32 = *(v0 + 184);
    (*(*(v0 + 360) + 32))(*(v0 + 368), *(v0 + 344), *(v0 + 352));
    v33 = *(v32 + OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_mindfulnessDataProvider);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 152;
    *(v0 + 24) = sub_1003C73B4;
    v34 = swift_continuation_init();
    *(v0 + 136) = sub_100140278(&qword_1008EB7D0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1003C41F0;
    *(v0 + 104) = &unk_1008561D0;
    *(v0 + 112) = v34;
    [v33 allMindfulnessSessionsWithCompletion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_1003C73B4()
{

  return _swift_task_switch(sub_1003C7494, 0, 0);
}

unint64_t sub_1003C7494()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 376);
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = swift_task_alloc();
  v5[2] = v1;
  v6 = sub_1005AD40C(sub_1003CED18, v5, v4);

  v7 = sub_1003CE35C(v6, v3, v2 & 1, sub_10048C40C);

  v78 = sub_1004D3AD8(38);
  result = sub_100027808(v1, v3, v2 & 1);
  v100 = v0;
  v87 = *(result + 16);
  if (v87)
  {
    v9 = 0;
    v10 = *(v0 + 312);
    v11 = *(v0 + 248);
    v73 = *(v0 + 208);
    v74 = *(v0 + 216);
    v83 = result + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v81 = (*(v0 + 288) + 8);
    v80 = (v11 + 48);
    v77 = (v11 + 32);
    v97 = (v11 + 8);
    v72 = (v11 + 16);
    v85 = v10;
    v79 = (v10 + 8);
    v12 = _swiftEmptyArrayStorage;
    v13 = 0.0;
    v14 = v0;
    v15 = result;
    v75 = result;
    v76 = v7;
    while (v9 < *(v15 + 16))
    {
      v16 = v14[37];
      v17 = v14[35];
      v18 = v14[30];
      v19 = v14[25];
      v91 = v9;
      (*(v85 + 16))(v14[41], v83 + *(v85 + 72) * v9, v14[38]);
      static Calendar.current.getter();
      Calendar.date(from:)();
      (*v81)(v16, v17);
      v20 = (*v80)(v19, 1, v18);
      v21 = v14[25];
      if (v20 == 1)
      {
        (*v79)(v14[41], v14[38]);
        result = sub_10000EA04(v21, &unk_1008F73A0);
      }

      else
      {
        (*v77)(v14[32], v14[25], v14[30]);
        if (v7[2] && (sub_1004C59D4(v14[41]), (v22 & 1) != 0))
        {
        }

        else
        {
          result = _swiftEmptyArrayStorage;
        }

        v89 = v12;
        v94 = result;
        if (result >> 62)
        {
          v23 = _CocoaArrayWrapper.endIndex.getter();
          result = v94;
          if (v23)
          {
LABEL_13:
            v24 = 0;
            v25 = result & 0xC000000000000001;
            v26 = result & 0xFFFFFFFFFFFFFF8;
            v27 = 0.0;
            while (1)
            {
              if (v25)
              {
                result = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v24 >= *(v26 + 16))
                {
                  goto LABEL_36;
                }

                result = *(result + 8 * v24 + 32);
              }

              v28 = result;
              v29 = v24 + 1;
              if (__OFADD__(v24, 1))
              {
                break;
              }

              v31 = *(v100 + 264);
              v30 = *(v100 + 272);
              v32 = *(v100 + 240);
              v33 = [result endDate];
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v34 = [v28 startDate];
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              Date.timeIntervalSince(_:)();
              v36 = v35;

              v37 = *v97;
              (*v97)(v31, v32);
              v37(v30, v32);
              v27 = v27 + v36;
              ++v24;
              result = v94;
              if (v29 == v23)
              {
                goto LABEL_23;
              }
            }

            __break(1u);
LABEL_36:
            __break(1u);
            break;
          }
        }

        else
        {
          v23 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v23)
          {
            goto LABEL_13;
          }
        }

        v27 = 0.0;
LABEL_23:
        v14 = v100;
        v38 = *(v100 + 328);
        v39 = *(v100 + 304);
        v40 = *(v100 + 256);
        v41 = *(v100 + 232);
        v42 = *(v100 + 240);
        v43 = *(v100 + 224);

        (*v72)(&v43[*(v73 + 20)], v40, v42);
        v44 = objc_opt_self();
        v45 = v78;
        v46 = [v44 quantityWithUnit:v45 doubleValue:v27];
        (*v97)(v40, v42);
        (*v79)(v38, v39);
        *v43 = v45;
        *&v43[*(v73 + 24)] = v46;
        sub_10002AFD4(v43, v41, type metadata accessor for MetricChartData);
        v12 = v89;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1001A1F18(0, v89[2] + 1, 1, v89);
        }

        v7 = v76;
        v48 = v12[2];
        v47 = v12[3];
        if (v48 >= v47 >> 1)
        {
          v12 = sub_1001A1F18(v47 > 1, v48 + 1, 1, v12);
        }

        v13 = v13 + v27;
        v49 = *(v100 + 232);
        v12[2] = v48 + 1;
        result = sub_10002AFD4(v49, v12 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v48, type metadata accessor for MetricChartData);
        v15 = v75;
      }

      v9 = v91 + 1;
      if (v91 + 1 == v87)
      {
        v90 = v12;

        goto LABEL_30;
      }
    }

    __break(1u);
  }

  else
  {

    v90 = _swiftEmptyArrayStorage;
    v13 = 0.0;
    v14 = v0;
LABEL_30:

    v50 = v14[37];
    v95 = v14[36];
    v51 = v14[34];
    v98 = v14[35];
    v52 = v14[33];
    v53 = v14[31];
    v92 = v14[30];
    static Calendar.current.getter();
    sub_100140278(&unk_1008E51B0);
    v54 = type metadata accessor for Calendar.Component();
    v55 = *(v54 - 8);
    v56 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1006D46C0;
    (*(v55 + 104))(v57 + v56, enum case for Calendar.Component.day(_:), v54);
    sub_10001C970(v57);
    swift_setDeallocating();
    (*(v55 + 8))(v57 + v56, v54);
    swift_deallocClassInstance();
    DateInterval.start.getter();
    DateInterval.end.getter();
    Calendar.dateComponents(_:from:to:)();

    v58 = *(v53 + 8);
    v58(v52, v92);
    v58(v51, v92);
    (*(v95 + 8))(v50, v98);
    v59 = DateComponents.day.getter();
    v60 = 0.0;
    if ((v61 & 1) == 0)
    {
      v60 = v13 / (v59 + 1.0);
    }

    v62 = *(v100 + 360);
    v99 = *(v100 + 368);
    v63 = *(v100 + 352);
    v64 = *(v100 + 336);
    v65 = *(v100 + 312);
    v86 = *(v100 + 320);
    v88 = *(v100 + 272);
    v66 = *(v100 + 248);
    v96 = *(v100 + 240);
    v93 = *(v100 + 376);
    v67 = *(v100 + 168);
    v82 = *(v100 + 304);
    v84 = *(v100 + 176);
    (*(v62 + 16))(v64);
    (*(v62 + 56))(v64, 0, 1, v63);
    Date.init()();
    v68 = objc_opt_self();
    *v67 = [v68 quantityWithUnit:v78 doubleValue:v13];
    v69 = [v68 quantityWithUnit:v78 doubleValue:v60];

    (*(v65 + 8))(v86, v82);
    *(v67 + 8) = v69;
    *(v67 + 16) = v90;
    *(v67 + 24) = _swiftEmptyArrayStorage;
    *(v67 + 32) = v84;
    *(v67 + 40) = v93 & 1;
    v70 = type metadata accessor for MetricDetailViewModel();
    sub_1003CED38(v64, v67 + v70[9]);
    *(v67 + v70[10]) = 1;
    (*(v66 + 32))(v67 + v70[11], v88, v96);
    (*(*(v70 - 1) + 56))(v67, 0, 1, v70);
    (*(v62 + 8))(v99, v63);

    v71 = *(v100 + 8);

    return v71();
  }

  return result;
}

uint64_t sub_1003C7E94(id *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 endDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = DateInterval.contains(_:)();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t sub_1003C7F9C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  *(v5 + 48) = a3;
  *(v5 + 56) = v4;
  *(v5 + 333) = a4;
  *(v5 + 332) = a2;
  *(v5 + 40) = a1;
  *(v5 + 64) = swift_getObjectType();
  v6 = type metadata accessor for MetricChartData();
  *(v5 + 72) = v6;
  *(v5 + 80) = *(v6 - 8);
  *(v5 + 88) = swift_task_alloc();
  v7 = type metadata accessor for Calendar();
  *(v5 + 96) = v7;
  *(v5 + 104) = *(v7 - 8);
  *(v5 + 112) = swift_task_alloc();
  sub_100140278(&unk_1008F73A0);
  *(v5 + 120) = swift_task_alloc();
  v8 = type metadata accessor for Date();
  *(v5 + 128) = v8;
  *(v5 + 136) = *(v8 - 8);
  *(v5 + 144) = swift_task_alloc();
  v9 = type metadata accessor for DateComponents();
  *(v5 + 152) = v9;
  *(v5 + 160) = *(v9 - 8);
  *(v5 + 168) = swift_task_alloc();
  sub_100140278(&qword_1008E5C70);
  *(v5 + 176) = swift_task_alloc();
  v10 = type metadata accessor for DateInterval();
  *(v5 + 184) = v10;
  *(v5 + 192) = *(v10 - 8);
  *(v5 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_1003C8254, 0, 0);
}

uint64_t sub_1003C8254()
{
  v86 = v0;
  v1 = static os_log_type_t.default.getter();
  v2 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v1))
  {
    v3 = *(v0 + 333);
    v4 = *(v0 + 332);
    v5 = v2;
    v6 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    *v6 = 136315650;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10000AFDC(v7, v8, &v83);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = sub_10002A094(v4);
    v12 = sub_10000AFDC(v10, v11, &v83);

    *(v6 + 14) = v12;
    *(v6 + 22) = 2080;
    v13 = *(v0 + 48);
    if (v3)
    {
      v14 = 0x6565772073696874;
      v15 = 0xE90000000000006BLL;
      if (v13 != 1)
      {
        v14 = 0x6E6F6D2073696874;
        v15 = 0xEA00000000006874;
      }

      if (v13)
      {
        v16 = v14;
      }

      else
      {
        v16 = 0x7961646F74;
      }

      if (v13)
      {
        v17 = v15;
      }

      else
      {
        v17 = 0xE500000000000000;
      }
    }

    else
    {
      v84 = 0x2072616579;
      v85 = 0xE500000000000000;
      *(v0 + 32) = v13;
      v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v18);

      v16 = v84;
      v17 = v85;
    }

    v19 = sub_10000AFDC(v16, v17, &v83);

    *(v6 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v5, v1, "%s fetchWorkoutData for %s in %s", v6, 0x20u);
    swift_arrayDestroy();
  }

  v20 = *(v0 + 333);
  v21 = *(v0 + 48);
  *(v0 + 208) = sub_10069ABB0(*(v0 + 332));
  if ((v22 & 1) != 0 || (v20 & (v21 == 0)) != 0)
  {
    goto LABEL_17;
  }

  v23 = *(v0 + 184);
  v24 = *(v0 + 192);
  v25 = *(v0 + 176);
  v26 = *(v0 + 333);
  sub_100062880(*(v0 + 48), v26 & 1, v25);
  if ((*(v24 + 48))(v25, 1, v23) == 1)
  {
    sub_10000EA04(*(v0 + 176), &qword_1008E5C70);
LABEL_17:
    v27 = static os_log_type_t.error.getter();
    v28 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v27))
    {
      v29 = *(v0 + 333);
      v30 = *(v0 + 332);
      v31 = v28;
      v32 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *v32 = 136315650;
      v33 = _typeName(_:qualified:)();
      v35 = sub_10000AFDC(v33, v34, &v83);

      *(v32 + 4) = v35;
      *(v32 + 12) = 2080;
      v36 = sub_10002A094(v30);
      v38 = sub_10000AFDC(v36, v37, &v83);

      *(v32 + 14) = v38;
      *(v32 + 22) = 2080;
      v39 = *(v0 + 48);
      if (v29)
      {
        v40 = 0x6565772073696874;
        v41 = 0xE90000000000006BLL;
        if (v39 != 1)
        {
          v40 = 0x6E6F6D2073696874;
          v41 = 0xEA00000000006874;
        }

        if (v39)
        {
          v42 = v40;
        }

        else
        {
          v42 = 0x7961646F74;
        }

        if (v39)
        {
          v43 = v41;
        }

        else
        {
          v43 = 0xE500000000000000;
        }
      }

      else
      {
        v84 = 0x2072616579;
        v85 = 0xE500000000000000;
        *(v0 + 16) = v39;
        v46._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v46);

        v42 = v84;
        v43 = v85;
      }

      v47 = sub_10000AFDC(v42, v43, &v83);

      *(v32 + 24) = v47;
      _os_log_impl(&_mh_execute_header, v31, v27, "%s error fetchWorkoutData for %s in %s: invalid metric type or date interval", v32, 0x20u);
      swift_arrayDestroy();
    }

    v48 = *(v0 + 40);
    v49 = type metadata accessor for MetricDetailViewModel();
    (*(*(v49 - 8) + 56))(v48, 1, 1, v49);
    goto LABEL_32;
  }

  v44 = *(v0 + 332);
  (*(*(v0 + 192) + 32))(*(v0 + 200), *(v0 + 176), *(v0 + 184));
  *(v0 + 24) = _swiftEmptyArrayStorage;
  *(v0 + 216) = sub_1004D3AD8(v44);
  v45 = 1;
  if (((1 << v44) & 0x5DDBB8E070) != 0)
  {
    v45 = 0;
  }

  else if (((1 << v44) & 0x2224471F80) == 0)
  {
    v45 = *(v0 + 333) ^ 1;
  }

  *(v0 + 334) = v45 & 1;
  v52 = sub_100027808(*(v0 + 200), *(v0 + 48), v26 & 1);
  *(v0 + 224) = v52;
  v53 = *(v52 + 2);
  *(v0 + 232) = v53;
  if (!v53)
  {
LABEL_41:

    v84 = sub_100474744(v63);
    sub_1003CC0F0(&v84);
    v70 = *(v0 + 334);

    v82 = v84;
    if (v70)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    else
    {

      _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v71 = *(v0 + 216);
    v73 = *(v0 + 192);
    v72 = *(v0 + 200);
    v74 = *(v0 + 184);
    v81 = *(v0 + 333);
    v75 = *(v0 + 40);
    v76 = *(v0 + 48);
    v77 = type metadata accessor for MetricDetailViewModel();
    v78 = *(v77 + 36);
    (*(v73 + 16))(v75 + v78, v72, v74);
    (*(v73 + 56))(v75 + v78, 0, 1, v74);
    Date.init()();
    v79 = objc_opt_self();
    *v75 = [v79 quantityWithUnit:v71 doubleValue:0.0];
    v80 = [v79 quantityWithUnit:v71 doubleValue:0.0];

    (*(v73 + 8))(v72, v74);
    *(v75 + 8) = v80;
    *(v75 + 16) = _swiftEmptyArrayStorage;
    *(v75 + 24) = v82;
    *(v75 + 32) = v76;
    *(v75 + 40) = v81 & 1;
    *(v75 + *(v77 + 40)) = 1;
    (*(*(v77 - 8) + 56))(v75, 0, 1, v77);
LABEL_32:

    v50 = *(v0 + 8);

    return v50();
  }

  v54 = 0;
  v55 = *(v0 + 160);
  *(v0 + 328) = *(v55 + 80);
  *(v0 + 240) = *(v55 + 72);
  *(v0 + 248) = *(v55 + 16);
  while (1)
  {
    *(v0 + 280) = v54;
    *(v0 + 288) = _swiftEmptyArrayStorage;
    *(v0 + 264) = 0;
    *(v0 + 272) = 0;
    *(v0 + 256) = 0;
    v56 = *(v0 + 128);
    v57 = *(v0 + 136);
    v59 = *(v0 + 112);
    v58 = *(v0 + 120);
    v60 = *(v0 + 96);
    v61 = *(v0 + 104);
    (*(v0 + 248))(*(v0 + 168), *(v0 + 224) + ((*(v0 + 328) + 32) & ~*(v0 + 328)) + *(v0 + 240) * v54, *(v0 + 152));
    static Calendar.current.getter();
    Calendar.date(from:)();
    (*(v61 + 8))(v59, v60);
    if ((*(v57 + 48))(v58, 1, v56) != 1)
    {
      break;
    }

    v62 = *(v0 + 120);
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    sub_10000EA04(v62, &unk_1008F73A0);
    v54 = *(v0 + 280) + 1;
    if (v54 == *(v0 + 232))
    {
      goto LABEL_41;
    }
  }

  v64 = *(v0 + 333);
  (*(*(v0 + 136) + 32))(*(v0 + 144), *(v0 + 120), *(v0 + 128));
  v65 = swift_task_alloc();
  *(v0 + 296) = v65;
  *v65 = v0;
  v65[1] = sub_1003C8C68;
  v67 = *(v0 + 208);
  v68 = *(v0 + 168);
  v69 = *(v0 + 332);

  return sub_1003C94E4(v68, v69, v67, v66, v64 & 1);
}

uint64_t sub_1003C8C68(uint64_t a1, double a2, double a3)
{
  v4 = *v3;
  *(v4 + 304) = a2;
  *(v4 + 312) = a3;
  *(v4 + 320) = a1;

  return _swift_task_switch(sub_1003C8D6C, 0, 0);
}

uint64_t sub_1003C8D6C()
{
  v71 = v0;
  v1 = *(v0 + 320);
  if (!(v1 >> 62))
  {
    v2 = *(v0 + 320);
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_15:
    v30 = *(v0 + 160);
    v29 = *(v0 + 168);
    v32 = *(v0 + 144);
    v31 = *(v0 + 152);
    v33 = *(v0 + 128);
    v34 = *(v0 + 136);

    (*(v34 + 8))(v32, v33);
    (*(v30 + 8))(v29, v31);
    v69 = *(v0 + 288);
    v21 = *(v0 + 264);
    v27 = *(v0 + 272);
    v20 = *(v0 + 256);
    goto LABEL_16;
  }

  v28 = _CocoaArrayWrapper.endIndex.getter();
  v2 = *(v0 + 320);
  if (!v28)
  {
    goto LABEL_15;
  }

LABEL_3:
  v4 = *(v0 + 304);
  v3 = *(v0 + 312);
  v6 = *(v0 + 264);
  v5 = *(v0 + 272);
  v7 = *(v0 + 334);
  sub_10019ECA8(v2);
  if (v7 == 1)
  {

    goto LABEL_6;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
LABEL_6:
    v9 = *(v0 + 312);
    v10 = 0.0;
    if (v9 > 0.0)
    {
      v10 = *(v0 + 304) / v9;
    }

    goto LABEL_9;
  }

  v10 = *(v0 + 304);
LABEL_9:
  v11 = *(v0 + 216);
  v12 = *(v0 + 88);
  v13 = *(v0 + 72);
  (*(*(v0 + 136) + 16))(&v12[*(v13 + 20)], *(v0 + 144), *(v0 + 128));
  v14 = objc_opt_self();
  v15 = v11;
  v16 = [v14 quantityWithUnit:v15 doubleValue:v10];
  *v12 = v15;
  *&v12[*(v13 + 24)] = v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v69 = *(v0 + 288);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v69 = sub_1001A1F18(0, v69[2] + 1, 1, v69);
  }

  v19 = v69[2];
  v18 = v69[3];
  if (v19 >= v18 >> 1)
  {
    v69 = sub_1001A1F18(v18 > 1, v19 + 1, 1, v69);
  }

  v20 = v4 + v5;
  v21 = v3 + v6;
  v22 = *(v0 + 160);
  v23 = *(v0 + 168);
  v24 = *(v0 + 152);
  v26 = *(v0 + 80);
  v25 = *(v0 + 88);
  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  (*(v22 + 8))(v23, v24);
  v69[2] = v19 + 1;
  sub_10002AFD4(v25, v69 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v19, type metadata accessor for MetricChartData);
  v27 = v20;
LABEL_16:
  v35 = *(v0 + 280) + 1;
  if (v35 == *(v0 + 232))
  {
LABEL_19:

    v70 = sub_100474744(v43);
    sub_1003CC0F0(&v70);
    v44 = *(v0 + 334);

    v68 = v70;
    if (v44)
    {
      v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
      swift_bridgeObjectRelease_n();
      v46 = 0.0;
      if (v45)
      {
        v47 = v20;
      }

      else
      {
        v47 = 0.0;
      }

      if (v21 <= 0.0)
      {
        goto LABEL_32;
      }
    }

    else
    {

      v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v46 = 0.0;
      if ((v55 & 1) == 0 || (v47 = v20, v21 <= 0.0))
      {
        v47 = v20;
        goto LABEL_32;
      }
    }

    v46 = v20 / v21;
LABEL_32:
    v56 = *(v0 + 216);
    v58 = *(v0 + 192);
    v57 = *(v0 + 200);
    v59 = *(v0 + 184);
    v67 = *(v0 + 333);
    v60 = *(v0 + 40);
    v61 = *(v0 + 48);
    v62 = type metadata accessor for MetricDetailViewModel();
    v63 = *(v62 + 36);
    (*(v58 + 16))(v60 + v63, v57, v59);
    (*(v58 + 56))(v60 + v63, 0, 1, v59);
    Date.init()();
    v64 = objc_opt_self();
    *v60 = [v64 quantityWithUnit:v56 doubleValue:v47];
    v65 = [v64 quantityWithUnit:v56 doubleValue:v46];

    (*(v58 + 8))(v57, v59);
    *(v60 + 8) = v65;
    *(v60 + 16) = v69;
    *(v60 + 24) = v68;
    *(v60 + 32) = v61;
    *(v60 + 40) = v67 & 1;
    *(v60 + *(v62 + 40)) = 1;
    (*(*(v62 - 8) + 56))(v60, 0, 1, v62);

    v66 = *(v0 + 8);

    return v66();
  }

  while (1)
  {
    *(v0 + 280) = v35;
    *(v0 + 288) = v69;
    *(v0 + 264) = v21;
    *(v0 + 272) = v27;
    *(v0 + 256) = v20;
    v36 = *(v0 + 128);
    v37 = *(v0 + 136);
    v39 = *(v0 + 112);
    v38 = *(v0 + 120);
    v41 = *(v0 + 96);
    v40 = *(v0 + 104);
    (*(v0 + 248))(*(v0 + 168), *(v0 + 224) + ((*(v0 + 328) + 32) & ~*(v0 + 328)) + *(v0 + 240) * v35, *(v0 + 152));
    static Calendar.current.getter();
    Calendar.date(from:)();
    (*(v40 + 8))(v39, v41);
    if ((*(v37 + 48))(v38, 1, v36) != 1)
    {
      break;
    }

    v42 = *(v0 + 120);
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    sub_10000EA04(v42, &unk_1008F73A0);
    v35 = *(v0 + 280) + 1;
    if (v35 == *(v0 + 232))
    {
      goto LABEL_19;
    }
  }

  v48 = *(v0 + 333);
  (*(*(v0 + 136) + 32))(*(v0 + 144), *(v0 + 120), *(v0 + 128));
  v49 = swift_task_alloc();
  *(v0 + 296) = v49;
  *v49 = v0;
  v49[1] = sub_1003C8C68;
  v51 = *(v0 + 208);
  v52 = *(v0 + 168);
  v53 = *(v0 + 332);

  return sub_1003C94E4(v52, v53, v51, v50, v48 & 1);
}

uint64_t sub_1003C94E4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 96) = a3;
  *(v6 + 104) = v5;
  *(v6 + 273) = a5;
  *(v6 + 272) = a2;
  *(v6 + 88) = a1;
  return _swift_task_switch(sub_1003C9510, 0, 0);
}

uint64_t sub_1003C9510()
{
  v117 = v0;
  v1 = *(v0 + 272);
  v2 = 1;
  if (((1 << v1) & 0x5DDBB8E070) != 0)
  {
    v2 = 0;
  }

  else if (((1 << v1) & 0x2224471F80) == 0)
  {
    v2 = *(v0 + 273) ^ 1;
  }

  *(v0 + 274) = v2 & 1;
  v3 = *(v0 + 104);
  v4 = *(v0 + 273);
  *(v0 + 80) = &_swiftEmptySetSingleton;
  v5 = *(v3 + OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_workoutDataProvider);
  if (v4)
  {
    v6 = [v5 workoutsByDay];
  }

  else
  {
    v6 = [v5 workoutsByMonthAndYear];
  }

  v7 = v6;
  type metadata accessor for DateComponents();
  sub_100140278(&unk_1008E4010);
  sub_10002BA84(&qword_1008DF090, &type metadata accessor for DateComponents);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v8 + 16) && (v9 = sub_1004C59D4(*(v0 + 88)), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  *(v0 + 112) = v11;

  if (v11 >> 62)
  {
    goto LABEL_122;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 120) = v12;
  if (!v12)
  {
LABEL_123:

    v14 = 0.0;
    v106 = &_swiftEmptySetSingleton;
    v15 = 0.0;
    goto LABEL_124;
  }

LABEL_14:
  v13 = 0;
  *(v0 + 128) = OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_metricFormattingHelper;
  *(v0 + 136) = HKQuantityTypeIdentifierDistanceWalkingRunning;
  v14 = 0.0;
  v15 = 0.0;
  while (1)
  {
    *(v0 + 160) = v15;
    *(v0 + 168) = v14;
    *(v0 + 144) = v14;
    *(v0 + 152) = v15;
    v17 = *(v0 + 112);
    if ((v17 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v13 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_120;
      }

      v18 = *(v17 + 8 * v13 + 32);
    }

    v19 = v18;
    *(v0 + 176) = v18;
    *(v0 + 184) = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      v111 = _CocoaArrayWrapper.endIndex.getter();
      *(v0 + 120) = v111;
      if (!v111)
      {
        goto LABEL_123;
      }

      goto LABEL_14;
    }

    v20 = *(v0 + 96);
    if ([v18 workoutActivityType] != v20)
    {
      break;
    }

    v21 = *(v0 + 274);
    v22 = v19;
    sub_1001A4A10(&v116, v22);

    if (v21 != 1)
    {
      v93 = *(v0 + 272);
      v94 = sub_1004D3AD8(*(v0 + 272));
      v95 = v94;
      v96 = 0.0;
      if (v93 <= 0x24)
      {
        if (((1 << v93) & 0x448882010) != 0)
        {
          v98 = [v22 fiui_totalDistance];
          if (v98)
          {
            v99 = v98;
            [v98 doubleValueForUnit:v95];
            v96 = v100;
          }

LABEL_103:
          v101 = v95;
LABEL_108:

          v15 = v15 + v96;
          goto LABEL_16;
        }

        if (((1 << v93) & 0x891104020) != 0)
        {
          [v22 fiui_duration];
          v96 = v97;
          goto LABEL_103;
        }

        if (((1 << v93) & 0x1102208040) != 0)
        {
          v101 = [v22 fi_elevationGain];
          [v101 doubleValueForUnit:v95];
          v96 = v102;

          goto LABEL_108;
        }
      }

      v101 = v22;
      v22 = v94;
      goto LABEL_108;
    }

    v23 = *(v0 + 272);
    if (v23 > 0x25)
    {
      goto LABEL_105;
    }

    if (((1 << v23) & 0x2224410080) == 0)
    {
      if (((1 << v23) & 0x61F00) != 0)
      {
        v107 = swift_task_alloc();
        *(v0 + 192) = v107;
        *v107 = v0;
        v107[1] = sub_1003CA308;
        v108 = *(v0 + 272);
        v109 = v22;
        v110 = 0;
        goto LABEL_115;
      }

      goto LABEL_105;
    }

    if (qword_1008DAC98 != -1)
    {
      swift_once();
    }

    v24 = qword_100925B98;
    v25 = [v22 fiui_totalDistance];
    if (!v25)
    {
      [v22 fiui_duration];
LABEL_105:

      goto LABEL_16;
    }

    v26 = v25;
    [v25 doubleValueForUnit:v24];
    v28 = v27;

    [v22 fiui_duration];
    if (v28 <= 0.0)
    {
      goto LABEL_105;
    }

    v30 = v29;

    v15 = v30 + *(v0 + 160);
    v14 = v28 + *(v0 + 168);
LABEL_16:
    v13 = *(v0 + 184);
    if (v13 == *(v0 + 120))
    {

      v106 = *(v0 + 80);
LABEL_124:
      v112 = sub_100311620(v106);

      v113 = *(v0 + 8);
      v114.n128_f64[0] = v15;
      v115.n128_f64[0] = v14;

      return v113(v112, v114, v115);
    }
  }

  v31 = [v19 workoutActivities];
  sub_1000059F8(0, &qword_1008EAF90);
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 200) = v32;

  if (!(v32 >> 62))
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 208) = v33;
    if (v33)
    {
      goto LABEL_33;
    }

    goto LABEL_113;
  }

  v33 = _CocoaArrayWrapper.endIndex.getter();
  *(v0 + 208) = v33;
  if (!v33)
  {
LABEL_113:

    goto LABEL_16;
  }

LABEL_33:
  if (v33 < 1)
  {
    goto LABEL_121;
  }

  v34 = 0;
  while (2)
  {
    *(v0 + 248) = v34;
    *(v0 + 232) = v15;
    *(v0 + 240) = v14;
    *(v0 + 216) = v14;
    *(v0 + 224) = v15;
    v35 = *(v0 + 200);
    if ((v35 & 0xC000000000000001) != 0)
    {
      v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v36 = *(v35 + 8 * v34 + 32);
    }

    v37 = v36;
    *(v0 + 256) = v36;
    v38 = *(v0 + 96);
    v39 = [v36 fiui_activityType];
    v40 = [v39 identifier];

    if (v40 != v38)
    {

      goto LABEL_36;
    }

    v41 = *(v0 + 274);
    sub_1001A4A10(&v116, *(v0 + 176));

    v42 = *(v0 + 272);
    if (v41 != 1)
    {
      switch(*(v0 + 272))
      {
        case 1:
        case 3:
        case 4:
        case 6:
        case 0xF:
        case 0x13:
        case 0x15:
        case 0x17:
        case 0x19:
        case 0x1E:
        case 0x20:
        case 0x22:
        case 0x24:
          v55 = objc_opt_self();
          v56 = v37;
          v57 = [v55 meterUnit];
          goto LABEL_68;
        case 5:
        case 0xE:
        case 0x14:
        case 0x18:
        case 0x1C:
        case 0x1F:
        case 0x23:
          v60 = objc_opt_self();
          v61 = v37;
          v57 = [v60 secondUnit];
          goto LABEL_68;
        case 7:
        case 0x10:
        case 0x16:
        case 0x1A:
        case 0x21:
        case 0x25:
          v62 = objc_opt_self();
          v63 = v37;
          v64 = [v62 secondUnit];
          if (qword_1008DAC98 != -1)
          {
            swift_once();
          }

          v65 = [v64 unitDividedByUnit:qword_100925B98];

          goto LABEL_69;
        case 8:
        case 0x11:
          v69 = objc_opt_self();
          v70 = v37;
          v57 = [v69 wattUnit];
          goto LABEL_68;
        case 9:
        case 0x12:
          v73 = objc_opt_self();
          v74 = v37;
          v57 = [v73 _countPerMinuteUnit];
          goto LABEL_68;
        case 0xA:
          v89 = [objc_opt_self() secondUnitWithMetricPrefix:4];
          goto LABEL_95;
        case 0xB:
          v89 = [objc_opt_self() meterUnitWithMetricPrefix:5];
          goto LABEL_95;
        case 0xC:
          v89 = [objc_opt_self() meterUnit];
          goto LABEL_95;
        case 0xD:
        case 0x1B:
          v67 = objc_opt_self();
          v68 = v37;
          v65 = [v67 meterUnit];
          goto LABEL_74;
        case 0x1D:
          v90 = objc_opt_self();
          v78 = v37;
          v91 = [v90 secondUnit];
          if (qword_1008DAC98 != -1)
          {
            swift_once();
          }

          v92 = [v91 unitDividedByUnit:qword_100925B98];

          goto LABEL_92;
        case 0x26:
          v89 = [objc_opt_self() secondUnit];
LABEL_95:
          v78 = v89;
          v77 = 0.0;
          goto LABEL_96;
        default:
          v71 = objc_opt_self();
          v72 = v37;
          v57 = [v71 countUnit];
LABEL_68:
          v65 = v57;
LABEL_69:
          v75 = *(v0 + 272);
          if (v75 > 0x24)
          {
            goto LABEL_86;
          }

          if (((1 << v75) & 0x448882010) != 0)
          {
LABEL_74:
            v78 = v37;
            isa = [v78 distanceType];
            if (!isa)
            {
              v80 = *(v0 + 136);
              sub_1000059F8(0, &qword_1008DEE18);
              isa = HKQuantityType.init(_:)(v80).super.super.super.isa;
            }

            v81 = [v78 statisticsForType:isa];
            if (v81)
            {
              v82 = v81;
              v83 = [v81 sumQuantity];
              if (v83)
              {
                v84 = v83;
                [v83 doubleValueForUnit:v65];
                v77 = v85;

                v37 = v65;
                goto LABEL_96;
              }
            }

            else
            {
            }

            v77 = 0.0;
            v37 = v65;
          }

          else
          {
            if (((1 << v75) & 0x891104020) != 0)
            {
              [v37 duration];
              v77 = v76;

LABEL_73:
              v78 = v37;
              goto LABEL_96;
            }

            if (((1 << v75) & 0x1102208040) == 0)
            {
LABEL_86:

              v77 = 0.0;
              goto LABEL_73;
            }

            v78 = v37;
            v86 = [v78 fiui_elevationGain];
            if (v86)
            {
              v87 = v86;
              [v86 doubleValueForUnit:v65];
              v77 = v88;

              v37 = v78;
            }

            else
            {

LABEL_92:
              v77 = 0.0;
              v37 = v78;
            }
          }

LABEL_96:

          v15 = v15 + v77;
          break;
      }

LABEL_36:
      v34 = *(v0 + 248) + 1;
      if (v34 == *(v0 + 208))
      {
        v16 = *(v0 + 176);

        goto LABEL_16;
      }

      continue;
    }

    break;
  }

  v43 = v37;
  if (v42 > 0x25)
  {
    goto LABEL_63;
  }

  if (((1 << v42) & 0x2224410080) != 0)
  {
    v44 = qword_1008DAC98;
    v45 = v43;
    if (v44 != -1)
    {
      swift_once();
    }

    v46 = qword_100925B98;
    v47 = [v45 distanceType];
    if (!v47)
    {
      v48 = *(v0 + 136);
      sub_1000059F8(0, &qword_1008DEE18);
      v47 = HKQuantityType.init(_:)(v48).super.super.super.isa;
    }

    v49 = [v45 statisticsForType:v47];
    if (v49)
    {
      v50 = v49;
      v51 = [(objc_class *)v49 sumQuantity];
      if (v51)
      {
        v52 = v51;
        [(objc_class *)v51 doubleValueForUnit:v46];
        v54 = v53;

        v50 = v47;
        v47 = v52;
      }

      else
      {
        v54 = 0.0;
      }
    }

    else
    {
      v54 = 0.0;
    }

    [v45 duration];
    v59 = v58;

    if (v54 > 0.0)
    {
      v15 = v59 + *(v0 + 232);
      v14 = v54 + *(v0 + 240);
    }

    goto LABEL_36;
  }

  if (((1 << v42) & 0x61F00) == 0)
  {
LABEL_63:
    v66 = v43;

    goto LABEL_36;
  }

  v103 = v43;
  v104 = swift_task_alloc();
  *(v0 + 264) = v104;
  *v104 = v0;
  v104[1] = sub_1003CB0A0;
  v108 = *(v0 + 272);
  v109 = *(v0 + 176);
  v110 = v103;
LABEL_115:

  return sub_1001F55C8(v109, v110, v108);
}

uint64_t sub_1003CA308(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  *(v4 + 40) = a3;
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 16) = v3;
  *(v4 + 275) = a3;

  return _swift_task_switch(sub_1003CA414, 0, 0);
}

void sub_1003CA414()
{
  v107 = v0;
  v1 = *(v0 + 275);

  if ((v1 & 1) == 0)
  {
    v6 = *(v0 + 24);
    v7 = *(v0 + 32);
    goto LABEL_112;
  }

  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
LABEL_4:
  v8 = *(v0 + 184);
  if (v8 == *(v0 + 120))
  {
    goto LABEL_116;
  }

  p_opt_class_meths = &OBJC_PROTOCOL____TtP10FitnessApp40SeymourDiscoverySheetCoordinatorDelegate_.opt_class_meths;
  while (1)
  {
    *(v0 + 160) = v2;
    *(v0 + 168) = v3;
    *(v0 + 144) = v4;
    *(v0 + 152) = v5;
    v10 = *(v0 + 112);
    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_120;
      }

      v11 = *(v10 + 8 * v8 + 32);
    }

    v12 = v11;
    *(v0 + 176) = v11;
    *(v0 + 184) = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_115:
      v5 = v2;
LABEL_116:

      v102 = sub_100311620(*(v0 + 80));

      v103 = *(v0 + 8);
      v104.n128_f64[0] = v5;
      v105.n128_f64[0] = v4;

      v103(v102, v104, v105);
      return;
    }

    v13 = *(v0 + 96);
    if ([v11 workoutActivityType] != v13)
    {
      break;
    }

    v14 = *(v0 + 274);
    v15 = v12;
    sub_1001A4A10(&v106, v15);

    if (v14 == 1)
    {
      v16 = *(v0 + 272);
      if (v16 > 0x25)
      {
        goto LABEL_24;
      }

      if (((1 << v16) & 0x2224410080) == 0)
      {
        if (((1 << v16) & 0x61F00) != 0)
        {
          v95 = swift_task_alloc();
          *(v0 + 192) = v95;
          *v95 = v0;
          v95[1] = sub_1003CA308;
          v96 = *(v0 + 272);
          v97 = v15;
          v98 = 0;
          goto LABEL_109;
        }

        goto LABEL_24;
      }

      if (p_opt_class_meths[403] != -1)
      {
        swift_once();
      }

      v17 = qword_100925B98;
      v18 = [v15 fiui_totalDistance];
      if (v18)
      {
        v19 = v18;
        [v18 doubleValueForUnit:v17];
        v7 = v20;

        [v15 fiui_duration];
        if (v7 <= 0.0)
        {
          goto LABEL_24;
        }

        v99 = v21;

        v6 = v99;
LABEL_112:
        v5 = v6 + *(v0 + 160);
        v4 = v7 + *(v0 + 168);
        v2 = v5;
        v3 = v4;
        goto LABEL_4;
      }

      [v15 fiui_duration];
LABEL_24:

LABEL_25:
      v8 = *(v0 + 184);
      if (v8 == *(v0 + 120))
      {
        goto LABEL_116;
      }
    }

    else
    {
      v25 = *(v0 + 272);
      v26 = sub_1004D3AD8(*(v0 + 272));
      v27 = v26;
      v28 = 0.0;
      if (v25 > 0x24)
      {
        goto LABEL_40;
      }

      if (((1 << v25) & 0x448882010) != 0)
      {
        v30 = [v15 fiui_totalDistance];
        if (v30)
        {
          v31 = v30;
          [v30 doubleValueForUnit:v27];
          v28 = v32;
        }

        goto LABEL_35;
      }

      if (((1 << v25) & 0x891104020) != 0)
      {
        [v15 fiui_duration];
        v28 = v29;
LABEL_35:
        v33 = v27;
        goto LABEL_38;
      }

      if (((1 << v25) & 0x1102208040) == 0)
      {
LABEL_40:
        v33 = v15;
        v15 = v26;
        goto LABEL_38;
      }

      v33 = [v15 fi_elevationGain];
      [v33 doubleValueForUnit:v27];
      v28 = v34;

LABEL_38:
      v2 = v2 + v28;
      v8 = *(v0 + 184);
      v5 = v2;
      if (v8 == *(v0 + 120))
      {
        goto LABEL_115;
      }
    }
  }

  v22 = [v12 workoutActivities];
  sub_1000059F8(0, &qword_1008EAF90);
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 200) = v23;

  if (!(v23 >> 62))
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 208) = v24;
    if (v24)
    {
      goto LABEL_42;
    }

    goto LABEL_22;
  }

  v24 = _CocoaArrayWrapper.endIndex.getter();
  *(v0 + 208) = v24;
  if (!v24)
  {
LABEL_22:

    goto LABEL_24;
  }

LABEL_42:
  if (v24 < 1)
  {
LABEL_120:
    __break(1u);
    return;
  }

  v35 = 0;
  while (1)
  {
    *(v0 + 248) = v35;
    *(v0 + 232) = v2;
    *(v0 + 240) = v3;
    *(v0 + 216) = v4;
    *(v0 + 224) = v5;
    v36 = *(v0 + 200);
    v37 = (v36 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v36 + 8 * v35 + 32);
    v38 = v37;
    *(v0 + 256) = v37;
    v39 = *(v0 + 96);
    v40 = [v37 fiui_activityType];
    v41 = [v40 identifier];

    if (v41 == v39)
    {
      break;
    }

LABEL_45:
    v35 = *(v0 + 248) + 1;
    if (v35 == *(v0 + 208))
    {
      v94 = *(v0 + 176);

      goto LABEL_25;
    }
  }

  v42 = *(v0 + 274);
  sub_1001A4A10(&v106, *(v0 + 176));

  v43 = *(v0 + 272);
  if (v42 != 1)
  {
    switch(*(v0 + 272))
    {
      case 1:
      case 3:
      case 4:
      case 6:
      case 0xF:
      case 0x13:
      case 0x15:
      case 0x17:
      case 0x19:
      case 0x1E:
      case 0x20:
      case 0x22:
      case 0x24:
        v56 = objc_opt_self();
        v57 = v38;
        v58 = [v56 meterUnit];
        goto LABEL_77;
      case 5:
      case 0xE:
      case 0x14:
      case 0x18:
      case 0x1C:
      case 0x1F:
      case 0x23:
        v61 = objc_opt_self();
        v62 = v38;
        v58 = [v61 secondUnit];
        goto LABEL_77;
      case 7:
      case 0x10:
      case 0x16:
      case 0x1A:
      case 0x21:
      case 0x25:
        v63 = objc_opt_self();
        v64 = v38;
        v65 = [v63 secondUnit];
        if (p_opt_class_meths[403] != -1)
        {
          swift_once();
        }

        v66 = [v65 unitDividedByUnit:qword_100925B98];

        goto LABEL_78;
      case 8:
      case 0x11:
        v70 = objc_opt_self();
        v71 = v38;
        v58 = [v70 wattUnit];
        goto LABEL_77;
      case 9:
      case 0x12:
        v74 = objc_opt_self();
        v75 = v38;
        v58 = [v74 _countPerMinuteUnit];
        goto LABEL_77;
      case 0xA:
        v90 = [objc_opt_self() secondUnitWithMetricPrefix:4];
        goto LABEL_107;
      case 0xB:
        v90 = [objc_opt_self() meterUnitWithMetricPrefix:5];
        goto LABEL_107;
      case 0xC:
        v90 = [objc_opt_self() meterUnit];
        goto LABEL_107;
      case 0xD:
      case 0x1B:
        v68 = objc_opt_self();
        v69 = v38;
        v66 = [v68 meterUnit];
        goto LABEL_83;
      case 0x1D:
        v91 = objc_opt_self();
        v79 = v38;
        v92 = [v91 secondUnit];
        if (p_opt_class_meths[403] != -1)
        {
          swift_once();
        }

        v93 = [v92 unitDividedByUnit:qword_100925B98];

        v78 = 0.0;
        v38 = v79;
        goto LABEL_98;
      case 0x26:
        v90 = [objc_opt_self() secondUnit];
LABEL_107:
        v79 = v90;
        v78 = 0.0;
        goto LABEL_98;
      default:
        v72 = objc_opt_self();
        v73 = v38;
        v58 = [v72 countUnit];
LABEL_77:
        v66 = v58;
LABEL_78:
        v76 = *(v0 + 272);
        if (v76 > 0x24)
        {
          goto LABEL_99;
        }

        if (((1 << v76) & 0x448882010) != 0)
        {
LABEL_83:
          v79 = v38;
          isa = [v79 distanceType];
          if (!isa)
          {
            v81 = *(v0 + 136);
            sub_1000059F8(0, &qword_1008DEE18);
            isa = HKQuantityType.init(_:)(v81).super.super.super.isa;
          }

          v82 = [v79 statisticsForType:isa];
          if (v82)
          {
            v83 = v82;
            v84 = [v82 sumQuantity];
            if (v84)
            {
              v85 = v84;
              [v84 doubleValueForUnit:v66];
              v78 = v86;

LABEL_96:
              v38 = v66;
              goto LABEL_97;
            }
          }

          else
          {
          }

          v78 = 0.0;
          goto LABEL_96;
        }

        if (((1 << v76) & 0x891104020) != 0)
        {
          [v38 duration];
          v78 = v77;

LABEL_82:
          v79 = v38;
          goto LABEL_97;
        }

        if (((1 << v76) & 0x1102208040) == 0)
        {
LABEL_99:

          v78 = 0.0;
          goto LABEL_82;
        }

        v79 = v38;
        v87 = [v79 fiui_elevationGain];
        if (v87)
        {
          v88 = v87;
          [v87 doubleValueForUnit:v66];
          v78 = v89;
        }

        else
        {

          v78 = 0.0;
        }

        v38 = v79;
LABEL_97:
        p_opt_class_meths = (&OBJC_PROTOCOL____TtP10FitnessApp40SeymourDiscoverySheetCoordinatorDelegate_ + 48);
LABEL_98:

        v5 = v2 + v78;
        v2 = v5;
        break;
    }

    goto LABEL_45;
  }

  v44 = v38;
  if (v43 > 0x25)
  {
    goto LABEL_72;
  }

  if (((1 << v43) & 0x2224410080) != 0)
  {
    v45 = p_opt_class_meths[403];
    v46 = v44;
    if (v45 != -1)
    {
      swift_once();
    }

    v47 = qword_100925B98;
    v48 = [v46 distanceType];
    if (!v48)
    {
      v49 = *(v0 + 136);
      sub_1000059F8(0, &qword_1008DEE18);
      v48 = HKQuantityType.init(_:)(v49).super.super.super.isa;
    }

    v50 = [v46 statisticsForType:v48];
    if (v50)
    {
      v51 = v50;
      v52 = [(objc_class *)v50 sumQuantity];
      if (v52)
      {
        v53 = v52;
        [(objc_class *)v52 doubleValueForUnit:v47];
        v55 = v54;

        v51 = v48;
        v48 = v53;
      }

      else
      {
        v55 = 0.0;
      }
    }

    else
    {
      v55 = 0.0;
    }

    [v46 duration];
    v60 = v59;

    p_opt_class_meths = (&OBJC_PROTOCOL____TtP10FitnessApp40SeymourDiscoverySheetCoordinatorDelegate_ + 48);
    if (v55 > 0.0)
    {
      v5 = v60 + *(v0 + 232);
      v4 = v55 + *(v0 + 240);
      v2 = v5;
      v3 = v4;
    }

    goto LABEL_45;
  }

  if (((1 << v43) & 0x61F00) == 0)
  {
LABEL_72:
    v67 = v44;

    goto LABEL_45;
  }

  v100 = v44;
  v101 = swift_task_alloc();
  *(v0 + 264) = v101;
  *v101 = v0;
  v101[1] = sub_1003CB0A0;
  v96 = *(v0 + 272);
  v97 = *(v0 + 176);
  v98 = v100;
LABEL_109:

  sub_1001F55C8(v97, v98, v96);
}

uint64_t sub_1003CB0A0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = *v3;
  *(v5 + 72) = a3;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  *(v5 + 48) = v3;
  v6 = *(v4 + 256);
  *(v5 + 276) = a3;

  return _swift_task_switch(sub_1003CB1C4, 0, 0);
}

void sub_1003CB1C4()
{
  v109 = v0;
  v1 = *(v0 + 276);

  if ((v1 & 1) == 0)
  {
    v64 = *(v0 + 56);
    v59 = *(v0 + 64);
    goto LABEL_108;
  }

  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v4 = *(v0 + 216);
  v5 = *(v0 + 224);
LABEL_3:
  v6 = 0x2224410080;
  p_opt_class_meths = &OBJC_PROTOCOL____TtP10FitnessApp40SeymourDiscoverySheetCoordinatorDelegate_.opt_class_meths;
LABEL_4:
  v8 = *(v0 + 248) + 1;
  if (v8 != *(v0 + 208))
  {
    goto LABEL_44;
  }

  v9 = *(v0 + 176);

LABEL_38:
  v26 = *(v0 + 184);
  v35 = *(v0 + 120);
  while (2)
  {
    if (v26 == v35)
    {
      goto LABEL_115;
    }

    while (1)
    {
      *(v0 + 160) = v2;
      *(v0 + 168) = v3;
      *(v0 + 144) = v4;
      *(v0 + 152) = v5;
      v10 = *(v0 + 112);
      if ((v10 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v26 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_119;
        }

        v11 = *(v10 + 8 * v26 + 32);
      }

      v12 = v11;
      *(v0 + 176) = v11;
      *(v0 + 184) = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
LABEL_114:
        v5 = v2;
LABEL_115:

        v104 = sub_100311620(*(v0 + 80));

        v105 = *(v0 + 8);
        v106.n128_f64[0] = v5;
        v107.n128_f64[0] = v4;

        v105(v104, v106, v107);
        return;
      }

      v13 = *(v0 + 96);
      if ([v11 workoutActivityType] != v13)
      {
        v36 = [v12 workoutActivities];
        sub_1000059F8(0, &qword_1008EAF90);
        v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        *(v0 + 200) = v37;

        if (v37 >> 62)
        {
          v38 = _CocoaArrayWrapper.endIndex.getter();
          *(v0 + 208) = v38;
          if (!v38)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
          *(v0 + 208) = v38;
          if (!v38)
          {
LABEL_35:

            goto LABEL_37;
          }
        }

        if (v38 >= 1)
        {
          v8 = 0;
LABEL_44:
          *(v0 + 248) = v8;
          *(v0 + 232) = v2;
          *(v0 + 240) = v3;
          *(v0 + 216) = v4;
          *(v0 + 224) = v5;
          v39 = *(v0 + 200);
          if ((v39 & 0xC000000000000001) != 0)
          {
            v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v40 = *(v39 + 8 * v8 + 32);
          }

          v41 = v40;
          *(v0 + 256) = v40;
          v42 = *(v0 + 96);
          v43 = [v40 fiui_activityType];
          v44 = [v43 identifier];

          if (v44 != v42)
          {

            goto LABEL_4;
          }

          v45 = *(v0 + 274);
          sub_1001A4A10(&v108, *(v0 + 176));

          v46 = *(v0 + 272);
          if (v45 == 1)
          {
            v47 = v41;
            if (v46 <= 0x25)
            {
              if (((1 << v46) & v6) != 0)
              {
                v48 = p_opt_class_meths[403];
                v49 = v47;
                if (v48 != -1)
                {
                  swift_once();
                }

                v50 = v6;
                v51 = qword_100925B98;
                isa = [v49 distanceType];
                if (!isa)
                {
                  v53 = *(v0 + 136);
                  sub_1000059F8(0, &qword_1008DEE18);
                  isa = HKQuantityType.init(_:)(v53).super.super.super.isa;
                }

                v54 = [v49 statisticsForType:isa];
                if (v54)
                {
                  v55 = v54;
                  v56 = [(objc_class *)v54 sumQuantity];
                  if (v56)
                  {
                    v57 = v56;
                    [(objc_class *)v56 doubleValueForUnit:v51];
                    v59 = v58;

                    v55 = isa;
                    isa = v57;
                  }

                  else
                  {
                    v59 = 0.0;
                  }
                }

                else
                {
                  v59 = 0.0;
                }

                [v49 duration];
                v64 = v63;

                v6 = v50;
                p_opt_class_meths = (&OBJC_PROTOCOL____TtP10FitnessApp40SeymourDiscoverySheetCoordinatorDelegate_ + 48);
                if (v59 > 0.0)
                {
LABEL_108:
                  v5 = v64 + *(v0 + 232);
                  v4 = v59 + *(v0 + 240);
                  v2 = v5;
                  v3 = v4;
                  goto LABEL_3;
                }

                goto LABEL_4;
              }

              if (((1 << v46) & 0x61F00) != 0)
              {
                v102 = v47;
                v103 = swift_task_alloc();
                *(v0 + 264) = v103;
                *v103 = v0;
                v103[1] = sub_1003CB0A0;
                v99 = *(v0 + 272);
                v100 = *(v0 + 176);
                v101 = v102;
                goto LABEL_109;
              }
            }

            v71 = v47;

            goto LABEL_4;
          }

          switch(*(v0 + 272))
          {
            case 1:
            case 3:
            case 4:
            case 6:
            case 0xF:
            case 0x13:
            case 0x15:
            case 0x17:
            case 0x19:
            case 0x1E:
            case 0x20:
            case 0x22:
            case 0x24:
              v60 = objc_opt_self();
              v61 = v41;
              v62 = [v60 meterUnit];
              goto LABEL_76;
            case 5:
            case 0xE:
            case 0x14:
            case 0x18:
            case 0x1C:
            case 0x1F:
            case 0x23:
              v65 = objc_opt_self();
              v66 = v41;
              v62 = [v65 secondUnit];
              goto LABEL_76;
            case 7:
            case 0x10:
            case 0x16:
            case 0x1A:
            case 0x21:
            case 0x25:
              v67 = objc_opt_self();
              v68 = v41;
              v69 = [v67 secondUnit];
              if (p_opt_class_meths[403] != -1)
              {
                swift_once();
              }

              v70 = [v69 unitDividedByUnit:qword_100925B98];

              goto LABEL_77;
            case 8:
            case 0x11:
              v74 = objc_opt_self();
              v75 = v41;
              v62 = [v74 wattUnit];
              goto LABEL_76;
            case 9:
            case 0x12:
              v78 = objc_opt_self();
              v79 = v41;
              v62 = [v78 _countPerMinuteUnit];
              goto LABEL_76;
            case 0xA:
              v94 = [objc_opt_self() secondUnitWithMetricPrefix:4];
              goto LABEL_106;
            case 0xB:
              v94 = [objc_opt_self() meterUnitWithMetricPrefix:5];
              goto LABEL_106;
            case 0xC:
              v94 = [objc_opt_self() meterUnit];
              goto LABEL_106;
            case 0xD:
            case 0x1B:
              v72 = objc_opt_self();
              v73 = v41;
              v70 = [v72 meterUnit];
              goto LABEL_82;
            case 0x1D:
              v95 = objc_opt_self();
              v83 = v41;
              v96 = [v95 secondUnit];
              if (p_opt_class_meths[403] != -1)
              {
                swift_once();
              }

              v97 = [v96 unitDividedByUnit:qword_100925B98];

              v82 = 0.0;
              v41 = v83;
              goto LABEL_97;
            case 0x26:
              v94 = [objc_opt_self() secondUnit];
LABEL_106:
              v83 = v94;
              v82 = 0.0;
              goto LABEL_97;
            default:
              v76 = objc_opt_self();
              v77 = v41;
              v62 = [v76 countUnit];
LABEL_76:
              v70 = v62;
LABEL_77:
              v80 = *(v0 + 272);
              if (v80 > 0x24)
              {
                goto LABEL_98;
              }

              if (((1 << v80) & 0x448882010) == 0)
              {
                if (((1 << v80) & 0x891104020) != 0)
                {
                  [v41 duration];
                  v82 = v81;

LABEL_81:
                  v83 = v41;
                  goto LABEL_96;
                }

                if (((1 << v80) & 0x1102208040) == 0)
                {
LABEL_98:

                  v82 = 0.0;
                  goto LABEL_81;
                }

                v83 = v41;
                v91 = [v83 fiui_elevationGain];
                if (v91)
                {
                  v92 = v91;
                  [v91 doubleValueForUnit:v70];
                  v82 = v93;
                }

                else
                {

                  v82 = 0.0;
                }

                v41 = v83;
LABEL_96:
                v6 = 0x2224410080;
LABEL_97:

                v5 = v2 + v82;
                v2 = v5;
                goto LABEL_4;
              }

LABEL_82:
              v83 = v41;
              v84 = [v83 distanceType];
              if (!v84)
              {
                v85 = *(v0 + 136);
                sub_1000059F8(0, &qword_1008DEE18);
                v84 = HKQuantityType.init(_:)(v85).super.super.super.isa;
              }

              v86 = [v83 statisticsForType:v84];
              if (v86)
              {
                v87 = v86;
                v88 = [v86 sumQuantity];
                if (v88)
                {
                  v89 = v88;
                  [v88 doubleValueForUnit:v70];
                  v82 = v90;

LABEL_95:
                  v41 = v70;
                  goto LABEL_96;
                }
              }

              else
              {
              }

              v82 = 0.0;
              goto LABEL_95;
          }
        }

LABEL_119:
        __break(1u);
        return;
      }

      v14 = *(v0 + 274);
      v15 = v12;
      sub_1001A4A10(&v108, v15);

      if (v14 == 1)
      {
        break;
      }

      v16 = *(v0 + 272);
      v17 = sub_1004D3AD8(*(v0 + 272));
      v18 = v17;
      v19 = 0.0;
      if (v16 > 0x24)
      {
        goto LABEL_25;
      }

      if (((1 << v16) & 0x448882010) != 0)
      {
        v21 = [v15 fiui_totalDistance];
        if (v21)
        {
          v22 = v21;
          [v21 doubleValueForUnit:v18];
          v19 = v23;
        }

        goto LABEL_20;
      }

      if (((1 << v16) & 0x891104020) != 0)
      {
        [v15 fiui_duration];
        v19 = v20;
LABEL_20:
        v24 = v18;
        goto LABEL_23;
      }

      if (((1 << v16) & 0x1102208040) == 0)
      {
LABEL_25:
        v24 = v15;
        v15 = v17;
        goto LABEL_23;
      }

      v24 = [v15 fi_elevationGain];
      [v24 doubleValueForUnit:v18];
      v19 = v25;

LABEL_23:
      v2 = v2 + v19;
      v26 = *(v0 + 184);
      v5 = v2;
      if (v26 == *(v0 + 120))
      {
        goto LABEL_114;
      }
    }

    v27 = *(v0 + 272);
    if (v27 > 0x25)
    {
      goto LABEL_37;
    }

    if (((1 << v27) & v6) != 0)
    {
      if (p_opt_class_meths[403] != -1)
      {
        swift_once();
      }

      v28 = qword_100925B98;
      v29 = [v15 fiui_totalDistance];
      if (v29)
      {
        v30 = v29;
        [v29 doubleValueForUnit:v28];
        v32 = v31;

        [v15 fiui_duration];
        if (v32 > 0.0)
        {
          v34 = v33;

          v2 = v34 + *(v0 + 160);
          v3 = v32 + *(v0 + 168);
          v26 = *(v0 + 184);
          v35 = *(v0 + 120);
          v5 = v2;
          v4 = v3;
          continue;
        }
      }

      else
      {
        [v15 fiui_duration];
      }

LABEL_37:

      goto LABEL_38;
    }

    break;
  }

  if (((1 << v27) & 0x61F00) == 0)
  {
    goto LABEL_37;
  }

  v98 = swift_task_alloc();
  *(v0 + 192) = v98;
  *v98 = v0;
  v98[1] = sub_1003CA308;
  v99 = *(v0 + 272);
  v100 = v15;
  v101 = 0;
LABEL_109:

  sub_1001F55C8(v100, v101, v99);
}

id sub_1003CBE8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricsDataProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for MetricsDataProvider.MetricDataCacheEntry(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xDA && a1[17])
  {
    return (*a1 + 218);
  }

  v3 = *a1;
  v4 = v3 >= 0x27;
  v5 = v3 - 39;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MetricsDataProvider.MetricDataCacheEntry(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xD9)
  {
    *(result + 16) = 0;
    *result = a2 - 218;
    *(result + 8) = 0;
    if (a3 >= 0xDA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xDA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 38;
    }
  }

  return result;
}

unint64_t sub_1003CC098()
{
  result = qword_1008EB7C0;
  if (!qword_1008EB7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EB7C0);
  }

  return result;
}

uint64_t sub_1003CC0F0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1001AB738(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1003CC16C(v6);
  return specialized ContiguousArray._endMutation()();
}

void sub_1003CC16C(uint64_t *a1)
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
        sub_1000059F8(0, &qword_1008ED7C0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1003CC4A0(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_1003CC280(0, v2, 1, a1);
  }
}

void sub_1003CC280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = type metadata accessor for Date();
  __chkstk_darwin(v35);
  v34 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v29 - v11;
  v30 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v36 = *a4;
    v14 = v36 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v32 = v14;
    v33 = a3;
    v16 = *(v36 + 8 * a3);
    v31 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      v19 = v16;
      v20 = v18;
      v21 = [v19 endDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = [v20 endDate];
      v23 = v34;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v22) = static Date.> infix(_:_:)();
      v24 = *v13;
      v25 = v23;
      v26 = v35;
      (*v13)(v25, v35);
      v24(v12, v26);

      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v14 = v32 + 8;
        v15 = v31 - 1;
        if (v33 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v27;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1003CC4A0(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v116 = a1;
  v125 = type metadata accessor for Date();
  __chkstk_darwin(v125);
  v124 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v123 = &v110 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v116;
    if (!*v116)
    {
      goto LABEL_127;
    }

    a4 = v15;
    v16 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v105 = a4;
    }

    else
    {
LABEL_121:
      v105 = sub_1001A99A4(a4);
    }

    v126 = v105;
    v106 = *(v105 + 2);
    if (v106 >= 2)
    {
      while (*v16)
      {
        a4 = *&v105[16 * v106];
        v107 = v105;
        v108 = *&v105[16 * v106 + 24];
        sub_1003CCD10((*v16 + 8 * a4), (*v16 + 8 * *&v105[16 * v106 + 16]), (*v16 + 8 * v108), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v108 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_1001A99A4(v107);
        }

        if (v106 - 2 >= *(v107 + 2))
        {
          goto LABEL_115;
        }

        v109 = &v107[16 * v106];
        *v109 = a4;
        v109[1] = v108;
        v126 = v107;
        sub_1001A9918(v106 - 1);
        v105 = v126;
        v106 = *(v126 + 2);
        if (v106 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v14 = 0;
  v122 = (v11 + 8);
  v15 = _swiftEmptyArrayStorage;
  v115 = a4;
  v111 = a3;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v120 = v13;
      v113 = v15;
      v114 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v119 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v20 = *v19;
      v5 = (v19 + 2);
      v21 = v18;
      v22 = v20;
      v23 = [v21 endDate];
      v24 = v123;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = [v22 endDate];
      v26 = v124;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LODWORD(v121) = static Date.> infix(_:_:)();
      v27 = *v122;
      v28 = v125;
      (*v122)(v26, v125);
      v27(v24, v28);

      v112 = v16;
      v29 = (v16 + 2);
      while (1)
      {
        v14 = v120;
        if (v120 == v29)
        {
          break;
        }

        v30 = *(v5 - 8);
        v31 = *v5;
        v32 = v30;
        v33 = [v31 endDate];
        v34 = v123;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v35 = [v32 endDate];
        v36 = v124;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LODWORD(v35) = static Date.> infix(_:_:)() & 1;
        v37 = v36;
        v38 = v125;
        v27(v37, v125);
        v27(v34, v38);

        ++v29;
        v5 += 8;
        if ((v121 & 1) != v35)
        {
          v14 = (v29 - 1);
          break;
        }
      }

      v15 = v113;
      v6 = v114;
      a4 = v115;
      v16 = v112;
      v39 = v119;
      if (v121)
      {
        if (v14 < v112)
        {
          goto LABEL_118;
        }

        a3 = v111;
        if (v112 < v14)
        {
          v40 = 8 * v14 - 8;
          v41 = v14;
          v42 = v112;
          do
          {
            if (v42 != --v41)
            {
              v44 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v43 = *(v44 + v39);
              *(v44 + v39) = *(v44 + v40);
              *(v44 + v40) = v43;
            }

            v42 = (v42 + 1);
            v40 -= 8;
            v39 += 8;
          }

          while (v42 < v41);
        }
      }

      else
      {
        a3 = v111;
      }
    }

    v45 = a3[1];
    if (v14 < v45)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_117;
      }

      if (v14 - v16 < a4)
      {
        v46 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_119;
        }

        if (v46 >= v45)
        {
          v46 = a3[1];
        }

        if (v46 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v14 != v46)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v14 < v16)
    {
      goto LABEL_116;
    }

    v61 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v61;
    }

    else
    {
      v15 = sub_1001A1D54(0, *(v61 + 2) + 1, 1, v61);
    }

    a4 = *(v15 + 2);
    v62 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v62 >> 1)
    {
      v15 = sub_1001A1D54((v62 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v63 = &v15[16 * a4];
    *(v63 + 4) = v16;
    *(v63 + 5) = v14;
    v64 = *v116;
    if (!*v116)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v65 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v66 = *(v15 + 4);
          v67 = *(v15 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_56:
          if (v69)
          {
            goto LABEL_105;
          }

          v82 = &v15[16 * v5];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_108;
          }

          v88 = &v15[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_112;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v92 = &v15[16 * v5];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_70:
        if (v87)
        {
          goto LABEL_107;
        }

        v95 = &v15[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_110;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v65 - 1;
        if (v65 - 1 >= v5)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v103 = v15;
        v5 = *&v15[16 * a4 + 32];
        v16 = *&v15[16 * v65 + 40];
        sub_1003CCD10((*a3 + 8 * v5), (*a3 + 8 * *&v15[16 * v65 + 32]), (*a3 + 8 * v16), v64);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v16 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_1001A99A4(v103);
        }

        if (a4 >= *(v103 + 2))
        {
          goto LABEL_102;
        }

        v104 = &v103[16 * a4];
        *(v104 + 4) = v5;
        *(v104 + 5) = v16;
        v126 = v103;
        a4 = &v126;
        sub_1001A9918(v65);
        v15 = v126;
        v5 = *(v126 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v15[16 * v5 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_103;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_104;
      }

      v77 = &v15[16 * v5];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_106;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_109;
      }

      if (v81 >= v73)
      {
        v99 = &v15[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_113;
        }

        if (v68 < v102)
        {
          v65 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v115;
    if (v14 >= v13)
    {
      goto LABEL_88;
    }
  }

  v113 = v15;
  v114 = v6;
  v121 = *a3;
  v47 = v121 + 8 * v14 - 8;
  v112 = v16;
  a4 = v16 - v14;
  v117 = v46;
LABEL_29:
  v119 = v47;
  v120 = v14;
  v48 = *(v121 + 8 * v14);
  v118 = a4;
  v49 = v47;
  while (1)
  {
    v50 = *v49;
    v5 = v48;
    v51 = v50;
    v52 = [v5 endDate];
    v53 = v123;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v54 = [v51 endDate];
    v55 = v124;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v54) = static Date.> infix(_:_:)();
    v56 = *v122;
    v57 = v55;
    v58 = v125;
    (*v122)(v57, v125);
    v56(v53, v58);

    if ((v54 & 1) == 0)
    {
LABEL_28:
      v14 = v120 + 1;
      v47 = v119 + 8;
      a4 = v118 - 1;
      if ((v120 + 1) != v117)
      {
        goto LABEL_29;
      }

      v14 = v117;
      v15 = v113;
      v6 = v114;
      a3 = v111;
      v16 = v112;
      goto LABEL_36;
    }

    if (!v121)
    {
      break;
    }

    v59 = *v49;
    v48 = *(v49 + 8);
    *v49 = v48;
    *(v49 + 8) = v59;
    v49 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

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
}