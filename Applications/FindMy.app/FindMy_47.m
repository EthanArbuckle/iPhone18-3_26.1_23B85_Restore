char *sub_1004E7010(uint64_t a1, char a2)
{
  v3 = v2;
  *(v3 + OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_scrollPocket) = 0;
  v6 = OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_headerTitleContainer;
  *(v3 + v6) = [objc_allocWithZone(UITableViewHeaderFooterView) init];
  v7 = OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_tableHeaderTitle;
  *(v3 + v7) = [objc_allocWithZone(UILabel) init];
  v8 = OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_listSubtitle;
  *(v3 + v8) = [objc_allocWithZone(UILabel) init];
  v9 = OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_titleTextsStackView;
  *(v3 + v9) = [objc_allocWithZone(UIStackView) init];
  *(v3 + OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_listTitleTopConstraint) = 0;
  *(v3 + OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_isLockedAtBottom) = 0;
  v10 = [objc_allocWithZone(type metadata accessor for FMSafeAreaInsetsPropagatingTableView()) initWithFrame:0 style:{0.0, 0.0, 0.0, 0.0}];
  objc_allocWithZone(type metadata accessor for FMUnknownItemsListDataSource(0));

  v11 = v10;
  v12 = sub_100238044(a1, v11, a2 & 1);
  *(v3 + OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_tableView) = v11;
  *(v3 + OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_dataSource) = v12;
  v29 = 0;
  __asm { FMOV            V1.2D, #4.0 }

  v22[0] = xmmword_100552160;
  v22[1] = _Q1;
  v22[2] = xmmword_100552170;
  v22[3] = xmmword_100552180;
  v22[4] = xmmword_100552190;
  v22[5] = xmmword_1005521A0;
  v22[6] = xmmword_1005521B0;
  v22[7] = xmmword_1005521C0;
  v22[8] = xmmword_1005521D0;
  v22[9] = xmmword_1005521E0;
  v23 = 0x4030000000000000;
  v24 = 0x403A000000000000;
  v25 = 0;
  __asm { FMOV            V0.2D, #16.0 }

  v26 = _Q0;
  v27 = 0x4046000000000000;
  v28 = 0;
  v19 = v12;
  v20 = sub_100278C9C(a1, v22);
  swift_unknownObjectWeakAssign();

  return v20;
}

id sub_1004E72B8(char a1)
{
  v2 = v1;
  if (qword_1006AED78 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4D08);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100005B4C(0xD000000000000011, 0x800000010059C700, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "FMUnknownItemsListDataSource: %s", v7, 0xCu);
    sub_100006060(v8);
  }

  v9 = type metadata accessor for FMUnknownItemsListViewController();
  v12.receiver = v2;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, "viewDidAppear:", a1 & 1);
}

void sub_1004E7470(char a1)
{
  v2 = v1;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for FMUnknownItemsListViewController();
  objc_msgSendSuper2(&v9, "viewWillAppear:", a1 & 1);
  sub_100238DC8();
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  v8[4] = sub_1004E8B50;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100004AE4;
  v8[3] = &unk_100643598;
  v6 = _Block_copy(v8);
  v7 = v2;

  [v4 animateWithDuration:4 delay:v6 options:0 animations:0.35 completion:0.1];
  _Block_release(v6);
}

id sub_1004E75A4(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_tableView);
  result = [v7 indexPathsForSelectedRows];
  if (result)
  {
    v9 = result;
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = *(v10 + 16);
    if (v11)
    {
      v14 = *(v3 + 16);
      v12 = v3 + 16;
      v13 = v14;
      v15 = (*(v12 + 64) + 32) & ~*(v12 + 64);
      v19[1] = v10;
      v16 = v10 + v15;
      v17 = *(v12 + 56);
      do
      {
        v13(v6, v16, v2);
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v7 deselectRowAtIndexPath:isa animated:1];

        (*(v12 - 8))(v6, v2);
        v16 += v17;
        --v11;
      }

      while (v11);
    }

    else
    {
    }
  }

  return result;
}

void sub_1004E7888(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_scrollPocket);
  if (v2)
  {
    v14 = v2;
    [a1 contentOffset];
    v14[OBJC_IVAR____TtC6FindMy18FMScrollPocketView_isEnabled] = v4 >= 10.0;
    v5 = *&v14[OBJC_IVAR____TtC6FindMy18FMScrollPocketView_interaction];
    if (v5)
    {
      [v5 _setActive:v4 >= 10.0];
    }

    [a1 contentOffset];
    v7 = v6;
    [*(v1 + OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_tableHeaderTitle) frame];
    MaxY = CGRectGetMaxY(v17);
    [*&v14[OBJC_IVAR____TtC6FindMy18FMScrollPocketView_titleLabel] alpha];
    if (v7 >= MaxY == v9 <= 0.0)
    {
      v10 = objc_opt_self();
      v11 = swift_allocObject();
      *(v11 + 16) = v14;
      *(v11 + 24) = v7 >= MaxY;
      aBlock[4] = sub_10027E1B4;
      aBlock[5] = v11;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004AE4;
      aBlock[3] = &unk_100643548;
      v12 = _Block_copy(aBlock);
      v13 = v14;

      [v10 animateWithDuration:v12 animations:0.3];

      _Block_release(v12);
    }

    else
    {
    }
  }
}

void sub_1004E7B04()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_isLockedAtBottom);
  *(v0 + OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_isLockedAtBottom) = 1;
  sub_1004E6A2C(v1);
}

void sub_1004E7B1C()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_isLockedAtBottom);
  *(v0 + OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_isLockedAtBottom) = 0;
  sub_1004E6A2C(v1);
}

void sub_1004E7B30()
{
  v1 = v0;
  sub_1002791F0();
  [*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_batteryIndicatorView] setHidden:1];
  [*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_separatorDotLabel] setHidden:1];
  [*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryLabel] setHidden:0];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = *&v1[OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_tableView];
  [v2 insertSubview:v4 above:*&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollView]];

  v5 = *&v1[OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_listSubtitle];
  v6 = objc_opt_self();
  v7 = [v6 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v5 setFont:v7];

  [v5 setHidden:1];
  LODWORD(v8) = 1148846080;
  [v5 setContentCompressionResistancePriority:1 forAxis:v8];
  v9 = *&v1[OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_tableHeaderTitle];
  v10 = [v6 preferredFontForTextStyle:UIFontTextStyleTitle1];
  v11 = sub_100039388(2);

  [v9 setFont:v11];
  v12 = [objc_opt_self() labelColor];
  [v9 setTextColor:v12];

  [v9 setNumberOfLines:2];
  [v9 setAccessibilityTraits:UIAccessibilityTraitHeader];
  LODWORD(v13) = 1148846080;
  [v9 setContentCompressionResistancePriority:1 forAxis:v13];
  v14 = objc_opt_self();
  v15 = [v14 mainBundle];
  v36._object = 0x8000000100579A00;
  v16._object = 0x800000010058B710;
  v17.value._object = 0x80000001005799E0;
  v16._countAndFlagsBits = 0xD000000000000018;
  v17.value._countAndFlagsBits = 0xD000000000000013;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v36._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v36);

  v19 = String._bridgeToObjectiveC()();

  [v9 setText:v19];

  [v9 setAdjustsFontForContentSizeCategory:1];
  v20 = *&v1[OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_titleTextsStackView];
  [v20 setAxis:1];
  [v20 setAlignment:0];
  [v20 addArrangedSubview:v9];
  [v20 addArrangedSubview:v5];
  [v20 setSpacing:2.0];
  v21 = *&v1[OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_headerTitleContainer];
  v22 = [v21 contentView];
  [v22 addSubview:v20];

  [v4 setTableHeaderView:v21];
  sub_1004E6754();
  v23 = v4;
  v24 = [v14 mainBundle];
  v37._object = 0x8000000100579A00;
  v25._object = 0x800000010058B710;
  v26.value._object = 0x80000001005799E0;
  v25._countAndFlagsBits = 0xD000000000000018;
  v26.value._countAndFlagsBits = 0xD000000000000013;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v37._countAndFlagsBits = 0xD000000000000018;
  v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v26, v24, v27, v37);

  v29 = objc_allocWithZone(type metadata accessor for FMScrollPocketView());
  v30 = sub_1001A2204(v23, v28._countAndFlagsBits, v28._object);
  v31 = *&v1[OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_scrollPocket];
  *&v1[OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_scrollPocket] = v30;
  v32 = v30;

  v33 = [v1 view];
  if (!v33)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v34 = v33;
  [v33 addSubview:v32];
}

void sub_1004E801C()
{
  sub_10027A200();
  v87 = OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_scrollPocket;
  v1 = *&v0[OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_scrollPocket];
  if (v1)
  {
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  sub_10007EBC0(&qword_1006AFC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005521F0;
  v3 = *&v0[OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_tableView];
  *(inited + 32) = v3;
  v4 = *&v0[OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_headerTitleContainer];
  *(inited + 40) = v4;
  v5 = *&v0[OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_tableHeaderTitle];
  *(inited + 48) = v5;
  v6 = *&v0[OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_titleTextsStackView];
  *(inited + 56) = v6;
  v7 = inited & 0xC000000000000001;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_28;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  for (i = v8; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v13 = i;
    [i setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v7)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_27;
      }

      v14 = *(inited + 40);
    }

    v15 = v14;
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v7)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_27;
      }

      v16 = *(inited + 48);
    }

    v17 = v16;
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v7)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v18 = *(inited + 56);
      goto LABEL_15;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_15:
  v19 = v18;
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

  swift_setDeallocating();
  swift_arrayDestroy();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1005521F0;
  v21 = [v8 topAnchor];
  v22 = [v0 view];
  if (!v22)
  {
    __break(1u);
    goto LABEL_33;
  }

  v23 = v22;
  v24 = [v22 topAnchor];

  v25 = [v21 constraintEqualToAnchor:v24];
  *(v20 + 32) = v25;
  v26 = [v8 bottomAnchor];
  v27 = [v0 view];
  if (!v27)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v28 = v27;
  v29 = [v27 bottomAnchor];

  v30 = [v26 constraintGreaterThanOrEqualToAnchor:v29];
  *(v20 + 40) = v30;
  v31 = [v8 leadingAnchor];
  v32 = [v0 view];
  if (!v32)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v33 = v32;
  v34 = [v32 leadingAnchor];

  v35 = [v31 constraintEqualToAnchor:v34];
  *(v20 + 48) = v35;
  v36 = [v8 trailingAnchor];
  v37 = [v0 view];
  if (!v37)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v38 = v37;
  v39 = objc_opt_self();
  v40 = [v38 trailingAnchor];

  v41 = [v36 constraintEqualToAnchor:v40];
  *(v20 + 56) = v41;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v86 = v39;
  [v39 activateConstraints:isa];

  if (qword_1006AEBD0 != -1)
  {
    swift_once();
  }

  v44 = *&qword_1006D44F8;
  v43 = *&xmmword_1006D4500;
  v45 = *&qword_1006D4550;
  v46 = *&qword_1006D4560;
  v47 = [v11 topAnchor];
  v48 = [v9 contentView];
  v49 = [v48 topAnchor];

  v50 = [v47 constraintEqualToAnchor:v49 constant:v43];
  v51 = *&v0[OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_listTitleTopConstraint];
  *&v0[OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_listTitleTopConstraint] = v50;
  v52 = v50;

  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1005521F0;
  *(v53 + 32) = v52;
  v88 = v52;
  v54 = [v11 trailingAnchor];
  v55 = [v9 contentView];
  v56 = [v55 trailingAnchor];

  v57 = [v54 constraintEqualToAnchor:v56 constant:-v46];
  *(v53 + 40) = v57;
  v58 = [v11 leadingAnchor];
  v59 = [v9 contentView];
  v60 = [v59 leadingAnchor];

  v61 = [v58 constraintEqualToAnchor:v60 constant:v45];
  *(v53 + 48) = v61;
  v62 = [v11 bottomAnchor];
  v63 = [v9 contentView];
  v64 = [v63 bottomAnchor];

  v65 = [v62 constraintEqualToAnchor:v64 constant:-v44];
  *(v53 + 56) = v65;
  v66 = Array._bridgeToObjectiveC()().super.isa;

  [v39 activateConstraints:v66];

  v67 = *&v0[v87];
  if (!v67)
  {
LABEL_26:

    return;
  }

  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_100552EF0;
  v69 = v67;
  v70 = [v69 topAnchor];
  v71 = [v0 view];
  if (!v71)
  {
    goto LABEL_36;
  }

  v72 = v71;
  v73 = [v71 topAnchor];

  v74 = [v70 constraintEqualToAnchor:v73];
  *(v68 + 32) = v74;
  v75 = [v69 leadingAnchor];
  v76 = [v0 view];
  if (!v76)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v77 = v76;
  v78 = [v76 leadingAnchor];

  v79 = [v75 constraintEqualToAnchor:v78];
  *(v68 + 40) = v79;
  v80 = [v69 trailingAnchor];

  v81 = [v0 view];
  if (v81)
  {
    v82 = v81;
    v83 = [v81 trailingAnchor];

    v84 = [v80 constraintEqualToAnchor:v83];
    *(v68 + 48) = v84;
    v85 = Array._bridgeToObjectiveC()().super.isa;

    [v86 activateConstraints:v85];

    goto LABEL_26;
  }

LABEL_38:
  __break(1u);
}

void sub_1004E8950()
{
  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_delegate);

  v1 = *(v0 + OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_listTitleTopConstraint);
}

id sub_1004E8A18(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1004E8B58()
{
  *(v0 + OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_scrollPocket) = 0;
  v1 = OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_headerTitleContainer;
  *(v0 + v1) = [objc_allocWithZone(UITableViewHeaderFooterView) init];
  v2 = OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_tableHeaderTitle;
  *(v0 + v2) = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_listSubtitle;
  *(v0 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_titleTextsStackView;
  *(v0 + v4) = [objc_allocWithZone(UIStackView) init];
  *(v0 + OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_listTitleTopConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_isLockedAtBottom) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1004E8DA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMItemAnnotationView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004E8DE0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007EBC0(&qword_1006C2AF8);
  result = __chkstk_darwin(v3);
  v7 = &v18 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(*v1 + 16);
  if (v9 == v10)
  {
    v11 = *(v5 + 56);

    return v11(a1, 1, 1, v3);
  }

  else
  {
    if (v9 >= v10)
    {
      __break(1u);
    }

    else
    {
      v19 = v5;
      v12 = type metadata accessor for FMIPSafeLocation();
      v13 = *(v12 - 8);
      v14 = *(v13 + 16);
      v15 = v8 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v9;
      v1[1] = v9 + 1;
      v16 = *(v3 + 48);
      v17 = v1[2];
      *v7 = v17;
      result = v14(&v7[v16], v15, v12);
      if (!__OFADD__(v17, 1))
      {
        v1[2] = v17 + 1;
        sub_100035318(v7, a1, &qword_1006C2AF8);
        return (*(v19 + 56))(a1, 0, 1, v3);
      }
    }

    __break(1u);
  }

  return result;
}

id sub_1004E8FAC(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_maxNumberSafeLocations] = 20;
  *&v1[OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_locationsRow] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_safeLocations] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_snapshotMemoryCache] = &_swiftEmptyDictionarySingleton;
  v3 = OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_mapSnapshotter;
  type metadata accessor for FMMapSnapshotter();
  swift_allocObject();
  *&v1[v3] = sub_10012114C();
  v4 = &v1[OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_beaconUUID];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_groupBeaconUUIDs] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_numSafeLocations] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_mediator] = a1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for FMSafeLocationSuggestionsView();
  return objc_msgSendSuper2(&v6, "init");
}

void sub_1004E90D8()
{
  sub_1004D2224();
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_sectionLabel);
  if (*(*(v0 + OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_safeLocations) + 16))
  {
    v2 = [objc_opt_self() mainBundle];
    v8._object = 0x800000010057D660;
    v3._countAndFlagsBits = 0xD000000000000024;
    v3._object = 0x800000010059BC60;
    v4.value._object = 0x800000010057D640;
    v8._countAndFlagsBits = 0xD00000000000001BLL;
    v4.value._countAndFlagsBits = 0xD000000000000016;
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v8);

    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  [v1 setText:v6];
}

uint64_t sub_1004E9200(uint64_t a1)
{
  v2 = v1;
  v96 = type metadata accessor for FMIPLocation();
  v94 = *(v96 - 8);
  __chkstk_darwin(v96);
  v95 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FMIPSafeLocation();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007EBC0(&qword_1006C2AF0);
  v10 = __chkstk_darwin(v9 - 8);
  v93 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = (&v82 - v12);
  v83 = OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_safeLocations;
  *&v1[OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_numSafeLocations] = *(*&v1[OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_safeLocations] + 16);
  sub_1004EA150();
  v14 = *&v1[OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_sectionLabel];
  v84 = a1;
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = [objc_opt_self() mainBundle];
    v102._object = 0x800000010057D660;
    v17._countAndFlagsBits = 0xD000000000000024;
    v17._object = 0x800000010059BC60;
    v18.value._object = 0x800000010057D640;
    v102._countAndFlagsBits = 0xD00000000000001BLL;
    v18.value._countAndFlagsBits = 0xD000000000000016;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v18, v16, v19, v102);

    v20 = String._bridgeToObjectiveC()();
  }

  else
  {
    v20 = 0;
  }

  v21 = &selRef__enter3DMode;
  [v14 setText:v20];

  v100 = 0;
  v101 = 0;
  v99 = v84;
  v22 = OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_snapshotMemoryCache;
  v85 = OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_mapSnapshotter;
  v23 = OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_locationsRow;

  v89 = v22;
  swift_beginAccess();
  v88 = (v6 + 32);
  v87 = v15 - 1;
  ++v94;
  v86 = (v6 + 8);
  v24 = v23;
  v91 = v13;
  v92 = v5;
  v90 = v23;
  while (1)
  {
    v25 = v93;
    sub_1004E8DE0(v93);
    sub_100035318(v25, v13, &qword_1006C2AF0);
    v26 = sub_10007EBC0(&qword_1006C2AF8);
    if ((*(*(v26 - 8) + 48))(v13, 1, v26) == 1)
    {
      break;
    }

    v27 = *v13;
    (*v88)(v8, v13 + *(v26 + 48), v5);
    v28 = objc_allocWithZone(type metadata accessor for FMDeletableRowView());
    v29 = sub_1002DF374(0, 1);
    v30 = sub_10032F568();
    v32 = v31;
    v33 = &v29[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title];
    *v33 = v30;
    v33[1] = v31;

    v34 = *&v29[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_titleLabel];
    v35 = v34;
    if (v32)
    {

      v36 = String._bridgeToObjectiveC()();
    }

    else
    {
      v36 = 0;
    }

    [v34 v21[339]];

    v37 = sub_10032FA50();
    v39 = v38;
    v40 = &v29[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_subtitle];
    *v40 = v37;
    v40[1] = v38;

    v41 = *&v29[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_secondaryLabel];
    v42 = v41;
    if (v39)
    {

      v43 = String._bridgeToObjectiveC()();
    }

    else
    {
      v43 = 0;
    }

    [v41 v21[339]];

    v44 = FMIPSafeLocation.identifier.getter();
    v45 = &v29[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_identifier];
    *v45 = v44;
    v45[1] = v46;

    v47 = OBJC_IVAR____TtC6FindMy18FMDeletableRowView_imageView;
    [*&v29[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_imageView] _setContinuousCornerRadius:4.0];
    [*&v29[v47] setContentMode:0];
    v48 = [*&v29[v47] layer];
    [v48 setMasksToBounds:1];

    v49 = v27 != v87;
    v29[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_separated] = v27 == v87;
    [*&v29[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_separator] setHidden:v49];
    v50 = v95;
    FMIPSafeLocation.location.getter();
    v51 = FMIPLocation.location.getter();
    v52 = *v94;
    (*v94)(v50, v96);
    [v51 coordinate];
    [v51 coordinate];
    v97 = 0;
    v98 = 0xE000000000000000;
    Double.write<A>(to:)();
    v53._countAndFlagsBits = 45;
    v53._object = 0xE100000000000000;
    String.append(_:)(v53);
    Double.write<A>(to:)();

    v54 = v97;
    v55 = v98;
    v56 = *&v2[v89];
    if (*(v56 + 16))
    {

      v57 = sub_10000726C(v54, v55);
      if (v58)
      {
        v59 = v57;

        v60 = *(*(v56 + 56) + 8 * v59);

        v61 = *&v29[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_image];
        *&v29[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_image] = v60;
        v62 = v60;

        [*&v29[v47] setImage:v62];
        [v29 setNeedsLayout];

        goto LABEL_17;
      }
    }

    v63 = *&v2[v85];
    v64 = v95;
    FMIPSafeLocation.location.getter();
    v65 = FMIPLocation.location.getter();
    v52(v64, v96);
    v66 = [v2 traitCollection];
    v67 = v29;
    v68 = v2;

    sub_100121A60(v65, v66, 0, v63, v67, v68, v54, v55, 50.0, 50.0);

    swift_bridgeObjectRelease_n();
LABEL_17:
    v69 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"locationRowTapWithSender:"];
    [v29 addGestureRecognizer:v69];
    v24 = v90;
    swift_beginAccess();
    v70 = v29;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v13 = v91;
    v5 = v92;
    v21 = &selRef__enter3DMode;
    if (*((*&v2[v24] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v24] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();

    (*v86)(v8, v5);
  }

  swift_beginAccess();
  v71 = *&v2[v24];
  swift_bridgeObjectRetain_n();
  v97 = sub_100062474(v71, sub_10008FC98, sub_10043A1E8);
  sub_1004EB2B0(&v97);

  v72 = v97;
  if (v97 < 0 || (v97 & 0x4000000000000000) != 0)
  {
    goto LABEL_37;
  }

  for (i = *(v97 + 16); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v74 = 0;
    v75 = OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_contentStackView;
    v76 = i - 1;
    v77 = __OFSUB__(i, 1);
    while (1)
    {
      if ((v72 & 0xC000000000000001) != 0)
      {
        v78 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v74 >= *(v72 + 16))
        {
          goto LABEL_35;
        }

        v78 = *(v72 + 8 * v74 + 32);
      }

      v79 = v78;
      v80 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        break;
      }

      [*&v2[v75] addArrangedSubview:v78];
      if (v77)
      {
        goto LABEL_36;
      }

      v79[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_separated] = v76 != v74;
      [*&v79[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_separator] setHidden:v76 == v74];

      ++v74;
      if (v80 == i)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    ;
  }

LABEL_38:

  *&v2[v83] = v84;
}

uint64_t sub_1004E9CB8(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v22 = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v12 = *(v24 - 8);
  __chkstk_darwin(v24);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E90();
  v23 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a1;
  v15[4] = a3;
  v15[5] = a4;
  v15[6] = v22;
  aBlock[4] = sub_1004EC1D0;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100643610;
  v16 = _Block_copy(aBlock);
  v17 = a2;
  v18 = a1;
  v19 = a3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100037918();
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = v23;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v25 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v24);
}

uint64_t sub_1004E9F6C(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *&a1[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_image];
  *&a1[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_image] = a2;
  v10 = a2;

  [*&a1[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_imageView] setImage:v10];
  [a1 setNeedsLayout];
  v11 = OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_snapshotMemoryCache;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(a3 + v11);
  *(a3 + v11) = 0x8000000000000000;
  sub_1001BB8CC(v10, a4, a5, isUniquelyReferenced_nonNull_native);

  *(a3 + v11) = v14;
  return swift_endAccess();
}

uint64_t sub_1004EA070(void *a1, void *a2)
{
  v2 = (*a1 + OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title);
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  v5 = (*a2 + OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title);
  if (v5[1])
  {
    v6 = v5[1];
    if (v3 != *v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = 0xE000000000000000;
    if (v3)
    {
LABEL_10:
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_11;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_10;
  }

  v7 = 0;
LABEL_11:

  return v7 & 1;
}

uint64_t sub_1004EA150()
{
  v1 = OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_locationsRow;
  swift_beginAccess();
  v9 = v1;
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      [v5 removeFromSuperview];
      [*(v0 + OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_contentStackView) removeArrangedSubview:v6];

      ++v4;
      if (v7 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_12:

  *(v0 + v9) = _swiftEmptyArrayStorage;
}

void sub_1004EA29C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMIPSafeLocation();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  __chkstk_darwin(v6);
  __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  if (*&v1[OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_numSafeLocations] > 19)
  {
    v19 = objc_opt_self();
    v20 = [v19 mainBundle];
    v75._object = 0x800000010057D660;
    v21._countAndFlagsBits = 0xD000000000000021;
    v21._object = 0x80000001005914A0;
    v22.value._object = 0x800000010057D640;
    v75._countAndFlagsBits = 0xD00000000000001BLL;
    v22.value._countAndFlagsBits = 0xD000000000000016;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v75);

    v24 = [v19 mainBundle];
    v76._object = 0x800000010057D660;
    v25._countAndFlagsBits = 0xD000000000000024;
    v25._object = 0x80000001005914D0;
    v26.value._object = 0x800000010057D640;
    v76._countAndFlagsBits = 0xD00000000000001BLL;
    v26.value._countAndFlagsBits = 0xD000000000000016;
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v26, v24, v27, v76);

    v28 = [v19 mainBundle];
    v77._object = 0x8000000100579B60;
    v29._countAndFlagsBits = 0x4F545455425F4B4FLL;
    v29._object = 0xEF454C5449545F4ELL;
    v77._countAndFlagsBits = 0xD000000000000021;
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v30, v77);

    v31 = String._bridgeToObjectiveC()();

    v32 = String._bridgeToObjectiveC()();

    v33 = [objc_opt_self() alertControllerWithTitle:v31 message:v32 preferredStyle:1];

    v34 = String._bridgeToObjectiveC()();

    v73 = [objc_opt_self() actionWithTitle:v34 style:0 handler:0];

    [v33 addAction:v73];
    v35 = v2;
    while (1)
    {
      v36 = v35;
      v35 = [v35 nextResponder];

      if (!v35)
      {
        break;
      }

      objc_opt_self();
      v37 = swift_dynamicCastObjCClass();
      if (v37)
      {
        [v37 presentViewController:v33 animated:1 completion:0];

        break;
      }
    }

    v38 = v73;
LABEL_13:
  }

  else
  {
    v65 = v12;
    v66 = v10;
    v73 = v11;
    v67 = &v62 - v9;
    if (qword_1006AEBE0 != -1)
    {
      goto LABEL_40;
    }

    while (1)
    {
      v13 = type metadata accessor for Logger();
      sub_100005B14(v13, qword_1006D4630);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "FMSafeLocationSuggestionView: Row tapped", v16, 2u);
      }

      v17 = *(v2 + OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_groupBeaconUUIDs);
      if (v17 && *(v17 + 16))
      {

        v18 = v73;
      }

      else
      {
        sub_10007EBC0(&unk_1006AF770);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_100552220;
        v18 = v73;
        if (*(v2 + OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_beaconUUID + 8))
        {
          v39 = *(v2 + OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_beaconUUID);
          v40 = *(v2 + OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_beaconUUID + 8);
        }

        else
        {
          v39 = 0;
          v40 = 0xE000000000000000;
        }

        *(v17 + 32) = v39;
        *(v17 + 40) = v40;
      }

      v41 = [a1 view];
      if (!v41)
      {
        break;
      }

      v71 = v41;
      type metadata accessor for FMDeletableRowView();
      v42 = swift_dynamicCastClass();
      if (!v42)
      {

        v38 = v71;
        goto LABEL_13;
      }

      v43 = *(v42 + OBJC_IVAR____TtC6FindMy18FMDeletableRowView_identifier + 8);
      if (!v43)
      {

        break;
      }

      v63 = v2;
      v64 = v17;
      v44 = *(v42 + OBJC_IVAR____TtC6FindMy18FMDeletableRowView_identifier);
      a1 = *(v2 + OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_safeLocations);
      v45 = a1[2];

      v69 = v45;
      if (!v45)
      {
LABEL_30:

        return;
      }

      v2 = 0;
      v72 = v5 + 16;
      v70 = (v5 + 8);
      while (v2 < a1[2])
      {
        v46 = *(v5 + 80);
        v47 = a1 + ((v46 + 32) & ~v46) + *(v5 + 72) * v2;
        v68 = *(v5 + 16);
        v68(v18, v47, v4);
        if (FMIPSafeLocation.identifier.getter() == v44 && v43 == v48)
        {

LABEL_38:
          v51 = v73;
          v69 = ~v46;
          v52 = *(v5 + 32);
          v73 = v52;
          v53 = v65;
          v52(v65, v51, v4);
          v54 = v67;
          v52(v67, v53, v4);
          v55 = v66;
          v56 = v68;
          v68(v66, v54, v4);
          type metadata accessor for FMIPAssignMultipleSafeLocationsItemAction();
          swift_allocObject();
          v65 = FMIPAssignMultipleSafeLocationsItemAction.init(beaconUUIDs:location:)();
          v57 = v63;
          v56(v55, v54, v4);
          v58 = v5 + 32;
          v59 = (v46 + 24) & v69;
          v60 = swift_allocObject();
          *(v60 + 16) = v57;
          (v73)(v60 + v59, v55, v4);

          v61 = v57;
          sub_1000D6C5C(v65, sub_1004EB214, v60);

          (*(v58 - 24))(v67, v4);
          return;
        }

        v49 = v5;
        v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v50)
        {

          v5 = v49;
          goto LABEL_38;
        }

        ++v2;
        v18 = v73;
        (*v70)(v73, v4);
        v5 = v49;
        if (v69 == v2)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_40:
      swift_once();
    }
  }
}

void sub_1004EAB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (a1)
  {
    v7 = objc_opt_self();
    v8 = [v7 mainBundle];
    v37._object = 0x800000010057D660;
    v9._countAndFlagsBits = 0xD00000000000001ELL;
    v9._object = 0x8000000100586B90;
    v10.value._object = 0x800000010057D640;
    v37._countAndFlagsBits = 0xD00000000000001BLL;
    v10.value._countAndFlagsBits = 0xD000000000000016;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v37);

    v12 = [v7 mainBundle];
    v38._object = 0x800000010057D660;
    v13._countAndFlagsBits = 0xD00000000000002ALL;
    v13._object = 0x8000000100586BB0;
    v14.value._object = 0x800000010057D640;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    v14.value._countAndFlagsBits = 0xD000000000000016;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v38);

    v16 = [v7 mainBundle];
    v39._object = 0x8000000100579B60;
    v17._countAndFlagsBits = 0x4F545455425F4B4FLL;
    v17._object = 0xEF454C5449545F4ELL;
    v39._countAndFlagsBits = 0xD000000000000021;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v39);

    v19 = String._bridgeToObjectiveC()();

    v20 = String._bridgeToObjectiveC()();

    v21 = [objc_opt_self() alertControllerWithTitle:v19 message:v20 preferredStyle:1];

    v22 = String._bridgeToObjectiveC()();

    oslog = [objc_opt_self() actionWithTitle:v22 style:0 handler:0];

    [v21 addAction:oslog];
    v23 = a5;
    while (1)
    {
      v24 = v23;
      v23 = [v23 nextResponder];

      if (!v23)
      {
        break;
      }

      objc_opt_self();
      v25 = swift_dynamicCastObjCClass();
      if (v25)
      {
        [v25 presentViewController:v21 animated:1 completion:0];

        break;
      }
    }
  }

  else
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1004AEB8C(a6);
      swift_unknownObjectRelease();
    }

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100005B14(v27, qword_1006D4630);
    oslog = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v35 = v30;
      *v29 = 136315138;
      sub_10007EBC0(&qword_1006B9570);
      v31 = String.init<A>(describing:)();
      v33 = sub_100005B4C(v31, v32, &v35);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, oslog, v28, "FMSafeLocationSuggestionsView: Assign Safe Location completed with error: %s", v29, 0xCu);
      sub_100006060(v30);

      return;
    }
  }
}

uint64_t sub_1004EB068()
{

  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_delegate);
}

id sub_1004EB10C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMSafeLocationSuggestionsView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1004EB214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for FMIPSafeLocation() - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  sub_1004EAB60(a1, a2, a3, a4, v10, v11);
}

uint64_t sub_1004EB2B0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1000573A8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v26 = v2 + 32;
  v31[0] = v2 + 32;
  v31[1] = v4;
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 >= v4)
  {
    if (v4 < 2)
    {
      return specialized ContiguousArray._endMutation()();
    }

    v8 = -1;
    v9 = 1;
    v10 = v2 + 32;
    v25 = v4;
LABEL_10:
    v28 = v9;
    v29 = v8;
    v13 = *(v26 + 8 * v9);
    v27 = v10;
    while (1)
    {
      if (*&v13[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title + 8])
      {
        v14 = *&v13[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title];
        v15 = *&v13[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title + 8];
      }

      else
      {
        v14 = 0;
        v15 = 0xE000000000000000;
      }

      v16 = *v10;
      v17 = (*v10 + OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title);
      if (v17[1])
      {
        v18 = v17[1];
        if (v14 != *v17)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v18 = 0xE000000000000000;
        if (v14)
        {
          goto LABEL_19;
        }
      }

      if (v15 == v18)
      {

        v11 = v13;
        v12 = v16;

LABEL_9:
        v9 = v28 + 1;
        v10 = v27 + 8;
        v8 = v29 - 1;
        if (v28 + 1 == v25)
        {
          return specialized ContiguousArray._endMutation()();
        }

        goto LABEL_10;
      }

LABEL_19:
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v20 = v13;
      v21 = v16;

      if (v19)
      {
        v22 = *v10;
        v13 = *(v10 + 8);
        *v10 = v13;
        *(v10 + 8) = v22;
        v10 -= 8;
        if (!__CFADD__(v8++, 1))
        {
          continue;
        }
      }

      goto LABEL_9;
    }
  }

  v6 = v5;
  if (v4 >= 2)
  {
    type metadata accessor for FMDeletableRowView();
    v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4 >> 1;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v30[0] = ((v7 & 0xFFFFFFFFFFFFFF8) + 32);
  v30[1] = (v4 >> 1);
  sub_1004EB514(v30, v32, v31, v6);
  *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

  return specialized ContiguousArray._endMutation()();
}

void sub_1004EB514(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_107:
    v4 = v7;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_109:
      v113 = v4;
      v92 = *(v4 + 2);
      if (v92 >= 2)
      {
        while (*a3)
        {
          v93 = *&v4[16 * v92];
          v94 = *&v4[16 * v92 + 24];
          sub_1004EBCD4((*a3 + 8 * v93), (*a3 + 8 * *&v4[16 * v92 + 16]), (*a3 + 8 * v94), v7);
          if (v108)
          {
            goto LABEL_117;
          }

          if (v94 < v93)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_10025EFD4(v4);
          }

          if (v92 - 2 >= *(v4 + 2))
          {
            goto LABEL_134;
          }

          v95 = &v4[16 * v92];
          *v95 = v93;
          *(v95 + 1) = v94;
          v113 = v4;
          sub_10025EF48(v92 - 1);
          v4 = v113;
          v92 = *(v113 + 2);
          if (v92 <= 1)
          {
            goto LABEL_117;
          }
        }

        goto LABEL_144;
      }

LABEL_117:

      return;
    }

LABEL_140:
    v4 = sub_10025EFD4(v4);
    goto LABEL_109;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (2)
  {
    v8 = v6;
    v104 = v7;
    if (v6 + 1 >= v5)
    {
      ++v6;
      goto LABEL_29;
    }

    v106 = v5;
    v9 = *a3;
    v112 = *(*a3 + 8 * (v6 + 1));
    v10 = v6;
    v111 = *(v9 + 8 * v6);
    v11 = v111;
    v12 = v112;
    v13 = v11;
    v109 = sub_1004EA070(&v112, &v111);
    if (v108)
    {

      return;
    }

    v14 = v10 + 2;
    v97 = v10;
    v102 = 8 * v10;
    v4 = (v9 + 8 * v10 + 16);
    while (1)
    {
      v6 = v106;
      v7 = v104;
      if (v106 == v14)
      {
        break;
      }

      v18 = *v4;
      v19 = (*v4 + OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title);
      if (v19[1])
      {
        v20 = *v19;
        v21 = v19[1];
      }

      else
      {
        v20 = 0;
        v21 = 0xE000000000000000;
      }

      v22 = *(v4 - 1);
      v23 = &v22[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title];
      if (*&v22[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title + 8])
      {
        v24 = *(v23 + 1);
        if (v20 != *v23)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v24 = 0xE000000000000000;
        if (v20)
        {
          goto LABEL_7;
        }
      }

      if (v21 == v24)
      {
        v15 = 0;
        goto LABEL_8;
      }

LABEL_7:
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_8:

      v16 = v18;
      v17 = v22;

      ++v14;
      v4 += 8;
      if ((v109 ^ v15))
      {
        v6 = v14 - 1;
        v7 = v104;
        break;
      }
    }

    v8 = v97;
    v25 = v102;
    if ((v109 & 1) == 0)
    {
      goto LABEL_29;
    }

    if (v6 < v97)
    {
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    if (v97 < v6)
    {
      v26 = 8 * v6 - 8;
      v27 = v6;
      v28 = v97;
      do
      {
        if (v28 != --v27)
        {
          v29 = *a3;
          if (!*a3)
          {
            goto LABEL_143;
          }

          v30 = *(v29 + v25);
          *(v29 + v25) = *(v29 + v26);
          *(v29 + v26) = v30;
        }

        ++v28;
        v26 -= 8;
        v25 += 8;
      }

      while (v28 < v27);
    }

LABEL_29:
    v31 = a3[1];
    if (v6 >= v31)
    {
      goto LABEL_55;
    }

    if (__OFSUB__(v6, v8))
    {
      goto LABEL_136;
    }

    if (v6 - v8 >= a4)
    {
LABEL_55:
      if (v6 < v8)
      {
        goto LABEL_135;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_10008B8B8(0, *(v7 + 2) + 1, 1, v7);
      }

      v47 = *(v7 + 2);
      v46 = *(v7 + 3);
      v48 = v47 + 1;
      if (v47 >= v46 >> 1)
      {
        v7 = sub_10008B8B8((v46 > 1), v47 + 1, 1, v7);
      }

      *(v7 + 2) = v48;
      v49 = &v7[16 * v47];
      *(v49 + 4) = v8;
      *(v49 + 5) = v6;
      v4 = *a1;
      if (!*a1)
      {
        goto LABEL_145;
      }

      if (!v47)
      {
LABEL_3:
        v5 = a3[1];
        if (v6 >= v5)
        {
          goto LABEL_107;
        }

        continue;
      }

      while (1)
      {
        v50 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v51 = *(v7 + 4);
          v52 = *(v7 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_75:
          if (v54)
          {
            goto LABEL_124;
          }

          v67 = &v7[16 * v48];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_127;
          }

          v73 = &v7[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_131;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v48 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v77 = &v7[16 * v48];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_89:
        if (v72)
        {
          goto LABEL_126;
        }

        v80 = &v7[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_129;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_96:
        v88 = v50 - 1;
        if (v50 - 1 >= v48)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
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
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*a3)
        {
          goto LABEL_142;
        }

        v89 = *&v7[16 * v88 + 32];
        v90 = *&v7[16 * v50 + 40];
        sub_1004EBCD4((*a3 + 8 * v89), (*a3 + 8 * *&v7[16 * v50 + 32]), (*a3 + 8 * v90), v4);
        if (v108)
        {
          goto LABEL_117;
        }

        if (v90 < v89)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_10025EFD4(v7);
        }

        if (v88 >= *(v7 + 2))
        {
          goto LABEL_121;
        }

        v91 = &v7[16 * v88];
        *(v91 + 4) = v89;
        *(v91 + 5) = v90;
        v113 = v7;
        sub_10025EF48(v50);
        v7 = v113;
        v48 = *(v113 + 2);
        if (v48 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v7[16 * v48 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_122;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_123;
      }

      v62 = &v7[16 * v48];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_125;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_128;
      }

      if (v66 >= v58)
      {
        v84 = &v7[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_132;
        }

        if (v53 < v87)
        {
          v50 = v48 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

    break;
  }

  if (__OFADD__(v8, a4))
  {
    goto LABEL_137;
  }

  if (v8 + a4 < v31)
  {
    v31 = v8 + a4;
  }

  if (v31 < v8)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v6 == v31)
  {
    goto LABEL_55;
  }

  v100 = v31;
  v110 = *a3;
  v32 = *a3 + 8 * v6 - 8;
  v98 = v8;
  v33 = v8 - v6;
  while (2)
  {
    v107 = v6;
    v36 = *(v110 + 8 * v6);
    v101 = v33;
    v103 = v32;
LABEL_41:
    if (*&v36[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title + 8])
    {
      v37 = *&v36[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title];
      v4 = *&v36[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title + 8];
    }

    else
    {
      v37 = 0;
      v4 = 0xE000000000000000;
    }

    v38 = *v32;
    v39 = (*v32 + OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title);
    if (v39[1])
    {
      v40 = v39[1];
      if (v37 != *v39)
      {
        break;
      }
    }

    else
    {
      v40 = 0xE000000000000000;
      if (v37)
      {
        break;
      }
    }

    if (v4 == v40)
    {

      v34 = v36;
      v35 = v38;

LABEL_39:
      v6 = v107 + 1;
      v32 = v103 + 8;
      v33 = v101 - 1;
      if (v107 + 1 == v100)
      {
        v7 = v104;
        v6 = v100;
        v8 = v98;
        goto LABEL_55;
      }

      continue;
    }

    break;
  }

  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v42 = v36;
  v43 = v38;

  if ((v41 & 1) == 0)
  {
    goto LABEL_39;
  }

  if (v110)
  {
    v44 = *v32;
    v36 = *(v32 + 8);
    *v32 = v36;
    *(v32 + 8) = v44;
    v32 -= 8;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_39;
    }

    goto LABEL_41;
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
}

uint64_t sub_1004EBCD4(void **__src, char *a2, void **a3, char *a4)
{
  v4 = a3;
  v5 = a2 - __src;
  v6 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v6 = a2 - __src;
  }

  v7 = v6 >> 3;
  v8 = a3 - a2;
  v9 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v9 = a3 - a2;
  }

  v10 = v9 >> 3;
  if (v7 >= v9 >> 3)
  {
    v55 = __src;
    if (a4 != a2 || &a2[8 * v10] <= a4)
    {
      v32 = a2;
      v33 = a4;
      memmove(a4, a2, 8 * v10);
      a2 = v32;
      a4 = v33;
    }

    __src = a2;
    v56 = &a4[8 * v10];
    v12 = a4;
    if (v8 < 8 || a2 <= v55)
    {
      goto LABEL_56;
    }

    v50 = a4;
LABEL_35:
    __dsta = __src;
    v34 = __src - 1;
    v35 = v4 - 1;
    v36 = v56;
    while (1)
    {
      v38 = *--v36;
      v37 = v38;
      v39 = &v38[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title];
      v40 = *&v38[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title + 8];
      v51 = v35;
      if (v40)
      {
        v41 = *v39;
        v42 = v40;
      }

      else
      {
        v41 = 0;
        v42 = 0xE000000000000000;
      }

      v43 = *v34;
      v44 = *v34 + OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title;
      if (v44[1])
      {
        v45 = v44[1];
        if (v41 != *v44)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v45 = 0xE000000000000000;
        if (v41)
        {
          goto LABEL_46;
        }
      }

      if (v42 != v45)
      {
LABEL_46:
        v46 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_47;
      }

      v46 = 0;
LABEL_47:

      v47 = v37;
      v48 = v43;

      if (v46)
      {
        v4 = v51;
        v12 = v50;
        if (v51 + 1 != __dsta)
        {
          *v51 = *v34;
        }

        if (v56 <= v50 || (__src = v34, v34 <= v55))
        {
          __src = v34;
          goto LABEL_56;
        }

        goto LABEL_35;
      }

      v12 = v50;
      if (v51 + 1 != v56)
      {
        *v51 = *v36;
      }

      v35 = v51 - 1;
      v56 = v36;
      if (v36 <= v50)
      {
        v56 = v36;
        __src = __dsta;
        goto LABEL_56;
      }
    }
  }

  v11 = a2;
  v12 = a4;
  if (a4 != __src || &__src[v7] <= a4)
  {
    v13 = __src;
    memmove(a4, __src, 8 * v7);
    __src = v13;
  }

  v56 = &v12[v7];
  if (v5 >= 8)
  {
    v14 = v11;
    if (v11 < v4)
    {
      v15 = v4;
      do
      {
        __dst = v14;
        v54 = __src;
        v16 = *v14;
        v17 = (*v14 + OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title);
        if (v17[1])
        {
          v18 = *v17;
          v19 = v17[1];
        }

        else
        {
          v18 = 0;
          v19 = 0xE000000000000000;
        }

        v20 = *v12;
        v21 = *v12 + OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title;
        if (v21[1])
        {
          v22 = v21[1];
          if (v18 != *v21)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v22 = 0xE000000000000000;
          if (v18)
          {
            goto LABEL_21;
          }
        }

        if (v19 == v22)
        {

          v23 = v16;
          v24 = v20;

LABEL_24:
          v29 = v12;
          v28 = v54;
          v31 = v54 == v12++;
          v14 = __dst;
          v30 = v15;
          if (v31)
          {
            goto LABEL_26;
          }

LABEL_25:
          *v28 = *v29;
          goto LABEL_26;
        }

LABEL_21:
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v26 = v16;
        v27 = v20;

        if ((v25 & 1) == 0)
        {
          goto LABEL_24;
        }

        v28 = v54;
        v29 = __dst;
        v14 = __dst + 1;
        v30 = v15;
        if (v54 != __dst)
        {
          goto LABEL_25;
        }

LABEL_26:
        __src = v28 + 1;
      }

      while (v12 < v56 && v14 < v30);
    }
  }

LABEL_56:
  if (__src != v12 || __src >= (v12 + ((v56 - v12 + (v56 - v12 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(__src, v12, 8 * ((v56 - v12) / 8));
  }

  return 1;
}

void sub_1004EC1E0()
{
  *(v0 + OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_maxNumberSafeLocations) = 20;
  *(v0 + OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_locationsRow) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_safeLocations) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_snapshotMemoryCache) = &_swiftEmptyDictionarySingleton;
  v1 = OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_mapSnapshotter;
  type metadata accessor for FMMapSnapshotter();
  swift_allocObject();
  *(v0 + v1) = sub_10012114C();
  v2 = (v0 + OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_beaconUUID);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_groupBeaconUUIDs) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_numSafeLocations) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1004EC2F4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = swift_isaMask;
  v8 = *((swift_isaMask & *v2) + 0x50);
  v19 = *(v8 - 8);
  __chkstk_darwin(a1);
  v10 = &v17 - v9;
  sub_1004ED358();
  v17 = a2;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v18 = a1;
  v12 = [a1 cellForRowAtIndexPath:isa];

  v13 = *((swift_isaMask & *v3) + 0x148);
  v14 = v12;
  v13(v10, v12);

  (*(*((v7 & v6) + 0x58) + 16))(&v20, v8);
  if (v21 > 1u)
  {
    if (v21 == 2)
    {

LABEL_7:

      return (*(v19 + 8))(v10, v8);
    }

LABEL_6:

    goto LABEL_7;
  }

  if (v21)
  {
    goto LABEL_6;
  }

  sub_1003AC310(&v20);
  v15 = IndexPath._bridgeToObjectiveC()().super.isa;
  [v18 deselectRowAtIndexPath:v15 animated:1];

  return (*(v19 + 8))(v10, v8);
}

void sub_1004EC60C()
{
  [v0 contentSize];
  UIRoundToViewScale();
  v2 = v1;
  v3 = OBJC_IVAR____TtC6FindMyP33_CC23E81230DC16D325E739DF41B02D5424FMModernPlatterTableView_heightConstraint;
  v4 = *&v0[OBJC_IVAR____TtC6FindMyP33_CC23E81230DC16D325E739DF41B02D5424FMModernPlatterTableView_heightConstraint];
  if (v4)
  {
    [v4 constant];
  }

  UIRoundToViewScale();
  if (vabdd_f64(v2, v5) > 0.009 && !*&v0[OBJC_IVAR____TtC6FindMyP33_CC23E81230DC16D325E739DF41B02D5424FMModernPlatterTableView_resizeBlockCount])
  {
    v6 = *&v0[v3];
    if (v6)
    {
      v8 = v6;
      [v0 contentSize];
      [v8 setConstant:v7];
    }
  }
}

char *sub_1004EC70C()
{
  *&v0[OBJC_IVAR____TtC6FindMyP33_CC23E81230DC16D325E739DF41B02D5424FMModernPlatterTableView_heightConstraint] = 0;
  *&v0[OBJC_IVAR____TtC6FindMyP33_CC23E81230DC16D325E739DF41B02D5424FMModernPlatterTableView_resizeBlockCount] = 0;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for FMModernPlatterTableView();
  v1 = objc_msgSendSuper2(&v10, "initWithFrame:style:", 0, 0.0, 0.0, 0.0, 0.0);
  v2 = [v1 heightAnchor];
  v3 = [v2 constraintEqualToConstant:0.0];

  v4 = OBJC_IVAR____TtC6FindMyP33_CC23E81230DC16D325E739DF41B02D5424FMModernPlatterTableView_heightConstraint;
  v5 = *&v1[OBJC_IVAR____TtC6FindMyP33_CC23E81230DC16D325E739DF41B02D5424FMModernPlatterTableView_heightConstraint];
  *&v1[OBJC_IVAR____TtC6FindMyP33_CC23E81230DC16D325E739DF41B02D5424FMModernPlatterTableView_heightConstraint] = v3;

  v6 = *&v1[v4];
  if (v6)
  {
    [v6 setActive:1];
  }

  v7 = v1;
  v8 = String._bridgeToObjectiveC()();
  [v7 setAccessibilityIdentifier:v8];

  return v7;
}

void sub_1004EC8D0(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + OBJC_IVAR____TtC6FindMyP33_CC23E81230DC16D325E739DF41B02D5424FMModernPlatterTableView_resizeBlockCount);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(a1 + OBJC_IVAR____TtC6FindMyP33_CC23E81230DC16D325E739DF41B02D5424FMModernPlatterTableView_resizeBlockCount) = v4;
    a2();
    sub_1004EC970();
  }
}

void sub_1004EC920(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  a2();
  v5 = *(a4 + OBJC_IVAR____TtC6FindMyP33_CC23E81230DC16D325E739DF41B02D5424FMModernPlatterTableView_resizeBlockCount);
  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(a4 + OBJC_IVAR____TtC6FindMyP33_CC23E81230DC16D325E739DF41B02D5424FMModernPlatterTableView_resizeBlockCount) = v7;
    sub_1004EC970();
  }
}

void sub_1004EC970()
{
  [v0 contentSize];
  UIRoundToViewScale();
  v2 = v1;
  v3 = OBJC_IVAR____TtC6FindMyP33_CC23E81230DC16D325E739DF41B02D5424FMModernPlatterTableView_heightConstraint;
  v4 = *&v0[OBJC_IVAR____TtC6FindMyP33_CC23E81230DC16D325E739DF41B02D5424FMModernPlatterTableView_heightConstraint];
  if (v4)
  {
    [v4 constant];
  }

  UIRoundToViewScale();
  if (vabdd_f64(v2, v5) > 0.009)
  {
    [v0 setNeedsLayout];
    [v0 layoutIfNeeded];
    v6 = *&v0[v3];
    if (v6)
    {
      v7 = v6;
      [v0 contentSize];
      [v7 setConstant:v8];
    }

    v9 = [v0 superview];
    if (v9)
    {
      v10 = v9;
      while (1)
      {
        objc_opt_self();
        v11 = swift_dynamicCastObjCClass();
        if (v11)
        {
          break;
        }

        v12 = [v10 superview];

        v10 = v12;
        if (!v12)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v11 = [v0 superview];
    }

    v13 = v11;
    [v11 setNeedsLayout];
    [v13 layoutIfNeeded];
  }
}

char *sub_1004ECBA8(uint64_t a1, uint64_t a2, char a3)
{
  v5 = OBJC_IVAR____TtC6FindMy33FMModernPlatterAccessoryLabelView_label;
  *&v3[v5] = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC6FindMy33FMModernPlatterAccessoryLabelView_chevron;
  v7 = sub_1003DE824();
  v8 = [objc_allocWithZone(UIImageView) initWithImage:v7];

  *&v3[v6] = v8;
  v36.receiver = v3;
  v36.super_class = type metadata accessor for FMModernPlatterAccessoryLabelView();
  v9 = objc_msgSendSuper2(&v36, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v9 setAxis:0];
  [v9 setSpacing:12.0];
  v10 = OBJC_IVAR____TtC6FindMy33FMModernPlatterAccessoryLabelView_label;
  v11 = *&v9[OBJC_IVAR____TtC6FindMy33FMModernPlatterAccessoryLabelView_label];
  v12 = String._bridgeToObjectiveC()();

  [v11 setText:v12];

  v13 = *&v9[v10];
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 secondaryLabelColor];
  [v15 setTextColor:v16];

  v17 = *&v9[v10];
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 preferredFontForTextStyle:UIFontTextStyleBody];
  [v19 setFont:v20];

  [*&v9[v10] setAdjustsFontForContentSizeCategory:1];
  [*&v9[v10] setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = OBJC_IVAR____TtC6FindMy33FMModernPlatterAccessoryLabelView_chevron;
  [*&v9[OBJC_IVAR____TtC6FindMy33FMModernPlatterAccessoryLabelView_chevron] setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = *&v9[v21];
  v23 = [v14 tertiaryLabelColor];
  [v22 setTintColor:v23];

  v24 = [v18 preferredFontForTextStyle:UIFontTextStyleBody];
  sub_10007EBC0(&qword_1006BA720);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552220;
  *(inited + 32) = UIFontWeightTrait;
  *(inited + 40) = UIFontWeightSemibold;
  v26 = UIFontWeightTrait;
  v27 = sub_10002AB84(inited);
  swift_setDeallocating();
  sub_10002AC74(inited + 32);
  v28 = sub_10002ACDC(v27);

  v29 = [objc_opt_self() configurationWithFont:v28 scale:1];
  v30 = *&v9[v21];
  v31 = v29;
  v32 = String._bridgeToObjectiveC()();
  v33 = [objc_opt_self() systemImageNamed:v32 withConfiguration:v31];

  [v30 setImage:v33];
  [v9 addArrangedSubview:*&v9[v10]];
  if (a3)
  {
    [v9 addArrangedSubview:*&v9[v21]];
  }

  v34 = v9;
  [v34 setNeedsLayout];
  [v34 layoutIfNeeded];
  [v34 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  [v34 frame];
  [v34 setFrame:?];

  return v34;
}

id sub_1004ED148(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

Swift::Int sub_1004ED2B0(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_1004ED314()
{
  Hasher.init(_seed:)();
  sub_1004ED288(v2, *v0);
  return Hasher._finalize()();
}

uint64_t sub_1004ED358()
{
  IndexPath.row.getter();

  Array.subscript.getter();
}

uint64_t sub_1004ED3E4()
{

  sub_10001835C(*(v0 + 32));
  return v0;
}

uint64_t sub_1004ED414()
{
  sub_1004ED3E4();

  return swift_deallocClassInstance();
}

void sub_1004ED470(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for FMModernPlatterView();
  objc_msgSendSuper2(&v5, "traitCollectionDidChange:", a1);
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v3 = [v1 traitCollection];
  v4 = sub_100356E0C(v3);

  [v1 setBackgroundColor:v4];
}

void sub_1004ED57C(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1004ED470(a3);
}

uint64_t sub_1004ED5E8()
{
  static UIListContentConfiguration.cell()();
  v0 = objc_opt_self();
  v1 = [v0 preferredFontForTextStyle:UIFontTextStyleBody];
  v2 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v2(v12, 0);
  v3 = objc_opt_self();
  v4 = [v3 labelColor];
  v5 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v5(v12, 0);
  v6 = [v0 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v7 = UIListContentConfiguration.secondaryTextProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v7(v12, 0);
  v8 = [v3 secondaryLabelColor];
  v9 = UIListContentConfiguration.secondaryTextProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v9(v12, 0);
  UIListContentConfiguration.textToSecondaryTextVerticalPadding.setter();
  v13 = &type metadata for SolariumFeatureFlag;
  v14 = sub_10000BD04();
  v10 = isFeatureEnabled(_:)();
  sub_100006060(v12);
  if ((v10 & 1) == 0 && qword_1006AEC30 != -1)
  {
    swift_once();
  }

  return UIListContentConfiguration.directionalLayoutMargins.setter();
}

void sub_1004ED824(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v8 = objc_allocWithZone(type metadata accessor for FMModernPlatterAccessoryLabelView());

  v9 = sub_1004ECBA8(a1, a2, a4);
  [a3 setAccessoryView:v9];
}

uint64_t sub_1004ED8BC(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  sub_1004EC2F4(v9, v8);

  return (*(v6 + 8))(v8, v5);
}

id sub_1004EDA74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMModernPlatterView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1004EDAF8(uint64_t a1)
{
  sub_1000F0550(*(a1 + qword_1006C2B70), *(a1 + qword_1006C2B70 + 8));

  v2 = *(a1 + qword_1006C2BB0);
}

uint64_t sub_1004EDC58()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1004EDC94(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1004EDCB0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1004EDCF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1004EDDC8()
{
  v1 = v0 + qword_1006C2B70;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0;
  v2 = qword_1006C2B78;
  *(v0 + v2) = static Array._allocateUninitialized(_:)();
  v3 = qword_1006C2B98;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for FMModernPlatterHeaderView()) init];
  *(v0 + qword_1006C2BA0) = 0;
  *(v0 + qword_1006C2BB0) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1004EDEF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 49))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_1004EDF3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

unint64_t sub_1004EDFBC()
{
  result = qword_1006C2EA0;
  if (!qword_1006C2EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2EA0);
  }

  return result;
}

uint64_t sub_1004EE0BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_title + 8);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_title);

    v3._countAndFlagsBits = v2;
    v3._object = v1;
    String.append(_:)(v3);
  }

  v4 = *(v0 + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitle + 8);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitle);
    String.append(_:)(*(&v4 - 1));
    v6._countAndFlagsBits = 44;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
  }

  return 0;
}

id sub_1004EE178()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_chevron;
  [*&v1[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_chevron] setHidden:(v1[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_isChevronVisible] & 1) == 0];
  [*&v1[v2] setContentMode:1];
  v31 = v2;
  v3 = *&v1[v2];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 tertiaryLabelColor];
  [v5 setTintColor:v6];

  v7 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_titleLabel;
  v8 = *&v1[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_titleLabel];
  if (*&v1[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_title + 8])
  {
    v9 = v8;

    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = v8;
    v10 = 0;
  }

  [v8 setText:v10];

  v12 = *&v1[v7];
  v13 = v1[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_isBoldTitle];
  v14 = objc_opt_self();
  v15 = v12;
  v16 = [v14 preferredFontForTextStyle:UIFontTextStyleBody];
  if (v13 == 1)
  {
    v17 = sub_100039388(0x8000);

    v16 = sub_100039388(2);
  }

  [v15 setFont:v16];

  [*&v1[v7] setNumberOfLines:0];
  [*&v1[v7] setAdjustsFontForContentSizeCategory:1];
  v18 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_secondaryLabel;
  v19 = *&v1[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_secondaryLabel];
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v21 setFont:v22];

  v23 = *&v1[v18];
  v24 = [v4 secondaryLabelColor];
  [v23 setTextColor:v24];

  [*&v1[v18] setTextAlignment:4];
  [*&v1[v18] setNumberOfLines:0];
  [*&v1[v18] setAdjustsFontForContentSizeCategory:1];
  v25 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_separator;
  v26 = *&v1[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_separator];
  v27 = [v4 labelColor];
  v28 = [v27 colorWithAlphaComponent:0.1];

  [v26 setBackgroundColor:v28];
  [v1 addSubview:*&v1[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_backgroundView]];
  [v1 addSubview:*&v1[v7]];
  [v1 addSubview:*&v1[v18]];
  [v1 addSubview:*&v1[v31]];
  [v1 addSubview:*&v1[v25]];
  v29 = *&v1[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView];
  result = [v29 image];
  if (result)
  {

    return [v1 addSubview:v29];
  }

  return result;
}

void sub_1004EE5A4(double a1)
{
  v136 = &type metadata for SolariumFeatureFlag;
  v130 = sub_10000BD04();
  v137 = v130;
  v3 = isFeatureEnabled(_:)();
  sub_100006060(v135);
  v4 = 16.0;
  if ((v3 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v4 = *&qword_1006D4798;
  }

  sub_10007EBC0(&qword_1006AFC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100555280;
  v6 = *&v1[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView];
  *(inited + 32) = v6;
  v134 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_titleLabel;
  v7 = *&v1[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_titleLabel];
  *(inited + 40) = v7;
  v133 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_secondaryLabel;
  v8 = *&v1[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_secondaryLabel];
  *(inited + 48) = v8;
  v131 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_separator;
  v9 = *&v1[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_separator];
  *(inited + 56) = v9;
  v129 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_chevron;
  v10 = *&v1[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_chevron];
  *(inited + 64) = v10;
  v132 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_backgroundView;
  v11 = *&v1[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_backgroundView];
  *(inited + 72) = v11;
  v12 = inited & 0xC000000000000001;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_42;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_41;
  }

  v19 = v13;
  v20 = v13;
  while (1)
  {
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v12)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_41;
      }

      v21 = *(inited + 40);
    }

    v22 = v21;
    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v12)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_41;
      }

      v23 = *(inited + 48);
    }

    v24 = v23;
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v12)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
      {
        goto LABEL_41;
      }

      v25 = *(inited + 56);
    }

    v26 = v25;
    [v25 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v12)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
      {
        goto LABEL_41;
      }

      v27 = *(inited + 64);
    }

    v28 = v27;
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v12)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 6uLL)
    {
      v29 = *(inited + 72);
      goto LABEL_23;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v19 = v13;
  }

  v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_23:
  v30 = v29;
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];

  swift_setDeallocating();
  swift_arrayDestroy();
  v31 = [v19 image];
  p_ivar_lyt = &LocateDeviceIntentResponse__metaData.ivar_lyt;
  if (v31)
  {

    v33 = objc_opt_self();
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_100552EE0;
    v35 = [v19 topAnchor];
    v36 = [v1 topAnchor];
    v37 = [v35 constraintEqualToAnchor:v36 constant:v4];

    *(v34 + 32) = v37;
    v38 = [v19 leadingAnchor];
    v39 = [v1 leadingAnchor];
    v40 = [v38 constraintEqualToAnchor:v39 constant:14.0 - v4];

    *(v34 + 40) = v40;
    sub_10000905C(0, &qword_1006B3A70);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v33 activateConstraints:isa];

    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_100552EE0;
    v43 = [*&v1[v134] topAnchor];
    v44 = [v19 bottomAnchor];
    v45 = [v43 constraintEqualToAnchor:v44 constant:10.0];

    *(v42 + 32) = v45;
    v46 = [*&v1[v134] leadingAnchor];
    v47 = [v1 leadingAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];

    *(v42 + 40) = v48;
    p_ivar_lyt = (&LocateDeviceIntentResponse__metaData + 16);
    v49.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v33 activateConstraints:v49.super.isa];
  }

  else
  {
    v50 = objc_opt_self();
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_100552EE0;
    v52 = [*&v1[v134] topAnchor];
    v53 = [v1 topAnchor];
    v54 = [v52 constraintEqualToAnchor:v53 constant:12.0];

    *(v51 + 32) = v54;
    v55 = [*&v1[v134] leadingAnchor];
    v56 = [v1 leadingAnchor];
    v57 = [v55 constraintEqualToAnchor:v56];

    *(v51 + 40) = v57;
    sub_10000905C(0, &qword_1006B3A70);
    v49.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v50 activateConstraints:v49.super.isa];
  }

  v58 = objc_opt_self();
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_100552EF0;
  v60 = [*&v1[v133] topAnchor];
  v61 = [*&v1[v134] bottomAnchor];
  v62 = [v60 p:v61 ivar:2.0lyt[431]];

  *(v59 + 32) = v62;
  v63 = [*&v1[v133] bottomAnchor];
  v64 = [v1 bottomAnchor];
  v65 = [v63 constraintLessThanOrEqualToAnchor:v64 constant:-15.0];

  *(v59 + 40) = v65;
  v66 = [*&v1[v133] leadingAnchor];
  v67 = [v1 leadingAnchor];
  v68 = [v66 constraintEqualToAnchor:v67];

  *(v59 + 48) = v68;
  sub_10000905C(0, &qword_1006B3A70);
  v69 = Array._bridgeToObjectiveC()().super.isa;

  [v58 activateConstraints:v69];

  v128 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_isChevronVisible;
  if (v1[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_isChevronVisible] == 1)
  {
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_100555280;
    v71 = [*&v1[v129] centerYAnchor];
    v72 = [v1 centerYAnchor];
    v73 = [v71 constraintEqualToAnchor:v72];

    *(v70 + 32) = v73;
    v74 = [*&v1[v129] leadingAnchor];
    v75 = [*&v1[v134] trailingAnchor];
    if (qword_1006AEDB0 != -1)
    {
      swift_once();
    }

    v76 = *&qword_1006D4DC0;
    v77 = [v74 constraintEqualToAnchor:v75 constant:*&qword_1006D4DC0];

    *(v70 + 40) = v77;
    v78 = [*&v1[v129] leadingAnchor];
    v79 = [*&v1[v133] trailingAnchor];
    v80 = [v78 constraintEqualToAnchor:v79 constant:v76];

    *(v70 + 48) = v80;
    v81 = [*&v1[v129] trailingAnchor];
    v82 = [v1 trailingAnchor];
    v83 = [v81 constraintEqualToAnchor:v82];

    *(v70 + 56) = v83;
    v84 = [*&v1[v129] heightAnchor];
    v85 = [v84 constraintEqualToConstant:*(&xmmword_1006D4DB0 + 1)];

    *(v70 + 64) = v85;
    v86 = [*&v1[v129] widthAnchor];
    v87 = [v86 constraintEqualToConstant:*&xmmword_1006D4DB0];

    *(v70 + 72) = v87;
    v88.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_100552EE0;
    v90 = [*&v1[v134] trailingAnchor];
    v91 = [v1 trailingAnchor];
    v92 = [v90 constraintEqualToAnchor:v91 constant:0.0];

    *(v89 + 32) = v92;
    v93 = [*&v1[v133] trailingAnchor];
    v94 = [v1 trailingAnchor];
    v95 = [v93 constraintEqualToAnchor:v94 constant:0.0];

    *(v89 + 40) = v95;
    v88.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v58 activateConstraints:v88.super.isa];

  v136 = &type metadata for SolariumFeatureFlag;
  v137 = v130;
  v96 = isFeatureEnabled(_:)();
  sub_100006060(v135);
  v97 = 0.0;
  if ((v96 & 1) == 0)
  {
    if (v1[v128])
    {
      v97 = a1;
    }

    else
    {
      v97 = 12.0;
    }
  }

  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_1005521F0;
  v99 = [*&v1[v131] leadingAnchor];
  v100 = [v1 leadingAnchor];
  v101 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_fullWidthSeparator;
  v102 = -v4;
  if (!v1[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_fullWidthSeparator])
  {
    v102 = 0.0;
  }

  v103 = [v99 constraintEqualToAnchor:v100 constant:v102];

  *(v98 + 32) = v103;
  v104 = [*&v1[v131] trailingAnchor];
  v105 = [v1 trailingAnchor];
  if (v1[v101])
  {
    v106 = v4;
  }

  else
  {
    v106 = v97;
  }

  v107 = [v104 constraintEqualToAnchor:v105 constant:v106];

  *(v98 + 40) = v107;
  v108 = [*&v1[v131] bottomAnchor];
  v109 = [v1 bottomAnchor];
  v110 = [v108 constraintEqualToAnchor:v109 constant:0.0];

  *(v98 + 48) = v110;
  v111 = [*&v1[v131] heightAnchor];
  v112 = [v111 constraintEqualToConstant:1.0];

  *(v98 + 56) = v112;
  v113 = Array._bridgeToObjectiveC()().super.isa;

  [v58 activateConstraints:v113];

  v114 = swift_allocObject();
  *(v114 + 16) = xmmword_1005521F0;
  v115 = [*&v1[v132] topAnchor];
  v116 = [v1 topAnchor];
  v117 = [v115 constraintEqualToAnchor:v116];

  *(v114 + 32) = v117;
  v118 = [*&v1[v132] bottomAnchor];
  v119 = [v1 bottomAnchor];
  v120 = [v118 constraintEqualToAnchor:v119];

  *(v114 + 40) = v120;
  v121 = [*&v1[v132] leadingAnchor];
  v122 = [v1 leadingAnchor];
  v123 = [v121 constraintEqualToAnchor:v122 constant:-a1];

  *(v114 + 48) = v123;
  v124 = [*&v1[v132] trailingAnchor];
  v125 = [v1 trailingAnchor];
  v126 = [v124 constraintEqualToAnchor:v125 constant:a1];

  *(v114 + 56) = v126;
  v127 = Array._bridgeToObjectiveC()().super.isa;

  [v58 activateConstraints:v127];
}

void sub_1004EF60C(uint64_t a1, uint64_t a2)
{
  sub_10000905C(0, &qword_1006B0C30);
  sub_1000D5BCC();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for FMMultiSettingsRowView();
  objc_msgSendSuper2(&v9, "touchesBegan:withEvent:", isa, a2);

  if (v2[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_hiliteBackgroundWhenTapped] == 1)
  {
    v5 = *&v2[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_backgroundView];
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 secondarySystemFillColor];
    [v7 setBackgroundColor:v8];
  }
}

void sub_1004EF7C4(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  sub_10000905C(0, &qword_1006B0C30);
  sub_1000D5BCC();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a4;
  v9 = a1;
  isa = Set._bridgeToObjectiveC()().super.isa;

  v15.receiver = v9;
  v15.super_class = type metadata accessor for FMMultiSettingsRowView();
  objc_msgSendSuper2(&v15, *a5, isa, v8);

  v11 = *&v9[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_backgroundView];
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 clearColor];
  [v13 setBackgroundColor:v14];
}

id sub_1004EF928()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMMultiSettingsRowView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1004EFA58()
{
  v1 = (v0 + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_identifier);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_backgroundView;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView;
  *(v0 + v3) = [objc_allocWithZone(UIImageView) init];
  v4 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_titleLabel;
  *(v0 + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_secondaryLabel;
  type metadata accessor for FMCopyableLabel();
  *(v0 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_chevron;
  v7 = sub_1003DE824();
  v8 = [objc_allocWithZone(UIImageView) initWithImage:v7];

  *(v0 + v6) = v8;
  v9 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_separator;
  *(v0 + v9) = [objc_allocWithZone(UIView) init];
  v10 = (v0 + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_title);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v0 + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitle);
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitleColor;
  *(v0 + v12) = [objc_opt_self() secondaryLabelColor];
  *(v0 + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitleIsCopyToPasteboardEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_separated) = 1;
  *(v0 + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_isChevronVisible) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1004EFC1C(char a1, double a2)
{
  v5 = &v2[OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_identifier];
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_backgroundView;
  *&v2[v6] = [objc_allocWithZone(UIView) init];
  v7 = OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_titleLabel;
  *&v2[v7] = [objc_allocWithZone(UILabel) init];
  v8 = OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_secondaryLabel;
  *&v2[v8] = [objc_allocWithZone(UILabel) init];
  v9 = OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_statusLabel;
  *&v2[v9] = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_chevron;
  v11 = sub_1003DE824();
  v12 = [objc_allocWithZone(UIImageView) initWithImage:v11];

  *&v2[v10] = v12;
  v13 = OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_separator;
  *&v2[v13] = [objc_allocWithZone(UIView) init];
  v14 = &v2[OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_title];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v2[OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_subtitle];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v2[OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_status];
  *v16 = 0;
  v16[1] = 0;
  v2[OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_separated] = 1;
  v2[OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_isChevronVisible] = a1;
  v19.receiver = v2;
  v19.super_class = type metadata accessor for FMMultiSettingsStatusRowView();
  v17 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v17 setUserInteractionEnabled:a1 & 1];
  sub_1004EFF98();
  sub_1004F03A4(a2);

  return v17;
}

uint64_t sub_1004EFE98()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_title + 8);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_title);

    v3._countAndFlagsBits = v2;
    v3._object = v1;
    String.append(_:)(v3);
  }

  v4 = *(v0 + OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_subtitle + 8);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_subtitle);
    String.append(_:)(*(&v4 - 1));
    v6._countAndFlagsBits = 44;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
  }

  v7 = *(v0 + OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_status + 8);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_status);
    String.append(_:)(*(&v7 - 1));
    v9._countAndFlagsBits = 44;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
  }

  return 0;
}

id sub_1004EFF98()
{
  v1 = OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_chevron;
  v27 = OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_chevron;
  [*&v0[OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_chevron] setHidden:(v0[OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_isChevronVisible] & 1) == 0];
  [*&v0[v1] setContentMode:1];
  v2 = *&v0[v1];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 tertiaryLabelColor];
  [v4 setTintColor:v5];

  v6 = OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_titleLabel;
  v7 = *&v0[OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_titleLabel];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 preferredFontForTextStyle:UIFontTextStyleBody];
  [v9 setFont:v10];

  [*&v0[v6] setNumberOfLines:0];
  [*&v0[v6] setAdjustsFontForContentSizeCategory:1];
  v11 = OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_secondaryLabel;
  v12 = *&v0[OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_secondaryLabel];
  v13 = [v8 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v12 setFont:v13];

  v14 = *&v0[v11];
  v15 = [v3 secondaryLabelColor];
  [v14 setTextColor:v15];

  [*&v0[v11] setTextAlignment:4];
  [*&v0[v11] setNumberOfLines:0];
  [*&v0[v11] setAdjustsFontForContentSizeCategory:1];
  v16 = OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_statusLabel;
  v17 = *&v0[OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_statusLabel];
  v18 = [v8 preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v17 setFont:v18];

  v19 = *&v0[v16];
  v20 = [v3 tertiaryLabelColor];
  [v19 setTextColor:v20];

  [*&v0[v16] setTextAlignment:4];
  [*&v0[v16] setNumberOfLines:0];
  [*&v0[v16] setAdjustsFontForContentSizeCategory:1];
  v21 = OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_separator;
  v22 = *&v0[OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_separator];
  v23 = [v3 labelColor];
  v24 = [v23 colorWithAlphaComponent:0.1];

  [v22 setBackgroundColor:v24];
  [v0 addSubview:*&v0[OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_backgroundView]];
  [v0 addSubview:*&v0[v6]];
  [v0 addSubview:*&v0[v11]];
  [v0 addSubview:*&v0[v16]];
  [v0 addSubview:*&v0[v27]];
  v25 = *&v0[v21];

  return [v0 addSubview:v25];
}

void sub_1004F03A4(double a1)
{
  v3 = OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_titleLabel;
  [*&v1[OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_titleLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_secondaryLabel;
  [*&v1[OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_secondaryLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v88 = OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_statusLabel;
  [*&v1[OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_statusLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v92 = OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_separator;
  [*&v1[OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_separator] setTranslatesAutoresizingMaskIntoConstraints:0];
  v91 = OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_chevron;
  [*&v1[OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_chevron] setTranslatesAutoresizingMaskIntoConstraints:0];
  v93 = OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_backgroundView;
  [*&v1[OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_backgroundView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100552EE0;
  v7 = [*&v1[v3] topAnchor];
  v8 = [v1 topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:12.0];

  *(v6 + 32) = v9;
  v10 = [*&v1[v3] leadingAnchor];
  v11 = [v1 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v6 + 40) = v12;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v94 = v5;
  [v5 activateConstraints:isa];

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100552EE0;
  v15 = [*&v1[v4] topAnchor];
  v16 = [*&v1[v3] bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:2.0];

  *(v14 + 32) = v17;
  v18 = [*&v1[v4] leadingAnchor];
  v19 = [v1 leadingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v14 + 40) = v20;
  v21 = Array._bridgeToObjectiveC()().super.isa;

  [v5 activateConstraints:v21];

  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100552EF0;
  v23 = [*&v1[v88] topAnchor];
  v24 = [*&v1[v4] bottomAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:2.0];

  *(v22 + 32) = v25;
  v26 = [*&v1[v88] bottomAnchor];
  v27 = [v1 bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:-12.0];

  *(v22 + 40) = v28;
  v29 = [*&v1[v88] leadingAnchor];
  v30 = [v1 leadingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v22 + 48) = v31;
  v32 = Array._bridgeToObjectiveC()().super.isa;

  [v5 activateConstraints:v32];

  v89 = OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_isChevronVisible;
  if (v1[OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_isChevronVisible] == 1)
  {
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_100555280;
    v34 = [*&v1[v91] centerYAnchor];
    v35 = [v1 centerYAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];

    *(v33 + 32) = v36;
    v37 = [*&v1[v91] leadingAnchor];
    v38 = [*&v1[v3] trailingAnchor];
    if (qword_1006AEDB0 != -1)
    {
      swift_once();
    }

    v39 = *&qword_1006D4DC0;
    v40 = [v37 constraintEqualToAnchor:v38 constant:{*&qword_1006D4DC0, v89}];

    *(v33 + 40) = v40;
    v41 = [*&v1[v91] leadingAnchor];
    v42 = [*&v1[v4] trailingAnchor];
    v43 = [v41 constraintEqualToAnchor:v42 constant:v39];

    *(v33 + 48) = v43;
    v44 = [*&v1[v91] trailingAnchor];
    v45 = [v1 trailingAnchor];
    v46 = [v44 constraintEqualToAnchor:v45];

    *(v33 + 56) = v46;
    v47 = [*&v1[v91] heightAnchor];
    v48 = [v47 constraintEqualToConstant:*(&xmmword_1006D4DB0 + 1)];

    *(v33 + 64) = v48;
    v49 = [*&v1[v91] widthAnchor];
    v50 = [v49 constraintEqualToConstant:*&xmmword_1006D4DB0];

    *(v33 + 72) = v50;
    v51.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_100552EE0;
    v53 = [*&v1[v3] trailingAnchor];
    v54 = [v1 trailingAnchor];
    v55 = [v53 constraintEqualToAnchor:v54 constant:0.0];

    *(v52 + 32) = v55;
    v56 = [*&v1[v4] trailingAnchor];
    v57 = [v1 trailingAnchor];
    v58 = [v56 constraintEqualToAnchor:v57 constant:0.0];

    *(v52 + 40) = v58;
    v51.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v5 activateConstraints:{v51.super.isa, v89}];

  v96 = &type metadata for SolariumFeatureFlag;
  v97 = sub_10000BD04();
  v59 = isFeatureEnabled(_:)();
  sub_100006060(v95);
  v60 = 0.0;
  if ((v59 & 1) == 0)
  {
    if (v1[v90])
    {
      v60 = a1;
    }

    else
    {
      v60 = 12.0;
    }
  }

  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1005521F0;
  v62 = [*&v1[v92] leadingAnchor];
  v63 = [v1 leadingAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];

  *(v61 + 32) = v64;
  v65 = [*&v1[v92] trailingAnchor];
  v66 = [v1 trailingAnchor];
  v67 = [v65 constraintEqualToAnchor:v66 constant:v60];

  *(v61 + 40) = v67;
  v68 = [*&v1[v92] bottomAnchor];
  v69 = [v1 bottomAnchor];
  v70 = [v68 constraintEqualToAnchor:v69 constant:0.0];

  *(v61 + 48) = v70;
  v71 = [*&v1[v92] heightAnchor];
  v72 = [v71 constraintEqualToConstant:1.0];

  *(v61 + 56) = v72;
  v73 = Array._bridgeToObjectiveC()().super.isa;

  [v5 activateConstraints:v73];

  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1005521F0;
  v75 = [*&v1[v93] topAnchor];
  v76 = [v1 topAnchor];
  v77 = [v75 constraintEqualToAnchor:v76];

  *(v74 + 32) = v77;
  v78 = [*&v1[v93] bottomAnchor];
  v79 = [v1 bottomAnchor];
  v80 = [v78 constraintEqualToAnchor:v79];

  *(v74 + 40) = v80;
  v81 = [*&v1[v93] leadingAnchor];
  v82 = [v1 leadingAnchor];
  v83 = [v81 constraintEqualToAnchor:v82 constant:-a1];

  *(v74 + 48) = v83;
  v84 = [*&v1[v93] trailingAnchor];
  v85 = [v1 trailingAnchor];
  v86 = [v84 constraintEqualToAnchor:v85 constant:a1];

  *(v74 + 56) = v86;
  v87 = Array._bridgeToObjectiveC()().super.isa;

  [v94 activateConstraints:v87];
}

void sub_1004F1034(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5, SEL *a6)
{
  sub_10000905C(0, &qword_1006B0C30);
  sub_1000D5BCC();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a4;
  v11 = a1;
  isa = Set._bridgeToObjectiveC()().super.isa;

  v17.receiver = v11;
  v17.super_class = type metadata accessor for FMMultiSettingsStatusRowView();
  objc_msgSendSuper2(&v17, *a5, isa, v10);

  v13 = *&v11[OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_backgroundView];
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 *a6];
  [v15 setBackgroundColor:v16];
}

id sub_1004F11AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMMultiSettingsStatusRowView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1004F12E0()
{
  v1 = (v0 + OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_identifier);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_backgroundView;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_titleLabel;
  *(v0 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_secondaryLabel;
  *(v0 + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_statusLabel;
  *(v0 + v5) = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_chevron;
  v7 = sub_1003DE824();
  v8 = [objc_allocWithZone(UIImageView) initWithImage:v7];

  *(v0 + v6) = v8;
  v9 = OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_separator;
  *(v0 + v9) = [objc_allocWithZone(UIView) init];
  v10 = (v0 + OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_title);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v0 + OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_subtitle);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v0 + OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_status);
  *v12 = 0;
  v12[1] = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_separated) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *sub_1004F1490(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v46 = _swiftEmptyArrayStorage;
    v32 = a2 >> 62;
    sub_10016715C(0, v5 & ~(v5 >> 63), 0);
    v9 = v32;
    if (v32)
    {
      if (v32 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v33 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v46;
    v30 = &v34 + v10;
    do
    {
      if (v11 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v33 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = __DataStorage._bytes.getter();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = __DataStorage._offset.getter();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v20 = v30[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = __DataStorage._bytes.getter();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = __DataStorage._offset.getter();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v32;
LABEL_36:
      sub_10007EBC0(&unk_1006B20B0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_100552220;
      *(v21 + 56) = &type metadata for UInt8;
      *(v21 + 64) = &protocol witness table for UInt8;
      *(v21 + 32) = v20;
      v22 = String.init(format:_:)();
      v46 = v8;
      v25 = v8[2];
      v24 = v8[3];
      if (v25 >= v24 >> 1)
      {
        v29 = v22;
        v27 = v23;
        sub_10016715C((v24 > 1), v25 + 1, 1);
        v9 = v32;
        v23 = v27;
        v22 = v29;
        v8 = v46;
      }

      v8[2] = v25 + 1;
      v26 = &v8[2 * v25];
      v26[4] = v22;
      v26[5] = v23;
      ++v11;
    }

    while (v12 != v5);
  }

  return v8;
}

uint64_t sub_1004F180C@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainScreen];
  [v3 scale];
  v5 = v4;

  if (v5 == 1.0)
  {
    v6 = &enum case for FMIPHawkeyeProductInformation.AssetScale.x1(_:);
  }

  else if (v5 == 2.0)
  {
    v6 = &enum case for FMIPHawkeyeProductInformation.AssetScale.x2(_:);
  }

  else
  {
    if (v5 != 3.0)
    {
      v20[0] = 0;
      v20[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(59);
      v7._object = 0x800000010059CC60;
      v7._countAndFlagsBits = 0xD000000000000039;
      String.append(_:)(v7);
      v8 = [v2 mainScreen];
      [v8 scale];

      v9._countAndFlagsBits = Double.description.getter();
      String.append(_:)(v9);

      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_100005B14(v10, qword_1006D4630);
      v11 = static os_log_type_t.error.getter();

      v12 = Logger.logObject.getter();

      if (os_log_type_enabled(v12, v11))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v20[0] = v14;
        *v13 = 136315138;
        v15 = sub_100005B4C(0, 0xE000000000000000, v20);

        *(v13 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v12, v11, "%s", v13, 0xCu);
        sub_100006060(v14);
      }

      else
      {
      }
    }

    v6 = &enum case for FMIPHawkeyeProductInformation.AssetScale.x3(_:);
  }

  v16 = *v6;
  v17 = type metadata accessor for FMIPHawkeyeProductInformation.AssetScale();
  v18 = *(*(v17 - 8) + 104);

  return v18(a1, v16, v17);
}

uint64_t sub_1004F1AC8()
{
  _StringGuts.grow(_:)(86);
  v0._object = 0x800000010059CC00;
  v0._countAndFlagsBits = 0xD000000000000054;
  String.append(_:)(v0);
  type metadata accessor for URL();
  sub_1004F2868(&qword_1006B0668, &type metadata accessor for URL);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  return 0;
}

Swift::Int sub_1004F1B9C()
{
  Hasher.init(_seed:)();
  type metadata accessor for URL();
  sub_1004F2868(&qword_1006B5C78, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for FMIPHawkeyeProductInformation.AssetType();
  sub_1004F2868(&qword_1006B5C70, &type metadata accessor for FMIPHawkeyeProductInformation.AssetType);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1004F1CA0()
{
  type metadata accessor for URL();
  sub_1004F2868(&qword_1006B5C78, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for FMIPHawkeyeProductInformation.AssetType();
  sub_1004F2868(&qword_1006B5C70, &type metadata accessor for FMIPHawkeyeProductInformation.AssetType);
  dispatch thunk of Hashable.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_1004F1DA0()
{
  Hasher.init(_seed:)();
  type metadata accessor for URL();
  sub_1004F2868(&qword_1006B5C78, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for FMIPHawkeyeProductInformation.AssetType();
  sub_1004F2868(&qword_1006B5C70, &type metadata accessor for FMIPHawkeyeProductInformation.AssetType);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1004F1EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static URL.== infix(_:_:)() & 1) == 0 || (static FMIPHawkeyeProductInformation.AssetType.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

_BYTE *sub_1004F1F84@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1004F26B0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1004F2768(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1004F27E4(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1004F2018(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      type metadata accessor for Insecure.MD5();
      sub_1004F2868(&unk_1006B06F0, &type metadata accessor for Insecure.MD5);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1004F21F8(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_1004F21F8(v4, v5);
  }

  type metadata accessor for Insecure.MD5();
  sub_1004F2868(&unk_1006B06F0, &type metadata accessor for Insecure.MD5);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_1004F21F8(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for Insecure.MD5();
      sub_1004F2868(&unk_1006B06F0, &type metadata accessor for Insecure.MD5);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004F22D8()
{
  v0 = type metadata accessor for Insecure.MD5Digest();
  v22 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for String.Encoding();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Insecure.MD5();
  v23 = *(v7 - 8);
  v24 = v7;
  __chkstk_darwin(v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Insecure.MD5.init()();
  URL.absoluteString.getter();
  static String.Encoding.utf8.getter();
  v10 = String.data(using:allowLossyConversion:)();
  v12 = v11;

  (*(v4 + 8))(v6, v3);
  if (v12 >> 60 == 15)
  {
    (*(v23 + 8))(v9, v24);
    return 0;
  }

  else
  {
    sub_10005B930(v10, v12);
    sub_1004F2018(v10, v12);
    sub_10005BA6C(v10, v12);
    v14 = v2;
    v21 = v2;
    Insecure.MD5.finalize()();
    v15 = v0;
    v28 = v0;
    v29 = sub_1004F2868(&qword_1006C30E8, &type metadata accessor for Insecure.MD5Digest);
    v16 = sub_100008FC0(v27);
    v17 = v22;
    (*(v22 + 16))(v16, v14, v15);
    sub_1000244BC(v27, v28);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v18 = v25;
    v19 = v26;
    sub_100006060(v27);
    v27[0] = sub_1004F1490(v18, v19);
    sub_10007EBC0(&qword_1006C0C10);
    sub_1001500AC();
    v20 = BidirectionalCollection<>.joined(separator:)();
    sub_10000A858(v18, v19);
    sub_10005BA6C(v10, v12);

    (*(v17 + 8))(v21, v15);
    (*(v23 + 8))(v9, v24);
    return v20;
  }
}

uint64_t sub_1004F26B0(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1004F2768(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1004F27E4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1004F2868(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1004F28B0(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC6FindMy32FMErrorConditionsAttentionModule_verticalStackView;
  *&v2[v4] = [objc_allocWithZone(UIStackView) init];
  *&v2[OBJC_IVAR____TtC6FindMy32FMErrorConditionsAttentionModule_conditionSubscription] = 0;
  v5 = OBJC_IVAR____TtC6FindMy32FMErrorConditionsAttentionModule_airplaneModeOnAttention;
  v6 = type metadata accessor for FMExtendedPlatterInfoView();
  v7 = objc_allocWithZone(v6);
  *&v2[v5] = sub_10032B2F8(1, 0);
  v8 = OBJC_IVAR____TtC6FindMy32FMErrorConditionsAttentionModule_bluetoothOffAttention;
  v9 = objc_allocWithZone(v6);
  *&v2[v8] = sub_10032B2F8(1, 0);
  *&v2[OBJC_IVAR____TtC6FindMy32FMErrorConditionsAttentionModule_spacing] = 0x3810000000000000;
  v2[OBJC_IVAR____TtC6FindMy32FMErrorConditionsAttentionModule_shouldShowAirplaneModeAttention] = 1;
  *&v2[OBJC_IVAR____TtC6FindMy32FMErrorConditionsAttentionModule_mediator] = a1;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for FMErrorConditionsAttentionModule();

  v10 = objc_msgSendSuper2(&v16, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v11 = *(*&v10[OBJC_IVAR____TtC6FindMy32FMErrorConditionsAttentionModule_mediator] + 16);
  v12 = v10;
  v13 = v11;
  v14 = sub_1003CC0F0(v12, v13);

  *&v12[OBJC_IVAR____TtC6FindMy32FMErrorConditionsAttentionModule_conditionSubscription] = v14;

  sub_1004F2C10();
  sub_1004F3630();
  sub_1004F37A4();

  return v12;
}

id sub_1004F2A58()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy32FMErrorConditionsAttentionModule_conditionSubscription];
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = *(*&v0[OBJC_IVAR____TtC6FindMy32FMErrorConditionsAttentionModule_mediator] + 16);
  v4 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
  swift_beginAccess();

  v5 = v3;
  result = sub_1003CD738(&v3[v4], v2);
  v7 = *&v3[v4];
  if (v7 >> 62)
  {
    v9 = result;
    v8 = _CocoaArrayWrapper.endIndex.getter();
    result = v9;
    if (v8 >= v9)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8 >= result)
    {
LABEL_4:
      sub_1003CDB08(result, v8);
      swift_endAccess();

LABEL_5:
      v10.receiver = v1;
      v10.super_class = type metadata accessor for FMErrorConditionsAttentionModule();
      return objc_msgSendSuper2(&v10, "dealloc");
    }
  }

  __break(1u);
  return result;
}

void sub_1004F2C10()
{
  v1 = sub_10007EBC0(&qword_1006B3298);
  __chkstk_darwin(v1 - 8);
  v3 = &v79 - v2;
  v4 = *&v0[OBJC_IVAR____TtC6FindMy32FMErrorConditionsAttentionModule_verticalStackView];
  v85 = v0;
  v86 = v4;
  [v0 addSubview:?];
  v5 = *&v0[OBJC_IVAR____TtC6FindMy32FMErrorConditionsAttentionModule_airplaneModeOnAttention];
  v87 = "CLEAR_TAGS_MESSAGE";
  v6 = objc_opt_self();
  v7 = [v6 mainBundle];
  v88._object = 0x8000000100579A00;
  v8._countAndFlagsBits = 0xD000000000000022;
  v8._object = 0x800000010059CD30;
  v9.value._object = 0x80000001005799E0;
  v88._countAndFlagsBits = 0xD000000000000018;
  v9.value._countAndFlagsBits = 0xD000000000000013;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v88);

  *&v5[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_title] = v11;

  v12 = *&v5[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_label];

  v13 = String._bridgeToObjectiveC()();

  [v12 setText:v13];

  v83 = 0x800000010057FDC0;
  v84 = "_SUBTITLE_PEOPLE_GENERIC";
  v14 = [v6 mainBundle];
  v89._object = 0x800000010057FDC0;
  v15._countAndFlagsBits = 0xD000000000000030;
  v15._object = 0x800000010057FD80;
  v89._countAndFlagsBits = 0xD000000000000042;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v89);

  *&v5[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitle] = v17;

  v18 = *&v5[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitleLabel];

  v19 = String._bridgeToObjectiveC()();

  [v18 setText:v19];

  v20 = [v6 mainBundle];
  v90._object = 0x8000000100579A00;
  v79 = 0x8000000100579A00;
  v21._countAndFlagsBits = 0xD000000000000028;
  v21._object = 0x800000010059CD60;
  v22 = v87;
  v23.value._object = (v87 | 0x8000000000000000);
  v90._countAndFlagsBits = 0xD000000000000018;
  v23.value._countAndFlagsBits = 0xD000000000000013;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v23, v20, v24, v90);

  *&v5[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionTitle] = v25;

  v26 = *&v5[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionLabel];

  v27 = String._bridgeToObjectiveC()();

  [v26 setText:v27];

  v28 = type metadata accessor for FMPlatterIcon();
  swift_storeEnumTagMultiPayload();
  v29 = *(v28 - 8);
  v81 = *(v29 + 56);
  v82 = v29 + 56;
  v80 = v3;
  v81(v3, 0, 1, v28);
  v30 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_platterIcon;
  swift_beginAccess();
  sub_100140BE4(v3, &v5[v30]);
  swift_endAccess();
  sub_10032B0BC();
  sub_10017D238(v3);
  v31 = v85;
  v32 = *&v85[OBJC_IVAR____TtC6FindMy32FMErrorConditionsAttentionModule_bluetoothOffAttention];
  v33 = [v6 mainBundle];
  v91._object = 0x8000000100579A00;
  v34._countAndFlagsBits = 0xD00000000000001FLL;
  v34._object = 0x800000010059CD90;
  v35.value._object = (v22 | 0x8000000000000000);
  v91._countAndFlagsBits = 0xD000000000000018;
  v35.value._countAndFlagsBits = 0xD000000000000013;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v37 = NSLocalizedString(_:tableName:bundle:value:comment:)(v34, v35, v33, v36, v91);

  *&v32[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_title] = v37;

  v38 = *&v32[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_label];

  v39 = String._bridgeToObjectiveC()();

  [v38 setText:v39];

  v40 = [v6 mainBundle];
  v92._object = v83;
  v41._countAndFlagsBits = 0xD000000000000030;
  v41._object = (v84 | 0x8000000000000000);
  v92._countAndFlagsBits = 0xD000000000000042;
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(v41, 0, v40, v42, v92);

  *&v32[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitle] = v43;

  v44 = *&v32[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitleLabel];

  v45 = String._bridgeToObjectiveC()();
  v46 = v31;
  v47 = v86;

  [v44 setText:v45];

  v48 = [v6 mainBundle];
  v93._object = v79;
  v49._countAndFlagsBits = 0xD000000000000022;
  v49._object = 0x800000010059CDB0;
  v50.value._object = (v87 | 0x8000000000000000);
  v93._countAndFlagsBits = 0xD000000000000018;
  v50.value._countAndFlagsBits = 0xD000000000000013;
  v51._countAndFlagsBits = 0;
  v51._object = 0xE000000000000000;
  v52 = NSLocalizedString(_:tableName:bundle:value:comment:)(v49, v50, v48, v51, v93);

  *&v32[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionTitle] = v52;

  v53 = *&v32[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionLabel];

  v54 = String._bridgeToObjectiveC()();

  [v53 setText:v54];

  v55 = v80;
  swift_storeEnumTagMultiPayload();
  v81(v55, 0, 1, v28);
  v56 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_platterIcon;
  swift_beginAccess();
  sub_100140BE4(v55, &v32[v56]);
  swift_endAccess();
  sub_10032B0BC();
  sub_10017D238(v55);
  [v47 setAxis:1];
  [v47 setSpacing:*&v46[OBJC_IVAR____TtC6FindMy32FMErrorConditionsAttentionModule_spacing]];
  [v47 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10007EBC0(&qword_1006AFC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552EE0;
  *(inited + 32) = v5;
  *(inited + 40) = v32;
  v58 = v5;
  v59 = v32;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_9;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

  for (i = v58; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v61 = i;
    [i setTranslatesAutoresizingMaskIntoConstraints:0];
    [v47 addArrangedSubview:v61];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v62 = *(inited + 40);
      goto LABEL_7;
    }

LABEL_8:
    __break(1u);
LABEL_9:
    ;
  }

  v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
  v63 = v62;
  [v62 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v47 addArrangedSubview:v63];

  swift_setDeallocating();
  swift_arrayDestroy();
  v64 = objc_opt_self();
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1005521F0;
  v66 = [v47 topAnchor];
  v67 = [v46 topAnchor];
  v68 = [v66 constraintEqualToAnchor:v67];

  *(v65 + 32) = v68;
  v69 = [v47 bottomAnchor];
  v70 = [v46 bottomAnchor];
  v71 = [v69 constraintEqualToAnchor:v70];

  *(v65 + 40) = v71;
  v72 = [v47 leadingAnchor];
  v73 = [v46 leadingAnchor];
  v74 = [v72 constraintEqualToAnchor:v73];

  *(v65 + 48) = v74;
  v75 = [v47 trailingAnchor];
  v76 = [v46 trailingAnchor];
  v77 = [v75 constraintEqualToAnchor:v76];

  *(v65 + 56) = v77;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v64 activateConstraints:isa];
}

uint64_t sub_1004F3630()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy32FMErrorConditionsAttentionModule_airplaneModeOnAttention);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = (v1 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionHandler);
  v4 = *(v1 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionHandler);
  *v3 = sub_1004F3EAC;
  v3[1] = v2;

  sub_10001835C(v4);

  v5 = *(v0 + OBJC_IVAR____TtC6FindMy32FMErrorConditionsAttentionModule_bluetoothOffAttention);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = (v5 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionHandler);
  v8 = *(v5 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionHandler);
  *v7 = sub_1004F3EDC;
  v7[1] = v6;

  sub_10001835C(v8);
}

void sub_1004F3748(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

id sub_1004F37A4()
{
  v1 = v0;
  v2 = *(*&v0[OBJC_IVAR____TtC6FindMy32FMErrorConditionsAttentionModule_mediator] + 16);
  v3 = sub_10041E648();

  if (v3)
  {
    v4 = 6710895;
  }

  else
  {
    v4 = 28271;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE200000000000000;
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100005B14(v6, qword_1006D4630);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25[0] = v10;
    *v9 = 136315138;
    v11 = sub_100005B4C(v4, v5, v25);

    *(v9 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "FMErrorConditionsAttentionModule: BT is %s", v9, 0xCu);
    sub_100006060(v10);
  }

  else
  {
  }

  __chkstk_darwin(v12);
  v14 = v13;
  OS_dispatch_queue.sync<A>(execute:)();

  v15 = LOBYTE(v25[0]);
  if (LOBYTE(v25[0]))
  {
    v16 = 0xE200000000000000;
  }

  else
  {
    v16 = 0xE300000000000000;
  }

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    if (v15)
    {
      v19 = 28271;
    }

    else
    {
      v19 = 6710895;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v25[0] = v21;
    *v20 = 136315138;
    v22 = sub_100005B4C(v19, v16, v25);

    *(v20 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v17, v18, "FMErrorConditionsAttentionModule: Airplane Mode is %s", v20, 0xCu);
    sub_100006060(v21);

    if (!v15)
    {
      goto LABEL_20;
    }

LABEL_22:
    v23 = v1[OBJC_IVAR____TtC6FindMy32FMErrorConditionsAttentionModule_shouldShowAirplaneModeAttention];
    v3 &= v23 ^ 1;
    goto LABEL_23;
  }

  if (v15)
  {
    goto LABEL_22;
  }

LABEL_20:
  v23 = 0;
LABEL_23:
  *(*&v1[OBJC_IVAR____TtC6FindMy32FMErrorConditionsAttentionModule_airplaneModeOnAttention] + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed) = v23 ^ 1;
  sub_10032ADBC();
  *(*&v1[OBJC_IVAR____TtC6FindMy32FMErrorConditionsAttentionModule_bluetoothOffAttention] + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed) = (v3 & 1) == 0;
  sub_10032ADBC();
  return [v1 setHidden:((v23 | v3) & 1) == 0];
}

id sub_1004F3BBC(char a1)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    if (a1)
    {
      v7 = 28239;
    }

    else
    {
      v7 = 6710863;
    }

    if (a1)
    {
      v8 = 0xE200000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    v9 = sub_100005B4C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMErrorConditionsAttentionModule: Airplane Mode is %s", v5, 0xCu);
    sub_100006060(v6);
  }

  return sub_1004F37A4();
}

id sub_1004F3D34(char a1)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    if (a1)
    {
      v7 = 6710863;
    }

    else
    {
      v7 = 28239;
    }

    if (a1)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = 0xE200000000000000;
    }

    v9 = sub_100005B4C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMErrorConditionsAttentionModule: BT is %s", v5, 0xCu);
    sub_100006060(v6);
  }

  return sub_1004F37A4();
}

void sub_1004F3F0C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy32FMErrorConditionsAttentionModule_verticalStackView;
  *(v1 + v2) = [objc_allocWithZone(UIStackView) init];
  *(v1 + OBJC_IVAR____TtC6FindMy32FMErrorConditionsAttentionModule_conditionSubscription) = 0;
  v3 = OBJC_IVAR____TtC6FindMy32FMErrorConditionsAttentionModule_airplaneModeOnAttention;
  v4 = type metadata accessor for FMExtendedPlatterInfoView();
  v5 = objc_allocWithZone(v4);
  *(v1 + v3) = sub_10032B2F8(1, 0);
  v6 = OBJC_IVAR____TtC6FindMy32FMErrorConditionsAttentionModule_bluetoothOffAttention;
  v7 = objc_allocWithZone(v4);
  *(v1 + v6) = sub_10032B2F8(1, 0);
  *(v1 + OBJC_IVAR____TtC6FindMy32FMErrorConditionsAttentionModule_spacing) = 0x3810000000000000;
  *(v1 + OBJC_IVAR____TtC6FindMy32FMErrorConditionsAttentionModule_shouldShowAirplaneModeAttention) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1004F4018()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005B14(v0, qword_1006D4630);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "FMErrorConditionsAttentionModule: Airplane Mode On Button Toggled", v3, 2u);
  }

  v4 = [objc_allocWithZone(RadiosPreferences) init];
  [v4 setAirplaneMode:0];
  [v4 refresh];
}

void sub_1004F4148()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005B14(v0, qword_1006D4630);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "FMErrorConditionsAttentionModule: Bluetooth Off Button Toggled", v3, 2u);
  }

  v4 = [objc_opt_self() sharedInstance];
  if (v4)
  {
    v5 = v4;
    [v4 setEnabled:1];
  }
}

id sub_1004F4288()
{
  v1 = v0[OBJC_IVAR____TtC6FindMy15FMPlatterButton_alignment];
  v2 = [v0 layer];
  v3 = 12;
  v4 = 3;
  if (v1 == 2)
  {
    v5 = 0;
  }

  else
  {
    v4 = 15;
    v5 = 1;
  }

  if (v1)
  {
    v3 = 0;
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  if (v1 <= 1)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  if (v1 <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  v9 = v2;
  [v2 setMaskedCorners:v7];

  [*&v0[OBJC_IVAR____TtC6FindMy15FMPlatterButton_bottomSeparator] setHidden:v8];
  v10 = *&v0[OBJC_IVAR____TtC6FindMy15FMPlatterButton_topSeparator];

  return [v10 setHidden:1];
}

void sub_1004F4558(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  sub_10000905C(0, &qword_1006B0C30);
  sub_1000D5BCC();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a4;
  v9 = a1;
  isa = Set._bridgeToObjectiveC()().super.isa;

  v12.receiver = v9;
  v12.super_class = type metadata accessor for FMPlatterButton();
  objc_msgSendSuper2(&v12, *a5, isa, v8);

  v11 = *&v9[OBJC_IVAR____TtC6FindMy15FMPlatterButton_background];
  [v9 setBackgroundColor:v11];
}

void sub_1004F465C(uint64_t a1, uint64_t a2)
{
  sub_10000905C(0, &qword_1006B0C30);
  sub_1000D5BCC();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for FMPlatterButton();
  objc_msgSendSuper2(&v15, "touchesMoved:withEvent:", isa, a2);

  v6 = sub_1000F07E4(a1);
  if (v6)
  {
    v7 = v6;
    v8 = [v2 superview];
    [v7 locationInView:v8];
    v10 = v9;
    v12 = v11;

    [v2 frame];
    v16.x = v10;
    v16.y = v12;
    if (CGRectContainsPoint(v17, v16))
    {
      v13 = [objc_opt_self() secondarySystemFillColor];
    }

    else
    {
      v13 = *&v2[OBJC_IVAR____TtC6FindMy15FMPlatterButton_background];
    }

    v14 = v13;
    [v2 setBackgroundColor:v13];
  }
}

id sub_1004F4884()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPlatterButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1004F4928()
{
  result = qword_1006C3198;
  if (!qword_1006C3198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3198);
  }

  return result;
}

uint64_t type metadata accessor for FMUTDetailViewModel()
{
  result = qword_1006C3200;
  if (!qword_1006C3200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004F49F0()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      sub_1000F0494();
      if (v2 <= 0x3F)
      {
        sub_1004F4ACC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1004F4ACC()
{
  if (!qword_1006C3210)
  {
    sub_1004F4B28();
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_1006C3210);
    }
  }
}

unint64_t sub_1004F4B28()
{
  result = qword_1006C3218;
  if (!qword_1006C3218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3218);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMUTDetailAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_19;
  }

  v2 = a2 + 7;
  if (a2 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 7;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 7;
    }
  }

LABEL_19:
  v7 = *a1;
  if (*a1 < 2u)
  {
    return 0;
  }

  v8 = (v7 & 0xFE) + 2147483646;
  if ((v8 & 0x7FFFFFFEu) <= 5)
  {
    return 0;
  }

  return (v8 & 0x7FFFFFFE | v7 & 1u) - 5;
}

uint64_t storeEnumTagSinglePayload for FMUTDetailAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 7;
  if (a3 + 7 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF9)
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1004F4CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char *a4@<X8>)
{
  LODWORD(v190) = a3;
  v202 = a1;
  v197 = a4;
  v198 = type metadata accessor for FMIPUnknownItem();
  v204 = *(v198 - 8);
  v5 = __chkstk_darwin(v198);
  v191 = &v176 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v184 = &v176 - v7;
  v196 = type metadata accessor for FMIPProductType();
  v201 = *(v196 - 8);
  __chkstk_darwin(v196);
  v195 = &v176 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMIPLocation();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v177 = &v176 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v178 = &v176 - v14;
  v15 = __chkstk_darwin(v13);
  v186 = &v176 - v16;
  __chkstk_darwin(v15);
  v18 = &v176 - v17;
  v19 = sub_10007EBC0(&unk_1006B0000);
  v20 = __chkstk_darwin(v19 - 8);
  v187 = &v176 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v176 - v22;
  v24 = type metadata accessor for Date();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v192 = &v176 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v30 = &v176 - v29;
  v31 = __chkstk_darwin(v28);
  v188 = &v176 - v32;
  v33 = __chkstk_darwin(v31);
  v199 = &v176 - v34;
  v35 = __chkstk_darwin(v33);
  v200 = &v176 - v36;
  v37 = __chkstk_darwin(v35);
  v39 = &v176 - v38;
  __chkstk_darwin(v37);
  v41 = &v176 - v40;
  v205 = a2;
  v42 = FMIPUnknownItem.locations.getter();
  v43 = *(v42 + 16);
  v193 = v10;
  v194 = v9;
  v203 = v41;
  v189 = v30;
  if (v43)
  {
    (*(v10 + 16))(v18, v42 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v9);

    v44 = FMIPLocation.location.getter();
    (*(v10 + 8))(v18, v9);
    v45 = [v44 timestamp];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = *(v25 + 32);
    v46(v23, v39, v24);
    v47 = v25;
    v48 = *(v25 + 56);
    v48(v23, 0, 1, v24);
    v46(v41, v23, v24);
  }

  else
  {

    v48 = *(v25 + 56);
    v48(v23, 1, 1, v24);
    Date.init()();
    v47 = v25;
    if ((*(v25 + 48))(v23, 1, v24) != 1)
    {
      sub_100012DF0(v23, &unk_1006B0000);
    }
  }

  v49 = v205;
  v50 = FMIPUnknownItem.locations.getter();
  v51 = *(v50 + 16);
  v52 = v202;
  if (v51)
  {
    v54 = v193;
    v53 = v194;
    v55 = v186;
    (*(v193 + 16))(v186, v50 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * (v51 - 1), v194);

    v56 = FMIPLocation.location.getter();
    (*(v54 + 8))(v55, v53);
    v57 = [v56 timestamp];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = *(v47 + 32);
    v59 = v187;
    v58(v187, v39, v24);
    v48(v59, 0, 1, v24);
    v60 = v47;
    v61 = v200;
    v58(v200, v59, v24);
  }

  else
  {

    v62 = v187;
    v48(v187, 1, 1, v24);
    v60 = v47;
    v61 = v200;
    Date.init()();
    if ((*(v47 + 48))(v62, 1, v24) != 1)
    {
      sub_100012DF0(v62, &unk_1006B0000);
    }
  }

  My = FMIPUnknownItem.isFindMyNetwork.getter();
  sub_1004F6C54(v203, My & 1, v199);
  v64 = v195;
  FMIPUnknownItem.productType.getter();
  v179 = FMIPProductType.isAccessory.getter();
  v65 = *(v201 + 8);
  v201 += 8;
  v182 = v65;
  v65(v64, v196);
  Date.init()();
  v66 = static Date.< infix(_:_:)();
  v67 = *(v60 + 8);
  v186 = (v60 + 8);
  v185 = v67;
  v67(v39, v24);
  if (v66)
  {
    v68 = *(v52 + 16);
    v69 = sub_10041E648();

    v70 = v69 ^ 1;
  }

  else
  {
    v70 = 0;
  }

  v71 = *(*(v52 + 24) + 64);

  v180 = sub_1004F8710(v49, v70 & 1, v71, v190 & 1, v52);
  v181 = v72;

  v73 = type metadata accessor for FMUTDetailViewModel();
  v74 = *(v60 + 16);
  v75 = v197;
  v76 = &v197[v73[5]];
  v190 = v24;
  v187 = (v60 + 16);
  v183 = v74;
  v74(v76, v61, v24);
  FMIPUnknownItem.identifier.getter();
  v77 = objc_opt_self();
  v78 = [v77 mainBundle];
  v79.value._countAndFlagsBits = 0xD000000000000010;
  v208._object = 0x8000000100582000;
  v80._countAndFlagsBits = 0xD00000000000001FLL;
  v80._object = 0x800000010059CED0;
  v79.value._object = 0x8000000100581FE0;
  v81._countAndFlagsBits = 0;
  v81._object = 0xE000000000000000;
  v208._countAndFlagsBits = 0xD000000000000015;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v80, v79, v78, v81, v208);

  sub_10007EBC0(&unk_1006B20B0);
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_100552220;
  v83 = FMIPUnknownItem.name.getter();
  v85 = v84;
  *(v82 + 56) = &type metadata for String;
  *(v82 + 64) = sub_10008EE84();
  *(v82 + 32) = v83;
  *(v82 + 40) = v85;
  v86 = v205;
  v87 = String.init(format:_:)();
  v89 = v88;

  v90 = &v75[v73[6]];
  *v90 = v87;
  v90[1] = v89;
  v91 = sub_1004F9BA0(v203, v61);
  v92 = &v75[v73[7]];
  *v92 = v91;
  v92[1] = v93;
  v94 = &v75[v73[8]];
  *v94 = v95;
  *(v94 + 1) = v96;
  if (v179)
  {
    v97 = 0xD00000000000001ALL;
  }

  else
  {
    v97 = 0xD000000000000015;
  }

  if (v179)
  {
    v98 = "ITEM_FOLLOWING_FOOTER";
  }

  else
  {
    v98 = "ITEM_FOLLOWING_LEARN_MORE_TITLE";
  }

  v99 = [v77 mainBundle];
  v100.value._countAndFlagsBits = 0xD000000000000013;
  v209._object = 0x8000000100579A00;
  v101._object = (v98 | 0x8000000000000000);
  v100.value._object = 0x80000001005799E0;
  v209._countAndFlagsBits = 0xD000000000000018;
  v101._countAndFlagsBits = v97;
  v102._countAndFlagsBits = 0;
  v102._object = 0xE000000000000000;
  v103 = NSLocalizedString(_:tableName:bundle:value:comment:)(v101, v100, v99, v102, v209);

  *&v75[v73[10]] = v103;
  *&v75[v73[12]] = sub_1004FA070();
  v75[v73[13]] = sub_1004F7F0C(v86, v202);
  v104 = v195;
  FMIPUnknownItem.productType.getter();
  v105 = FMIPProductType.isAccessory.getter();
  v182(v104, v196);
  v75[v73[11]] = v105 & 1;
  *&v75[v73[14]] = v180;
  *&v75[v73[15]] = v181;
  v106 = FMIPUnknownItem.locations.getter();
  v107 = *(v106 + 16);
  if (v107)
  {
    v109 = v193;
    v108 = v194;
    v110 = v178;
    (*(v193 + 16))(v178, v106 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * (v107 - 1), v194);

    v111 = FMIPLocation.isOld.getter();
    (*(v109 + 8))(v110, v108);
    v112 = v198;
    if (v111)
    {
      v113 = &selRef_secondaryLabelColor;
      goto LABEL_23;
    }
  }

  else
  {

    v112 = v198;
  }

  v113 = &selRef_systemRedColor;
LABEL_23:
  v114 = v190;
  v115 = [objc_opt_self() *v113];
  *&v197[v73[9]] = v115;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v116 = type metadata accessor for Logger();
  v117 = sub_100005B14(v116, qword_1006D4630);
  v118 = v204;
  v119 = *(v204 + 16);
  v120 = v184;
  v119(v184, v86, v112);
  v201 = v117;
  v121 = v120;
  v122 = Logger.logObject.getter();
  v123 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v122, v123))
  {
    v124 = swift_slowAlloc();
    *v124 = 134217984;
    v125 = FMIPUnknownItem.locations.getter();
    v197 = v119;
    v126 = v114;
    v127 = v86;
    v128 = *(v125 + 16);

    v129 = *(v204 + 8);
    v129(v121, v112);
    *(v124 + 4) = v128;
    v86 = v127;
    v114 = v126;
    v119 = v197;
    _os_log_impl(&_mh_execute_header, v122, v123, "FMUTDetailViewModel: locations: (%ld", v124, 0xCu);
  }

  else
  {
    v129 = *(v118 + 8);
    v129(v121, v112);
  }

  v130 = v191;
  v119(v191, v86, v112);
  v131 = Logger.logObject.getter();
  v132 = static os_log_type_t.default.getter();
  v133 = os_log_type_enabled(v131, v132);
  v197 = v129;
  if (v133)
  {
    v134 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    v207 = v135;
    *v134 = 136315138;
    v136 = FMIPUnknownItem.locations.getter();
    v137 = *(v136 + 16);
    if (v137)
    {
      v139 = v193;
      v138 = v194;
      v140 = v177;
      (*(v193 + 16))(v177, v136 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * (v137 - 1), v194);

      v141 = FMIPLocation.location.getter();
      (*(v139 + 8))(v140, v138);
      v142 = [v141 debugDescription];

      v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v145 = v144;

      v112 = v198;
    }

    else
    {

      v143 = 0;
      v145 = 0;
    }

    v206[0] = v143;
    v206[1] = v145;
    sub_10007EBC0(&qword_1006AF8F0);
    v146 = String.init<A>(describing:)();
    v148 = v147;
    v129(v191, v112);
    v149 = sub_100005B4C(v146, v148, &v207);

    *(v134 + 4) = v149;
    _os_log_impl(&_mh_execute_header, v131, v132, "FMUTDetailViewModel: most recent location %s", v134, 0xCu);
    sub_100006060(v135);

    v86 = v205;
  }

  else
  {

    v129(v130, v112);
  }

  v150 = v188;
  v151 = v203;
  v152 = v183;
  v183(v188, v203, v114);
  v153 = v189;
  v154 = v200;
  v152(v189, v200, v114);
  v155 = v192;
  v156 = v199;
  v152(v192, v199, v114);
  v157 = Logger.logObject.getter();
  v158 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v157, v158))
  {
    v159 = swift_slowAlloc();
    v201 = swift_slowAlloc();
    v206[0] = v201;
    *v159 = 136315650;
    sub_1004FA2B8(&qword_1006B8DF8, &type metadata accessor for Date);
    LODWORD(v196) = v158;
    v160 = dispatch thunk of CustomStringConvertible.description.getter();
    v162 = v161;
    v163 = v185;
    v185(v150, v114);
    v164 = sub_100005B4C(v160, v162, v206);

    *(v159 + 4) = v164;
    *(v159 + 12) = 2080;
    v165 = dispatch thunk of CustomStringConvertible.description.getter();
    v167 = v166;
    v163(v153, v114);
    v168 = sub_100005B4C(v165, v167, v206);

    *(v159 + 14) = v168;
    *(v159 + 22) = 2080;
    v169 = v192;
    v170 = dispatch thunk of CustomStringConvertible.description.getter();
    v172 = v171;
    v163(v169, v114);
    v173 = sub_100005B4C(v170, v172, v206);

    *(v159 + 24) = v173;
    _os_log_impl(&_mh_execute_header, v157, v196, "FMUTDetailViewModel: firstDetectedDate: %s lastDetectionDate: %s rollDate: %s", v159, 0x20u);
    swift_arrayDestroy();

    (v197)(v205, v198);
    v163(v199, v114);
    v163(v200, v114);
    return (v163)(v203, v114);
  }

  else
  {

    (v197)(v86, v198);
    v175 = v185;
    v185(v155, v114);
    v175(v153, v114);
    v175(v150, v114);
    v175(v156, v114);
    v175(v154, v114);
    return (v175)(v151, v114);
  }
}

uint64_t sub_1004F5FF0@<X0>(char a1@<W1>, _BYTE *a2@<X8>)
{
  v78 = a2;
  v3 = type metadata accessor for FMFindingProductType();
  v74 = *(v3 - 8);
  v75 = v3;
  v4 = __chkstk_darwin(v3);
  v72 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v70 - v7;
  __chkstk_darwin(v6);
  v70 = &v70 - v9;
  v10 = type metadata accessor for FMItemCapabilities();
  v71 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v70 - v14;
  v16 = type metadata accessor for FMExperienceType();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v70 - v21;
  sub_1004F7B28(a1, &v70 - v21);
  (*(v17 + 104))(v20, enum case for FMExperienceType.r1(_:), v16);
  v76 = v22;
  v23 = static FMExperienceType.== infix(_:_:)();
  v24 = *(v17 + 8);
  v77 = v16;
  v73 = v17 + 8;
  v24(v20, v16);
  if (v23)
  {
    v72 = v24;
    FMIPUnknownItem.capabilities.getter();
    static FMItemCapabilities.canR2.getter();
    sub_1004FA2B8(&qword_1006B4180, &type metadata accessor for FMItemCapabilities);
    v25 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v26 = *(v71 + 8);
    v26(v13, v10);
    v26(v15, v10);
    My = type metadata accessor for Feature.FindMy();
    v80 = My;
    v28 = sub_1004FA2B8(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
    v81 = v28;
    v29 = sub_100008FC0(v79);
    v30 = *(*(My - 8) + 104);
    v30(v29, enum case for Feature.FindMy.gorgeousCherry(_:), My);
    LOBYTE(v26) = isFeatureEnabled(_:)();
    sub_100006060(v79);
    v32 = v74;
    v31 = v75;
    if (v26)
    {
      v33 = v70;
      FMIPUnknownItem.findingProductType.getter(v70);
      v34 = FMFindingProductType.isItem.getter();
      (*(v32 + 8))(v33, v31);
      if (v34)
      {
        (v72)(v76, v77);
        if ((v25 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_16;
      }
    }

    v80 = My;
    v81 = v28;
    v48 = sub_100008FC0(v79);
    v30(v48, enum case for Feature.FindMy.modernRose(_:), My);
    v49 = isFeatureEnabled(_:)();
    sub_100006060(v79);
    if (v49)
    {
      v50 = v70;
      FMIPUnknownItem.findingProductType.getter(v70);
      v51 = FMFindingProductType.isAirPods.getter();
      (*(v32 + 8))(v50, v31);
      (v72)(v76, v77);
      if (v25 & v51)
      {
LABEL_16:
        v52 = *(sub_10007EBC0(&unk_1006B4210) + 48);
        v53 = enum case for FindingModel.nearbyInteraction(_:);
        v54 = type metadata accessor for FindingModel();
        v44 = v78;
        (*(*(v54 - 8) + 104))(v78, v53, v54);
        v55 = enum case for FMFindingType.ut(_:);
        v56 = type metadata accessor for FMFindingType();
        (*(*(v56 - 8) + 104))(&v44[v52], v55, v56);
        v47 = &enum case for FindingExperienceType.precision(_:);
        goto LABEL_22;
      }
    }

    else
    {
      (v72)(v76, v77);
    }

LABEL_19:
    v58 = *(sub_10007EBC0(&qword_1006C0020) + 48);
    v44 = v78;
    *v78 = 1;
    v59 = enum case for FMFindingType.ut(_:);
    v60 = type metadata accessor for FMFindingType();
    (*(*(v60 - 8) + 104))(&v44[v58], v59, v60);
    v61 = &enum case for FMFindingTechnology.precision(_:);
LABEL_21:
    v65 = *v61;
    v66 = type metadata accessor for FMFindingTechnology();
    (*(*(v66 - 8) + 104))(v44, v65, v66);
    v47 = &enum case for FindingExperienceType.legacy(_:);
    goto LABEL_22;
  }

  FMIPUnknownItem.findingProductType.getter(v8);
  v35 = v74;
  v36 = v75;
  v37 = v72;
  (*(v74 + 16))(v72, v8, v75);
  if ((*(v35 + 88))(v37, v36) != enum case for FMFindingProductType.airpods(_:))
  {
    v57 = *(v35 + 8);
    v57(v8, v36);
    v24(v76, v77);
    v57(v37, v36);
    goto LABEL_20;
  }

  (*(v35 + 96))(v37, v36);
  if (*v37 != 8233 && *v37 != 8231)
  {
    (*(v35 + 8))(v8, v36);
    v24(v76, v77);
LABEL_20:
    v62 = *(sub_10007EBC0(&qword_1006B68B0) + 48);
    v63 = enum case for FMFindingType.ut(_:);
    v64 = type metadata accessor for FMFindingType();
    v44 = v78;
    (*(*(v64 - 8) + 104))(v78, v63, v64);
    v44[v62] = 0;
    v61 = &enum case for FMFindingTechnology.proximity(_:);
    goto LABEL_21;
  }

  v39 = type metadata accessor for Feature.FindMy();
  v80 = v39;
  v81 = sub_1004FA2B8(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
  v40 = sub_100008FC0(v79);
  (*(*(v39 - 8) + 104))(v40, enum case for Feature.FindMy.modernRose(_:), v39);
  LOBYTE(v39) = isFeatureEnabled(_:)();
  (*(v35 + 8))(v8, v36);
  v24(v76, v77);
  sub_100006060(v79);
  if ((v39 & 1) == 0)
  {
    goto LABEL_20;
  }

  v41 = *(sub_10007EBC0(&unk_1006B4210) + 48);
  v42 = enum case for FindingModel.nearbyInteraction(_:);
  v43 = type metadata accessor for FindingModel();
  v44 = v78;
  (*(*(v43 - 8) + 104))(v78, v42, v43);
  v45 = enum case for FMFindingType.ut(_:);
  v46 = type metadata accessor for FMFindingType();
  (*(*(v46 - 8) + 104))(&v44[v41], v45, v46);
  v47 = &enum case for FindingExperienceType.proximity(_:);
LABEL_22:
  v67 = *v47;
  v68 = type metadata accessor for FindingExperienceType();
  return (*(*(v68 - 8) + 104))(v44, v67, v68);
}

void sub_1004F6994(uint64_t a1, unsigned __int8 a2)
{
  if (a2 > 4u)
  {
    switch(a2)
    {
      case 5u:
        v2 = 4;
        goto LABEL_15;
      case 6u:
        v2 = 5;
        goto LABEL_15;
      case 7u:
        v2 = 6;
        goto LABEL_15;
    }

LABEL_12:
    Hasher._combine(_:)(3uLL);
    Hasher._combine(_:)(a2 & 1);
    return;
  }

  if (a2 == 2)
  {
    v2 = 0;
    goto LABEL_15;
  }

  if (a2 == 3)
  {
    v2 = 1;
    goto LABEL_15;
  }

  if (a2 != 4)
  {
    goto LABEL_12;
  }

  v2 = 2;
LABEL_15:
  Hasher._combine(_:)(v2);
}

Swift::Int sub_1004F6A38(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  if (a1 > 4u)
  {
    switch(a1)
    {
      case 5u:
        v2 = 4;
        goto LABEL_15;
      case 6u:
        v2 = 5;
        goto LABEL_15;
      case 7u:
        v2 = 6;
        goto LABEL_15;
    }
  }

  else
  {
    switch(a1)
    {
      case 2u:
        v2 = 0;
        goto LABEL_15;
      case 3u:
        v2 = 1;
        goto LABEL_15;
      case 4u:
        v2 = 2;
LABEL_15:
        Hasher._combine(_:)(v2);
        return Hasher._finalize()();
    }
  }

  Hasher._combine(_:)(3uLL);
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_1004F6B24()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 > 4)
  {
    switch(v1)
    {
      case 5:
        v2 = 4;
        goto LABEL_15;
      case 6:
        v2 = 5;
        goto LABEL_15;
      case 7:
        v2 = 6;
        goto LABEL_15;
    }
  }

  else
  {
    switch(v1)
    {
      case 2:
        v2 = 0;
        goto LABEL_15;
      case 3:
        v2 = 1;
        goto LABEL_15;
      case 4:
        v2 = 2;
LABEL_15:
        Hasher._combine(_:)(v2);
        return Hasher._finalize()();
    }
  }

  Hasher._combine(_:)(3uLL);
  Hasher._combine(_:)(v1 & 1);
  return Hasher._finalize()();
}

id sub_1004F6C04()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  result = [v0 setTimeStyle:1];
  qword_1006C31A0 = v0;
  return result;
}

uint64_t sub_1004F6C54@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v103 = a1;
  v114 = a3;
  v4 = sub_10007EBC0(&qword_1006AFFF8);
  __chkstk_darwin(v4 - 8);
  v111 = &v96 - v5;
  v6 = sub_10007EBC0(&qword_1006B00A8);
  __chkstk_darwin(v6 - 8);
  v116 = &v96 - v7;
  v8 = type metadata accessor for DateComponents();
  v112 = *(v8 - 8);
  v113 = v8;
  v9 = __chkstk_darwin(v8);
  v100 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v107 = (&v96 - v12);
  v13 = __chkstk_darwin(v11);
  v98 = &v96 - v14;
  __chkstk_darwin(v13);
  v106 = &v96 - v15;
  v16 = type metadata accessor for Calendar.Component();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10007EBC0(&unk_1006B0000);
  v21 = __chkstk_darwin(v20 - 8);
  v99 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v96 - v24;
  v26 = __chkstk_darwin(v23);
  v96 = &v96 - v27;
  __chkstk_darwin(v26);
  v29 = &v96 - v28;
  v30 = type metadata accessor for Date();
  v31 = *(v30 - 8);
  v32 = __chkstk_darwin(v30);
  v97 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v115 = &v96 - v35;
  v36 = __chkstk_darwin(v34);
  v101 = &v96 - v37;
  __chkstk_darwin(v36);
  v105 = &v96 - v38;
  v117 = type metadata accessor for Calendar();
  v110 = *(v117 - 8);
  v39 = __chkstk_darwin(v117);
  v40 = __chkstk_darwin(v39);
  v108 = &v96 - v41;
  __chkstk_darwin(v40);
  v44 = (v17 + 104);
  v104 = v17;
  v45 = (v17 + 8);
  v118 = v31;
  v46 = (v31 + 48);
  v109 = v31 + 48;
  v102 = v30;
  if (a2)
  {
    v47 = &v96 - v43;
    static Calendar.current.getter();
    v48 = enum case for Calendar.Component.day(_:);
    v49 = *v44;
    (*v44)(v19, enum case for Calendar.Component.day(_:), v16);
    v115 = v47;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    (*v45)(v19, v16);
    v50 = *v46;
    v51 = (*v46)(v29, 1, v30);
    v107 = v50;
    if (v51 == 1)
    {
      Date.init()();
      if (v50(v29, 1, v30) != 1)
      {
        sub_100012DF0(v29, &unk_1006B0000);
      }
    }

    else
    {
      (*(v118 + 32))(v105, v29, v30);
    }

    sub_10007EBC0(&qword_1006B0088);
    v56 = *(v104 + 72);
    v57 = (*(v104 + 80) + 32) & ~*(v104 + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1005528D0;
    v59 = v58 + v57;
    (v49)(v59, enum case for Calendar.Component.year(_:), v16);
    (v49)(v59 + v56, enum case for Calendar.Component.month(_:), v16);
    (v49)(v59 + 2 * v56, v48, v16);
    sub_100174754(v58);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    Calendar.dateComponents(_:from:)();

    v60 = v110;
    v61 = v117;
    (*(v110 + 56))(v116, 1, 1, v117);
    v62 = type metadata accessor for TimeZone();
    (*(*(v62 - 8) + 56))(v111, 1, 1, v62);
    DateComponents.year.getter();
    DateComponents.month.getter();
    DateComponents.day.getter();
    v63 = v98;
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    v64 = v108;
    static Calendar.current.getter();
    v65 = v96;
    Calendar.date(from:)();
    v66 = *(v60 + 8);
    v66(v64, v61);
    v67 = v102;
    v68 = v107;
    if (v107(v65, 1, v102) == 1)
    {
      Date.init()();
      v69 = v113;
      v70 = *(v112 + 8);
      v70(v63, v113);
      v70(v106, v69);
      v71 = v118;
      (*(v118 + 8))(v105, v67);
      v66(v115, v117);
      if (v68(v65, 1, v67) != 1)
      {
        sub_100012DF0(v65, &unk_1006B0000);
      }

      v72 = v101;
    }

    else
    {
      v90 = v113;
      v91 = *(v112 + 8);
      v91(v63, v113);
      v91(v106, v90);
      v71 = v118;
      (*(v118 + 8))(v105, v67);
      v66(v115, v117);
      v72 = v101;
      (*(v71 + 32))(v101, v65, v67);
    }
  }

  else
  {
    v52 = v42;
    static Calendar.current.getter();
    v53 = *v44;
    LODWORD(v101) = enum case for Calendar.Component.day(_:);
    v53(v19);
    v106 = v52;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    (*v45)(v19, v16);
    v54 = *v46;
    v55 = (*v46)(v25, 1, v30);
    v105 = v54;
    if (v55 == 1)
    {
      Date.init()();
      if ((v54)(v25, 1, v30) != 1)
      {
        sub_100012DF0(v25, &unk_1006B0000);
      }
    }

    else
    {
      (*(v118 + 32))(v115, v25, v30);
    }

    sub_10007EBC0(&qword_1006B0088);
    v73 = *(v104 + 72);
    v74 = (*(v104 + 80) + 32) & ~*(v104 + 80);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_100564F70;
    v76 = v75 + v74;
    (v53)(v76, enum case for Calendar.Component.year(_:), v16);
    (v53)(v76 + v73, enum case for Calendar.Component.month(_:), v16);
    (v53)(v76 + 2 * v73, v101, v16);
    (v53)(v76 + 3 * v73, enum case for Calendar.Component.hour(_:), v16);
    (v53)(v76 + 4 * v73, enum case for Calendar.Component.minute(_:), v16);
    sub_100174754(v75);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    Calendar.dateComponents(_:from:)();

    v77 = v110;
    v78 = v117;
    (*(v110 + 56))(v116, 1, 1, v117);
    v79 = type metadata accessor for TimeZone();
    (*(*(v79 - 8) + 56))(v111, 1, 1, v79);
    v104 = DateComponents.year.getter();
    LODWORD(v101) = v80;
    v103 = DateComponents.month.getter();
    DateComponents.day.getter();
    DateComponents.hour.getter();
    DateComponents.minute.getter();
    v81 = v78;
    v82 = v100;
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    v83 = v108;
    static Calendar.current.getter();
    v84 = v99;
    Calendar.date(from:)();
    v85 = *(v77 + 8);
    v85(v83, v81);
    v67 = v102;
    if ((v105)(v84, 1, v102) == 1)
    {
      v86 = v97;
      Date.init()();
      v87 = *(v112 + 8);
      v88 = v82;
      v89 = v113;
      v87(v88, v113);
      v87(v107, v89);
      v71 = v118;
      (*(v118 + 8))(v115, v67);
      v85(v106, v81);
      if ((v105)(v84, 1, v67) != 1)
      {
        sub_100012DF0(v84, &unk_1006B0000);
      }

      v72 = v86;
    }

    else
    {
      v92 = *(v112 + 8);
      v93 = v82;
      v94 = v113;
      v92(v93, v113);
      v92(v107, v94);
      v71 = v118;
      (*(v118 + 8))(v115, v67);
      v85(v106, v81);
      v72 = v97;
      (*(v71 + 32))(v97, v84, v67);
    }
  }

  return (*(v71 + 32))(v114, v72, v67);
}

uint64_t sub_1004F7B28@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FMItemCapabilities();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  type metadata accessor for FMConnectionManager();
  if (static FMConnectionManager.hostSupportsRanging.getter())
  {
    v11 = [objc_opt_self() currentDevice];
    v12 = [v11 userInterfaceIdiom];

    v13 = v12 == 1;
  }

  else
  {
    v13 = 1;
  }

  v14 = FMIPUnknownItem.unknownBeacon.getter();
  if (v14)
  {
    v15 = v14;
    v16 = [v14 capabilities];

    if (v13 || ((v16 >> 8) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v17 = FMIPUnknownItem.unknownBeacon.getter();
    if (v17 && (v18 = v17, v19 = [v17 metadata], v18, v19))
    {
      v20 = [v19 capabilities];

      if (v13 || ((v20 >> 8) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      FMIPUnknownItem.capabilities.getter();
      static FMItemCapabilities.canR1.getter();
      sub_1004FA2B8(&qword_1006B4180, &type metadata accessor for FMItemCapabilities);
      v21 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v10, v4);
      if (v13 || (v21 & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  if ((a1 & 1) != 0 && (FMIPUnknownItem.isAppleAudioAccessory.getter() & 1) == 0)
  {
    v23 = &enum case for FMExperienceType.r1(_:);
    goto LABEL_16;
  }

LABEL_14:
  v23 = &enum case for FMExperienceType.bt(_:);
LABEL_16:
  v24 = *v23;
  v25 = type metadata accessor for FMExperienceType();
  return (*(*(v25 - 8) + 104))(a2, v24, v25);
}

unint64_t sub_1004F7DF0()
{
  result = qword_1006C3270;
  if (!qword_1006C3270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3270);
  }

  return result;
}

uint64_t sub_1004F7E44(int a1, int a2)
{
  if (a1 > 4u)
  {
    switch(a1)
    {
      case 5u:
        if (a2 != 5)
        {
          return 0;
        }

        break;
      case 6u:
        if (a2 != 6)
        {
          return 0;
        }

        break;
      case 7u:
        if (a2 != 7)
        {
          return 0;
        }

        break;
      default:
LABEL_16:
        if ((a2 - 2) >= 6u)
        {
          return (a2 ^ a1 ^ 1) & 1;
        }

        return 0;
    }

    return 1;
  }

  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a1 == 3)
  {
    return a2 == 3;
  }

  if (a1 != 4)
  {
    goto LABEL_16;
  }

  return a2 == 4;
}

BOOL sub_1004F7F0C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FMIPLocation();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&unk_1006C0220);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v28 - v11;
  v13 = FMIPUnknownItem.locations.getter();
  v14 = *(v13 + 16);
  if (v14)
  {
    (*(v4 + 16))(v12, v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * (v14 - 1), v3);

    (*(v4 + 56))(v12, 0, 1, v3);
  }

  else
  {

    (*(v4 + 56))(v12, 1, 1, v3);
  }

  sub_1004FA248(v12, v10);
  if ((*(v4 + 48))(v10, 1, v3) == 1)
  {
    sub_100012DF0(v12, &unk_1006C0220);
    v15 = v10;
LABEL_10:
    sub_100012DF0(v15, &unk_1006C0220);
    return 0;
  }

  (*(v4 + 32))(v6, v10, v3);
  v16 = *(*(a2 + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
  if (!v16)
  {
    (*(v4 + 8))(v6, v3);
    v15 = v12;
    goto LABEL_10;
  }

  v17 = v16;
  FMIPUnknownItem.rangeDistanceInMeters.getter();
  v19 = v18;
  v20 = FMIPLocation.location.getter();
  [v20 distanceFromLocation:v17];
  v22 = v21;
  [v20 horizontalAccuracy];
  v24 = v23;
  [v17 horizontalAccuracy];
  v26 = v25;

  (*(v4 + 8))(v6, v3);
  sub_100012DF0(v12, &unk_1006C0220);
  return v22 / sqrt(v19 * v19 + v24 * v24 + v26 * v26) < 1.5;
}

uint64_t sub_1004F825C()
{
  v0 = type metadata accessor for FMIPProductType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  FMIPUnknownItem.productType.getter();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for FMIPProductType.b389(_:))
  {
    (*(v1 + 96))(v3, v0);
    sub_100012DF0(v3, &qword_1006B1AA8);
    return 1;
  }

  if (v4 == enum case for FMIPProductType.zeus(_:))
  {
    (*(v1 + 96))(v3, v0);
    v6 = type metadata accessor for FMIPZeusProductInformation();
    (*(*(v6 - 8) + 8))(v3, v6);
    return 1;
  }

  if (v4 != enum case for FMIPProductType.hawkeye(_:))
  {
    (*(v1 + 8))(v3, v0);
    return 0;
  }

  (*(v1 + 96))(v3, v0);
  v7 = FMIPUnknownItem.unknownBeacon.getter();
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v11 = FMIPUnknownItem.unknownBeacon.getter();
    if (!v11 || (v12 = v11, v8 = [v11 metadata], v12, !v8))
    {
      v10 = 0;
      goto LABEL_13;
    }
  }

  v9 = [v8 capabilities];

  v10 = v9 & 1;
LABEL_13:
  sub_100012DF0(v3, &qword_1006C39A0);
  return v10;
}

uint64_t sub_1004F84A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v23[-v10];
  v12 = type metadata accessor for FMIPBeaconShare();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v23[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = 0;
  v24 = *(*(a3 + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_isUnderAgeUser);
  v17 = *(a2 + 16);
  v27 = a2;
  v28 = v17;
  v18 = (v6 + 8);
  v25 = v13 + 8;
  v26 = v13 + 16;
  while (v28 != v16)
  {
    (*(v13 + 16))(v15, v27 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v16++, v12);
    FMIPBeaconShare.beaconIdentifier.getter();
    FMIPUnknownItem.identifier.getter();
    v19 = static UUID.== infix(_:_:)();
    v20 = *v18;
    (*v18)(v9, v5);
    v20(v11, v5);
    (*(v13 + 8))(v15, v12);
    if (v19)
    {
      v21 = 0;
      return v21 & 1;
    }
  }

  v21 = FMIPUnknownItem.isRequestable.getter() & (v24 ^ 1);
  return v21 & 1;
}

uint64_t sub_1004F8710(uint64_t a1, int a2, uint64_t a3, char a4, unint64_t a5)
{
  LOBYTE(v6) = a4;
  v136 = a3;
  LODWORD(v143) = a2;
  v8 = type metadata accessor for FMIPUnknownItemAlertState();
  v134 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v138 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v137 = &v133 - v11;
  v12 = type metadata accessor for FMIPProductType();
  v144 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v135 = &v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v133 - v15;
  v17 = _swiftEmptySetSingleton;
  v149 = _swiftEmptySetSingleton;
  My = type metadata accessor for Feature.FindMy();
  v146 = My;
  v141 = sub_1004FA2B8(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
  v147 = v141;
  v19 = sub_100008FC0(v145);
  v20 = *(My - 8);
  v21 = *(v20 + 104);
  v139 = v20 + 104;
  v140 = v21;
  v21(v19, enum case for Feature.FindMy.utPrecisionFinding(_:), My);
  v22 = isFeatureEnabled(_:)();
  sub_100006060(v145);
  v23 = _swiftEmptySetSingleton;
  v142 = v12;
  if ((v22 & 1) == 0)
  {
    goto LABEL_6;
  }

  v133 = a5;
  sub_1004F7F0C(a1, a5);
  if (sub_100168844(a1, v6 & 1) & 1) == 0 || (FMIPUnknownItem.isAppleAudioAccessory.getter())
  {
    v23 = _swiftEmptySetSingleton;
    while (1)
    {
LABEL_5:
      a5 = v133;
LABEL_6:
      sub_1004F7F0C(a1, a5);
      if ((sub_100168844(a1, v6 & 1) & 0x100) != 0)
      {
        FMIPUnknownItem.productType.getter();
        v24 = FMIPProductType.isAccessory.getter();
        (*(v144 + 8))(v16, v12);
        v25 = sub_1004F7F0C(a1, a5);
        v26 = sub_100168BDC(a1, v6 & 1, v24 & 1, a5, v25);
        if (v143 & 1) != 0 && (v26)
        {
          Hasher.init(_seed:)();
          Hasher._combine(_:)(1uLL);
          v27 = Hasher._finalize()();
          v28 = -1 << *(v17 + 32);
          v6 = v27 & ~v28;
          if ((*(v17 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v6))
          {
            v29 = ~v28;
            while (*(v17[6] + v6) != 3)
            {
              v6 = (v6 + 1) & v29;
              if (((*(v17 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v6) & 1) == 0)
              {
                goto LABEL_13;
              }
            }
          }

          else
          {
LABEL_13:
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v148 = v17;
            if (v17[3] <= v17[2])
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                sub_100255194();
              }

              else
              {
                sub_100258700();
              }

              v17 = v148;
              Hasher.init(_seed:)();
              Hasher._combine(_:)(1uLL);
              v39 = Hasher._finalize()();
              v40 = -1 << *(v17 + 32);
              v6 = v39 & ~v40;
              if ((*(v17 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v6))
              {
                v41 = ~v40;
                while (*(v17[6] + v6) != 3)
                {
                  v6 = (v6 + 1) & v41;
                  if (((*(v17 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v6) & 1) == 0)
                  {
                    goto LABEL_33;
                  }
                }

                goto LABEL_187;
              }
            }

            else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_100257F64();
              v17 = v148;
            }

LABEL_33:
            *(v17 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v6;
            *(v17[6] + v6) = 3;
            v42 = v17[2];
            v43 = __OFADD__(v42, 1);
            v44 = v42 + 1;
            if (v43)
            {
              goto LABEL_181;
            }

            v17[2] = v44;
          }
        }

        Hasher.init(_seed:)();
        Hasher._combine(_:)(1uLL);
        v45 = Hasher._finalize()();
        v46 = -1 << *(v23 + 32);
        v6 = v45 & ~v46;
        if ((*(v23 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          v47 = ~v46;
          while (*(*(v23 + 48) + v6) != 3)
          {
            v6 = (v6 + 1) & v47;
            if (((*(v23 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
            {
              goto LABEL_39;
            }
          }
        }

        else
        {
LABEL_39:
          v23 = v149;
          v48 = swift_isUniquelyReferenced_nonNull_native();
          v148 = v23;
          if (*(v23 + 24) <= *(v23 + 16))
          {
            if (v48)
            {
              sub_100255194();
            }

            else
            {
              sub_100258700();
            }

            v23 = v148;
            Hasher.init(_seed:)();
            Hasher._combine(_:)(1uLL);
            v49 = Hasher._finalize()();
            v50 = -1 << *(v23 + 32);
            v6 = v49 & ~v50;
            if ((*(v23 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
            {
              v51 = ~v50;
              while (*(*(v23 + 48) + v6) != 3)
              {
                v6 = (v6 + 1) & v51;
                if (((*(v23 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
                {
                  goto LABEL_49;
                }
              }

              goto LABEL_187;
            }
          }

          else if ((v48 & 1) == 0)
          {
            sub_100257F64();
            v23 = v148;
          }

LABEL_49:
          *(v23 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v6;
          *(*(v23 + 48) + v6) = 3;
          v52 = *(v23 + 16);
          v43 = __OFADD__(v52, 1);
          v53 = v52 + 1;
          if (v43)
          {
            __break(1u);
LABEL_179:
            __break(1u);
            goto LABEL_180;
          }

          *(v23 + 16) = v53;
          v149 = v23;
        }
      }

      if (sub_1004F825C())
      {
        Hasher.init(_seed:)();
        Hasher._combine(_:)(2uLL);
        v54 = Hasher._finalize()();
        v55 = -1 << *(v23 + 32);
        v6 = v54 & ~v55;
        if ((*(v23 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          v56 = ~v55;
          while (*(*(v23 + 48) + v6) != 4)
          {
            v6 = (v6 + 1) & v56;
            if (((*(v23 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
            {
              goto LABEL_56;
            }
          }
        }

        else
        {
LABEL_56:
          v23 = v149;
          v57 = swift_isUniquelyReferenced_nonNull_native();
          v148 = v23;
          if (*(v23 + 24) <= *(v23 + 16))
          {
            if (v57)
            {
              sub_100255194();
            }

            else
            {
              sub_100258700();
            }

            v23 = v148;
            Hasher.init(_seed:)();
            Hasher._combine(_:)(2uLL);
            v58 = Hasher._finalize()();
            v59 = -1 << *(v23 + 32);
            v6 = v58 & ~v59;
            if ((*(v23 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
            {
              v60 = ~v59;
              while (*(*(v23 + 48) + v6) != 4)
              {
                v6 = (v6 + 1) & v60;
                if (((*(v23 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
                {
                  goto LABEL_66;
                }
              }

              goto LABEL_187;
            }
          }

          else if ((v57 & 1) == 0)
          {
            sub_100257F64();
            v23 = v148;
          }

LABEL_66:
          *(v23 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v6;
          *(*(v23 + 48) + v6) = 4;
          v61 = *(v23 + 16);
          v43 = __OFADD__(v61, 1);
          v62 = v61 + 1;
          if (v43)
          {
            goto LABEL_179;
          }

          *(v23 + 16) = v62;
          v149 = v23;
        }

        if (v143)
        {
          Hasher.init(_seed:)();
          Hasher._combine(_:)(2uLL);
          v63 = Hasher._finalize()();
          v64 = -1 << *(v17 + 32);
          v6 = v63 & ~v64;
          if ((*(v17 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v6))
          {
            v65 = ~v64;
            while (*(v17[6] + v6) != 4)
            {
              v6 = (v6 + 1) & v65;
              if (((*(v17 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v6) & 1) == 0)
              {
                goto LABEL_73;
              }
            }
          }

          else
          {
LABEL_73:
            v66 = swift_isUniquelyReferenced_nonNull_native();
            v148 = v17;
            if (v17[3] <= v17[2])
            {
              if (v66)
              {
                sub_100255194();
              }

              else
              {
                sub_100258700();
              }

              v17 = v148;
              Hasher.init(_seed:)();
              Hasher._combine(_:)(2uLL);
              v67 = Hasher._finalize()();
              v68 = -1 << *(v17 + 32);
              v6 = v67 & ~v68;
              if ((*(v17 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v6))
              {
                v69 = ~v68;
                while (*(v17[6] + v6) != 4)
                {
                  v6 = (v6 + 1) & v69;
                  if (((*(v17 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v6) & 1) == 0)
                  {
                    goto LABEL_83;
                  }
                }

                goto LABEL_187;
              }
            }

            else if ((v66 & 1) == 0)
            {
              sub_100257F64();
              v17 = v148;
            }

LABEL_83:
            *(v17 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v6;
            *(v17[6] + v6) = 4;
            v70 = v17[2];
            v43 = __OFADD__(v70, 1);
            v71 = v70 + 1;
            if (v43)
            {
              goto LABEL_182;
            }

            v17[2] = v71;
          }
        }
      }

      v72 = v140;
      LOBYTE(v6) = v139;
      v146 = My;
      v147 = v141;
      v73 = sub_100008FC0(v145);
      v72(v73, enum case for Feature.FindMy.itemSharing(_:), My);
      LOBYTE(v72) = isFeatureEnabled(_:)();
      sub_100006060(v145);
      My = v138;
      if ((v72 & 1) == 0)
      {
        goto LABEL_104;
      }

      FMIPUnknownItem.handle.getter();
      if (!v74)
      {
        goto LABEL_104;
      }

      if ((FMIPUnknownItem.isRequestable.getter() & 1) == 0)
      {
        goto LABEL_104;
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(6uLL);
      v75 = Hasher._finalize()();
      v76 = -1 << *(v23 + 32);
      v6 = v75 & ~v76;
      if ((*(v23 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
      {
        v77 = ~v76;
        while (*(*(v23 + 48) + v6) != 7)
        {
          v6 = (v6 + 1) & v77;
          if (((*(v23 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
          {
            goto LABEL_92;
          }
        }

LABEL_104:
        if ((sub_1004F84A0(a1, v136, a5) & 1) == 0)
        {
          v86 = v137;
          goto LABEL_122;
        }

        Hasher.init(_seed:)();
        Hasher._combine(_:)(6uLL);
        v84 = Hasher._finalize()();
        v85 = -1 << *(v17 + 32);
        v23 = v84 & ~v85;
        v86 = v137;
        if ((*(v17 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v23))
        {
          v87 = ~v85;
          while (*(v17[6] + v23) != 7)
          {
            v23 = (v23 + 1) & v87;
            if (((*(v17 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v23) & 1) == 0)
            {
              goto LABEL_109;
            }
          }

          goto LABEL_122;
        }

LABEL_109:
        v88 = swift_isUniquelyReferenced_nonNull_native();
        v148 = v17;
        if (v17[3] <= v17[2])
        {
          if (v88)
          {
            sub_100255194();
          }

          else
          {
            sub_100258700();
          }

          v17 = v148;
          Hasher.init(_seed:)();
          Hasher._combine(_:)(6uLL);
          v89 = Hasher._finalize()();
          v90 = -1 << *(v17 + 32);
          v23 = v89 & ~v90;
          if ((*(v17 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v23))
          {
            v91 = ~v90;
            while (*(v17[6] + v23) != 7)
            {
              v23 = (v23 + 1) & v91;
              if (((*(v17 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v23) & 1) == 0)
              {
                goto LABEL_120;
              }
            }

            goto LABEL_187;
          }
        }

        else if ((v88 & 1) == 0)
        {
          sub_100257F64();
          v17 = v148;
        }

LABEL_120:
        *(v17 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v23;
        *(v17[6] + v23) = 7;
        v92 = v17[2];
        v43 = __OFADD__(v92, 1);
        v93 = v92 + 1;
        if (!v43)
        {
          v17[2] = v93;
LABEL_122:
          FMIPUnknownItem.alertState.getter();
          v94 = v134;
          v95 = *(v134 + 104);
          v95(My, enum case for FMIPUnknownItemAlertState.triggered(_:), v8);
          sub_1004FA2B8(&unk_1006AF8D0, &type metadata accessor for FMIPUnknownItemAlertState);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          v96 = *(v94 + 8);
          v96(My, v8);
          v96(v86, v8);
          if (v145[0] == v148 || (v143 = v17, FMIPUnknownItem.alertState.getter(), v95(My, enum case for FMIPUnknownItemAlertState.cleared(_:), v8), dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), v96(My, v8), v96(v86, v8), v17 = v143, v145[0] == v148))
          {
            FMIPUnknownItem.handle.getter();
            v98 = v97;
            if (v97)
            {
            }

            Hasher.init(_seed:)();
            Hasher._combine(_:)(3uLL);
            Hasher._combine(_:)(v98 != 0);
            v99 = Hasher._finalize()();
            v100 = -1 << *(v17 + 32);
            v101 = v99 & ~v100;
            if ((*(v17 + ((v101 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v101))
            {
              v102 = ~v100;
              v103 = v142;
              while (1)
              {
                v104 = *(v17[6] + v101);
                if ((v104 - 2) >= 6 && (((v98 != 0) ^ v104) & 1) == 0)
                {
                  break;
                }

                v101 = (v101 + 1) & v102;
                if (((*(v17 + ((v101 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v101) & 1) == 0)
                {
                  goto LABEL_133;
                }
              }
            }

            else
            {
              v103 = v142;
LABEL_133:
              v105 = swift_isUniquelyReferenced_nonNull_native();
              v145[0] = v17;
              sub_100256BE8(v98 != 0, v101, v105);
              v17 = v145[0];
            }

            sub_100253BFC(v145, v98 != 0);
          }

          else
          {
            v103 = v142;
          }

          v106 = v135;
          FMIPUnknownItem.productType.getter();
          v107 = FMIPProductType.isAccessory.getter();
          (*(v144 + 8))(v106, v103);
          if (v107)
          {
            goto LABEL_140;
          }

          if (qword_1006AECD0 != -1)
          {
            swift_once();
          }

          if (byte_1006D4AD3 == 1)
          {
LABEL_140:
            Hasher.init(_seed:)();
            Hasher._combine(_:)(4uLL);
            v108 = Hasher._finalize()();
            v109 = -1 << *(v17 + 32);
            v110 = v108 & ~v109;
            if ((*(v17 + ((v110 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v110))
            {
              v111 = ~v109;
              while (*(v17[6] + v110) != 5)
              {
                v110 = (v110 + 1) & v111;
                if (((*(v17 + ((v110 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v110) & 1) == 0)
                {
                  goto LABEL_144;
                }
              }
            }

            else
            {
LABEL_144:
              v112 = swift_isUniquelyReferenced_nonNull_native();
              v145[0] = v17;
              sub_100256BE8(5, v110, v112);
              v17 = v145[0];
            }

            sub_100253BFC(v145, 5);
          }

          Hasher.init(_seed:)();
          Hasher._combine(_:)(5uLL);
          v113 = Hasher._finalize()();
          v114 = -1 << *(v17 + 32);
          v115 = v113 & ~v114;
          if ((*(v17 + ((v115 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v115))
          {
            v116 = ~v114;
            while (*(v17[6] + v115) != 6)
            {
              v115 = (v115 + 1) & v116;
              if (((*(v17 + ((v115 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v115) & 1) == 0)
              {
                goto LABEL_150;
              }
            }
          }

          else
          {
LABEL_150:
            v117 = swift_isUniquelyReferenced_nonNull_native();
            v145[0] = v17;
            sub_100256BE8(6, v115, v117);
            v17 = v145[0];
          }

          sub_100253BFC(v145, 6);
          return v17;
        }

LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
        goto LABEL_183;
      }

LABEL_92:
      v23 = v149;
      v78 = swift_isUniquelyReferenced_nonNull_native();
      v148 = v23;
      if (*(v23 + 24) <= *(v23 + 16))
      {
        if (v78)
        {
          sub_100255194();
        }

        else
        {
          sub_100258700();
        }

        v23 = v148;
        Hasher.init(_seed:)();
        Hasher._combine(_:)(6uLL);
        v79 = Hasher._finalize()();
        v80 = -1 << *(v23 + 32);
        v6 = v79 & ~v80;
        if ((*(v23 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          v81 = ~v80;
          while (*(*(v23 + 48) + v6) != 7)
          {
            v6 = (v6 + 1) & v81;
            if (((*(v23 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
            {
              goto LABEL_102;
            }
          }

          goto LABEL_187;
        }
      }

      else if ((v78 & 1) == 0)
      {
        sub_100257F64();
        v23 = v148;
      }

LABEL_102:
      *(v23 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v6;
      *(*(v23 + 48) + v6) = 7;
      v82 = *(v23 + 16);
      v43 = __OFADD__(v82, 1);
      v83 = v82 + 1;
      if (!v43)
      {
        *(v23 + 16) = v83;
        v149 = v23;
        goto LABEL_104;
      }

LABEL_183:
      __break(1u);
      while (1)
      {
        __break(1u);
        do
        {
          __break(1u);
LABEL_186:
          sub_100257F64();
          v17 = v148;
LABEL_159:
          *(v17 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << a5;
          *(v17[6] + a5) = 2;
          v122 = v17[2];
          v43 = __OFADD__(v122, 1);
          v123 = v122 + 1;
        }

        while (v43);
        v17[2] = v123;
LABEL_161:
        Hasher.init(_seed:)();
        Hasher._combine(_:)(0);
        v124 = Hasher._finalize()();
        v125 = -1 << *(v23 + 32);
        a5 = v124 & ~v125;
        if ((*(v23 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> a5))
        {
          break;
        }

LABEL_165:
        v23 = v149;
        v127 = swift_isUniquelyReferenced_nonNull_native();
        v148 = v23;
        if (*(v23 + 24) <= *(v23 + 16))
        {
          if (v127)
          {
            sub_100255194();
          }

          else
          {
            sub_100258700();
          }

          v23 = v148;
          Hasher.init(_seed:)();
          Hasher._combine(_:)(0);
          v128 = Hasher._finalize()();
          v129 = -1 << *(v23 + 32);
          a5 = v128 & ~v129;
          if ((*(v23 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
          {
            v130 = ~v129;
            while (*(*(v23 + 48) + a5) != 2)
            {
              a5 = (a5 + 1) & v130;
              if (((*(v23 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
              {
                goto LABEL_176;
              }
            }

            goto LABEL_187;
          }
        }

        else if ((v127 & 1) == 0)
        {
          sub_100257F64();
          v23 = v148;
        }

LABEL_176:
        *(v23 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << a5;
        *(*(v23 + 48) + a5) = 2;
        v131 = *(v23 + 16);
        v43 = __OFADD__(v131, 1);
        v132 = v131 + 1;
        if (!v43)
        {
          *(v23 + 16) = v132;
          v149 = v23;
          v12 = v142;
          goto LABEL_5;
        }
      }

      v126 = ~v125;
      while (*(*(v23 + 48) + a5) != 2)
      {
        a5 = (a5 + 1) & v126;
        if (((*(v23 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> a5) & 1) == 0)
        {
          goto LABEL_165;
        }
      }

      v12 = v142;
    }
  }

  FMIPUnknownItem.productType.getter();
  v31 = FMIPProductType.isAccessory.getter();
  (*(v144 + 8))(v16, v12);
  v32 = v133;
  v33 = sub_1004F7F0C(a1, v133);
  v34 = sub_100168BDC(a1, v6 & 1, v31 & 1, v32, v33);
  v23 = _swiftEmptySetSingleton;
  if ((v143 & 1) == 0)
  {
LABEL_27:
    v17 = _swiftEmptySetSingleton;
    goto LABEL_161;
  }

  v17 = _swiftEmptySetSingleton;
  if ((v34 & 1) == 0)
  {
    goto LABEL_161;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  v35 = Hasher._finalize()();
  v36 = -1 << LOBYTE(_swiftEmptySetSingleton[4]);
  a5 = v35 & ~v36;
  if ((*(&_swiftEmptySetSingleton[7] + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v37 = ~v36;
    while (*(_swiftEmptySetSingleton[6] + a5) != 2)
    {
      a5 = (a5 + 1) & v37;
      if (((*(&_swiftEmptySetSingleton[7] + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_27;
  }

LABEL_22:
  v38 = swift_isUniquelyReferenced_nonNull_native();
  v148 = _swiftEmptySetSingleton;
  if (_swiftEmptySetSingleton[3] > _swiftEmptySetSingleton[2])
  {
    if ((v38 & 1) == 0)
    {
      goto LABEL_186;
    }

    v17 = _swiftEmptySetSingleton;
    goto LABEL_159;
  }

  if (v38)
  {
    sub_100255194();
  }

  else
  {
    sub_100258700();
  }

  v17 = v148;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  v119 = Hasher._finalize()();
  v120 = -1 << *(v17 + 32);
  a5 = v119 & ~v120;
  if (((*(v17 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> a5) & 1) == 0)
  {
    goto LABEL_159;
  }

  v121 = ~v120;
  while (*(v17[6] + a5) != 2)
  {
    a5 = (a5 + 1) & v121;
    if (((*(v17 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> a5) & 1) == 0)
    {
      goto LABEL_159;
    }
  }

LABEL_187:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1004F9BA0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Calendar();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  v7 = Calendar.isDateInToday(_:)();
  v40 = *(v4 + 8);
  v40(v6, v3);
  v44 = a2;
  if (v7)
  {
    if (qword_1006AEDA8 != -1)
    {
      swift_once();
    }

    v8 = qword_1006C31A0;
    v9.super.isa = Date._bridgeToObjectiveC()().super.isa;
    v10 = [v8 stringFromDate:v9.super.isa];
    v11 = "AST_SEEN_SUBTITLE";
    v12 = 0xD000000000000022;
  }

  else
  {
    v13 = sub_100455290();
    v9.super.isa = Date._bridgeToObjectiveC()().super.isa;
    v10 = [v13 stringFromDate:v9.super.isa];

    v11 = "ACCESSORY_FOLLOWING_FOOTER";
    v12 = 0xD000000000000027;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = [objc_opt_self() mainBundle];
  v42 = 0x8000000100579A00;
  v45._object = 0x8000000100579A00;
  v18._object = (v11 | 0x8000000000000000);
  v43 = "CLEAR_TAGS_MESSAGE";
  v19.value._object = 0x80000001005799E0;
  v45._countAndFlagsBits = 0xD000000000000018;
  v18._countAndFlagsBits = v12;
  v19.value._countAndFlagsBits = 0xD000000000000013;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, v17, v20, v45);

  sub_10007EBC0(&unk_1006B20B0);
  v21 = swift_allocObject();
  v41 = xmmword_100552220;
  *(v21 + 16) = xmmword_100552220;
  *(v21 + 56) = &type metadata for String;
  v22 = sub_10008EE84();
  *(v21 + 64) = v22;
  *(v21 + 32) = v14;
  *(v21 + 40) = v16;
  v23 = String.init(format:_:)();

  static Calendar.current.getter();
  LOBYTE(v14) = Calendar.isDateInToday(_:)();
  v40(v6, v3);
  if (v14)
  {
    if (qword_1006AEDA8 != -1)
    {
      swift_once();
    }

    v24 = qword_1006C31A0;
    v25.super.isa = Date._bridgeToObjectiveC()().super.isa;
    v26 = [v24 stringFromDate:v25.super.isa];
    v27 = "AST_SEEN_AGED_SUBTITLE";
    v28 = 0xD000000000000021;
  }

  else
  {
    v29 = sub_100455290();
    v25.super.isa = Date._bridgeToObjectiveC()().super.isa;
    v26 = [v29 stringFromDate:v25.super.isa];

    v27 = "IRST_SEEN_AGED_SUBTITLE";
    v28 = 0xD000000000000026;
  }

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v33 = [objc_opt_self() mainBundle];
  v46._object = v42;
  v34._object = (v27 | 0x8000000000000000);
  v35.value._object = (v43 | 0x8000000000000000);
  v46._countAndFlagsBits = 0xD000000000000018;
  v34._countAndFlagsBits = v28;
  v35.value._countAndFlagsBits = 0xD000000000000013;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v34, v35, v33, v36, v46);

  sub_10007EBC0(&unk_1006B20B0);
  v37 = swift_allocObject();
  *(v37 + 16) = v41;
  *(v37 + 56) = &type metadata for String;
  *(v37 + 64) = v22;
  *(v37 + 32) = v30;
  *(v37 + 40) = v32;
  String.init(format:_:)();

  return v23;
}

uint64_t sub_1004FA070()
{
  v0 = type metadata accessor for FMIPItemState();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v12 - v5;
  FMIPUnknownItem.state.getter();
  static FMIPItemState.soundPlaying.getter();
  sub_1004FA2B8(&qword_1006C0350, &type metadata accessor for FMIPItemState);
  v7 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  if (v7)
  {
    v9 = 3;
  }

  else
  {
    v9 = 1;
  }

  FMIPUnknownItem.state.getter();
  static FMIPItemState.soundQueued.getter();
  v10 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v8(v4, v0);
  v8(v6, v0);
  if (v10)
  {
    return v9 | 0x400;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_1004FA248(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&unk_1006C0220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004FA2B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004FA30C(uint64_t a1, int a2)
{
  v64 = a2;
  v2 = type metadata accessor for FMIPItemState();
  v63 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v62 = &v54 - v6;
  v7 = sub_10007EBC0(&qword_1006BB1E0);
  v8 = __chkstk_darwin(v7 - 8);
  v61 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v54 - v11;
  __chkstk_darwin(v10);
  v14 = &v54 - v13;
  v15 = sub_10007EBC0(&unk_1006C0220);
  __chkstk_darwin(v15 - 8);
  v17 = &v54 - v16;
  FMIPItem.location.getter();
  v18 = type metadata accessor for FMIPLocation();
  v19 = (*(*(v18 - 8) + 48))(v17, 1, v18);
  sub_100012DF0(v17, &unk_1006C0220);
  v20 = objc_opt_self();
  v21 = [v20 mainBundle];
  if (v19 == 1)
  {
    v22 = 0xD000000000000011;
    v53 = 0x8000000100579A00;
    v23 = 0x80000001005922A0;
    v24 = 0x80000001005799E0;
    v25 = 0xD000000000000018;
LABEL_3:
    v26 = 0xD000000000000013;
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v22, *(&v24 - 1), v21, v27, *&v25)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  v55 = v20;
  v56 = 0x8000000100579A00;
  v59 = v2;
  v60 = v5;
  v66._object = 0x8000000100579A00;
  v30._countAndFlagsBits = 0xD000000000000019;
  v30._object = 0x8000000100592340;
  v57 = "CLEAR_TAGS_MESSAGE";
  v31.value._object = 0x80000001005799E0;
  v66._countAndFlagsBits = 0xD000000000000018;
  v31.value._countAndFlagsBits = 0xD000000000000013;
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  v58 = NSLocalizedString(_:tableName:bundle:value:comment:)(v30, v31, v21, v32, v66)._countAndFlagsBits;

  FMIPItem.address.getter();
  v33 = type metadata accessor for FMIPAddress();
  v34 = *(v33 - 8);
  v35 = *(v34 + 48);
  if (v35(v14, 1, v33) == 1)
  {
    sub_100012DF0(v14, &qword_1006BB1E0);
  }

  else
  {
    v36 = FMIPAddress.mapItemFormattedAddress.getter();
    v38 = v37;
    (*(v34 + 8))(v14, v33);
    if (v38)
    {

      countAndFlagsBits = v36;
      v39 = v60;
      if ((v64 & 1) == 0)
      {
        return countAndFlagsBits;
      }

      goto LABEL_21;
    }
  }

  FMIPItem.address.getter();
  if (v35(v12, 1, v33) == 1)
  {
    sub_100012DF0(v12, &qword_1006BB1E0);
    v39 = v60;
  }

  else
  {
    v40 = FMIPAddress.formattedAddressLines.getter();
    (*(v34 + 8))(v12, v33);
    v39 = v60;
    if (v40)
    {

      v65 = v40;
      v41 = [v55 mainBundle];
      v67._object = v56;
      v42._countAndFlagsBits = 0xD000000000000017;
      v42._object = 0x800000010059CFF0;
      v43.value._object = (v57 | 0x8000000000000000);
      v67._countAndFlagsBits = 0xD000000000000018;
      v43.value._countAndFlagsBits = 0xD000000000000013;
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v42, v43, v41, v44, v67);

      sub_10007EBC0(&qword_1006C0C10);
      sub_1001500AC();
      countAndFlagsBits = BidirectionalCollection<>.joined(separator:)();

      if ((v64 & 1) == 0)
      {
        return countAndFlagsBits;
      }

      goto LABEL_21;
    }
  }

  v45 = v61;
  FMIPItem.address.getter();
  if (v35(v45, 1, v33) == 1)
  {
    sub_100012DF0(v45, &qword_1006BB1E0);
    countAndFlagsBits = v58;
    if ((v64 & 1) == 0)
    {
      return countAndFlagsBits;
    }

    goto LABEL_21;
  }

  v46 = FMIPAddress.displayAddress.getter();
  v48 = v47;
  (*(v34 + 8))(v45, v33);
  countAndFlagsBits = v58;
  if (v48)
  {

    countAndFlagsBits = v46;
  }

  if (v64)
  {
LABEL_21:
    v49 = v62;
    FMIPItem.state.getter();
    static FMIPItemState.isBTConnected.getter();
    sub_1004FBB14();
    v50 = v59;
    v51 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v52 = *(v63 + 8);
    v52(v39, v50);
    v52(v49, v50);
    if ((v51 & 1) == 0)
    {
      return countAndFlagsBits;
    }

    v21 = [v55 mainBundle];
    v53 = v56;
    v22 = 0xD00000000000001CLL;
    v23 = 0x800000010057DF50;
    v24 = v57 | 0x8000000000000000;
    v25 = 0xD000000000000018;
    goto LABEL_3;
  }

  return countAndFlagsBits;
}

uint64_t sub_1004FA9E0(uint64_t a1, int a2)
{
  v119 = a2;
  v3 = type metadata accessor for PublishedLocation.Label.Length();
  v106 = *(v3 - 8);
  v107 = v3;
  __chkstk_darwin(v3);
  v105 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PublishedLocation.Label.DetailLevel();
  v110 = *(v5 - 8);
  v111 = v5;
  __chkstk_darwin(v5);
  v109 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PublishedLocation.Label();
  v115 = *(v7 - 8);
  v116 = v7;
  __chkstk_darwin(v7);
  v114 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMIPItemState();
  countAndFlagsBits = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v100 - v13;
  v15 = sub_10007EBC0(&qword_1006BB1E0);
  v16 = __chkstk_darwin(v15 - 8);
  v120 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v118 = &v100 - v19;
  v20 = __chkstk_darwin(v18);
  v113 = &v100 - v21;
  v22 = __chkstk_darwin(v20);
  v112 = &v100 - v23;
  v24 = __chkstk_darwin(v22);
  v117 = &v100 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v100 - v27;
  __chkstk_darwin(v26);
  v30 = &v100 - v29;
  v31 = sub_10007EBC0(&unk_1006C0220);
  __chkstk_darwin(v31 - 8);
  v33 = &v100 - v32;
  FMIPItem.location.getter();
  v34 = type metadata accessor for FMIPLocation();
  v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
  sub_100012DF0(v33, &unk_1006C0220);
  if (v35 == 1)
  {
    v36 = [objc_opt_self() mainBundle];
    v37._countAndFlagsBits = 0xD000000000000011;
    v121._object = 0x8000000100579A00;
    v37._object = 0x80000001005922A0;
    v38.value._object = 0x80000001005799E0;
    v121._countAndFlagsBits = 0xD000000000000018;
    v38.value._countAndFlagsBits = 0xD000000000000013;
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v37, v38, v36, v39, v121);

    return 0;
  }

  FMIPItem.address.getter();
  v104 = a1;
  if (v119)
  {
    FMIPItem.state.getter();
    static FMIPItemState.isBTConnected.getter();
    sub_1004FBB14();
    v40 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v41 = *(countAndFlagsBits + 8);
    v41(v12, v9);
    v41(v14, v9);
    v42 = v112;
    if (v40)
    {
      v43 = [objc_opt_self() mainBundle];
      v122._object = 0x8000000100579A00;
      v44._countAndFlagsBits = 0xD00000000000001CLL;
      v44._object = 0x800000010057DF50;
      v45.value._object = 0x80000001005799E0;
      v122._countAndFlagsBits = 0xD000000000000018;
      v45.value._countAndFlagsBits = 0xD000000000000013;
      v46._countAndFlagsBits = 0;
      v46._object = 0xE000000000000000;
      v47 = NSLocalizedString(_:tableName:bundle:value:comment:)(v44, v45, v43, v46, v122);
      countAndFlagsBits = v47._countAndFlagsBits;
      object = v47._object;
    }

    else
    {
      countAndFlagsBits = 0;
      object = 0;
    }

    v48 = v118;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0;
    v48 = v118;
    v42 = v112;
  }

  v49 = v117;
  sub_1004FBAA4(v30, v28);
  v50 = type metadata accessor for FMIPAddress();
  v51 = *(v50 - 8);
  v52 = *(v51 + 48);
  if (v52(v28, 1, v50) == 1)
  {
    v53 = v51;
    sub_100012DF0(v28, &qword_1006BB1E0);
    v112 = 0;
    v102 = 0;
  }

  else
  {
    FMIPAddress.coarseAddressModern.getter();
    v55 = v54;
    (*(v51 + 8))(v28, v50);
    v53 = v51;
    if (v55)
    {
      v112 = String.nilIfEmpty.getter();
      v102 = v56;
    }

    else
    {
      v112 = 0;
      v102 = 0;
    }

    v49 = v117;
    v48 = v118;
  }

  v57 = v113;
  sub_1004FBAA4(v30, v49);
  if (v52(v49, 1, v50) == 1)
  {
    sub_100012DF0(v49, &qword_1006BB1E0);
    v117 = 0;
    v113 = 0;
  }

  else
  {
    FMIPAddress.streetAddressModern.getter();
    v59 = v58;
    (*(v53 + 8))(v49, v50);
    if (v59)
    {
      v117 = String.nilIfEmpty.getter();
      v113 = v60;
    }

    else
    {
      v117 = 0;
      v113 = 0;
    }

    v48 = v118;
  }

  v61 = v53;
  sub_1004FBAA4(v30, v42);
  v62 = v52(v42, 1, v50);
  v63 = v120;
  if (v62 == 1)
  {
    sub_100012DF0(v42, &qword_1006BB1E0);
    v118 = 0;
    v101 = 0;
  }

  else
  {
    FMIPAddress.smallAddressModern.getter();
    v65 = v64;
    (*(v61 + 8))(v42, v50);
    if (v65)
    {
      v118 = String.nilIfEmpty.getter();
      v101 = v66;
    }

    else
    {
      v118 = 0;
      v101 = 0;
    }

    v63 = v120;
  }

  sub_1004FBAA4(v30, v57);
  if (v52(v57, 1, v50) == 1)
  {
    sub_100012DF0(v57, &qword_1006BB1E0);
    v100 = 0;
  }

  else
  {
    FMIPAddress.mediumAddressModern.getter();
    v68 = v67;
    (*(v61 + 8))(v57, v50);
    if (v68)
    {
      v100 = String.nilIfEmpty.getter();
    }

    else
    {
      v100 = 0;
    }

    v63 = v120;
  }

  sub_1004FBAA4(v30, v48);
  v69 = v30;
  if (v52(v48, 1, v50) == 1)
  {
    sub_100012DF0(v48, &qword_1006BB1E0);
  }

  else
  {
    FMIPAddress.largeAddressModern.getter();
    v71 = v70;
    (*(v61 + 8))(v48, v50);
    if (v71)
    {
      String.nilIfEmpty.getter();
    }

    v63 = v120;
  }

  sub_1004FBAA4(v30, v63);
  if (v52(v63, 1, v50) == 1)
  {
    sub_100012DF0(v63, &qword_1006BB1E0);
    v72 = v104;
    v73 = v119;
  }

  else
  {
    FMIPAddress.poiAddressModern.getter();
    v74 = v63;
    v76 = v75;
    (*(v61 + 8))(v74, v50);
    v72 = v104;
    v73 = v119;
    if (v76)
    {
      String.nilIfEmpty.getter();
    }
  }

  v78 = v114;
  PublishedLocation.Label.init(customLabel:coarseLabel:streetLabel:smallLabel:mediumLabel:largeLabel:poiLabel:)();
  if ((v73 & 1) == 0)
  {
    if (!v77)
    {
      v96 = v105;
      v95 = v106;
      v97 = v107;
      (*(v106 + 104))(v105, enum case for PublishedLocation.Label.Length.small(_:), v107);
      PublishedLocation.Label.combinedNoFallbackLabel(maxLength:)();
      v99 = v98;
      (*(v95 + 8))(v96, v97);
      if (!v99)
      {
        sub_1004FA30C(v72, 0);
      }
    }

    (*(v115 + 8))(v78, v116);
    sub_100012DF0(v30, &qword_1006BB1E0);
    return 0;
  }

  v80 = v109;
  v79 = v110;
  v81 = v111;
  (*(v110 + 104))(v109, enum case for PublishedLocation.Label.DetailLevel.detailed(_:), v111);
  v82 = PublishedLocation.Label.primaryAndSecondaryNoFallbackLabel(isInaccurate:detailLevel:)();
  v84 = v83;
  v86 = v85;
  v88 = v87;
  (*(v79 + 8))(v80, v81);
  if (v84)
  {
    if (v88)
    {
      v89 = [objc_opt_self() mainBundle];
      v123._object = 0x8000000100579A00;
      v90.value._object = 0x80000001005799E0;
      v123._countAndFlagsBits = 0xD000000000000018;
      v91._countAndFlagsBits = v82;
      v91._object = v84;
      v90.value._countAndFlagsBits = 0xD000000000000013;
      v92._countAndFlagsBits = 0;
      v92._object = 0xE000000000000000;
      v93 = NSLocalizedString(_:tableName:bundle:value:comment:)(v91, v90, v89, v92, v123)._countAndFlagsBits;

      (*(v115 + 8))(v78, v116);
      sub_100012DF0(v69, &qword_1006BB1E0);
      return v93;
    }

    v82 = v86;
    goto LABEL_54;
  }

  if (!v88)
  {
LABEL_54:
    sub_1004FA30C(v72, 1);
  }

  (*(v115 + 8))(v78, v116);
  sub_100012DF0(v69, &qword_1006BB1E0);
  return v82;
}

uint64_t sub_1004FB6E0(uint64_t a1, char a2)
{
  v3 = type metadata accessor for FormatStyleCapitalizationContext();
  v25 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Date();
  v6 = *(v26 - 8);
  __chkstk_darwin(v26);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007EBC0(&unk_1006C0220);
  __chkstk_darwin(v9 - 8);
  v11 = &v25 - v10;
  v12 = type metadata accessor for FMIPLocation();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  FMIPItem.location.getter();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100012DF0(v11, &unk_1006C0220);
    return 0;
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    if (a2)
    {
      v17 = FMIPLocation.location.getter();
      v18 = [v17 timestamp];

      static Date._unconditionallyBridgeFromObjectiveC(_:)();
      static FormatStyleCapitalizationContext.beginningOfSentence.getter();
      v19 = sub_1000CA838(v5);
      (*(v25 + 8))(v5, v3);
      (*(v6 + 8))(v8, v26);
    }

    else
    {
      v20 = sub_100455280();
      v21 = FMIPLocation.location.getter();
      v22 = [v21 timestamp];

      static Date._unconditionallyBridgeFromObjectiveC(_:)();
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v6 + 8))(v8, v26);
      v24 = [v20 stringFromDate:isa];

      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    (*(v13 + 8))(v15, v12);
    return v19;
  }
}

uint64_t sub_1004FBAA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006BB1E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1004FBB14()
{
  result = qword_1006C0350;
  if (!qword_1006C0350)
  {
    type metadata accessor for FMIPItemState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0350);
  }

  return result;
}

char *sub_1004FBB6C()
{
  v1 = v0;
  v2 = type metadata accessor for FMPlatterIcon();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v97 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v105 = &v96 - v6;
  v7 = sub_10007EBC0(&qword_1006B3298);
  v8 = __chkstk_darwin(v7 - 8);
  v103 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v106 = &v96 - v11;
  v12 = __chkstk_darwin(v10);
  countAndFlagsBits = &v96 - v13;
  __chkstk_darwin(v12);
  v15 = &v96 - v14;
  *&v0[OBJC_IVAR____TtC6FindMy20FMItemMarkAsLostView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v16 = *(v3 + 56);
  v107 = v2;
  v100 = v16;
  v101 = v3 + 56;
  v16(v15, 1, 1, v2);
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v17 = *&qword_1006D4798;
  v104 = type metadata accessor for FMMultiSettingsRowView();
  v18 = objc_allocWithZone(v104);
  v19 = &v18[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_identifier];
  *v19 = 0;
  v19[1] = 0;
  v20 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_backgroundView;
  *&v18[v20] = [objc_allocWithZone(UIView) init];
  v21 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView;
  *&v18[v21] = [objc_allocWithZone(UIImageView) init];
  v22 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_titleLabel;
  *&v18[v22] = [objc_allocWithZone(UILabel) init];
  v23 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_secondaryLabel;
  type metadata accessor for FMCopyableLabel();
  *&v18[v23] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v24 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_chevron;
  v25 = sub_1003DE824();
  v26 = [objc_allocWithZone(UIImageView) initWithImage:v25];

  *&v18[v24] = v26;
  v27 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_separator;
  *&v18[v27] = [objc_allocWithZone(UIView) init];
  v28 = &v18[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_title];
  *v28 = 0;
  v28[1] = 0;
  v29 = &v18[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitle];
  *v29 = 0;
  v29[1] = 0;
  v30 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitleColor;
  *&v18[v30] = [objc_opt_self() secondaryLabelColor];
  v18[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitleIsCopyToPasteboardEnabled] = 0;
  v18[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_separated] = 1;
  v18[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_isChevronVisible] = 0;
  *v28 = 0;
  v28[1] = 0;

  v18[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_isBoldTitle] = 0;
  *&v18[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_backgroundOffset] = v17;
  v18[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_fullWidthSeparator] = 0;
  v18[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_hiliteBackgroundWhenTapped] = 1;
  v113.receiver = v18;
  v113.super_class = v104;
  v31 = objc_msgSendSuper2(&v113, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v32 = countAndFlagsBits;
  sub_100007204(v15, countAndFlagsBits, &qword_1006B3298);
  v102 = *(v3 + 48);
  v33 = v102(v32, 1, v107);
  v104 = (v3 + 48);
  if (v33 == 1)
  {
    v34 = v31;
    sub_100012DF0(v32, &qword_1006B3298);
  }

  else
  {
    object = v15;
    v35 = v32;
    v36 = v105;
    sub_10015DA28(v35, v105);
    v37 = v31;
    v38 = sub_10043BBEC(v36, 0);
    v40 = v39;
    v41 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView;
    [*&v37[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView] setImage:v38];
    [*&v37[v41] setTintAdjustmentMode:1];
    v109 = &type metadata for SolariumFeatureFlag;
    v110 = sub_10000BD04();
    LOBYTE(v36) = isFeatureEnabled(_:)();
    sub_100006060(v108);
    if (v36)
    {
      [*&v37[v41] setTintColor:v40];

      sub_1000D59F8(v105);
    }

    else
    {
      sub_1000D59F8(v105);
    }

    v15 = object;
  }

  v42 = OBJC_IVAR____TtC6FindMy20FMItemMarkAsLostView_lostStatusRow;
  [v31 setUserInteractionEnabled:1];
  *(v31 + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_isChevronVisible) = 1;
  sub_1004EE178();
  sub_1004EE5A4(v17);

  sub_100012DF0(v15, &qword_1006B3298);
  *&v1[v42] = v31;
  v1[OBJC_IVAR____TtC6FindMy20FMItemMarkAsLostView_disabled] = 0;
  v43 = objc_opt_self();
  v44 = [v43 mainBundle];
  v114._object = 0x8000000100579A00;
  v45._countAndFlagsBits = 0xD000000000000022;
  v45._object = 0x800000010059D040;
  v46.value._object = 0x80000001005799E0;
  v114._countAndFlagsBits = 0xD000000000000018;
  v46.value._countAndFlagsBits = 0xD000000000000013;
  v47._countAndFlagsBits = 0;
  v47._object = 0xE000000000000000;
  v48 = NSLocalizedString(_:tableName:bundle:value:comment:)(v45, v46, v44, v47, v114);
  countAndFlagsBits = v48._countAndFlagsBits;
  object = v48._object;

  v50 = v106;
  v49 = v107;
  swift_storeEnumTagMultiPayload();
  v100(v50, 0, 1, v49);
  v51 = [v43 mainBundle];
  v115._object = 0x8000000100579A00;
  v52._countAndFlagsBits = 0xD00000000000001ELL;
  v52._object = 0x800000010059D070;
  v53.value._object = 0x80000001005799E0;
  v115._countAndFlagsBits = 0xD000000000000018;
  v53.value._countAndFlagsBits = 0xD000000000000013;
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  v105 = NSLocalizedString(_:tableName:bundle:value:comment:)(v52, v53, v51, v54, v115)._countAndFlagsBits;

  v55 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_titleLabel;
  *&v1[v55] = [objc_allocWithZone(UILabel) init];
  v56 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitleLabel;
  *&v1[v56] = [objc_allocWithZone(UILabel) init];
  v57 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_contentStackView;
  *&v1[v57] = [objc_allocWithZone(UIStackView) init];
  v58 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackView;
  *&v1[v58] = [objc_allocWithZone(UIStackView) init];
  v59 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_actionButton;
  v60 = objc_opt_self();
  *&v1[v59] = [v60 buttonWithType:1];
  v61 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_secondaryActionButton;
  *&v1[v61] = [v60 buttonWithType:1];
  v62 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_topSeparator;
  *&v1[v62] = [objc_allocWithZone(UIView) init];
  v63 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonSeparator;
  *&v1[v63] = [objc_allocWithZone(UIView) init];
  v64 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_contentView;
  *&v1[v64] = [objc_allocWithZone(UIView) init];
  v65 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_platterBackgroundView;
  v66 = type metadata accessor for FMPlatterBackgroundView();
  v67 = objc_allocWithZone(v66);
  v67[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v112.receiver = v67;
  v112.super_class = v66;
  v68 = objc_msgSendSuper2(&v112, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v1[v65] = v68;
  v69 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_iconView;
  *&v1[v69] = [objc_allocWithZone(UIImageView) init];
  *&v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitleShowingConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitleHiddenConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackViewBottomConstraint] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackViewTopConstraint] = 0;
  v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isActionEnabled] = 1;
  v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isSecondaryActionEnabled] = 1;
  v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isActionButtonHidden] = 1;
  v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isSecondaryActionButtonHidden] = 1;
  v70 = &v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitle];
  *v70 = 0;
  v70[1] = 0xE000000000000000;
  v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isTransparent] = 0;
  v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_fullWidthSeparator] = 0;
  v71 = type metadata accessor for FMPlatterImageAndButtonGroupView();
  v111.receiver = v1;
  v111.super_class = v71;
  v72 = objc_msgSendSuper2(&v111, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v73 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_titleLabel;
  v74 = *&v72[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_titleLabel];
  v75 = v72;
  v76 = v74;
  v77 = String._bridgeToObjectiveC()();

  [v76 setText:v77];

  [*&v72[v73] setAdjustsFontForContentSizeCategory:1];
  v78 = *&v72[v73];
  v79 = String._bridgeToObjectiveC()();
  [v78 setAccessibilityIdentifier:v79];

  v80 = v103;
  sub_100007204(v50, v103, &qword_1006B3298);
  if (v102(v80, 1, v107) == 1)
  {
    sub_100012DF0(v80, &qword_1006B3298);
  }

  else
  {
    v81 = v97;
    sub_10015DA28(v80, v97);
    v109 = &type metadata for SolariumFeatureFlag;
    v110 = sub_10000BD04();
    v82 = isFeatureEnabled(_:)();
    sub_100006060(v108);
    if (v82)
    {
      v83 = sub_100438138(0);
      v85 = v84;
      v86 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_iconView;
      [*&v75[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_iconView] setImage:v83];
      [*&v75[v86] setTintColor:v85];
      [*&v75[v86] setTintAdjustmentMode:1];
    }

    else
    {
      v83 = *&v75[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_iconView];
      v85 = sub_10043B9F4(v81, 0);
      [v83 setImage:v85];
    }

    sub_1000D59F8(v81);
  }

  v87 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_actionButton;
  v88 = *&v75[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_actionButton];
  v89 = String._bridgeToObjectiveC()();

  [v88 setTitle:v89 forState:0];

  v90 = *&v75[v87];
  v91 = String._bridgeToObjectiveC()();
  [v90 setAccessibilityIdentifier:v91];

  v92 = [*&v75[v87] setTintAdjustmentMode:1];
  (*((swift_isaMask & *v75) + 0x1E0))(v92);
  sub_100455CF8();
  (*((swift_isaMask & *v75) + 0x1F8))();
  v93 = v75;
  v94 = String._bridgeToObjectiveC()();
  [v93 setAccessibilityIdentifier:v94];

  sub_100012DF0(v106, &qword_1006B3298);
  return v93;
}

void sub_1004FC904()
{
  v1 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"handleStatusRowTap"];
  [*(v0 + OBJC_IVAR____TtC6FindMy20FMItemMarkAsLostView_lostStatusRow) addGestureRecognizer:v1];
}

id sub_1004FC984(void *a1)
{
  v3 = sub_10007EBC0(&unk_1006B0000);
  __chkstk_darwin(v3 - 8);
  v5 = &v62 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMItemDetailViewModel();
  if ((*(a1 + *(v10 + 80)) & 8) != 0)
  {
    v12 = v10;
    v62 = v9;
    v13 = [objc_opt_self() mainBundle];
    v69._object = 0x8000000100579A00;
    v14._countAndFlagsBits = 0xD00000000000001FLL;
    v14._object = 0x800000010059D090;
    v15.value._object = 0x80000001005799E0;
    v69._countAndFlagsBits = 0xD000000000000018;
    v15.value._countAndFlagsBits = 0xD000000000000013;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v69);

    v64 = v6;
    v18 = OBJC_IVAR____TtC6FindMy20FMItemMarkAsLostView_lostStatusRow;
    v19 = *(v1 + OBJC_IVAR____TtC6FindMy20FMItemMarkAsLostView_lostStatusRow);
    *&v19[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_title] = v17;
    v20 = v19;

    v63 = a1;
    v21 = v7;
    v22 = *&v20[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_titleLabel];

    v23 = v22;
    v24 = String._bridgeToObjectiveC()();

    [v23 setText:v24];

    v25 = v18;
    v26 = *(v1 + v18);
    v27 = v64;
    v28 = *(v26 + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_titleLabel);
    v29 = objc_opt_self();
    v30 = v28;
    v31 = v21;
    v32 = v30;
    v33 = [v29 labelColor];
    [v32 setTextColor:v33];

    sub_100007204(v63 + *(v12 + 52), v5, &unk_1006B0000);
    if ((*(v21 + 48))(v5, 1, v27) == 1)
    {
      sub_100012DF0(v5, &unk_1006B0000);
      v34 = *(v1 + v25);
      v35 = &v34[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitle];
      *v35 = 0;
      *(v35 + 1) = 0;
      v36 = v34;

      [*&v36[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_secondaryLabel] setText:0];
    }

    else
    {
      v37 = *(v21 + 32);
      v63 = v29;
      v38 = v62;
      v37(v62, v5, v27);
      v39 = *(v1 + v25);
      v40 = sub_100455280();
      isa = Date._bridgeToObjectiveC()().super.isa;
      v42 = [v40 stringFromDate:isa];

      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      v46 = &v39[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitle];
      *v46 = v43;
      v46[1] = v45;

      v47 = v31;
      v48 = *&v39[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_secondaryLabel];

      v49 = v48;
      v50 = String._bridgeToObjectiveC()();

      [v49 setText:v50];

      v51 = v38;
      v29 = v63;
      (*(v47 + 8))(v51, v27);
    }

    v52 = *(*(v1 + v25) + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_secondaryLabel);
    v53 = objc_opt_self();
    v54 = v52;
    v55 = [v53 preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [v54 setFont:v55];

    v56 = *(*(v1 + v25) + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_secondaryLabel);
    v57 = [v29 secondaryLabelColor];
    [v56 setTextColor:v57];

    v58 = *(v1 + v25);
    *(v58 + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_separated) = 0;
    [*(v58 + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_separator) setHidden:1];
    v59 = [*(*(v1 + v25) + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_backgroundView) layer];
    v66 = &type metadata for SolariumFeatureFlag;
    v67 = sub_10000BD04();
    LOBYTE(v57) = isFeatureEnabled(_:)();
    sub_100006060(v65);
    v60 = _UISheetCornerRadius;
    if (v57)
    {
      v60 = 26.0;
    }

    [v59 setCornerRadius:v60];

    v61 = [*(*(v1 + v25) + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_backgroundView) layer];
    [v61 setMaskedCorners:12];

    [*(v1 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_contentStackView) addArrangedSubview:*(v1 + v25)];
    *(v1 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isActionButtonHidden) = 1;
    return sub_1004571E0();
  }

  else
  {
    [*(v1 + OBJC_IVAR____TtC6FindMy20FMItemMarkAsLostView_lostStatusRow) removeFromSuperview];
    *(v1 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isActionButtonHidden) = 0;

    return sub_1004571E0();
  }
}

id sub_1004FD044()
{
  v1 = OBJC_IVAR____TtC6FindMy20FMItemMarkAsLostView_disabled;
  [*&v0[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_actionButton] setEnabled:(v0[OBJC_IVAR____TtC6FindMy20FMItemMarkAsLostView_disabled] & 1) == 0];
  v2 = v0[v1];
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  if (v2)
  {
    v3 = 0.35;
  }

  else
  {
    v3 = 1.0;
  }

  v4 = [v0 traitCollection];
  v5 = sub_100356E0C(v4);

  [v0 setBackgroundColor:v5];
  v6 = *&v0[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_titleLabel];

  return [v6 setAlpha:v3];
}

uint64_t sub_1004FD158()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005B14(v0, qword_1006D4630);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "FMItemMarkAsLostview: User pressed activate notify me", v3, 2u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1003A4004();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1004FD334()
{
  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy20FMItemMarkAsLostView_delegate);
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy20FMItemMarkAsLostView_lostStatusRow);
}

id sub_1004FD374()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMItemMarkAsLostView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004FD418()
{
  v1 = type metadata accessor for FMPlatterIcon();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v39 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10007EBC0(&qword_1006B3298);
  __chkstk_darwin(v4 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v39 - v8;
  v41 = v0;
  *(v0 + OBJC_IVAR____TtC6FindMy20FMItemMarkAsLostView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v10 = *(v2 + 56);
  v40 = v9;
  v10(v9, 1, 1, v1);
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v11 = *&qword_1006D4798;
  v12 = type metadata accessor for FMMultiSettingsRowView();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_identifier];
  *v14 = 0;
  v14[1] = 0;
  v15 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_backgroundView;
  *&v13[v15] = [objc_allocWithZone(UIView) init];
  v16 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView;
  *&v13[v16] = [objc_allocWithZone(UIImageView) init];
  v17 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_titleLabel;
  *&v13[v17] = [objc_allocWithZone(UILabel) init];
  v18 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_secondaryLabel;
  type metadata accessor for FMCopyableLabel();
  *&v13[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_chevron;
  v20 = sub_1003DE824();
  v21 = [objc_allocWithZone(UIImageView) initWithImage:v20];

  *&v13[v19] = v21;
  v22 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_separator;
  *&v13[v22] = [objc_allocWithZone(UIView) init];
  v23 = &v13[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_title];
  *v23 = 0;
  v23[1] = 0;
  v24 = &v13[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitle];
  *v24 = 0;
  v24[1] = 0;
  v25 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitleColor;
  *&v13[v25] = [objc_opt_self() secondaryLabelColor];
  v13[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitleIsCopyToPasteboardEnabled] = 0;
  v13[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_separated] = 1;
  v13[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_isChevronVisible] = 0;
  *v23 = 0;
  v23[1] = 0;

  v13[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_isBoldTitle] = 0;
  *&v13[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_backgroundOffset] = v11;
  v13[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_fullWidthSeparator] = 0;
  v13[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_hiliteBackgroundWhenTapped] = 1;
  v45.receiver = v13;
  v45.super_class = v12;
  v26 = objc_msgSendSuper2(&v45, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v27 = v40;
  sub_100007204(v40, v6, &qword_1006B3298);
  if ((*(v2 + 48))(v6, 1, v1) == 1)
  {
    v28 = v26;
    sub_100012DF0(v6, &qword_1006B3298);
  }

  else
  {
    v29 = v39;
    sub_10015DA28(v6, v39);
    v30 = v26;
    v31 = sub_10043BBEC(v29, 0);
    v33 = v32;
    v34 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView;
    [*&v30[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView] setImage:v31];
    [*&v30[v34] setTintAdjustmentMode:1];
    v43 = &type metadata for SolariumFeatureFlag;
    v44 = sub_10000BD04();
    v35 = isFeatureEnabled(_:)();
    sub_100006060(v42);
    if (v35)
    {
      [*&v30[v34] setTintColor:v33];

      sub_1000D59F8(v29);
    }

    else
    {
      sub_1000D59F8(v29);
    }
  }

  v36 = OBJC_IVAR____TtC6FindMy20FMItemMarkAsLostView_lostStatusRow;
  [v26 setUserInteractionEnabled:1];
  *(v26 + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_isChevronVisible) = 1;
  sub_1004EE178();
  sub_1004EE5A4(v11);

  sub_100012DF0(v27, &qword_1006B3298);
  v37 = v41;
  *(v41 + v36) = v26;
  *(v37 + OBJC_IVAR____TtC6FindMy20FMItemMarkAsLostView_disabled) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

char *sub_1004FD990(uint64_t a1)
{
  v3 = [objc_opt_self() mainBundle];
  v11._object = 0x800000010059D190;
  v4._object = 0x800000010059D160;
  v11._countAndFlagsBits = 0xD000000000000033;
  v4._countAndFlagsBits = 0xD000000000000021;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v11);

  v6 = objc_allocWithZone(v1);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 initWithTitle:v7 detailText:0 icon:0];

  *&v8[OBJC_IVAR____TtC6FindMy23FMNoveltyViewController_mediator] = a1;
  v9 = v8;

  sub_1004FE614();
  sub_1004FED38();

  return v9;
}

unint64_t sub_1004FDAD4(char a1)
{
  result = 0x535F474154524941;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x50415F4843544157;
      break;
    case 3:
      result = 0x5F53444F50524941;
      break;
    case 4:
      result = 0x52454B4E4954;
      break;
    case 5:
      result = 0x5F594D5F444E4946;
      break;
    case 6:
      result = 0x4E47495345444552;
      break;
    case 7:
      result = 0x554F535F59414C50;
      break;
    case 8:
      result = 0x5F53415F4B52414DLL;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0x414E534554494857;
      break;
    case 11:
      result = 0x4148535F4D455449;
      break;
    case 12:
      result = 0x454957455453;
      break;
    case 13:
      result = 0x4542454C424D5542;
      break;
    case 14:
      result = 0x41425245564C4953;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

Class sub_1004FDCC8(char a1)
{
  sub_10000905C(0, &qword_1006BC2B0);
  v2._countAndFlagsBits = 0x64656E69626D6F43;
  v2._object = 0xEF6E6F6349707041;
  v3.super.isa = UIImage.init(imageLiteralResourceName:)(v2).super.isa;
  v4 = [objc_opt_self() configurationWithScale:-1];
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 9:
    case 11:
    case 13:
    case 14:
      v5 = String._bridgeToObjectiveC()();
      v6 = [objc_opt_self() systemImageNamed:v5];

      v7 = [v6 imageByApplyingSymbolConfiguration:v4];
      goto LABEL_6;
    case 6:
      v8 = 0xD000000000000013;
      v9 = 0x800000010059D2D0;
      goto LABEL_9;
    case 7:
      v8 = 0x6E756F5379616C50;
      v9 = 0xEF6E6F6349424F64;
      goto LABEL_9;
    case 8:
      v8 = 0x6F4C73416B72614DLL;
      v9 = 0xEE006E6F63497473;
LABEL_9:
      isa = UIImage.init(imageLiteralResourceName:)(*&v8).super.isa;

      goto LABEL_10;
    default:
      v10 = String._bridgeToObjectiveC()();
      v6 = [objc_opt_self() _systemImageNamed:v10];

      v7 = [v6 imageByApplyingSymbolConfiguration:v4];
LABEL_6:
      isa = v7;

      if (!isa)
      {
        return v3.super.isa;
      }

      v4 = v3.super.isa;
LABEL_10:
      v3.super.isa = isa;

      return v3.super.isa;
  }
}

uint64_t sub_1004FE2DC(uint64_t a1, void *a2, char a3, unsigned __int8 a4)
{
  if (a4 < 0xBu)
  {
    if (a3)
    {

      return sub_10022EF6C(a1, a2);
    }

    _StringGuts.grow(_:)(20);

    v7._countAndFlagsBits = a1;
    v7._object = a2;
    String.append(_:)(v7);
    v8 = [objc_opt_self() mainBundle];
    v27._object = 0x800000010057A180;
    v9._countAndFlagsBits = a1;
    v9._object = a2;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v27._countAndFlagsBits = 0xD000000000000012;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v27)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  if (a4 > 0xCu)
  {
    if (a4 == 13)
    {
      v14 = [objc_opt_self() mainBundle];
      v15 = 0xD000000000000010;
      v25 = 0x8000000100582060;
      v16 = 0x8000000100582040;
      v17 = 0xD000000000000015;
    }

    else
    {
      v14 = [objc_opt_self() mainBundle];
      v25 = 0x800000010057D3F0;
      v15 = 0xD00000000000001ALL;
      v16 = 0x800000010059D250;
      v17 = 0xD000000000000018;
    }

    v18 = a1;
    v19 = a2;
    goto LABEL_18;
  }

  if (a4 == 11)
  {
    v14 = [objc_opt_self() mainBundle];
    v25 = 0x800000010057D3F0;
    v15 = 0xD000000000000013;
    v16 = 0x800000010057D3D0;
    v17 = 0xD000000000000018;
    v18 = a1;
    v19 = a2;
LABEL_18:
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v18, *&v15, v14, v22, *&v17)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  if ((a3 & 1) == 0)
  {
    v14 = [objc_opt_self() mainBundle];
    v25 = 0x800000010057FD20;
    v16 = 0x800000010057FD00;
    v17 = 0xD000000000000017;
    v18 = a1;
    v19 = a2;
    v15 = 0xD000000000000012;
    goto LABEL_18;
  }

  return sub_10022F844(a1, a2);
}

void sub_1004FE614()
{
  if (*&v0[OBJC_IVAR____TtC6FindMy23FMNoveltyViewController_mediator])
  {
    v1 = v0;
    v53 = &type metadata for KoreaFeatureFlag;
    v2 = sub_10001ABFC();
    v54 = v2;

    v3 = isFeatureEnabled(_:)();
    sub_100006060(&v51);
    if (v3 & 1) != 0 && (sub_10000905C(0, &qword_1006BAB48), (static FMSystemInfo.isKoreaSKU()()))
    {
      v4 = sub_10008C040(0, 1, 1, _swiftEmptyArrayStorage);
      v6 = *(v4 + 2);
      v5 = *(v4 + 3);
      v7 = v6 + 1;
      if (v6 >= v5 >> 1)
      {
        v4 = sub_10008C040((v5 > 1), v6 + 1, 1, v4);
      }

      v8 = 10;
    }

    else
    {
      v4 = sub_10008C040(0, 1, 1, _swiftEmptyArrayStorage);
      v6 = *(v4 + 2);
      v9 = *(v4 + 3);
      v7 = v6 + 1;
      if (v6 >= v9 >> 1)
      {
        v4 = sub_10008C040((v9 > 1), v6 + 1, 1, v4);
      }

      v8 = 14;
    }

    *(v4 + 2) = v7;
    v10 = (v4 + 32);
    v4[v6 + 32] = v8;
    sub_10000905C(0, &qword_1006BAB48);
    if (static FMSystemInfo.isKoreaSKU()())
    {
      for (i = *(v4 + 2); i; --i)
      {
        v13 = *v10++;
        v12 = v13;
        v53 = &type metadata for KoreaFeatureFlag;
        v54 = v2;
        v14 = isFeatureEnabled(_:)();
        sub_100006060(&v51);
        if ((v14 & 1) == 0 && v12 - 4 >= 8 && v12 > 2)
        {
          continue;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100167534(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v17 = _swiftEmptyArrayStorage[2];
        v16 = _swiftEmptyArrayStorage[3];
        if (v17 >= v16 >> 1)
        {
          sub_100167534((v16 > 1), v17 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v17 + 1;
        *(&_swiftEmptyArrayStorage[4] + v17) = v12;
      }

      v4 = _swiftEmptyArrayStorage;
    }

    v18 = *(v4 + 2);
    if (v18)
    {
      goto LABEL_30;
    }

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100005B14(v19, qword_1006D4630);
    v20 = static os_log_type_t.error.getter();
    v21 = Logger.logObject.getter();
    if (os_log_type_enabled(v21, v20))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v51 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_100005B4C(0xD00000000000005BLL, 0x800000010059D1F0, &v51);
      _os_log_impl(&_mh_execute_header, v21, v20, "%s", v22, 0xCu);
      sub_100006060(v23);
    }

    v18 = *(v4 + 2);
    if (v18)
    {
LABEL_30:
      v24 = (v4 + 32);
      do
      {
        v26 = *v24++;
        v25 = v26;
        v51 = 0;
        v52 = 0xE000000000000000;
        _StringGuts.grow(_:)(24);

        v51 = 0xD000000000000013;
        v52 = 0x800000010059D1D0;
        v27._countAndFlagsBits = sub_1004FDAD4(v26);
        String.append(_:)(v27);

        v28._countAndFlagsBits = 95;
        v28._object = 0xE100000000000000;
        String.append(_:)(v28);
        v29._countAndFlagsBits = 0x454C544954;
        v29._object = 0xE500000000000000;
        String.append(_:)(v29);
        sub_1004FE2DC(v51, v52, 0, v26);

        v30 = String._bridgeToObjectiveC()();

        v32 = v26 == 5 || v25 == 12;
        v51 = 0;
        v52 = 0xE000000000000000;
        _StringGuts.grow(_:)(24);

        v51 = 0xD000000000000013;
        v52 = 0x800000010059D1D0;
        v33._countAndFlagsBits = sub_1004FDAD4(v25);
        String.append(_:)(v33);

        v34._countAndFlagsBits = 95;
        v34._object = 0xE100000000000000;
        String.append(_:)(v34);
        v35._countAndFlagsBits = 0x454C544954425553;
        v35._object = 0xE800000000000000;
        String.append(_:)(v35);
        sub_1004FE2DC(v51, v52, v32, v25);

        v36 = String._bridgeToObjectiveC()();

        v37 = sub_1004FDCC8(v25);
        [v1 addBulletedListItemWithTitle:v30 description:v36 image:v37];

        --v18;
      }

      while (v18);
    }

    v38 = objc_opt_self();
    v39 = String._bridgeToObjectiveC()();
    v40 = [v38 linkWithBundleIdentifier:v39];

    v41 = [v1 buttonTray];
    [v41 setPrivacyLinkController:v40];

    v42 = *&v1[OBJC_IVAR____TtC6FindMy23FMNoveltyViewController_activityIndicator];
    [v42 setHidden:1];
    v43 = *&v1[OBJC_IVAR____TtC6FindMy23FMNoveltyViewController_boldButton];
    v44 = [objc_opt_self() mainBundle];
    v55._object = 0x800000010058B5E0;
    v45._countAndFlagsBits = 0xD00000000000001DLL;
    v45._object = 0x800000010058B5C0;
    v55._countAndFlagsBits = 0xD00000000000002FLL;
    v46._countAndFlagsBits = 0;
    v46._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v45, 0, v44, v46, v55);

    v47 = String._bridgeToObjectiveC()();

    [v43 setTitle:v47 forState:0];

    [v43 addTarget:v1 action:"continue" forControlEvents:64];
    v48 = [v1 buttonTray];
    [v48 addButton:v43];

    v49 = [v1 view];
    if (v49)
    {
      v50 = v49;
      [v49 addSubview:v42];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1004FED38()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy23FMNoveltyViewController_activityIndicator];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10007EBC0(&qword_1006AFC30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100552EE0;
  v3 = [v1 centerXAnchor];
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  v6 = [v4 centerXAnchor];

  v7 = [v3 constraintEqualToAnchor:v6];
  *(v2 + 32) = v7;
  v8 = [v1 bottomAnchor];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = objc_opt_self();
  v12 = [v10 safeAreaLayoutGuide];

  v13 = [v12 bottomAnchor];
  v14 = [v8 constraintEqualToAnchor:v13 constant:-40.0];

  *(v2 + 40) = v14;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 activateConstraints:isa];
}

void sub_1004FF0FC()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy23FMNoveltyViewController_mediator];
  if (!v1)
  {
    return;
  }

  v2 = v0;
  v3 = *&v0[OBJC_IVAR____TtC6FindMy23FMNoveltyViewController_boldButton];

  [v3 setHidden:1];
  v4 = *&v2[OBJC_IVAR____TtC6FindMy23FMNoveltyViewController_activityIndicator];
  [v4 setHidden:0];
  [v4 startAnimating];
  v5 = [v2 navigationItem];
  [v5 setHidesBackButton:1 animated:1];

  v6 = *(v1 + 16);
  v7 = sub_100057590();

  if (v7 != 3 && v7 != 0)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100005B14(v9, qword_1006D4630);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315138;
      v14 = sub_100057590();
      v15 = (v14 & 0xFFFFFFFFFFFFFFFDLL) == 1;
      if ((v14 & 0xFFFFFFFFFFFFFFFDLL) == 1)
      {
        v16 = 1702195828;
      }

      else
      {
        v16 = 0x65736C6166;
      }

      if (v15)
      {
        v17 = 0xE400000000000000;
      }

      else
      {
        v17 = 0xE500000000000000;
      }

      v18 = sub_100005B4C(v16, v17, &v20);

      *(v12 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v10, v11, "FMNoveltyViewController: Not showing notification prompt. Notifications Off? %s", v12, 0xCu);
      sub_100006060(v13);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1002DB854();
      swift_unknownObjectRelease();
    }

    [v2 dismissViewControllerAnimated:1 completion:0];
    goto LABEL_24;
  }

  v19 = [v2 parentViewController];
  if (!v19)
  {
LABEL_24:

    return;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_100142308(1, 0, 0);

    goto LABEL_24;
  }
}

id sub_1004FF454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  *&v7[OBJC_IVAR____TtC6FindMy23FMNoveltyViewController_mediator] = 0;
  v12 = OBJC_IVAR____TtC6FindMy23FMNoveltyViewController_boldButton;
  *&v7[v12] = [objc_opt_self() boldButton];
  v13 = OBJC_IVAR____TtC6FindMy23FMNoveltyViewController_activityIndicator;
  *&v7[v13] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v14 = &v7[OBJC_IVAR____TtC6FindMy23FMNoveltyViewController_onboardingPrivacyBundleIdentifier];
  *v14 = 0xD00000000000001BLL;
  *(v14 + 1) = 0x800000010059D140;
  *&v7[OBJC_IVAR____TtC6FindMy23FMNoveltyViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v15 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    v16 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = 0;
    goto LABEL_6;
  }

  v16 = String._bridgeToObjectiveC()();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = String._bridgeToObjectiveC()();

LABEL_6:
  v20.receiver = v7;
  v20.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v20, "initWithTitle:detailText:symbolName:contentLayout:", v15, v16, v17, a7);

  return v18;
}

id sub_1004FF6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  *&v7[OBJC_IVAR____TtC6FindMy23FMNoveltyViewController_mediator] = 0;
  v12 = OBJC_IVAR____TtC6FindMy23FMNoveltyViewController_boldButton;
  *&v7[v12] = [objc_opt_self() boldButton];
  v13 = OBJC_IVAR____TtC6FindMy23FMNoveltyViewController_activityIndicator;
  *&v7[v13] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v14 = &v7[OBJC_IVAR____TtC6FindMy23FMNoveltyViewController_onboardingPrivacyBundleIdentifier];
  *v14 = 0xD00000000000001BLL;
  *(v14 + 1) = 0x800000010059D140;
  *&v7[OBJC_IVAR____TtC6FindMy23FMNoveltyViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v15 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  v19.receiver = v7;
  v19.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v19, "initWithTitle:detailText:icon:contentLayout:", v15, v16, a5, a6);

  return v17;
}

uint64_t getEnumTagSinglePayload for FMNoveltyViewController.BulletPoint(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMNoveltyViewController.BulletPoint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1004FFAAC()
{
  result = qword_1006C3308;
  if (!qword_1006C3308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3308);
  }

  return result;
}

void sub_1004FFB08(void *a1)
{
  v3 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (!v3)
  {
    goto LABEL_16;
  }

  v49 = v3;
  v4 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (!v4)
  {
    v5 = v49;
LABEL_15:

LABEL_16:
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100005B14(v20, qword_1006D4630);
    v50 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v50, v21, "FMCardPresentationTransition: Invalid presented view controller", v22, 2u);
    }

    v23 = v50;
    goto LABEL_27;
  }

  v5 = v4;
  swift_getObjectType();
  v6 = swift_conformsToProtocol2();
  if (!v6)
  {

    goto LABEL_15;
  }

  v7 = v6;
  v8 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
  if (v8)
  {
    v47 = v8;
    v9 = OBJC_IVAR____TtC6FindMy16FMCardTransition_duration;
    if (*&v1[OBJC_IVAR____TtC6FindMy16FMCardTransition_duration] != 0.0)
    {
      [v49 viewWillAppear:1];
      v27 = swift_allocObject();
      *(v27 + 16) = a1;
      swift_unknownObjectRetain();
      v28 = [v49 view];
      if (v28)
      {
        v29 = v28;
        v30 = [v47 view];
        if (v30)
        {
          v31 = v30;
          type metadata accessor for FMCardContainerViewController();
          v32 = swift_dynamicCastClass();
          if (v32)
          {
            v33 = v32;
            [v31 bounds];
            Width = CGRectGetWidth(v60);
            [v31 bounds];
            Height = CGRectGetHeight(v61);
            [v29 setHidden:0];
            [v29 setAlpha:1.0];
            [v29 setFrame:{0.0, 0.0, Width, Height}];
            v46 = objc_opt_self();
            v36 = *&v1[v9];
            v37 = *&v1[OBJC_IVAR____TtC6FindMy16FMCardTransition_delay];
            v38 = swift_allocObject();
            *(v38 + 2) = v1;
            *(v38 + 3) = v5;
            *(v38 + 4) = v7;
            *(v38 + 5) = v33;
            *(v38 + 6) = v31;
            v38[7] = Width;
            v38[8] = Height;
            *(v38 + 9) = v29;
            v55 = sub_10050053C;
            v56 = v38;
            aBlock = _NSConcreteStackBlock;
            v52 = 1107296256;
            v53 = sub_100004AE4;
            v54 = &unk_100643CC0;
            v39 = _Block_copy(&aBlock);
            v48 = v47;
            v40 = v1;
            v41 = v5;
            v42 = v31;
            v43 = v29;

            v44 = swift_allocObject();
            *(v44 + 16) = sub_1001A8698;
            *(v44 + 24) = v27;
            v55 = sub_100009624;
            v56 = v44;
            aBlock = _NSConcreteStackBlock;
            v52 = 1107296256;
            v53 = sub_10037A044;
            v54 = &unk_100643D10;
            v45 = _Block_copy(&aBlock);

            [v46 animateKeyframesWithDuration:4096 delay:v39 options:v45 animations:v36 completion:v37];

            _Block_release(v45);
            _Block_release(v39);

            return;
          }

          goto LABEL_26;
        }
      }

      v23 = v49;
      goto LABEL_27;
    }

    [v49 viewWillAppear:0];
    v10 = [v49 view];
    if (v10)
    {
      v11 = v10;
      v12 = [v47 view];
      if (v12)
      {
        v13 = v12;
        type metadata accessor for FMCardContainerViewController();
        v14 = swift_dynamicCastClass();
        if (v14)
        {
          v15 = v14;
          v16 = v47;
          [v13 bounds];
          v17 = CGRectGetWidth(v58);
          [v13 bounds];
          v18 = CGRectGetHeight(v59);
          ObjectType = swift_getObjectType();
          (*(v7 + 24))(v5, v7, v15, ObjectType, v7);
          [v11 setAlpha:1.0];
          [v11 setHidden:0];
          [v13 setFrame:0.0, v18, v17, v18];

          v11 = v13;
          v13 = v16;
        }

        v11 = v13;
      }
    }

    [a1 completeTransition:1];
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100005B14(v24, qword_1006D4630);
    v47 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v47, v25, "FMCardPresentationTransition: Invalid presenting view controller", v26, 2u);
    }
  }

LABEL_26:
  v23 = v47;
LABEL_27:
}

void sub_10050028C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, double a7, double a8)
{
  v16 = objc_opt_self();
  v17 = *(a1 + OBJC_IVAR____TtC6FindMy16FMCardTransition_duration);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  *(v18 + 32) = a4;
  *(v18 + 40) = a5;
  *(v18 + 48) = a7;
  *(v18 + 56) = a8;
  *(v18 + 64) = a6;
  v23[4] = sub_100500554;
  v23[5] = v18;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 1107296256;
  v23[2] = sub_100004AE4;
  v23[3] = &unk_100643D60;
  v19 = _Block_copy(v23);
  swift_unknownObjectRetain();
  v20 = a4;
  v21 = a5;
  v22 = a6;

  [v16 addKeyframeWithRelativeStartTime:v19 relativeDuration:0.0 animations:v17];
  _Block_release(v19);
}

id sub_1005003E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, double a6, double a7)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 24))(a1, a2, a3, ObjectType, a2);
  [a4 setFrame:{0.0, a7, a6, a7}];

  return [a5 setAlpha:1.0];
}

id sub_1005004E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMCardDismissedCompactTransition();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100500574()
{
  v1 = OBJC_IVAR____TtC6FindMy17FMETASubscription_identifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy17FMETASubscription_subscriber);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMETASubscription()
{
  result = qword_1006C3360;
  if (!qword_1006C3360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100500674()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

Swift::Int sub_10050070C()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100500A18(&unk_1006C2410, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1005007AC()
{
  type metadata accessor for UUID();
  sub_100500A18(&unk_1006C2410, &type metadata accessor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100500834()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100500A18(&unk_1006C2410, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1005008D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v15 = v7 + OBJC_IVAR____TtC6FindMy17FMETASubscription_subscriber;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = *(v15 + 8);
    ObjectType = swift_getObjectType();
    (*(v17 + 8))(a1, a2, a3, a4, a5, ObjectType, v17, a6, a7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100500A18(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_100500A60(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMPlatterIcon();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v61 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&qword_1006B3298);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v61 - v11;
  v2[OBJC_IVAR____TtC6FindMy25FMPISDebugLocationPlatter_collapsed] = 1;
  v13 = OBJC_IVAR____TtC6FindMy25FMPISDebugLocationPlatter_fidelitySegment;
  sub_10007EBC0(&qword_1006B04E8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1005528D0;
  *(v14 + 32) = 7827276;
  *(v14 + 40) = 0xE300000000000000;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = 0x6D756964654DLL;
  *(v14 + 72) = 0xE600000000000000;
  *(v14 + 120) = &type metadata for String;
  *(v14 + 88) = &type metadata for String;
  *(v14 + 96) = 1751607624;
  *(v14 + 104) = 0xE400000000000000;
  v15 = objc_allocWithZone(UISegmentedControl);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v17 = [v15 initWithItems:isa];

  *&v2[v13] = v17;
  *&v2[OBJC_IVAR____TtC6FindMy25FMPISDebugLocationPlatter_shownInferences] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC6FindMy25FMPISDebugLocationPlatter_locationProvider] = a1;
  v62 = v4;
  swift_storeEnumTagMultiPayload();
  (*(v5 + 56))(v12, 0, 1, v4);
  v18 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_titleLabel;
  v19 = objc_allocWithZone(UILabel);
  v63 = a1;
  *&v2[v18] = [v19 init];
  v20 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitleLabel;
  *&v2[v20] = [objc_allocWithZone(UILabel) init];
  v21 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_contentStackView;
  *&v2[v21] = [objc_allocWithZone(UIStackView) init];
  v22 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackView;
  *&v2[v22] = [objc_allocWithZone(UIStackView) init];
  v23 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_actionButton;
  v24 = objc_opt_self();
  *&v2[v23] = [v24 buttonWithType:1];
  v25 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_secondaryActionButton;
  *&v2[v25] = [v24 buttonWithType:1];
  v26 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_topSeparator;
  *&v2[v26] = [objc_allocWithZone(UIView) init];
  v27 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonSeparator;
  *&v2[v27] = [objc_allocWithZone(UIView) init];
  v28 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_contentView;
  *&v2[v28] = [objc_allocWithZone(UIView) init];
  v29 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_platterBackgroundView;
  v30 = type metadata accessor for FMPlatterBackgroundView();
  v31 = objc_allocWithZone(v30);
  v31[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v68.receiver = v31;
  v68.super_class = v30;
  v32 = objc_msgSendSuper2(&v68, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v2[v29] = v32;
  v33 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_iconView;
  *&v2[v33] = [objc_allocWithZone(UIImageView) init];
  *&v2[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitleShowingConstraints] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitleHiddenConstraints] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackViewBottomConstraint] = 0;
  *&v2[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackViewTopConstraint] = 0;
  v2[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isActionEnabled] = 1;
  v2[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isSecondaryActionEnabled] = 1;
  v2[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isActionButtonHidden] = 1;
  v2[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isSecondaryActionButtonHidden] = 1;
  v34 = &v2[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitle];
  *v34 = 0;
  v34[1] = 0xE000000000000000;
  v2[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isTransparent] = 0;
  v2[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_fullWidthSeparator] = 0;
  v35 = type metadata accessor for FMPlatterImageAndButtonGroupView();
  v67.receiver = v2;
  v67.super_class = v35;
  v36 = objc_msgSendSuper2(&v67, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v37 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_titleLabel;
  v38 = *&v36[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_titleLabel];
  v39 = v36;
  v40 = v38;
  v41 = String._bridgeToObjectiveC()();
  [v40 setText:v41];

  [*&v36[v37] setAdjustsFontForContentSizeCategory:1];
  v42 = *&v36[v37];
  v43 = String._bridgeToObjectiveC()();
  [v42 setAccessibilityIdentifier:v43];

  v44 = v12;
  sub_100243148(v12, v10);
  if ((*(v5 + 48))(v10, 1, v62) == 1)
  {
    sub_10017D238(v10);
  }

  else
  {
    v45 = v61;
    sub_10015DA28(v10, v61);
    v65 = &type metadata for SolariumFeatureFlag;
    v66 = sub_10000BD04();
    v46 = isFeatureEnabled(_:)();
    sub_100006060(v64);
    if (v46)
    {
      v47 = sub_100438138(0);
      v49 = v48;
      v50 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_iconView;
      [*&v39[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_iconView] setImage:v47];
      [*&v39[v50] setTintColor:v49];
      [*&v39[v50] setTintAdjustmentMode:1];
    }

    else
    {
      v47 = *&v39[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_iconView];
      v49 = sub_10043B9F4(v45, 0);
      [v47 setImage:v49];
    }

    sub_1000D59F8(v45);
  }

  v51 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_actionButton;
  v52 = *&v39[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_actionButton];
  v53 = String._bridgeToObjectiveC()();
  [v52 setTitle:v53 forState:0];

  v54 = *&v39[v51];
  v55 = String._bridgeToObjectiveC()();
  [v54 setAccessibilityIdentifier:v55];

  v56 = [*&v39[v51] setTintAdjustmentMode:1];
  (*((swift_isaMask & *v39) + 0x1E0))(v56);
  sub_100455CF8();
  (*((swift_isaMask & *v39) + 0x1F8))();
  v57 = v39;
  v58 = String._bridgeToObjectiveC()();
  [v57 setAccessibilityIdentifier:v58];

  sub_10017D238(v44);
  v57[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isSecondaryActionButtonHidden] = 1;
  v59 = v57;
  sub_1004571E0();

  return v59;
}

id sub_100501360()
{
  sub_100455328();
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy25FMPISDebugLocationPlatter_locationProvider);
  sub_1003CBA18(v0, v1);

  v2 = _swiftEmptyArrayStorage;
  if (*(v1 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_poiLocations))
  {
    v2 = *(v1 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_poiLocations);
  }

  *(v0 + OBJC_IVAR____TtC6FindMy25FMPISDebugLocationPlatter_shownInferences) = v2;

  v3 = *(v0 + OBJC_IVAR____TtC6FindMy25FMPISDebugLocationPlatter_fidelitySegment);
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 integerForKey:v5];

  [v3 setSelectedSegmentIndex:v6];
  [v3 addTarget:v0 action:"fidelitySegmentChanged" forControlEvents:4096];
  [*(v0 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_contentStackView) addArrangedSubview:v3];
  v7 = *(v0 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_topSeparator);

  return [v7 setHidden:1];
}

void sub_100501568()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy25FMPISDebugLocationPlatter_fidelitySegment);
  v2 = [v1 selectedSegmentIndex];
  v3 = *(v0 + OBJC_IVAR____TtC6FindMy25FMPISDebugLocationPlatter_locationProvider);
  v4 = 2;
  if (v2 <= 2)
  {
    v4 = v2 + 1;
  }

  *(v3 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_poiFidelity) = v4;
  v5 = [objc_opt_self() standardUserDefaults];
  isa = UInt._bridgeToObjectiveC()().super.super.isa;
  v7 = String._bridgeToObjectiveC()();
  [v5 setObject:isa forKey:v7];

  sub_100056760();
  v8 = [v1 selectedSegmentIndex];
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_poiFidelity) = v8;
    v9 = [objc_opt_self() standardUserDefaults];
    v10 = UInt._bridgeToObjectiveC()().super.super.isa;
    v11 = String._bridgeToObjectiveC()();
    [v9 setObject:v10 forKey:v11];

    sub_100056760();
  }
}

void sub_10050172C()
{
  *(v0 + OBJC_IVAR____TtC6FindMy25FMPISDebugLocationPlatter_collapsed) ^= 1u;
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_actionButton);
  v2 = String._bridgeToObjectiveC()();
  [v1 setTitle:v2 forState:0];

  sub_10050182C();
}

void sub_10050182C()
{
  v48 = *(v0 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_contentStackView);
  v1 = [v48 arrangedSubviews];
  sub_10000905C(0, &qword_1006BA410);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        [v48 removeArrangedSubview:v6];
        [v6 removeFromSuperview];
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:

  v8 = *(v0 + OBJC_IVAR____TtC6FindMy25FMPISDebugLocationPlatter_shownInferences);
  v9 = v8 >> 62;
  if (v8 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    v11 = v48;
    if (v10)
    {
LABEL_17:
      if (v10 < 0)
      {
        v12 = 3;
        if (!v9)
        {
LABEL_22:
          v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_26;
        }
      }

      else
      {
        if (v10 >= 3)
        {
          v12 = 3;
        }

        else
        {
          v12 = v10;
        }

        if (!v9)
        {
          goto LABEL_22;
        }
      }

      if (_CocoaArrayWrapper.endIndex.getter() < 0)
      {
        __break(1u);
        goto LABEL_67;
      }

      v13 = _CocoaArrayWrapper.endIndex.getter();
LABEL_26:
      if (v13 >= v12)
      {
        v14 = v8 & 0xC000000000000001;
        if ((v8 & 0xC000000000000001) != 0)
        {
          sub_10000905C(0, &qword_1006C3B40);
          swift_bridgeObjectRetain_n();
          v15 = 0;
          do
          {
            v16 = v15 + 1;
            _ArrayBuffer._typeCheckSlowPath(_:)(v15);
            v15 = v16;
          }

          while (v12 != v16);
          if (!v9)
          {
            goto LABEL_31;
          }
        }

        else
        {
          swift_bridgeObjectRetain_n();
          if (!v9)
          {
LABEL_31:
            v17 = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
            v18 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_34;
          }
        }

        _CocoaArrayWrapper.subscript.getter();
        v17 = v19;
        v9 = v20;
        v22 = v21;
        v11 = v48;
        v18 = _CocoaArrayWrapper.endIndex.getter();
        v12 = v22 >> 1;
LABEL_34:
        if (v18 >= 4)
        {
          *(v0 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isActionButtonHidden) = 0;
          sub_1004571E0();
          if (*(v0 + OBJC_IVAR____TtC6FindMy25FMPISDebugLocationPlatter_collapsed) == 1)
          {

            v23 = v12 - v9;
            if (v12 == v9)
            {
              goto LABEL_59;
            }

            if (v12 > v9)
            {
              v24 = type metadata accessor for FMPISDebugLocationRow();
              v25 = (v17 + 8 * v9);
              do
              {
                v26 = *v25++;
                v27 = objc_allocWithZone(v24);
                v28 = v26;
                v29 = sub_1000CB1A4(v28, 1);
                [v11 addArrangedSubview:v29];

                --v23;
              }

              while (v23);
LABEL_59:

              swift_unknownObjectRelease();
              return;
            }

LABEL_72:
            __break(1u);
            return;
          }

          if (v10 >= 1)
          {
            v36 = 0;
            do
            {
              if (v14)
              {
                v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v37 = *(v8 + 8 * v36 + 32);
              }

              v38 = v37;
              ++v36;
              objc_allocWithZone(type metadata accessor for FMPISDebugLocationRow());
              v39 = v38;
              v40 = sub_1000CB1A4(v39, 1);
              [v11 addArrangedSubview:v40];
            }

            while (v10 != v36);
            goto LABEL_58;
          }

LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

        *(v0 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isActionButtonHidden) = 1;
        sub_1004571E0();
        v30 = v12 - v9;
        if (!__OFSUB__(v12, v9))
        {
          if ((v30 & 0x8000000000000000) == 0)
          {
            if (!v30)
            {
LABEL_58:

              goto LABEL_59;
            }

            if (v14 || v30 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v31 = 4;
              do
              {
                if (v14)
                {
                  v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v32 = *(v8 + 8 * v31);
                }

                v33 = v32;
                --v30;
                objc_allocWithZone(type metadata accessor for FMPISDebugLocationRow());
                v34 = v33;
                v35 = sub_1000CB1A4(v34, v30 != 0);
                [v48 addArrangedSubview:v35];

                ++v31;
              }

              while (v30);
              goto LABEL_58;
            }

            goto LABEL_70;
          }

LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

LABEL_67:
      __break(1u);
      goto LABEL_68;
    }
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = v48;
    if (v10)
    {
      goto LABEL_17;
    }
  }

  *(v0 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isActionButtonHidden) = 1;
  sub_1004571E0();
  v41 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  [v41 startAnimating];
  sub_10007EBC0(&qword_1006AFC30);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_100552EF0;
  *(v42 + 32) = [objc_allocWithZone(UIView) init];
  *(v42 + 40) = v41;
  v43 = objc_allocWithZone(UIView);
  v44 = v41;
  *(v42 + 48) = [v43 init];
  v45 = objc_allocWithZone(UIStackView);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v47 = [v45 initWithArrangedSubviews:isa];

  [v47 setAxis:1];
  [v47 setSpacing:16.0];
  [v11 addArrangedSubview:v47];
}

uint64_t sub_100501E84()
{
}

id sub_100501ED4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPISDebugLocationPlatter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100501F88(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_poiLocations);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v3 = v2;
  }

  *(v1 + OBJC_IVAR____TtC6FindMy25FMPISDebugLocationPlatter_shownInferences) = v3;

  sub_10050182C();
}

void sub_100501FF0()
{
  *(v0 + OBJC_IVAR____TtC6FindMy25FMPISDebugLocationPlatter_collapsed) = 1;
  v1 = OBJC_IVAR____TtC6FindMy25FMPISDebugLocationPlatter_fidelitySegment;
  sub_10007EBC0(&qword_1006B04E8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1005528D0;
  *(v2 + 32) = 7827276;
  *(v2 + 40) = 0xE300000000000000;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 64) = 0x6D756964654DLL;
  *(v2 + 72) = 0xE600000000000000;
  *(v2 + 120) = &type metadata for String;
  *(v2 + 88) = &type metadata for String;
  *(v2 + 96) = 1751607624;
  *(v2 + 104) = 0xE400000000000000;
  v3 = objc_allocWithZone(UISegmentedControl);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v3 initWithItems:isa];

  *(v0 + v1) = v5;
  *(v0 + OBJC_IVAR____TtC6FindMy25FMPISDebugLocationPlatter_shownInferences) = _swiftEmptyArrayStorage;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100502158(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = v3;
  do
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2() && v7)
    {
      v9 = v7;
      [a1 setTransitioningDelegate:v9];
      [a1 setModalPresentationStyle:6];
      v10 = swift_allocObject();
      *(v10 + 16) = a2;
      *(v10 + 24) = a3;
      aBlock[4] = sub_100406E54;
      aBlock[5] = v10;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004AE4;
      aBlock[3] = &unk_100643E18;
      v11 = _Block_copy(aBlock);
      sub_100062900(a2);

      [v9 presentViewController:a1 animated:1 completion:v11];
      _Block_release(v11);

      return;
    }

    v8 = [v7 parentViewController];

    v7 = v8;
  }

  while (v8);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_10050241C()
{
  v0 = objc_opt_self();
  v1 = [v0 labelColor];
  v2 = [v0 secondaryLabelColor];
  v3 = [v0 secondaryLabelColor];
  v4 = [v0 tertiaryLabelColor];
  __asm { FMOV            V1.2D, #18.0 }

  xmmword_1006D4DB0 = _Q1;
  *&qword_1006D4DC0 = xmmword_10055FF20;
  *&qword_1006D4DD0 = xmmword_1005652A0;
  unk_1006D4DE0 = xmmword_1005652B0;
  result = 0.3;
  xmmword_1006D4DF0 = xmmword_1005652C0;
  qword_1006D4E00 = v1;
  qword_1006D4E08 = v2;
  qword_1006D4E10 = v3;
  qword_1006D4E18 = v4;
  return result;
}

void sub_100502538(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_detailText);
  *v5 = a1;
  v5[1] = a2;

  v6 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_tertiaryLabel;
  v7 = *(v2 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_tertiaryLabel);
  if (a1 || a2 != 0xE000000000000000)
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {
    v8 = 1;
  }

  v9 = v7;

  [v9 setHidden:v8 & 1];

  v10 = *(v2 + v6);

  v11 = String._bridgeToObjectiveC()();

  [v10 setText:v11];
}

void sub_10050265C()
{
  v1 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_isLastRow;
  *(v0 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_separated) = *(v0 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_isLastRow) ^ 1;
  [*(v0 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_separator) setHidden:?];
  v2 = *(v0 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_backgroundBottomConstraint);
  if (v2)
  {
    v7 = *(v0 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_backgroundBottomConstraint);
    if (*(v0 + v1) == 1)
    {
      v3 = qword_1006AEDB0;
      v4 = v2;
      if (v3 != -1)
      {
        swift_once();
      }

      v5 = *(&xmmword_1006D4DF0 + 1);
    }

    else
    {
      v6 = v2;
      v5 = 0.0;
    }

    [v7 setConstant:v5];
  }
}

id sub_100502750(char a1, double a2)
{
  v5 = &v2[OBJC_IVAR____TtC6FindMy16FMSettingRowView_identifier];
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_imageView;
  *&v2[v6] = [objc_allocWithZone(UIImageView) init];
  v7 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_backgroundView;
  *&v2[v7] = [objc_allocWithZone(UIView) init];
  v8 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_titleLabel;
  *&v2[v8] = [objc_allocWithZone(UILabel) init];
  v9 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_secondaryLabel;
  *&v2[v9] = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_secondaryDetailLabel;
  *&v2[v10] = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_tertiaryLabel;
  type metadata accessor for FMCopyableLabel();
  *&v2[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_chevron;
  v13 = sub_1003DE824();
  v14 = [objc_allocWithZone(UIImageView) initWithImage:v13];

  *&v2[v12] = v14;
  v15 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_separator;
  *&v2[v15] = [objc_allocWithZone(UIView) init];
  v16 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_rightStackView;
  *&v2[v16] = [objc_allocWithZone(UIStackView) init];
  v17 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_leftStackView;
  *&v2[v17] = [objc_allocWithZone(UIStackView) init];
  *&v2[OBJC_IVAR____TtC6FindMy16FMSettingRowView_imageViewWidthConstraint] = 0;
  *&v2[OBJC_IVAR____TtC6FindMy16FMSettingRowView_titleLabelLeadingConstraint] = 0;
  *&v2[OBJC_IVAR____TtC6FindMy16FMSettingRowView_backgroundBottomConstraint] = 0;
  v18 = &v2[OBJC_IVAR____TtC6FindMy16FMSettingRowView_title];
  *v18 = 0;
  v18[1] = 0;
  *&v2[OBJC_IVAR____TtC6FindMy16FMSettingRowView_titleColor] = 0;
  v19 = &v2[OBJC_IVAR____TtC6FindMy16FMSettingRowView_subtitle];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v2[OBJC_IVAR____TtC6FindMy16FMSettingRowView_detailText];
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  *&v2[OBJC_IVAR____TtC6FindMy16FMSettingRowView_detailTextColor] = 0;
  v2[OBJC_IVAR____TtC6FindMy16FMSettingRowView_detailTextIsCopyToPasteboardEnabled] = 0;
  v21 = &v2[OBJC_IVAR____TtC6FindMy16FMSettingRowView_subDetailText];
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v2[OBJC_IVAR____TtC6FindMy16FMSettingRowView_separated] = 1;
  v2[OBJC_IVAR____TtC6FindMy16FMSettingRowView_enabled] = 1;
  *&v2[OBJC_IVAR____TtC6FindMy16FMSettingRowView_image] = 0;
  v22 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_isChevronVisible;
  v2[OBJC_IVAR____TtC6FindMy16FMSettingRowView_isChevronVisible] = 0;
  v2[OBJC_IVAR____TtC6FindMy16FMSettingRowView_isLastRow] = 0;
  *&v2[OBJC_IVAR____TtC6FindMy16FMSettingRowView_backgroundOffset] = a2;
  v2[v22] = a1;
  v25.receiver = v2;
  v25.super_class = type metadata accessor for FMSettingRowView();
  v23 = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100502B98();
  sub_1005031C4(a2);
  [v23 setClipsToBounds:0];

  return v23;
}

uint64_t sub_100502ADC()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_title + 8);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_title);

    v3._countAndFlagsBits = v2;
    v3._object = v1;
    String.append(_:)(v3);
  }

  v4 = *(v0 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_subtitle + 8);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_subtitle);
    String.append(_:)(*(&v4 - 1));
    v6._countAndFlagsBits = 44;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
  }

  return 0;
}

id sub_100502B98()
{
  v1 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_chevron;
  [*&v0[OBJC_IVAR____TtC6FindMy16FMSettingRowView_chevron] setHidden:(v0[OBJC_IVAR____TtC6FindMy16FMSettingRowView_isChevronVisible] & 1) == 0];
  [*&v0[v1] setContentMode:1];
  v40 = v1;
  v2 = *&v0[v1];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 tertiaryLabelColor];
  [v4 setTintColor:v5];

  v39 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_separator;
  v6 = *&v0[OBJC_IVAR____TtC6FindMy16FMSettingRowView_separator];
  v7 = [v3 labelColor];
  v8 = [v7 colorWithAlphaComponent:0.1];

  [v6 setBackgroundColor:v8];
  v9 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_titleLabel;
  v10 = *&v0[OBJC_IVAR____TtC6FindMy16FMSettingRowView_titleLabel];
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 preferredFontForTextStyle:UIFontTextStyleBody];
  [v12 setFont:v13];

  [*&v0[v9] setNumberOfLines:0];
  LODWORD(v14) = 1132068864;
  [*&v0[v9] setContentCompressionResistancePriority:0 forAxis:v14];
  [*&v0[v9] setAdjustsFontForContentSizeCategory:1];
  [*&v0[v9] setTextAlignment:4];
  v15 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_secondaryLabel;
  v16 = *&v0[OBJC_IVAR____TtC6FindMy16FMSettingRowView_secondaryLabel];
  v17 = [v11 preferredFontForTextStyle:UIFontTextStyleBody];
  [v16 setFont:v17];

  v18 = *&v0[v15];
  v19 = [v3 secondaryLabelColor];
  [v18 setTextColor:v19];

  v20 = qword_1006AEC30;
  v21 = *&v0[v15];
  if (v20 != -1)
  {
    swift_once();
  }

  [v21 setTextAlignment:2 * (qword_1006D47A0 != 1)];

  [*&v0[v15] setNumberOfLines:1];
  LODWORD(v22) = 1144750080;
  [*&v0[v15] setContentCompressionResistancePriority:0 forAxis:v22];
  [*&v0[v15] setAdjustsFontForContentSizeCategory:1];
  v23 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_secondaryDetailLabel;
  v24 = *&v0[OBJC_IVAR____TtC6FindMy16FMSettingRowView_secondaryDetailLabel];
  v25 = [v11 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v24 setFont:v25];

  v26 = *&v0[v23];
  v27 = [v3 secondaryLabelColor];
  [v26 setTextColor:v27];

  [*&v0[v23] setTextAlignment:2 * (qword_1006D47A0 != 1)];
  [*&v0[v23] setNumberOfLines:1];
  LODWORD(v28) = 1144750080;
  [*&v0[v23] setContentCompressionResistancePriority:0 forAxis:v28];
  [*&v0[v23] setAdjustsFontForContentSizeCategory:1];
  v29 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_tertiaryLabel;
  v30 = *&v0[OBJC_IVAR____TtC6FindMy16FMSettingRowView_tertiaryLabel];
  v31 = [v11 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v30 setFont:v31];

  [*&v0[v29] setNumberOfLines:0];
  LODWORD(v32) = 1132068864;
  [*&v0[v29] setContentCompressionResistancePriority:0 forAxis:v32];
  [*&v0[v29] setAdjustsFontForContentSizeCategory:1];
  v33 = *&v0[v29];
  v34 = [v3 secondaryLabelColor];
  [v33 setColor:v34];

  v35 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_rightStackView;
  [*&v0[OBJC_IVAR____TtC6FindMy16FMSettingRowView_rightStackView] setAxis:1];
  [*&v0[v35] addArrangedSubview:*&v0[v15]];
  [*&v0[v35] addArrangedSubview:*&v0[v23]];
  v36 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_leftStackView;
  [*&v0[OBJC_IVAR____TtC6FindMy16FMSettingRowView_leftStackView] setAxis:1];
  [*&v0[v36] addArrangedSubview:*&v0[v9]];
  [*&v0[v36] addArrangedSubview:*&v0[v29]];
  [v0 addSubview:*&v0[OBJC_IVAR____TtC6FindMy16FMSettingRowView_backgroundView]];
  [v0 addSubview:*&v0[OBJC_IVAR____TtC6FindMy16FMSettingRowView_imageView]];
  [v0 addSubview:*&v0[v40]];
  [v0 addSubview:*&v0[v39]];
  [v0 addSubview:*&v0[v36]];
  v37 = *&v0[v35];

  return [v0 addSubview:v37];
}

void sub_1005031C4(double a1)
{
  v3 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_backgroundView;
  [*&v1[OBJC_IVAR____TtC6FindMy16FMSettingRowView_backgroundView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_imageView;
  [*&v1[OBJC_IVAR____TtC6FindMy16FMSettingRowView_imageView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v102 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_rightStackView;
  [*&v1[OBJC_IVAR____TtC6FindMy16FMSettingRowView_rightStackView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v97 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_leftStackView;
  [*&v1[OBJC_IVAR____TtC6FindMy16FMSettingRowView_leftStackView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v104 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_separator;
  [*&v1[OBJC_IVAR____TtC6FindMy16FMSettingRowView_separator] setTranslatesAutoresizingMaskIntoConstraints:0];
  v96 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_chevron;
  [*&v1[OBJC_IVAR____TtC6FindMy16FMSettingRowView_chevron] setTranslatesAutoresizingMaskIntoConstraints:0];
  v98 = v4;
  v5 = [*&v1[v4] widthAnchor];
  v6 = 0.0;
  v100 = [v5 constraintEqualToConstant:0.0];

  v7 = [*&v1[v3] bottomAnchor];
  v8 = [v1 bottomAnchor];
  if (v1[OBJC_IVAR____TtC6FindMy16FMSettingRowView_isLastRow] == 1)
  {
    if (qword_1006AEDB0 != -1)
    {
      swift_once();
    }

    v6 = *(&xmmword_1006D4DF0 + 1);
  }

  v9 = [v7 constraintEqualToAnchor:v8 constant:v6];

  v10 = *&v1[OBJC_IVAR____TtC6FindMy16FMSettingRowView_backgroundBottomConstraint];
  *&v1[OBJC_IVAR____TtC6FindMy16FMSettingRowView_backgroundBottomConstraint] = v9;
  v11 = v9;

  v12 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1005521F0;
  v14 = [*&v1[v3] topAnchor];
  v15 = [v1 topAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v13 + 32) = v16;
  *(v13 + 40) = v11;
  v17 = *&v1[v3];
  v103 = v11;
  v18 = [v17 leadingAnchor];
  v19 = [v1 leadingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:-a1];

  *(v13 + 48) = v20;
  v21 = [*&v1[v3] trailingAnchor];
  v22 = [v1 trailingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:a1];

  *(v13 + 56) = v23;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v12 activateConstraints:isa];

  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1005521F0;
  v26 = [*&v1[v98] centerYAnchor];
  v27 = [v1 centerYAnchor];
  v28 = [v26 constraintEqualToSystemSpacingBelowAnchor:v27 multiplier:1.0];

  *(v25 + 32) = v28;
  v29 = [*&v1[v98] leadingAnchor];
  v30 = [v1 leadingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v25 + 40) = v31;
  v32 = [*&v1[v98] heightAnchor];
  if (qword_1006AEDB0 != -1)
  {
    swift_once();
  }

  v33 = [v32 constraintEqualToConstant:*&qword_1006D4DD8];

  *(v25 + 48) = v33;
  *(v25 + 56) = v100;
  v101 = v100;
  v34 = Array._bridgeToObjectiveC()().super.isa;

  [v12 activateConstraints:v34];

  v35 = [*&v1[v97] leadingAnchor];
  v36 = [*&v1[v98] trailingAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_100552EF0;
  *(v38 + 32) = v37;
  v39 = *&v1[v97];
  v99 = v37;
  v40 = [v39 topAnchor];
  v41 = [v1 topAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:15.0];

  *(v38 + 40) = v42;
  v43 = [*&v1[v97] bottomAnchor];
  v44 = [v1 bottomAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:-15.0];

  *(v38 + 48) = v45;
  v46 = Array._bridgeToObjectiveC()().super.isa;

  [v12 activateConstraints:v46];

  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_100552EF0;
  v48 = [*&v1[v102] topAnchor];
  v49 = [v1 topAnchor];
  v50 = [v48 constraintEqualToAnchor:v49 constant:15.0];

  *(v47 + 32) = v50;
  v51 = [*&v1[v102] leadingAnchor];
  v52 = [*&v1[v97] trailingAnchor];
  v53 = [v51 constraintEqualToAnchor:v52 constant:*&qword_1006D4DD0];

  *(v47 + 40) = v53;
  v54 = [*&v1[v102] bottomAnchor];
  v55 = [v1 bottomAnchor];
  v56 = [v54 constraintEqualToAnchor:v55 constant:-15.0];

  *(v47 + 48) = v56;
  v57 = Array._bridgeToObjectiveC()().super.isa;

  p_ivar_lyt = &LocateDeviceIntentResponse__metaData.ivar_lyt;
  [v12 activateConstraints:v57];

  if (v1[OBJC_IVAR____TtC6FindMy16FMSettingRowView_isChevronVisible] == 1)
  {
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_100555280;
    v60 = [*&v1[v96] topAnchor];
    v61 = [v1 topAnchor];
    v62 = [v60 constraintGreaterThanOrEqualToAnchor:v61 constant:*&qword_1006D4DC8];

    *(v59 + 32) = v62;
    v63 = [*&v1[v96] leadingAnchor];
    v64 = [*&v1[v102] trailingAnchor];
    v65 = [v63 constraintEqualToAnchor:v64 constant:*&qword_1006D4DC0];

    *(v59 + 40) = v65;
    v66 = [*&v1[v96] centerYAnchor];
    v67 = [v1 centerYAnchor];
    v68 = [v66 constraintEqualToAnchor:v67];

    *(v59 + 48) = v68;
    v69 = [*&v1[v96] trailingAnchor];
    v70 = [v1 trailingAnchor];
    v71 = [v69 constraintEqualToAnchor:v70];

    *(v59 + 56) = v71;
    v72 = [*&v1[v96] heightAnchor];
    v73 = [v72 constraintEqualToConstant:*(&xmmword_1006D4DB0 + 1)];

    *(v59 + 64) = v73;
    v74 = [*&v1[v96] widthAnchor];
    p_ivar_lyt = (&LocateDeviceIntentResponse__metaData + 16);
    v75 = [v74 constraintEqualToConstant:*&xmmword_1006D4DB0];

    *(v59 + 72) = v75;
  }

  else
  {
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_1005528C0;
    v77 = [*&v1[v102] trailingAnchor];
    v78 = [v1 trailingAnchor];
    v79 = [v77 constraintEqualToAnchor:v78];

    *(v76 + 32) = v79;
  }

  v80 = Array._bridgeToObjectiveC()().super.isa;

  [v12 p:v80 ivar:?lyt[436]];

  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_1005521F0;
  v82 = [*&v1[v104] leadingAnchor];
  v83 = [v1 leadingAnchor];
  v84 = [v82 constraintEqualToAnchor:v83];

  *(v81 + 32) = v84;
  v85 = [*&v1[v104] trailingAnchor];
  v86 = [v1 trailingAnchor];
  v87 = [v85 constraintEqualToAnchor:v86];

  *(v81 + 40) = v87;
  v88 = [*&v1[v104] bottomAnchor];
  v89 = [v1 bottomAnchor];
  v90 = [v88 constraintEqualToAnchor:v89 constant:0.0];

  *(v81 + 48) = v90;
  v91 = [*&v1[v104] heightAnchor];
  v92 = [v91 constraintEqualToConstant:1.0];

  *(v81 + 56) = v92;
  v93 = Array._bridgeToObjectiveC()().super.isa;

  [v12 p:v93 ivar:?lyt[436]];

  v94 = *&v1[OBJC_IVAR____TtC6FindMy16FMSettingRowView_imageViewWidthConstraint];
  *&v1[OBJC_IVAR____TtC6FindMy16FMSettingRowView_imageViewWidthConstraint] = v101;

  v95 = *&v1[OBJC_IVAR____TtC6FindMy16FMSettingRowView_titleLabelLeadingConstraint];
  *&v1[OBJC_IVAR____TtC6FindMy16FMSettingRowView_titleLabelLeadingConstraint] = v99;
}

void sub_100503F58()
{
  v1 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_titleColor;
  v2 = *(v0 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_titleColor);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_titleColor);
    v4 = v3;
  }

  else
  {
    if (qword_1006AEDB0 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + v1);
    v4 = qword_1006D4E00;
    if (!v3)
    {
      goto LABEL_10;
    }

    v2 = 0;
  }

  v5 = v2;
  v6 = [v3 colorWithAlphaComponent:0.35];
  if (v6)
  {
    goto LABEL_11;
  }

  if (qword_1006AEDB0 != -1)
  {
    swift_once();
  }

LABEL_10:
  v6 = qword_1006D4E08;
LABEL_11:
  v7 = v6;
  v8 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_enabled;
  if (*(v0 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_enabled))
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  [*(v0 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_titleLabel) setTextColor:v9];
  v10 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_detailTextColor;
  v11 = *(v0 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_detailTextColor);
  if (v11)
  {
    v12 = *(v0 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_detailTextColor);
    v13 = v12;
  }

  else
  {
    if (qword_1006AEDB0 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + v10);
    v13 = qword_1006D4E10;
    if (!v12)
    {
      goto LABEL_23;
    }

    v11 = 0;
  }

  v14 = v11;
  v15 = [v12 colorWithAlphaComponent:0.35];
  if (v15)
  {
    goto LABEL_24;
  }

  if (qword_1006AEDB0 != -1)
  {
    swift_once();
  }

LABEL_23:
  v15 = qword_1006D4E18;
LABEL_24:
  v17 = v15;
  if (*(v0 + v8))
  {
    v16 = v13;
  }

  else
  {
    v16 = v15;
  }

  [*(v0 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_tertiaryLabel) setTextColor:v16];
}

void sub_1005041D0(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5, SEL *a6)
{
  sub_10000905C(0, &qword_1006B0C30);
  sub_1000D5BCC();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a4;
  v11 = a1;
  isa = Set._bridgeToObjectiveC()().super.isa;

  v17.receiver = v11;
  v17.super_class = type metadata accessor for FMSettingRowView();
  objc_msgSendSuper2(&v17, *a5, isa, v10);

  v13 = *&v11[OBJC_IVAR____TtC6FindMy16FMSettingRowView_backgroundView];
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 *a6];
  [v15 setBackgroundColor:v16];
}

id sub_100504348()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMSettingRowView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100504530()
{
  v1 = (v0 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_identifier);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_imageView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_backgroundView;
  *(v0 + v3) = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_titleLabel;
  *(v0 + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_secondaryLabel;
  *(v0 + v5) = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_secondaryDetailLabel;
  *(v0 + v6) = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_tertiaryLabel;
  type metadata accessor for FMCopyableLabel();
  *(v0 + v7) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_chevron;
  v9 = sub_1003DE824();
  v10 = [objc_allocWithZone(UIImageView) initWithImage:v9];

  *(v0 + v8) = v10;
  v11 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_separator;
  *(v0 + v11) = [objc_allocWithZone(UIView) init];
  v12 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_rightStackView;
  *(v0 + v12) = [objc_allocWithZone(UIStackView) init];
  v13 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_leftStackView;
  *(v0 + v13) = [objc_allocWithZone(UIStackView) init];
  *(v0 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_imageViewWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_titleLabelLeadingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_backgroundBottomConstraint) = 0;
  v14 = (v0 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_title);
  *v14 = 0;
  v14[1] = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_titleColor) = 0;
  v15 = (v0 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_subtitle);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v0 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_detailText);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_detailTextColor) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_detailTextIsCopyToPasteboardEnabled) = 0;
  v17 = (v0 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_subDetailText);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_separated) = 1;
  *(v0 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_enabled) = 1;
  *(v0 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_image) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_isChevronVisible) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_isLastRow) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1005047C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for FMIPDevice();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMDeviceDetailViewModel();
  __chkstk_darwin(v10 - 8);
  v12 = (&v27.receiver - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v3[OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_selectionSubscription] = 0;
  *&v3[OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_devicesSubscription] = 0;
  *&v3[OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_imageFetchingCancellable] = 0;
  v13 = OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_removeButton;
  *&v3[v13] = [objc_opt_self() boldButton];
  *&v3[OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_mediator] = a1;
  v14 = *(v7 + 16);
  v14(&v3[OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_deviceToRemove], a2, v6);
  v14(v9, a2, v6);
  v15 = swift_retain_n();
  sub_100499F00(v15, v9, 0, 0, 0, 0.0, v12);
  sub_1004E50F0(v12, &v3[OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_viewModel]);
  v16 = objc_allocWithZone(type metadata accessor for FMActionLandingView());
  *&v3[OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_landingView] = sub_1001C2B3C(0);
  *&v3[OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_bulletedListView] = [objc_allocWithZone(type metadata accessor for FMSymbolBulletedListView()) init];
  v17 = String._bridgeToObjectiveC()();
  v18 = type metadata accessor for FMRemoveDeviceViewController();
  v27.receiver = v3;
  v27.super_class = v18;
  v19 = objc_msgSendSuper2(&v27, "initWithTitle:detailText:icon:contentLayout:", v17, 0, 0, 4);

  v20 = qword_1006AEBE0;
  v21 = v19;
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100005B14(v22, qword_1006D4630);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "FMRemoveDeviceViewController: Remove device view controller initialized", v25, 2u);
  }

  else
  {
  }

  (*(v7 + 8))(a2, v6);
  return v21;
}

int64_t sub_100504C40(char a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for FMRemoveDeviceViewController();
  result = objc_msgSendSuper2(&v9, "viewWillDisappear:", a1 & 1);
  v4 = *&v1[OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_selectionSubscription];
  if (v4)
  {
    v5 = *(*&v1[OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_mediator] + 56);
    swift_beginAccess();

    result = sub_1003CD53C((v5 + 16), v4);
    v6 = *(v5 + 16);
    if (v6 >> 62)
    {
      v8 = result;
      v7 = _CocoaArrayWrapper.endIndex.getter();
      result = v8;
      if (v7 >= v8)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7 >= result)
      {
LABEL_4:
        sub_1003CD570(result, v7);
        swift_endAccess();
      }
    }

    __break(1u);
  }

  return result;
}

id sub_100504DA0()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B64E0);
  __chkstk_darwin(v2 - 8);
  v116 = &v109 - v3;
  v4 = sub_10007EBC0(&qword_1006B3B08);
  v118 = *(v4 - 8);
  v119 = v4;
  __chkstk_darwin(v4);
  v117 = &v109 - v5;
  v6 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v6 - 8);
  v109 = &v109 - v7;
  v125 = type metadata accessor for FMIPFeatures();
  v129 = *(v125 - 8);
  __chkstk_darwin(v125);
  v9 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v109 - v11;
  v13 = type metadata accessor for FMIPDevice();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v112 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v15;
  __chkstk_darwin(v16);
  v18 = &v109 - v17;
  v19 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v0 action:"cancel"];
  v20 = [v0 navigationItem];
  v110 = v19;
  [v20 setLeftBarButtonItem:v19];

  v21 = OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_deviceToRemove;
  v23 = v14 + 16;
  v22 = *(v14 + 16);
  v130 = v1;
  v131 = v22;
  v22(v18, &v1[OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_deviceToRemove], v13);
  FMIPDevice.features.getter();
  v113 = v14;
  v24 = *(v14 + 8);
  v128 = v18;
  v123 = v13;
  v24(v18, v13);
  static FMIPFeatures.isRemoveUIv2Supported.getter();
  v25 = sub_10000A7C8(&qword_1006C1D50, &type metadata accessor for FMIPFeatures);
  v26 = v125;
  v114 = v25;
  LOBYTE(v20) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v28 = v129 + 8;
  v27 = *(v129 + 8);
  v121 = v9;
  v27(v9, v26);
  v120 = v12;
  v129 = v28;
  v115 = v27;
  v27(v12, v26);
  v126 = v14 + 8;
  v127 = v21;
  v124 = v24;
  if (v20)
  {
    v29 = [objc_opt_self() mainBundle];
    v134._object = 0x8000000100587910;
    v30.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v30.value._object = 0xEC00000031656C62;
    v31._object = 0x800000010059E100;
    v31._countAndFlagsBits = 0xD000000000000017;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    v134._countAndFlagsBits = 0xD000000000000017;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v30, v29, v32, v134);

    v33 = v131;
    v34 = v123;
    v35 = v128;
    v36 = v113;
  }

  else
  {
    v37 = v130;
    v33 = v131;
    v38 = v128;
    v39 = v123;
    v131(v128, &v130[v21], v123);
    v40 = FMIPDevice.isConsideredAccessory.getter();
    v24(v38, v39);
    v41 = v14 + 16;
    if (v40)
    {
      v42 = &v37[v21];
      v35 = v38;
      v33(v38, v42, v39);
      v43 = FMIPDevice.isLocalFindable.getter();
      v24(v38, v39);
      v44 = v39;
      v45 = [objc_opt_self() mainBundle];
      if (v43)
      {
        v46 = 0xD000000000000010;
        v47 = 0xD000000000000011;
        v48 = 0xD000000000000015;
        v108 = 0x80000001005797A0;
        v49 = 0x800000010059E0E0;
        v50 = 0x8000000100579780;
      }

      else
      {
        v47 = 0xD000000000000014;
        v108 = 0x800000010059D6F0;
        v49 = 0x800000010059D6D0;
        v48 = 0xD000000000000026;
        v46 = 0;
        v50 = 0;
      }

      v60._countAndFlagsBits = 0;
      v60._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(*&v47, *&v46, v45, v60, *&v48);

      v36 = v113;
      v34 = v44;
    }

    else
    {
      v51 = v109;
      v33(v109, &v37[v21], v39);
      v36 = v113;
      (*(v113 + 56))(v51, 0, 1, v39);
      v52 = sub_10022F104(0xD000000000000019, 0x800000010059E0C0, v51);
      v54 = v53;
      v56 = v55;
      v57 = v33;
      v59 = v58;

      sub_10022E0A8(v52, v54, v56, v59, 0, 0);

      v33 = v57;
      v23 = v41;
      swift_bridgeObjectRelease_n();
      sub_100012DF0(v51, &unk_1006BBCE0);
      v35 = v38;
      v34 = v123;
    }
  }

  v122 = v23;
  v61 = v130;
  v62 = [v130 headerView];
  v63 = String._bridgeToObjectiveC()();

  [v62 setTitle:v63];

  v64 = [v61 contentView];
  v109 = objc_opt_self();
  v65 = [v109 systemBackgroundColor];
  [v64 setBackgroundColor:v65];

  v113 = OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_mediator;
  v33(v35, &v61[v127], v34);
  v66 = swift_allocObject();
  swift_weakInit();
  v67 = v34;
  v68 = v112;
  v33(v112, v35, v67);
  v69 = (*(v36 + 80) + 24) & ~*(v36 + 80);
  v70 = v69 + v111;
  v71 = swift_allocObject();
  *(v71 + 16) = v66;
  (*(v36 + 32))(v71 + v69, v68, v67);
  *(v71 + v70) = 1;
  sub_10007EBC0(&unk_1006B3B20);
  swift_allocObject();

  v133 = Future.init(_:)();
  sub_100004098(&qword_1006C39C0, &unk_1006B3B20);
  v72 = Publisher.eraseToAnyPublisher()();

  v124(v128, v67);
  v133 = v72;
  v73 = objc_opt_self();

  v74 = [v73 mainRunLoop];
  v132 = v74;
  v75 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v76 = v116;
  (*(*(v75 - 8) + 56))(v116, 1, 1, v75);
  sub_10007EBC0(&unk_1006B4D90);
  sub_10000905C(0, &qword_1006B2918);
  sub_100004098(&qword_1006B7800, &unk_1006B4D90);
  sub_100110658();
  v77 = v117;
  Publisher.receive<A>(on:options:)();
  sub_100012DF0(v76, &qword_1006B64E0);
  v116 = v72;
  v78 = v128;

  swift_allocObject();
  v79 = v130;
  swift_unknownObjectWeakInit();
  sub_100004098(&qword_1006B3B18, &qword_1006B3B08);
  v80 = v119;
  v81 = Publisher.sink(receiveCompletion:receiveValue:)();

  (*(v118 + 8))(v77, v80);
  *&v79[OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_imageFetchingCancellable] = v81;

  v119 = OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_landingView;
  v82 = *&v79[OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_landingView];
  v83 = v127;
  v131(v78, &v79[v127], v67);
  v84 = v82;

  v85 = sub_1002D45D4();
  v87 = v86;

  v88 = v124;
  v124(v78, v67);
  v89 = &v84[OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceOwner];
  *v89 = v85;
  v89[1] = v87;

  v90 = *&v84[OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceOwnerLabel];

  v91 = v90;
  v92 = String._bridgeToObjectiveC()();

  [v91 setText:v92];

  v93 = v83;
  v94 = v130;
  v131(v78, &v130[v93], v67);
  v95 = v120;
  FMIPDevice.features.getter();
  v88(v78, v67);
  v96 = v121;
  static FMIPFeatures.isRemoveUIv2Supported.getter();
  v97 = v125;
  LOBYTE(v91) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v98 = v115;
  v115(v96, v97);
  v98(v95, v97);
  if (v91 & 1) != 0 || (v99 = v123, v131(v78, &v94[v127], v123), v100 = FMIPDevice.isConsideredAccessory.getter(), v88(v78, v99), (v100))
  {
    sub_100506C5C();
  }

  else
  {
    sub_100505CF8();
  }

  result = [v94 view];
  if (result)
  {
    v102 = result;
    v103 = [v109 systemBackgroundColor];
    [v102 setBackgroundColor:v103];

    v104 = [v94 contentView];
    [v104 addSubview:*&v94[v119]];

    v105 = [v94 secondaryContentView];
    if (v105)
    {
      v106 = v105;
      v107 = *&v94[OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_bulletedListView];
      [v106 addSubview:v107];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100505C40(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_landingView);

    v5 = *&v4[OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceImage];
    *&v4[OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceImage] = v1;
    v6 = v1;

    [*&v4[OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceImageView] setImage:v6];
  }
}

uint64_t sub_100505CF8()
{
  v135 = type metadata accessor for FMIPFeatures();
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v133 = &v102 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v132 = &v102 - v3;
  v121 = type metadata accessor for FMFConfigValue();
  v119 = *(v121 - 8);
  __chkstk_darwin(v121);
  v118 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v5 - 8);
  *&v136 = &v102 - v6;
  v7 = type metadata accessor for FMIPDeviceState();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v102 - v12;
  v14 = type metadata accessor for FMIPDevice();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_deviceToRemove;
  v19 = v15[2];
  v19(v18, v0 + OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_deviceToRemove, v14, v16);
  v137 = v19;
  FMIPDevice.state.getter();
  v20 = v15[1];
  v129 = v18;
  v127 = v15 + 1;
  v126 = v20;
  v20(v18, v14);
  static FMIPDeviceState.isActivationLocked.getter();
  sub_10000A7C8(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState);
  v21 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v22 = *(v8 + 8);
  v22(v10, v7);
  v22(v13, v7);
  if (v21)
  {
    v23 = 0xD000000000000022;
  }

  else
  {
    v23 = 0xD000000000000024;
  }

  if (v21)
  {
    v24 = "calendar.badge.clock";
  }

  else
  {
    v24 = "2_NOT_WITH_YOU_DESCRIPTION";
  }

  v25 = v138;
  v26 = v136;
  (v19)(v136, &v138[v139], v14);
  v125 = v15[7];
  v125(v26, 0, 1, v14);
  v27 = sub_10022F104(v23, v24 | 0x8000000000000000, v26);
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v120 = sub_10022E0A8(v27, v29, v31, v33, 0, 0);
  v122 = v34;

  swift_bridgeObjectRelease_n();
  sub_100012DF0(v26, &unk_1006BBCE0);
  v116 = objc_opt_self();
  v35 = [v116 mainBundle];
  v143._object = 0x800000010059DF70;
  v36._object = 0x800000010059DF40;
  v143._countAndFlagsBits = 0xD000000000000032;
  v36._countAndFlagsBits = 0xD000000000000020;
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  v38 = NSLocalizedString(_:tableName:bundle:value:comment:)(v36, 0, v35, v37, v143);
  countAndFlagsBits = v38._countAndFlagsBits;
  object = v38._object;

  v128 = v15 + 2;
  v137(v26, &v25[v139], v14);
  v131 = v14;
  v125(v26, 0, 1, v14);
  v39 = sub_10022F104(0xD000000000000022, 0x800000010059DFB0, v26);
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v123 = sub_10022E0A8(v39, v41, v43, v45, 0, 0);
  v125 = v46;

  swift_bridgeObjectRelease_n();
  sub_100012DF0(v26, &unk_1006BBCE0);
  v115 = objc_opt_self();
  v47 = [v115 systemBlueColor];
  v114 = objc_opt_self();
  v113 = UIFontTextStyleTitle1;
  v48 = [v114 preferredFontForTextStyle:?];
  v112 = objc_opt_self();
  v49 = [v112 configurationWithFont:v48];

  v50 = v49;
  v51 = String._bridgeToObjectiveC()();
  v111 = objc_opt_self();
  v52 = [v111 _systemImageNamed:v51 withConfiguration:v50];

  if (v52)
  {
    v53 = v52;
    v117 = [v53 imageWithTintColor:v47 renderingMode:1];
  }

  else
  {

    v117 = 0;
  }

  v109 = "ITLE_REMOVE_PENDING";
  v54 = v116;
  v55 = [v116 mainBundle];
  v110 = 0x800000010058A0D0;
  v56.value._countAndFlagsBits = 0xD000000000000015;
  v107 = 0xD000000000000015;
  v144._countAndFlagsBits = 0xD00000000000001ALL;
  v108 = 0xD00000000000001ALL;
  v144._object = 0x800000010058A0D0;
  v57._object = 0x800000010059E010;
  v56.value._object = 0x800000010058A0B0;
  v57._countAndFlagsBits = 0xD000000000000020;
  v58._countAndFlagsBits = 0;
  v58._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v57, v56, v55, v58, v144);

  v106 = sub_10007EBC0(&unk_1006B20B0);
  v59 = swift_allocObject();
  v136 = xmmword_100552220;
  *(v59 + 16) = xmmword_100552220;
  v105 = enum case for FMFConfigValue.pendingRemoveGracePeriod(_:);
  v60 = v119;
  v104 = *(v119 + 104);
  v61 = v118;
  v62 = v121;
  v104(v118);
  v141 = &type metadata for Int;
  v142 = &protocol witness table for Int;
  v140 = 30;
  sub_10007EBC0(&unk_1006B4230);
  FMFDimplekeyGlobalConfig<A>(_:fallback:)();
  v63 = *(v60 + 8);
  v63(v61, v62);
  sub_100006060(&v140);
  v103 = String.init(format:_:)();
  v119 = v64;

  v65 = [v54 mainBundle];
  v145._object = v110;
  v66._object = 0x800000010059E040;
  v67.value._object = (v109 | 0x8000000000000000);
  v66._countAndFlagsBits = 0xD000000000000022;
  v67.value._countAndFlagsBits = v107;
  v68._countAndFlagsBits = 0;
  v68._object = 0xE000000000000000;
  v145._countAndFlagsBits = v108;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v66, v67, v65, v68, v145);

  *(swift_allocObject() + 16) = v136;
  (v104)(v61, v105, v62);
  v142 = &protocol witness table for Int;
  v141 = &type metadata for Int;
  v140 = 30;
  FMFDimplekeyGlobalConfig<A>(_:fallback:)();
  v63(v61, v62);
  sub_100006060(&v140);
  v69 = String.init(format:_:)();
  v71 = v70;

  v72 = [v115 systemBlueColor];
  v73 = [v114 preferredFontForTextStyle:v113];
  v74 = [v112 configurationWithFont:v73];

  v75 = v74;
  v76 = String._bridgeToObjectiveC()();
  v77 = [v111 _systemImageNamed:v76 withConfiguration:v75];

  if (v77)
  {
    v78 = v77;
    v77 = [v78 imageWithTintColor:v72 renderingMode:1];
  }

  else
  {
  }

  v79 = v138;
  if (!v120 && v122 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
  }

  else
  {
    v80 = [v79 buttonTray];
    v81 = String._bridgeToObjectiveC()();

    [v80 setCaptionText:v81];
  }

  v82 = v129;
  v83 = v131;
  v137(v129, &v79[v139], v131);
  v84 = v132;
  FMIPDevice.features.getter();
  v126(v82, v83);
  v85 = v133;
  static FMIPFeatures.isPendingRemoveCapable.getter();
  sub_10000A7C8(&qword_1006C1D50, &type metadata accessor for FMIPFeatures);
  v86 = v135;
  LOBYTE(v82) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v87 = *(v134 + 8);
  v87(v85, v86);
  v87(v84, v86);
  v88 = *&v79[OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_bulletedListView];
  sub_10007EBC0(&unk_1006B4150);
  inited = swift_initStackObject();
  if (v82)
  {
    *(inited + 16) = xmmword_100552210;
    *(inited + 32) = countAndFlagsBits;
    v90 = v123;
    *(inited + 40) = object;
    *(inited + 48) = v90;
    v91 = v117;
    *(inited + 56) = v125;
    *(inited + 64) = v91;
    v92 = v69;
    v93 = v119;
    *(inited + 72) = v103;
    *(inited + 80) = v93;
    *(inited + 88) = v92;
    *(inited + 96) = v71;
    *(inited + 104) = v77;
    v94 = v77;
    v95 = v88;

    v96 = v91;

    sub_10036F4B4(inited);

    swift_setDeallocating();
    return swift_arrayDestroy();
  }

  else
  {
    *(inited + 16) = v136;
    *(inited + 32) = countAndFlagsBits;
    v98 = v123;
    *(inited + 40) = object;
    *(inited + 48) = v98;
    v99 = v117;
    *(inited + 56) = v125;
    *(inited + 64) = v99;
    v100 = v99;
    v101 = v88;

    sub_10036F4B4(inited);

    swift_setDeallocating();
    return sub_1001D6CF8(inited + 32);
  }
}

uint64_t sub_100506C5C()
{
  v145 = type metadata accessor for FMIPBeaconType();
  v144 = *(v145 - 8);
  __chkstk_darwin(v145);
  v143 = v126 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v142 = v126 - v3;
  v4 = type metadata accessor for FMIPFeatures();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v126 - v9;
  v11 = type metadata accessor for FMIPDevice();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v12 + 16);
  v151 = OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_deviceToRemove;
  v152 = v16;
  (v16)(v15, v0 + OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_deviceToRemove, v11, v13);
  FMIPDevice.features.getter();
  v17 = *(v12 + 8);
  v148 = v11;
  v17(v15, v11);
  static FMIPFeatures.isRemoveUIv2Supported.getter();
  v126[1] = sub_10000A7C8(&qword_1006C1D50, &type metadata accessor for FMIPFeatures);
  LOBYTE(v11) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v18 = *(v5 + 8);
  v129 = v7;
  v18(v7, v4);
  v128 = v10;
  v131 = v4;
  v130 = v5 + 8;
  v127 = v18;
  v18(v10, v4);
  v19 = &OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_title;
  v147 = v12 + 8;
  v146 = v15;
  v150 = v12 + 16;
  v149 = v17;
  if (v11)
  {
    v20 = &v153[OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_viewModel];
    v21 = v153;
    v22 = v20[*(type metadata accessor for FMDeviceDetailViewModel() + 172)];
    v23 = [objc_opt_self() mainBundle];
    v24 = "B532_REMOVE_FOOTNOTE";
    if (v22)
    {
      v24 = "ACCESSORY_REMOVE2_FOOTNOTE";
      v25 = 0xD00000000000002ALL;
    }

    else
    {
      v25 = 0xD00000000000001DLL;
    }

    v154._object = 0x8000000100587910;
    v26 = v24 | 0x8000000000000000;
    v27.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v27.value._object = 0xEC00000031656C62;
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    v154._countAndFlagsBits = 0xD000000000000017;
    v141 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v25, v27, v23, v28, v154);

    v29 = [objc_opt_self() mainBundle];
    v155._object = 0x8000000100587910;
    v30._countAndFlagsBits = 0xD00000000000001ALL;
    v30._object = 0x800000010059DEC0;
    v31.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v31.value._object = 0xEC00000031656C62;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    v155._countAndFlagsBits = 0xD000000000000017;
    v139 = NSLocalizedString(_:tableName:bundle:value:comment:)(v30, v31, v29, v32, v155);
  }

  else
  {
    v33 = v148;
    v152(v15, &v153[v151], v148);
    v34 = FMIPDevice.isLocalFindable.getter();
    v17(v15, v33);
    if (v34)
    {
      v35 = objc_opt_self();
      v36 = [v35 mainBundle];
      v156._object = 0x80000001005797A0;
      v37._object = 0x800000010059DE60;
      v38.value._object = 0x8000000100579780;
      v37._countAndFlagsBits = 0xD000000000000017;
      v38.value._countAndFlagsBits = 0xD000000000000010;
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      v156._countAndFlagsBits = 0xD000000000000015;
      v141 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, v38, v36, v39, v156);

      v40 = [v35 mainBundle];
      v41._countAndFlagsBits = 0xD000000000000014;
      v157._object = 0x80000001005797A0;
      v41._object = 0x800000010059DE80;
      v42.value._object = 0x8000000100579780;
      v42.value._countAndFlagsBits = 0xD000000000000010;
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      v157._countAndFlagsBits = 0xD000000000000015;
      v21 = v153;
      v139 = NSLocalizedString(_:tableName:bundle:value:comment:)(v41, v42, v40, v43, v157);

      v19 = &OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_title;
    }

    else
    {
      v44 = [objc_opt_self() mainBundle];
      v158._object = 0x800000010059DCD0;
      v139._object = 0xE000000000000000;
      v45._countAndFlagsBits = 0xD00000000000001ALL;
      v45._object = 0x800000010059DCB0;
      v158._countAndFlagsBits = 0xD00000000000002CLL;
      v46._countAndFlagsBits = 0;
      v46._object = 0xE000000000000000;
      v141 = NSLocalizedString(_:tableName:bundle:value:comment:)(v45, 0, v44, v46, v158);

      v139._countAndFlagsBits = 0;
      v21 = v153;
    }
  }

  v47 = objc_opt_self();
  v48 = [v47 mainBundle];
  v49.value._countAndFlagsBits = 0xD000000000000013;
  v159._object = 0x8000000100579A00;
  v50._countAndFlagsBits = 0xD00000000000001FLL;
  v50._object = 0x8000000100585BA0;
  v49.value._object = 0x80000001005799E0;
  v159._countAndFlagsBits = 0xD000000000000018;
  v51._countAndFlagsBits = 0;
  v51._object = 0xE000000000000000;
  v52 = NSLocalizedString(_:tableName:bundle:value:comment:)(v50, v49, v48, v51, v159);

  v53 = &v21[v19[175]];
  if (v53[*(type metadata accessor for FMDeviceDetailViewModel() + 172)] == 1)
  {

    v54 = [v47 mainBundle];
    v160._object = 0x8000000100587910;
    v55._countAndFlagsBits = 0xD00000000000002CLL;
    v55._object = 0x800000010059DE30;
    v56.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v56.value._object = 0xEC00000031656C62;
    v57._countAndFlagsBits = 0;
    v57._object = 0xE000000000000000;
    v160._countAndFlagsBits = 0xD000000000000017;
    v140 = NSLocalizedString(_:tableName:bundle:value:comment:)(v55, v56, v54, v57, v160);
  }

  else
  {
    v140 = v52;
  }

  v135 = objc_opt_self();
  v58 = [v135 systemBlueColor];
  v134 = objc_opt_self();
  v59 = [v134 preferredFontForTextStyle:UIFontTextStyleTitle1];
  v60 = objc_opt_self();
  v61 = [v60 configurationWithFont:v59];

  v62 = v61;
  v63 = String._bridgeToObjectiveC()();
  v64 = objc_opt_self();
  v65 = [v64 _systemImageNamed:v63 withConfiguration:v62];

  if (v65)
  {
    v66 = v65;
    v138 = [v66 imageWithTintColor:v58 renderingMode:1];
  }

  else
  {

    v138 = 0;
  }

  v67.super.isa = [v47 mainBundle];
  v161._object = 0x800000010059DD30;
  v68._countAndFlagsBits = 0xD000000000000028;
  v68._object = 0x800000010059DD00;
  v161._countAndFlagsBits = 0xD00000000000003ALL;
  v69._countAndFlagsBits = 0;
  v69._object = 0xE000000000000000;
  v70 = NSLocalizedString(_:tableName:bundle:value:comment:)(v68, 0, v67, v69, v161);
  countAndFlagsBits = v70._countAndFlagsBits;
  object = v70._object;

  v71 = v146;
  v72 = v148;
  v152(v146, &v153[v151], v148);
  LOBYTE(v67.super.isa) = FMIPDevice.isLocalFindable.getter();
  v149(v71, v72);
  if (v67.super.isa)
  {
    v73 = [v47 mainBundle];
    v74 = 0xD000000000000010;
    v75 = 0xD000000000000015;
    v125 = 0x80000001005797A0;
    v76 = 0xD00000000000002ALL;
    v77 = 0x800000010059DE00;
    v78 = 0x8000000100579780;
  }

  else
  {
    v73 = [v47 mainBundle];
    v125 = 0x800000010059DDA0;
    v76 = 0xD00000000000002DLL;
    v77 = 0x800000010059DD70;
    v75 = 0xD00000000000003FLL;
    v74 = 0;
    v78 = 0;
  }

  v79._countAndFlagsBits = 0;
  v79._object = 0xE000000000000000;
  v80 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v76, *&v74, v73, v79, *&v75);
  v132 = v80._countAndFlagsBits;
  v136 = v80._object;

  v81 = [v135 systemBlueColor];
  v82 = [v134 preferredFontForTextStyle:UIFontTextStyleTitle1];
  v83 = [v60 configurationWithFont:v82];

  v84 = v83;
  v85 = String._bridgeToObjectiveC()();
  v86 = [v64 _systemImageNamed:v85 withConfiguration:v84];

  if (v86)
  {
    v87 = v86;
    v135 = [v87 imageWithTintColor:v81 renderingMode:1];
  }

  else
  {

    v135 = 0;
  }

  v88 = v153;
  v89 = v152;
  if (!v139._countAndFlagsBits && v139._object == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
  }

  else
  {
    v90 = [v88 buttonTray];
    v91 = String._bridgeToObjectiveC()();

    [v90 setCaptionText:v91];
  }

  v92 = v146;
  v93 = v148;
  v89(v146, &v88[v151], v148);
  v94 = v88;
  v95 = v142;
  FMIPDevice.beaconType.getter();
  v149(v92, v93);
  v96 = v144;
  v97 = v143;
  v98 = v145;
  (*(v144 + 104))(v143, enum case for FMIPBeaconType.localFindable(_:), v145);
  v99 = static FMIPBeaconType.== infix(_:_:)();
  v100 = *(v96 + 8);
  v100(v97, v98);
  v101 = v95;
  v102 = v94;
  v100(v101, v98);
  if ((v99 & 1) != 0 || (v152(v92, &v94[v151], v93), v103 = v128, FMIPDevice.features.getter(), v149(v92, v93), v104 = v129, static FMIPFeatures.isRemoveUIv2Supported.getter(), v105 = v131, v106 = dispatch thunk of SetAlgebra.isSuperset(of:)(), v107 = v127, v127(v104, v105), v107(v103, v105), (v106 & 1) == 0))
  {
    v115 = *&v102[OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_bulletedListView];
    sub_10007EBC0(&unk_1006B4150);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100552210;
    *(inited + 32) = v140._countAndFlagsBits;
    v117 = v141._countAndFlagsBits;
    *(inited + 40) = v140._object;
    *(inited + 48) = v117;
    v118 = v138;
    *(inited + 56) = v141._object;
    *(inited + 64) = v118;
    v119 = object;
    *(inited + 72) = countAndFlagsBits;
    *(inited + 80) = v119;
    v120 = v136;
    *(inited + 88) = v132;
    *(inited + 96) = v120;
    v121 = v135;
    *(inited + 104) = v135;
    v122 = v121;
    v123 = v115;

    v124 = v118;

    sub_10036F4B4(inited);

    swift_setDeallocating();
    return swift_arrayDestroy();
  }

  else
  {
    v108 = *&v102[OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_bulletedListView];
    sub_10007EBC0(&unk_1006B4150);
    v109 = swift_initStackObject();
    *(v109 + 16) = xmmword_100552220;
    *(v109 + 32) = v140._countAndFlagsBits;
    v110 = v141._countAndFlagsBits;
    *(v109 + 40) = v140._object;
    *(v109 + 48) = v110;
    v111 = v138;
    *(v109 + 56) = v141._object;
    *(v109 + 64) = v111;
    v112 = v111;
    v113 = v108;

    sub_10036F4B4(v109);

    swift_setDeallocating();
    return sub_1001D6CF8(v109 + 32);
  }
}

void sub_100507D28()
{
  v1 = OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_landingView;
  [*&v0[OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_landingView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_bulletedListView;
  [*&v0[OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_bulletedListView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1005521F0;
  v5 = [*&v0[v1] topAnchor];
  v6 = [v0 contentView];
  v7 = [v6 topAnchor];

  v8 = [v5 constraintEqualToAnchor:v7];
  *(v4 + 32) = v8;
  v9 = [*&v0[v1] bottomAnchor];
  v10 = [v0 contentView];
  v11 = [v10 bottomAnchor];

  v12 = [v9 constraintEqualToAnchor:v11];
  *(v4 + 40) = v12;
  v13 = [*&v0[v1] leadingAnchor];
  v14 = [v0 contentView];
  v15 = [v14 leadingAnchor];

  v16 = [v13 constraintEqualToAnchor:v15];
  *(v4 + 48) = v16;
  v17 = [*&v0[v1] trailingAnchor];
  v18 = [v0 contentView];
  v19 = [v18 trailingAnchor];

  v20 = [v17 constraintEqualToAnchor:v19];
  *(v4 + 56) = v20;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:isa];

  v22 = [v0 secondaryContentView];
  if (v22)
  {
    v23 = v22;
    [*&v0[v2] setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1005521F0;
    v25 = [*&v0[v2] topAnchor];
    v26 = [v23 topAnchor];
    v27 = [v25 constraintEqualToAnchor:v26 constant:32.0];

    *(v24 + 32) = v27;
    v28 = [*&v0[v2] bottomAnchor];
    v29 = [v23 bottomAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];

    *(v24 + 40) = v30;
    v31 = [*&v0[v2] leadingAnchor];
    v32 = [v23 leadingAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];

    *(v24 + 48) = v33;
    v34 = [*&v0[v2] trailingAnchor];
    v35 = [v23 trailingAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];

    *(v24 + 56) = v36;
    v37 = Array._bridgeToObjectiveC()().super.isa;

    [v3 activateConstraints:v37];
  }
}

void sub_100508240()
{
  v1 = type metadata accessor for FMIPFeatures();
  v2 = *(v1 - 8);
  v38 = v1;
  v39 = v2;
  __chkstk_darwin(v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v34 - v6;
  v8 = type metadata accessor for FMIPDevice();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v36 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  v14 = *(v0 + OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_removeButton);
  v15 = [objc_opt_self() mainBundle];
  v42._object = 0x8000000100579A00;
  v16._countAndFlagsBits = 0xD000000000000017;
  v16._object = 0x8000000100585CF0;
  v17.value._object = 0x80000001005799E0;
  v42._countAndFlagsBits = 0xD000000000000018;
  v17.value._countAndFlagsBits = 0xD000000000000013;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v42);

  v19 = String._bridgeToObjectiveC()();

  v40 = v14;
  [v14 setTitle:v19 forState:0];

  v20 = *(v9 + 16);
  v34 = OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_deviceToRemove;
  v35 = v20;
  v20(v13, &v41[OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_deviceToRemove], v8);
  FMIPDevice.features.getter();
  v21 = *(v9 + 8);
  v37 = v8;
  v21(v13, v8);
  static FMIPFeatures.isRemoveUIv2Supported.getter();
  sub_10000A7C8(&qword_1006C1D50, &type metadata accessor for FMIPFeatures);
  v22 = v38;
  LOBYTE(v19) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v23 = *(v39 + 8);
  v23(v4, v22);
  v23(v7, v22);
  if (v19)
  {
    v24 = &selRef_performRemoveAccessory;
    v25 = v41;
  }

  else
  {
    v25 = v41;
    v27 = v34;
    v26 = v35;
    v29 = v36;
    v28 = v37;
    v35(v36, &v41[v34], v37);
    v30 = FMIPDevice.isConsideredAccessory.getter();
    v21(v29, v28);
    if (v30 & 1) != 0 && (v26(v13, &v25[v27], v28), v31 = FMIPDevice.isAppleAudioAccessory.getter(), v21(v13, v28), (v31))
    {
      v24 = &selRef_removeItem;
    }

    else
    {
      v24 = &selRef_performRemoveDevice;
    }
  }

  v32 = v40;
  [v40 addTarget:v25 action:*v24 forControlEvents:64];
  v33 = [v25 buttonTray];
  [v33 addButton:v32];
}

uint64_t sub_100508668()
{
  v1 = v0;
  v2 = sub_10007EBC0(&unk_1006BEF30);
  __chkstk_darwin(v2 - 8);
  v57 = &v51 - v3;
  v4 = type metadata accessor for FMIPDevice();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&qword_1006C35F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v51 - v9;
  v11 = type metadata accessor for DeviceUseCase();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v55 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v56 = &v51 - v15;
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();

  if (sub_10050AC38())
  {
    v54 = v16;
    (*(v5 + 16))(v7, v0 + OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_deviceToRemove, v4);
    FMIPDevice.category.getter();
    (*(v5 + 8))(v7, v4);
    sub_10050A7B8(v10);

    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_100012DF0(v10, &qword_1006C35F0);
      sub_100508DA4();

      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100005B14(v17, qword_1006D4630);
      v18 = v0;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v58 = v22;
        *v21 = 136315138;
        v23 = v18;
        v24 = [v23 description];
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v28 = sub_100005B4C(v25, v27, &v58);

        *(v21 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v19, v20, "%s: Cannot get appropriate device class", v21, 0xCu);
        sub_100006060(v22);
      }
    }

    else
    {
      v42 = v54;

      v53 = *(v12 + 32);
      v43 = v56;
      v53(v56, v10, v11);
      v44 = type metadata accessor for TaskPriority();
      (*(*(v44 - 8) + 56))(v57, 1, 1, v44);
      v45 = v55;
      (*(v12 + 16))(v55, v43, v11);
      type metadata accessor for MainActor();

      v52 = v1;
      v46 = static MainActor.shared.getter();
      v47 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v48 = (v13 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
      v49 = swift_allocObject();
      *(v49 + 16) = v46;
      *(v49 + 24) = &protocol witness table for MainActor;
      v53((v49 + v47), v45, v11);
      v50 = (v49 + v48);
      *v50 = sub_10050FCA0;
      v50[1] = v42;
      *(v49 + ((v48 + 23) & 0xFFFFFFFFFFFFFFF8)) = v52;
      sub_100170C90(0, 0, v57, &unk_100565388, v49);

      return (*(v12 + 8))(v56, v11);
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100005B14(v30, qword_1006D4630);
    v31 = v0;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v58 = v35;
      *v34 = 136315138;
      v36 = v31;
      v37 = [v36 description];
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      v41 = sub_100005B4C(v38, v40, &v58);

      *(v34 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v32, v33, "%s: Does not need to show disclaimer", v34, 0xCu);
      sub_100006060(v35);
    }

    sub_100508DA4();
  }
}

uint64_t sub_100508DA4()
{
  v0 = type metadata accessor for FMIPDevice();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = *(result + OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_landingView);
    v6[OBJC_IVAR____TtC6FindMy19FMActionLandingView_showsActivity] = 1;
    v7 = v6;
    sub_1001C29D8();

    v8 = [v5 navigationItem];
    v9 = [v8 leftBarButtonItem];

    if (v9)
    {
      [v9 setEnabled:0];
    }

    (*(v1 + 16))(v3, v5 + OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_deviceToRemove, v0);
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1000DE700(v3, v5, sub_10050FDFC, v10);

    (*(v1 + 8))(v3, v0);
  }

  return result;
}

void sub_100508FC4(uint64_t a1, uint64_t a2)
{
  v72 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v71 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v70 = *(v6 - 8);
  __chkstk_darwin(v6);
  v69 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v64 - v9;
  v11 = type metadata accessor for FMIPActionStatus();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v16 = Strong;
  v67 = v4;
  v68 = v3;
  v66 = v6;
  if (!a2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_8;
  }

  swift_getErrorValue();
  v17 = sub_100271E80(v73);
  v19 = v18;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v19)
  {
LABEL_8:

    v22 = 0;
    goto LABEL_11;
  }

  if (v17 == v20 && v19 == v21)
  {

LABEL_10:
    swift_getErrorValue();
    v22 = sub_100271D20(v74) == -7003;
    goto LABEL_11;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v22 = 0;
  if (v23)
  {
    goto LABEL_10;
  }

LABEL_11:
  (*(v12 + 104))(v14, enum case for FMIPActionStatus.error(_:), v11);
  sub_10000A7C8(&qword_1006C1D70, &type metadata accessor for FMIPActionStatus);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v12 + 8))(v14, v11);
  if (aBlock != v81)
  {
    [v16 dismissViewControllerAnimated:1 completion:0];
    sub_10050EB60();
LABEL_16:

    return;
  }

  v24 = *&v16[OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_landingView];
  v24[OBJC_IVAR____TtC6FindMy19FMActionLandingView_showsActivity] = 0;
  v25 = v24;
  sub_1001C29D8();

  if (v22)
  {
    v26 = [v16 navigationItem];
    v27 = [v26 leftBarButtonItem];

    if (v27)
    {
      [v27 setEnabled:1];
    }

    goto LABEL_16;
  }

  v28 = OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_deviceToRemove;
  v65 = OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_deviceToRemove;
  v29 = type metadata accessor for FMIPDevice();
  v30 = *(v29 - 8);
  v64 = *(v30 + 16);
  v64(v10, &v16[v28], v29);
  v31 = *(v30 + 56);
  v31(v10, 0, 1, v29);
  v32 = sub_10022F104(0xD00000000000001FLL, 0x800000010059DC60, v10);
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v72 = sub_10022E0A8(v32, v34, v36, v38, 0, 0);

  swift_bridgeObjectRelease_n();
  sub_100012DF0(v10, &unk_1006BBCE0);
  v64(v10, &v16[v65], v29);
  v31(v10, 0, 1, v29);
  v39 = sub_10022F104(0xD000000000000021, 0x800000010059DC80, v10);
  v41 = v40;
  v43 = v42;
  v45 = v44;

  sub_10022E0A8(v39, v41, v43, v45, 0, 0);

  swift_bridgeObjectRelease_n();
  sub_100012DF0(v10, &unk_1006BBCE0);
  v46 = String._bridgeToObjectiveC()();

  v47 = String._bridgeToObjectiveC()();

  v48 = [objc_opt_self() alertControllerWithTitle:v46 message:v47 preferredStyle:1];

  v49 = [objc_opt_self() mainBundle];
  v82._object = 0x8000000100579B60;
  v50._countAndFlagsBits = 0x4F545455425F4B4FLL;
  v50._object = 0xEF454C5449545F4ELL;
  v51._countAndFlagsBits = 0;
  v51._object = 0xE000000000000000;
  v82._countAndFlagsBits = 0xD000000000000021;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v50, 0, v49, v51, v82);

  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v53 = String._bridgeToObjectiveC()();

  v79 = sub_10050FE04;
  v80 = v52;
  aBlock = _NSConcreteStackBlock;
  v76 = 1107296256;
  v77 = sub_100017328;
  v78 = &unk_100644358;
  v54 = _Block_copy(&aBlock);

  v55 = [objc_opt_self() actionWithTitle:v53 style:0 handler:v54];
  _Block_release(v54);

  [v48 addAction:v55];
  sub_10000905C(0, &qword_1006AEDC0);
  v56 = static OS_dispatch_queue.main.getter();
  v57 = swift_allocObject();
  *(v57 + 16) = v16;
  *(v57 + 24) = v48;
  v79 = sub_1000C5F48;
  v80 = v57;
  aBlock = _NSConcreteStackBlock;
  v76 = 1107296256;
  v77 = sub_100004AE4;
  v78 = &unk_1006443A8;
  v58 = _Block_copy(&aBlock);
  v59 = v16;
  v60 = v48;
  v61 = v69;
  static DispatchQoS.unspecified.getter();
  v81 = _swiftEmptyArrayStorage;
  sub_10000A7C8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  v62 = v71;
  v63 = v68;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v58);

  (*(v67 + 8))(v62, v63);
  (*(v70 + 8))(v61, v66);
}

void sub_100509A40()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong navigationItem];

    v3 = [v2 leftBarButtonItem];
    if (v3)
    {
      [v3 setEnabled:1];
    }
  }
}

uint64_t sub_100509AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v7[13] = v8;
  v7[14] = *(v8 - 8);
  v7[15] = swift_task_alloc();
  v9 = type metadata accessor for DispatchQoS();
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();
  v10 = type metadata accessor for TheftAndLossDisclaimerContext.UseCase();
  v7[19] = v10;
  v7[20] = *(v10 - 8);
  v7[21] = swift_task_alloc();
  v11 = type metadata accessor for TheftAndLossDisclaimerContext();
  v7[22] = v11;
  v7[23] = *(v11 - 8);
  v7[24] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[25] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[26] = v13;
  v7[27] = v12;

  return _swift_task_switch(sub_100509CF0, v13, v12);
}

uint64_t sub_100509CF0()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[9];
  v5 = type metadata accessor for DeviceUseCase();
  (*(*(v5 - 8) + 16))(v1, v4, v5);
  (*(v2 + 104))(v1, enum case for TheftAndLossDisclaimerContext.UseCase.findMyApp(_:), v3);
  TheftAndLossDisclaimerContext.init(useCase:serialNumber:)();
  type metadata accessor for TheftAndLossModalBuilder();
  v6 = swift_allocObject();
  v0[28] = v6;
  swift_unknownObjectWeakInit();

  v7 = swift_task_alloc();
  v0[29] = v7;
  *v7 = v0;
  v7[1] = sub_100509E7C;
  v8 = v0[24];
  v9 = v0[10];
  v10 = v0[11];

  return static TheftAndLossModalBuilder.disclaimerViewController(context:confirmActionHandler:cancelActionHandler:)(v8, v9, v10, sub_10050FDEC, v6);
}

uint64_t sub_100509E7C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v5 = v4[26];
    v6 = v4[27];
    v7 = sub_10050A284;
  }

  else
  {

    v4[31] = a1;
    v5 = v4[26];
    v6 = v4[27];
    v7 = sub_100509FD0;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100509FD0()
{
  v1 = v0[31];
  v17 = v0[22];
  v18 = v0[24];
  v2 = v0[18];
  v3 = v0[15];
  v15 = v0[16];
  v16 = v0[23];
  v4 = v0[13];
  v13 = v0[14];
  v14 = v0[17];
  v5 = v0[12];

  sub_10000905C(0, &qword_1006AEDC0);
  v12 = static OS_dispatch_queue.main.getter();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v1;
  v0[6] = sub_10050FDF4;
  v0[7] = v6;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100004AE4;
  v0[5] = &unk_100644330;
  v7 = _Block_copy(v0 + 2);
  v8 = v5;
  v11 = v1;
  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_10000A7C8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v7);

  (*(v13 + 8))(v3, v4);
  (*(v14 + 8))(v2, v15);
  (*(v16 + 8))(v18, v17);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10050A284()
{
  v23 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);

  (*(v3 + 8))(v1, v2);

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 96);
  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);
  v6 = v4;
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 96);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v10 = 136315394;
    v13 = v9;
    v14 = [v13 description];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = sub_100005B4C(v15, v17, &v22);

    *(v10 + 4) = v18;
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v19;
    *v11 = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: Error for TNL: %@", v10, 0x16u);
    sub_100012DF0(v11, &unk_1006AF760);

    sub_100006060(v12);
  }

  (*(v0 + 80))();

  v20 = *(v0 + 8);

  return v20();
}

void sub_10050A538()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005B14(v0, qword_1006D4630);

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    sub_10007EBC0(&qword_1006C35F8);
    v4 = String.init<A>(describing:)();
    v6 = sub_100005B4C(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s: User cancelled action on TnLDisclaimer", v2, 0xCu);
    sub_100006060(v3);
  }

  else
  {
  }
}

void sub_10050A6F4(void *a1, uint64_t a2)
{
  v3 = [a1 navigationController];
  if (v3)
  {
    v4 = v3;
    [v3 pushViewController:a2 animated:1];
  }
}

uint64_t sub_10050A7B8@<X0>(uint64_t a1@<X8>)
{
  v2 = String.lowercased()();
  v3 = String.lowercased()();
  if (v3._countAndFlagsBits != v2._countAndFlagsBits || v3._object != v2._object)
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      goto LABEL_8;
    }

    v14 = String.lowercased()();
    if (v14._countAndFlagsBits == v2._countAndFlagsBits && v14._object == v2._object)
    {

LABEL_17:

      v6 = &enum case for DeviceUseCase.iPad(_:);
      goto LABEL_9;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      goto LABEL_17;
    }

    v16 = String.lowercased()();
    if (v16._countAndFlagsBits == v2._countAndFlagsBits && v16._object == v2._object)
    {

LABEL_22:

      v6 = &enum case for DeviceUseCase.watch(_:);
      goto LABEL_9;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      goto LABEL_22;
    }

    v18 = String.lowercased()();
    if (v18._countAndFlagsBits != v2._countAndFlagsBits || v18._object != v2._object)
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {
        goto LABEL_27;
      }

      v21 = String.lowercased()();
      if (v21._countAndFlagsBits != v2._countAndFlagsBits || v21._object != v2._object)
      {
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v22 & 1) == 0)
        {
          String.lowercased()();
          sub_100035F3C();
          v23 = StringProtocol.contains<A>(_:)();

          if (v23)
          {
            v24 = enum case for DeviceUseCase.mac(_:);
            v25 = type metadata accessor for DeviceUseCase();
            v26 = *(v25 - 8);
            (*(v26 + 104))(a1, v24, v25);
            return (*(v26 + 56))(a1, 0, 1, v25);
          }

          else
          {
            v27 = type metadata accessor for DeviceUseCase();
            return (*(*(v27 - 8) + 56))(a1, 1, 1, v27);
          }
        }

        goto LABEL_28;
      }
    }

LABEL_27:

LABEL_28:
    v20 = type metadata accessor for DeviceUseCase();
    v9 = *(*(v20 - 8) + 56);
    v12 = v20;
    v10 = a1;
    v11 = 1;
    goto LABEL_10;
  }

LABEL_8:

  v6 = &enum case for DeviceUseCase.iPhone(_:);
LABEL_9:
  v7 = *v6;
  v8 = type metadata accessor for DeviceUseCase();
  v28 = *(v8 - 8);
  (*(v28 + 104))(a1, v7, v8);
  v9 = *(v28 + 56);
  v10 = a1;
  v11 = 0;
  v12 = v8;
LABEL_10:

  return v9(v10, v11, 1, v12);
}

uint64_t sub_10050AC38()
{
  v1 = type metadata accessor for FMIPDevice.BrassStatus();
  v85 = *(v1 - 8);
  __chkstk_darwin(v1);
  v84 = &v74 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for FMIPDeviceState();
  v91 = *(v3 - 8);
  __chkstk_darwin(v3);
  v89 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v88 = &v74 - v6;
  v7 = type metadata accessor for FMIPDevice();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  My = type metadata accessor for Feature.FindMy();
  v92[3] = My;
  v92[4] = sub_10000A7C8(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
  v12 = sub_100008FC0(v92);
  (*(*(My - 8) + 104))(v12, enum case for Feature.FindMy.flyingUnicorn(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(v92);
  if (My)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100005B14(v13, qword_1006D4630);
    v90 = v0;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v81 = v8;
      v17 = v16;
      v80 = swift_slowAlloc();
      v92[0] = v80;
      *v17 = 136315906;
      v18 = v90;
      v79 = v15;
      v19 = v18;
      v20 = [v18 description];
      v78 = v14;
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v86 = v3;
      v87 = v7;
      v23 = v22;
      v25 = v24;

      v26 = sub_100005B4C(v23, v25, v92);

      *(v17 + 4) = v26;
      *(v17 + 12) = 2080;
      v27 = OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_deviceToRemove;
      v28 = *(v81 + 16);
      v82 = (v81 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v83 = OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_deviceToRemove;
      v28(v10, &v19[OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_deviceToRemove], v87);
      v29 = FMIPDevice.identifier.getter();
      v31 = v30;
      v77 = v1;
      v32 = *(v81 + 8);
      v32(v10, v87);
      v76 = v32;
      v33 = sub_100005B4C(v29, v31, v92);

      v75 = v17;
      *(v17 + 14) = v33;
      *(v17 + 22) = 1024;
      v28(v10, &v19[v27], v87);
      v34 = v88;
      FMIPDevice.state.getter();
      v32(v10, v87);
      v35 = v89;
      static FMIPDeviceState.isThisDevice.getter();
      sub_10000A7C8(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState);
      LOBYTE(v33) = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v36 = v35;
      v37 = *(v91 + 8);
      v37(v36, v86);
      v37(v34, v86);

      v38 = v75;
      *(v75 + 24) = (v33 & 1) == 0;

      *(v38 + 28) = 2080;
      v39 = &v83[v19];
      v83 = v28;
      v28(v10, v39, v87);
      v3 = v86;
      v7 = v87;
      v40 = v84;
      FMIPDevice.brassStatus.getter();
      v76(v10, v7);
      v41 = FMIPDevice.BrassStatus.rawValue.getter();
      v43 = v42;
      (*(v85 + 8))(v40, v77);
      v44 = sub_100005B4C(v41, v43, v92);

      *(v38 + 30) = v44;
      v45 = v78;
      _os_log_impl(&_mh_execute_header, v78, v79, "%s: %s:\nisThisDevice:%{BOOL}d,\nbrassStatus: %s", v38, 0x26u);
      swift_arrayDestroy();

      v8 = v81;
    }

    else
    {

      v63 = v90;
      v64 = *(v8 + 16);
      v82 = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v83 = v64;
    }

    v65 = OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_deviceToRemove;
    (v83)(v10, &v90[OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_deviceToRemove], v7);
    v66 = v88;
    FMIPDevice.state.getter();
    v67 = *(v8 + 8);
    v67(v10, v7);
    v68 = v89;
    static FMIPDeviceState.isThisDevice.getter();
    sub_10000A7C8(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState);
    v69 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v70 = v68;
    v71 = *(v91 + 8);
    v71(v70, v3);
    v71(v66, v3);
    if ((v69 & 1) == 0)
    {
      (v83)(v10, &v90[v65], v7);
      v72 = FMIPDevice.isBrassStatusTrue.getter();
      v67(v10, v7);
      return v72 & 1;
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_100005B14(v46, qword_1006D4630);
    v47 = v0;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v92[0] = v91;
      *v50 = 136315394;
      v51 = v47;
      v52 = [v51 description];
      v53 = v8;
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v7;
      v57 = v56;

      v58 = sub_100005B4C(v54, v57, v92);

      *(v50 + 4) = v58;
      *(v50 + 12) = 2080;
      (*(v53 + 16))(v10, v51 + OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_deviceToRemove, v55);
      v59 = FMIPDevice.debugDescription.getter();
      v61 = v60;
      (*(v53 + 8))(v10, v55);
      v62 = sub_100005B4C(v59, v61, v92);

      *(v50 + 14) = v62;
      _os_log_impl(&_mh_execute_header, v48, v49, "%s: %s cannot be removed, feature flag needs to be turned on", v50, 0x16u);
      swift_arrayDestroy();
    }
  }

  v72 = 0;
  return v72 & 1;
}

void sub_10050B560()
{
  v1 = &v0[OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_viewModel];
  if (v1[*(type metadata accessor for FMDeviceDetailViewModel() + 172)] == 1)
  {
    v2 = objc_opt_self();
    v3 = [v2 mainBundle];
    v32._object = 0x8000000100587910;
    v4._countAndFlagsBits = 0xD00000000000002CLL;
    v4._object = 0x800000010059DB90;
    v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v5.value._object = 0xEC00000031656C62;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    v32._countAndFlagsBits = 0xD000000000000017;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v32);

    v7 = [v2 mainBundle];
    v33._object = 0x8000000100587910;
    v8._countAndFlagsBits = 0xD000000000000032;
    v8._object = 0x800000010059DBC0;
    v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v9.value._object = 0xEC00000031656C62;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v33._countAndFlagsBits = 0xD000000000000017;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v33);

    v11 = [v2 mainBundle];
    v34._object = 0x8000000100587910;
    v12._countAndFlagsBits = 0xD00000000000002DLL;
    v12._object = 0x800000010059DC00;
    v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v13.value._object = 0xEC00000031656C62;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v34._countAndFlagsBits = 0xD000000000000017;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v34);

    v15 = [v2 mainBundle];
    v35._object = 0x8000000100587910;
    v16._countAndFlagsBits = 0xD00000000000002ELL;
    v16._object = 0x800000010059DC30;
    v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v17.value._object = 0xEC00000031656C62;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v35._countAndFlagsBits = 0xD000000000000017;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v35);

    v19 = String._bridgeToObjectiveC()();

    v20 = String._bridgeToObjectiveC()();

    v21 = [objc_opt_self() alertControllerWithTitle:v19 message:v20 preferredStyle:1];

    v22 = String._bridgeToObjectiveC()();

    v23 = objc_opt_self();
    v24 = [v23 actionWithTitle:v22 style:1 handler:0];

    v25 = swift_allocObject();
    *(v25 + 16) = v0;
    v26 = v0;
    v27 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_10050FC7C;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100017328;
    aBlock[3] = &unk_100644290;
    v28 = _Block_copy(aBlock);

    v29 = [v23 actionWithTitle:v27 style:2 handler:v28];
    _Block_release(v28);

    [v21 addAction:v29];
    [v21 addAction:v24];
    [v26 presentViewController:v21 animated:1 completion:0];
  }

  else
  {

    sub_10050B9F0();
  }
}

uint64_t sub_10050B9F0()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPDevice();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100005B14(v6, qword_1006D4630);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "FMRemoveDeviceViewController: Remove device button pressed for accessory", v9, 2u);
  }

  v10 = *&v1[OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_landingView];
  v10[OBJC_IVAR____TtC6FindMy19FMActionLandingView_showsActivity] = 1;
  v11 = v10;
  sub_1001C29D8();

  v12 = [v1 navigationItem];
  v13 = [v12 leftBarButtonItem];

  if (v13)
  {
    [v13 setEnabled:0];
  }

  (*(v3 + 16))(v5, &v1[OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_deviceToRemove], v2);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;

  sub_1000DE700(v5, v1, sub_10050FC6C, v14);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10050BC8C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v54 = *(v9 - 8);
  __chkstk_darwin(v9);
  v53 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMIPActionStatus();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, enum case for FMIPActionStatus.error(_:), v11, v13);
  sub_10000A7C8(&qword_1006C1D70, &type metadata accessor for FMIPActionStatus);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v12 + 8))(v15, v11);
  if (aBlock != v61)
  {
    return sub_10050EB60();
  }

  v16 = *&a4[OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_landingView];
  v16[OBJC_IVAR____TtC6FindMy19FMActionLandingView_showsActivity] = 0;
  v17 = v16;
  sub_1001C29D8();

  v51 = v5;
  v18 = objc_opt_self();
  v48 = a4;
  v19 = [v18 mainBundle];
  v52 = v6;
  v62._object = 0x8000000100587910;
  v20._countAndFlagsBits = 0xD000000000000022;
  v20._object = 0x800000010059DB30;
  v21.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v21.value._object = 0xEC00000031656C62;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v62._countAndFlagsBits = 0xD000000000000017;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v21, v19, v22, v62);
  v49 = v8;

  v50 = v9;
  v23 = [v18 mainBundle];
  v63._object = 0x8000000100587910;
  v24._countAndFlagsBits = 0xD000000000000024;
  v24._object = 0x800000010059DB60;
  v25.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v25.value._object = 0xEC00000031656C62;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v63._countAndFlagsBits = 0xD000000000000017;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v25, v23, v26, v63);

  v27 = String._bridgeToObjectiveC()();

  v28 = String._bridgeToObjectiveC()();

  v29 = [objc_opt_self() alertControllerWithTitle:v27 message:v28 preferredStyle:1];

  v30 = [v18 mainBundle];
  v64._object = 0x8000000100579B60;
  v31._countAndFlagsBits = 0x4F545455425F4B4FLL;
  v31._object = 0xEF454C5449545F4ELL;
  v64._countAndFlagsBits = 0xD000000000000021;
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v31, 0, v30, v32, v64);

  v33 = swift_allocObject();
  v34 = v48;
  *(v33 + 16) = v48;
  v35 = v34;
  v36 = String._bridgeToObjectiveC()();

  v59 = sub_10050FC74;
  v60 = v33;
  aBlock = _NSConcreteStackBlock;
  v56 = 1107296256;
  v57 = sub_100017328;
  v58 = &unk_1006441F0;
  v37 = _Block_copy(&aBlock);

  v38 = [objc_opt_self() actionWithTitle:v36 style:0 handler:v37];
  _Block_release(v37);

  [v29 addAction:v38];
  sub_10000905C(0, &qword_1006AEDC0);
  v39 = static OS_dispatch_queue.main.getter();
  v40 = swift_allocObject();
  *(v40 + 16) = v35;
  *(v40 + 24) = v29;
  v59 = sub_10050FE60;
  v60 = v40;
  aBlock = _NSConcreteStackBlock;
  v56 = 1107296256;
  v57 = sub_100004AE4;
  v58 = &unk_100644240;
  v41 = _Block_copy(&aBlock);
  v42 = v35;
  v43 = v29;

  v44 = v53;
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10000A7C8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  v45 = v49;
  v46 = v51;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v41);

  (*(v52 + 8))(v45, v46);
  return (*(v54 + 8))(v44, v50);
}

void sub_10050C404(int a1, id a2)
{
  v2 = [a2 navigationItem];
  v3 = [v2 leftBarButtonItem];

  if (v3)
  {
    [v3 setEnabled:1];
  }
}

void sub_10050C4E8()
{
  v1 = v0;
  v2 = sub_10007EBC0(&unk_1006BB1C0);
  __chkstk_darwin(v2 - 8);
  v4 = v33 - v3;
  v5 = type metadata accessor for FMIPDevice();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMIPItemGroup();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v33[1] = v11;
  v34 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v35 = v33 - v13;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100005B14(v14, qword_1006D4630);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v33[0] = v5;
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "FMRemoveDeviceViewController: Remove device button pressed", v17, 2u);
    v5 = v33[0];
  }

  (*(v6 + 16))(v8, &v1[OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_deviceToRemove], v5);
  FMIPDevice.itemGroup.getter();
  (*(v6 + 8))(v8, v5);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_100012DF0(v4, &unk_1006BB1C0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "FMRemoveDeviceViewController: Can't remove an unknown device", v20, 2u);
    }
  }

  else
  {
    v33[0] = *(v10 + 32);
    v21 = v35;
    (v33[0])(v35, v4, v9);
    [v1 setModalInPresentation:1];
    v22 = v1;
    v23 = [objc_opt_self() mainBundle];
    v36._object = 0x800000010059D890;
    v24._object = 0x800000010059D860;
    v36._countAndFlagsBits = 0xD00000000000003ALL;
    v24._countAndFlagsBits = 0xD000000000000028;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v36);

    v27 = *(*&v22[OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_mediator] + 16);
    v28 = v34;
    (*(v10 + 16))(v34, v21, v9);
    v29 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v22;
    (v33[0])(v30 + v29, v28, v9);
    v31 = v10;
    v32 = v27;
    sub_1003DCB60(v32, v26._countAndFlagsBits, v26._object, v22, sub_10050FA10, v30);

    (*(v31 + 8))(v35, v9);
  }
}

void sub_10050CA20(char a1, NSObject *a2, uint64_t a3)
{
  v6 = type metadata accessor for FMIPItemGroup();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v39 = v9;
    v40 = a3;
    v11 = objc_opt_self();
    v41 = a2;
    v12 = [v11 mainBundle];
    v44._object = 0x800000010059D8F0;
    v13._object = 0x800000010059D8D0;
    v44._countAndFlagsBits = 0xD00000000000002DLL;
    v13._countAndFlagsBits = 0xD00000000000001BLL;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v38[1] = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v44)._countAndFlagsBits;

    v15 = [v11 mainBundle];
    v45._object = 0x800000010059D950;
    v16._countAndFlagsBits = 0xD000000000000022;
    v16._object = 0x800000010059D920;
    v45._countAndFlagsBits = 0xD000000000000034;
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    v38[0] = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v45)._countAndFlagsBits;

    v18 = [v11 mainBundle];
    v46._object = 0x800000010059D9C0;
    v19._countAndFlagsBits = 0xD000000000000023;
    v19._object = 0x800000010059D990;
    v46._countAndFlagsBits = 0xD000000000000035;
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    v38[2] = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v46)._countAndFlagsBits;

    v21 = String._bridgeToObjectiveC()();

    v22 = [objc_opt_self() alertControllerWithTitle:0 message:v21 preferredStyle:0];

    v23 = String._bridgeToObjectiveC()();

    v24 = objc_opt_self();
    v25 = [v24 actionWithTitle:v23 style:1 handler:0];

    v26 = v39;
    (*(v7 + 16))(v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v40, v39);
    v27 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v28 = swift_allocObject();
    v29 = v41;
    *(v28 + 16) = v41;
    (*(v7 + 32))(v28 + v27, v10, v26);
    v30 = v29;
    v31 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_10050FA84;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100017328;
    aBlock[3] = &unk_100644100;
    v32 = _Block_copy(aBlock);

    v33 = [v24 actionWithTitle:v31 style:2 handler:v32];
    _Block_release(v32);

    [v22 addAction:v33];
    [v22 addAction:v25];
    [v30 presentViewController:v22 animated:1 completion:0];
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100005B14(v34, qword_1006D4630);
    v41 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v41, v35, "FMRemoveDeviceViewController: Couldn't remove item, BT is off", v36, 2u);
    }

    v37 = v41;
  }
}

uint64_t sub_10050CF44(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = type metadata accessor for FMIPItemGroup();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = *&a2[OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_landingView];
  v8[OBJC_IVAR____TtC6FindMy19FMActionLandingView_showsActivity] = 1;
  v9 = v8;
  sub_1001C29D8();

  v10 = [a2 headerView];
  v11 = [objc_opt_self() mainBundle];
  v24._object = 0x800000010059DA20;
  v12._object = 0x800000010059DA00;
  v24._countAndFlagsBits = 0xD000000000000028;
  v12._countAndFlagsBits = 0xD000000000000016;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v24);

  v14 = String._bridgeToObjectiveC()();

  [v10 setTitle:v14];

  v15 = [a2 navigationItem];
  v16 = [v15 leftBarButtonItem];

  if (v16)
  {
    [v16 setEnabled:0];
  }

  v17 = *(v6 + 16);
  v17(&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  type metadata accessor for FMIPRemoveItemGroupAction();
  swift_allocObject();
  v18 = FMIPRemoveItemGroupAction.init(itemGroup:forced:)();
  v17(&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v19 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  (*(v6 + 32))(v20 + v19, &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  v21 = a2;
  sub_1000D7974(v18, sub_10050FBBC, v20);
}

void sub_10050D258(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = sub_10007EBC0(&qword_1006B6598);
  __chkstk_darwin(v8 - 8);
  v82 = (&v76 - v9);
  v10 = type metadata accessor for FMIPItemActionControllerError();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v76 - v15;
  __chkstk_darwin(v17);
  v19 = &v76 - v18;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = sub_100005B14(v20, qword_1006D4630);
  swift_errorRetain();
  v79 = v21;
  v22 = a3;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v81 = v11;
    v26 = v25;
    v27 = swift_slowAlloc();
    v80 = v16;
    v77 = v27;
    v83 = v22;
    aBlock[0] = v27;
    *v26 = 136315138;
    sub_10007EBC0(&qword_1006B9570);
    v78 = v22;
    v28 = Optional.debugDescription.getter();
    v30 = a5;
    v31 = a4;
    v32 = v10;
    v33 = v13;
    v34 = v19;
    v35 = sub_100005B4C(v28, v29, aBlock);

    *(v26 + 4) = v35;
    v19 = v34;
    v13 = v33;
    v10 = v32;
    a4 = v31;
    a5 = v30;
    _os_log_impl(&_mh_execute_header, v23, v24, "FMRemoveDeviceViewController: Performed action successfuly? %s", v26, 0xCu);
    sub_100006060(v77);
    v16 = v80;

    v11 = v81;

    v36 = v78;
    v37 = v82;
    if (v78)
    {
      goto LABEL_5;
    }

LABEL_8:
    (v11[7])(v37, 1, 1, v10);
    sub_100012DF0(v37, &qword_1006B6598);
    sub_10050EB60();
    return;
  }

  v36 = v22;
  v37 = v82;
  if (!v36)
  {
    goto LABEL_8;
  }

LABEL_5:
  aBlock[0] = v36;
  swift_errorRetain();
  sub_10007EBC0(&unk_1006AF7B0);
  v38 = swift_dynamicCast();
  (v11[7])(v37, v38 ^ 1u, 1, v10);
  if ((v11[6])(v37, 1, v10) == 1)
  {
    sub_100012DF0(v37, &qword_1006B6598);
LABEL_13:
    sub_10050DBAC(a5);
    return;
  }

  v78 = a4;
  (v11[4])(v19, v37, v10);
  (v11[13])(v16, enum case for FMIPItemActionControllerError.tagInUseRemoveFailed(_:), v10);
  v39 = static FMIPItemActionControllerError.== infix(_:_:)();
  v40 = v11[1];
  v40(v16, v10);
  if ((v39 & 1) == 0)
  {
    v40(v19, v10);
    goto LABEL_13;
  }

  v82 = v40;
  v80 = v16;
  v41 = objc_opt_self();
  v42 = [v41 mainBundle];
  v76 = v19;
  v43 = v42;
  v81 = v11;
  v85._object = 0x800000010059DA80;
  v44._countAndFlagsBits = 0xD000000000000023;
  v44._object = 0x800000010059DA50;
  v85._countAndFlagsBits = 0xD000000000000035;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v44, 0, v43, v45, v85);

  v46 = [v41 mainBundle];
  v86._object = 0x800000010059DAF0;
  v47._countAndFlagsBits = 0xD000000000000026;
  v47._object = 0x800000010059DAC0;
  v86._countAndFlagsBits = 0xD000000000000038;
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v47, 0, v46, v48, v86);

  v49 = String._bridgeToObjectiveC()();

  v50 = String._bridgeToObjectiveC()();

  v51 = [objc_opt_self() alertControllerWithTitle:v49 message:v50 preferredStyle:1];

  v52 = [v41 mainBundle];
  v87._object = 0x8000000100579B60;
  v53._countAndFlagsBits = 0x4F545455425F4B4FLL;
  v53._object = 0xEF454C5449545F4ELL;
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  v87._countAndFlagsBits = 0xD000000000000021;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v53, 0, v52, v54, v87);

  v55 = swift_allocObject();
  v56 = v78;
  *(v55 + 16) = v78;
  v57 = v56;
  v58 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10050FC48;
  aBlock[5] = v55;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017328;
  aBlock[3] = &unk_100644178;
  v59 = _Block_copy(aBlock);

  v60 = [objc_opt_self() actionWithTitle:v58 style:1 handler:v59];
  v61 = v59;
  v62 = v76;
  _Block_release(v61);

  [v51 addAction:v60];
  [v57 presentViewController:v51 animated:1 completion:0];
  v63 = v81[2];
  v63(v13, v62, v10);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    aBlock[0] = v67;
    *v66 = 136315138;
    v81 = v51;
    v63(v80, v13, v10);
    v68 = String.init<A>(describing:)();
    v69 = v13;
    v70 = v68;
    v72 = v71;
    v73 = v82;
    v82(v69, v10);
    v74 = sub_100005B4C(v70, v72, aBlock);

    *(v66 + 4) = v74;
    _os_log_impl(&_mh_execute_header, v64, v65, "FMRemoveItemViewController: error: %s", v66, 0xCu);
    sub_100006060(v67);

    v73(v76, v10);
  }

  else
  {

    v75 = v82;
    v82(v13, v10);
    v75(v62, v10);
  }
}

void sub_10050DBAC(uint64_t a1)
{
  v2 = v1;
  v46 = a1;
  v3 = type metadata accessor for FMIPItemGroup();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v45 = v4;
  v43 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "FMRemoveDeviceViewController: Presenting force unpair", v8, 2u);
  }

  v9 = objc_opt_self();
  v10 = [v9 mainBundle];
  v11._countAndFlagsBits = 0xD00000000000001BLL;
  v55._object = 0x800000010059D740;
  v11._object = 0x800000010059D720;
  v55._countAndFlagsBits = 0xD00000000000002DLL;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v55);

  v13 = [v9 mainBundle];
  v56._object = 0x800000010059D790;
  v14._object = 0x800000010059D770;
  v56._countAndFlagsBits = 0xD00000000000002FLL;
  v14._countAndFlagsBits = 0xD00000000000001DLL;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v56);

  v16 = String._bridgeToObjectiveC()();

  v17 = String._bridgeToObjectiveC()();

  v44 = [objc_opt_self() alertControllerWithTitle:v16 message:v17 preferredStyle:1];

  v18 = [v9 mainBundle];
  v19._countAndFlagsBits = 0xD00000000000001CLL;
  v57._object = 0x800000010059D7E0;
  v19._object = 0x800000010059D7C0;
  v57._countAndFlagsBits = 0xD00000000000002ELL;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v57);

  v21 = swift_allocObject();
  *(v21 + 16) = v2;
  v22 = v2;
  v23 = String._bridgeToObjectiveC()();

  v53 = sub_10050FE64;
  v54 = v21;
  aBlock = _NSConcreteStackBlock;
  v50 = 1107296256;
  v41 = &v51;
  v51 = sub_100017328;
  v52 = &unk_100644010;
  v24 = _Block_copy(&aBlock);

  v25 = objc_opt_self();
  v42 = [v25 actionWithTitle:v23 style:1 handler:v24];
  _Block_release(v24);

  v26 = [v9 mainBundle];
  v58._object = 0x800000010059D830;
  v27._object = 0x800000010059D810;
  v58._countAndFlagsBits = 0xD00000000000002FLL;
  v27._countAndFlagsBits = 0xD00000000000001DLL;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v27, 0, v26, v28, v58);

  v29 = v47;
  v30 = v43;
  v31 = v48;
  (*(v47 + 16))(v43, v46, v48);
  v32 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v33 = (v45 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v29 + 32))(v34 + v32, v30, v31);
  *(v34 + v33) = v22;
  v35 = v22;
  v36 = String._bridgeToObjectiveC()();

  v53 = sub_10050F94C;
  v54 = v34;
  aBlock = _NSConcreteStackBlock;
  v50 = 1107296256;
  v51 = sub_100017328;
  v52 = &unk_100644060;
  v37 = _Block_copy(&aBlock);

  v38 = [v25 actionWithTitle:v36 style:2 handler:v37];
  _Block_release(v37);

  v39 = v44;
  [v44 addAction:v38];
  v40 = v42;
  [v39 addAction:v42];
  [v35 presentViewController:v39 animated:1 completion:0];
}

uint64_t sub_10050E1DC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for FMIPItemGroup();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100005B14(v9, qword_1006D4630);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "FMRemoveDeviceViewController: User agreed to force unpair", v12, 2u);
  }

  (*(v6 + 16))(v8, a2, v5);
  type metadata accessor for FMIPRemoveItemGroupAction();
  swift_allocObject();
  v13 = FMIPRemoveItemGroupAction.init(itemGroup:forced:)();
  v14 = swift_allocObject();
  *(v14 + 16) = a3;

  v15 = a3;
  sub_1000D7974(v13, sub_10050F9E8, v14);
}

void sub_10050E400()
{
  v1 = v0;
  [v0 setModalInPresentation:0];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_landingView];
  v2[OBJC_IVAR____TtC6FindMy19FMActionLandingView_showsActivity] = 0;
  v3 = v2;
  sub_1001C29D8();

  v4 = [v1 navigationItem];
  v5 = [v4 leftBarButtonItem];

  if (v5)
  {
    [v5 setEnabled:1];
  }

  v6 = [v1 headerView];
  v7 = [objc_opt_self() mainBundle];
  v12._object = 0x800000010059D6F0;
  v8._object = 0x800000010059D6D0;
  v12._countAndFlagsBits = 0xD000000000000026;
  v8._countAndFlagsBits = 0xD000000000000014;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v12);

  v10 = String._bridgeToObjectiveC()();

  [v6 setTitle:v10];
}

void sub_10050E5A4(uint64_t a1)
{
  v2 = v1;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 != 0;

    _os_log_impl(&_mh_execute_header, v5, v6, "FMRemoveDeviceViewController: Show remove failed if needed %{BOOL}d", v7, 8u);
  }

  else
  {
  }

  v8 = objc_opt_self();
  v9 = [v8 mainBundle];
  v38._object = 0x800000010059D650;
  v10._countAndFlagsBits = 0xD00000000000001CLL;
  v10._object = 0x800000010059D630;
  v38._countAndFlagsBits = 0xD00000000000002ELL;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v38);

  v13 = [v8 mainBundle];
  v39._object = 0x800000010059D6A0;
  v14._countAndFlagsBits = 0xD00000000000001ALL;
  v14._object = 0x800000010059D680;
  v39._countAndFlagsBits = 0xD00000000000002CLL;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v39);

  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = v2;
  if (a1)
  {
    v17 = objc_opt_self();
    swift_errorRetain();
    swift_errorRetain();
    v18 = v2;
    v19 = [v17 sharedInstance];
    v20 = [v19 isInternalBuild];

    v36 = v12;
    if (v20)
    {
      _StringGuts.grow(_:)(17);
      v21._countAndFlagsBits = 0x65746E492A2A200ALL;
      v21._object = 0xEF202A2A6C616E72;
      String.append(_:)(v21);
      sub_10007EBC0(&unk_1006AF7B0);
      _print_unlocked<A, B>(_:_:)();
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      String.append(_:)(v22);
    }

    v23 = String._bridgeToObjectiveC()();

    v24 = String._bridgeToObjectiveC()();

    v25 = [objc_opt_self() alertControllerWithTitle:v23 message:v24 preferredStyle:1];

    v26 = [v8 mainBundle];
    v40._object = 0x8000000100579A00;
    v27._countAndFlagsBits = 0x4B4F5F524F525245;
    v27._object = 0xEF4E4F545455425FLL;
    v28.value._object = 0x80000001005799E0;
    v40._countAndFlagsBits = 0xD000000000000018;
    v28.value._countAndFlagsBits = 0xD000000000000013;
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v28, v26, v29, v40);

    v30 = swift_allocObject();
    *(v30 + 16) = sub_10050F700;
    *(v30 + 24) = v16;

    v31 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_1001D69A8;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100017328;
    aBlock[3] = &unk_100643FC0;
    v32 = _Block_copy(aBlock);

    v33 = [objc_opt_self() actionWithTitle:v31 style:0 handler:v32];
    _Block_release(v32);

    [v25 addAction:v33];
    [v18 presentViewController:v25 animated:1 completion:0];
  }

  else
  {
    v34 = v2;

    sub_10050F708(0);
  }
}

uint64_t sub_10050EB60()
{
  v1 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v1);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v10[-v5];
  v7 = *(*(v0 + OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_mediator) + 56);
  swift_storeEnumTagMultiPayload();
  v8 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v7 + v8, v3);
  swift_beginAccess();

  sub_100058530(v6, v7 + v8);
  swift_endAccess();
  sub_100058594(v3);

  sub_10002A220(v3, type metadata accessor for FMSelectedSection);
  return sub_10002A220(v6, type metadata accessor for FMSelectedSection);
}

void sub_10050ECAC()
{
  v1 = type metadata accessor for FMIPDevice();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_landingView);
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_deviceToRemove, v1, v3);
  v7 = v6;
  v8 = FMIPDevice.name.getter();
  v10 = v9;
  (*(v2 + 8))(v5, v1);
  v11 = &v7[OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceName];
  *v11 = v8;
  v11[1] = v10;

  v12 = *&v7[OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceNameLabel];

  v13 = v12;
  v14 = String._bridgeToObjectiveC()();

  [v13 setText:v14];
}

id sub_10050EEAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMRemoveDeviceViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMRemoveDeviceViewController()
{
  result = qword_1006C35E0;
  if (!qword_1006C35E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10050F038()
{
  result = type metadata accessor for FMDeviceDetailViewModel();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FMIPDevice();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

id sub_10050F140(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FMIPDevice();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  sub_100062074(a1, v6);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_10002A220(v6, type metadata accessor for FMSelectedSection);
    return [v2 dismissViewControllerAnimated:1 completion:0];
  }

  v15 = *(sub_10007EBC0(&qword_1006BEEE0) + 48);
  (*(v8 + 32))(v13, v6, v7);
  sub_100012DF0(&v6[v15], &qword_1006B07D0);
  v16 = FMIPDevice.identifier.getter();
  v18 = v17;
  (*(v8 + 16))(v10, v2 + OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_deviceToRemove, v7);
  v19 = FMIPDevice.identifier.getter();
  v21 = v20;
  v22 = *(v8 + 8);
  v22(v10, v7);
  if (v16 == v19 && v18 == v21)
  {

    return (v22)(v13, v7);
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = (v22)(v13, v7);
    if ((v24 & 1) == 0)
    {
      return [v2 dismissViewControllerAnimated:1 completion:0];
    }
  }

  return result;
}

uint64_t sub_10050F3E8()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v4 = *(v12 - 8);
  __chkstk_darwin(v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v7 = static OS_dispatch_queue.main.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_10050F6DC;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100643F48;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A7C8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

void sub_10050F708(uint64_t a1)
{
  if (a1)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100005B14(v1, qword_1006D4630);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v13 = v5;
      *v4 = 136315138;
      swift_errorRetain();
      sub_10007EBC0(&qword_1006B9570);
      v6 = String.init<A>(describing:)();
      v8 = sub_100005B4C(v6, v7, &v13);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "FMRemoveDeviceViewController: error forcing unpairing %s", v4, 0xCu);
      sub_100006060(v5);
    }

    sub_10050E400();
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100005B14(v9, qword_1006D4630);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "FMRemoveDeviceViewController: succesfully forced unpairing", v12, 2u);
    }

    sub_10050EB60();
  }
}

uint64_t sub_10050F94C(uint64_t a1)
{
  v3 = *(type metadata accessor for FMIPItemGroup() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10050E1DC(a1, v1 + v4, v5);
}

void sub_10050FA10(char a1)
{
  v3 = *(type metadata accessor for FMIPItemGroup() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_10050CA20(a1, v4, v5);
}

uint64_t sub_10050FA84(uint64_t a1)
{
  v3 = *(type metadata accessor for FMIPItemGroup() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_10050CF44(a1, v4, v5);
}

uint64_t sub_10050FAF8()
{
  v1 = type metadata accessor for FMIPItemGroup();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10050FBBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for FMIPItemGroup() - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  sub_10050D258(a1, a2, a3, v8, v9);
}

uint64_t sub_10050FCA8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for DeviceUseCase() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1000E3478;

  return sub_100509AE4(a1, v9, v10, v1 + v6, v12, v13, v14);
}

id sub_10050FEC4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v40 = a4;
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for FMMapKitChooseMapView(0);
  __chkstk_darwin(v10);
  v12 = (&v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for FMMapKitChooseMapViewModel();
  swift_allocObject();
  v13 = a2;
  v14 = sub_1003DDF3C(v13);
  *&v5[OBJC_IVAR____TtC6FindMy29FMMapKitOptionsViewController_viewModel] = v14;
  *&v5[OBJC_IVAR____TtC6FindMy29FMMapKitOptionsViewController_mediator] = a1;
  *&v5[OBJC_IVAR____TtC6FindMy29FMMapKitOptionsViewController_mapView] = v13;
  v43 = a3;
  sub_100062074(a3, &v5[OBJC_IVAR____TtC6FindMy29FMMapKitOptionsViewController_previousSelection]);
  *v12 = swift_getKeyPath();
  sub_10007EBC0(&qword_1006C3680);
  swift_storeEnumTagMultiPayload();
  v15 = qword_1006AEC90;
  v41 = v13;

  v42 = a1;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = *&qword_1006D49C0;
  v46[2] = xmmword_1006D49B0;
  v46[3] = *&qword_1006D49C0;
  v18 = xmmword_1006D4990;
  v17 = unk_1006D49A0;
  v46[0] = xmmword_1006D4990;
  v46[1] = unk_1006D49A0;
  v19 = (v12 + *(v10 + 24));
  v19[2] = xmmword_1006D49B0;
  v19[3] = v16;
  *v19 = v18;
  v19[1] = v17;
  *(v12 + *(v10 + 20)) = v14;
  v20 = objc_allocWithZone(sub_10007EBC0(&unk_1006C3670));
  sub_1005116D8(v46, v45);
  v21 = UIHostingController.init(rootView:)();
  *&v5[OBJC_IVAR____TtC6FindMy29FMMapKitOptionsViewController_hostingController] = v21;
  sub_10007EBC0(&qword_1006B3280);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100552220;
  v23 = v21;
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  v45[0] = v22;
  sub_100511734(&qword_1006C1310, &type metadata accessor for UIHostingControllerSizingOptions);
  sub_10007EBC0(&qword_1006B3288);
  sub_10025AC80();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of UIHostingController.sizingOptions.setter();

  v24 = v40;
  *&v5[OBJC_IVAR____TtC6FindMy29FMMapKitOptionsViewController_sourceView] = v40;
  v44.receiver = v5;
  v44.super_class = ObjectType;
  v25 = v24;
  v26 = objc_msgSendSuper2(&v44, "initWithNibName:bundle:", 0, 0);
  [v26 setModalPresentationStyle:7];
  v27 = [v26 popoverPresentationController];
  if (v27)
  {
    v28 = v27;
    [v27 setPermittedArrowDirections:12];
    v29 = [v28 adaptiveSheetPresentationController];
    sub_10007EBC0(&qword_1006AFC30);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1005528C0;
    sub_10000905C(0, &qword_1006B5940);
    v31 = String._bridgeToObjectiveC()();
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100557A60;
    *(v32 + 32) = xmmword_100557A70;
    v33 = static UISheetPresentationControllerDetent.custom(identifier:resolver:)();

    *(v30 + 32) = v33;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v29 setDetents:isa];

    [v29 setPrefersGrabberVisible:0];
    if (v24)
    {
      v35 = v25;
      [v28 setSourceView:v35];
      [v35 bounds];
      [v28 setSourceRect:?];
      [v29 setSourceView:v35];
    }
  }

  v36 = [v26 presentationController];

  if (v36)
  {
    [v36 setDelegate:v26];

    sub_10005D4E4(v43);
  }

  else
  {
    sub_10005D4E4(v43);
  }

  return v26;
}

id sub_1005104C8()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy29FMMapKitOptionsViewController_hostingController];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  v4 = objc_opt_self();
  v5 = [v4 clearColor];
  [v3 setBackgroundColor:v5];

  result = [v0 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  v7 = [v4 clearColor];
  [v6 setBackgroundColor:v7];

  [v0 addChildViewController:v1];
  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = result;
  result = [v1 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v9 = result;
  [v8 addSubview:result];

  return [v1 didMoveToParentViewController:v0];
}

void sub_100510650()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy29FMMapKitOptionsViewController_hostingController];
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = v2;
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_10007EBC0(&qword_1006AFC30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1005521F0;
  v5 = [v1 view];
  if (!v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = v5;
  v7 = [v5 topAnchor];

  v8 = [v0 view];
  if (!v8)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = v8;
  v10 = [v8 topAnchor];

  v11 = [v7 constraintEqualToAnchor:v10];
  *(v4 + 32) = v11;
  v12 = [v1 view];
  if (!v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v12;
  v14 = [v12 bottomAnchor];

  v15 = [v0 view];
  if (!v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v16 = v15;
  v17 = [v15 bottomAnchor];

  v18 = [v14 constraintEqualToAnchor:v17];
  *(v4 + 40) = v18;
  v19 = [v1 view];
  if (!v19)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v20 = v19;
  v21 = [v19 leadingAnchor];

  v22 = [v0 view];
  if (!v22)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v23 = v22;
  v24 = [v22 leadingAnchor];

  v25 = [v21 constraintEqualToAnchor:v24];
  *(v4 + 48) = v25;
  v26 = [v1 view];
  if (!v26)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v27 = v26;
  v28 = [v26 trailingAnchor];

  v29 = [v0 view];
  if (!v29)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v30 = v29;
  v31 = objc_opt_self();
  v32 = [v30 trailingAnchor];

  v33 = [v28 constraintEqualToAnchor:v32];
  *(v4 + 56) = v33;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v31 activateConstraints:isa];
}

uint64_t sub_100510A88(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v4);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v53 - v9;
  v59.receiver = v1;
  v59.super_class = ObjectType;
  objc_msgSendSuper2(&v59, "viewWillDisappear:", a1 & 1, v8);
  v11 = *&v1[OBJC_IVAR____TtC6FindMy29FMMapKitOptionsViewController_mediator];
  v12 = *(v11 + 56);

  v53 = v1;
  v13 = sub_100511040();
  v14 = (v12 + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode);
  *v14 = v13 & 1;
  v14[1] = BYTE1(v13) & 1;
  v14[2] = BYTE2(v13) & 1;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100005B14(v15, qword_1006D4630);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  v18 = os_log_type_enabled(v16, v17);
  v56 = v10;
  v57 = v6;
  v54 = v11;
  v55 = v4;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v58[0] = v20;
    *v19 = 136315138;
    if (v14[2])
    {
      v21 = 0x10000;
    }

    else
    {
      v21 = 0;
    }

    if (v14[1])
    {
      v22 = 256;
    }

    else
    {
      v22 = 0;
    }

    v23 = sub_1002318A0(v22 | *v14 | v21);
    v25 = sub_100005B4C(v23, v24, v58);

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v16, v17, "FMSelectionController: map configuration updated %s", v19, 0xCu);
    sub_100006060(v20);
  }

  v26 = *v14;
  v27 = v14[1];
  v28 = v14[2];
  v29 = [objc_opt_self() standardUserDefaults];
  My = type metadata accessor for Feature.FindMy();
  v58[3] = My;
  v58[4] = sub_100511734(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
  v31 = sub_100008FC0(v58);
  (*(*(My - 8) + 104))(v31, enum case for Feature.FindMy.springfieldIntegration(_:), My);
  v32 = isFeatureEnabled(_:)();
  sub_100006060(v58);
  if (v28)
  {
    v33 = 0x10000;
  }

  else
  {
    v33 = 0;
  }

  if (v27)
  {
    v34 = 256;
  }

  else
  {
    v34 = 0;
  }

  sub_100231DAC(v29, v32 & 1, v34 | v26 | v33);

  result = swift_beginAccess();
  v36 = *(v12 + 16);
  if (v36 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v37 = result;
    if (result)
    {
      goto LABEL_19;
    }

LABEL_36:

    goto LABEL_37;
  }

  v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v37)
  {
    goto LABEL_36;
  }

LABEL_19:
  if (v37 < 1)
  {
    __break(1u);
    return result;
  }

  v38 = v12;

  for (i = 0; i != v37; ++i)
  {
    if ((v36 & 0xC000000000000001) != 0)
    {
      v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v44 = *(v36 + 8 * i + 32);
    }

    v45 = v44 + OBJC_IVAR____TtC6FindMy23FMSelectionSubscription_subscriber;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v40 = *(v45 + 8);
      v41 = swift_getObjectType();
      if (v14[2])
      {
        v42 = 0x10000;
      }

      else
      {
        v42 = 0;
      }

      if (v14[1])
      {
        v43 = 256;
      }

      else
      {
        v43 = 0;
      }

      (*(v40 + 16))(v38, v43 | *v14 | v42, v41, v40);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

LABEL_37:
  v46 = v54;
  v47 = *(v54 + 56);
  v48 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  v49 = v56;
  sub_100062074(v47 + v48, v56);
  v50 = v57;
  swift_storeEnumTagMultiPayload();
  LOBYTE(v47) = sub_10005F7D0(v49, v50);
  sub_10005D4E4(v50);
  result = sub_10005D4E4(v49);
  if (v47)
  {
    v51 = *(v46 + 56);
    sub_100062074(&v53[OBJC_IVAR____TtC6FindMy29FMMapKitOptionsViewController_previousSelection], v49);
    v52 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100062074(v51 + v52, v50);
    swift_beginAccess();

    sub_100058530(v49, v51 + v52);
    swift_endAccess();
    sub_100058594(v50);

    sub_10005D4E4(v50);
    return sub_10005D4E4(v49);
  }

  return result;
}

uint64_t sub_100511040()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy29FMMapKitOptionsViewController_mapView);
  v2 = [v1 mapType];
  if (v2 > 5)
  {
    goto LABEL_5;
  }

  if (((1 << v2) & 0xA) != 0)
  {
    v6 = [v1 showsTraffic];
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v8 = v7;
    v3 = v6 & v7;
    if (v8)
    {
      v4 = 0x10000;
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_9;
  }

  if (((1 << v2) & 0x14) == 0)
  {
LABEL_5:
    v3 = [v1 showsTraffic];
    v5 = 0;
    v4 = 0x10000;
    goto LABEL_10;
  }

  v3 = [v1 showsTraffic];
  v4 = 0x10000;
LABEL_9:
  v5 = 1;
LABEL_10:
  if (v3)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  return v9 | v5 | v4;
}

uint64_t type metadata accessor for FMMapKitOptionsViewController()
{
  result = qword_1006C3658;
  if (!qword_1006C3658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100511430()
{
  result = type metadata accessor for FMSelectedSection();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1005114F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_100511540(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10051158C(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC6FindMy29FMMapKitOptionsViewController_viewModel);
  if (((result == 2) ^ *(v2 + 24)))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100511734(&qword_1006BE4F8, type metadata accessor for FMMapKitChooseMapViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v2 + 24) = result == 2;
  }

  return result;
}

uint64_t sub_100511734(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005117A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v229 = a6;
  v219 = a5;
  v236 = a3;
  v252 = a2;
  v248 = a1;
  v230 = a7;
  v8 = sub_10007EBC0(&qword_1006B14A0);
  __chkstk_darwin(v8 - 8);
  v228 = &v193 - v9;
  MyRelativeDate = type metadata accessor for FindMyRelativeDate();
  v239 = *(MyRelativeDate - 8);
  v240 = MyRelativeDate;
  __chkstk_darwin(MyRelativeDate);
  v202 = &v193 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007EBC0(&qword_1006B14C8);
  __chkstk_darwin(v12 - 8);
  v224 = &v193 - v13;
  v14 = type metadata accessor for PeopleListPersonRow.State.ID();
  __chkstk_darwin(v14 - 8);
  v242 = &v193 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = type metadata accessor for PeopleListPersonRow.State();
  v226 = *(v227 - 8);
  __chkstk_darwin(v227);
  v225 = &v193 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = type metadata accessor for FMFLocationAlert();
  v241 = *(v247 - 8);
  v17 = __chkstk_darwin(v247);
  v220 = &v193 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = v18;
  __chkstk_darwin(v17);
  v218 = &v193 - v19;
  v20 = sub_10007EBC0(&qword_1006B1498);
  v21 = __chkstk_darwin(v20 - 8);
  v223 = &v193 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v222 = &v193 - v24;
  v25 = __chkstk_darwin(v23);
  v238 = &v193 - v26;
  __chkstk_darwin(v25);
  v237 = &v193 - v27;
  v28 = type metadata accessor for FMFFriend();
  v243 = *(v28 - 8);
  v244 = v28;
  __chkstk_darwin(v28);
  v213 = &v193 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_10007EBC0(&qword_1006B14C0);
  v30 = __chkstk_darwin(v204);
  v203 = &v193 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v193 = &v193 - v33;
  __chkstk_darwin(v32);
  v208 = &v193 - v34;
  v35 = sub_10007EBC0(&qword_1006B0050);
  v36 = __chkstk_darwin(v35 - 8);
  v201 = &v193 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v231 = &v193 - v39;
  v40 = __chkstk_darwin(v38);
  v207 = &v193 - v41;
  __chkstk_darwin(v40);
  v246 = &v193 - v42;
  v43 = sub_10007EBC0(&qword_1006B14B0);
  v44 = __chkstk_darwin(v43 - 8);
  v221 = &v193 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v235 = &v193 - v46;
  MyRelative = type metadata accessor for FindMyRelativeDate.RecencyKey();
  v199 = *(MyRelative - 8);
  __chkstk_darwin(MyRelative);
  v198 = &v193 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_10007EBC0(&qword_1006B14F0);
  v49 = __chkstk_darwin(v48 - 8);
  v216 = &v193 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v251 = &v193 - v51;
  v52 = sub_10007EBC0(&unk_1006B0000);
  v53 = __chkstk_darwin(v52 - 8);
  v205 = &v193 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __chkstk_darwin(v53);
  v206 = (&v193 - v56);
  __chkstk_darwin(v55);
  v58 = &v193 - v57;
  v250 = type metadata accessor for Date();
  v59 = *(v250 - 8);
  v60 = __chkstk_darwin(v250);
  v197 = &v193 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __chkstk_darwin(v60);
  v196 = &v193 - v63;
  __chkstk_darwin(v62);
  v212 = &v193 - v64;
  v211 = type metadata accessor for UUID();
  v195 = *(v211 - 8);
  __chkstk_darwin(v211);
  v194 = &v193 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = type metadata accessor for FMAllowLocationAlertCellViewModel();
  __chkstk_darwin(v245);
  v67 = (&v193 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67->_countAndFlagsBits = 0;
  v67->_object = 0;
  v249 = a4;
  v68 = FMFFriend.name.getter();
  v70 = v69;
  v71 = objc_opt_self();
  v72 = [v71 mainBundle];
  v209 = 0x800000010059E230;
  v255._object = 0x800000010059E230;
  v210 = "ptionsViewController.swift";
  v73._object = 0x800000010059E210;
  v255._countAndFlagsBits = 0xD000000000000025;
  v73._countAndFlagsBits = 0xD000000000000013;
  v74._countAndFlagsBits = 0;
  v74._object = 0xE000000000000000;
  v75 = NSLocalizedString(_:tableName:bundle:value:comment:)(v73, 0, v72, v74, v255);

  v67[2] = v75;
  v232 = v71;
  v76 = [v71 mainBundle];
  v214 = 0x800000010059E280;
  v256._object = 0x800000010059E280;
  v77._countAndFlagsBits = 0xD000000000000018;
  v215 = "g FENCE_REQUEST_ALLOW";
  v77._object = 0x800000010059E260;
  v256._countAndFlagsBits = 0xD00000000000002ALL;
  v78._countAndFlagsBits = 0;
  v78._object = 0xE000000000000000;
  v79 = NSLocalizedString(_:tableName:bundle:value:comment:)(v77, 0, v76, v78, v256);

  v67[3] = v79;
  sub_10028536C();
  v80 = FMFLocationAlert.fence.getter();
  v81 = String._bridgeToObjectiveC()();
  v82 = String._bridgeToObjectiveC()();

  v83 = [v80 localizedRequestNotificationStringForFollower:v81 locationName:v82];

  v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v86 = v85;

  v67[4]._countAndFlagsBits = v84;
  v67[4]._object = v86;
  v87 = v67;
  v234 = v68;
  v67[5]._countAndFlagsBits = v68;
  v67[5]._object = v70;
  v233 = v70;

  v88 = FMFLocationAlert.identifier.getter();
  if (!v89)
  {
    v90 = v194;
    UUID.init()();
    v91 = UUID.uuidString.getter();
    v93 = v92;
    (*(v195 + 8))(v90, v211);
    v89 = v93;
    v88 = v91;
    v87 = v67;
  }

  v87[1]._countAndFlagsBits = v88;
  v87[1]._object = v89;
  *(&v87->_countAndFlagsBits + v245[14]) = v219;
  FMFLocationAlert.updateTimestamp.getter();
  v94 = *(v59 + 48);
  v95 = v250;
  v96 = v94(v58, 1, v250);
  v97 = v212;
  if (v96 == 1)
  {
    static Date.distantFuture.getter();
    if (v94(v58, 1, v95) != 1)
    {
      sub_100012DF0(v58, &unk_1006B0000);
    }
  }

  else
  {
    (*(v59 + 32))(v212, v58, v95);
  }

  v98 = *(v59 + 32);
  v98(v87 + v245[13], v97, v95);
  v87[6]._countAndFlagsBits = 0x4046000000000000;
  v219 = v87;
  LOBYTE(v87[6]._object) = 0;
  sub_10028536C();
  v99 = FMFLocationAlert.fence.getter();
  v100 = String._bridgeToObjectiveC()();
  v101 = String._bridgeToObjectiveC()();

  v102 = [v99 localizedRequestNotificationStringForFollower:v100 locationName:v101];

  v212 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v211 = v103;

  v104 = v250;
  v105 = v206;
  FMFLocationAlert.updateTimestamp.getter();
  v106 = v205;
  sub_100007204(v105, v205, &unk_1006B0000);
  v107 = 1;
  v108 = v94(v106, 1, v104);
  v109 = v239;
  v110 = v243;
  v111 = v213;
  if (v108 != 1)
  {
    v112 = v213;
    v113 = v196;
    v98(v196, v106, v104);
    (*(v59 + 16))(v197, v113, v104);
    if (qword_1006AEA70 != -1)
    {
      swift_once();
    }

    v114 = MyRelative;
    v115 = sub_100005B14(MyRelative, qword_1006D3CC0);
    (*(v199 + 16))(v198, v115, v114);
    FindMyRelativeDate.init(date:recencyKey:)();
    (*(v59 + 8))(v113, v104);
    v107 = 0;
    v111 = v112;
    v110 = v243;
  }

  sub_100012DF0(v105, &unk_1006B0000);
  (*(v109 + 56))(v251, v107, 1, v240);
  v116 = type metadata accessor for PeopleListPersonRow.State.DetailOrProgress();
  (*(*(v116 - 8) + 56))(v235, 1, 1, v116);
  updated = dispatch thunk of FMFManager.pendingUpdateFriends.getter();
  __chkstk_darwin(updated);
  v118 = v249;
  v119 = v246;
  sub_1000341A8(sub_1000EE304, updated, v246);

  v120 = v207;
  sub_100007204(v119, v207, &qword_1006B0050);
  v121 = v244;
  v206 = *(v110 + 48);
  if (v206(v120, 1, v244) == 1)
  {
    sub_100012DF0(v120, &qword_1006B0050);
    v122 = type metadata accessor for FMFPendingUpdateReason();
    v123 = v208;
    (*(*(v122 - 8) + 56))(v208, 1, 1, v122);
    LODWORD(v250) = 2;
    v124 = v231;
    goto LABEL_20;
  }

  v123 = v208;
  FMFFriend.pendingUpdateReason.getter();
  (*(v110 + 8))(v120, v121);
  v125 = type metadata accessor for FMFPendingUpdateReason();
  v126 = *(v125 - 8);
  v127 = (*(v126 + 48))(v123, 1, v125);
  v124 = v231;
  if (v127 != 1)
  {
    v129 = v193;
    sub_100007204(v123, v193, &qword_1006B14C0);
    v130 = (*(v126 + 88))(v129, v125);
    if (v130 == enum case for FMFPendingUpdateReason.respondToInvite(_:))
    {
      (*(v126 + 96))(v129, v125);
      v128 = *v129;
      goto LABEL_19;
    }

    if (v130 == enum case for FMFPendingUpdateReason.startSharing(_:))
    {
      v128 = 1;
      goto LABEL_19;
    }

    (*(v126 + 8))(v129, v125);
  }

  v128 = 2;
LABEL_19:
  LODWORD(v250) = v128;
LABEL_20:
  sub_100012DF0(v123, &qword_1006B14C0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v131 = type metadata accessor for Logger();
  sub_100005B14(v131, qword_1006D4630);
  (*(v110 + 16))(v111, v118, v121);
  sub_100007204(v246, v124, &qword_1006B0050);
  v132 = Logger.logObject.getter();
  v133 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v132, v133))
  {
    v134 = swift_slowAlloc();
    v254 = swift_slowAlloc();
    *v134 = 136315650;
    v135 = FMFFriend.name.getter();
    v136 = v111;
    v138 = v137;
    v139 = *(v110 + 8);
    v139(v136, v121);
    v140 = sub_100005B4C(v135, v138, &v254);

    *(v134 + 4) = v140;
    *(v134 + 12) = 2080;
    v253 = v250;
    sub_10007EBC0(&qword_1006B14D8);
    v141 = String.init<A>(describing:)();
    v143 = sub_100005B4C(v141, v142, &v254);

    *(v134 + 14) = v143;
    *(v134 + 22) = 2080;
    v144 = v244;
    v145 = v201;
    sub_100007204(v231, v201, &qword_1006B0050);
    if (v206(v145, 1, v144) == 1)
    {
      sub_100012DF0(v145, &qword_1006B0050);
      v146 = type metadata accessor for FMFPendingUpdateReason();
      (*(*(v146 - 8) + 56))(v203, 1, 1, v146);
    }

    else
    {
      FMFFriend.pendingUpdateReason.getter();
      v139(v145, v144);
    }

    v147 = String.init<A>(describing:)();
    v149 = v148;
    sub_100012DF0(v231, &qword_1006B0050);
    v150 = sub_100005B4C(v147, v149, &v254);

    *(v134 + 24) = v150;
    _os_log_impl(&_mh_execute_header, v132, v133, "FMAllowLocationAlertCellViewModel: %s %s, %s", v134, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100012DF0(v124, &qword_1006B0050);
    (*(v110 + 8))(v111, v121);
  }

  v151 = [v232 mainBundle];
  v257._object = v209;
  v152._object = (v210 | 0x8000000000000000);
  v257._countAndFlagsBits = 0xD000000000000025;
  v152._countAndFlagsBits = 0xD000000000000013;
  v153._countAndFlagsBits = 0;
  v153._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v152, 0, v151, v153, v257);

  LODWORD(v231) = v250 != 2;
  v213 = sub_10007EBC0(&qword_1006B14D0);
  v154 = v237;
  v155 = (v237 + *(v213 + 12));
  GenericControl.Info.Label.init(title:symbol:forceStyleProminent:forceInProgressState:forceDisabledState:)();
  v156 = swift_allocObject();
  swift_weakInit();
  v157 = v241;
  v158 = *(v241 + 16);
  v209 = (v241 + 16);
  v210 = v158;
  v159 = v218;
  v160 = v247;
  (v158)(v218, v252, v247);
  v161 = (*(v157 + 80) + 16) & ~*(v157 + 80);
  v208 = *(v157 + 80);
  v207 = v161;
  v162 = (v217 + v161 + 7) & 0xFFFFFFFFFFFFFFF8;
  v163 = swift_allocObject();
  v206 = *(v157 + 32);
  v217 = v157 + 32;
  v206(v163 + v161, v159, v160);
  v203 = v156;
  *(v163 + v162) = v156;
  v164 = v162;
  *v155 = &unk_1005655A8;
  v155[1] = v163;
  v165 = enum case for GenericControl.Info.button(_:);
  LODWORD(v218) = enum case for GenericControl.Info.button(_:);
  v166 = type metadata accessor for GenericControl.Info();
  v167 = *(v166 - 8);
  v205 = *(v167 + 104);
  (v205)(v154, v165, v166);
  v204 = *(v167 + 56);
  v204(v154, 0, 1, v166);

  v168 = [v232 mainBundle];
  v258._object = v214;
  v169._countAndFlagsBits = 0xD000000000000018;
  v169._object = (v215 | 0x8000000000000000);
  v258._countAndFlagsBits = 0xD00000000000002ALL;
  v170._countAndFlagsBits = 0;
  v170._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v169, 0, v168, v170, v258);

  v171 = v238;
  v172 = (v238 + *(v213 + 12));
  GenericControl.Info.Label.init(title:symbol:forceStyleProminent:forceInProgressState:forceDisabledState:)();
  v173 = swift_allocObject();
  swift_weakInit();

  v174 = v220;
  v175 = v247;
  (v210)(v220, v252, v247);
  v176 = swift_allocObject();
  v206(v176 + v207, v174, v175);
  *(v176 + v164) = v173;
  *v172 = &unk_1005655B8;
  v172[1] = v176;
  (v205)(v171, v218, v166);
  v204(v171, 0, 1, v166);

  FMFFriend.identifier.getter();
  PeopleListPersonRow.State.ID.init(rawValue:)();
  v177 = v216;
  sub_100007204(v251, v216, &qword_1006B14F0);
  v179 = v239;
  v178 = v240;
  if ((*(v239 + 48))(v177, 1, v240) == 1)
  {
    v180 = type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString();
    (*(*(v180 - 8) + 56))(v224, 1, 1, v180);
  }

  else
  {
    v181 = v202;
    (*(v179 + 32))(v202, v177, v178);
    v182 = v224;
    (*(v179 + 16))(v224, v181, v178);
    v183 = enum case for PeopleListPersonRow.State.RelativeDateOrString.date(_:);
    v184 = type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString();
    v185 = *(v184 - 8);
    (*(v185 + 104))(v182, v183, v184);
    (*(v179 + 8))(v181, v178);
    (*(v185 + 56))(v182, 0, 1, v184);
  }

  v186 = v235;
  sub_100007204(v235, v221, &qword_1006B14B0);
  v187 = type metadata accessor for Symbol();
  (*(*(v187 - 8) + 56))(v228, 1, 1, v187);
  v188 = v237;
  sub_100007204(v237, v222, &qword_1006B1498);
  v189 = v238;
  sub_100007204(v238, v223, &qword_1006B1498);
  v190 = v225;
  PeopleListPersonRow.State.init(id:title:subtitle:subtitleExtra:detailOrProgress:symbol:contact:primaryControl:secondaryControl:)();

  (*(v241 + 8))(v252, v247);
  sub_100012DF0(v189, &qword_1006B1498);
  sub_100012DF0(v188, &qword_1006B1498);
  sub_100012DF0(v246, &qword_1006B0050);
  sub_100012DF0(v186, &qword_1006B14B0);
  sub_100012DF0(v251, &qword_1006B14F0);
  v191 = v219;
  (*(v226 + 32))(v219 + v245[15], v190, v227);
  sub_100515104(v191, v230);
  return (*(v243 + 8))(v249, v244);
}

uint64_t sub_1005134D0(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = type metadata accessor for ContinuousClock();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  sub_10007EBC0(&unk_1006BC950);
  v2[10] = swift_task_alloc();
  sub_10007EBC0(&unk_1006B0010);
  v2[11] = swift_task_alloc();
  sub_10007EBC0(&unk_1006BC960);
  v2[12] = swift_task_alloc();
  sub_10007EBC0(&qword_1006B0040);
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for FMFLocationAlert();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[17] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[18] = v6;
  v2[19] = v5;

  return _swift_task_switch(sub_100513700, v6, v5);
}

uint64_t sub_100513700()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100005B14(v1, qword_1006D4630);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "FMPeopleListDataSource: new handleAllowFenceRequest()", v4, 2u);
  }

  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[13];
  v8 = v0[14];
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[10];
  v12 = v0[5];

  (*(v6 + 16))(v5, v12, v8);
  v13 = type metadata accessor for FMFAddress();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = type metadata accessor for FMFLocationAlertTriggerType();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = type metadata accessor for FMFSchedule();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = enum case for FMFLocationAlertAcceptanceStatus.accepted(_:);
  v17 = type metadata accessor for FMFLocationAlertAcceptanceStatus();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v11, v16, v17);
  (*(v18 + 56))(v11, 0, 1, v17);
  type metadata accessor for FMFUpdateLocationAlertAction();
  swift_allocObject();
  v19 = FMFUpdateLocationAlertAction.init(locationAlert:location:radius:address:label:triggerType:isOn:repeating:phoneNumbers:emails:schedule:ckRecordName:ckRecordZoneOwnerName:acceptanceStatus:)();
  v0[20] = v19;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_1000FB600(v19, sub_100513D48, 0);
  }

  static Clock<>.continuous.getter();
  v20 = swift_task_alloc();
  v0[21] = v20;
  *v20 = v0;
  v20[1] = sub_100513AF4;

  return sub_1005149A8(0x8AC7230489E80000, 0, 0, 0, 1);
}

uint64_t sub_100513AF4()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[9];
  v5 = v2[8];
  v6 = v2[7];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[18];
    v8 = v3[19];
    v9 = sub_10051516C;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[18];
    v8 = v3[19];
    v9 = sub_100513C88;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100513C88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100513D54(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = type metadata accessor for ContinuousClock();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for FMFLocationAlert();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[13] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[14] = v6;
  v2[15] = v5;

  return _swift_task_switch(sub_100513EA4, v6, v5);
}

uint64_t sub_100513EA4()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100005B14(v1, qword_1006D4630);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "FMPeopleListDataSource: new handleDeclineFenceRequest()", v4, 2u);
  }

  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];
  v8 = v0[5];

  (*(v6 + 16))(v5, v8, v7);
  type metadata accessor for FMFRemoveLocationAlertAction();
  swift_allocObject();
  v9 = FMFRemoveLocationAlertAction.init(locationAlert:)();
  v0[16] = v9;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_1000FB600(v9, sub_10051431C, 0);
  }

  static Clock<>.continuous.getter();
  v10 = swift_task_alloc();
  v0[17] = v10;
  *v10 = v0;
  v10[1] = sub_100514100;

  return sub_1005149A8(0x8AC7230489E80000, 0, 0, 0, 1);
}

uint64_t sub_100514100()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[9];
  v5 = v2[8];
  v6 = v2[7];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[14];
    v8 = v3[15];
    v9 = sub_100515168;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[14];
    v8 = v3[15];
    v9 = sub_100514294;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100514294()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100514328(uint64_t a1, uint64_t a2, const char *a3)
{
  v6 = type metadata accessor for FMFActionStatus();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005B14(v10, qword_1006D4630);
  (*(v7 + 16))(v9, a1, v6);
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = a3;
    v22 = 0;
    *v13 = 136315394;
    v23 = 0xE000000000000000;
    v24 = v14;
    _print_unlocked<A, B>(_:_:)();
    v15 = v22;
    v16 = v23;
    (*(v7 + 8))(v9, v6);
    v17 = sub_100005B4C(v15, v16, &v24);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v22 = a2;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570);
    v18 = String.init<A>(describing:)();
    v20 = sub_100005B4C(v18, v19, &v24);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, v21, v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1005145EC()
{
  v1 = v0;
  v2 = *v0;
  if (*v0)
  {
    Hasher._combine(_:)(1u);
    v3 = v2;
    NSObject.hash(into:)();

    v4 = *(v1 + 8);
    if (v4)
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      v5 = v4;
      NSObject.hash(into:)();

      goto LABEL_6;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v4 = *(v0 + 8);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(0);
LABEL_6:
  String.hash(into:)();
  if (*(v1 + 40))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (*(v1 + 56))
    {
LABEL_8:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_11;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(v1 + 56))
    {
      goto LABEL_8;
    }
  }

  Hasher._combine(_:)(0);
LABEL_11:
  String.hash(into:)();
  String.hash(into:)();
  v6 = *(v1 + 96);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  Hasher._combine(_:)(*&v6);
  Hasher._combine(_:)(*(v1 + 104));
  v7 = type metadata accessor for FMAllowLocationAlertCellViewModel();
  type metadata accessor for Date();
  sub_10002C87C(&qword_1006B1480, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  v8 = *(v1 + *(v7 + 56));
  if (v8)
  {
    Hasher._combine(_:)(1u);
    v9 = v8;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  type metadata accessor for PeopleListPersonRow.State();
  sub_10002C87C(&qword_1006B1488, &type metadata accessor for PeopleListPersonRow.State);
  return dispatch thunk of Hashable.hash(into:)();
}

void *sub_100514848(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 56));
  v3 = v2;
  return v2;
}

uint64_t sub_100514874()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_1005148B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

Swift::Int sub_100514928()
{
  Hasher.init(_seed:)();
  sub_1005145EC();
  return Hasher._finalize()();
}

Swift::Int sub_10051496C()
{
  Hasher.init(_seed:)();
  sub_1005145EC();
  return Hasher._finalize()();
}

uint64_t sub_1005149A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_100514AA8, 0, 0);
}

uint64_t sub_100514AA8()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_10002C87C(&qword_1006C3780, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_10002C87C(&qword_1006C3788, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_100514C38;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_100514C38()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_100514DF4, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100514DF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100514E60()
{
  v2 = *(type metadata accessor for FMFLocationAlert() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000E3478;

  return sub_1005134D0(v0 + v3, v4);
}

uint64_t sub_100514F64()
{
  v1 = type metadata accessor for FMFLocationAlert();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100515000()
{
  v2 = *(type metadata accessor for FMFLocationAlert() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000EE760;

  return sub_100513D54(v0 + v3, v4);
}

uint64_t sub_100515104(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMAllowLocationAlertCellViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100515170()
{
  v1 = sub_10007EBC0(&qword_1006B3878);
  v19 = *(v1 - 8);
  v20 = v1;
  __chkstk_darwin(v1);
  v18 = &v18 - v2;
  v3 = sub_10007EBC0(&unk_1006C3A20);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - v5;
  v7 = sub_10007EBC0(&unk_1006BC140);
  v8 = __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v18 - v11;
  v13 = *(*v0 + 112);
  v14 = sub_10007EBC0(&qword_1006B4190);
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  sub_100007204(v12, v10, &unk_1006BC140);
  Published.init(initialValue:)();
  sub_100012DF0(v12, &unk_1006BC140);
  (*(v4 + 32))(v0 + v13, v6, v3);
  v15 = *(*v0 + 120);
  v21 = sub_10015362C(_swiftEmptyArrayStorage);
  sub_10007EBC0(qword_1006B37C0);
  v16 = v18;
  Published.init(initialValue:)();
  (*(v19 + 32))(v0 + v15, v16, v20);
  return v0;
}

uint64_t sub_100515450()
{
  v1 = sub_10007EBC0(&qword_1006B3878);
  v19 = *(v1 - 8);
  v20 = v1;
  __chkstk_darwin(v1);
  v18 = &v18 - v2;
  v3 = sub_10007EBC0(&qword_1006C3888);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - v5;
  v7 = sub_10007EBC0(&qword_1006C37F8);
  v8 = __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v18 - v11;
  v13 = *(*v0 + 112);
  v14 = sub_10007EBC0(&qword_1006C3800);
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  sub_100007204(v12, v10, &qword_1006C37F8);
  Published.init(initialValue:)();
  sub_100012DF0(v12, &qword_1006C37F8);
  (*(v4 + 32))(v0 + v13, v6, v3);
  v15 = *(*v0 + 120);
  v21 = sub_10015362C(_swiftEmptyArrayStorage);
  sub_10007EBC0(qword_1006B37C0);
  v16 = v18;
  Published.init(initialValue:)();
  (*(v19 + 32))(v0 + v15, v16, v20);
  return v0;
}

uint64_t sub_100515730(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v29 = type metadata accessor for UUID();
  v11 = *(v29 - 8);
  __chkstk_darwin(v29);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10007EBC0(a3);
  __chkstk_darwin(v14 - 8);
  v16 = &v28 - v15;
  v30 = a5;
  v31 = a6;
  v17 = sub_10007EBC0(a5);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v28 - v19;
  v21 = *(v18 + 56);
  sub_100007204(a1, &v28 - v19, a3);
  sub_100007204(a2, &v20[v21], a3);
  v22 = sub_10007EBC0(&qword_1006B76D0);
  v23 = *(*(v22 - 8) + 48);
  if (v23(v20, 1, v22) != 1)
  {
    sub_100007204(v20, v16, a3);
    if (v23(&v20[v21], 1, v22) != 1)
    {
      v25 = v29;
      (*(v11 + 32))(v13, &v20[v21], v29);
      v24 = static UUID.== infix(_:_:)();
      v26 = *(v11 + 8);
      v26(v13, v25);
      v26(v16, v25);
      sub_100012DF0(v20, a3);
      return v24 & 1;
    }

    (*(v11 + 8))(v16, v29);
    goto LABEL_6;
  }

  if (v23(&v20[v21], 1, v22) != 1)
  {
LABEL_6:
    sub_100012DF0(v20, v30);
    v24 = 0;
    return v24 & 1;
  }

  sub_100012DF0(v20, a3);
  v24 = 1;
  return v24 & 1;
}

void *sub_100515A1C(uint64_t a1, void *a2, uint64_t a3)
{
  v50 = a1;
  v51 = a3;
  v47 = a2;
  v46 = sub_10007EBC0(&qword_1006B4190);
  v40 = *(v46 - 8);
  v41 = v46 - 8;
  v43 = v40;
  v4 = __chkstk_darwin(v46 - 8);
  v49 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v48 = v39 - v7;
  __chkstk_darwin(v6);
  v42 = v39 - v8;
  v45 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v9 = *(v45 - 8);
  __chkstk_darwin(v45);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v12);
  v13 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v13 - 8);
  v44 = *((swift_isaMask & *v3) + qword_1006D3DA0 + 40);
  v14 = sub_10000905C(0, &qword_1006AEDC0);
  v39[1] = "nownItemViewController.swift";
  v39[2] = v14;
  static DispatchQoS.unspecified.getter();
  v52 = _swiftEmptyArrayStorage;
  sub_100528DCC(&unk_1006B0620, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007EBC0(&unk_1006AEDD0);
  sub_100004098(&unk_1006B0630, &unk_1006AEDD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v9 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v45);
  *&v44[v3] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v3 + *((swift_isaMask & *v3) + qword_1006D3DA0 + 56)) = 1;
  sub_10007EBC0(&qword_1006C39D8);
  swift_allocObject();
  v15 = sub_100515170();
  *(v3 + *((swift_isaMask & *v3) + qword_1006D3DA0 + 32)) = v51;
  *(v3 + *((swift_isaMask & *v3) + qword_1006D3DA0 + 48)) = v15;
  swift_retain_n();

  v47 = v47;
  v45 = v15;
  v44 = UITableViewDiffableDataSource.init(tableView:cellProvider:)();
  sub_100516CD4();
  v16 = v48;
  sub_10007EBC0(&qword_1006C39E0);
  v17 = *(v40 + 72);
  v18 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v43 = swift_allocObject();
  v19 = v43 + v18;
  v20 = sub_10007EBC0(&qword_1006B76D0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v22(v19, 1, 1, v20);
  UUID.init()();
  v22(v19 + v17, 0, 1, v20);
  v23 = v42;
  sub_100007204(v19, v42, &qword_1006B4190);
  sub_100007204(v23, v16, &qword_1006B4190);
  v24 = *(v21 + 48);
  if (v24(v16, 1, v20) == 1)
  {
    type metadata accessor for FMAccessoryDiscoverySearchingCell();
  }

  else
  {
    type metadata accessor for FMAccessoryDiscoveryAccessoryCell();
    v25 = type metadata accessor for UUID();
    (*(*(v25 - 8) + 8))(v16, v25);
  }

  v26 = v49;
  sub_100007204(v23, v49, &qword_1006B4190);
  if (v24(v26, 1, v20) != 1)
  {
    v27 = type metadata accessor for UUID();
    (*(*(v27 - 8) + 8))(v26, v27);
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v29 = String._bridgeToObjectiveC()();

  [v47 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v29];

  sub_100012DF0(v23, &qword_1006B4190);
  sub_100007204(v19 + v17, v23, &qword_1006B4190);
  v30 = v48;
  sub_100007204(v23, v48, &qword_1006B4190);
  if (v24(v30, 1, v20) == 1)
  {
    type metadata accessor for FMAccessoryDiscoverySearchingCell();
  }

  else
  {
    type metadata accessor for FMAccessoryDiscoveryAccessoryCell();
    v31 = type metadata accessor for UUID();
    (*(*(v31 - 8) + 8))(v30, v31);
  }

  v32 = v49;
  sub_100007204(v23, v49, &qword_1006B4190);
  if (v24(v32, 1, v20) != 1)
  {
    v33 = type metadata accessor for UUID();
    (*(*(v33 - 8) + 8))(v32, v33);
  }

  v34 = swift_getObjCClassFromMetadata();
  v35 = String._bridgeToObjectiveC()();

  v36 = v47;
  [v47 registerClass:v34 forCellReuseIdentifier:v35];

  sub_100012DF0(v23, &qword_1006B4190);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v37 = v44;
  sub_100517B24(0);

  return v37;
}

void *sub_100516378(uint64_t a1, void *a2, uint64_t a3)
{
  v50 = a1;
  v51 = a3;
  v47 = a2;
  v46 = sub_10007EBC0(&qword_1006C3800);
  v40 = *(v46 - 8);
  v41 = v46 - 8;
  v43 = v40;
  v4 = __chkstk_darwin(v46 - 8);
  v49 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v48 = v39 - v7;
  __chkstk_darwin(v6);
  v42 = v39 - v8;
  v45 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v9 = *(v45 - 8);
  __chkstk_darwin(v45);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v12);
  v13 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v13 - 8);
  v44 = *((swift_isaMask & *v3) + qword_1006D3DA0 + 40);
  v14 = sub_10000905C(0, &qword_1006AEDC0);
  v39[1] = "nownItemViewController.swift";
  v39[2] = v14;
  static DispatchQoS.unspecified.getter();
  v52 = _swiftEmptyArrayStorage;
  sub_100528DCC(&unk_1006B0620, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007EBC0(&unk_1006AEDD0);
  sub_100004098(&unk_1006B0630, &unk_1006AEDD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v9 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v45);
  *&v44[v3] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v3 + *((swift_isaMask & *v3) + qword_1006D3DA0 + 56)) = 1;
  sub_10007EBC0(&qword_1006C3970);
  swift_allocObject();
  v15 = sub_100515450();
  *(v3 + *((swift_isaMask & *v3) + qword_1006D3DA0 + 32)) = v51;
  *(v3 + *((swift_isaMask & *v3) + qword_1006D3DA0 + 48)) = v15;
  swift_retain_n();

  v47 = v47;
  v45 = v15;
  v44 = UITableViewDiffableDataSource.init(tableView:cellProvider:)();
  sub_100517044();
  v16 = v48;
  sub_10007EBC0(&unk_1006B40D0);
  v17 = *(v40 + 72);
  v18 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v43 = swift_allocObject();
  v19 = v43 + v18;
  v20 = sub_10007EBC0(&qword_1006B76D0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v22(v19, 1, 1, v20);
  UUID.init()();
  v22(v19 + v17, 0, 1, v20);
  v23 = v42;
  sub_100007204(v19, v42, &qword_1006C3800);
  sub_100007204(v23, v16, &qword_1006C3800);
  v24 = *(v21 + 48);
  if (v24(v16, 1, v20) == 1)
  {
    type metadata accessor for FMAccessoryDiscoverySearchingCell();
  }

  else
  {
    type metadata accessor for FMAccessoryDiscoveryAccessoryCell();
    v25 = type metadata accessor for UUID();
    (*(*(v25 - 8) + 8))(v16, v25);
  }

  v26 = v49;
  sub_100007204(v23, v49, &qword_1006C3800);
  if (v24(v26, 1, v20) != 1)
  {
    v27 = type metadata accessor for UUID();
    (*(*(v27 - 8) + 8))(v26, v27);
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v29 = String._bridgeToObjectiveC()();

  [v47 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v29];

  sub_100012DF0(v23, &qword_1006C3800);
  sub_100007204(v19 + v17, v23, &qword_1006C3800);
  v30 = v48;
  sub_100007204(v23, v48, &qword_1006C3800);
  if (v24(v30, 1, v20) == 1)
  {
    type metadata accessor for FMAccessoryDiscoverySearchingCell();
  }

  else
  {
    type metadata accessor for FMAccessoryDiscoveryAccessoryCell();
    v31 = type metadata accessor for UUID();
    (*(*(v31 - 8) + 8))(v30, v31);
  }

  v32 = v49;
  sub_100007204(v23, v49, &qword_1006C3800);
  if (v24(v32, 1, v20) != 1)
  {
    v33 = type metadata accessor for UUID();
    (*(*(v33 - 8) + 8))(v32, v33);
  }

  v34 = swift_getObjCClassFromMetadata();
  v35 = String._bridgeToObjectiveC()();

  v36 = v47;
  [v47 registerClass:v34 forCellReuseIdentifier:v35];

  sub_100012DF0(v23, &qword_1006C3800);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v37 = v44;
  sub_100518330(0);

  return v37;
}

uint64_t sub_100516CD4()
{
  v1 = v0;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for FMIPAccessoryDiscoveryController();
  sub_100528DCC(&unk_1006BC150, &type metadata accessor for FMIPAccessoryDiscoveryController);

  v2 = dispatch thunk of FMIPAccessoryDiscoveryControllerProtocol.callbacks.modify();
  type metadata accessor for FMIPAccessoryDiscoveryController.Callbacks();
  sub_100528DCC(&qword_1006C3A00, &type metadata accessor for FMIPAccessoryDiscoveryController.Callbacks);
  dispatch thunk of FMIPAccessoryDiscoveryControllerCallbacks.discoveredAccessoriesCallback.setter();
  v2(v11, 0);

  swift_allocObject();
  swift_unknownObjectWeakInit();

  v3 = dispatch thunk of FMIPAccessoryDiscoveryControllerProtocol.callbacks.modify();
  dispatch thunk of FMIPAccessoryDiscoveryControllerCallbacks.lostAccessoriesCallback.setter();
  v3(v11, 0);

  v4 = dispatch thunk of FMIPAccessoryDiscoveryControllerProtocol.discoveredAccessories.getter();
  v5 = *(v1 + *((swift_isaMask & *v1) + qword_1006D3DA0 + 40));
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1005290E4;
  *(v7 + 24) = v6;
  v11[4] = sub_1003B0D50;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1000095FC;
  v11[3] = &unk_100644B80;
  v8 = _Block_copy(v11);

  v9 = v1;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100517044()
{
  v1 = v0;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for FMIPUnknownAccessoryDiscoveryController();
  sub_100528DCC(&unk_1006C3808, &type metadata accessor for FMIPUnknownAccessoryDiscoveryController);

  v2 = dispatch thunk of FMIPAccessoryDiscoveryControllerProtocol.callbacks.modify();
  type metadata accessor for FMIPUnknownAccessoryDiscoveryController.Callbacks();
  sub_100528DCC(&qword_1006C3978, &type metadata accessor for FMIPUnknownAccessoryDiscoveryController.Callbacks);
  dispatch thunk of FMIPAccessoryDiscoveryControllerCallbacks.discoveredAccessoriesCallback.setter();
  v2(v11, 0);

  swift_allocObject();
  swift_unknownObjectWeakInit();

  v3 = dispatch thunk of FMIPAccessoryDiscoveryControllerProtocol.callbacks.modify();
  dispatch thunk of FMIPAccessoryDiscoveryControllerCallbacks.lostAccessoriesCallback.setter();
  v3(v11, 0);

  v4 = dispatch thunk of FMIPAccessoryDiscoveryControllerProtocol.discoveredAccessories.getter();
  v5 = *(v1 + *((swift_isaMask & *v1) + qword_1006D3DA0 + 40));
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100529048;
  *(v7 + 24) = v6;
  v11[4] = sub_10000964C;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1000095FC;
  v11[3] = &unk_1006448D8;
  v8 = _Block_copy(v11);

  v9 = v1;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

void *sub_1005173B4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + *((swift_isaMask & *result) + qword_1006D3DA0 + 40));
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_100529434;
    *(v6 + 24) = v5;
    aBlock[4] = sub_1003B0D50;
    aBlock[5] = v6;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000095FC;
    aBlock[3] = &unk_100644D60;
    v7 = _Block_copy(aBlock);

    v8 = v4;

    dispatch_sync(v3, v7);
    _Block_release(v7);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
    }
  }

  return result;
}

void *sub_100517590(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + *((swift_isaMask & *result) + qword_1006D3DA0 + 40));
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_100529430;
    *(v6 + 24) = v5;
    aBlock[4] = sub_1003B0D50;
    aBlock[5] = v6;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000095FC;
    aBlock[3] = &unk_100644AE0;
    v7 = _Block_copy(aBlock);

    v8 = v4;

    dispatch_sync(v3, v7);
    _Block_release(v7);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
    }
  }

  return result;
}

void *sub_10051776C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + *((swift_isaMask & *result) + qword_1006D3DA0 + 40));
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_100529374;
    *(v6 + 24) = v5;
    aBlock[4] = sub_1003B0D50;
    aBlock[5] = v6;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000095FC;
    aBlock[3] = &unk_100644CC0;
    v7 = _Block_copy(aBlock);

    v8 = v4;

    dispatch_sync(v3, v7);
    _Block_release(v7);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
    }
  }

  return result;
}

void *sub_100517948(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + *((swift_isaMask & *result) + qword_1006D3DA0 + 40));
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_100529094;
    *(v6 + 24) = v5;
    aBlock[4] = sub_1003B0D50;
    aBlock[5] = v6;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000095FC;
    aBlock[3] = &unk_100644A40;
    v7 = _Block_copy(aBlock);

    v8 = v4;

    dispatch_sync(v3, v7);
    _Block_release(v7);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100517B24(int a1)
{
  v2 = v1;
  v49 = a1;
  v53 = type metadata accessor for UUID();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10007EBC0(&qword_1006B4190);
  v50 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v44 - v5;
  v7 = sub_10007EBC0(&qword_1006C39E8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v44 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000905C(0, &qword_1006AEDC0);
  *v14 = static OS_dispatch_queue.main.getter();
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v15 = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);

    __break(1u);
    return result;
  }

  v46 = v8;
  v47 = v7;
  sub_100528FD4();
  sub_100004098(&unk_1006C39F0, &qword_1006B4190);
  v45 = v10;
  v16 = NSDiffableDataSourceSnapshot.init()();
  v48 = v2;
  __chkstk_darwin(v16);
  v17 = type metadata accessor for FMIPAccessoryDiscoveryController();
  *(&v44 - 4) = v17;
  v18 = sub_100528DCC(&unk_1006BC150, &type metadata accessor for FMIPAccessoryDiscoveryController);
  *(&v44 - 3) = v18;
  *(&v44 - 2) = &off_1006294F8;
  *(&v44 - 1) = &off_10062C610;
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  *(&v44 - 4) = v17;
  *(&v44 - 3) = v18;
  *(&v44 - 2) = &off_1006294F8;
  *(&v44 - 1) = &off_10062C610;
  swift_getKeyPath();
  static Published.subscript.getter();

  v20 = v54;
  v21 = *(v54 + 2);
  if (!v21)
  {
    goto LABEL_5;
  }

  v22 = sub_10008CA48(*(v54 + 2), 0);
  v44 = sub_1004A278C(&v54, &v22[(*(v51 + 80) + 32) & ~*(v51 + 80)], v21, v20);

  sub_10000BEC8();
  if (v44 != v21)
  {
    __break(1u);
LABEL_5:
    v22 = _swiftEmptyArrayStorage;
  }

  v54 = v22;
  sub_100524E64(&v54);

  v23 = v54;
  v24 = *(v54 + 2);
  if (v24)
  {
    v54 = _swiftEmptyArrayStorage;
    sub_100167268(0, v24, 0);
    v25 = v54;
    v26 = v50;
    v27 = v51 + 16;
    v51 = *(v51 + 16);
    v28 = *(v27 + 64);
    v44 = v23;
    v29 = v23 + ((v28 + 32) & ~v28);
    v30 = (v27 + 16);
    v31 = *(v27 + 56);
    do
    {
      v33 = v52;
      v32 = v53;
      (v51)(v52, v29, v53);
      (*v30)(v6, v33, v32);
      v34 = sub_10007EBC0(&qword_1006B76D0);
      (*(*(v34 - 8) + 56))(v6, 0, 1, v34);
      v54 = v25;
      v36 = *(v25 + 2);
      v35 = *(v25 + 3);
      if (v36 >= v35 >> 1)
      {
        sub_100167268(v35 > 1, v36 + 1, 1);
        v26 = v50;
        v25 = v54;
      }

      *(v25 + 2) = v36 + 1;
      sub_100035318(v6, &v25[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v36], &qword_1006B4190);
      v29 += v31;
      --v24;
    }

    while (v24);
  }

  v37 = v47;
  v38 = v45;
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_100621C98);
  LOBYTE(v54) = 0;
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

  v39 = v46;
  if (*(v48 + *((swift_isaMask & *v48) + qword_1006D3DA0 + 56)))
  {
    sub_10007EBC0(&qword_1006C39E0);
    v40 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_100552220;
    v42 = sub_10007EBC0(&qword_1006B76D0);
    (*(*(v42 - 8) + 56))(v41 + v40, 1, 1, v42);
    LOBYTE(v54) = 0;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
  }

  dispatch thunk of UITableViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
  return (*(v39 + 8))(v38, v37);
}

uint64_t sub_100518330(int a1)
{
  v2 = v1;
  v49 = a1;
  v53 = type metadata accessor for UUID();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10007EBC0(&qword_1006C3800);
  v50 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v44 - v5;
  v7 = sub_10007EBC0(&qword_1006C3940);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v44 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000905C(0, &qword_1006AEDC0);
  *v14 = static OS_dispatch_queue.main.getter();
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v15 = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);

    __break(1u);
    return result;
  }

  v46 = v8;
  v47 = v7;
  sub_100528FD4();
  sub_100004098(&unk_1006C3950, &qword_1006C3800);
  v45 = v10;
  v16 = NSDiffableDataSourceSnapshot.init()();
  v48 = v2;
  __chkstk_darwin(v16);
  v17 = type metadata accessor for FMIPUnknownAccessoryDiscoveryController();
  *(&v44 - 4) = v17;
  v18 = sub_100528DCC(&unk_1006C3808, &type metadata accessor for FMIPUnknownAccessoryDiscoveryController);
  *(&v44 - 3) = v18;
  *(&v44 - 2) = &off_100629510;
  *(&v44 - 1) = &off_10062C608;
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  *(&v44 - 4) = v17;
  *(&v44 - 3) = v18;
  *(&v44 - 2) = &off_100629510;
  *(&v44 - 1) = &off_10062C608;
  swift_getKeyPath();
  static Published.subscript.getter();

  v20 = v54;
  v21 = *(v54 + 2);
  if (!v21)
  {
    goto LABEL_5;
  }

  v22 = sub_10008CA48(*(v54 + 2), 0);
  v44 = sub_1004A278C(&v54, &v22[(*(v51 + 80) + 32) & ~*(v51 + 80)], v21, v20);

  sub_10000BEC8();
  if (v44 != v21)
  {
    __break(1u);
LABEL_5:
    v22 = _swiftEmptyArrayStorage;
  }

  v54 = v22;
  sub_100524E64(&v54);

  v23 = v54;
  v24 = *(v54 + 2);
  if (v24)
  {
    v54 = _swiftEmptyArrayStorage;
    sub_1001672A8(0, v24, 0);
    v25 = v54;
    v26 = v50;
    v27 = v51 + 16;
    v51 = *(v51 + 16);
    v28 = *(v27 + 64);
    v44 = v23;
    v29 = v23 + ((v28 + 32) & ~v28);
    v30 = (v27 + 16);
    v31 = *(v27 + 56);
    do
    {
      v33 = v52;
      v32 = v53;
      (v51)(v52, v29, v53);
      (*v30)(v6, v33, v32);
      v34 = sub_10007EBC0(&qword_1006B76D0);
      (*(*(v34 - 8) + 56))(v6, 0, 1, v34);
      v54 = v25;
      v36 = *(v25 + 2);
      v35 = *(v25 + 3);
      if (v36 >= v35 >> 1)
      {
        sub_1001672A8(v35 > 1, v36 + 1, 1);
        v26 = v50;
        v25 = v54;
      }

      *(v25 + 2) = v36 + 1;
      sub_100035318(v6, &v25[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v36], &qword_1006C3800);
      v29 += v31;
      --v24;
    }

    while (v24);
  }

  v37 = v47;
  v38 = v45;
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_100621CC0);
  LOBYTE(v54) = 0;
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

  v39 = v46;
  if (*(v48 + *((swift_isaMask & *v48) + qword_1006D3DA0 + 56)))
  {
    sub_10007EBC0(&unk_1006B40D0);
    v40 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_100552220;
    v42 = sub_10007EBC0(&qword_1006B76D0);
    (*(*(v42 - 8) + 56))(v41 + v40, 1, 1, v42);
    LOBYTE(v54) = 0;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
  }

  dispatch thunk of UITableViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
  return (*(v39 + 8))(v38, v37);
}

uint64_t sub_100518B3C(uint64_t a1, void *a2)
{
  v3 = sub_10007EBC0(&qword_1006C39E8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - v5;
  v7 = sub_10007EBC0(&unk_1006C2670);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_10007EBC0(&qword_1006B4190);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    v16 = a2[3];
    v17 = a2[4];
    sub_1000244BC(a2, v16);
    (*(v17 + 8))(v16, v17);
    v18 = sub_10007EBC0(&qword_1006B76D0);
    (*(*(v18 - 8) + 56))(v13, 0, 1, v18);
    dispatch thunk of UITableViewDiffableDataSource.indexPath(for:)();
    v19 = type metadata accessor for IndexPath();
    v20 = (*(*(v19 - 8) + 48))(v9, 1, v19);
    sub_100012DF0(v9, &unk_1006C2670);
    if (v20 == 1)
    {
      sub_100517B24(1);
    }

    else
    {
      dispatch thunk of UITableViewDiffableDataSource.snapshot()();
      sub_10007EBC0(&qword_1006C39E0);
      v21 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_100552220;
      sub_100007204(v13, v22 + v21, &qword_1006B4190);
      NSDiffableDataSourceSnapshot.reloadItems(_:)(v22);

      dispatch thunk of UITableViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

      (*(v4 + 8))(v6, v3);
    }

    return sub_100012DF0(v13, &qword_1006B4190);
  }

  return result;
}

uint64_t sub_100518EC0(uint64_t a1, void *a2)
{
  v3 = sub_10007EBC0(&qword_1006C3940);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - v5;
  v7 = sub_10007EBC0(&unk_1006C2670);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_10007EBC0(&qword_1006C3800);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    v16 = a2[3];
    v17 = a2[4];
    sub_1000244BC(a2, v16);
    (*(v17 + 8))(v16, v17);
    v18 = sub_10007EBC0(&qword_1006B76D0);
    (*(*(v18 - 8) + 56))(v13, 0, 1, v18);
    dispatch thunk of UITableViewDiffableDataSource.indexPath(for:)();
    v19 = type metadata accessor for IndexPath();
    v20 = (*(*(v19 - 8) + 48))(v9, 1, v19);
    sub_100012DF0(v9, &unk_1006C2670);
    if (v20 == 1)
    {
      sub_100518330(1);
    }

    else
    {
      dispatch thunk of UITableViewDiffableDataSource.snapshot()();
      sub_10007EBC0(&unk_1006B40D0);
      v21 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_100552220;
      sub_100007204(v13, v22 + v21, &qword_1006C3800);
      NSDiffableDataSourceSnapshot.reloadItems(_:)(v22);

      dispatch thunk of UITableViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

      (*(v4 + 8))(v6, v3);
    }

    return sub_100012DF0(v13, &qword_1006C3800);
  }

  return result;
}

uint64_t sub_100519244(uint64_t a1, void *a2)
{
  v89 = type metadata accessor for DispatchWorkItemFlags();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for DispatchQoS();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for UUID();
  v6 = *(v110 - 8);
  __chkstk_darwin(v110);
  v109 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&qword_1006BF780);
  __chkstk_darwin(v8 - 8);
  v108 = &v84 - v9;
  v107 = sub_10007EBC0(&unk_1006B4D80);
  v10 = *(v107 - 8);
  __chkstk_darwin(v107);
  v106 = &v84 - v11;
  v105 = sub_10007EBC0(&unk_1006C3980);
  v12 = *(v105 - 8);
  __chkstk_darwin(v105);
  v104 = &v84 - v13;
  v14 = type metadata accessor for FMIPDiscoveredAccessory();
  v15 = __chkstk_darwin(v14);
  v102 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v124 = &v84 - v18;
  v19 = __chkstk_darwin(v17);
  v127 = &v84 - v20;
  v103 = v21;
  __chkstk_darwin(v19);
  v101 = &v84 - v23;
  v24 = a1 + 56;
  v25 = 1 << *(a1 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(a1 + 56);
  v125 = a2;
  v28 = swift_isaMask & *a2;
  v99 = *(v28 + qword_1006D3DA0 + 32);
  v29 = *(v28 + qword_1006D3DA0 + 48);
  v98 = *(v28 + qword_1006D3DA0 + 40);
  v30 = (v25 + 63) >> 6;
  v122 = v22 + 32;
  v123 = v22 + 16;
  v126 = v22;
  v96 = (v22 + 8);
  v95 = v29;
  v91 = "veryDataSourceAccessoryCell";
  v94 = (v10 + 8);
  v93 = (v12 + 8);
  v92 = (v6 + 8);
  v111 = a1;

  v32 = 0;
  *&v33 = 136315138;
  v90 = v33;
  v97 = v30;
  v100 = a1 + 56;
  v121 = v14;
  while (v27)
  {
LABEL_11:
    v69 = v126;
    v70 = *(v126 + 16);
    v71 = v101;
    v70(v101, *(v111 + 48) + *(v126 + 72) * (__clz(__rbit64(v27)) | (v32 << 6)), v14);
    v72 = *(v69 + 32);
    v73 = v127;
    v119 = v72;
    v72(v127, v71, v14);
    v118 = v70;
    v70(v124, v73, v14);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v27 &= v27 - 1;
    v74 = type metadata accessor for Logger();
    sub_100005B14(v74, qword_1006D4630);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v134 = v35;
      *v34 = v90;
      aBlock = 0;
      v129 = 0xE000000000000000;
      _StringGuts.grow(_:)(23);
      v36._object = (v91 | 0x8000000000000000);
      v36._countAndFlagsBits = 0xD000000000000015;
      String.append(_:)(v36);
      v37 = v124;
      _print_unlocked<A, B>(_:_:)();
      v38 = sub_100005B4C(aBlock, v129, &v134);

      *(v34 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v75, v76, "FMAccessoryDiscoveryDataSource: %s", v34, 0xCu);
      sub_100006060(v35);

      v39 = *v96;
      v120 = v96 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v39(v37, v14);
    }

    else
    {

      v77 = *v96;
      v120 = v96 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v77(v124, v14);
    }

    v40 = v125;
    v117 = sub_100526318(v127, 0, *(v125 + v99));
    aBlock = v117;
    v41 = *(v40 + v98);
    v134 = v41;
    v42 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v43 = *(v42 - 8);
    v115 = *(v43 + 56);
    v116 = v43 + 56;
    v44 = v108;
    v115(v108, 1, 1, v42);
    v114 = v41;
    v113 = sub_10007EBC0(&unk_1006B4D90);
    v112 = sub_10000905C(0, &qword_1006AEDC0);
    sub_100004098(&qword_1006B7800, &unk_1006B4D90);
    sub_100528F5C(&qword_1006B4DA0, &qword_1006AEDC0);
    v45 = v106;
    Publisher.subscribe<A>(on:options:)();
    sub_100012DF0(v44, &qword_1006BF780);

    v46 = v114;
    aBlock = v114;
    v115(v44, 1, 1, v42);
    sub_100004098(&unk_1006C3990, &unk_1006B4D80);
    v47 = v104;
    v48 = v107;
    Publisher.receive<A>(on:options:)();
    sub_100012DF0(v44, &qword_1006BF780);

    (*v94)(v45, v48);
    v49 = swift_allocObject();
    v50 = v125;
    swift_unknownObjectWeakInit();
    v51 = v102;
    v52 = v121;
    v118(v102, v127, v121);
    v53 = (*(v126 + 80) + 24) & ~*(v126 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = v49;
    v119(v54 + v53, v51, v52);
    sub_100004098(&qword_1006B4DB0, &unk_1006C3980);
    v55 = v105;
    v116 = Publisher.sink(receiveCompletion:receiveValue:)();

    (*v93)(v47, v55);
    v119 = FMIPDiscoveredAccessory.displayName.getter();
    v117 = v56;
    v118 = *(v50 + v95);

    v57 = v109;
    v58 = FMIPDiscoveredAccessory.identifier.getter();
    __chkstk_darwin(v58);
    v59 = type metadata accessor for FMIPAccessoryDiscoveryController();
    *(&v84 - 4) = v59;
    v60 = sub_100528DCC(&unk_1006BC150, &type metadata accessor for FMIPAccessoryDiscoveryController);
    *(&v84 - 3) = v60;
    *(&v84 - 2) = &off_1006294F8;
    *(&v84 - 1) = &off_10062C610;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v84 - 4) = v59;
    *(&v84 - 3) = v60;
    *(&v84 - 2) = &off_1006294F8;
    *(&v84 - 1) = &off_10062C610;
    swift_getKeyPath();
    v62 = v116;

    v63 = v117;

    v64 = static Published.subscript.modify();
    v66 = v65;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v134 = *v66;
    *v66 = 0x8000000000000000;
    sub_1001BB500(v119, v63, 0, v62, v57, isUniquelyReferenced_nonNull_native);
    (*v92)(v57, v110);
    *v66 = v134;
    v64(&aBlock, 0);

    v14 = v121;
    result = (*(v126 + 8))(v127, v121);
    v24 = v100;
    v30 = v97;
  }

  while (1)
  {
    v68 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v68 >= v30)
    {

      sub_10000905C(0, &qword_1006AEDC0);
      v78 = static OS_dispatch_queue.main.getter();
      v79 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v132 = sub_100529428;
      v133 = v79;
      aBlock = _NSConcreteStackBlock;
      v129 = 1107296256;
      v130 = sub_100004AE4;
      v131 = &unk_100644BD0;
      v80 = _Block_copy(&aBlock);

      v81 = v84;
      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_100528DCC(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10007EBC0(&unk_1006B0640);
      sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
      v82 = v87;
      v83 = v89;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v80);

      (*(v88 + 8))(v82, v83);
      return (*(v85 + 8))(v81, v86);
    }

    v27 = *(v24 + 8 * v68);
    ++v32;
    if (v27)
    {
      v32 = v68;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10051A1C8(uint64_t a1, void *a2)
{
  v89 = type metadata accessor for DispatchWorkItemFlags();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for DispatchQoS();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for UUID();
  v6 = *(v110 - 8);
  __chkstk_darwin(v110);
  v109 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&qword_1006BF780);
  __chkstk_darwin(v8 - 8);
  v108 = &v84 - v9;
  v107 = sub_10007EBC0(&unk_1006B4D80);
  v10 = *(v107 - 8);
  __chkstk_darwin(v107);
  v106 = &v84 - v11;
  v105 = sub_10007EBC0(&unk_1006C3980);
  v12 = *(v105 - 8);
  __chkstk_darwin(v105);
  v104 = &v84 - v13;
  v14 = type metadata accessor for FMIPUnknownItem();
  v15 = __chkstk_darwin(v14);
  v102 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v124 = &v84 - v18;
  v19 = __chkstk_darwin(v17);
  v127 = &v84 - v20;
  v103 = v21;
  __chkstk_darwin(v19);
  v101 = &v84 - v23;
  v24 = a1 + 56;
  v25 = 1 << *(a1 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(a1 + 56);
  v125 = a2;
  v28 = swift_isaMask & *a2;
  v99 = *(v28 + qword_1006D3DA0 + 32);
  v29 = *(v28 + qword_1006D3DA0 + 48);
  v98 = *(v28 + qword_1006D3DA0 + 40);
  v30 = (v25 + 63) >> 6;
  v122 = v22 + 32;
  v123 = v22 + 16;
  v126 = v22;
  v96 = (v22 + 8);
  v95 = v29;
  v91 = "veryDataSourceAccessoryCell";
  v94 = (v10 + 8);
  v93 = (v12 + 8);
  v92 = (v6 + 8);
  v111 = a1;

  v32 = 0;
  *&v33 = 136315138;
  v90 = v33;
  v97 = v30;
  v100 = a1 + 56;
  v121 = v14;
  while (v27)
  {
LABEL_11:
    v69 = v126;
    v70 = *(v126 + 16);
    v71 = v101;
    v70(v101, *(v111 + 48) + *(v126 + 72) * (__clz(__rbit64(v27)) | (v32 << 6)), v14);
    v72 = *(v69 + 32);
    v73 = v127;
    v119 = v72;
    v72(v127, v71, v14);
    v118 = v70;
    v70(v124, v73, v14);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v27 &= v27 - 1;
    v74 = type metadata accessor for Logger();
    sub_100005B14(v74, qword_1006D4630);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v134 = v35;
      *v34 = v90;
      aBlock = 0;
      v129 = 0xE000000000000000;
      _StringGuts.grow(_:)(23);
      v36._object = (v91 | 0x8000000000000000);
      v36._countAndFlagsBits = 0xD000000000000015;
      String.append(_:)(v36);
      v37 = v124;
      _print_unlocked<A, B>(_:_:)();
      v38 = sub_100005B4C(aBlock, v129, &v134);

      *(v34 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v75, v76, "FMAccessoryDiscoveryDataSource: %s", v34, 0xCu);
      sub_100006060(v35);

      v39 = *v96;
      v120 = v96 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v39(v37, v14);
    }

    else
    {

      v77 = *v96;
      v120 = v96 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v77(v124, v14);
    }

    v40 = v125;
    v117 = sub_100526C30(v127, 0, *(v125 + v99));
    aBlock = v117;
    v41 = *(v40 + v98);
    v134 = v41;
    v42 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v43 = *(v42 - 8);
    v115 = *(v43 + 56);
    v116 = v43 + 56;
    v44 = v108;
    v115(v108, 1, 1, v42);
    v114 = v41;
    v113 = sub_10007EBC0(&unk_1006B4D90);
    v112 = sub_10000905C(0, &qword_1006AEDC0);
    sub_100004098(&qword_1006B7800, &unk_1006B4D90);
    sub_100528F5C(&qword_1006B4DA0, &qword_1006AEDC0);
    v45 = v106;
    Publisher.subscribe<A>(on:options:)();
    sub_100012DF0(v44, &qword_1006BF780);

    v46 = v114;
    aBlock = v114;
    v115(v44, 1, 1, v42);
    sub_100004098(&unk_1006C3990, &unk_1006B4D80);
    v47 = v104;
    v48 = v107;
    Publisher.receive<A>(on:options:)();
    sub_100012DF0(v44, &qword_1006BF780);

    (*v94)(v45, v48);
    v49 = swift_allocObject();
    v50 = v125;
    swift_unknownObjectWeakInit();
    v51 = v102;
    v52 = v121;
    v118(v102, v127, v121);
    v53 = (*(v126 + 80) + 24) & ~*(v126 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = v49;
    v119(v54 + v53, v51, v52);
    sub_100004098(&qword_1006B4DB0, &unk_1006C3980);
    v55 = v105;
    v116 = Publisher.sink(receiveCompletion:receiveValue:)();

    (*v93)(v47, v55);
    v119 = FMIPUnknownItem.name.getter();
    v117 = v56;
    v118 = *(v50 + v95);

    v57 = v109;
    v58 = FMIPUnknownItem.identifier.getter();
    __chkstk_darwin(v58);
    v59 = type metadata accessor for FMIPUnknownAccessoryDiscoveryController();
    *(&v84 - 4) = v59;
    v60 = sub_100528DCC(&unk_1006C3808, &type metadata accessor for FMIPUnknownAccessoryDiscoveryController);
    *(&v84 - 3) = v60;
    *(&v84 - 2) = &off_100629510;
    *(&v84 - 1) = &off_10062C608;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v84 - 4) = v59;
    *(&v84 - 3) = v60;
    *(&v84 - 2) = &off_100629510;
    *(&v84 - 1) = &off_10062C608;
    swift_getKeyPath();
    v62 = v116;

    v63 = v117;

    v64 = static Published.subscript.modify();
    v66 = v65;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v134 = *v66;
    *v66 = 0x8000000000000000;
    sub_1001BB500(v119, v63, 0, v62, v57, isUniquelyReferenced_nonNull_native);
    (*v92)(v57, v110);
    *v66 = v134;
    v64(&aBlock, 0);

    v14 = v121;
    result = (*(v126 + 8))(v127, v121);
    v24 = v100;
    v30 = v97;
  }

  while (1)
  {
    v68 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v68 >= v30)
    {

      sub_10000905C(0, &qword_1006AEDC0);
      v78 = static OS_dispatch_queue.main.getter();
      v79 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v132 = sub_100529424;
      v133 = v79;
      aBlock = _NSConcreteStackBlock;
      v129 = 1107296256;
      v130 = sub_100004AE4;
      v131 = &unk_100644928;
      v80 = _Block_copy(&aBlock);

      v81 = v84;
      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_100528DCC(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10007EBC0(&unk_1006B0640);
      sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
      v82 = v87;
      v83 = v89;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v80);

      (*(v88 + 8))(v82, v83);
      return (*(v85 + 8))(v81, v86);
    }

    v27 = *(v24 + 8 * v68);
    ++v32;
    if (v27)
    {
      v32 = v68;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10051B14C(uint64_t a1, void *a2)
{
  v133 = sub_10007EBC0(&qword_1006C3A08);
  __chkstk_darwin(v133);
  v5 = &v123 - v4;
  v6 = sub_10007EBC0(&qword_1006B4190);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v125 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v136 = &v123 - v10;
  v131 = type metadata accessor for DispatchWorkItemFlags();
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v129 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for DispatchQoS();
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_10007EBC0(&unk_1006C3A10);
  __chkstk_darwin(v152);
  v160 = &v123 - v13;
  v14 = sub_10007EBC0(&unk_1006BC140);
  v15 = __chkstk_darwin(v14 - 8);
  v135 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v134 = &v123 - v18;
  v19 = __chkstk_darwin(v17);
  v141 = &v123 - v20;
  v21 = __chkstk_darwin(v19);
  v163 = &v123 - v22;
  __chkstk_darwin(v21);
  v171 = &v123 - v23;
  v156 = type metadata accessor for UUID();
  v24 = *(v156 - 8);
  v25 = __chkstk_darwin(v156);
  v124 = &v123 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v123 - v27;
  v29 = type metadata accessor for FMIPDiscoveredAccessory();
  v30 = __chkstk_darwin(v29);
  v167 = &v123 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  __chkstk_darwin(v32);
  v149 = &v123 - v35;
  v36 = a1 + 56;
  v37 = 1 << *(a1 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & *(a1 + 56);
  v147 = *((swift_isaMask & *a2) + qword_1006D3DA0 + 48);
  v159 = (v37 + 63) >> 6;
  v146 = v33 + 16;
  v145 = v33 + 32;
  v150 = v33;
  v166 = (v33 + 8);
  v138 = "Dicovered accessory: ";
  v155 = (v24 + 8);
  v161 = (v7 + 56);
  v40 = (v7 + 48);
  v41 = v6;
  v42 = v34;
  v144 = v40;
  v139 = v24;
  v123 = (v24 + 32);
  v158 = a1;
  v43 = v39;

  v45 = 0;
  *&v46 = 136315138;
  v137 = v46;
  v132 = v5;
  v162 = v28;
  v151 = v29;
  v172 = v42;
  v148 = v36;
  v143 = a2;
  v157 = v41;
  while (v43)
  {
LABEL_13:
    v165 = v43;
    v58 = v150;
    v59 = *(v158 + 48) + *(v150 + 72) * (__clz(__rbit64(v43)) | (v45 << 6));
    v60 = *(v150 + 16);
    v61 = v149;
    v60(v149, v59, v29);
    (*(v58 + 32))(v42, v61, v29);
    v60(v167, v42, v29);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    sub_100005B14(v62, qword_1006D4630);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v179 = v66;
      *v65 = v137;
      aBlock = 0;
      v174 = 0xE000000000000000;
      _StringGuts.grow(_:)(18);
      v67._object = (v138 | 0x8000000000000000);
      v67._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v67);
      v68 = v167;
      _print_unlocked<A, B>(_:_:)();
      v69 = sub_100005B4C(aBlock, v174, &v179);

      *(v65 + 4) = v69;
      _os_log_impl(&_mh_execute_header, v63, v64, "FMAccessoryDiscoveryDataSource: %s", v65, 0xCu);
      sub_100006060(v66);

      v70 = *v166;
      v71 = v68;
    }

    else
    {

      v71 = v167;
      v70 = *v166;
    }

    v164 = v70;
    v70(v71, v29);
    v72 = v162;
    v73 = *(a2 + v147);
    v74 = FMIPDiscoveredAccessory.identifier.getter();
    __chkstk_darwin(v74);
    v75 = type metadata accessor for FMIPAccessoryDiscoveryController();
    *(&v123 - 4) = v75;
    v76 = sub_100528DCC(&unk_1006BC150, &type metadata accessor for FMIPAccessoryDiscoveryController);
    *(&v123 - 3) = v76;
    *(&v123 - 2) = &off_1006294F8;
    *(&v123 - 1) = &off_10062C610;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v168 = v76;
    v169 = v75;
    *(&v123 - 4) = v75;
    *(&v123 - 3) = v76;
    *(&v123 - 2) = &off_1006294F8;
    *(&v123 - 1) = &off_10062C610;
    swift_getKeyPath();
    v170 = v73;
    v78 = static Published.subscript.modify();
    v80 = v79;
    v81 = sub_1001B3964(v72);
    if (v82)
    {
      v83 = v81;
      v153 = v78;
      v154 = KeyPath;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = *v80;
      v179 = *v80;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1001BDD94();
        v85 = v179;
      }

      v86 = *(v139 + 8);
      v87 = v156;
      v86(*(v85 + 48) + *(v139 + 72) * v83, v156);
      v88 = *(*(v85 + 56) + 32 * v83 + 16);

      sub_1001B9DC4(v83, v85);
      v142 = v86;
      v86(v162, v87);
      *v80 = v85;
      (v153)(&aBlock, 0);
    }

    else
    {
      v142 = *v155;
      v142(v72, v156);
      (v78)(&aBlock, 0);
    }

    __chkstk_darwin(v89);
    v90 = v168;
    v91 = v169;
    *(&v123 - 4) = v169;
    *(&v123 - 3) = v90;
    *(&v123 - 2) = &off_1006294F8;
    *(&v123 - 1) = &off_10062C610;
    v92 = swift_getKeyPath();
    __chkstk_darwin(v92);
    *(&v123 - 4) = v91;
    *(&v123 - 3) = v90;
    *(&v123 - 2) = &off_1006294F8;
    *(&v123 - 1) = &off_10062C610;
    swift_getKeyPath();
    v93 = v171;
    static Published.subscript.getter();

    v94 = v163;
    FMIPDiscoveredAccessory.identifier.getter();
    v95 = sub_10007EBC0(&qword_1006B76D0);
    v153 = *(v95 - 8);
    v153[7](v94, 0, 1, v95);
    v96 = v157;
    v154 = *v161;
    v154(v94, 0, 1, v157);
    v97 = *(v152 + 48);
    v98 = v160;
    sub_100007204(v93, v160, &unk_1006BC140);
    sub_100007204(v94, v98 + v97, &unk_1006BC140);
    v99 = *v144;
    if ((*v144)(v98, 1, v96) == 1)
    {
      sub_100012DF0(v94, &unk_1006BC140);
      sub_100012DF0(v171, &unk_1006BC140);
      v100 = v99(v98 + v97, 1, v96) == 1;
      v51 = v96;
      v50 = v98;
      v29 = v151;
      if (v100)
      {
        goto LABEL_6;
      }

      goto LABEL_28;
    }

    v140 = v95;
    v101 = v171;
    v102 = v141;
    sub_100007204(v98, v141, &unk_1006BC140);
    if (v99(v98 + v97, 1, v96) == 1)
    {
      sub_100012DF0(v163, &unk_1006BC140);
      sub_100012DF0(v101, &unk_1006BC140);
      sub_100012DF0(v102, &qword_1006B4190);
      v50 = v98;
      v29 = v151;
LABEL_28:
      v56 = &unk_1006C3A10;
      goto LABEL_7;
    }

    v103 = v98 + v97;
    v104 = v136;
    sub_100035318(v103, v136, &qword_1006B4190);
    v105 = *(v133 + 48);
    v106 = v102;
    v107 = v132;
    sub_100007204(v106, v132, &qword_1006B4190);
    sub_100007204(v104, v107 + v105, &qword_1006B4190);
    v108 = v153[6];
    v109 = v140;
    if (v108(v107, 1, v140) == 1)
    {
      sub_100012DF0(v104, &qword_1006B4190);
      sub_100012DF0(v163, &unk_1006BC140);
      sub_100012DF0(v101, &unk_1006BC140);
      if (v108(v107 + v105, 1, v109) == 1)
      {
        sub_100012DF0(v107, &qword_1006B4190);
        v47 = v157;
        v48 = v160;
        v49 = v141;
        v29 = v151;
LABEL_5:
        sub_100012DF0(v49, &qword_1006B4190);
        v50 = v48;
        v51 = v47;
LABEL_6:
        sub_100012DF0(v50, &unk_1006BC140);
        v52 = v134;
        v53 = (v154)(v134, 1, 1, v51);
        __chkstk_darwin(v53);
        v55 = v168;
        v54 = v169;
        *(&v123 - 4) = v169;
        *(&v123 - 3) = v55;
        *(&v123 - 2) = &off_1006294F8;
        *(&v123 - 1) = &off_10062C610;
        v154 = swift_getKeyPath();
        __chkstk_darwin(v154);
        *(&v123 - 4) = v54;
        *(&v123 - 3) = v55;
        *(&v123 - 2) = &off_1006294F8;
        *(&v123 - 1) = &off_10062C610;
        swift_getKeyPath();
        sub_100007204(v52, v135, &unk_1006BC140);

        static Published.subscript.setter();
        v50 = v52;
        v56 = &unk_1006BC140;
        goto LABEL_7;
      }
    }

    else
    {
      v110 = v125;
      sub_100007204(v107, v125, &qword_1006B4190);
      v111 = v108(v107 + v105, 1, v109);
      v112 = v163;
      if (v111 != 1)
      {
        v113 = v107 + v105;
        v114 = v124;
        v115 = v156;
        (*v123)(v124, v113, v156);
        LODWORD(v153) = static UUID.== infix(_:_:)();
        v116 = v142;
        v142(v114, v115);
        sub_100012DF0(v136, &qword_1006B4190);
        sub_100012DF0(v112, &unk_1006BC140);
        sub_100012DF0(v171, &unk_1006BC140);
        v116(v110, v115);
        sub_100012DF0(v107, &qword_1006B4190);
        v47 = v157;
        v48 = v160;
        v49 = v141;
        v29 = v151;
        if (v153)
        {
          goto LABEL_5;
        }

        goto LABEL_35;
      }

      sub_100012DF0(v136, &qword_1006B4190);
      sub_100012DF0(v112, &unk_1006BC140);
      sub_100012DF0(v171, &unk_1006BC140);
      v142(v110, v156);
    }

    sub_100012DF0(v107, &qword_1006C3A08);
    v48 = v160;
    v49 = v141;
    v29 = v151;
LABEL_35:
    sub_100012DF0(v49, &qword_1006B4190);
    v50 = v48;
    v56 = &unk_1006BC140;
LABEL_7:
    sub_100012DF0(v50, v56);
    a2 = v143;
    v42 = v172;
    v43 = (v165 - 1) & v165;
    result = v164(v172, v29);
    v36 = v148;
  }

  while (1)
  {
    v57 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    if (v57 >= v159)
    {

      sub_10000905C(0, &qword_1006AEDC0);
      v117 = static OS_dispatch_queue.main.getter();
      v118 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v177 = sub_10052937C;
      v178 = v118;
      aBlock = _NSConcreteStackBlock;
      v174 = 1107296256;
      v175 = sub_100004AE4;
      v176 = &unk_100644CE8;
      v119 = _Block_copy(&aBlock);

      v120 = v126;
      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_100528DCC(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10007EBC0(&unk_1006B0640);
      sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
      v121 = v129;
      v122 = v131;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v119);

      (*(v130 + 8))(v121, v122);
      return (*(v127 + 8))(v120, v128);
    }

    v43 = *(v36 + 8 * v57);
    ++v45;
    if (v43)
    {
      v45 = v57;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10051C5FC(uint64_t a1, void *a2)
{
  v133 = sub_10007EBC0(&qword_1006C39C8);
  __chkstk_darwin(v133);
  v5 = &v123 - v4;
  v6 = sub_10007EBC0(&qword_1006C3800);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v125 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v136 = &v123 - v10;
  v131 = type metadata accessor for DispatchWorkItemFlags();
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v129 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for DispatchQoS();
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_10007EBC0(&qword_1006C39D0);
  __chkstk_darwin(v152);
  v160 = &v123 - v13;
  v14 = sub_10007EBC0(&qword_1006C37F8);
  v15 = __chkstk_darwin(v14 - 8);
  v135 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v134 = &v123 - v18;
  v19 = __chkstk_darwin(v17);
  v141 = &v123 - v20;
  v21 = __chkstk_darwin(v19);
  v163 = &v123 - v22;
  __chkstk_darwin(v21);
  v171 = &v123 - v23;
  v156 = type metadata accessor for UUID();
  v24 = *(v156 - 8);
  v25 = __chkstk_darwin(v156);
  v124 = &v123 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v123 - v27;
  v29 = type metadata accessor for FMIPUnknownItem();
  v30 = __chkstk_darwin(v29);
  v167 = &v123 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  __chkstk_darwin(v32);
  v149 = &v123 - v35;
  v36 = a1 + 56;
  v37 = 1 << *(a1 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & *(a1 + 56);
  v147 = *((swift_isaMask & *a2) + qword_1006D3DA0 + 48);
  v159 = (v37 + 63) >> 6;
  v146 = v33 + 16;
  v145 = v33 + 32;
  v150 = v33;
  v166 = (v33 + 8);
  v138 = "Dicovered accessory: ";
  v155 = (v24 + 8);
  v161 = (v7 + 56);
  v40 = (v7 + 48);
  v41 = v6;
  v42 = v34;
  v144 = v40;
  v139 = v24;
  v123 = (v24 + 32);
  v158 = a1;
  v43 = v39;

  v45 = 0;
  *&v46 = 136315138;
  v137 = v46;
  v132 = v5;
  v162 = v28;
  v151 = v29;
  v172 = v42;
  v148 = v36;
  v143 = a2;
  v157 = v41;
  while (v43)
  {
LABEL_13:
    v165 = v43;
    v58 = v150;
    v59 = *(v158 + 48) + *(v150 + 72) * (__clz(__rbit64(v43)) | (v45 << 6));
    v60 = *(v150 + 16);
    v61 = v149;
    v60(v149, v59, v29);
    (*(v58 + 32))(v42, v61, v29);
    v60(v167, v42, v29);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    sub_100005B14(v62, qword_1006D4630);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v179 = v66;
      *v65 = v137;
      aBlock = 0;
      v174 = 0xE000000000000000;
      _StringGuts.grow(_:)(18);
      v67._object = (v138 | 0x8000000000000000);
      v67._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v67);
      v68 = v167;
      _print_unlocked<A, B>(_:_:)();
      v69 = sub_100005B4C(aBlock, v174, &v179);

      *(v65 + 4) = v69;
      _os_log_impl(&_mh_execute_header, v63, v64, "FMAccessoryDiscoveryDataSource: %s", v65, 0xCu);
      sub_100006060(v66);

      v70 = *v166;
      v71 = v68;
    }

    else
    {

      v71 = v167;
      v70 = *v166;
    }

    v164 = v70;
    v70(v71, v29);
    v72 = v162;
    v73 = *(a2 + v147);
    v74 = FMIPUnknownItem.identifier.getter();
    __chkstk_darwin(v74);
    v75 = type metadata accessor for FMIPUnknownAccessoryDiscoveryController();
    *(&v123 - 4) = v75;
    v76 = sub_100528DCC(&unk_1006C3808, &type metadata accessor for FMIPUnknownAccessoryDiscoveryController);
    *(&v123 - 3) = v76;
    *(&v123 - 2) = &off_100629510;
    *(&v123 - 1) = &off_10062C608;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v168 = v76;
    v169 = v75;
    *(&v123 - 4) = v75;
    *(&v123 - 3) = v76;
    *(&v123 - 2) = &off_100629510;
    *(&v123 - 1) = &off_10062C608;
    swift_getKeyPath();
    v170 = v73;
    v78 = static Published.subscript.modify();
    v80 = v79;
    v81 = sub_1001B3964(v72);
    if (v82)
    {
      v83 = v81;
      v153 = v78;
      v154 = KeyPath;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = *v80;
      v179 = *v80;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1001BDD94();
        v85 = v179;
      }

      v86 = *(v139 + 8);
      v87 = v156;
      v86(*(v85 + 48) + *(v139 + 72) * v83, v156);
      v88 = *(*(v85 + 56) + 32 * v83 + 16);

      sub_1001B9DC4(v83, v85);
      v142 = v86;
      v86(v162, v87);
      *v80 = v85;
      (v153)(&aBlock, 0);
    }

    else
    {
      v142 = *v155;
      v142(v72, v156);
      (v78)(&aBlock, 0);
    }

    __chkstk_darwin(v89);
    v90 = v168;
    v91 = v169;
    *(&v123 - 4) = v169;
    *(&v123 - 3) = v90;
    *(&v123 - 2) = &off_100629510;
    *(&v123 - 1) = &off_10062C608;
    v92 = swift_getKeyPath();
    __chkstk_darwin(v92);
    *(&v123 - 4) = v91;
    *(&v123 - 3) = v90;
    *(&v123 - 2) = &off_100629510;
    *(&v123 - 1) = &off_10062C608;
    swift_getKeyPath();
    v93 = v171;
    static Published.subscript.getter();

    v94 = v163;
    FMIPUnknownItem.identifier.getter();
    v95 = sub_10007EBC0(&qword_1006B76D0);
    v153 = *(v95 - 8);
    v153[7](v94, 0, 1, v95);
    v96 = v157;
    v154 = *v161;
    v154(v94, 0, 1, v157);
    v97 = *(v152 + 48);
    v98 = v160;
    sub_100007204(v93, v160, &qword_1006C37F8);
    sub_100007204(v94, v98 + v97, &qword_1006C37F8);
    v99 = *v144;
    if ((*v144)(v98, 1, v96) == 1)
    {
      sub_100012DF0(v94, &qword_1006C37F8);
      sub_100012DF0(v171, &qword_1006C37F8);
      v100 = v99(v98 + v97, 1, v96) == 1;
      v51 = v96;
      v50 = v98;
      v29 = v151;
      if (v100)
      {
        goto LABEL_6;
      }

      goto LABEL_28;
    }

    v140 = v95;
    v101 = v171;
    v102 = v141;
    sub_100007204(v98, v141, &qword_1006C37F8);
    if (v99(v98 + v97, 1, v96) == 1)
    {
      sub_100012DF0(v163, &qword_1006C37F8);
      sub_100012DF0(v101, &qword_1006C37F8);
      sub_100012DF0(v102, &qword_1006C3800);
      v50 = v98;
      v29 = v151;
LABEL_28:
      v56 = &qword_1006C39D0;
      goto LABEL_7;
    }

    v103 = v98 + v97;
    v104 = v136;
    sub_100035318(v103, v136, &qword_1006C3800);
    v105 = *(v133 + 48);
    v106 = v102;
    v107 = v132;
    sub_100007204(v106, v132, &qword_1006C3800);
    sub_100007204(v104, v107 + v105, &qword_1006C3800);
    v108 = v153[6];
    v109 = v140;
    if (v108(v107, 1, v140) == 1)
    {
      sub_100012DF0(v104, &qword_1006C3800);
      sub_100012DF0(v163, &qword_1006C37F8);
      sub_100012DF0(v101, &qword_1006C37F8);
      if (v108(v107 + v105, 1, v109) == 1)
      {
        sub_100012DF0(v107, &qword_1006C3800);
        v47 = v157;
        v48 = v160;
        v49 = v141;
        v29 = v151;
LABEL_5:
        sub_100012DF0(v49, &qword_1006C3800);
        v50 = v48;
        v51 = v47;
LABEL_6:
        sub_100012DF0(v50, &qword_1006C37F8);
        v52 = v134;
        v53 = (v154)(v134, 1, 1, v51);
        __chkstk_darwin(v53);
        v55 = v168;
        v54 = v169;
        *(&v123 - 4) = v169;
        *(&v123 - 3) = v55;
        *(&v123 - 2) = &off_100629510;
        *(&v123 - 1) = &off_10062C608;
        v154 = swift_getKeyPath();
        __chkstk_darwin(v154);
        *(&v123 - 4) = v54;
        *(&v123 - 3) = v55;
        *(&v123 - 2) = &off_100629510;
        *(&v123 - 1) = &off_10062C608;
        swift_getKeyPath();
        sub_100007204(v52, v135, &qword_1006C37F8);

        static Published.subscript.setter();
        v50 = v52;
        v56 = &qword_1006C37F8;
        goto LABEL_7;
      }
    }

    else
    {
      v110 = v125;
      sub_100007204(v107, v125, &qword_1006C3800);
      v111 = v108(v107 + v105, 1, v109);
      v112 = v163;
      if (v111 != 1)
      {
        v113 = v107 + v105;
        v114 = v124;
        v115 = v156;
        (*v123)(v124, v113, v156);
        LODWORD(v153) = static UUID.== infix(_:_:)();
        v116 = v142;
        v142(v114, v115);
        sub_100012DF0(v136, &qword_1006C3800);
        sub_100012DF0(v112, &qword_1006C37F8);
        sub_100012DF0(v171, &qword_1006C37F8);
        v116(v110, v115);
        sub_100012DF0(v107, &qword_1006C3800);
        v47 = v157;
        v48 = v160;
        v49 = v141;
        v29 = v151;
        if (v153)
        {
          goto LABEL_5;
        }

        goto LABEL_35;
      }

      sub_100012DF0(v136, &qword_1006C3800);
      sub_100012DF0(v112, &qword_1006C37F8);
      sub_100012DF0(v171, &qword_1006C37F8);
      v142(v110, v156);
    }

    sub_100012DF0(v107, &qword_1006C39C8);
    v48 = v160;
    v49 = v141;
    v29 = v151;
LABEL_35:
    sub_100012DF0(v49, &qword_1006C3800);
    v50 = v48;
    v56 = &qword_1006C37F8;
LABEL_7:
    sub_100012DF0(v50, v56);
    a2 = v143;
    v42 = v172;
    v43 = (v165 - 1) & v165;
    result = v164(v172, v29);
    v36 = v148;
  }

  while (1)
  {
    v57 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    if (v57 >= v159)
    {

      sub_10000905C(0, &qword_1006AEDC0);
      v117 = static OS_dispatch_queue.main.getter();
      v118 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v177 = sub_10052909C;
      v178 = v118;
      aBlock = _NSConcreteStackBlock;
      v174 = 1107296256;
      v175 = sub_100004AE4;
      v176 = &unk_100644A68;
      v119 = _Block_copy(&aBlock);

      v120 = v126;
      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_100528DCC(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10007EBC0(&unk_1006B0640);
      sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
      v121 = v129;
      v122 = v131;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v119);

      (*(v130 + 8))(v121, v122);
      return (*(v127 + 8))(v120, v128);
    }

    v43 = *(v36 + 8 * v57);
    ++v45;
    if (v43)
    {
      v45 = v57;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_10051DAAC(uint64_t a1, void (*a2)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2(1);
  }
}

void *sub_10051DB0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v124 = a4;
  v128 = a3;
  v117 = sub_10007EBC0(&unk_1006C3A10);
  __chkstk_darwin(v117);
  v7 = &v108 - v6;
  v8 = sub_10007EBC0(&unk_1006BC140);
  v9 = __chkstk_darwin(v8 - 8);
  v111 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v120 = &v108 - v12;
  __chkstk_darwin(v11);
  v118 = &v108 - v13;
  v14 = sub_10007EBC0(&unk_1006B77C0);
  v15 = __chkstk_darwin(v14 - 8);
  v114 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v113 = &v108 - v17;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v125 = v18;
  v126 = v19;
  __chkstk_darwin(v18);
  v112 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for UIListContentConfiguration();
  v21 = *(v127 - 8);
  __chkstk_darwin(v127);
  v129 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10007EBC0(&qword_1006B4190);
  v115 = *(v23 - 8);
  v116 = v23;
  v24 = __chkstk_darwin(v23);
  v110 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v121 = &v108 - v27;
  __chkstk_darwin(v26);
  v29 = &v108 - v28;
  v30 = type metadata accessor for IndexPath();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v108 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100005B14(v34, qword_1006D4630);
  v35 = *(v31 + 16);
  v122 = a2;
  v35(v33, a2, v30);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  v38 = os_log_type_enabled(v36, v37);
  v119 = v7;
  v123 = v21;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v109 = a1;
    v41 = v40;
    v130[0] = v40;
    *v39 = 136315138;
    sub_100528DCC(&qword_1006C01F0, &type metadata accessor for IndexPath);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    (*(v31 + 8))(v33, v30);
    v45 = sub_100005B4C(v42, v44, v130);

    *(v39 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v36, v37, "FMAccessoryDiscoveryDataSource: dequeueConfiguredReusableCell(for: %s)", v39, 0xCu);
    sub_100006060(v41);
    a1 = v109;
  }

  else
  {

    (*(v31 + 8))(v33, v30);
  }

  sub_100007204(v128, v29, &qword_1006B4190);
  v46 = sub_10007EBC0(&qword_1006B76D0);
  v47 = *(*(v46 - 8) + 48);
  if (v47(v29, 1, v46) == 1)
  {
    v48 = v125;
  }

  else
  {
    v49 = v29;
    v48 = v125;
    (*(v126 + 8))(v49, v125);
  }

  v50 = String._bridgeToObjectiveC()();

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v52 = [a1 dequeueReusableCellWithIdentifier:v50 forIndexPath:isa];

  v53 = objc_opt_self();
  v54 = v52;
  v55 = [v53 systemGroupedBackgroundColor];
  [v54 setBackgroundColor:v55];
  v125 = v54;

  static UIListContentConfiguration.cell()();
  v56 = v121;
  sub_100007204(v128, v121, &qword_1006B4190);
  if (v47(v56, 1, v46) == 1)
  {
    v57 = [objc_opt_self() mainBundle];
    v131._object = 0x8000000100579A00;
    v58._countAndFlagsBits = 0xD000000000000027;
    v58._object = 0x80000001005884C0;
    v59.value._object = 0x80000001005799E0;
    v131._countAndFlagsBits = 0xD000000000000018;
    v59.value._countAndFlagsBits = 0xD000000000000013;
    v60._countAndFlagsBits = 0;
    v60._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v58, v59, v57, v60, v131);

    UIListContentConfiguration.text.setter();
    v61 = [v53 secondaryLabelColor];
    v62 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v62(v130, 0);
    v63 = v129;
    [objc_allocWithZone(UIImage) init];
    UIListContentConfiguration.image.setter();
    goto LABEL_14;
  }

  v64 = v112;
  v65 = (*(v126 + 32))(v112, v56, v48);
  __chkstk_darwin(v65);
  v66 = type metadata accessor for FMIPAccessoryDiscoveryController();
  *(&v108 - 4) = v66;
  v67 = sub_100528DCC(&unk_1006BC150, &type metadata accessor for FMIPAccessoryDiscoveryController);
  *(&v108 - 3) = v67;
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  *(&v108 - 4) = v66;
  *(&v108 - 3) = v67;
  v131._object = &off_1006294F8;
  v107 = &off_10062C610;
  swift_getKeyPath();
  static Published.subscript.getter();

  v69 = v130[0];
  if (*(v130[0] + 16))
  {
    v70 = sub_1001B3964(v64);
    if (v71)
    {
      v72 = *(*(v69 + 56) + 32 * v70 + 16);

      swift_bridgeObjectRetain_n();
      v73 = v64;
      v74 = v72;

      v75 = v129;
      UIListContentConfiguration.text.setter();
      v76 = v74;
      v63 = v75;
      UIListContentConfiguration.image.setter();

      (*(v126 + 8))(v73, v48);
LABEL_14:
      v77 = UIListContentConfiguration.imageProperties.modify();
      UIListContentConfiguration.ImageProperties.maximumSize.setter();
      v77(v130, 0);
      v78 = UIListContentConfiguration.imageProperties.modify();
      UIListContentConfiguration.ImageProperties.reservedLayoutSize.setter();
      v78(v130, 0);
      v79 = v113;
      static UIBackgroundConfiguration.clear()();
      v80 = type metadata accessor for UIBackgroundConfiguration();
      v81 = *(v80 - 8);
      (*(v81 + 56))(v79, 0, 1, v80);
      v82 = v125;
      UITableViewCell.backgroundConfiguration.setter();
      v83 = v114;
      UITableViewCell.backgroundConfiguration.getter();
      v84 = (*(v81 + 48))(v83, 1, v80);
      v85 = v119;
      if (v84)
      {
        sub_100007204(v83, v79, &unk_1006B77C0);
        UITableViewCell.backgroundConfiguration.setter();
        sub_100012DF0(v83, &unk_1006B77C0);
      }

      else
      {
        v88 = [v53 secondarySystemBackgroundColor];
        UIBackgroundConfiguration.backgroundColor.setter();
        UITableViewCell.backgroundConfiguration.setter();
      }

      v89 = v127;
      v130[3] = v127;
      v130[4] = &protocol witness table for UIListContentConfiguration;
      v90 = sub_100008FC0(v130);
      v86 = v123;
      (*(v123 + 16))(v90, v63, v89);
      v91 = UITableViewCell.contentConfiguration.setter();
      __chkstk_darwin(v91);
      v92 = type metadata accessor for FMIPAccessoryDiscoveryController();
      *(&v108 - 4) = v92;
      v93 = sub_100528DCC(&unk_1006BC150, &type metadata accessor for FMIPAccessoryDiscoveryController);
      *(&v108 - 3) = v93;
      v94 = swift_getKeyPath();
      __chkstk_darwin(v94);
      *(&v108 - 4) = v92;
      *(&v108 - 3) = v93;
      v131._object = &off_1006294F8;
      v107 = &off_10062C610;
      swift_getKeyPath();
      v95 = v118;
      static Published.subscript.getter();

      v96 = v120;
      sub_100007204(v128, v120, &qword_1006B4190);
      v97 = v115;
      v98 = v116;
      (*(v115 + 56))(v96, 0, 1, v116);
      v99 = *(v117 + 48);
      sub_100007204(v95, v85, &unk_1006BC140);
      sub_100007204(v96, v85 + v99, &unk_1006BC140);
      v100 = *(v97 + 48);
      if (v100(v85, 1, v98) == 1)
      {
        sub_100012DF0(v96, &unk_1006BC140);
        v82 = v125;
        sub_100012DF0(v95, &unk_1006BC140);
        if (v100(v85 + v99, 1, v98) == 1)
        {
          sub_100012DF0(v85, &unk_1006BC140);
          v101 = 1;
LABEL_25:
          v87 = v129;
          [v82 setSelected:v101 & 1];
          goto LABEL_26;
        }
      }

      else
      {
        v102 = v98;
        v103 = v111;
        sub_100007204(v85, v111, &unk_1006BC140);
        if (v100(v85 + v99, 1, v102) != 1)
        {
          v104 = v85 + v99;
          v105 = v110;
          sub_100035318(v104, v110, &qword_1006B4190);
          v101 = sub_100515730(v103, v105, &qword_1006B4190, &unk_100555E30, &qword_1006C3A08, &unk_100565908);
          sub_100012DF0(v105, &qword_1006B4190);
          sub_100012DF0(v120, &unk_1006BC140);
          sub_100012DF0(v95, &unk_1006BC140);
          sub_100012DF0(v103, &qword_1006B4190);
          sub_100012DF0(v85, &unk_1006BC140);
          goto LABEL_25;
        }

        sub_100012DF0(v120, &unk_1006BC140);
        sub_100012DF0(v95, &unk_1006BC140);
        sub_100012DF0(v103, &qword_1006B4190);
      }

      sub_100012DF0(v85, &unk_1006C3A10);
      v101 = 0;
      goto LABEL_25;
    }
  }

  (*(v126 + 8))(v64, v48);
  v86 = v123;
  v87 = v129;
  v82 = v125;
LABEL_26:
  (*(v86 + 8))(v87, v127);
  return v82;
}

void *sub_10051EB0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v124 = a4;
  v128 = a3;
  v117 = sub_10007EBC0(&qword_1006C39D0);
  __chkstk_darwin(v117);
  v7 = &v108 - v6;
  v8 = sub_10007EBC0(&qword_1006C37F8);
  v9 = __chkstk_darwin(v8 - 8);
  v111 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v120 = &v108 - v12;
  __chkstk_darwin(v11);
  v118 = &v108 - v13;
  v14 = sub_10007EBC0(&unk_1006B77C0);
  v15 = __chkstk_darwin(v14 - 8);
  v114 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v113 = &v108 - v17;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v125 = v18;
  v126 = v19;
  __chkstk_darwin(v18);
  v112 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for UIListContentConfiguration();
  v21 = *(v127 - 8);
  __chkstk_darwin(v127);
  v129 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10007EBC0(&qword_1006C3800);
  v115 = *(v23 - 8);
  v116 = v23;
  v24 = __chkstk_darwin(v23);
  v110 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v121 = &v108 - v27;
  __chkstk_darwin(v26);
  v29 = &v108 - v28;
  v30 = type metadata accessor for IndexPath();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v108 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100005B14(v34, qword_1006D4630);
  v35 = *(v31 + 16);
  v122 = a2;
  v35(v33, a2, v30);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  v38 = os_log_type_enabled(v36, v37);
  v119 = v7;
  v123 = v21;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v109 = a1;
    v41 = v40;
    v130[0] = v40;
    *v39 = 136315138;
    sub_100528DCC(&qword_1006C01F0, &type metadata accessor for IndexPath);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    (*(v31 + 8))(v33, v30);
    v45 = sub_100005B4C(v42, v44, v130);

    *(v39 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v36, v37, "FMAccessoryDiscoveryDataSource: dequeueConfiguredReusableCell(for: %s)", v39, 0xCu);
    sub_100006060(v41);
    a1 = v109;
  }

  else
  {

    (*(v31 + 8))(v33, v30);
  }

  sub_100007204(v128, v29, &qword_1006C3800);
  v46 = sub_10007EBC0(&qword_1006B76D0);
  v47 = *(*(v46 - 8) + 48);
  if (v47(v29, 1, v46) == 1)
  {
    v48 = v125;
  }

  else
  {
    v49 = v29;
    v48 = v125;
    (*(v126 + 8))(v49, v125);
  }

  v50 = String._bridgeToObjectiveC()();

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v52 = [a1 dequeueReusableCellWithIdentifier:v50 forIndexPath:isa];

  v53 = objc_opt_self();
  v54 = v52;
  v55 = [v53 systemGroupedBackgroundColor];
  [v54 setBackgroundColor:v55];
  v125 = v54;

  static UIListContentConfiguration.cell()();
  v56 = v121;
  sub_100007204(v128, v121, &qword_1006C3800);
  if (v47(v56, 1, v46) == 1)
  {
    v57 = [objc_opt_self() mainBundle];
    v131._object = 0x8000000100579A00;
    v58._countAndFlagsBits = 0xD000000000000027;
    v58._object = 0x80000001005884C0;
    v59.value._object = 0x80000001005799E0;
    v131._countAndFlagsBits = 0xD000000000000018;
    v59.value._countAndFlagsBits = 0xD000000000000013;
    v60._countAndFlagsBits = 0;
    v60._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v58, v59, v57, v60, v131);

    UIListContentConfiguration.text.setter();
    v61 = [v53 secondaryLabelColor];
    v62 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v62(v130, 0);
    v63 = v129;
    [objc_allocWithZone(UIImage) init];
    UIListContentConfiguration.image.setter();
    goto LABEL_14;
  }

  v64 = v112;
  v65 = (*(v126 + 32))(v112, v56, v48);
  __chkstk_darwin(v65);
  v66 = type metadata accessor for FMIPUnknownAccessoryDiscoveryController();
  *(&v108 - 4) = v66;
  v67 = sub_100528DCC(&unk_1006C3808, &type metadata accessor for FMIPUnknownAccessoryDiscoveryController);
  *(&v108 - 3) = v67;
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  *(&v108 - 4) = v66;
  *(&v108 - 3) = v67;
  v131._object = &off_100629510;
  v107 = &off_10062C608;
  swift_getKeyPath();
  static Published.subscript.getter();

  v69 = v130[0];
  if (*(v130[0] + 16))
  {
    v70 = sub_1001B3964(v64);
    if (v71)
    {
      v72 = *(*(v69 + 56) + 32 * v70 + 16);

      swift_bridgeObjectRetain_n();
      v73 = v64;
      v74 = v72;

      v75 = v129;
      UIListContentConfiguration.text.setter();
      v76 = v74;
      v63 = v75;
      UIListContentConfiguration.image.setter();

      (*(v126 + 8))(v73, v48);
LABEL_14:
      v77 = UIListContentConfiguration.imageProperties.modify();
      UIListContentConfiguration.ImageProperties.maximumSize.setter();
      v77(v130, 0);
      v78 = UIListContentConfiguration.imageProperties.modify();
      UIListContentConfiguration.ImageProperties.reservedLayoutSize.setter();
      v78(v130, 0);
      v79 = v113;
      static UIBackgroundConfiguration.clear()();
      v80 = type metadata accessor for UIBackgroundConfiguration();
      v81 = *(v80 - 8);
      (*(v81 + 56))(v79, 0, 1, v80);
      v82 = v125;
      UITableViewCell.backgroundConfiguration.setter();
      v83 = v114;
      UITableViewCell.backgroundConfiguration.getter();
      v84 = (*(v81 + 48))(v83, 1, v80);
      v85 = v119;
      if (v84)
      {
        sub_100007204(v83, v79, &unk_1006B77C0);
        UITableViewCell.backgroundConfiguration.setter();
        sub_100012DF0(v83, &unk_1006B77C0);
      }

      else
      {
        v88 = [v53 secondarySystemBackgroundColor];
        UIBackgroundConfiguration.backgroundColor.setter();
        UITableViewCell.backgroundConfiguration.setter();
      }

      v89 = v127;
      v130[3] = v127;
      v130[4] = &protocol witness table for UIListContentConfiguration;
      v90 = sub_100008FC0(v130);
      v86 = v123;
      (*(v123 + 16))(v90, v63, v89);
      v91 = UITableViewCell.contentConfiguration.setter();
      __chkstk_darwin(v91);
      v92 = type metadata accessor for FMIPUnknownAccessoryDiscoveryController();
      *(&v108 - 4) = v92;
      v93 = sub_100528DCC(&unk_1006C3808, &type metadata accessor for FMIPUnknownAccessoryDiscoveryController);
      *(&v108 - 3) = v93;
      v94 = swift_getKeyPath();
      __chkstk_darwin(v94);
      *(&v108 - 4) = v92;
      *(&v108 - 3) = v93;
      v131._object = &off_100629510;
      v107 = &off_10062C608;
      swift_getKeyPath();
      v95 = v118;
      static Published.subscript.getter();

      v96 = v120;
      sub_100007204(v128, v120, &qword_1006C3800);
      v97 = v115;
      v98 = v116;
      (*(v115 + 56))(v96, 0, 1, v116);
      v99 = *(v117 + 48);
      sub_100007204(v95, v85, &qword_1006C37F8);
      sub_100007204(v96, v85 + v99, &qword_1006C37F8);
      v100 = *(v97 + 48);
      if (v100(v85, 1, v98) == 1)
      {
        sub_100012DF0(v96, &qword_1006C37F8);
        v82 = v125;
        sub_100012DF0(v95, &qword_1006C37F8);
        if (v100(v85 + v99, 1, v98) == 1)
        {
          sub_100012DF0(v85, &qword_1006C37F8);
          v101 = 1;
LABEL_25:
          v87 = v129;
          [v82 setSelected:v101 & 1];
          goto LABEL_26;
        }
      }

      else
      {
        v102 = v98;
        v103 = v111;
        sub_100007204(v85, v111, &qword_1006C37F8);
        if (v100(v85 + v99, 1, v102) != 1)
        {
          v104 = v85 + v99;
          v105 = v110;
          sub_100035318(v104, v110, &qword_1006C3800);
          v101 = sub_100515730(v103, v105, &qword_1006C3800, &unk_100555D78, &qword_1006C39C8, &unk_1005658C8);
          sub_100012DF0(v105, &qword_1006C3800);
          sub_100012DF0(v120, &qword_1006C37F8);
          sub_100012DF0(v95, &qword_1006C37F8);
          sub_100012DF0(v103, &qword_1006C3800);
          sub_100012DF0(v85, &qword_1006C37F8);
          goto LABEL_25;
        }

        sub_100012DF0(v120, &qword_1006C37F8);
        sub_100012DF0(v95, &qword_1006C37F8);
        sub_100012DF0(v103, &qword_1006C3800);
      }

      sub_100012DF0(v85, &qword_1006C39D0);
      v101 = 0;
      goto LABEL_25;
    }
  }

  (*(v126 + 8))(v64, v48);
  v86 = v123;
  v87 = v129;
  v82 = v125;
LABEL_26:
  (*(v86 + 8))(v87, v127);
  return v82;
}

id sub_10051FB0C(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC6FindMy31FMFindUnknownItemViewController_stackView;
  *&v2[v4] = [objc_allocWithZone(UIStackView) init];
  v5 = OBJC_IVAR____TtC6FindMy31FMFindUnknownItemViewController_headerView;
  if (qword_1006AEBB8 != -1)
  {
    swift_once();
  }

  v6 = xmmword_1006D4450;
  v7 = xmmword_1006D4460;
  v8 = objc_allocWithZone(type metadata accessor for FMAccessoryDiscoveryListHeaderView());

  *&v2[v5] = sub_1002BE8B4(v6, *(&v6 + 1), v7, *(&v7 + 1));
  v9 = OBJC_IVAR____TtC6FindMy31FMFindUnknownItemViewController_continueButton;
  v10 = objc_allocWithZone(type metadata accessor for FMEmptyListButton());
  v11 = OBJC_IVAR____TtC6FindMy17FMEmptyListButton_textColor;
  v12 = objc_opt_self();
  *&v10[v11] = [v12 systemBlueColor];
  v10[OBJC_IVAR____TtC6FindMy17FMEmptyListButton_isEnabled] = 1;
  *&v2[v9] = sub_100038758([v12 tertiarySystemFillColor], 1, 1, 0);
  *&v2[OBJC_IVAR____TtC6FindMy31FMFindUnknownItemViewController_cancellables] = _swiftEmptyArrayStorage;
  v13 = &v2[OBJC_IVAR____TtC6FindMy31FMFindUnknownItemViewController_scrollHandler];
  type metadata accessor for FMIPUnknownAccessoryDiscoveryController();
  *v13 = 0;
  *(v13 + 1) = 0;
  swift_allocObject();
  v14 = FMIPUnknownAccessoryDiscoveryController.init()();
  v15 = [objc_allocWithZone(type metadata accessor for FMSafeAreaInsetsPropagatingTableView()) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v16 = *(a1 + 64);
  objc_allocWithZone(sub_10007EBC0(&qword_1006C3968));

  v17 = v15;

  v18 = sub_100516378(v14, v17, v16);
  *&v2[OBJC_IVAR____TtC6FindMy31FMFindUnknownItemViewController_discoveryController] = v14;
  *&v2[OBJC_IVAR____TtC6FindMy31FMFindUnknownItemViewController_tableView] = v17;
  *&v2[OBJC_IVAR____TtC6FindMy31FMFindUnknownItemViewController_dataSource] = v18;
  *&v2[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] = a1;
  v20.receiver = v2;
  v20.super_class = type metadata accessor for FMMediatedViewController();
  return objc_msgSendSuper2(&v20, "initWithNibName:bundle:", 0, 0);
}

void sub_10051FEF4(char a1)
{
  v2 = v1;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for FMFindUnknownItemViewController();
  objc_msgSendSuper2(&v9, "viewWillAppear:", a1 & 1);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v4 = dispatch thunk of FMIPUnknownAccessoryDiscoveryController.callbacks.modify();
  FMIPUnknownAccessoryDiscoveryController.Callbacks.errorHandler.setter();
  v4(&v8, 0);

  dispatch thunk of FMIPUnknownAccessoryDiscoveryController.startDiscovery(completion:)();
  sub_100522718(1);
  sub_100520B30();
  v5 = [v2 view];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_opt_self() systemBackgroundColor];
    [v6 setBackgroundColor:v7];
  }

  else
  {
    __break(1u);
  }
}

void sub_100520058(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100523D20(a1);
  }
}

uint64_t sub_100520108(char a1)
{
  v2 = v1;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for FMFindUnknownItemViewController();
  objc_msgSendSuper2(&v10, "viewDidDisappear:", a1 & 1);
  dispatch thunk of FMIPUnknownAccessoryDiscoveryController.stopDiscovery(completion:)();
  v4 = OBJC_IVAR____TtC6FindMy31FMFindUnknownItemViewController_cancellables;
  swift_beginAccess();
  v5 = *&v2[v4];
  if (v5 >> 62)
  {
LABEL_15:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_12:
          __break(1u);
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_15;
        }

        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_12;
        }
      }

      AnyCancellable.cancel()();

      ++v7;
    }

    while (v8 != v6);
  }
}

void sub_100520370()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy31FMFindUnknownItemViewController_tableView];
  v2 = [objc_opt_self() clearColor];
  [v1 setBackgroundColor:v2];

  [v1 setDelegate:v0];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 setAllowsSelection:1];
  [v1 setAllowsMultipleSelection:0];
  [v1 _setSectionContentInset:{0.0, COERCE_DOUBLE(1), 0.0, COERCE_DOUBLE(1)}];
  v3 = *&v0[OBJC_IVAR____TtC6FindMy31FMFindUnknownItemViewController_stackView];
  [v3 setAxis:1];
  [v3 setSpacing:1.17549435e-38];
  [v3 addArrangedSubview:v1];
  [v3 addArrangedSubview:*&v0[OBJC_IVAR____TtC6FindMy31FMFindUnknownItemViewController_continueButton]];
  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    [v4 addSubview:v3];
  }

  else
  {
    __break(1u);
  }
}

void sub_100520504()
{
  sub_10007EBC0(&qword_1006AFC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552EF0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy31FMFindUnknownItemViewController_tableView];
  *(inited + 32) = v2;
  v3 = *&v0[OBJC_IVAR____TtC6FindMy31FMFindUnknownItemViewController_stackView];
  *(inited + 40) = v3;
  v4 = *&v0[OBJC_IVAR____TtC6FindMy31FMFindUnknownItemViewController_continueButton];
  *(inited + 48) = v4;
  v5 = inited & 0xC000000000000001;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_16;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

  for (i = v6; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v10 = i;
    [i setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v5)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_15;
      }

      v11 = *(inited + 40);
    }

    v12 = v11;
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v5)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v13 = *(inited + 48);
      goto LABEL_10;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_10:
  v14 = v13;
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  swift_setDeallocating();
  swift_arrayDestroy();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1005521F0;
  v16 = [v7 leadingAnchor];
  v17 = [v0 view];
  if (!v17)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v17;
  v19 = [v17 layoutMarginsGuide];

  v20 = [v19 leadingAnchor];
  v21 = [v16 constraintEqualToAnchor:v20];

  *(v15 + 32) = v21;
  v22 = [v7 trailingAnchor];
  v23 = [v0 view];
  if (!v23)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v24 = v23;
  v25 = [v23 layoutMarginsGuide];

  v26 = [v25 trailingAnchor];
  v27 = [v22 constraintEqualToAnchor:v26];

  *(v15 + 40) = v27;
  v28 = [v7 topAnchor];
  v29 = [v0 view];
  if (!v29)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v30 = v29;
  v31 = [v29 layoutMarginsGuide];

  v32 = [v31 topAnchor];
  v33 = [v28 constraintEqualToAnchor:v32];

  *(v15 + 48) = v33;
  v34 = [v7 bottomAnchor];
  v35 = [v0 view];
  if (v35)
  {
    v36 = v35;
    v37 = objc_opt_self();
    v38 = [v36 layoutMarginsGuide];

    v39 = [v38 bottomAnchor];
    v40 = [v34 constraintEqualToAnchor:v39 constant:-18.0];

    *(v15 + 56) = v40;
    sub_10000905C(0, &qword_1006B3A70);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v37 activateConstraints:isa];

    return;
  }

LABEL_22:
  __break(1u);
}

void sub_10052098C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC6FindMy31FMFindUnknownItemViewController_continueButton);
  v3 = *&v2[OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 mainBundle];
  v13._object = 0x8000000100579A00;
  v7._countAndFlagsBits = 0xD000000000000023;
  v7._object = 0x8000000100591C10;
  v8.value._object = 0x80000001005799E0;
  v13._countAndFlagsBits = 0xD000000000000018;
  v8.value._countAndFlagsBits = 0xD000000000000013;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v13);

  v10 = String._bridgeToObjectiveC()();

  [v5 setText:v10];

  v11 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v1 action:"handleContinueButton"];
  [v2 addGestureRecognizer:v11];
  [v2 setUserInteractionEnabled:0];
  v2[OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_activityIndicatorPosition] = 1;
  sub_100039DFC();
}

uint64_t sub_100520B30()
{
  v101 = sub_10007EBC0(&qword_1006C3818);
  v102 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v81 - v1;
  v103 = sub_10007EBC0(&qword_1006C3820);
  v104 = *(v103 - 8);
  __chkstk_darwin(v103);
  v100 = &v81 - v2;
  v95 = sub_10007EBC0(&qword_1006C3828);
  v96 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = &v81 - v3;
  v97 = sub_10007EBC0(&qword_1006C3830);
  v98 = *(v97 - 8);
  __chkstk_darwin(v97);
  v94 = &v81 - v4;
  v89 = sub_10007EBC0(&qword_1006C3838);
  v90 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v81 - v5;
  v91 = sub_10007EBC0(&qword_1006C3840);
  v92 = *(v91 - 8);
  __chkstk_darwin(v91);
  v88 = &v81 - v6;
  v129 = sub_10007EBC0(&qword_1006C3848);
  v135 = *(v129 - 8);
  __chkstk_darwin(v129);
  v119 = &v81 - v7;
  v128 = sub_10007EBC0(&qword_1006C3850);
  v134 = *(v128 - 8);
  __chkstk_darwin(v128);
  v118 = &v81 - v8;
  v122 = sub_10007EBC0(&qword_1006C3858);
  v130 = *(v122 - 8);
  __chkstk_darwin(v122);
  v121 = &v81 - v9;
  v85 = sub_10007EBC0(&unk_1006C3860);
  v86 = *(v85 - 8);
  __chkstk_darwin(v85);
  v84 = &v81 - v10;
  v11 = sub_10007EBC0(&qword_1006B64E0);
  __chkstk_darwin(v11 - 8);
  v13 = &v81 - v12;
  v14 = sub_10007EBC0(&qword_1006C3870);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v81 - v16;
  v18 = sub_10007EBC0(&qword_1006C3878);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v81 - v20;
  v117 = sub_10007EBC0(&qword_1006C3880);
  v131 = *(v117 - 8);
  __chkstk_darwin(v117);
  v23 = &v81 - v22;
  v24 = swift_isaMask & **(v0 + OBJC_IVAR____TtC6FindMy31FMFindUnknownItemViewController_dataSource);
  v120 = *(v0 + OBJC_IVAR____TtC6FindMy31FMFindUnknownItemViewController_dataSource);
  v124 = *(v24 + qword_1006D3DA0 + 48);
  swift_beginAccess();
  sub_10007EBC0(&qword_1006C3888);
  Published.projectedValue.getter();
  swift_endAccess();
  v115 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_100004098(&qword_1006C3890, &qword_1006C3870);
  v25 = Publisher.eraseToAnyPublisher()();
  (*(v15 + 8))(v17, v14);
  v137 = v25;
  sub_10007EBC0(&qword_1006C3898);
  v109 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_100004098(&unk_1006C38A0, &qword_1006C3898);
  Publisher.map<A>(_:)();

  v108 = objc_opt_self();
  v26 = [v108 mainRunLoop];
  v137 = v26;
  v125 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v27 = *(v125 - 8);
  v28 = *(v27 + 56);
  v126 = v27 + 56;
  v127 = v28;
  v28(v13, 1, 1, v125);
  v133 = sub_10000905C(0, &qword_1006B2918);
  v123 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_100004098(&unk_1006C38B0, &qword_1006C3878);
  v132 = sub_100528F5C(&qword_1006B2928, &qword_1006B2918);
  Publisher.receive<A>(on:options:)();
  sub_100012DF0(v13, &qword_1006B64E0);

  (*(v19 + 8))(v21, v18);
  swift_getKeyPath();
  v137 = *&v106[OBJC_IVAR____TtC6FindMy31FMFindUnknownItemViewController_continueButton];
  v29 = v137;
  v107 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100004098(&qword_1006C38C0, &qword_1006C3880);
  v30 = v29;
  v82 = v30;
  v31 = v117;
  Publisher<>.assign<A>(to:on:)();

  (*(v131 + 8))(v23, v31);
  v32 = OBJC_IVAR____TtC6FindMy31FMFindUnknownItemViewController_cancellables;
  swift_beginAccess();
  v131 = sub_10007EBC0(&qword_1006C38C8);
  v117 = sub_100004098(&unk_1006C38D0, &qword_1006C38C8);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  swift_beginAccess();
  v116 = sub_10007EBC0(&qword_1006B3878);
  v33 = v119;
  Published.projectedValue.getter();
  swift_endAccess();
  v115 = sub_100004098(&qword_1006C38E0, &qword_1006C3848);
  v114 = sub_1001523FC;
  v34 = v118;
  v35 = v129;
  Publisher.map<A>(_:)();
  v36 = *(v135 + 8);
  v135 += 8;
  v113 = v36;
  v36(v33, v35);
  v112 = sub_100004098(&qword_1006C38E8, &qword_1006C3850);
  v37 = v128;
  v38 = Publisher.eraseToAnyPublisher()();
  v39 = *(v134 + 8);
  v134 += 8;
  v111 = v39;
  v39(v34, v37);
  v137 = v38;
  v110 = sub_10007EBC0(&qword_1006C38F0);
  v109 = sub_100004098(&qword_1006C38F8, &qword_1006C38F0);
  v40 = v121;
  Publisher.map<A>(_:)();

  v41 = v108;
  v42 = [v108 mainRunLoop];
  v137 = v42;
  v81 = v13;
  v127(v13, 1, 1, v125);
  sub_100004098(&qword_1006C3900, &qword_1006C3858);
  v43 = v84;
  v44 = v122;
  Publisher.receive<A>(on:options:)();
  sub_100012DF0(v13, &qword_1006B64E0);

  v45 = *(v130 + 8);
  v130 += 8;
  v83 = v45;
  v45(v40, v44);
  swift_getKeyPath();
  v46 = v82;
  v137 = v82;
  sub_100004098(&qword_1006C3908, &unk_1006C3860);
  v47 = v85;
  Publisher<>.assign<A>(to:on:)();

  (*(v86 + 8))(v43, v47);
  v105 = v32;
  swift_beginAccess();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  v48 = v120;
  swift_beginAccess();
  v49 = v119;
  Published.projectedValue.getter();
  swift_endAccess();
  v50 = v118;
  v51 = v129;
  Publisher.map<A>(_:)();
  v113(v49, v51);
  v52 = v128;
  v53 = v50;
  v54 = Publisher.eraseToAnyPublisher()();
  v111(v53, v52);
  v137 = v54;
  v55 = [v41 mainRunLoop];
  v136 = v55;
  v56 = v81;
  v127(v81, 1, 1, v125);
  v57 = v87;
  Publisher.receive<A>(on:options:)();
  sub_100012DF0(v56, &qword_1006B64E0);

  sub_100004098(&qword_1006C3910, &qword_1006C3838);
  v58 = v88;
  v59 = v89;
  Publisher.map<A>(_:)();
  (*(v90 + 8))(v57, v59);
  swift_getKeyPath();
  v137 = v48;
  sub_100004098(&qword_1006C3918, &qword_1006C3840);
  v60 = v48;
  v61 = v91;
  Publisher<>.assign<A>(to:on:)();

  (*(v92 + 8))(v58, v61);
  v62 = v106;
  swift_beginAccess();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  swift_beginAccess();
  Published.projectedValue.getter();
  swift_endAccess();
  v63 = v129;
  Publisher.map<A>(_:)();
  v113(v49, v63);
  v64 = v128;
  v65 = Publisher.eraseToAnyPublisher()();
  v111(v53, v64);
  v137 = v65;
  v66 = v121;
  Publisher.map<A>(_:)();

  v67 = v93;
  v68 = v122;
  Publishers.Map.map<A>(_:)();
  v83(v66, v68);
  v69 = [v108 mainRunLoop];
  v137 = v69;
  v127(v56, 1, 1, v125);
  sub_100004098(&qword_1006C3920, &qword_1006C3828);
  v70 = v94;
  v71 = v95;
  Publisher.receive<A>(on:options:)();
  sub_100012DF0(v56, &qword_1006B64E0);

  (*(v96 + 8))(v67, v71);
  *(swift_allocObject() + 16) = v62;
  sub_100004098(&qword_1006C3928, &qword_1006C3830);
  v72 = v62;
  v73 = v97;
  Publisher<>.sink(receiveValue:)();

  (*(v98 + 8))(v70, v73);
  swift_beginAccess();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  v74 = *&v72[OBJC_IVAR____TtC6FindMy31FMFindUnknownItemViewController_tableView];
  swift_getKeyPath();
  v75 = v99;
  _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100004098(&qword_1006C3930, &qword_1006C3818);
  v76 = v100;
  v77 = v101;
  Publisher.map<A>(_:)();

  (*(v102 + 8))(v75, v77);
  swift_getKeyPath();
  v137 = v74;
  sub_100004098(&qword_1006C3938, &qword_1006C3820);
  v78 = v74;
  v79 = v103;
  Publisher<>.assign<A>(to:on:)();

  (*(v104 + 8))(v76, v79);
  swift_beginAccess();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
}

uint64_t sub_1005222BC@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = sub_10007EBC0(&qword_1006C3800);
  result = (*(*(v4 - 8) + 48))(a1, 1, v4);
  *a2 = result != 1;
  return result;
}

void sub_100522348(char *a1@<X0>, Swift::String *a2@<X8>)
{
  v22 = *a1;
  v3 = String._bridgeToObjectiveC()();
  v4 = MGGetBoolAnswer();

  v5 = sub_10022ECA4(0xD000000000000022, 0x800000010059E380);
  v7 = v6;
  v8 = objc_opt_self();
  v9 = [v8 mainBundle];
  v23._object = 0x8000000100579A00;
  v10._countAndFlagsBits = 0xD000000000000022;
  v10._object = 0x800000010058D7C0;
  v11.value._object = 0x80000001005799E0;
  v23._countAndFlagsBits = 0xD000000000000018;
  v11.value._countAndFlagsBits = 0xD000000000000013;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v23);

  if (!v4)
  {
    goto LABEL_6;
  }

  v14 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v14 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v14 && (v22 & 1) == 0)
  {
    v20._countAndFlagsBits = v5;
    v20._object = v7;
    String.append(_:)(v20);

    v21._countAndFlagsBits = 2570;
    v21._object = 0xE200000000000000;
    String.append(_:)(v21);
  }

  else
  {
LABEL_6:
  }

  v15 = [v8 mainBundle];
  v24._object = 0x8000000100579A00;
  v16._countAndFlagsBits = 0xD00000000000001FLL;
  v16._object = 0x800000010058D7A0;
  v17.value._object = 0x80000001005799E0;
  v24._countAndFlagsBits = 0xD000000000000018;
  v17.value._countAndFlagsBits = 0xD000000000000013;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v24);

  *a2 = v19;
  a2[1] = v13;
}

uint64_t sub_100522548(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = (*(a2 + OBJC_IVAR____TtC6FindMy31FMFindUnknownItemViewController_headerView) + OBJC_IVAR____TtC6FindMy34FMAccessoryDiscoveryListHeaderView_configuration);
  result = *v6;
  v9 = v6[2];
  v8 = v6[3];
  v10 = *v6 == v3 && v6[1] == v2;
  if (!v10 && (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0) || (v9 == v5 ? (v11 = v8 == v4) : (v11 = 0), !v11 && (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0)))
  {
    *v6 = v3;
    v6[1] = v2;
    v6[2] = v5;
    v6[3] = v4;

    sub_1002BEBDC();
    return sub_100518330(0);
  }

  return result;
}

void sub_100522640(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC6FindMy31FMFindUnknownItemViewController_tableView);

    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v16.origin.x = v8;
    v16.origin.y = v10;
    v16.size.width = v12;
    v16.size.height = v14;
    Height = CGRectGetHeight(v16);
  }

  else
  {
    Height = 0.0;
  }

  *a2 = Height < v3;
}

id sub_100522718(char a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC6FindMy31FMFindUnknownItemViewController_tableView);
  result = [v8 indexPathsForSelectedRows];
  if (result)
  {
    v10 = result;
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = *(v11 + 16);
    if (v12)
    {
      v14 = *(v4 + 16);
      v13 = v4 + 16;
      v18 = v11;
      v19 = v14;
      v15 = v11 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
      v16 = *(v13 + 56);
      do
      {
        v19(v7, v15, v3);
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v8 deselectRowAtIndexPath:isa animated:{a1 & 1, v18}];

        (*(v13 - 8))(v7, v3);
        v15 += v16;
        --v12;
      }

      while (v12);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1005228F4()
{
  v0 = type metadata accessor for FMIPAccessoryError();
  v41 = *(v0 - 8);
  v42 = v0;
  __chkstk_darwin(v0);
  v2 = (&v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_10007EBC0(&unk_1006B77D0);
  __chkstk_darwin(v3 - 8);
  v35 = &v33 - v4;
  v5 = type metadata accessor for FMIPUnknownItem();
  v36 = *(v5 - 8);
  v37 = v5;
  v6 = *(v36 + 64);
  __chkstk_darwin(v5);
  v33 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v34 = &v33 - v8;
  v9 = sub_10007EBC0(&qword_1006C37F8);
  __chkstk_darwin(v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for UUID();
  v39 = *(v12 - 8);
  v40 = v12;
  __chkstk_darwin(v12);
  v38 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FMIPUnknownAccessoryDiscoveryController();
  v47 = v14;
  v15 = sub_100528DCC(&unk_1006C3808, &type metadata accessor for FMIPUnknownAccessoryDiscoveryController);
  v48 = v15;
  v49 = &off_100629510;
  v50 = &off_10062C608;
  swift_getKeyPath();
  v43 = v14;
  v44 = v15;
  v45 = &off_100629510;
  v46 = &off_10062C608;
  swift_getKeyPath();
  static Published.subscript.getter();

  v16 = sub_10007EBC0(&qword_1006C3800);
  if ((*(*(v16 - 8) + 48))(v11, 1, v16) == 1)
  {
    v17 = &qword_1006C37F8;
LABEL_5:
    sub_100012DF0(v11, v17);
    goto LABEL_6;
  }

  v18 = sub_10007EBC0(&qword_1006B76D0);
  if ((*(*(v18 - 8) + 48))(v11, 1, v18) == 1)
  {
    v17 = &qword_1006C3800;
    goto LABEL_5;
  }

  v23 = v38;
  v22 = v39;
  v24 = v40;
  (*(v39 + 32))(v38, v11, v40);
  v25 = v35;
  dispatch thunk of FMIPUnknownAccessoryDiscoveryController.accessory(with:)();
  v27 = v36;
  v26 = v37;
  if ((*(v36 + 48))(v25, 1, v37) != 1)
  {
    v42 = *(v27 + 32);
    v28 = v34;
    v42(v34, v25, v26);
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = v33;
    (*(v27 + 16))(v33, v28, v26);
    v31 = (*(v27 + 80) + 24) & ~*(v27 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = v29;
    v42((v32 + v31), v30, v26);

    dispatch thunk of FMIPUnknownAccessoryDiscoveryController.stopDiscovery(completion:)();

    (*(v27 + 8))(v28, v26);
    (*(v39 + 8))(v38, v40);
  }

  (*(v22 + 8))(v23, v24);
  sub_100012DF0(v25, &unk_1006B77D0);
LABEL_6:
  *v2 = 0;
  v20 = v41;
  v19 = v42;
  (*(v41 + 104))(v2, enum case for FMIPAccessoryError.unknown(_:), v42);
  sub_100523D48(v2);
  return (*(v20 + 8))(v2, v19);
}

void sub_100522F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v32 = *(v7 - 8);
  v33 = v7;
  __chkstk_darwin(v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMIPUnknownItem();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = sub_10007EBC0(&qword_1006B3048);
  __chkstk_darwin(v13);
  v15 = &v29 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    sub_100007204(a1, v15, &qword_1006B3048);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100012DF0(v15, &qword_1006B3048);
      v18 = static os_log_type_t.default.getter();
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100005B14(v19, qword_1006D4630);
      v20 = Logger.logObject.getter();
      if (os_log_type_enabled(v20, v18))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        aBlock[0] = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_100005B4C(0xD000000000000042, 0x800000010059E330, aBlock);
        _os_log_impl(&_mh_execute_header, v20, v18, "FMFindUnknownItemViewController: %s", v21, 0xCu);
        sub_100006060(v22);
      }
    }

    else
    {
      sub_10000905C(0, &qword_1006AEDC0);
      v30 = static OS_dispatch_queue.main.getter();
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(v11 + 16))(&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v10);
      v24 = (*(v11 + 80) + 24) & ~*(v11 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = v23;
      (*(v11 + 32))(v25 + v24, &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
      aBlock[4] = sub_100528EF8;
      aBlock[5] = v25;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004AE4;
      aBlock[3] = &unk_100644810;
      v26 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100528DCC(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10007EBC0(&unk_1006B0640);
      sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
      v27 = v35;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v28 = v30;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v26);

      (*(v34 + 8))(v6, v27);
      (*(v32 + 8))(v9, v33);
    }
  }
}

void sub_100523540(uint64_t a1, char *a2)
{
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v62 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for FMIPUnknownItem();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v49 = v3;
    v50 = v6;
    v54 = *&Strong[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator];
    v15 = *(v11 + 16);
    v58 = v11 + 16;
    v59 = v15;
    v16 = Strong;
    v60 = Strong;
    v15(v13, a2, v10);
    v57 = v10;
    v61 = v11;
    v17 = objc_opt_self();

    v18 = [v17 mainBundle];
    v65._object = 0x8000000100579A00;
    v19._countAndFlagsBits = 0xD000000000000022;
    v19._object = 0x8000000100590520;
    v20.value._object = 0x80000001005799E0;
    v65._countAndFlagsBits = 0xD000000000000018;
    v20.value._countAndFlagsBits = 0xD000000000000013;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v65);
    object = v22._object;
    countAndFlagsBits = v22._countAndFlagsBits;

    v52 = *&v16[OBJC_IVAR____TtC6FindMy31FMFindUnknownItemViewController_discoveryController];
    v53 = type metadata accessor for FMUTAccessoryInformationViewController();
    v23 = objc_allocWithZone(v53);
    v24 = &v23[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_scrollHandler];
    *v24 = 0;
    v24[1] = 0;
    v48 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_updateQueue;
    sub_10000905C(0, &qword_1006AEDC0);
    v51 = v13;

    static DispatchQoS.unspecified.getter();
    v64 = _swiftEmptyArrayStorage;
    sub_100528DCC(&unk_1006B0620, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_10007EBC0(&unk_1006AEDD0);
    sub_100004098(&unk_1006B0630, &unk_1006AEDD0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v4 + 104))(v50, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v49);
    *&v23[v48] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v25 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_titleLabel;
    *&v23[v25] = [objc_allocWithZone(UILabel) init];
    v26 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_subtitleLabel;
    *&v23[v26] = [objc_allocWithZone(UILabel) init];
    v27 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_scrollView;
    *&v23[v27] = [objc_allocWithZone(UIScrollView) init];
    v28 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_scrollContentView;
    *&v23[v28] = [objc_allocWithZone(UIView) init];
    *&v23[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_cancelButton] = 0;
    v29 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_footnoteLabel;
    *&v23[v29] = [objc_allocWithZone(UILabel) init];
    v30 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_playerView;
    *&v23[v30] = [objc_allocWithZone(SFMediaPlayerView) init];
    v31 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_productImageView;
    *&v23[v31] = [objc_allocWithZone(UIImageView) init];
    v32 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_backgroundView;
    *&v23[v32] = [objc_allocWithZone(UIView) init];
    v33 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_heatZone;
    *&v23[v33] = [objc_allocWithZone(CAShapeLayer) init];
    *&v23[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_productImage] = 0;
    *&v23[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_imageFetchCancellable] = 0;
    v34 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_actionButton;
    v35 = [objc_opt_self() systemBlueColor];
    v36 = objc_allocWithZone(type metadata accessor for FMSingleLinePlatterButton());
    *&v23[v34] = sub_100038758(v35, 1, 0, 1);
    v37 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_waitingView;
    *&v23[v37] = [objc_allocWithZone(type metadata accessor for FMWaitingView()) init];
    v38 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_nfcURL;
    v39 = type metadata accessor for URL();
    (*(*(v39 - 8) + 56))(&v23[v38], 1, 1, v39);
    v40 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_unknownAccessoryDiscoveryController;
    *&v23[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_unknownAccessoryDiscoveryController] = 0;
    *&v23[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_actionButtonShowingConstraints] = _swiftEmptyArrayStorage;
    *&v23[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_actionButtonHiddenConstraints] = _swiftEmptyArrayStorage;
    *&v23[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_devicesSubscription] = 0;
    *&v23[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_mediator] = v54;
    v23[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_showDisableInfo] = 0;
    v23[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_findUnknownItem] = 1;
    v41 = v51;
    v42 = v57;
    v59(&v23[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_unknownItem], v51, v57);
    v43 = v53;
    *&v23[v40] = v52;
    v63.receiver = v23;
    v63.super_class = v43;

    v44 = objc_msgSendSuper2(&v63, "initWithNibName:bundle:", 0, 0);
    v45 = String._bridgeToObjectiveC()();

    [v44 setTitle:v45];

    sub_1001815E4();
    sub_1001832C8();
    sub_100183730();

    (*(v61 + 8))(v41, v42);
    v46 = v60;
    v47 = [v60 navigationController];
    [v47 pushViewController:v44 animated:1];
  }
}

uint64_t sub_100523D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v23 = a4;
  v20[1] = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v24 = *(v8 - 8);
  v25 = v8;
  __chkstk_darwin(v8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMIPAccessoryError();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_10000905C(0, &qword_1006AEDC0);
  v21 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v12 + 16))(v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v15 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  (*(v12 + 32))(v16 + v15, v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  aBlock[4] = v22;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = v23;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100528DCC(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v18 = v21;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v26 + 8))(v7, v5);
  return (*(v24 + 8))(v10, v25);
}

void sub_100524138(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1005241A8(a2, a3 & 1);
  }
}

void sub_1005241A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000905C(0, &qword_1006AEDC0);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    FMIPAccessoryError.localizedAlertTitle.getter();
    FMIPAccessoryError.localizedDescription.getter();
    v10 = String._bridgeToObjectiveC()();

    v11 = String._bridgeToObjectiveC()();

    v12 = [objc_opt_self() alertControllerWithTitle:v10 message:v11 preferredStyle:1];

    v13 = [objc_opt_self() mainBundle];
    v23._object = 0x8000000100579A00;
    v14._countAndFlagsBits = 0xD000000000000021;
    v14._object = 0x800000010059E300;
    v15.value._object = 0x80000001005799E0;
    v23._countAndFlagsBits = 0xD000000000000018;
    v15.value._countAndFlagsBits = 0xD000000000000013;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v23);

    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = a2 & 1;
    *(v18 + 24) = v17;

    v19 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_100528DB8;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100017328;
    aBlock[3] = &unk_1006446F8;
    v20 = _Block_copy(aBlock);

    v21 = [objc_opt_self() actionWithTitle:v19 style:0 handler:v20];
    _Block_release(v20);

    [v12 addAction:v21];
    [v3 presentViewController:v12 animated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

void sub_100524544(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = [Strong navigationController];

      if (v4)
      {
        v5 = [v4 popViewControllerAnimated:1];
      }
    }
  }
}

uint64_t sub_1005245E0()
{

  v1 = *(v0 + OBJC_IVAR____TtC6FindMy31FMFindUnknownItemViewController_scrollHandler);

  return sub_10001835C(v1);
}

id sub_100524684()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMFindUnknownItemViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10052478C(uint64_t a1, uint64_t a2)
{
  v3 = (*v2 + OBJC_IVAR____TtC6FindMy31FMFindUnknownItemViewController_scrollHandler);
  v4 = *v3;
  *v3 = a1;
  v3[1] = a2;
  return sub_10001835C(v4);
}

uint64_t sub_100524858@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_10007EBC0(&qword_1006C3800);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_10007EBC0(&unk_1006C2670);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10007EBC0(&qword_1006B76D0);
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  dispatch thunk of UITableViewDiffableDataSource.indexPath(for:)();
  sub_100012DF0(v6, &qword_1006C3800);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100012DF0(v9, &unk_1006C2670);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v15 = static IndexPath.== infix(_:_:)();
    (*(v11 + 8))(v13, v10);
    if ((v15 & 1) == 0)
    {
      (*(v11 + 16))(a2, a1, v10);
      v16 = 0;
      return (*(v11 + 56))(a2, v16, 1, v10);
    }
  }

  v16 = 1;
  return (*(v11 + 56))(a2, v16, 1, v10);
}

uint64_t sub_100524E0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100151A10();
  *a1 = result;
  return result;
}

Swift::Int sub_100524E64(void **a1)
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10025F37C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100524F0C(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_100524F0C(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for UUID();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for UUID() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1005252FC(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100525038(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100525038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = __chkstk_darwin(v8);
  v41 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v45 = &v31 - v12;
  result = __chkstk_darwin(v11);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v14 + 16);
    v43 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v39 = (v14 + 32);
    v40 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8);
      v25 = v45;
      v24(v45, v22, v8);
      sub_100528DCC(&qword_1006C3960, &type metadata accessor for UUID);
      v26 = dispatch thunk of static Comparable.< infix(_:_:)();
      v27 = *v18;
      (*v18)(v25, v8);
      result = v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = v36 + v32;
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v28)(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1005252FC(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v127 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v134 = &v119 - v13;
  v14 = __chkstk_darwin(v12);
  v140 = &v119 - v15;
  result = __chkstk_darwin(v14);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_10025EFD4(v20);
      v20 = result;
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_100525D24(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_10025EFD4(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        result = sub_10025EF48(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = _swiftEmptyArrayStorage;
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      v27(v140, v29, v26);
      v130 = sub_100528DCC(&qword_1006C3960, &type metadata accessor for UUID);
      LODWORD(v133) = dispatch thunk of static Comparable.< infix(_:_:)();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      result = (v31)(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = dispatch thunk of static Comparable.< infix(_:_:)() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        result = v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v133)(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10008B8B8(0, *(v20 + 2) + 1, 1, v20);
      v20 = result;
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      result = sub_10008B8B8((v53 > 1), v54 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_100525D24(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_10025EFD4(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        result = sub_10025EF48(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_100528DCC(&qword_1006C3960, &type metadata accessor for UUID);
    v109 = dispatch thunk of static Comparable.< infix(_:_:)();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    result = v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100525D24(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = type metadata accessor for UUID();
  v8 = *(v52 - 8);
  v9 = __chkstk_darwin(v52);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v49 = &v40 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v51 = a3;
  v16 = (a2 - a1) / v14;
  v55 = a1;
  v54 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v18;
    if (v18 >= 1)
    {
      v28 = -v14;
      v43 = a4;
      v44 = (v8 + 16);
      v41 = (v8 + 8);
      v42 = a1;
      v29 = a4 + v18;
      v30 = v51;
      v45 = v28;
      do
      {
        v40 = v27;
        v31 = a2 + v28;
        v47 = a2 + v28;
        v48 = v27;
        v46 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v55 = a2;
            v27 = v40;
            goto LABEL_59;
          }

          v33 = v30;
          v51 = v30 + v28;
          v34 = v29 + v28;
          v35 = *v44;
          v36 = v49;
          v37 = v52;
          (*v44)(v49, v29 + v28, v52);
          v38 = v50;
          v35(v50, v31, v37);
          sub_100528DCC(&qword_1006C3960, &type metadata accessor for UUID);
          LOBYTE(v35) = dispatch thunk of static Comparable.< infix(_:_:)();
          v39 = *v41;
          (*v41)(v38, v37);
          v39(v36, v37);
          if (v35)
          {
            break;
          }

          v30 = v51;
          if (v33 < v29 || v51 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v47;
            a1 = v42;
          }

          else
          {
            v31 = v47;
            a1 = v42;
            if (v33 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v48 = v34;
          v29 = v34;
          v32 = v34 > v43;
          v28 = v45;
          a2 = v46;
          if (!v32)
          {
            v27 = v48;
            goto LABEL_58;
          }
        }

        v30 = v51;
        if (v33 < v46 || v51 >= v46)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v42;
        }

        else
        {
          a2 = v47;
          a1 = v42;
          if (v33 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v27 = v48;
        v28 = v45;
      }

      while (v29 > v43);
    }

LABEL_58:
    v55 = a2;
LABEL_59:
    v53 = v27;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a4 + v17;
    v53 = a4 + v17;
    if (v17 >= 1 && a2 < v51)
    {
      v46 = *(v8 + 16);
      v47 = v8 + 16;
      v44 = v14;
      v45 = (v8 + 8);
      do
      {
        v20 = v49;
        v21 = v52;
        v22 = v46;
        v46(v49, a2, v52);
        v23 = v50;
        v22(v50, a4, v21);
        sub_100528DCC(&qword_1006C3960, &type metadata accessor for UUID);
        LOBYTE(v22) = dispatch thunk of static Comparable.< infix(_:_:)();
        v24 = *v45;
        (*v45)(v23, v21);
        v24(v20, v21);
        if (v22)
        {
          v25 = v44;
          if (a1 < a2 || a1 >= v44 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v25;
        }

        else
        {
          v25 = v44;
          v26 = v44 + a4;
          if (a1 < a4 || a1 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v54 = v26;
          a4 += v25;
        }

        a1 += v25;
        v55 = a1;
      }

      while (a4 < v48 && a2 < v51);
    }
  }

  sub_10025F150(&v55, &v54, &v53);
  return 1;
}

uint64_t sub_100526318(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v75 = a3;
  v74 = a2;
  v73 = a1;
  v62 = sub_10007EBC0(&qword_1006B5D30);
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v56 - v3;
  v4 = sub_10007EBC0(&qword_1006C39A0);
  __chkstk_darwin(v4 - 8);
  v59 = &v56 - v5;
  v6 = type metadata accessor for FMIPDiscoveredAccessory();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v57 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v65 = &v56 - v10;
  v68 = type metadata accessor for FMIPUnknownItem();
  v64 = *(v68 - 8);
  v11 = __chkstk_darwin(v68);
  v63 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v66 = &v56 - v13;
  v72 = type metadata accessor for FMIPDevice();
  v70 = *(v72 - 8);
  v14 = *(v70 + 64);
  v15 = __chkstk_darwin(v72);
  v67 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v69 = &v56 - v17;
  __chkstk_darwin(v16);
  v19 = &v56 - v18;
  v71 = type metadata accessor for FMIPProductType();
  v20 = *(v71 - 8);
  __chkstk_darwin(v71);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for FMIPItem();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v56 - v28;
  v78[3] = v6;
  v78[4] = &off_10062C610;
  v30 = sub_100008FC0(v78);
  v58 = v7;
  v31 = *(v7 + 16);
  v32 = v73;
  v73 = v6;
  v31(v30, v32, v6);
  sub_100037840(v78, v77);
  sub_10007EBC0(&qword_1006C39A8);
  if (swift_dynamicCast())
  {
    (*(v24 + 32))(v27, v29, v23);
    FMIPItem.productType.getter();
    v33 = sub_1001AF880(v22, v74);
    (*(v20 + 8))(v22, v71);
    (*(v24 + 8))(v27, v23);
  }

  else
  {
    v34 = v72;
    if (swift_dynamicCast())
    {
      v35 = v69;
      v36 = v70;
      v37 = *(v70 + 32);
      v37(v69, v19, v34);
      v38 = swift_allocObject();
      swift_weakInit();
      v39 = v67;
      (*(v36 + 16))(v67, v35, v34);
      v40 = (*(v36 + 80) + 24) & ~*(v36 + 80);
      v41 = swift_allocObject();
      *(v41 + 16) = v38;
      v37((v41 + v40), v39, v34);
      *(v41 + v40 + v14) = v74;
      sub_10007EBC0(&unk_1006B3B20);
      swift_allocObject();
      v76 = Future.init(_:)();
      sub_100004098(&qword_1006C39C0, &unk_1006B3B20);
      v33 = Publisher.eraseToAnyPublisher()();
      (*(v36 + 8))(v35, v34);
    }

    else
    {
      v42 = v66;
      v43 = v68;
      if (swift_dynamicCast())
      {
        v44 = v64;
        v45 = v63;
        (*(v64 + 32))(v63, v42, v43);
        v33 = sub_1001AFD50(v45, v74);
        (*(v44 + 8))(v45, v43);
      }

      else
      {
        v46 = v65;
        v47 = v73;
        v48 = swift_dynamicCast();
        v49 = v74;
        if (v48)
        {
          v50 = v58;
          v51 = v57;
          (*(v58 + 32))(v57, v46, v47);
          v52 = v59;
          FMIPDiscoveredAccessory.productInformation.getter();
          v33 = sub_1001B0BA8(v52, v49);
          sub_100012DF0(v52, &qword_1006C39A0);
          (*(v50 + 8))(v51, v47);
        }

        else
        {
          __chkstk_darwin(v48);
          *(&v56 - 2) = v78;
          sub_1000C3D94(sub_100529464);
          sub_10000905C(0, &qword_1006BC2B0);
          sub_1001C23CC();
          v53 = v60;
          Fail.init(error:)();
          sub_100004098(&unk_1006C39B0, &qword_1006B5D30);
          v54 = v62;
          v33 = Publisher.eraseToAnyPublisher()();
          (*(v61 + 8))(v53, v54);
        }
      }
    }
  }

  sub_100006060(v77);
  sub_100006060(v78);
  return v33;
}

uint64_t sub_100526C30(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v72 = a3;
  v71 = a2;
  v70 = a1;
  v59 = sub_10007EBC0(&qword_1006B5D30);
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = &v53 - v3;
  v4 = sub_10007EBC0(&qword_1006C39A0);
  __chkstk_darwin(v4 - 8);
  v56 = &v53 - v5;
  v63 = type metadata accessor for FMIPDiscoveredAccessory();
  v55 = *(v63 - 8);
  v6 = __chkstk_darwin(v63);
  v54 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v62 = &v53 - v8;
  v9 = type metadata accessor for FMIPUnknownItem();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v60 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v64 = &v53 - v13;
  v69 = type metadata accessor for FMIPDevice();
  v67 = *(v69 - 8);
  v14 = *(v67 + 64);
  v15 = __chkstk_darwin(v69);
  v65 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v66 = &v53 - v17;
  __chkstk_darwin(v16);
  v19 = &v53 - v18;
  v68 = type metadata accessor for FMIPProductType();
  v20 = *(v68 - 8);
  __chkstk_darwin(v68);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for FMIPItem();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v27 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v53 - v28;
  v75[3] = v9;
  v75[4] = &off_10062C608;
  v30 = sub_100008FC0(v75);
  v61 = v10;
  (*(v10 + 16))(v30, v70, v9);
  sub_100037840(v75, v74);
  sub_10007EBC0(&qword_1006C39A8);
  if (swift_dynamicCast())
  {
    (*(v24 + 32))(v27, v29, v23);
    FMIPItem.productType.getter();
    v31 = sub_1001AF880(v22, v71);
    (*(v20 + 8))(v22, v68);
    (*(v24 + 8))(v27, v23);
  }

  else
  {
    v32 = v69;
    if (swift_dynamicCast())
    {
      v33 = v66;
      v34 = v67;
      v35 = *(v67 + 32);
      v35(v66, v19, v32);
      v36 = swift_allocObject();
      swift_weakInit();
      v37 = v65;
      (*(v34 + 16))(v65, v33, v32);
      v38 = (*(v34 + 80) + 24) & ~*(v34 + 80);
      v39 = swift_allocObject();
      *(v39 + 16) = v36;
      v35((v39 + v38), v37, v32);
      *(v39 + v38 + v14) = v71;
      sub_10007EBC0(&unk_1006B3B20);
      swift_allocObject();
      v73 = Future.init(_:)();
      sub_100004098(&qword_1006C39C0, &unk_1006B3B20);
      v31 = Publisher.eraseToAnyPublisher()();
      (*(v34 + 8))(v33, v32);
    }

    else
    {
      v41 = v64;
      if (swift_dynamicCast())
      {
        v42 = v61;
        v43 = v60;
        (*(v61 + 32))(v60, v41, v9);
        v31 = sub_1001AFD50(v43, v71);
        (*(v42 + 8))(v43, v9);
      }

      else
      {
        v44 = v62;
        v45 = v63;
        v46 = swift_dynamicCast();
        v47 = v71;
        if (v46)
        {
          v48 = v55;
          v49 = v54;
          (*(v55 + 32))(v54, v44, v45);
          v50 = v56;
          FMIPDiscoveredAccessory.productInformation.getter();
          v31 = sub_1001B0BA8(v50, v47);
          sub_100012DF0(v50, &qword_1006C39A0);
          (*(v48 + 8))(v49, v45);
        }

        else
        {
          __chkstk_darwin(v46);
          *(&v53 - 2) = v75;
          sub_1000C3D94(sub_100529088);
          sub_10000905C(0, &qword_1006BC2B0);
          sub_1001C23CC();
          v51 = v57;
          Fail.init(error:)();
          sub_100004098(&unk_1006C39B0, &qword_1006B5D30);
          v52 = v59;
          v31 = Publisher.eraseToAnyPublisher()();
          (*(v58 + 8))(v51, v52);
        }
      }
    }
  }

  sub_100006060(v74);
  sub_100006060(v75);
  return v31;
}

uint64_t sub_100527534(uint64_t a1, void *a2, void *a3)
{
  v56 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v61 = *(v5 - 8);
  __chkstk_darwin(v5);
  v59 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DispatchQoS();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v62 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for FMIPDiscoveredAccessory();
  v68[3] = v15;
  v68[4] = &off_1006294F8;
  v16 = sub_100008FC0(v68);
  (*(*(v15 - 8) + 16))(v16, a1, v15);
  v17 = *(a3 + *((swift_isaMask & *a3) + qword_1006D3DA0 + 40));
  *v14 = v17;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if (v17)
  {
    v55 = v5;
    if (qword_1006AEBE0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v19 = type metadata accessor for Logger();
  sub_100005B14(v19, qword_1006D4630);
  sub_100037840(v68, aBlock);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = os_log_type_enabled(v20, v21);
  v53 = v8;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v67[0] = v24;
    *v23 = 136315138;
    sub_1000244BC(aBlock, v64);
    FMIPDiscoveredAccessory.identifier.getter();
    sub_100528DCC(&qword_1006B7830, &type metadata accessor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v62 + 8))(v10, v8);
    sub_100006060(aBlock);
    v28 = sub_100005B4C(v25, v27, v67);

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "FMAccessoryDiscoveryDataSource: Retrieved image for accessory: %s", v23, 0xCu);
    sub_100006060(v24);
  }

  else
  {

    sub_100006060(aBlock);
  }

  v51 = FMIPDiscoveredAccessory.displayName.getter();
  v50 = v29;
  v49[1] = *(a3 + *((swift_isaMask & *a3) + qword_1006D3DA0 + 48));
  v52 = a3;
  v30 = v56;
  v31 = v56;
  v32 = FMIPDiscoveredAccessory.identifier.getter();
  __chkstk_darwin(v32);
  v33 = type metadata accessor for FMIPAccessoryDiscoveryController();
  v49[-4] = v33;
  v34 = sub_100528DCC(&unk_1006BC150, &type metadata accessor for FMIPAccessoryDiscoveryController);
  v49[-3] = v34;
  v49[-2] = &off_1006294F8;
  v49[-1] = &off_10062C610;
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v49[-4] = v33;
  v49[-3] = v34;
  v49[-2] = &off_1006294F8;
  v49[-1] = &off_10062C610;
  swift_getKeyPath();
  v54 = v31;
  v36 = v50;

  v37 = static Published.subscript.modify();
  v39 = v38;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v67[0] = *v39;
  *v39 = 0x8000000000000000;
  sub_1001BB500(v51, v36, v30, 0, v10, isUniquelyReferenced_nonNull_native);
  (*(v62 + 8))(v10, v53);
  *v39 = *&v67[0];
  v37(aBlock, 0);

  sub_10000905C(0, &qword_1006AEDC0);
  v41 = static OS_dispatch_queue.main.getter();
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100037840(v68, v67);
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  sub_100006A54(v67, v43 + 24);
  v65 = sub_1005292A0;
  v66 = v43;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  v64 = &unk_100644C20;
  v44 = _Block_copy(aBlock);

  v45 = v57;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100528DCC(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  v46 = v59;
  v47 = v55;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v44);

  (*(v61 + 8))(v46, v47);
  (*(v58 + 8))(v45, v60);
  return sub_100006060(v68);
}

void sub_100527E88(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    a4(a3, v6, Strong);
  }
}

uint64_t sub_100527F00(uint64_t a1, void *a2, void *a3)
{
  v56 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v61 = *(v5 - 8);
  __chkstk_darwin(v5);
  v59 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DispatchQoS();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v62 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for FMIPUnknownItem();
  v68[3] = v15;
  v68[4] = &off_100629510;
  v16 = sub_100008FC0(v68);
  (*(*(v15 - 8) + 16))(v16, a1, v15);
  v17 = *(a3 + *((swift_isaMask & *a3) + qword_1006D3DA0 + 40));
  *v14 = v17;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if (v17)
  {
    v55 = v5;
    if (qword_1006AEBE0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v19 = type metadata accessor for Logger();
  sub_100005B14(v19, qword_1006D4630);
  sub_100037840(v68, aBlock);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = os_log_type_enabled(v20, v21);
  v53 = v8;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v67[0] = v24;
    *v23 = 136315138;
    sub_1000244BC(aBlock, v64);
    FMIPUnknownItem.identifier.getter();
    sub_100528DCC(&qword_1006B7830, &type metadata accessor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v62 + 8))(v10, v8);
    sub_100006060(aBlock);
    v28 = sub_100005B4C(v25, v27, v67);

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "FMAccessoryDiscoveryDataSource: Retrieved image for accessory: %s", v23, 0xCu);
    sub_100006060(v24);
  }

  else
  {

    sub_100006060(aBlock);
  }

  v51 = FMIPUnknownItem.name.getter();
  v50 = v29;
  v49[1] = *(a3 + *((swift_isaMask & *a3) + qword_1006D3DA0 + 48));
  v52 = a3;
  v30 = v56;
  v31 = v56;
  v32 = FMIPUnknownItem.identifier.getter();
  __chkstk_darwin(v32);
  v33 = type metadata accessor for FMIPUnknownAccessoryDiscoveryController();
  v49[-4] = v33;
  v34 = sub_100528DCC(&unk_1006C3808, &type metadata accessor for FMIPUnknownAccessoryDiscoveryController);
  v49[-3] = v34;
  v49[-2] = &off_100629510;
  v49[-1] = &off_10062C608;
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v49[-4] = v33;
  v49[-3] = v34;
  v49[-2] = &off_100629510;
  v49[-1] = &off_10062C608;
  swift_getKeyPath();
  v54 = v31;
  v36 = v50;

  v37 = static Published.subscript.modify();
  v39 = v38;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v67[0] = *v39;
  *v39 = 0x8000000000000000;
  sub_1001BB500(v51, v36, v30, 0, v10, isUniquelyReferenced_nonNull_native);
  (*(v62 + 8))(v10, v53);
  *v39 = *&v67[0];
  v37(aBlock, 0);

  sub_10000905C(0, &qword_1006AEDC0);
  v41 = static OS_dispatch_queue.main.getter();
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100037840(v68, v67);
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  sub_100006A54(v67, v43 + 24);
  v65 = sub_10052907C;
  v66 = v43;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  v64 = &unk_100644978;
  v44 = _Block_copy(aBlock);

  v45 = v57;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100528DCC(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  v46 = v59;
  v47 = v55;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v44);

  (*(v61 + 8))(v46, v47);
  (*(v58 + 8))(v45, v60);
  return sub_100006060(v68);
}

void sub_100528854()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy31FMFindUnknownItemViewController_stackView;
  *(v1 + v2) = [objc_allocWithZone(UIStackView) init];
  v3 = OBJC_IVAR____TtC6FindMy31FMFindUnknownItemViewController_headerView;
  if (qword_1006AEBB8 != -1)
  {
    swift_once();
  }

  v4 = xmmword_1006D4450;
  v5 = xmmword_1006D4460;
  objc_allocWithZone(type metadata accessor for FMAccessoryDiscoveryListHeaderView());

  *(v1 + v3) = sub_1002BE8B4(v4, *(&v4 + 1), v5, *(&v5 + 1));
  v6 = OBJC_IVAR____TtC6FindMy31FMFindUnknownItemViewController_continueButton;
  v7 = objc_allocWithZone(type metadata accessor for FMEmptyListButton());
  v8 = OBJC_IVAR____TtC6FindMy17FMEmptyListButton_textColor;
  v9 = objc_opt_self();
  *&v7[v8] = [v9 systemBlueColor];
  v7[OBJC_IVAR____TtC6FindMy17FMEmptyListButton_isEnabled] = 1;
  *(v1 + v6) = sub_100038758([v9 tertiarySystemFillColor], 1, 1, 0);
  *(v1 + OBJC_IVAR____TtC6FindMy31FMFindUnknownItemViewController_cancellables) = _swiftEmptyArrayStorage;
  v10 = (v1 + OBJC_IVAR____TtC6FindMy31FMFindUnknownItemViewController_scrollHandler);
  *v10 = 0;
  v10[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100528A18()
{
  v1 = sub_10007EBC0(&qword_1006C37F8);
  __chkstk_darwin(v1 - 8);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v22 - v5;
  __chkstk_darwin(v7);
  v9 = v22 - v8;
  v10 = sub_10007EBC0(&qword_1006C3800);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v22 - v12;
  v14 = *(v0 + OBJC_IVAR____TtC6FindMy31FMFindUnknownItemViewController_dataSource);
  dispatch thunk of UITableViewDiffableDataSource.itemIdentifier(for:)();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v15 = &qword_1006C37F8;
    v16 = v9;
  }

  else
  {
    sub_100035318(v9, v13, &qword_1006C3800);
    v22[1] = *(v14 + *((swift_isaMask & *v14) + qword_1006D3DA0 + 48));
    sub_100007204(v13, v6, &qword_1006C3800);
    v17 = (*(v11 + 56))(v6, 0, 1, v10);
    __chkstk_darwin(v17);
    v18 = type metadata accessor for FMIPUnknownAccessoryDiscoveryController();
    v22[-4] = v18;
    v19 = sub_100528DCC(&unk_1006C3808, &type metadata accessor for FMIPUnknownAccessoryDiscoveryController);
    v22[-3] = v19;
    v22[-2] = &off_100629510;
    v22[-1] = &off_10062C608;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v22[-4] = v18;
    v22[-3] = v19;
    v22[-2] = &off_100629510;
    v22[-1] = &off_10062C608;
    swift_getKeyPath();
    sub_100007204(v6, v3, &qword_1006C37F8);

    static Published.subscript.setter();
    sub_100012DF0(v6, &qword_1006C37F8);
    v16 = v13;
    v15 = &qword_1006C3800;
  }

  return sub_100012DF0(v16, v15);
}

uint64_t sub_100528DCC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100528E84(uint64_t a1)
{
  v3 = *(type metadata accessor for FMIPUnknownItem() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_100522F94(a1, v4, v5);
}

void sub_100528EF8()
{
  v1 = *(type metadata accessor for FMIPUnknownItem() - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  sub_100523540(v2, v3);
}

uint64_t sub_100528F5C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000905C(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100528FD4()
{
  result = qword_1006C3948;
  if (!qword_1006C3948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3948);
  }

  return result;
}

uint64_t sub_1005290EC(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_100529260()
{

  sub_100006060(v0 + 24);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1005292AC()
{
  v1 = type metadata accessor for FMIPDevice();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + v4;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_1005293AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100529478(char a1)
{
  v2 = v1;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMLocationProvider: startLocationMonitoring", v7, 2u);
  }

  v8 = OBJC_IVAR____TtC6FindMy18FMLocationProvider_locationManager;
  v9 = *(v2 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_locationManager);
  if (v9)
  {
    goto LABEL_9;
  }

  v10 = [objc_allocWithZone(CLLocationManager) init];
  v11 = *(v2 + v8);
  *(v2 + v8) = v10;
  v12 = v10;

  if (v12)
  {
    [v12 setDelegate:v2];
  }

  v9 = *(v2 + v8);
  if (v9)
  {
LABEL_9:
    [v9 setDesiredAccuracy:kCLLocationAccuracyHundredMeters];
    v9 = *(v2 + v8);
    if (v9)
    {
      [v9 setDistanceFilter:100.0];
      v9 = *(v2 + v8);
    }
  }

  [v9 requestWhenInUseAuthorization];
  result = [*(v2 + v8) startUpdatingLocation];
  *(v2 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_includeHeading) = a1 & 1;
  return result;
}

id sub_100529624()
{
  v1 = v0;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMLocationProvider: stopLocationMonitoring", v5, 2u);
  }

  if (*(v1 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_includeHeading) == 1)
  {
    [*(v1 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_locationManager) stopUpdatingHeading];
  }

  v6 = *(v1 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_locationManager);

  return [v6 stopUpdatingLocation];
}

id sub_10052974C(char a1)
{
  v2 = v1;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    v9 = String.init<A>(describing:)();
    v11 = sub_100005B4C(v9, v10, &v17);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMLocationProvider: updateConfigurationType: %s", v7, 0xCu);
    sub_100006060(v8);
  }

  v12 = OBJC_IVAR____TtC6FindMy18FMLocationProvider_locationManager;
  result = *(v2 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_locationManager);
  if (result)
  {
    v14 = &kCLLocationAccuracyBest;
    if ((a1 & 1) == 0)
    {
      v14 = &kCLLocationAccuracyHundredMeters;
    }

    [result setDesiredAccuracy:*v14];
    result = *(v2 + v12);
    if (result)
    {
      v15 = kCLDistanceFilterNone;
      if ((a1 & 1) == 0)
      {
        v15 = 100.0;
      }

      [result setDistanceFilter:v15];
      result = *(v2 + v12);
      if (result)
      {
        if (a1)
        {
          v16 = 3;
        }

        else
        {
          v16 = 1;
        }

        return [result setActivityType:v16];
      }
    }
  }

  return result;
}

uint64_t sub_1005299A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v9 = *(v16 - 8);
  __chkstk_darwin(v16);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a1;
  v13[4] = a3;
  aBlock[4] = sub_10052A328;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100644E00;
  v14 = _Block_copy(aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100037918();
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v17 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v16);
}

uint64_t sub_100529C5C(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_10007EBC0(&qword_1006B04E8);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100552220;
    swift_errorRetain();
    _StringGuts.grow(_:)(50);

    swift_getErrorValue();
    v4._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v4);

    *(v3 + 56) = &type metadata for String;
    *(v3 + 32) = 0xD000000000000030;
    *(v3 + 40) = 0x800000010059E5D0;
    print(_:separator:terminator:)();
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    v36 = a2;
    if (v6)
    {
      goto LABEL_8;
    }

LABEL_20:

    goto LABEL_21;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v36 = a2;
  if (!v6)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (v6 < 1)
  {
    __break(1u);
    goto LABEL_37;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(v5 + 8 * v7 + 32);
    }

    v10 = v9;
    [v9 confidence];
    Double.write<A>(to:)();
    v11._countAndFlagsBits = 2108704;
    v11._object = 0xE300000000000000;
    String.append(_:)(v11);
    v12 = [v10 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16._countAndFlagsBits = v13;
    v16._object = v15;
    String.append(_:)(v16);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_10008B9E4(0, *(v8 + 2) + 1, 1, v8);
    }

    v18 = *(v8 + 2);
    v17 = *(v8 + 3);
    if (v18 >= v17 >> 1)
    {
      v8 = sub_10008B9E4((v17 > 1), v18 + 1, 1, v8);
    }

    ++v7;

    *(v8 + 2) = v18 + 1;
    v19 = &v8[16 * v18];
    *(v19 + 4) = 0;
    *(v19 + 5) = 0xE000000000000000;
  }

  while (v6 != v7);
LABEL_21:

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC6FindMy18FMLocationProvider_poiLocations) = v36;
    v21 = Strong;
  }

  swift_beginAccess();
  v22 = swift_unknownObjectWeakLoadStrong();
  if (!v22)
  {
    goto LABEL_40;
  }

  a2 = v22;
  v23 = OBJC_IVAR____TtC6FindMy18FMLocationProvider_subscriptions;
  result = swift_beginAccess();
  v6 = *(a2 + v23);
  if (!(v6 >> 62))
  {
    v25 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_26;
    }

LABEL_38:

LABEL_39:

LABEL_40:
    sub_10007EBC0(&qword_1006B04E8);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100552220;
    _StringGuts.grow(_:)(45);

    v32 = Array.description.getter();
    v34 = v33;

    v35._countAndFlagsBits = v32;
    v35._object = v34;
    String.append(_:)(v35);

    *(v31 + 56) = &type metadata for String;
    *(v31 + 32) = 0xD00000000000002BLL;
    *(v31 + 40) = 0x800000010059E5A0;
    print(_:separator:terminator:)();
  }

LABEL_37:
  result = _CocoaArrayWrapper.endIndex.getter();
  v25 = result;
  if (!result)
  {
    goto LABEL_38;
  }

LABEL_26:
  if (v25 >= 1)
  {

    for (i = 0; i != v25; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v27 = *(v6 + 8 * i + 32);
      }

      v28 = v27 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v29 = *(v28 + 8);
        ObjectType = swift_getObjectType();
        (*(v29 + 24))(a2, v5, ObjectType, v29);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    goto LABEL_39;
  }

  __break(1u);
  return result;
}

uint64_t sub_10052A1BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_10000905C(0, &qword_1006C3B40);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

id sub_10052A260()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMLocationProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10052A334()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005B14(v0, qword_1006D4630);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    swift_getErrorValue();
    v4 = Error.localizedDescription.getter();
    v6 = sub_100005B4C(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&_mh_execute_header, oslog, v1, "FMLocationProvider: location manager failed with error: %s", v2, 0xCu);
    sub_100006060(v3);
  }

  else
  {
  }
}

unint64_t sub_10052A4EC()
{
  result = qword_1006C3B48;
  if (!qword_1006C3B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3B48);
  }

  return result;
}

id LocateDeviceIntent.__allocating_init(identifier:class:name:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(v3) init];
  type metadata accessor for Device();
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = v5;
  v8 = String._bridgeToObjectiveC()();

  v9 = String._bridgeToObjectiveC()();

  v10 = [v6 initWithIdentifier:v8 displayString:v9];

  [v7 setDevice:v10];
  [v7 setLocateDeviceClass:a3];

  return v7;
}

Swift::Bool __swiftcall CLLocation.fmifIsNearBy(_:inBTRangeDistanceInMeters:)(CLLocation _, Swift::Double inBTRangeDistanceInMeters)
{
  isa = _.super.isa;
  [v2 distanceFromLocation:_.super.isa];
  v6 = v5;
  [v2 horizontalAccuracy];
  v8 = v7;
  [(objc_class *)isa horizontalAccuracy];
  return v6 / sqrt(inBTRangeDistanceInMeters * inBTRangeDistanceInMeters + v8 * v8 + v9 * v9) < 1.5;
}

void *sub_10052A6EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v13 = _swiftEmptyArrayStorage;
    sub_100166FC8(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v13 = v2;
      v7 = v2[2];
      v8 = v2[3];

      if (v7 >= v8 >> 1)
      {
        sub_100166FC8((v8 > 1), v7 + 1, 1);
        v2 = v13;
      }

      v11 = &type metadata for String;
      v12 = sub_10008EE84();
      *&v10 = v6;
      *(&v10 + 1) = v5;
      v2[2] = v7 + 1;
      sub_100006A54(&v10, &v2[5 * v7 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_10052A850(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_100170460(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_100170460((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_1000072E4(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_10052A978(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1001673CC(0, v2, 0);
    v5 = a1 + 32;
    do
    {

      sub_10007EBC0(a2);
      sub_10007EBC0(&qword_1006B41B0);
      swift_dynamicCast();
      v7 = _swiftEmptyArrayStorage[2];
      v6 = _swiftEmptyArrayStorage[3];
      if (v7 >= v6 >> 1)
      {
        sub_1001673CC((v6 > 1), v7 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v7 + 1;
      _swiftEmptyArrayStorage[v7 + 4] = v9;
      v5 += 8;
      --v2;
    }

    while (v2);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10052AADC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100167514(0, v1, 0);
    v3 = (a1 + 48);
    do
    {
      v4 = *v3;

      v5 = v4;
      sub_10007EBC0(&qword_1006AF900);
      sub_10007EBC0(&qword_1006B4178);
      swift_dynamicCast();
      v6 = v12;
      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        sub_100167514((v7 > 1), v8 + 1, 1);
        v6 = v12;
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      v9 = &_swiftEmptyArrayStorage[3 * v8];
      v9[4] = v11;
      *(v9 + 5) = v6;
      v3 += 3;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10052AC64(unint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t), void (*a3)(uint64_t, unint64_t), unint64_t *a4)
{
  if (a1 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = _swiftEmptyArrayStorage;
  if (!v8)
  {
    return v9;
  }

  v20 = _swiftEmptyArrayStorage;
  result = (a2)(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v18 = a2;
    v9 = v20;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v8; ++i)
      {
        a3(i, a1);
        sub_10000905C(0, a4);
        swift_dynamicCast();
        v20 = v9;
        v13 = v9[2];
        v12 = v9[3];
        if (v13 >= v12 >> 1)
        {
          v18(v12 > 1, v13 + 1, 1);
          v9 = v20;
        }

        v9[2] = v13 + 1;
        sub_1000072E4(v19, &v9[4 * v13 + 4]);
      }
    }

    else
    {
      v14 = (a1 + 32);
      sub_10000905C(0, a4);
      do
      {
        v15 = *v14;
        swift_dynamicCast();
        v20 = v9;
        v17 = v9[2];
        v16 = v9[3];
        if (v17 >= v16 >> 1)
        {
          v18(v16 > 1, v17 + 1, 1);
          v9 = v20;
        }

        v9[2] = v17 + 1;
        sub_1000072E4(v19, &v9[4 * v17 + 4]);
        ++v14;
        --v8;
      }

      while (v8);
    }

    return v9;
  }

  __break(1u);
  return result;
}

void sub_10052AE74()
{
  v1 = [v0 tableFooterView];
  if (v1)
  {
    v5 = v1;
    [v0 frame];
    v9.origin.x = 0.0;
    v9.origin.y = 0.0;
    v9.size.width = 0.0;
    v9.size.height = 0.0;
    if (!CGRectEqualToRect(v7, v9))
    {
      [v0 setTableFooterView:0];
      [v5 setFrame:{0.0, 0.0, 0.0, 0.0}];
      [v5 setNeedsLayout];
      [v5 layoutIfNeeded];
      [v0 bounds];
      Width = CGRectGetWidth(v8);
      LODWORD(v3) = 1148846080;
      LODWORD(v4) = 1112014848;
      [v5 systemLayoutSizeFittingSize:Width withHorizontalFittingPriority:UILayoutFittingCompressedSize.height verticalFittingPriority:{v3, v4}];
      [v5 frame];
      [v5 setFrame:?];
      [v0 setTableFooterView:v5];
    }
  }
}

void sub_10052AFE8(uint64_t a1, uint64_t a2)
{
  v32 = sub_10007EBC0(&qword_1006C3C18);
  v3 = *(v32 - 8);
  __chkstk_darwin(v32);
  v28 = (&v27 - v4);
  v5 = sub_10007EBC0(&unk_1006C3C20);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v27 - v10;
  v12 = 0;
  v13 = *(a2 + 16);
  v31 = (v3 + 56);
  v29 = a2;
  v30 = (v3 + 48);
  while (1)
  {
    if (v12 == v13)
    {
      v14 = 1;
      v12 = v13;
      v15 = v32;
      goto LABEL_7;
    }

    if (v12 >= v13)
    {
      break;
    }

    v16 = *(type metadata accessor for FMPeopleCellViewModel() - 8);
    if (__OFADD__(v12, 1))
    {
      goto LABEL_17;
    }

    v17 = v28;
    v18 = v29 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v12;
    v15 = v32;
    v19 = *(v32 + 48);
    *v28 = v12;
    sub_1000353E4(v18, v17 + v19, type metadata accessor for FMPeopleCellViewModel);
    sub_100035318(v17, v7, &qword_1006C3C18);
    v14 = 0;
    ++v12;
LABEL_7:
    (*v31)(v7, v14, 1, v15, v9);
    sub_100035318(v7, v11, &unk_1006C3C20);
    if ((*v30)(v11, 1, v15) == 1)
    {
      return;
    }

    v20 = v13;
    v21 = &v11[*(v15 + 48)];
    v23 = *v21;
    v22 = *(v21 + 1);

    sub_100035650(v21, type metadata accessor for FMPeopleCellViewModel);
    if (v23 == FMFFriend.identifier.getter() && v22 == v24)
    {

      return;
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v13 = v20;
    if (v26)
    {
      return;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

id sub_10052B328(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMAllowLocationAlertCellViewModel();
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v44 - v8;
  sub_10052BB18(a1);
  v10 = *&v1[qword_1006B7290];
  v11 = String._bridgeToObjectiveC()();
  [v10 setText:v11];

  v12 = String._bridgeToObjectiveC()();
  [v10 setAccessibilityIdentifier:v12];

  v13 = *&v2[qword_1006B7298];
  v14 = String._bridgeToObjectiveC()();
  [v13 setText:v14];

  v15 = String._bridgeToObjectiveC()();
  [v13 setAccessibilityIdentifier:v15];

  v16 = *&v2[qword_1006B72A0];
  [v16 setText:0];
  v17 = [objc_opt_self() secondaryLabelColor];
  [v16 setTextColor:v17];

  v18 = String._bridgeToObjectiveC()();
  [v16 setAccessibilityIdentifier:v18];

  v19 = *&v2[qword_1006B72A8];
  [v19 setHidden:1];
  *&v19[OBJC_IVAR____TtC6FindMy13FMBatteryView_level] = 0;
  sub_10004802C();
  v19[OBJC_IVAR____TtC6FindMy13FMBatteryView_powerMode] = 0;
  sub_100048358();
  v19[OBJC_IVAR____TtC6FindMy13FMBatteryView_isCharging] = 0;
  [*&v19[OBJC_IVAR____TtC6FindMy13FMBatteryView_chargingView] setHidden:1];
  v20 = String._bridgeToObjectiveC()();
  [v19 setAccessibilityIdentifier:v20];

  [*&v2[qword_1006B72C0] setHidden:1];
  [v16 setHidden:0];
  v21 = *&v2[qword_1006B72B0];
  [v21 setHidden:1];
  [v21 stopAnimating];
  if (qword_1006AEB68 != -1)
  {
    swift_once();
  }

  if (byte_1006D4248 == 1)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100005B14(v22, qword_1006D4630);
    sub_1000353E4(a1, v9, type metadata accessor for FMAllowLocationAlertCellViewModel);
    sub_1000353E4(a1, v7, type metadata accessor for FMAllowLocationAlertCellViewModel);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v25 = 136316162;
      v26 = *(v9 + 10);
      v27 = *(v9 + 11);

      sub_100035650(v9, type metadata accessor for FMAllowLocationAlertCellViewModel);
      v28 = sub_100005B4C(v26, v27, &v45);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      v29 = *(v7 + 8);
      v30 = *(v7 + 9);

      sub_100035650(v7, type metadata accessor for FMAllowLocationAlertCellViewModel);
      v31 = sub_100005B4C(v29, v30, &v45);

      *(v25 + 14) = v31;
      *(v25 + 22) = 2080;
      *(v25 + 24) = sub_100005B4C(7104878, 0xE300000000000000, &v45);
      *(v25 + 32) = 1024;
      *(v25 + 34) = 0;
      *(v25 + 38) = 1024;
      *(v25 + 40) = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "FMTableViewCell: Content\ntitle: %s\nsubtitle: %s\ndistance: %s\nlocating: %{BOOL}d\nbatteryIndicatorShowing: %{BOOL}d", v25, 0x2Cu);
      swift_arrayDestroy();
    }

    else
    {

      sub_100035650(v7, type metadata accessor for FMAllowLocationAlertCellViewModel);
      sub_100035650(v9, type metadata accessor for FMAllowLocationAlertCellViewModel);
    }
  }

  v2[qword_1006B72D8] = 0;
  v32 = [v2 containerView];
  [v32 bounds];
  v34 = v33;

  v35 = *&v2[qword_1006B72B8];
  v36 = sub_100046C64(sub_100046EA0);
  sub_100046EA0();
  [v35 setFrame:{v36, v34 + -1.0, v37, 1.0}];
  v38 = [v2 containerView];
  [v38 bounds];
  v40 = v39;

  v41 = sub_100046C64(sub_100046EA0);
  sub_100046EA0();
  return [v35 setFrame:{v41, v40 + -1.0, v42, 1.0}];
}

id sub_10052B9C8(uint64_t a1)
{
  v1[OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_hasBackplate] = *(a1 + 64);
  v3 = [objc_opt_self() systemGray6Color];
  v4 = *&v1[OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_backplateStrokeColor];
  *&v1[OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_backplateStrokeColor] = v3;

  v5 = *&v1[OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_badgeView];
  v6 = *(a1 + 8);
  [v5 setImage:v6];
  [v5 setBackgroundColor:*(a1 + 16)];
  [v5 setHidden:v6 == 0];
  v7 = *&v1[OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_imageView];
  [v7 setImage:*a1];
  [v7 frame];
  [v7 setFrame:?];
  [v7 setHidden:0];
  [v1 setHidden:0];

  return [v1 setNeedsLayout];
}

id sub_10052BB18(uint64_t *a1)
{
  v1[OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_hasBackplate] = *(a1 + 104);
  v3 = [objc_opt_self() systemGray6Color];
  v4 = *&v1[OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_backplateStrokeColor];
  *&v1[OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_backplateStrokeColor] = v3;

  v5 = *&v1[OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_badgeView];
  v6 = *a1;
  [v5 setImage:*a1];
  [v5 setBackgroundColor:a1[1]];
  [v5 setHidden:v6 == 0];
  v7 = *&v1[OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_imageView];
  [v7 setImage:*(a1 + *(type metadata accessor for FMAllowLocationAlertCellViewModel() + 56))];
  [v7 frame];
  [v7 setFrame:?];
  [v7 setHidden:0];
  [v1 setHidden:0];

  return [v1 setNeedsLayout];
}

void sub_10052BC74(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_100535FF4, v8);
}

id sub_10052BD48(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_10007EBC0(&unk_1006C3C80);
  __chkstk_darwin(v4 - 8);
  v48 = v44 - v5;
  v6 = sub_10007EBC0(&qword_1006B9340);
  v7 = __chkstk_darwin(v6 - 8);
  v46 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v44 - v9;
  v11 = sub_10007EBC0(&qword_1006B6D60);
  v12 = __chkstk_darwin(v11 - 8);
  v47 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = v44 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = v44 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = v44 - v21;
  __chkstk_darwin(v20);
  v24 = v44 - v23;
  v25 = *(v1 + *((swift_isaMask & *v1) + 0x1A8));
  UIButton.configuration.getter();
  v26 = type metadata accessor for UIButton.Configuration();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  v50 = v27 + 48;
  v51 = v28;
  v29 = v28(v24, 1, v26);
  v49 = a1;
  if (v29)
  {
    sub_100007204(v24, v22, &qword_1006B6D60);
    UIButton.configuration.setter();
    sub_100012DF0(v24, &qword_1006B6D60);
  }

  else
  {
    if (a1[5])
    {
      v44[1] = a1[4];
      v45 = v1;

      sub_10052C444();

      v30 = type metadata accessor for AttributedString();
      (*(*(v30 - 8) + 56))(v10, 0, 1, v30);
    }

    else
    {
      v31 = type metadata accessor for AttributedString();
      (*(*(v31 - 8) + 56))(v10, 1, 1, v31);
    }

    UIButton.Configuration.attributedTitle.setter();
    UIButton.configuration.setter();
  }

  UIButton.configuration.getter();
  v32 = v51(v19, 1, v26);
  v33 = v49;
  if (v32)
  {
    sub_100007204(v19, v22, &qword_1006B6D60);
    UIButton.configuration.setter();
    sub_100012DF0(v19, &qword_1006B6D60);
  }

  else
  {
    UIButton.Configuration.showsActivityIndicator.setter();
    UIButton.configuration.setter();
  }

  v34 = *(v1 + *((swift_isaMask & *v1) + 0x1B0));
  UIButton.configuration.getter();
  if (v51(v16, 1, v26))
  {
    sub_100007204(v16, v22, &qword_1006B6D60);
    UIButton.configuration.setter();
    sub_100012DF0(v16, &qword_1006B6D60);
  }

  else
  {
    if (v33[7])
    {
      v35 = v1;

      v36 = v46;
      sub_10052C444();

      v37 = type metadata accessor for AttributedString();
      (*(*(v37 - 8) + 56))(v36, 0, 1, v37);

      v33 = v49;
    }

    else
    {
      v38 = type metadata accessor for AttributedString();
      (*(*(v38 - 8) + 56))(v46, 1, 1, v38);
    }

    UIButton.Configuration.attributedTitle.setter();
    UIButton.configuration.setter();
  }

  v39 = v47;
  UIButton.configuration.getter();
  if (v51(v39, 1, v26))
  {
    sub_100007204(v39, v22, &qword_1006B6D60);
    UIButton.configuration.setter();
    sub_100012DF0(v39, &qword_1006B6D60);
  }

  else
  {
    UIButton.Configuration.showsActivityIndicator.setter();
    UIButton.configuration.setter();
  }

  [v25 setEnabled:1];
  [v34 setEnabled:1];
  v40 = v48;
  sub_1000353E4(v33, v48, type metadata accessor for FMAllowLocationAlertCellViewModel);
  v41 = type metadata accessor for FMAllowLocationAlertCellViewModel();
  (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
  v42 = *((swift_isaMask & *v2) + 0x1A0);
  swift_beginAccess();
  sub_10053613C(v40, v2 + v42);
  swift_endAccess();
  return sub_10052B328(v33);
}

uint64_t sub_10052C444()
{
  v0 = type metadata accessor for AttributeContainer();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v11 - v5;
  AttributeContainer.init()();
  v7 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v7 setAlignment:1];
  LODWORD(v8) = 1.0;
  [v7 setHyphenationFactor:v8];
  [v7 setLineBreakMode:0];
  v11[1] = v7;
  sub_100350E28();
  v9 = v7;
  AttributeContainer.subscript.setter();
  (*(v1 + 16))(v4, v6, v0);

  AttributedString.init(_:attributes:)();

  return (*(v1 + 8))(v6, v0);
}

id sub_10052C60C()
{
  v1 = sub_10007EBC0(&qword_1006B6D60);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v15 - v6;
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = *(v0 + *((swift_isaMask & *v0) + 0x1A8));
  UIButton.configuration.getter();
  v11 = type metadata accessor for UIButton.Configuration();
  v12 = *(*(v11 - 8) + 48);
  if (v12(v9, 1, v11))
  {
    sub_100007204(v9, v7, &qword_1006B6D60);
    UIButton.configuration.setter();
    sub_100012DF0(v9, &qword_1006B6D60);
  }

  else
  {
    UIButton.Configuration.showsActivityIndicator.setter();
    UIButton.configuration.setter();
  }

  v13 = *(v0 + *((swift_isaMask & *v0) + 0x1B0));
  UIButton.configuration.getter();
  if (v12(v4, 1, v11))
  {
    sub_100007204(v4, v7, &qword_1006B6D60);
    UIButton.configuration.setter();
    sub_100012DF0(v4, &qword_1006B6D60);
  }

  else
  {
    UIButton.Configuration.showsActivityIndicator.setter();
    UIButton.configuration.setter();
  }

  [v10 setEnabled:0];
  return [v13 setEnabled:0];
}

uint64_t sub_10052C8B4()
{
  v1 = type metadata accessor for FMFLocationAlertAcceptanceStatus();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v50 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_10007EBC0(&unk_1006C3CA0);
  __chkstk_darwin(v53);
  v5 = v46 - v4;
  v6 = sub_10007EBC0(&unk_1006BC950);
  v7 = __chkstk_darwin(v6 - 8);
  v51 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v54 = v46 - v10;
  __chkstk_darwin(v9);
  v55 = v46 - v11;
  v12 = type metadata accessor for FMFLocationAlertTriggerType();
  v52 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v56 = v46 - v16;
  v17 = type metadata accessor for FMFLocationAlertTarget();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = v46 - v22;
  if ((FMFLocationAlert.setOnMe.getter() & 1) == 0)
  {
    goto LABEL_17;
  }

  v48 = v1;
  v49 = v2;
  v46[1] = v0;
  v47 = v5;
  FMFLocationAlert.locationAlertTarget.getter();
  (*(v18 + 104))(v21, enum case for FMFLocationAlertTarget.alertMe(_:), v17);
  sub_10000A810(&unk_1006B0058, &type metadata accessor for FMFLocationAlertTarget);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v59 == v57 && v60 == v58)
  {
    v24 = *(v18 + 8);
    v24(v21, v17);
    v24(v23, v17);
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v26 = *(v18 + 8);
    v26(v21, v17);
    v26(v23, v17);

    if ((v25 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v27 = FMFLocationAlert.repeating.getter();
  v29 = v47;
  v28 = v48;
  if (v27)
  {
    goto LABEL_11;
  }

  FMFLocationAlert.triggerType.getter();
  v30 = v52;
  (*(v52 + 104))(v15, enum case for FMFLocationAlertTriggerType.scheduled(_:), v12);
  sub_10000A810(&qword_1006B00A0, &type metadata accessor for FMFLocationAlertTriggerType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v59 == v57 && v60 == v58)
  {
    v31 = *(v30 + 8);
    v31(v15, v12);
    v31(v56, v12);

    goto LABEL_11;
  }

  v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v33 = *(v30 + 8);
  v33(v15, v12);
  v33(v56, v12);

  if ((v32 & 1) == 0)
  {
LABEL_17:
    v39 = 0;
    return v39 & 1;
  }

LABEL_11:
  v34 = v55;
  FMFLocationAlert.acceptanceStatus.getter();
  v35 = v49;
  v36 = v54;
  (*(v49 + 104))(v54, enum case for FMFLocationAlertAcceptanceStatus.pending(_:), v28);
  (*(v35 + 56))(v36, 0, 1, v28);
  v37 = *(v53 + 48);
  sub_100007204(v34, v29, &unk_1006BC950);
  sub_100007204(v36, v29 + v37, &unk_1006BC950);
  v38 = *(v35 + 48);
  if (v38(v29, 1, v28) != 1)
  {
    v40 = v51;
    sub_100007204(v29, v51, &unk_1006BC950);
    if (v38(v29 + v37, 1, v28) != 1)
    {
      v42 = v49;
      v43 = v29 + v37;
      v44 = v50;
      (*(v49 + 32))(v50, v43, v28);
      sub_10000A810(&qword_1006B3D08, &type metadata accessor for FMFLocationAlertAcceptanceStatus);
      v39 = dispatch thunk of static Equatable.== infix(_:_:)();
      v45 = *(v42 + 8);
      v45(v44, v28);
      sub_100012DF0(v36, &unk_1006BC950);
      sub_100012DF0(v34, &unk_1006BC950);
      v45(v40, v28);
      sub_100012DF0(v29, &unk_1006BC950);
      return v39 & 1;
    }

    sub_100012DF0(v36, &unk_1006BC950);
    sub_100012DF0(v34, &unk_1006BC950);
    (*(v49 + 8))(v40, v28);
    goto LABEL_16;
  }

  sub_100012DF0(v36, &unk_1006BC950);
  sub_100012DF0(v34, &unk_1006BC950);
  if (v38(v29 + v37, 1, v28) != 1)
  {
LABEL_16:
    sub_100012DF0(v29, &unk_1006C3CA0);
    goto LABEL_17;
  }

  sub_100012DF0(v29, &unk_1006BC950);
  v39 = 1;
  return v39 & 1;
}

uint64_t sub_10052D0EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_mediator);

  v2 = dispatch thunk of FMFManager.friends.getter();

  v3 = *(*(v1 + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
  v4 = v3;

  v5 = dispatch thunk of FMFManager.locationAlerts.getter();

  sub_10002C9BC(v2, v3, v5, 0);
}

BOOL sub_10052D1C0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for FMPeopleCellViewModel();
  v5 = *(v4 + 68);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 != v7)
  {
    return v6 < v7;
  }

  v8 = *(v4 + 64);
  v9 = round(*(a1 + v8));
  v10 = v9 > -9.22337204e18;
  if (v9 >= 9.22337204e18)
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = 30 * (v9 / 30);
  }

  else
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = round(*(a2 + v8));
  if (v13 > -9.22337204e18 && v13 < 9.22337204e18)
  {
    v15 = 30 * (v13 / 30);
    if (v11 != v15)
    {
      if (v10)
      {
        v16 = 30 * (v9 / 30);
        return v16 < v15;
      }

LABEL_19:
      v16 = 0x7FFFFFFFFFFFFFFFLL;
      return v16 < v15;
    }

LABEL_16:
    v17 = *a1;
    v18 = a1[1];

    v19._countAndFlagsBits = v17;
    v19._object = v18;
    String.append(_:)(v19);
    v20 = *a2;
    v21 = a2[1];

    v22._countAndFlagsBits = v20;
    v22._object = v21;
    String.append(_:)(v22);
    sub_100035F3C();
    v23 = StringProtocol.caseInsensitiveCompare<A>(_:)();

    return v23 == -1;
  }

  v15 = 0x7FFFFFFFFFFFFFFFLL;
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_19;
  }

  v16 = 30 * (v9 / 30);
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  return v16 < v15;
}

uint64_t sub_10052D400(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006C3C78);
  __chkstk_darwin(v2 - 8);
  sub_100007204(a1, &v5 - v3, &qword_1006C3C78);
  return EnvironmentValues.backgroundMaterial.setter();
}

void sub_10052D4A8(char a1, unint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (a1)
  {
    sub_1005322B8(a2);
  }

  else
  {
    sub_1005329A8(a2);
  }
}

void sub_10052D514(char a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for FMPeopleCellViewModel();
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005B14(v10, qword_1006D4630);
  sub_1000353E4(a2, v9, type metadata accessor for FMPeopleCellViewModel);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 136315138;
    v15 = &v9[*(v7 + 24)];
    v23 = a2;
    v24 = v14;
    v16 = a1;
    v18 = *v15;
    v17 = v15[1];

    sub_100035650(v9, type metadata accessor for FMPeopleCellViewModel);
    v19 = sub_100005B4C(v18, v17, &v24);
    a1 = v16;
    a2 = v23;

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "FMPeopleListDataSource: accept action for %s", v13, 0xCu);
    sub_100006060(v14);
  }

  else
  {

    sub_100035650(v9, type metadata accessor for FMPeopleCellViewModel);
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v22 = *a2;
  v21 = a2[1];
  if (a1)
  {

    sub_10052FA90(v22, v21, sub_1005361AC, a4);
  }

  else
  {
    sub_10052FEF4(v22, v21);
  }
}

void sub_10052D7AC()
{
  v0 = type metadata accessor for FMFActionStatus();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, enum case for FMFActionStatus.success(_:), v0);
  sub_10000A810(&qword_1006B32A0, &type metadata accessor for FMFActionStatus);
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v1 + 8))(v3, v0);
  if ((v4 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      [Strong reloadData];
    }
  }
}

uint64_t sub_10052D928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PeopleListPersonRow.State();
  __chkstk_darwin(v4);
  (*(v6 + 16))(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  PeopleListPersonRow.init(state:)();
  KeyPath = swift_getKeyPath();
  v8 = (a2 + *(sub_10007EBC0(&qword_1006C3C50) + 36));
  v9 = *(sub_10007EBC0(&qword_1006C3C70) + 28);
  v10 = type metadata accessor for Material();
  result = (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
  *v8 = KeyPath;
  return result;
}

id sub_10052DA7C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v1 = Strong, v2 = [Strong isHighlighted], v1, (v2 & 1) != 0))
  {
    v3 = &selRef_systemFillColor;
  }

  else
  {
    v3 = &selRef_clearColor;
  }

  v4 = [objc_opt_self() *v3];

  return v4;
}

void sub_10052DB1C(uint64_t a1, char a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_mediator);

  v4 = dispatch thunk of FMFManager.friends.getter();

  v5 = *(*(v3 + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
  v6 = v5;
  sub_10002C9BC(v4, v5, 0, a2);
}

uint64_t sub_10052DBD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWallTime();
  v23 = *(v4 - 8);
  v24 = v4;
  __chkstk_darwin(v4);
  v21 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v22 = &v20 - v7;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v8);
  v9 = OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_delayedUpdateWorkItem;
  if (*(a1 + OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_delayedUpdateWorkItem))
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a2;
  aBlock[4] = sub_100535A84;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100645228;
  _Block_copy(aBlock);
  v25 = _swiftEmptyArrayStorage;
  sub_10000A810(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);

  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v12 = DispatchWorkItem.init(flags:block:)();

  *(a1 + v9) = v12;

  sub_10000905C(0, &qword_1006AEDC0);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = v21;
  static DispatchWallTime.now()();
  v15 = v22;
  + infix(_:_:)();
  v16 = *(v23 + 8);
  v17 = v14;
  v18 = v24;
  v16(v17, v24);
  OS_dispatch_queue.asyncAfter(wallDeadline:execute:)();

  return (v16)(v15, v18);
}

void sub_10052DF6C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = dispatch thunk of FMFManager.friends.getter();
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_mediator);
      v5 = v3;

      v6 = *(v4 + 40);

      v7 = *&v6[OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation];
      v8 = v7;
    }

    else
    {
      v7 = 0;
    }

    sub_10002C9BC(v2, v7, 0, 0);
  }
}

void sub_10052E070(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_mediator);

  v4 = dispatch thunk of FMFManager.friends.getter();

  v5 = *(*(v3 + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
  v6 = v5;
  sub_10002C9BC(v4, v5, a2, 0);
}

id sub_10052E128(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_mediator);

  v2 = dispatch thunk of FMFManager.friends.getter();

  v3 = *(*(v1 + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
  v4 = v3;
  sub_10002C9BC(v2, v3, 0, 0);

  return sub_1000382F0();
}

void sub_10052E1C8(uint64_t a1, unint64_t a2)
{

  v3 = dispatch thunk of FMFManager.friends.getter();

  if (a2 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v4 = *(a2 + 32);
  }

  v5 = v4;
LABEL_9:
  v6 = v5;
  sub_10002C9BC(v3, v5, 0, 0);
}

uint64_t sub_10052E2C8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v49);
  v51 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v50 = &v47 - v10;
  v11 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v11 - 8);
  v13 = &v47 - v12;
  v14 = type metadata accessor for FMFFriend();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (IndexPath.section.getter() != 2)
  {
    (*(v15 + 56))(v13, 1, 1, v14);
    goto LABEL_7;
  }

  v48 = a1;
  v18 = IndexPath.row.getter();
  v19 = OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_cellsViewModel;
  result = swift_beginAccess();
  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = *(v2 + v19);
  if (v18 >= *(v21 + 16))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v22 = *(type metadata accessor for FMPeopleCellViewModel() - 8);
  v23 = (v21 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v18);
  v47 = *(v2 + OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_mediator);
  v52 = v2;
  v25 = *v23;
  v24 = v23[1];

  v26 = v25;
  v2 = v52;
  sub_1000BD300(v26, v24, v13);

  v27 = (*(v15 + 48))(v13, 1, v14);
  a1 = v48;
  if (v27 == 1)
  {
LABEL_7:
    sub_100012DF0(v13, &qword_1006B0050);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100005B14(v33, qword_1006D4630);
    (*(v5 + 16))(v7, a1, v4);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v52 = v2;
      v38 = v37;
      v53[0] = v37;
      *v36 = 136315138;
      sub_10000A810(&qword_1006C01F0, &type metadata accessor for IndexPath);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v5 + 8))(v7, v4);
      v42 = sub_100005B4C(v39, v41, v53);

      *(v36 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v34, v35, "FMPeopleListDataSource: cannnot select person at indexPath: %s", v36, 0xCu);
      sub_100006060(v38);
      v2 = v52;
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    goto LABEL_12;
  }

  (*(v15 + 32))(v17, v13, v14);
  v28 = *(v47 + 56);
  v29 = v50;
  (*(v15 + 16))(v50, v17, v14);
  swift_storeEnumTagMultiPayload();
  v30 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  v31 = v51;
  sub_1000353E4(v28 + v30, v51, type metadata accessor for FMSelectedSection);
  swift_beginAccess();

  sub_100058530(v29, v28 + v30);
  swift_endAccess();
  sub_100058594(v31);

  v32 = v31;
  v2 = v52;
  sub_100035650(v32, type metadata accessor for FMSelectedSection);
  sub_100035650(v29, type metadata accessor for FMSelectedSection);

  dispatch thunk of FMFManager.updateLastActiveTimestamp()();
  (*(v15 + 8))(v17, v14);

LABEL_12:
  result = IndexPath.section.getter();
  if (!result)
  {
    v43 = *(*(v2 + OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_mediator) + 56);
    v44 = v50;
    swift_storeEnumTagMultiPayload();
    v45 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    v46 = v51;
    sub_1000353E4(v43 + v45, v51, type metadata accessor for FMSelectedSection);
    swift_beginAccess();

    sub_100058530(v44, v43 + v45);
    swift_endAccess();
    sub_100058594(v46);

    sub_100035650(v46, type metadata accessor for FMSelectedSection);
    return sub_100035650(v44, type metadata accessor for FMSelectedSection);
  }

  return result;
}

void sub_10052E9E0()
{
  v1 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v19 - v5;
  v7 = *(v0 + OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_mediator);

  v8 = dispatch thunk of FMFManager.friendsOperationsRestricted.getter();

  if (v8)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100005B14(v9, qword_1006D4630);
    v20 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v20, v10, "Add friend operation is restricted.", v11, 2u);
    }

    v12 = v20;
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100005B14(v13, qword_1006D4630);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "FMPeopleListDataSource: add person requested", v16, 2u);
    }

    v17 = *(v7 + 56);
    swift_storeEnumTagMultiPayload();
    v18 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_1000353E4(v17 + v18, v3, type metadata accessor for FMSelectedSection);
    swift_beginAccess();

    sub_100058530(v6, v17 + v18);
    swift_endAccess();
    sub_100058594(v3);

    sub_100035650(v3, type metadata accessor for FMSelectedSection);
    sub_100035650(v6, type metadata accessor for FMSelectedSection);
  }
}

void *sub_10052ED38(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v112 = *(v4 - 8);
  v113 = v4;
  __chkstk_darwin(v4);
  v110 = v5;
  v111 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v6 - 8);
  v8 = &v102 - v7;
  v9 = type metadata accessor for FMFFriend();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v11;
  __chkstk_darwin(v13);
  v116 = &v102 - v14;
  v15 = type metadata accessor for FMPeopleCellViewModel();
  v16 = *(v15 - 1);
  __chkstk_darwin(v15);
  v18 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = IndexPath.section.getter();
  result = 0;
  if (v19 != 2)
  {
    return result;
  }

  v106 = v12;
  v123 = _swiftEmptyArrayStorage;
  v21 = IndexPath.row.getter();
  v22 = OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_cellsViewModel;
  swift_beginAccess();
  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v23 = *&v2[v22];
  if (v21 >= *(v23 + 16))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v115 = v10;
  v109 = v9;
  v24 = v2;
  v25 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v26 = *(v16 + 72);
  sub_1000353E4(v23 + v25 + v26 * v21, v18, type metadata accessor for FMPeopleCellViewModel);
  v27 = v15[21];
  v105 = v18[v15[20]];
  v103 = v18[v27];
  v107 = v24;
  v10 = *&v24[OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_mediator];

  LODWORD(v104) = dispatch thunk of FMFManager.friendsOperationsRestricted.getter();

  v28 = v15[22];
  v108 = v18;
  v29 = v18[v28];
  if (IndexPath.section.getter() != 2)
  {
    (*(v115 + 56))(v8, 1, 1, v109);
    goto LABEL_11;
  }

  v30 = IndexPath.row.getter();
  if ((v30 & 0x8000000000000000) != 0)
  {
    goto LABEL_25;
  }

  v31 = *&v107[v22];
  if (v30 >= *(v31 + 16))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v32 = (v31 + v25 + v30 * v26);
  v33 = *v32;
  v34 = v32[1];

  sub_1000BD300(v33, v34, v8);

  v35 = v115;
  v10 = v109;
  if ((*(v115 + 48))(v8, 1, v109) == 1)
  {
LABEL_11:
    sub_100035650(v108, type metadata accessor for FMPeopleCellViewModel);
    sub_100012DF0(v8, &qword_1006B0050);
    return _swiftEmptyArrayStorage;
  }

  v36 = v116;
  v37 = v8;
  v38 = *(v35 + 32);
  v38(v116, v37, v10);
  v39 = &off_100550000;
  v40 = &selRef_initWithScrollView_edge_;
  if (v104 & 1 | ((v29 & 1) == 0))
  {
    v41 = _swiftEmptyArrayStorage;
  }

  else
  {
    v104 = v38;
    v42 = v35 + 16;
    v43 = v106;
    (*(v35 + 16))(v106, v36, v10);
    v44 = v112;
    v45 = *(v112 + 16);
    v102 = v35 + 32;
    v46 = v111;
    v47 = v113;
    v45(v111, a1, v113);
    v48 = (*(v42 + 64) + 24) & ~*(v42 + 64);
    v49 = (v114 + *(v44 + 80) + v48) & ~*(v44 + 80);
    v50 = swift_allocObject();
    v51 = v107;
    *(v50 + 16) = v107;
    v104(v50 + v48, v43, v10);
    (*(v44 + 32))(v50 + v49, v46, v47);
    v52 = swift_allocObject();
    *(v52 + 16) = sub_100535F0C;
    *(v52 + 24) = v50;
    v121 = sub_1005361E0;
    v122 = v52;
    aBlock = _NSConcreteStackBlock;
    v118 = 1107296256;
    v119 = sub_10052BC74;
    v120 = &unk_1006455C0;
    v53 = _Block_copy(&aBlock);
    v54 = objc_opt_self();
    v55 = v51;
    v40 = &selRef_initWithScrollView_edge_;
    v56 = [v54 contextualActionWithStyle:1 title:0 handler:v53];
    _Block_release(v53);

    v57 = String._bridgeToObjectiveC()();
    v58 = [objc_opt_self() systemImageNamed:v57];

    [v56 setImage:v58];
    v59 = [objc_opt_self() systemRedColor];
    [v56 setBackgroundColor:v59];

    v60 = v56;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v41 = v123;
    v36 = v116;
    v39 = &off_100550000;
    v38 = v104;
    v10 = v109;
  }

  if (v105)
  {
    v61 = v38;
    v62 = v115 + 16;
    v63 = v106;
    v64 = v39;
    (*(v115 + 16))(v106, v36, v10);
    v65 = (*(v62 + 64) + 24) & ~*(v62 + 64);
    v66 = swift_allocObject();
    v67 = v107;
    *(v66 + 16) = v107;
    v61(v66 + v65, v63, v10);
    v68 = swift_allocObject();
    *(v68 + 16) = sub_100535E60;
    *(v68 + 24) = v66;
    v121 = sub_1005361E0;
    v122 = v68;
    aBlock = _NSConcreteStackBlock;
    v118 = *(v64 + 130);
    v119 = sub_10052BC74;
    v120 = &unk_100645548;
    v69 = _Block_copy(&aBlock);
    v70 = objc_opt_self();
    v71 = v67;
    v72 = [v70 contextualActionWithStyle:0 title:0 handler:v69];
    _Block_release(v69);

    v73 = String._bridgeToObjectiveC()();
    v74 = [objc_opt_self() systemImageNamed:v73];

    [v72 setImage:v74];
    v75 = [objc_opt_self() systemYellowColor];
    [v72 setBackgroundColor:v75];

    v76 = objc_opt_self();
    v77 = v72;
    v78 = [v76 mainBundle];
    v101 = 0x80000001005802A0;
    v79 = 0x8000000100580270;
    v80 = 0xD00000000000003BLL;
    v81 = 0xD000000000000029;
    goto LABEL_20;
  }

  if (v103)
  {
    v82 = v38;
    v83 = v115 + 16;
    v84 = v106;
    v85 = v39;
    (*(v115 + 16))(v106, v36, v10);
    v86 = (*(v83 + 64) + 24) & ~*(v83 + 64);
    v87 = swift_allocObject();
    v88 = v107;
    *(v87 + 16) = v107;
    v82(v87 + v86, v84, v10);
    v89 = swift_allocObject();
    *(v89 + 16) = sub_100535D5C;
    *(v89 + 24) = v87;
    v121 = sub_100535D74;
    v122 = v89;
    aBlock = _NSConcreteStackBlock;
    v118 = *(v85 + 130);
    v119 = sub_10052BC74;
    v120 = &unk_1006454D0;
    v90 = _Block_copy(&aBlock);
    v91 = objc_opt_self();
    v92 = v88;
    v93 = [v91 v40[387]];
    _Block_release(v90);

    v94 = String._bridgeToObjectiveC()();
    v95 = [objc_opt_self() systemImageNamed:v94];

    [v93 setImage:v95];
    v96 = [objc_opt_self() systemGray2Color];
    [v93 setBackgroundColor:v96];

    v97 = objc_opt_self();
    v77 = v93;
    v78 = [v97 mainBundle];
    v101 = 0x8000000100580310;
    v81 = 0xD00000000000002CLL;
    v79 = 0x80000001005802E0;
    v80 = 0xD00000000000003ELL;
LABEL_20:
    v98._countAndFlagsBits = 0;
    v98._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v81, 0, v78, v98, *&v80);

    v99 = String._bridgeToObjectiveC()();

    [v77 setAccessibilityLabel:v99];

    v8 = v77;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_21:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      (*(v115 + 8))(v116, v10);
      sub_100035650(v108, type metadata accessor for FMPeopleCellViewModel);
      return v123;
    }

LABEL_27:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_21;
  }

  v100 = v41;
  (*(v115 + 8))(v36, v10);
  sub_100035650(v108, type metadata accessor for FMPeopleCellViewModel);
  return v100;
}

void sub_10052FA90(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v37 = a2;
  v6 = type metadata accessor for FMFRelationshipType();
  v36 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  v12 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v12 - 8);
  v14 = &v32 - v13;
  v15 = type metadata accessor for FMFFriend();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v4;

  sub_1000BD300(a1, v37, v14);

  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100012DF0(v14, &qword_1006B0050);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100005B14(v19, qword_1006D4630);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "FMPeopleListDataSource: Cannot accept action for unknown friend", v22, 2u);
    }
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    FMFFriend.relationshipType.getter();
    static FMFRelationshipType.willFollowMyLocation.getter();
    sub_10000A810(&qword_1006B4070, &type metadata accessor for FMFRelationshipType);
    v23 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v24 = *(v36 + 8);
    v24(v9, v6);
    v24(v11, v6);
    if (v23)
    {
      v25 = v16;
      v26 = *(v35 + OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_tableView);

      v27 = v26;
      while (1)
      {
        v28 = v27;
        v27 = [v27 nextResponder];

        if (!v27)
        {
          break;
        }

        objc_opt_self();
        v29 = swift_dynamicCastObjCClass();
        if (v29)
        {
          v30 = v29;
          goto LABEL_16;
        }
      }

      v30 = 0;
LABEL_16:
      sub_1000FA630(v18, v30);

      v16 = v25;
    }

    else
    {
      v31 = FMFFriend.optedNotToShare.getter();
      if (v31 != 2 && (v31 & 1) == 0)
      {
        sub_1005302F4(v18, v33, v34);
      }
    }

    (*(v16 + 8))(v18, v15);
  }
}

void sub_10052FEF4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for FMFRelationshipType();
  v26 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v25 - v9;
  v11 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  v14 = type metadata accessor for FMFFriend();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v2 + OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_mediator);

  sub_1000BD300(a1, a2, v13);

  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    (*(v15 + 32))(v17, v13, v14);
    FMFFriend.relationshipType.getter();
    static FMFRelationshipType.willFollowMyLocation.getter();
    sub_10000A810(&qword_1006B4070, &type metadata accessor for FMFRelationshipType);
    v22 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v23 = *(v26 + 8);
    v23(v8, v5);
    v23(v10, v5);
    if (v22)
    {

      sub_1000FAB74(v17);
    }

    else
    {
      v24 = FMFFriend.optedNotToShare.getter();
      if (v24 == 2 || (v24 & 1) != 0)
      {
        goto LABEL_12;
      }

      sub_1000FAEC0(v17);
    }

LABEL_12:
    (*(v15 + 8))(v17, v14);
    return;
  }

  sub_100012DF0(v13, &qword_1006B0050);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100005B14(v18, qword_1006D4630);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "FMPeopleListDataSource: Cannot decline action for unknown friend", v21, 2u);
  }
}

void sub_1005302F4(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_tableView);
  v8 = [v7 traitCollection];
  v9 = [v8 horizontalSizeClass];

  v10 = v7;
  while (1)
  {
    v11 = v10;
    v13 = [v10 nextResponder];

    if (!v13)
    {
      break;
    }

    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    v10 = v13;
    if (v12)
    {
      goto LABEL_6;
    }
  }

  v12 = 0;
LABEL_6:
  sub_1000F7A2C(a1, (v9 != 1), v12, 0, a2, a3);
}

UIMenu sub_100530428(uint64_t a1, void *a2)
{
  v58 = a1;
  v59 = a2;
  v61 = &type metadata for SolariumFeatureFlag;
  v62 = sub_10000BD04();
  v2 = isFeatureEnabled(_:)();
  sub_100006060(v60);
  if (v2)
  {
    v3 = [objc_opt_self() mainBundle];
    v64._object = 0x800000010057FAD0;
    v4._countAndFlagsBits = 0xD000000000000028;
    v4._object = 0x800000010057FAA0;
    v64._countAndFlagsBits = 0xD00000000000003ALL;
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    v56 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v64);

    sub_10007EBC0(&unk_1006C3C30);
    v6 = (sub_10007EBC0(&qword_1006B50B8) - 8);
    v7 = *(*v6 + 72);
    v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
    v55 = 2 * v7;
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1005528D0;
    v57 = v9;
    v10 = v9 + v8;
    v11 = (v9 + v8 + v6[14]);
    v54 = v6[18];
    v12 = enum case for FriendshipExpiration.oneHour(_:);
    v13 = type metadata accessor for FriendshipExpiration();
    v14 = *(*(v13 - 8) + 104);
    v14(v10, v12, v13);
    *v11 = 0xD00000000000001BLL;
    v11[1] = 0x8000000100599270;
    v15 = String._bridgeToObjectiveC()();
    v16 = objc_opt_self();
    v17 = [v16 systemImageNamed:v15];

    *(v10 + v54) = v17;
    v18 = v10 + v7;
    v19 = (v10 + v7 + v6[14]);
    v54 = v6[18];
    v14(v10 + v7, enum case for FriendshipExpiration.endOfDay(_:), v13);
    *v19 = 0xD00000000000001DLL;
    v19[1] = 0x80000001005992C0;
    v20 = String._bridgeToObjectiveC()();
    v21 = [v16 _systemImageNamed:v20];

    v22 = v55;
    *(v18 + v54) = v21;
    v23 = v10 + v22;
    v24 = (v10 + v22 + v6[14]);
    v25 = v6[18];
    v14(v10 + v22, enum case for FriendshipExpiration.forever(_:), v13);
    countAndFlagsBits = v56._countAndFlagsBits;
    *v24 = 0xD00000000000001FLL;
    v24[1] = 0x8000000100599310;
    v27 = String._bridgeToObjectiveC()();
    v28 = [v16 systemImageNamed:v27];

    *(v23 + v25) = v28;
  }

  else
  {
    sub_10007EBC0(&unk_1006C3C30);
    v29 = (sub_10007EBC0(&qword_1006B50B8) - 8);
    v30 = *(*v29 + 72);
    v31 = (*(*v29 + 80) + 32) & ~*(*v29 + 80);
    v32 = 2 * v30;
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1005528D0;
    v57 = v33;
    v34 = v33 + v31;
    v35 = (v33 + v31 + v29[14]);
    v36 = v29[18];
    v37 = enum case for FriendshipExpiration.oneHour(_:);
    v38 = type metadata accessor for FriendshipExpiration();
    v39 = *(*(v38 - 8) + 104);
    v39(v34, v37, v38);
    *v35 = 0xD000000000000015;
    v35[1] = 0x800000010057E3B0;
    *(v34 + v36) = 0;
    v40 = v34 + v30;
    v41 = (v34 + v30 + v29[14]);
    v42 = v29[18];
    v39(v40, enum case for FriendshipExpiration.endOfDay(_:), v38);
    *v41 = 0xD000000000000017;
    v41[1] = 0x800000010057E400;
    *(v40 + v42) = 0;
    v43 = v34 + v32;
    v44 = (v43 + v29[14]);
    v45 = v29[18];
    v39(v43, enum case for FriendshipExpiration.forever(_:), v38);
    countAndFlagsBits = 0;
    *v44 = 0xD000000000000019;
    v44[1] = 0x800000010057E450;
    *(v43 + v45) = 0;
    v56._object = 0xE000000000000000;
  }

  v46 = swift_allocObject();
  v47 = swift_unknownObjectWeakInit();
  __chkstk_darwin(v47);
  v52[2] = v46;
  v52[3] = v58;
  v64._object = v59;
  v48 = sub_100190B8C(sub_100535C44, v52, v57);

  if (v48 >> 62)
  {
    sub_10000905C(0, &unk_1006BAA80);

    v49 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_10000905C(0, &unk_1006BAA80);
    v49 = v48;
  }

  sub_10000905C(0, &unk_1006AF720);
  v50._countAndFlagsBits = countAndFlagsBits;
  v50._object = v56._object;
  v63.value.super.isa = 0;
  v63.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v50, 0, v63, 0, 0xFFFFFFFFFFFFFFFFLL, v49, v53);
}

uint64_t sub_100530AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v43 = a2;
  v44 = a4;
  v41 = a3;
  v36[0] = a1;
  v45 = a5;
  v6 = type metadata accessor for FMPeopleCellViewModel();
  v40 = *(v6 - 8);
  v39 = *(v40 + 64);
  __chkstk_darwin(v6 - 8);
  v37 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&qword_1006B50B8);
  v9 = v8 - 8;
  v38 = *(v8 - 8);
  v10 = *(v38 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v36 - v13;
  v42 = sub_10000905C(0, &qword_1006AF730);
  v15 = (a1 + *(v9 + 56));
  v16 = *v15;
  v17 = v15[1];
  v46 = 0;
  v47 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v46 = 0xD000000000000012;
  v47 = 0x800000010057A180;
  v18._countAndFlagsBits = v16;
  v18._object = v17;
  String.append(_:)(v18);
  v19 = v46;
  v20 = v47;
  v21 = [objc_opt_self() mainBundle];
  v48._object = v20;
  v22._countAndFlagsBits = v16;
  v22._object = v17;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v48._countAndFlagsBits = v19;
  v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v48);
  v36[1] = v24._object;
  v36[2] = v24._countAndFlagsBits;

  v25 = v36[0];
  sub_100007204(v36[0], v14, &qword_1006B50B8);

  v26 = v37;
  sub_1000353E4(v41, v37, type metadata accessor for FMPeopleCellViewModel);
  sub_100007204(v25, v12, &qword_1006B50B8);
  v27 = (*(v40 + 80) + 24) & ~*(v40 + 80);
  v28 = (v39 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (*(v38 + 80) + v28 + 8) & ~*(v38 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v43;
  sub_1000356B0(v26, v30 + v27, type metadata accessor for FMPeopleCellViewModel);
  v31 = v44;
  *(v30 + v28) = v44;
  sub_100035318(v12, v30 + v29, &qword_1006B50B8);

  v32 = v31;
  v33 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v34 = type metadata accessor for FriendshipExpiration();
  result = (*(*(v34 - 8) + 8))(v14, v34);
  *v45 = v33;
  return result;
}

uint64_t sub_100530EEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for FMFFriend();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;

    sub_1000BD300(*a3, a3[1], v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {

      return sub_100012DF0(v9, &qword_1006B0050);
    }

    else
    {
      (*(v11 + 32))(v13, v9, v10);
      sub_10052C60C();
      sub_1000F8E3C(v13, a5, 0, 0);
      (*(v11 + 8))(v13, v10);
    }
  }

  return result;
}

uint64_t sub_10053118C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t, uint64_t))
{
  v9 = v5;
  v11 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100005B14(v14, qword_1006D4630);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, a2, v17, 2u);
  }

  v18 = type metadata accessor for FMFFriend();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v13, a1, v18);
  (*(v19 + 56))(v13, 0, 1, v18);
  v20 = swift_allocObject();
  *(v20 + 16) = v9;

  v21 = v9;
  a5(v13, a4, v20);

  return sub_100012DF0(v13, &qword_1006B0050);
}

uint64_t sub_1005313C8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v12 = *(v20 - 8);
  __chkstk_darwin(v20);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v15 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  aBlock[4] = a5;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = a6;
  v17 = _Block_copy(aBlock);
  v18 = a3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A810(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v21 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v20);
}

uint64_t sub_1005316AC(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v4 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v4 - 8);
  v56 = &v49 - v5;
  v6 = type metadata accessor for FMPeopleCellViewModel();
  __chkstk_darwin(v6 - 8);
  v50 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMFFriend();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v53 = v10;
  v54 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v49 - v12;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100005B14(v14, qword_1006D4630);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "FMPeopleListDataSource: Remove button pressed", v17, 2u);
  }

  v55 = v2;
  v2[OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_isRemovingCell] = 1;
  v52 = *(v9 + 16);
  v52(v13, a1, v8);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v49 = a1;
    v22 = v21;
    v57[0] = v21;
    *v20 = 136315138;
    v23 = FMFFriend.debugDescription.getter();
    v25 = v24;
    (*(v9 + 8))(v13, v8);
    v26 = sub_100005B4C(v23, v25, v57);

    *(v20 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "FMPeopleListDataSource: Continue action pressed for person: %s", v20, 0xCu);
    sub_100006060(v22);
    a1 = v49;
  }

  else
  {

    (*(v9 + 8))(v13, v8);
  }

  v27 = OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_cellsViewModel;
  v28 = v55;
  swift_beginAccess();
  v29 = *&v28[v27];

  v30 = a1;
  sub_10052AFE8(a1, v29);
  v32 = v31;
  v34 = v33;

  if ((v34 & 1) == 0)
  {
    swift_beginAccess();
    v35 = v50;
    sub_100250820(v32, v50);
    sub_100035650(v35, type metadata accessor for FMPeopleCellViewModel);
    swift_endAccess();
    v36 = *&v28[OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_tableView];
    [v36 beginUpdates];
    sub_10007EBC0(&qword_1006B0090);
    v37 = type metadata accessor for IndexPath();
    v38 = *(v37 - 8);
    v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_100552220;
    (*(v38 + 16))(v40 + v39, v51, v37);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v36 deleteRowsAtIndexPaths:isa withRowAnimation:2];

    [v36 endUpdates];
  }

  v42 = v56;
  v43 = v52;
  v52(v56, v30, v8);
  (*(v9 + 56))(v42, 0, 1, v8);
  v44 = v54;
  v43(v54, v30, v8);
  v45 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = v28;
  (*(v9 + 32))(v46 + v45, v44, v8);

  v47 = v28;
  sub_1000FD204(v42, sub_100535B24, v46);

  return sub_100012DF0(v42, &qword_1006B0050);
}

uint64_t sub_100531CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a1;
  v42 = a4;
  v43 = type metadata accessor for FMFFriend();
  v5 = *(v43 - 8);
  __chkstk_darwin(v43);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for FMFActionStatus();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();

  v16 = sub_100036858(v15, type metadata accessor for FMPeopleCellViewModel, type metadata accessor for FMPeopleCellViewModel, &off_100626810);

  sub_100036B80(v16);

  *(a3 + OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_isRemovingCell) = 0;
  (*(v12 + 104))(v14, enum case for FMFActionStatus.success(_:), v11);
  sub_10000A810(&qword_1006C3C10, &type metadata accessor for FMFActionStatus);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v12 + 8))(v14, v11);
  if (v45 == v44)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100005B14(v17, qword_1006D4630);
    v18 = v43;
    (*(v5 + 16))(v10, v42, v43);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v45 = v22;
      *v21 = 136315138;
      v23 = FMFFriend.debugDescription.getter();
      v25 = v24;
      (*(v5 + 8))(v10, v18);
      v26 = sub_100005B4C(v23, v25, &v45);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v19, v20, "FMPeopleListDataSource: Remove completed succesfully for person: %s", v21, 0xCu);
      sub_100006060(v22);
    }

    else
    {

      (*(v5 + 8))(v10, v18);
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100005B14(v27, qword_1006D4630);
    v28 = v43;
    (*(v5 + 16))(v7, v42, v43);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v45 = v32;
      *v31 = 136315138;
      v33 = FMFFriend.debugDescription.getter();
      v35 = v34;
      (*(v5 + 8))(v7, v28);
      v36 = sub_100005B4C(v33, v35, &v45);

      *(v31 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v29, v30, "FMPeopleListDataSource: Remove failed for person: %s", v31, 0xCu);
      sub_100006060(v32);
    }

    else
    {

      (*(v5 + 8))(v7, v28);
    }
  }

  v37 = a3 + OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v39 = *(v37 + 8);
    ObjectType = swift_getObjectType();
    (*(v39 + 8))(a3, &off_100644F70, ObjectType, v39);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1005322B8(unint64_t a1)
{
  v2 = v1;
  v4 = sub_10007EBC0(&unk_1006BC950);
  __chkstk_darwin(v4 - 8);
  v6 = &v48 - v5;
  v7 = sub_10007EBC0(&unk_1006B0010);
  __chkstk_darwin(v7 - 8);
  v9 = &v48 - v8;
  v10 = sub_10007EBC0(&unk_1006BC960);
  __chkstk_darwin(v10 - 8);
  v12 = &v48 - v11;
  v13 = sub_10007EBC0(&qword_1006B0040);
  __chkstk_darwin(v13 - 8);
  v15 = &v48 - v14;
  v16 = type metadata accessor for FMFLocationAlert();
  v58 = *(v16 - 8);
  v59 = v16;
  v17 = __chkstk_darwin(v16);
  v54 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v48 - v20;
  v22 = __chkstk_darwin(v19);
  v53 = &v48 - v23;
  __chkstk_darwin(v22);
  v55 = &v48 - v24;
  if (qword_1006AEBE0 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v25 = type metadata accessor for Logger();
    sub_100005B14(v25, qword_1006D4630);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "FMPeopleListDataSource: handleAllowFenceRequest()", v28, 2u);
    }

    v29 = *(a1 + 16);
    v57 = *(a1 + 24);
    v30 = *(v2 + OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_mediator);

    v2 = dispatch thunk of FMFManager.locationAlerts.getter();

    if (!v2)
    {
      return result;
    }

    v52 = v15;
    v15 = *(v2 + 16);
    if (!v15)
    {
    }

    v48 = v30;
    v49 = v12;
    v50 = v9;
    v51 = v6;
    v9 = 0;
    a1 = v2 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
    v12 = (v58 + 16);
    v56 = (v58 + 8);
    while (v9 < *(v2 + 16))
    {
      v6 = *(v58 + 16);
      (v6)(v21, a1 + *(v58 + 72) * v9, v59);
      v33 = FMFLocationAlert.identifier.getter();
      if (v34)
      {
        if (v33 == v29 && v34 == v57)
        {

LABEL_18:

          v35 = v59;
          v37 = v58 + 32;
          v36 = *(v58 + 32);
          v38 = v53;
          v36(v53, v21, v59);
          v39 = v55;
          v36(v55, v38, v35);
          (v6)(v54, v39, v35);
          v40 = type metadata accessor for FMFAddress();
          (*(*(v40 - 8) + 56))(v52, 1, 1, v40);
          v41 = type metadata accessor for FMFLocationAlertTriggerType();
          (*(*(v41 - 8) + 56))(v49, 1, 1, v41);
          v42 = type metadata accessor for FMFSchedule();
          (*(*(v42 - 8) + 56))(v50, 1, 1, v42);
          v43 = enum case for FMFLocationAlertAcceptanceStatus.accepted(_:);
          v44 = type metadata accessor for FMFLocationAlertAcceptanceStatus();
          v45 = *(v44 - 8);
          v46 = v51;
          (*(v45 + 104))(v51, v43, v44);
          (*(v45 + 56))(v46, 0, 1, v44);
          type metadata accessor for FMFUpdateLocationAlertAction();
          swift_allocObject();
          v47 = FMFUpdateLocationAlertAction.init(locationAlert:location:radius:address:label:triggerType:isOn:repeating:phoneNumbers:emails:schedule:ckRecordName:ckRecordZoneOwnerName:acceptanceStatus:)();

          sub_1000FB600(v47, sub_10053299C, 0);

          return (*(v37 - 24))(v55, v35);
        }

        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v32)
        {
          goto LABEL_18;
        }
      }

      ++v9;
      (*v56)(v21, v59);
      if (v15 == v9)
      {
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }
}

uint64_t sub_1005329A8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMFLocationAlert();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v33 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = (&v33 - v12);
  __chkstk_darwin(v11);
  v15 = &v33 - v14;
  if (qword_1006AEBE0 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v16 = type metadata accessor for Logger();
    sub_100005B14(v16, qword_1006D4630);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "FMPeopleListDataSource: handleDeclineFenceRequest()", v19, 2u);
    }

    v20 = *(a1 + 16);
    v37 = *(a1 + 24);
    v21 = *(v2 + OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_mediator);

    v2 = dispatch thunk of FMFManager.locationAlerts.getter();

    if (!v2)
    {
      return result;
    }

    v36 = v21;
    v23 = *(v2 + 16);
    if (!v23)
    {
    }

    v33 = v13;
    v34 = v7;
    v35 = v15;
    v15 = 0;
    v7 = (v2 + ((*(v39 + 80) + 32) & ~*(v39 + 80)));
    v38 = v39 + 16;
    v13 = (v39 + 8);
    while (v15 < *(v2 + 16))
    {
      a1 = *(v39 + 16);
      (a1)(v10, &v7[*(v39 + 72) * v15], v40);
      v25 = FMFLocationAlert.identifier.getter();
      if (v26)
      {
        if (v25 == v20 && v26 == v37)
        {

LABEL_18:

          v27 = v40;
          v29 = v39 + 32;
          v28 = *(v39 + 32);
          v30 = v33;
          v28(v33, v10, v40);
          v31 = v35;
          v28(v35, v30, v27);
          (a1)(v34, v31, v27);
          type metadata accessor for FMFRemoveLocationAlertAction();
          swift_allocObject();
          v32 = FMFRemoveLocationAlertAction.init(locationAlert:)();

          sub_1000FB600(v32, sub_100532DC8, 0);

          return (*(v29 - 24))(v31, v27);
        }

        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v24)
        {
          goto LABEL_18;
        }
      }

      ++v15;
      (*v13)(v10, v40);
      if (v23 == v15)
      {
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }
}

void sub_100532DD4(uint64_t a1, uint64_t a2, const char *a3)
{
  v6 = type metadata accessor for FMFActionStatus();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005B14(v10, qword_1006D4630);
  (*(v7 + 16))(v9, a1, v6);
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = a3;
    v22 = 0;
    *v13 = 136315394;
    v23 = 0xE000000000000000;
    v24 = v14;
    _print_unlocked<A, B>(_:_:)();
    v15 = v22;
    v16 = v23;
    (*(v7 + 8))(v9, v6);
    v17 = sub_100005B4C(v15, v16, &v24);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v22 = a2;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570);
    v18 = String.init<A>(describing:)();
    v20 = sub_100005B4C(v18, v19, &v24);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, v21, v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }
}

id sub_1005330C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPeopleListDataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100533120()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_listSubtitle);

  return v1;
}

uint64_t sub_10053315C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1005331F8(unint64_t a1, unint64_t a2)
{
  sub_10000905C(0, &qword_1006BA820);
  if (a2 >> 62)
  {
    v4 = _CocoaArrayWrapper.subscript.getter();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v4;
    }

LABEL_10:
    _StringGuts.grow(_:)(85);
    v6 = 0xD000000000000046;
    v5 = 0x800000010059E820;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v4;
  }

  _StringGuts.grow(_:)(82);
  v5 = 0x800000010059E7D0;
  v6 = 0xD000000000000043;
LABEL_11:
  String.append(_:)(*&v6);
  v8._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x756F662074756220;
  v9._object = 0xEB0000000020646ELL;
  String.append(_:)(v9);
  swift_getObjectType();
  v10._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v10);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1005333D4(int64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v171 = a1;
  v185 = type metadata accessor for FMPeopleCellViewModel();
  v8 = __chkstk_darwin(v185);
  v174 = &v165 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v165 - v11;
  v13 = __chkstk_darwin(v10);
  v187 = (&v165 - v14);
  v15 = __chkstk_darwin(v13);
  v17 = (&v165 - v16);
  v18 = __chkstk_darwin(v15);
  v183 = (&v165 - v19);
  v20 = __chkstk_darwin(v18);
  v22 = (&v165 - v21);
  v23 = __chkstk_darwin(v20);
  v167 = (&v165 - v24);
  result = __chkstk_darwin(v23);
  v166 = (&v165 - v26);
  v27 = a3[1];
  v180 = v28;
  if (v27 < 1)
  {
    v30 = _swiftEmptyArrayStorage;
LABEL_136:
    v29 = *v171;
    if (!*v171)
    {
      goto LABEL_176;
    }

    a4 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v180;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_170;
    }

    result = a4;
LABEL_139:
    v192 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*a3)
      {
        v161 = *(result + 16 * a4);
        v162 = result;
        v163 = *(result + 16 * (a4 - 1) + 40);
        sub_10053420C(*a3 + v17[9] * v161, *a3 + v17[9] * *(result + 16 * (a4 - 1) + 32), *a3 + v17[9] * v163, v29);
        if (v5)
        {
        }

        if (v163 < v161)
        {
          goto LABEL_163;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v162 = sub_10025EFD4(v162);
        }

        if (a4 - 2 >= *(v162 + 2))
        {
          goto LABEL_164;
        }

        v164 = &v162[16 * a4];
        *v164 = v161;
        *(v164 + 1) = v163;
        v192 = v162;
        sub_10025EF48(a4 - 1);
        result = v192;
        a4 = *(v192 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_174;
    }
  }

  v29 = 0;
  v30 = _swiftEmptyArrayStorage;
  v172 = a3;
  v170 = a4;
  v184 = v12;
  v181 = v22;
  while (1)
  {
    v175 = v30;
    if (v29 + 1 >= v27)
    {
      v70 = v29 + 1;
      goto LABEL_46;
    }

    v182 = v27;
    v31 = *a3;
    v32 = v180[9];
    v33 = *a3 + v32 * (v29 + 1);
    v186 = type metadata accessor for FMPeopleCellViewModel;
    v34 = v166;
    sub_1000353E4(v33, v166, type metadata accessor for FMPeopleCellViewModel);
    v178 = v31;
    v35 = v31 + v32 * v29;
    v36 = v29;
    v37 = v167;
    sub_1000353E4(v35, v167, v186);
    LODWORD(v179) = sub_10052D1C0(v34, v37);
    if (v5)
    {
      sub_100035650(v37, type metadata accessor for FMPeopleCellViewModel);
      sub_100035650(v34, type metadata accessor for FMPeopleCellViewModel);
    }

    v169 = 0;
    sub_100035650(v37, type metadata accessor for FMPeopleCellViewModel);
    result = sub_100035650(v34, type metadata accessor for FMPeopleCellViewModel);
    v168 = v36;
    v38 = v36 + 2;
    v39 = v178 + v32 * (v36 + 2);
    v40 = v185;
    v186 = v32;
    do
    {
      if (v182 == v38)
      {
        v70 = v182;
        goto LABEL_32;
      }

      sub_1000353E4(v39, v22, type metadata accessor for FMPeopleCellViewModel);
      v43 = v183;
      sub_1000353E4(v33, v183, type metadata accessor for FMPeopleCellViewModel);
      v44 = v40[17];
      v45 = *(v22 + v44);
      v46 = *(v43 + v44);
      if (v45 != v46)
      {
        v41 = v45 < v46;
        goto LABEL_8;
      }

      v47 = v40[16];
      v48 = round(*(v22 + v47));
      v49 = v48 > -9.22337204e18;
      if (v48 >= 9.22337204e18)
      {
        v49 = 0;
      }

      if (v49)
      {
        v50 = 30 * (v48 / 30);
      }

      else
      {
        v50 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v51 = round(*(v183 + v47));
      if (v51 > -9.22337204e18 && v51 < 9.22337204e18)
      {
        v53 = 30 * (v51 / 30);
        if (v50 == v53)
        {
LABEL_24:
          v55 = (v22 + v40[6]);
          v56 = v55[1];
          v58 = *v22;
          v57 = v22[1];
          v190 = *v55;
          v191 = v56;

          v59._countAndFlagsBits = v58;
          v59._object = v57;
          String.append(_:)(v59);
          v61 = v190;
          v60 = v191;
          v62 = (v183 + v40[6]);
          v63 = v62[1];
          v64 = *v183;
          v65 = v183[1];
          v190 = *v62;
          v191 = v63;

          v66._countAndFlagsBits = v64;
          v66._object = v65;
          String.append(_:)(v66);
          v67 = v190;
          v68 = v191;
          v190 = v61;
          v191 = v60;
          v22 = v181;
          v188 = v67;
          v189 = v68;
          sub_100035F3C();
          v69 = StringProtocol.caseInsensitiveCompare<A>(_:)();

          v12 = v184;

          v41 = v69 == -1;
          goto LABEL_8;
        }

        if (!v49)
        {
LABEL_27:
          v54 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_28;
        }

        v54 = 30 * (v48 / 30);
      }

      else
      {
        v53 = 0x7FFFFFFFFFFFFFFFLL;
        if (v50 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_24;
        }

        if (!v49)
        {
          goto LABEL_27;
        }

        v54 = 30 * (v48 / 30);
        v53 = 0x7FFFFFFFFFFFFFFFLL;
      }

LABEL_28:
      v41 = v54 < v53;
LABEL_8:
      sub_100035650(v183, type metadata accessor for FMPeopleCellViewModel);
      result = sub_100035650(v22, type metadata accessor for FMPeopleCellViewModel);
      v42 = v179 ^ v41;
      ++v38;
      v32 = v186;
      v39 += v186;
      v33 += v186;
    }

    while ((v42 & 1) == 0);
    v70 = v38 - 1;
LABEL_32:
    v5 = v169;
    a3 = v172;
    a4 = v170;
    v29 = v168;
    if (v179)
    {
      if (v70 >= v168)
      {
        if (v168 < v70)
        {
          v71 = v32 * (v70 - 1);
          v72 = v70 * v32;
          v182 = v70;
          v73 = v168;
          v74 = v168 * v32;
          do
          {
            if (v73 != --v70)
            {
              v75 = *v172;
              if (!*v172)
              {
                goto LABEL_173;
              }

              sub_1000356B0(v75 + v74, v174, type metadata accessor for FMPeopleCellViewModel);
              if (v74 < v71 || v75 + v74 >= (v75 + v72))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v74 != v71)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1000356B0(v174, v75 + v71, type metadata accessor for FMPeopleCellViewModel);
              v22 = v181;
              v32 = v186;
            }

            ++v73;
            v71 -= v32;
            v72 -= v32;
            v74 += v32;
          }

          while (v73 < v70);
          v5 = v169;
          a3 = v172;
          a4 = v170;
          v12 = v184;
          v29 = v168;
          v70 = v182;
        }

        goto LABEL_46;
      }

LABEL_169:
      __break(1u);
LABEL_170:
      result = sub_10025EFD4(a4);
      goto LABEL_139;
    }

LABEL_46:
    v76 = a3[1];
    if (v70 < v76)
    {
      if (__OFSUB__(v70, v29))
      {
        goto LABEL_166;
      }

      if (v70 - v29 < a4)
      {
        if (__OFADD__(v29, a4))
        {
          goto LABEL_167;
        }

        if ((v29 + a4) < v76)
        {
          v76 = v29 + a4;
        }

        if (v76 < v29)
        {
LABEL_168:
          __break(1u);
          goto LABEL_169;
        }

        v176 = v76;
        if (v70 != v76)
        {
          break;
        }
      }
    }

LABEL_83:
    if (v70 < v29)
    {
      goto LABEL_165;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v30 = v175;
    }

    else
    {
      result = sub_10008B8B8(0, *(v175 + 2) + 1, 1, v175);
      v30 = result;
    }

    a4 = *(v30 + 2);
    v114 = *(v30 + 3);
    v115 = a4 + 1;
    if (a4 >= v114 >> 1)
    {
      result = sub_10008B8B8((v114 > 1), a4 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 2) = v115;
    v116 = &v30[16 * a4];
    *(v116 + 4) = v29;
    *(v116 + 5) = v70;
    v29 = *v171;
    if (!*v171)
    {
      goto LABEL_175;
    }

    v176 = v70;
    if (a4)
    {
      while (1)
      {
        v117 = v115 - 1;
        if (v115 >= 4)
        {
          break;
        }

        if (v115 == 3)
        {
          v118 = *(v30 + 4);
          v119 = *(v30 + 5);
          v128 = __OFSUB__(v119, v118);
          v120 = v119 - v118;
          v121 = v128;
LABEL_103:
          if (v121)
          {
            goto LABEL_154;
          }

          v134 = &v30[16 * v115];
          v136 = *v134;
          v135 = *(v134 + 1);
          v137 = __OFSUB__(v135, v136);
          v138 = v135 - v136;
          v139 = v137;
          if (v137)
          {
            goto LABEL_157;
          }

          v140 = &v30[16 * v117 + 32];
          v142 = *v140;
          v141 = *(v140 + 1);
          v128 = __OFSUB__(v141, v142);
          v143 = v141 - v142;
          if (v128)
          {
            goto LABEL_160;
          }

          if (__OFADD__(v138, v143))
          {
            goto LABEL_161;
          }

          if (v138 + v143 >= v120)
          {
            if (v120 < v143)
            {
              v117 = v115 - 2;
            }

            goto LABEL_124;
          }

          goto LABEL_117;
        }

        v144 = &v30[16 * v115];
        v146 = *v144;
        v145 = *(v144 + 1);
        v128 = __OFSUB__(v145, v146);
        v138 = v145 - v146;
        v139 = v128;
LABEL_117:
        if (v139)
        {
          goto LABEL_156;
        }

        v147 = &v30[16 * v117];
        v149 = *(v147 + 4);
        v148 = *(v147 + 5);
        v128 = __OFSUB__(v148, v149);
        v150 = v148 - v149;
        if (v128)
        {
          goto LABEL_159;
        }

        if (v150 < v138)
        {
          goto LABEL_3;
        }

LABEL_124:
        a4 = v117 - 1;
        if (v117 - 1 >= v115)
        {
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
          goto LABEL_168;
        }

        if (!*a3)
        {
          goto LABEL_172;
        }

        v155 = v30;
        v156 = *&v30[16 * a4 + 32];
        v157 = *&v30[16 * v117 + 40];
        sub_10053420C(*a3 + v180[9] * v156, *a3 + v180[9] * *&v30[16 * v117 + 32], *a3 + v180[9] * v157, v29);
        if (v5)
        {
        }

        if (v157 < v156)
        {
          goto LABEL_150;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v158 = v155;
        }

        else
        {
          v158 = sub_10025EFD4(v155);
        }

        v22 = v181;
        if (a4 >= *(v158 + 2))
        {
          goto LABEL_151;
        }

        v159 = &v158[16 * a4];
        *(v159 + 4) = v156;
        *(v159 + 5) = v157;
        v192 = v158;
        result = sub_10025EF48(v117);
        v30 = v192;
        v115 = *(v192 + 16);
        v12 = v184;
        if (v115 <= 1)
        {
          goto LABEL_3;
        }
      }

      v122 = &v30[16 * v115 + 32];
      v123 = *(v122 - 64);
      v124 = *(v122 - 56);
      v128 = __OFSUB__(v124, v123);
      v125 = v124 - v123;
      if (v128)
      {
        goto LABEL_152;
      }

      v127 = *(v122 - 48);
      v126 = *(v122 - 40);
      v128 = __OFSUB__(v126, v127);
      v120 = v126 - v127;
      v121 = v128;
      if (v128)
      {
        goto LABEL_153;
      }

      v129 = &v30[16 * v115];
      v131 = *v129;
      v130 = *(v129 + 1);
      v128 = __OFSUB__(v130, v131);
      v132 = v130 - v131;
      if (v128)
      {
        goto LABEL_155;
      }

      v128 = __OFADD__(v120, v132);
      v133 = v120 + v132;
      if (v128)
      {
        goto LABEL_158;
      }

      if (v133 >= v125)
      {
        v151 = &v30[16 * v117 + 32];
        v153 = *v151;
        v152 = *(v151 + 1);
        v128 = __OFSUB__(v152, v153);
        v154 = v152 - v153;
        if (v128)
        {
          goto LABEL_162;
        }

        if (v120 < v154)
        {
          v117 = v115 - 2;
        }

        goto LABEL_124;
      }

      goto LABEL_103;
    }

LABEL_3:
    v27 = a3[1];
    v29 = v176;
    a4 = v170;
    if (v176 >= v27)
    {
      goto LABEL_136;
    }
  }

  v169 = v5;
  v77 = *a3;
  v78 = v180[9];
  v79 = *a3 + v78 * (v70 - 1);
  v80 = -v78;
  v168 = v29;
  v81 = v29 - v70;
  v186 = v77;
  v173 = v78;
  v82 = v77 + v70 * v78;
  v83 = v185;
  while (2)
  {
    v182 = v70;
    v177 = v82;
    v178 = v81;
    v179 = v79;
    v84 = v79;
LABEL_57:
    sub_1000353E4(v82, v17, type metadata accessor for FMPeopleCellViewModel);
    v85 = v187;
    sub_1000353E4(v84, v187, type metadata accessor for FMPeopleCellViewModel);
    v86 = v83[17];
    v87 = *(v17 + v86);
    v88 = *(v85 + v86);
    if (v87 == v88)
    {
      v89 = v83[16];
      v90 = round(*(v17 + v89));
      v91 = v90 > -9.22337204e18;
      if (v90 >= 9.22337204e18)
      {
        v91 = 0;
      }

      if (v91)
      {
        v92 = 30 * (v90 / 30);
      }

      else
      {
        v92 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v94 = round(*(v187 + v89));
      if (v94 > -9.22337204e18 && v94 < 9.22337204e18)
      {
        v96 = 30 * (v94 / 30);
        if (v92 == v96)
        {
          goto LABEL_72;
        }

        if (!v91)
        {
          goto LABEL_75;
        }

        v97 = 30 * (v90 / 30);
LABEL_76:
        v93 = v97 < v96;
      }

      else
      {
        v96 = 0x7FFFFFFFFFFFFFFFLL;
        if (v92 != 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v91)
          {
            v97 = 30 * (v90 / 30);
            v96 = 0x7FFFFFFFFFFFFFFFLL;
            goto LABEL_76;
          }

LABEL_75:
          v97 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_76;
        }

LABEL_72:
        v98 = (v17 + v83[6]);
        v99 = v98[1];
        v101 = *v17;
        v100 = v17[1];
        v190 = *v98;
        v191 = v99;

        v102._countAndFlagsBits = v101;
        v102._object = v100;
        String.append(_:)(v102);
        v104 = v190;
        v103 = v191;
        v105 = (v187 + *(v185 + 24));
        v106 = v105[1];
        v107 = *v187;
        v108 = v187[1];
        v190 = *v105;
        v191 = v106;

        v109._countAndFlagsBits = v107;
        v109._object = v108;
        String.append(_:)(v109);
        v110 = v190;
        v111 = v191;
        v190 = v104;
        v191 = v103;
        v83 = v185;
        v188 = v110;
        v189 = v111;
        sub_100035F3C();
        v112 = StringProtocol.caseInsensitiveCompare<A>(_:)();

        v12 = v184;

        v93 = v112 == -1;
      }
    }

    else
    {
      v93 = v87 < v88;
    }

    a4 = type metadata accessor for FMPeopleCellViewModel;
    sub_100035650(v187, type metadata accessor for FMPeopleCellViewModel);
    result = sub_100035650(v17, type metadata accessor for FMPeopleCellViewModel);
    if (!v93)
    {
      goto LABEL_55;
    }

    if (v186)
    {
      a4 = type metadata accessor for FMPeopleCellViewModel;
      sub_1000356B0(v82, v12, type metadata accessor for FMPeopleCellViewModel);
      swift_arrayInitWithTakeFrontToBack();
      sub_1000356B0(v12, v84, type metadata accessor for FMPeopleCellViewModel);
      v84 += v80;
      v82 += v80;
      if (__CFADD__(v81++, 1))
      {
LABEL_55:
        v70 = v182 + 1;
        v79 = v179 + v173;
        v81 = v178 - 1;
        v82 = v177 + v173;
        if (v182 + 1 == v176)
        {
          v5 = v169;
          a3 = v172;
          v70 = v176;
          v22 = v181;
          v29 = v168;
          goto LABEL_83;
        }

        continue;
      }

      goto LABEL_57;
    }

    break;
  }

  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
  return result;
}

uint64_t sub_10053420C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v64 = type metadata accessor for FMPeopleCellViewModel();
  v9 = __chkstk_darwin(v64);
  v10 = __chkstk_darwin(v9);
  v12 = &v53 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = (&v53 - v14);
  result = __chkstk_darwin(v13);
  v19 = (&v53 - v18);
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_64;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_65;
  }

  v23 = (a2 - a1) / v21;
  v67 = a1;
  v66 = a4;
  v63 = v21;
  if (v23 >= v22 / v21)
  {
    v26 = v22 / v21 * v21;
    v59 = v17;
    if (a4 < a2 || a2 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v27 = v12;
    }

    else
    {
      v27 = v12;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v36 = a4 + v26;
    v37 = v4;
    if (v26 >= 1)
    {
      v38 = -v63;
      v39 = a4 + v26;
      v56 = a4;
      v57 = a1;
      v55 = -v63;
      do
      {
        v53 = v36;
        v40 = a2 + v38;
        v58 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v67 = a2;
            v65 = v53;
            goto LABEL_62;
          }

          v62 = a3;
          v63 = v39;
          v54 = v36;
          v61 = (v39 + v38);
          sub_1000353E4(v39 + v38, v27, type metadata accessor for FMPeopleCellViewModel);
          v43 = v27;
          v44 = v59;
          sub_1000353E4(v40, v59, type metadata accessor for FMPeopleCellViewModel);
          v45 = sub_10052D1C0(v43, v44);
          if (v37)
          {
            sub_100035650(v44, type metadata accessor for FMPeopleCellViewModel);
            sub_100035650(v43, type metadata accessor for FMPeopleCellViewModel);
            v67 = v58;
            v65 = v54;
            goto LABEL_62;
          }

          v46 = v45;
          v60 = 0;
          v47 = v40;
          v48 = v62;
          v49 = v62 + v38;
          sub_100035650(v44, type metadata accessor for FMPeopleCellViewModel);
          sub_100035650(v43, type metadata accessor for FMPeopleCellViewModel);
          v27 = v43;
          if (v46)
          {
            break;
          }

          v50 = v61;
          v36 = v61;
          a3 = v48 + v38;
          if (v48 < v63 || v49 >= v63)
          {
            v41 = v61;
            swift_arrayInitWithTakeFrontToBack();
            v36 = v41;
            v40 = v47;
            v37 = v60;
          }

          else
          {
            v51 = v48 == v63;
            v40 = v47;
            v37 = v60;
            if (!v51)
            {
              v52 = v61;
              swift_arrayInitWithTakeBackToFront();
              v36 = v52;
            }
          }

          v39 = v36;
          a1 = v57;
          v42 = v50 > v56;
          v38 = v55;
          a2 = v58;
          if (!v42)
          {
            goto LABEL_58;
          }
        }

        a3 = v48 + v38;
        if (v48 < v58 || v49 >= v58)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          v37 = v60;
          v38 = v55;
        }

        else
        {
          a2 = v47;
          v37 = v60;
          v38 = v55;
          if (v48 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v57;
        v39 = v63;
        v36 = v54;
      }

      while (v63 > v56);
    }

LABEL_58:
    v67 = a2;
    v65 = v36;
  }

  else
  {
    v24 = v23 * v21;
    if (a4 < a1 || a1 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v25 = v4;
    }

    else
    {
      v25 = v4;
      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v62 = a4 + v24;
    v65 = a4 + v24;
    if (v24 >= 1 && a2 < a3)
    {
      v29 = v63;
      v60 = v19;
      v61 = v15;
      while (1)
      {
        v30 = a3;
        sub_1000353E4(a2, v19, type metadata accessor for FMPeopleCellViewModel);
        sub_1000353E4(a4, v15, type metadata accessor for FMPeopleCellViewModel);
        v31 = sub_10052D1C0(v19, v15);
        if (v25)
        {
          break;
        }

        v32 = v31;
        v33 = v15;
        v34 = a4;
        sub_100035650(v33, type metadata accessor for FMPeopleCellViewModel);
        sub_100035650(v19, type metadata accessor for FMPeopleCellViewModel);
        if (v32)
        {
          v35 = a2 + v29;
          if (a1 < a2 || a1 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v35;
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v35;
          }
        }

        else
        {
          a4 += v29;
          if (a1 < v34 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v66 = v34 + v29;
        }

        v15 = v61;
        v29 = v63;
        a1 += v63;
        v67 = a1;
        v19 = v60;
        if (a4 >= v62 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      sub_100035650(v15, type metadata accessor for FMPeopleCellViewModel);
      sub_100035650(v19, type metadata accessor for FMPeopleCellViewModel);
    }
  }

LABEL_62:
  sub_10025F108(&v67, &v66, &v65);
  return 1;
}

uint64_t sub_10053483C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v5 = *(v17 - 8);
  __chkstk_darwin(v17);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005B14(v8, qword_1006D4630);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMPeopleListDataSource: didInitialize", v11, 2u);
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  aBlock[4] = sub_100535B04;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100645318;
  v14 = _Block_copy(aBlock);
  v15 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A810(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v18 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v17);
}

uint64_t sub_100534BE4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v7 = *(v19 - 8);
  __chkstk_darwin(v19);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005B14(v10, qword_1006D4630);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v11, v12, "FMPeopleListDataSource: didUpdate %ld locationAlerts", v13, 0xCu);
  }

  else
  {
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = a1;
  aBlock[4] = sub_100535ADC;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100645278;
  v16 = _Block_copy(aBlock);

  v17 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A810(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v20 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v19);
}

uint64_t sub_100534FC8(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v7 = *(v19 - 8);
  __chkstk_darwin(v19);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005B14(v10, qword_1006D4630);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v11, v12, "FMPeopleListDataSource: didUpdate friendsOperationsRestricted %{BOOL}d", v13, 8u);
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  aBlock[4] = sub_100535A74;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100645160;
  v16 = _Block_copy(aBlock);
  v17 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A810(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v20 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v19);
}

uint64_t sub_100535384(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v3 - 8);
  __chkstk_darwin(v3);
  v34 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DispatchQoS();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FMFFriend();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100005B14(v11, qword_1006D4630);
  (*(v8 + 16))(v10, a2, v7);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30 = v3;
    v16 = v15;
    aBlock[0] = v15;
    *v14 = 136315138;
    v17 = FMFFriend.debugDescription.getter();
    v19 = v18;
    (*(v8 + 8))(v10, v7);
    v20 = sub_100005B4C(v17, v19, aBlock);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "FMPeopleListDataSource: didUpdate image for %s", v14, 0xCu);
    sub_100006060(v16);
    v3 = v30;
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v21 = static OS_dispatch_queue.main.getter();
  v22 = swift_allocObject();
  v24 = v31;
  v23 = v32;
  *(v22 + 16) = v31;
  *(v22 + 24) = v23;
  aBlock[4] = sub_100535A7C;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006451B0;
  v25 = _Block_copy(aBlock);
  v26 = v24;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A810(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  v27 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  (*(v36 + 8))(v27, v3);
  return (*(v33 + 8))(v6, v35);
}

void sub_100535888()
{
  v1 = v0;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    sub_10007EBC0(&unk_1006BBCC0);
    v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
    *(v5 + 4) = v7;
    v6->super.isa = v7.super.isa;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMPeopleListDataSource: itemAger itemsDidAge %@", v5, 0xCu);
    sub_100012DF0(v6, &unk_1006AF760);
  }

  v8 = *(v1 + OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_mediator);

  v9 = dispatch thunk of FMFManager.friends.getter();

  v10 = *(*(v8 + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
  v11 = v10;
  sub_10002C9BC(v9, v10, 0, 0);
}

uint64_t sub_100535A8C(void (*a1)(void))
{
  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_100535B24(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for FMFFriend() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_100531CF0(a1, a2, v6, v7);
}

uint64_t sub_100535C68(uint64_t a1)
{
  v3 = *(type metadata accessor for FMPeopleCellViewModel() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_10007EBC0(&qword_1006B50B8) - 8);
  v7 = *(v1 + v5);
  v8 = *(v1 + 16);
  v9 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  return sub_100530EEC(a1, v8, (v1 + v4), v7, v9);
}

uint64_t sub_100535D9C()
{
  v1 = type metadata accessor for FMFFriend();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100535E78(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(unint64_t))
{
  v8 = *(type metadata accessor for FMFFriend() - 8);
  v9 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  a3(1);
  return a5(v5 + v9);
}

uint64_t sub_100535F0C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *(type metadata accessor for FMFFriend() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for IndexPath() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  a3(1);
  return sub_1005316AC(v3 + v6, v3 + v9);
}

unint64_t sub_10053600C()
{
  result = qword_1006C3C58;
  if (!qword_1006C3C58)
  {
    sub_10007EC08(&qword_1006C3C50);
    sub_10000A810(&qword_1006C3C60, &type metadata accessor for PeopleListPersonRow);
    sub_100004098(&qword_1006C3C68, &qword_1006C3C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3C58);
  }

  return result;
}

uint64_t sub_10053613C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&unk_1006C3C80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1005362DC(void *a1)
{
  if ([a1 state] == 1)
  {
    *(*&v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_darkenerBackground] + OBJC_IVAR____TtC6FindMy17FMPassthroughView_enabled) = 0;
    v3 = *&v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_passthroughView];
    if (!v3)
    {
LABEL_13:
      __break(1u);
      return;
    }

    *(v3 + OBJC_IVAR____TtC6FindMy17FMPassthroughView_enabled) = 0;
  }

  if ([a1 state] == 2)
  {
    sub_100536404(a1);
  }

  if ([a1 state] == 3)
  {
    sub_100536A70(a1);
  }

  [a1 setTranslation:*&v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_cardContainer] inView:{0.0, 0.0}];
  v4 = [v1 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = v4;
  [v4 layoutIfNeeded];
}

void sub_100536404(void *a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = [v4 horizontalSizeClass];

  v6 = &OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_compactCardTopConstraint;
  if (v5 != 1)
  {
    v6 = &OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_regularCardTopConstraint;
  }

  v7 = *&v2[*v6];
  if (v7)
  {
    v8 = *&v2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_contentViewController];
    if (v8)
    {
      v68 = &v2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_contentViewController];
      v9 = *&v2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_contentViewController + 8];
      ObjectType = swift_getObjectType();
      v11 = *(v9 + 8);
      v69 = v7;
      v12 = v8;
      v13 = v11(ObjectType, v9);

      if (!v13)
      {
LABEL_29:

        return;
      }

      v14 = 0.0;
      v15 = 0.0;
      if ((v2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_isPanFromScrollView] & 1) == 0)
      {
        v15 = *&v2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_configuration + 24];
      }

      v16 = [v2 traitCollection];
      v17 = [v16 horizontalSizeClass];

      if (v17 == 1)
      {
        v14 = sub_100250C9C();
      }

      [a1 translationInView:*&v2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_cardContainer]];
      v19 = v18;
      [v69 constant];
      v21 = v19 + v20;
      if (v21 > v14 - v15)
      {
        v22 = v21;
      }

      else
      {
        v22 = v14 - v15;
      }

      v23 = [v2 view];
      if (v23)
      {
        v24 = v23;
        [v23 frame];
        v26 = v25;

        v27 = [v2 view];
        if (v27)
        {
          v28 = v27;
          [v27 safeAreaInsets];
          v30 = v29;

          v31 = [v2 view];
          if (v31)
          {
            v32 = v31;
            if (v15 + v26 - v30 >= v22)
            {
              v33 = v22;
            }

            else
            {
              v33 = v15 + v26 - v30;
            }

            [v31 frame];
            v35 = v34;

            sub_1002510B8();
            v37 = v15 + v35 - v36;
            if (v37 >= v33)
            {
              v38 = v33;
            }

            else
            {
              v38 = v37;
            }

            [v13 contentOffset];
            if (v39 < 1.0)
            {
              v40 = [v2 view];
              if (v40)
              {
                v41 = v40;
                v42 = sub_100250C9C();
                v71 = &type metadata for SolariumFeatureFlag;
                v43 = sub_10000BD04();
                v72 = v43;
                v44 = isFeatureEnabled(_:)();
                sub_100006060(v70);
                if (v44)
                {
                  sub_100250DD0();
                  v46 = v45;
                  if (qword_1006AEBA8 != -1)
                  {
                    swift_once();
                  }

                  v47 = *&xmmword_1006D4380;
                }

                else
                {
                  sub_100250F24();
                  v46 = v48;
                  sub_1002510B8();
                  v47 = v49;
                }

                v50 = round((v38 - v42) / (v46 - v47) * 1000.0) / 1000.0;
                v71 = &type metadata for SolariumFeatureFlag;
                v72 = v43;
                v51 = isFeatureEnabled(_:)();
                sub_100006060(v70);
                if ((v51 & (v50 > 1.0)) != 0)
                {
                  v50 = 1.0;
                }

                sub_1000493F8(1, v50);
                v71 = &type metadata for SolariumFeatureFlag;
                v72 = v43;
                v52 = isFeatureEnabled(_:)();
                sub_100006060(v70);
                v53 = 0.64;
                if (v52)
                {
                  v53 = 0.5;
                }

                v54 = v53 - v50;
                if (v54 <= 0.0)
                {
                  v54 = 0.0;
                }

                [*&v2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_darkenerBackground] setAlpha:v54 * *&v2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_configuration]];
                v55 = &v2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_startPosition];
                if (v2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_startPosition + 8])
                {
                  *v55 = v38;
                  *(v55 + 8) = 0;
                }

                else if (vabdd_f64(*v55, v38) > 3.0)
                {
                  v2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_isPanningCard] = 1;
                  v56 = *&v2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_otherGesture];
                  if (v56)
                  {
                    [v56 setEnabled:0];
                  }
                }

                if (v50 <= 1.0)
                {
                  v57 = *v68;
                  if (*v68)
                  {
                    v58 = *(v68 + 1);
                    v59 = swift_getObjectType();
                    v60 = *(v58 + 48);
                    v61 = v57;
                    v60(v59, v58);
                  }
                }

                if ([v13 isScrollEnabled] && v19 > 0.0)
                {
                  [v13 setScrollEnabled:v50 <= 0.005];
                  [v13 setBounces:v50 <= 0.005];
                  if (qword_1006AEBE0 != -1)
                  {
                    swift_once();
                  }

                  v62 = type metadata accessor for Logger();
                  sub_100005B14(v62, qword_1006D4630);
                  v63 = v2;
                  v64 = Logger.logObject.getter();
                  v65 = static os_log_type_t.default.getter();

                  if (os_log_type_enabled(v64, v65))
                  {
                    v66 = swift_slowAlloc();
                    *v66 = 67109376;
                    *(v66 + 4) = v50 <= 0.005;
                    *(v66 + 8) = 2048;
                    sub_1000490B0();
                    *(v66 + 10) = v67;
                    _os_log_impl(&_mh_execute_header, v64, v65, "FMCardContainerViewController: disabling scroll on drag %{BOOL}d, percent: %f", v66, 0x12u);
                  }
                }

                return;
              }

LABEL_59:
              __break(1u);
              return;
            }

            goto LABEL_29;
          }

LABEL_58:
          __break(1u);
          goto LABEL_59;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_58;
    }
  }
}

void sub_100536A70(void *a1)
{
  v2 = v1;
  [a1 velocityInView:*&v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_cardContainer]];
  v4 = v3;
  sub_1000490B0();
  if (v5 > 0.85 || v5 < 0.3)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  if (v5 > 0.3 || v5 < -1.0)
  {
    LOBYTE(v9) = v7;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  v10 = *&v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_passthroughView];
  if (!v10)
  {
    __break(1u);
    return;
  }

  *(v10 + OBJC_IVAR____TtC6FindMy17FMPassthroughView_enabled) = 1;
  v11 = *&v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_contentViewController];
  if (!v11)
  {
    goto LABEL_26;
  }

  v12 = *&v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_contentViewController + 8];
  ObjectType = swift_getObjectType();
  v14 = *(v12 + 8);
  v15 = v11;
  v16 = v14(ObjectType, v12);

  if (!v16)
  {
    goto LABEL_26;
  }

  [v16 contentOffset];
  if (v17 != 0.0)
  {

LABEL_26:
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100005B14(v29, qword_1006D4630);
    oslog = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v30, "FMCardContainerViewController: disabling gesture end because scrollview is not at Zero", v31, 2u);
    }

    v32 = oslog;
    goto LABEL_48;
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100005B14(v18, qword_1006D4630);
  v19 = v2;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134218240;
    sub_1000490B0();
    *(v22 + 4) = v23;
    *(v22 + 12) = 2048;
    *(v22 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v20, v21, "FMCardContainerViewController: grabber didEnd percent: %f, velocity: %f", v22, 0x16u);
  }

  if (sub_10024E338(v9, v19[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent]))
  {
    v24 = *&v19[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_configuration + 8];
    if (v24 >= v4)
    {
      if (v4 >= -v24)
      {
        goto LABEL_37;
      }

      v26 = Logger.logObject.getter();
      v33 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v26, v33))
      {
        v25 = 0x10000;
        goto LABEL_36;
      }

      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v26, v33, "FMCardContainerViewController: next locking percent", v34, 2u);
      v25 = 0x10000;
    }

    else
    {
      v25 = 131585;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v26, v27))
      {
LABEL_36:

        v9 = v25 >> (8 * (v9 & 0x1F));
        goto LABEL_37;
      }

      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "FMCardContainerViewController: previous locking percent", v28, 2u);
    }

    goto LABEL_36;
  }

LABEL_37:
  v35 = *&v19[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_configuration + 16];
  if (v35 < v4)
  {
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v36, v37))
    {
      LOBYTE(v9) = 2;
      goto LABEL_46;
    }

    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "FMCardContainerViewController: locking to bottom", v38, 2u);
    LOBYTE(v9) = 2;
LABEL_43:

LABEL_46:

    goto LABEL_47;
  }

  if (v4 < -v35)
  {
    v36 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v36, v39))
    {
      LOBYTE(v9) = 0;
      goto LABEL_46;
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v36, v39, "FMCardContainerViewController: locking to top", v40, 2u);
    LOBYTE(v9) = 0;
    goto LABEL_43;
  }

LABEL_47:
  sub_10024D538(v9, fabs(v4 / 1000.0));
  *(*&v19[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_darkenerBackground] + OBJC_IVAR____TtC6FindMy17FMPassthroughView_enabled) = 1;
  v19[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_isPanFromScrollView] = 0;
  v19[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_isPanningCard] = 0;
  v41 = OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_otherGesture;
  v42 = *&v19[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_otherGesture];
  [v42 setEnabled:1];

  v43 = &v19[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_startPosition];
  *v43 = 0;
  v43[8] = 1;
  v32 = *&v19[v41];
  *&v19[v41] = 0;
LABEL_48:
}

uint64_t sub_1005370B4(void *a1)
{
  swift_getObjectType();
  sub_10007EBC0(&qword_1006C3CB8);
  if (String.init<A>(describing:)() == 0xD000000000000022 && 0x800000010059E870 == v3)
  {

    goto LABEL_10;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v5)
  {
LABEL_10:
    v16 = *(v1 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_otherGesture);
    *(v1 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_otherGesture) = a1;
    v17 = a1;

    v15 = *(v1 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_isPanningCard) ^ 1;
    return v15 & 1;
  }

  v6 = *(v1 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_contentViewController);
  if (v6 && (v7 = v1, v8 = *(v1 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_contentViewController + 8), ObjectType = swift_getObjectType(), v10 = *(v8 + 8), v11 = v6, v12 = v10(ObjectType, v8), v11, v12))
  {
    *(v7 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_isPanFromScrollView) = 1;
    [v12 contentOffset];
    v14 = v13;

    v15 = v14 <= 0.0;
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_100537244(void *a1)
{
  v11[0] = swift_getObjectType();
  sub_10007EBC0(&qword_1006C3CB8);
  if (String.init<A>(describing:)() == 0xD000000000000022 && 0x800000010059E870 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  result = [a1 view];
  if (result)
  {
    v7 = result;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8 && (v5 & 1) == 0)
    {
      if (*(v1 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent))
      {
        if (*(v1 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent) == 1)
        {
          v11[3] = &type metadata for SolariumFeatureFlag;
          v11[4] = sub_10000BD04();
          isFeatureEnabled(_:)();

          sub_100006060(v11);
        }

        else
        {
        }

        return 1;
      }

      else
      {
        [v8 contentOffset];
        v10 = v9;

        return v10 < 0.0;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void *sub_1005373B4(uint64_t a1)
{
  v6 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_100006004(i, v5);
    sub_10000905C(0, &qword_1006C3CF8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void *sub_1005374C0(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  specialized ContiguousArray.reserveCapacity(_:)();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v6 == i)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    _CocoaArrayWrapper.endIndex.getter();
    specialized ContiguousArray.reserveCapacity(_:)();
  }

  return _swiftEmptyArrayStorage;
}

void *sub_100537628(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  specialized ContiguousArray.reserveCapacity(_:)();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      type metadata accessor for FMFenceMapTableViewCell();
      if (!swift_dynamicCastClass())
      {

        return 0;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v6 == i)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    _CocoaArrayWrapper.endIndex.getter();
    specialized ContiguousArray.reserveCapacity(_:)();
  }

  return _swiftEmptyArrayStorage;
}

id sub_10053778C(uint64_t a1, unint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  v6._countAndFlagsBits = 0xD000000000000023;
  v32._object = 0x80000001005993A0;
  v6._object = 0x8000000100599370;
  v32._countAndFlagsBits = 0xD000000000000035;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v32);

  sub_10007EBC0(&unk_1006B20B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100552220;
  *(v8 + 56) = &type metadata for String;
  v9 = sub_10008EE84();
  *(v8 + 64) = v9;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  String.init(format:_:)();

  LOBYTE(v8) = sub_100477BA0(a1, a2, 0);

  if (v8)
  {
    v10 = [v4 mainBundle];
    v33._object = 0x8000000100599510;
    v11._object = 0x80000001005994E0;
    v33._countAndFlagsBits = 0xD000000000000039;
    v11._countAndFlagsBits = 0xD000000000000027;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v33);
  }

  else
  {
    sub_10000905C(0, &qword_1006B50C0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100552220;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = v9;
    *(v13 + 32) = 0xD000000000000029;
    *(v13 + 40) = 0x8000000100580FB0;
    v14 = NSPredicate.init(format:_:)();
    v15 = String._bridgeToObjectiveC()();
    v16 = [v14 evaluateWithObject:v15];

    if (!v16)
    {

      return 0;
    }

    v17 = [v4 mainBundle];
    v34._object = 0x8000000100599410;
    v18._object = 0x80000001005993E0;
    v34._countAndFlagsBits = 0xD000000000000039;
    v18._countAndFlagsBits = 0xD000000000000027;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v34);

    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100552220;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = v9;
    *(v20 + 32) = a1;
    *(v20 + 40) = a2;

    String.init(format:_:)();
  }

  v21 = String._bridgeToObjectiveC()();

  v22 = String._bridgeToObjectiveC()();

  v23 = [objc_opt_self() alertControllerWithTitle:v21 message:v22 preferredStyle:1];

  if (v23)
  {
    v24 = [v4 mainBundle];
    v35._countAndFlagsBits = 0xD000000000000021;
    v35._object = 0x8000000100579B60;
    v25._countAndFlagsBits = 0x4F545455425F4B4FLL;
    v25._object = 0xEF454C5449545F4ELL;
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v35);

    v27 = String._bridgeToObjectiveC()();

    aBlock[4] = State.rawValue.getter;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100017328;
    aBlock[3] = &unk_1006457A0;
    v28 = _Block_copy(aBlock);

    v29 = [objc_opt_self() actionWithTitle:v27 style:0 handler:v28];
    _Block_release(v28);

    [v23 addAction:v29];
  }

  return v23;
}

void sub_100537CB8(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = sub_10007EBC0(&unk_1006BEF80);
  __chkstk_darwin(v5 - 8);
  v7 = &v34 - v6;
  v8 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  v11 = type metadata accessor for FMFLocationAlertTarget();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16))
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100005B14(v16, qword_1006D4630);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v35 = a3;
      v20 = v19;
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22.super.isa = Array._bridgeToObjectiveC()().super.isa;
      *(v20 + 4) = v22;
      v21->super.isa = v22.super.isa;
      _os_log_impl(&_mh_execute_header, v17, v18, "FMRecipientsViewController: Sending location alerts to %@", v20, 0xCu);
      sub_10022CA58(v21);

      a3 = v35;
    }

    v23 = *&a3[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_mediator];
    (*(v12 + 104))(v15, enum case for FMFLocationAlertTarget.alertFriends(_:), v11);
    v24 = type metadata accessor for FMFFriend();
    (*(*(v24 - 8) + 56))(v10, 1, 1, v24);

    v25 = sub_1005385A8(a2);

    v26 = type metadata accessor for FMFLocationAlert();
    (*(*(v26 - 8) + 56))(v7, 1, 1, v26);
    v27 = objc_allocWithZone(type metadata accessor for FMLocationAlertViewController(0));
    v28 = sub_100098BC0(v23, v15, v10, v25, v7, 1, 1);
    v29 = [a3 navigationController];
    if (v29)
    {
      v30 = v29;
      [v29 pushViewController:v28 animated:1];
    }

    return;
  }

  v31 = *&a3[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView];
  if (!v31)
  {
    __break(1u);
    goto LABEL_15;
  }

  v32 = [v31 textView];
  if (!v32)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v33 = v32;
  [v32 resignFirstResponder];

  [a3 dismissViewControllerAnimated:1 completion:0];
}

id sub_1005381E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMSendLocationAlertViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMSendLocationAlertViewController()
{
  result = qword_1006C3CE8;
  if (!qword_1006C3CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100538270(uint64_t a1)
{
  v2 = type metadata accessor for FMFFriend();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_100538B94(&qword_1006B85B0, &type metadata accessor for FMFFriend);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_100253E7C(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_10053840C(uint64_t a1)
{
  v2 = type metadata accessor for FMIPItem();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_100538B94(&qword_1006B6918, &type metadata accessor for FMIPItem);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_10025415C(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_1005385A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10025457C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100538640(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10007EBC0(&qword_1006B4228);
  sub_100538BDC();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;

      sub_10025443C(&v6, v5);

      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1005386DC(uint64_t a1)
{
  v2 = type metadata accessor for FMIPPlaySoundChannels();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_100538B94(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_1002546CC(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_100538878(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_100538B94(&unk_1006C2410, &type metadata accessor for UUID);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v5, v14, v2);
      sub_100254CD4(v8, v5);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_100538A14()
{
  v1 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView;
  result = *&v0[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  result = [result textView];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v3 = result;
  [result resignFirstResponder];

  v4 = *&v0[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientText + 8];
  if (v4)
  {
    if ((v4 & 0x2000000000000000) != 0 ? HIBYTE(v4) & 0xF : *&v0[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientText] & 0xFFFFFFFFFFFFLL)
    {
      result = sub_100192F0C(0, 0);
      if ((result & 1) == 0)
      {
        return result;
      }
    }
  }

  result = *&v0[v1];
  if (!result)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  result = [result recipients];
  if (result)
  {
    v6 = result;
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = sub_1005373B4(v7);

    if (v8)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = v0;
      v10 = v0;
      v11 = sub_10019A3DC(v8, sub_100538B8C, v9);
    }
  }

  return result;
}

uint64_t sub_100538B94(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100538BDC()
{
  result = qword_1006C3D00;
  if (!qword_1006C3D00)
  {
    sub_10007EC08(&qword_1006B4228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3D00);
  }

  return result;
}

id LocateIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocateIntent();
  return objc_msgSendSuper2(&v2, "init");
}

id Device.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id LocateIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LocateIntent();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id ToggleLocationSharingIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id LocateIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for LocateIntent();
  v6 = objc_msgSendSuper2(&v8, "initWithIdentifier:backingStore:", v5, a3);

  return v6;
}

id ToggleLocationSharingIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = String._bridgeToObjectiveC()();

  v8 = String._bridgeToObjectiveC()();

  if (a5)
  {
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9.super.isa];

  return v10;
}

id LocateIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = String._bridgeToObjectiveC()();

  v8 = String._bridgeToObjectiveC()();

  if (a5)
  {
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for LocateIntent();
  v10 = objc_msgSendSuper2(&v12, "initWithDomain:verb:parametersByName:", v7, v8, v9.super.isa);

  return v10;
}

unint64_t sub_100539260@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100539948(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t LocateIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___LocateIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *LocateIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___LocateIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

char *LocateIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___LocateIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id LocateIntentResponse.init()()
{
  *&v0[OBJC_IVAR___LocateIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocateIntentResponse();
  return objc_msgSendSuper2(&v2, "init");
}

id LocateIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___LocateIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LocateIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id ToggleLocationSharingIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore:a1];

  return v3;
}

id LocateIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___LocateIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LocateIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithBackingStore:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1005396F4(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___LocateIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for LocateIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id ToggleLocationSharingIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName:v2.super.isa];

  return v3;
}

id LocateIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___LocateIntentResponse_code] = 0;
  if (a1)
  {
    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for LocateIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithPropertiesByName:", v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

id sub_100539910(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100539948(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_100539980()
{
  result = qword_1006C3D10;
  if (!qword_1006C3D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3D10);
  }

  return result;
}

id ToggleLocationSharingIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ToggleLocationSharingIntent();
  return objc_msgSendSuper2(&v2, "init");
}

id ToggleLocationSharingIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ToggleLocationSharingIntent();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id ToggleLocationSharingIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for ToggleLocationSharingIntent();
  v6 = objc_msgSendSuper2(&v8, "initWithIdentifier:backingStore:", v5, a3);

  return v6;
}

id ToggleLocationSharingIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = String._bridgeToObjectiveC()();

  v8 = String._bridgeToObjectiveC()();

  if (a5)
  {
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for ToggleLocationSharingIntent();
  v10 = objc_msgSendSuper2(&v12, "initWithDomain:verb:parametersByName:", v7, v8, v9.super.isa);

  return v10;
}

uint64_t ToggleLocationSharingIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___ToggleLocationSharingIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *ToggleLocationSharingIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___ToggleLocationSharingIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

char *ToggleLocationSharingIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___ToggleLocationSharingIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

char *sub_10053A150(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(type metadata accessor for ToggleLocationSharingIntentResponse()) init];
  v5 = OBJC_IVAR___ToggleLocationSharingIntentResponse_code;
  swift_beginAccess();
  *&v4[v5] = a2;
  [v4 setUserActivity:0];
  [v4 setState:a1];
  return v4;
}

char *sub_10053A1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_allocWithZone(type metadata accessor for ToggleLocationSharingIntentResponse()) init];
  v7 = OBJC_IVAR___ToggleLocationSharingIntentResponse_code;
  swift_beginAccess();
  *&v6[v7] = a4;
  [v6 setUserActivity:0];
  [v6 setState:a3];

  return v6;
}

id ToggleLocationSharingIntentResponse.init()()
{
  *&v0[OBJC_IVAR___ToggleLocationSharingIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ToggleLocationSharingIntentResponse();
  return objc_msgSendSuper2(&v2, "init");
}

id ToggleLocationSharingIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___ToggleLocationSharingIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ToggleLocationSharingIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id ToggleLocationSharingIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___ToggleLocationSharingIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ToggleLocationSharingIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithBackingStore:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_10053A41C(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___ToggleLocationSharingIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for ToggleLocationSharingIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id ToggleLocationSharingIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___ToggleLocationSharingIntentResponse_code] = 0;
  if (a1)
  {
    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for ToggleLocationSharingIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithPropertiesByName:", v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

id sub_10053A5B4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10053A614()
{
  result = qword_1006C3D70;
  if (!qword_1006C3D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3D70);
  }

  return result;
}

id LocateDeviceIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocateDeviceIntent();
  return objc_msgSendSuper2(&v2, "init");
}

id LocateDeviceIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LocateDeviceIntent();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id LocateDeviceIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for LocateDeviceIntent();
  v6 = objc_msgSendSuper2(&v8, "initWithIdentifier:backingStore:", v5, a3);

  return v6;
}

id LocateDeviceIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = String._bridgeToObjectiveC()();

  v8 = String._bridgeToObjectiveC()();

  if (a5)
  {
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for LocateDeviceIntent();
  v10 = objc_msgSendSuper2(&v12, "initWithDomain:verb:parametersByName:", v7, v8, v9.super.isa);

  return v10;
}

uint64_t LocateDeviceIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___LocateDeviceIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *LocateDeviceIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___LocateDeviceIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

char *LocateDeviceIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___LocateDeviceIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id LocateDeviceIntentResponse.init()()
{
  *&v0[OBJC_IVAR___LocateDeviceIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocateDeviceIntentResponse();
  return objc_msgSendSuper2(&v2, "init");
}

id LocateDeviceIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___LocateDeviceIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LocateDeviceIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id LocateDeviceIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___LocateDeviceIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LocateDeviceIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithBackingStore:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_10053AF08(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___LocateDeviceIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for LocateDeviceIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id LocateDeviceIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___LocateDeviceIntentResponse_code] = 0;
  if (a1)
  {
    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for LocateDeviceIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithPropertiesByName:", v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

id sub_10053B0A0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10053B100()
{
  result = qword_1006C3DD0;
  if (!qword_1006C3DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3DD0);
  }

  return result;
}

id PlaySoundIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaySoundIntent();
  return objc_msgSendSuper2(&v2, "init");
}

id PlaySoundIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PlaySoundIntent();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id PlaySoundIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for PlaySoundIntent();
  v6 = objc_msgSendSuper2(&v8, "initWithIdentifier:backingStore:", v5, a3);

  return v6;
}

id PlaySoundIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = String._bridgeToObjectiveC()();

  v8 = String._bridgeToObjectiveC()();

  if (a5)
  {
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for PlaySoundIntent();
  v10 = objc_msgSendSuper2(&v12, "initWithDomain:verb:parametersByName:", v7, v8, v9.super.isa);

  return v10;
}

uint64_t PlaySoundIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___PlaySoundIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *PlaySoundIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___PlaySoundIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

char *PlaySoundIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___PlaySoundIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id PlaySoundIntentResponse.init()()
{
  *&v0[OBJC_IVAR___PlaySoundIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaySoundIntentResponse();
  return objc_msgSendSuper2(&v2, "init");
}

id PlaySoundIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___PlaySoundIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PlaySoundIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id PlaySoundIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___PlaySoundIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PlaySoundIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithBackingStore:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_10053B9F4(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___PlaySoundIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for PlaySoundIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id PlaySoundIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___PlaySoundIntentResponse_code] = 0;
  if (a1)
  {
    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for PlaySoundIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithPropertiesByName:", v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

id sub_10053BB8C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10053BBEC()
{
  result = qword_1006C3E30;
  if (!qword_1006C3E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3E30);
  }

  return result;
}

unint64_t State.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_10053BC60@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id static PlaySoundDeviceClassResolutionResult.success(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() successWithResolvedValue:a1];

  return v1;
}

id static PlaySoundDeviceClassResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm:a1];

  return v1;
}

id PlaySoundDeviceClassResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id StateResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for StateResolutionResult();
  v5 = objc_msgSendSuper2(&v7, "initWithJSONDictionary:forIntent:", isa, a2);

  if (v5)
  {
  }

  return v5;
}

id StateResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateResolutionResult();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10053C000()
{
  result = qword_1006C3E88;
  if (!qword_1006C3E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3E88);
  }

  return result;
}

unint64_t sub_10053C080@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10053C2E8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id LocateDeviceClassResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for LocateDeviceClassResolutionResult();
  v5 = objc_msgSendSuper2(&v7, "initWithJSONDictionary:forIntent:", isa, a2);

  if (v5)
  {
  }

  return v5;
}

id LocateDeviceClassResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocateDeviceClassResolutionResult();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10053C2E8(unint64_t result)
{
  if (result > 7 || result == 5)
  {
    return 0;
  }

  return result;
}

unint64_t sub_10053C328()
{
  result = qword_1006C3EB8;
  if (!qword_1006C3EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3EB8);
  }

  return result;
}

id PlaySoundDeviceClassResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for PlaySoundDeviceClassResolutionResult();
  v5 = objc_msgSendSuper2(&v7, "initWithJSONDictionary:forIntent:", isa, a2);

  if (v5)
  {
  }

  return v5;
}

id PlaySoundDeviceClassResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaySoundDeviceClassResolutionResult();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10053C5E8()
{
  result = qword_1006C3EE8;
  if (!qword_1006C3EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3EE8);
  }

  return result;
}

id Device.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v9 = String._bridgeToObjectiveC()();

  if (a6)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id Device.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v9 = String._bridgeToObjectiveC()();

  if (a6)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for Device();
  v11 = objc_msgSendSuper2(&v13, "initWithIdentifier:displayString:pronunciationHint:", v8, v9, v10);

  return v11;
}

id Device.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for Device();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id static DeviceResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___DeviceResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "successWithResolvedObject:", a1);

  return v2;
}

id static DeviceResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_10053CB6C();

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_10053CB6C();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_10053CB6C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___DeviceResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", isa);

  return v3;
}

unint64_t sub_10053CB6C()
{
  result = qword_1006C3F40;
  if (!qword_1006C3F40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006C3F40);
  }

  return result;
}

id static DeviceResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___DeviceResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "confirmationRequiredWithObjectToConfirm:", a1);

  return v2;
}

id DeviceResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for DeviceResolutionResult();
  v5 = objc_msgSendSuper2(&v7, "initWithJSONDictionary:forIntent:", isa, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_10053D068(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10053D0C4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  *a3 = v6;
  return [v6 handleFailureInMethod:a1 object:a2 file:@"FMTextFieldUtil.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"start != nil"}];
}

id sub_10053D13C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  *a3 = v6;
  return [v6 handleFailureInMethod:a1 object:a2 file:@"FMTextFieldUtil.m" lineNumber:155 description:{@"Invalid parameter not satisfying: %@", @"start != nil"}];
}

uint64_t isFeatureEnabled(_:)()
{
  return isFeatureEnabled(_:)();
}

{
  return isFeatureEnabled(_:)();
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

NSPersonNameComponents __swiftcall PersonNameComponents._bridgeToObjectiveC()()
{
  v0 = PersonNameComponents._bridgeToObjectiveC()();
  result._private = v1;
  result.super.isa = v0;
  return result;
}

uint64_t dispatch thunk of FMImageCache.cachedImage(for:completion:)()
{
  return dispatch thunk of FMImageCache.cachedImage(for:completion:)();
}

{
  return dispatch thunk of FMImageCache.cachedImage(for:completion:)();
}

uint64_t dispatch thunk of FMImageCache.preload(requests:)()
{
  return dispatch thunk of FMImageCache.preload(requests:)();
}

{
  return dispatch thunk of FMImageCache.preload(requests:)();
}

uint64_t type metadata accessor for FMDemoManager()
{
  return type metadata accessor for FMDemoManager();
}

{
  return type metadata accessor for FMDemoManager();
}

uint64_t dispatch thunk of FMLocationShifter.shift(requests:completion:)()
{
  return dispatch thunk of FMLocationShifter.shift(requests:completion:)();
}

{
  return dispatch thunk of FMLocationShifter.shift(requests:completion:)();
}

uint64_t FMLocationShifter.init()()
{
  return FMLocationShifter.init()();
}

{
  return FMLocationShifter.init()();
}

uint64_t type metadata accessor for FMLocationShifter()
{
  return type metadata accessor for FMLocationShifter();
}

{
  return type metadata accessor for FMLocationShifter();
}

uint64_t FMLocationShiftingRequest.init(identifier:location:)()
{
  return FMLocationShiftingRequest.init(identifier:location:)();
}

{
  return FMLocationShiftingRequest.init(identifier:location:)();
}

uint64_t FMLocationShiftingRequest.location.getter()
{
  return FMLocationShiftingRequest.location.getter();
}

{
  return FMLocationShiftingRequest.location.getter();
}

uint64_t type metadata accessor for FMLocationShiftingRequest()
{
  return type metadata accessor for FMLocationShiftingRequest();
}

{
  return type metadata accessor for FMLocationShiftingRequest();
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

uint64_t FMIPManager.perform(action:completion:)()
{
  return FMIPManager.perform(action:completion:)();
}

{
  return FMIPManager.perform(action:completion:)();
}

{
  return FMIPManager.perform(action:completion:)();
}

{
  return FMIPManager.perform(action:completion:)();
}

{
  return FMIPManager.perform(action:completion:)();
}

{
  return FMIPManager.perform(action:completion:)();
}

{
  return FMIPManager.perform(action:completion:)();
}

{
  return FMIPManager.perform(action:completion:)();
}

{
  return FMIPManager.perform(action:completion:)();
}

{
  return FMIPManager.perform(action:completion:)();
}

{
  return FMIPManager.perform(action:completion:)();
}

Swift::Double_optional __swiftcall FMUserDefaults.double(for:)(Swift::String a1)
{
  v1 = FMUserDefaults.double(for:)(a1._countAndFlagsBits, a1._object);
  result.value = v2;
  result.is_nil = v1;
  return result;
}

uint64_t dispatch thunk of FMIPReverseGeocodingCache.address(for:completion:)()
{
  return dispatch thunk of FMIPReverseGeocodingCache.address(for:completion:)();
}

{
  return dispatch thunk of FMIPReverseGeocodingCache.address(for:completion:)();
}

Swift::String __swiftcall String.init(_:)(NSString a1)
{
  v1 = String.init(_:)(a1);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::Void __swiftcall String.append(_:)(Swift::String a1)
{
  String.append(_:)(a1._countAndFlagsBits, a1._object);
}

{
  String.append(_:)(a1._countAndFlagsBits, a1._object);
}

Swift::String __swiftcall String.deletingPrefix(_:)(Swift::String a1)
{
  v1 = String.deletingPrefix(_:)(a1._countAndFlagsBits, a1._object);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = String.Iterator.next()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

__C::CMTime __swiftcall CMTime.init(seconds:preferredTimescale:)(Swift::Double seconds, Swift::Int32 preferredTimescale)
{
  v2 = CMTime.init(seconds:preferredTimescale:)(*&preferredTimescale, seconds);
  result.epoch = v4;
  result.timescale = v3;
  result.flags = *(&v3 + 4);
  result.value = v2;
  return result;
}

Swift::String __swiftcall BinaryInteger.formatted()()
{
  v0 = BinaryInteger.formatted()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t _CocoaArrayWrapper.subscript.getter()
{
  return _CocoaArrayWrapper.subscript.getter();
}

{
  return _CocoaArrayWrapper.subscript.getter();
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

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  v4 = _CLLocationCoordinate2DMake(latitude, longitude);
  v3 = v4.longitude;
  v2 = v4.latitude;
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

CGSize CTFramesetterSuggestFrameSizeWithConstraints(CTFramesetterRef framesetter, CFRange stringRange, CFDictionaryRef frameAttributes, CGSize constraints, CFRange *fitRange)
{
  v7 = _CTFramesetterSuggestFrameSizeWithConstraints(framesetter, stringRange, frameAttributes, constraints, fitRange);
  height = v7.height;
  width = v7.width;
  result.height = height;
  result.width = width;
  return result;
}

CLLocationCoordinate2D MKCoordinateForMapPoint(MKMapPoint mapPoint)
{
  v3 = _MKCoordinateForMapPoint(mapPoint);
  longitude = v3.longitude;
  latitude = v3.latitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

MKMapPoint MKMapPointForCoordinate(CLLocationCoordinate2D coordinate)
{
  v3 = _MKMapPointForCoordinate(coordinate);
  y = v3.y;
  x = v3.x;
  result.y = y;
  result.x = x;
  return result;
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}