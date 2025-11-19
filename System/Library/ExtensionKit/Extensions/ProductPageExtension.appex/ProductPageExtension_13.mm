void sub_10017F240(uint64_t a1)
{
  v2 = qword_10094B1B0;
  *(a1 + v2) = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = qword_10094B1B8;
  sub_10076D4BC();
  *(a1 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_10077156C();
  __break(1u);
}

uint64_t sub_10017F300@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + qword_10094B1B0);
  v5 = sub_10075FC9C();
  if (v5)
  {

    v6 = sub_10075FD2C();
    v7 = sub_10017FFA8(&qword_10094B250, &type metadata accessor for ArtworkView);
    v5 = v4;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v32[1] = 0;
    v32[2] = 0;
  }

  v32[0] = v5;
  v32[3] = v6;
  v32[4] = v7;
  v8 = *(v2 + qword_10094B1B8);
  v31[3] = sub_10076D4BC();
  v31[4] = &protocol witness table for UILabel;
  v31[0] = v8;
  v9 = v8;
  sub_1007708CC();
  sub_10011E080(v32, &v28);
  sub_10000A570(v31, v24);
  if (qword_10093F868 != -1)
  {
    swift_once();
  }

  v10 = qword_10099D3D8;
  v26 = &type metadata for SearchLinkLayout;
  v27 = sub_10017FCFC();
  v11 = swift_allocObject();
  v25 = v11;
  v12 = sub_10017FDA0();
  v13 = swift_allocObject();
  sub_10000A570(v24, v13 + 16);
  sub_10011E080(&v28, &v22);
  if (v23)
  {
    sub_100012498(&v22, v21);
    v14 = swift_allocObject();
    sub_100012498(v21, v14 + 16);
    v15 = v10;
    sub_10000CD74(v24);
    sub_10017FE2C(&v28);
    v16 = &type metadata for AutoAdjustingPlaceable;
    v17 = v12;
  }

  else
  {
    v18 = v10;
    sub_10000CD74(v24);
    sub_10017FE2C(&v28);
    v16 = 0;
    v17 = 0;
    v14 = 0;
  }

  v11[2] = v14;
  v11[3] = 0;
  v11[4] = 0;
  v11[5] = v16;
  v11[6] = v17;
  v11[7] = v13;
  v11[10] = &type metadata for AutoAdjustingPlaceable;
  v11[11] = v12;
  v11[12] = v10;
  v11[13] = 0x4014000000000000;
  v29 = sub_10076E04C();
  v30 = &protocol witness table for Margins;
  sub_10000DB7C(&v28);
  sub_10076E03C();
  a1[3] = &type metadata for AutoAdjustingPlaceable;
  a1[4] = v12;
  v19 = swift_allocObject();
  *a1 = v19;
  sub_100012498(&v28, v19 + 16);
  sub_10000CD74(v31);
  return sub_10017FE2C(v32);
}

id sub_10017F5E4()
{
  sub_10076D9FC();
  v1 = sub_10076DA0C();
  v1();
  v2 = [v0 layer];
  [v0 bounds];
  [v2 setCornerRadius:CGRectGetHeight(v6) * 0.5];

  v3 = [v0 layer];
  [v3 setBorderWidth:1.0];

  return [v0 setNeedsDisplay];
}

void sub_10017F6C4()
{
  v1 = *(v0 + qword_10094B1B8);
}

id sub_10017F704()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScrollablePillView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10017F73C(uint64_t a1)
{
  v2 = *(a1 + qword_10094B1B8);
}

id sub_10017F7C8()
{
  if (qword_10093F868 != -1)
  {
    swift_once();
  }

  v0 = [objc_opt_self() configurationWithTextStyle:qword_10099D3D8 scale:2];

  return v0;
}

uint64_t sub_10017F850()
{
  v0 = sub_10076DD3C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  __chkstk_darwin(v7);
  v9 = &v12 - v8;
  sub_10076DD2C();
  if (qword_10093F868 != -1)
  {
    swift_once();
  }

  sub_10076DC9C();
  v10 = *(v1 + 8);
  v10(v3, v0);
  sub_10076DD1C();
  v10(v6, v0);
  sub_10076DD0C();
  return (v10)(v9, v0);
}

double sub_10017F9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10037C48C(a1, a3, WitnessTable);
}

void sub_10017FA50(void *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_10037A640(a1, a2, a3, WitnessTable);
}

void sub_10017FABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_10037CBE4(a1, a3, WitnessTable);
}

uint64_t sub_10017FB20@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10037A9B8(a1, WitnessTable, a2);
}

uint64_t sub_10017FB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10037CA40(a1, a2, a4, WitnessTable);
}

uint64_t sub_10017FC50(void *a1)
{
  a1[1] = sub_10017FFA8(&qword_10094B218, type metadata accessor for ScrollablePillView);
  a1[2] = sub_10017FFA8(&qword_10094B220, type metadata accessor for ScrollablePillView);
  result = sub_10017FFA8(&qword_10094B228, type metadata accessor for ScrollablePillView);
  a1[3] = result;
  return result;
}

unint64_t sub_10017FCFC()
{
  result = qword_10095DD80;
  if (!qword_10095DD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095DD80);
  }

  return result;
}

uint64_t sub_10017FD50()
{
  if (*(v0 + 40))
  {
    sub_10000CD74(v0 + 16);
  }

  sub_10000CD74(v0 + 56);

  return _swift_deallocObject(v0, 112, 7);
}

unint64_t sub_10017FDA0()
{
  result = qword_10094B240;
  if (!qword_10094B240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094B240);
  }

  return result;
}

uint64_t sub_10017FDF4()
{
  sub_10000CD74(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10017FE2C(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_10094B230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10017FE94(void *a1)
{
  v2 = [a1 layer];
  if (qword_100941360 != -1)
  {
    swift_once();
  }

  v3 = [qword_1009A2710 CGColor];
  [v2 setBorderColor:v3];

  return [a1 setNeedsDisplay];
}

unint64_t sub_10017FF5C()
{
  result = qword_100944E30;
  if (!qword_100944E30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100944E30);
  }

  return result;
}

uint64_t sub_10017FFA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001800B0(Swift::Float a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10076BCFC();
  sub_10000DB18(v5, a3);
  sub_10000A61C(v5, a3);
  sub_1000325F0();
  sub_100770E4C(0.0, 0.0, 0.0, a1);
  return sub_10076BCCC();
}

uint64_t sub_100180144()
{
  v0 = sub_10076BCFC();
  sub_10000DB18(v0, qword_10099D480);
  sub_10000A61C(v0, qword_10099D480);
  sub_1000325F0();
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  v3 = [v2 colorWithAlphaComponent:0.2];

  v4 = [v1 whiteColor];
  v5 = [v4 colorWithAlphaComponent:0.2];

  v6.super.isa = v3;
  v7.super.isa = v5;
  sub_100770DEC(v6, v7);
  return sub_10076BCCC();
}

uint64_t sub_100180424(double a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10076BCFC();
  sub_10000DB18(v5, a3);
  sub_10000A61C(v5, a3);
  v6 = [objc_opt_self() blackColor];
  v7 = [v6 colorWithAlphaComponent:a1];

  return sub_10076BCCC();
}

uint64_t sub_1001804E8()
{
  v0 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  __chkstk_darwin(v0);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ShelfFooterView.Style();
  sub_10000DB18(v3, qword_10099D618);
  v4 = sub_10000A61C(v3, qword_10099D618);
  if (qword_100940958 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_1009A0A50);
  sub_100181D74(v5, v2);
  v6 = [objc_opt_self() whiteColor];
  v7 = [v6 colorWithAlphaComponent:0.2];

  result = sub_100182730(v2, v4);
  *(v4 + *(v3 + 20)) = v7;
  return result;
}

id sub_100180634()
{
  type metadata accessor for ShelfFooterSeparator();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  qword_10094B260 = result;
  return result;
}

char *sub_10018066C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10076F9AC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v4[OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_layoutMetrics];
  *(v14 + 3) = &type metadata for Double;
  *(v14 + 4) = &protocol witness table for Double;
  *v14 = 0x4038000000000000;
  v14[40] = 0;
  v15 = OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_separator;
  *&v4[v15] = [objc_allocWithZone(type metadata accessor for ShelfFooterSeparator()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_titleButton;
  type metadata accessor for ShelfFooterTitleButton(0);
  *&v4[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = &v4[OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_footerAction];
  *v17 = 0;
  *(v17 + 1) = 0;
  v30.receiver = v4;
  v30.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v30, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v22 = v18;
  [v22 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v23 = [v22 layer];
  [v23 setAllowsGroupOpacity:0];

  [v22 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v24 = OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_titleButton;
  [*&v22[OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_titleButton] addTarget:v22 action:"didTapWithTitleButton:" forControlEvents:64];
  v25 = *&v22[v24];
  memset(v29, 0, sizeof(v29));
  memset(v28, 0, sizeof(v28));
  v26 = v25;
  sub_10076F97C();
  sub_10000CFBC(v28, &unk_1009434C0);
  sub_10000CFBC(v29, &unk_1009434C0);
  sub_100770B9C();

  (*(v11 + 8))(v13, v10);
  [v22 addSubview:*&v22[OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_separator]];
  [v22 addSubview:*&v22[v24]];

  return v22;
}

double sub_1001809C4()
{
  v1 = sub_10076D65C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_layoutMetrics;
  swift_beginAccess();
  sub_100181E98(&v0[v5], &v23);
  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_titleButton];
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_separator];
  v21 = type metadata accessor for ShelfFooterTitleButton(0);
  v22 = &protocol witness table for UIButton;
  *&v20 = v6;
  v18 = type metadata accessor for ShelfFooterSeparator();
  v19 = sub_100181EF4();
  *&v17 = v7;
  type metadata accessor for ShelfFooterViewLayout();
  v8 = swift_allocObject();
  v9 = v24[0];
  v8[1] = v23;
  v8[2] = v9;
  *(v8 + 41) = *(v24 + 9);
  sub_100012498(&v20, (v8 + 4));
  sub_100012498(&v17, v8 + 104);
  v10 = v6;
  v11 = v7;
  v12 = [v0 traitCollection];
  sub_100252388();
  sub_10076E0FC();
  v14 = v13;

  (*(v2 + 8))(v4, v1);
  return v14;
}

uint64_t sub_100180C14()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10076D65C();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25.receiver = v0;
  v25.super_class = ObjectType;
  objc_msgSendSuper2(&v25, "layoutSubviews", v4);
  v7 = OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_layoutMetrics;
  swift_beginAccess();
  sub_100181E98(&v0[v7], &v23);
  v8 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_titleButton];
  v9 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_separator];
  v21 = type metadata accessor for ShelfFooterTitleButton(0);
  v22 = &protocol witness table for UIButton;
  *&v20 = v8;
  v18 = type metadata accessor for ShelfFooterSeparator();
  v19 = sub_100181EF4();
  *&v17 = v9;
  type metadata accessor for ShelfFooterViewLayout();
  v10 = swift_allocObject();
  v11 = v24[0];
  v10[1] = v23;
  v10[2] = v11;
  *(v10 + 41) = *(v24 + 9);
  sub_100012498(&v20, (v10 + 4));
  sub_100012498(&v17, v10 + 104);
  v12 = v8;
  v13 = v9;
  sub_10076422C();
  v14 = [v0 traitCollection];
  sub_100252388();
  sub_10076E0EC();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100180F70(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_footerAction);
  if (v2)
  {
    v3 = result;
    v5[3] = sub_100016F40(0, &unk_10094BB70);
    v5[0] = v3;
    sub_10001CE50(v2);
    v4 = v3;
    v2(v5);
    sub_1000167E0(v2);
    return sub_10000CFBC(v5, &unk_1009434C0);
  }

  return result;
}

double sub_100181114(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v103 = a3;
  v104 = 0x6C6F686563616C50;
  v92 = sub_10076D65C();
  v102 = *(v92 - 8);
  __chkstk_darwin(v92);
  v101 = v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_10076DFEC();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v94 = v86 - v10;
  __chkstk_darwin(v11);
  v91 = v86 - v12;
  __chkstk_darwin(v13);
  v90 = v86 - v14;
  v15 = sub_10076D7FC();
  __chkstk_darwin(v15 - 8);
  v86[1] = v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_10076DFFC();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v98 = v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_10076E3AC();
  __chkstk_darwin(v89);
  v88 = v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000A5D4(&qword_100944530);
  __chkstk_darwin(v19 - 8);
  v21 = (v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v24 = v86 - v23;
  __chkstk_darwin(v25);
  v27 = v86 - v26;
  __chkstk_darwin(v28);
  v30 = v86 - v29;
  v86[0] = type metadata accessor for ShelfFooterTitleButton.Style(0);
  __chkstk_darwin(v86[0]);
  v87 = v86 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v105 = v86 - v33;
  if (!a2)
  {
    goto LABEL_6;
  }

  v34 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v34 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {

    v104 = a1;
    v93 = a2;
  }

  else
  {
LABEL_6:
    v93 = 0xEB00000000726564;
  }

  sub_100181D04(a4, v30);
  v35 = sub_100762DCC();
  v36 = *(v35 - 8);
  v37 = *(v36 + 48);
  if (v37(v30, 1, v35) == 1)
  {
    v38 = 0;
    v39 = 24.0;
  }

  else
  {
    sub_100181D04(v30, v27);
    v40 = (*(v36 + 88))(v27, v35);
    v41 = v27;
    v42 = a4;
    v43 = v24;
    v44 = v40;
    v45 = enum case for ShelfFooterStyle.games(_:);
    (*(v36 + 8))(v41, v35);
    v46 = v44 == v45;
    v24 = v43;
    a4 = v42;
    v38 = v46;
    v39 = 24.0;
    if (v46)
    {
      v39 = 16.0;
    }
  }

  v114[3] = &type metadata for Double;
  v114[4] = &protocol witness table for Double;
  *v114 = v39;
  v115 = v38;
  sub_10000CFBC(v30, &qword_100944530);
  sub_100181D04(a4, v24);
  v47 = v37(v24, 1, v35);
  v48 = v105;
  if (v47 != 1)
  {
    sub_100181D04(v24, v21);
    if ((*(v36 + 88))(v21, v35) == enum case for ShelfFooterStyle.games(_:))
    {
      (*(v36 + 96))(v21, v35);
      v49 = *v21;
      if (qword_100940960 != -1)
      {
        swift_once();
      }

      v50 = sub_10000A61C(v86[0], qword_1009A0A68);
      sub_100181D74(v50, v48);
      v51 = v103;
      if ([v103 horizontalSizeClass] == 1 && (v52 = objc_msgSend(v51, "preferredContentSizeCategory"), v53 = sub_10077084C(), v52, (v53 & 1) != 0))
      {

        v54 = 0;
        v55 = 0;
      }

      else
      {
        [v49 size];
        v55 = v85;

        v54 = 1;
      }

      goto LABEL_25;
    }

    (*(v36 + 8))(v21, v35);
  }

  if (qword_100940958 != -1)
  {
    swift_once();
  }

  v56 = sub_10000A61C(v86[0], qword_1009A0A50);
  sub_100181D74(v56, v48);
  v54 = 0;
  v55 = 0;
  v51 = v103;
LABEL_25:
  v57 = v98;
  sub_10000CFBC(v24, &qword_100944530);
  if (qword_100940968 != -1)
  {
    swift_once();
  }

  v58 = qword_10095E720;
  *(qword_10095E720 + OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_hasLeadingIcon) = v54;
  *&v58[OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_leadingIconHeight] = v55;
  v59 = sub_10076FF6C();
  [v58 setTitle:v59 forState:0];

  v60 = v87;
  sub_100181D74(v48, v87);
  v61 = OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_style;
  swift_beginAccess();
  sub_100181DD8(v60, &v58[v61]);
  swift_endAccess();
  sub_1005AE860();
  sub_100181E3C(v60);
  v62 = [v51 preferredContentSizeCategory];
  sub_100770C0C();
  sub_10076E37C();
  sub_100770C1C();
  [v58 updateTraitsIfNeeded];
  sub_100770F2C();
  v64 = v63;
  v66 = v65;
  sub_10076D7EC();
  sub_10076DA5C();
  *&v113[8] = sub_10076DA7C();
  *&v113[16] = &protocol witness table for LabelPlaceholder;
  sub_10000DB7C(&v112);
  sub_10076DA8C();
  v67 = v90;
  *(v90 + 3) = &type metadata for CGFloat;
  *(v67 + 4) = &protocol witness table for CGFloat;
  *v67 = v64;
  v68 = enum case for Resize.Rule.replaced(_:);
  v69 = *(v96 + 104);
  v70 = v97;
  v69(v67, enum case for Resize.Rule.replaced(_:), v97);
  v71 = v91;
  *(v91 + 3) = &type metadata for CGFloat;
  *(v71 + 4) = &protocol witness table for CGFloat;
  *v71 = v66;
  v69(v71, v68, v70);
  v72 = enum case for Resize.Rule.unchanged(_:);
  v69(v94, enum case for Resize.Rule.unchanged(_:), v70);
  v69(v95, v72, v70);
  sub_10076E00C();
  sub_100181E98(v114, &v112);
  if (qword_10093F930 != -1)
  {
    swift_once();
  }

  v73 = qword_10094B260;
  v74 = v100;
  v110 = v100;
  v111 = &protocol witness table for Resize;
  v75 = sub_10000DB7C(&v109);
  v76 = v99;
  (*(v99 + 16))(v75, v57, v74);
  v107 = type metadata accessor for ShelfFooterSeparator();
  v108 = sub_100181EF4();
  *&v106 = v73;
  type metadata accessor for ShelfFooterViewLayout();
  v77 = swift_allocObject();
  v78 = *v113;
  v77[1] = v112;
  v77[2] = v78;
  *(v77 + 41) = *&v113[9];
  sub_100012498(&v109, (v77 + 4));
  sub_100012498(&v106, v77 + 104);
  v79 = v73;
  v80 = v101;
  sub_100252388();
  v81 = v92;
  sub_10076E0FC();
  v83 = v82;

  (*(v102 + 8))(v80, v81);
  (*(v76 + 8))(v57, v74);
  sub_100181F4C(v114);
  sub_100181E3C(v105);
  return v83;
}

uint64_t sub_100181D04(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100944530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100181D74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100181DD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100181E3C(uint64_t a1)
{
  v2 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100181EF4()
{
  result = qword_10094B2B0;
  if (!qword_10094B2B0)
  {
    type metadata accessor for ShelfFooterSeparator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094B2B0);
  }

  return result;
}

void sub_100181FA0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v57 = a5;
  v63 = a3;
  v61 = a2;
  v59 = a1;
  v56 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  __chkstk_darwin(v56);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&qword_100944530);
  __chkstk_darwin(v10 - 8);
  v60 = (&v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v64 = &v56 - v13;
  __chkstk_darwin(v14);
  v16 = &v56 - v15;
  __chkstk_darwin(v17);
  v19 = &v56 - v18;
  v62 = a4;
  sub_100181D04(a4, &v56 - v18);
  v20 = sub_100762DCC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  v23 = v22(v19, 1, v20);
  v58 = v21;
  if (v23 == 1)
  {
    v24 = 0;
    v25 = 24.0;
  }

  else
  {
    sub_100181D04(v19, v16);
    v26 = (*(v21 + 88))(v16, v20);
    v27 = enum case for ShelfFooterStyle.games(_:);
    (*(v21 + 8))(v16, v20);
    v24 = v26 == v27;
    v25 = 24.0;
    if (v26 == v27)
    {
      v25 = 16.0;
    }
  }

  v65[3] = &type metadata for Double;
  v65[4] = &protocol witness table for Double;
  *v65 = v25;
  v66 = v24;
  sub_10000CFBC(v19, &qword_100944530);
  v28 = &v6[OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_layoutMetrics];
  swift_beginAccess();
  sub_100182688(v65, v28);
  swift_endAccess();
  v29 = *&v6[OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_separator];
  [v29 setHidden:*(v28 + 40)];
  [v29 setBackgroundColor:*(v63 + *(type metadata accessor for ShelfFooterView.Style() + 20))];
  v30 = *&v6[OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_titleButton];
  v31 = v61;
  if (v61)
  {
    v32 = v59;
    v33 = sub_10076FF6C();
    [v30 setTitle:v33 forState:{0, v56, v57}];

    v34 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v34 = v32 & 0xFFFFFFFFFFFFLL;
    }

    v35 = v34 == 0;
  }

  else
  {
    [*&v6[OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_titleButton] setTitle:0 forState:{0, v56, v57}];
    v35 = 1;
  }

  [v30 setHidden:v35];
  v36 = v64;
  sub_100181D04(v62, v64);
  if (v22(v36, 1, v20) == 1)
  {
    goto LABEL_18;
  }

  v37 = v60;
  sub_100181D04(v64, v60);
  v38 = v58;
  if ((*(v58 + 88))(v37, v20) != enum case for ShelfFooterStyle.games(_:))
  {
    (*(v38 + 8))(v60, v20);
LABEL_18:
    sub_100181D74(v63, v9);
    v47 = OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_style;
    swift_beginAccess();
    sub_100181DD8(v9, &v30[v47]);
    swift_endAccess();
    sub_1005AE860();
    sub_100181E3C(v9);
    goto LABEL_19;
  }

  v39 = v9;
  v40 = v60;
  (*(v38 + 96))(v60, v20);
  v41 = *v40;
  if (qword_100940960 != -1)
  {
    swift_once();
  }

  v42 = sub_10000A61C(v56, qword_1009A0A68);
  sub_100181D74(v42, v39);
  v43 = OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_style;
  swift_beginAccess();
  sub_100181DD8(v39, &v30[v43]);
  swift_endAccess();
  sub_1005AE860();
  sub_100181E3C(v39);
  v44 = sub_10076461C();
  if ([v44 horizontalSizeClass] != 1)
  {

    goto LABEL_22;
  }

  v45 = [v44 preferredContentSizeCategory];
  v46 = sub_10077084C();

  if ((v46 & 1) == 0)
  {
LABEL_22:
    v51 = v41;
    sub_10000CFBC(v64, &qword_100944530);
    v30[OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_hasLeadingIcon] = 1;
    [v51 size];
    *&v30[OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_leadingIconHeight] = v52;
    v53 = *&v30[OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_leadingIconView];
    v54 = v51;
    v48 = v53;
    v55 = [v48 layer];
    [v55 removeAllAnimations];

    v50 = v54;
    [v48 setImage:v50];

    goto LABEL_20;
  }

LABEL_19:
  sub_10000CFBC(v64, &qword_100944530);
  v30[OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_hasLeadingIcon] = 0;
  *&v30[OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_leadingIconHeight] = 0;
  v48 = *&v30[OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_leadingIconView];
  v49 = [v48 layer];
  [v49 removeAllAnimations];

  [v48 setImage:0];
  v50 = 0;
LABEL_20:

  [v6 setNeedsLayout];
}

uint64_t type metadata accessor for ShelfFooterView.Style()
{
  result = qword_10094B310;
  if (!qword_10094B310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100182730(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100182794()
{
  v1 = v0 + OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_layoutMetrics;
  *(v1 + 24) = &type metadata for Double;
  *(v1 + 32) = &protocol witness table for Double;
  *v1 = 0x4038000000000000;
  *(v1 + 40) = 0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_separator;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for ShelfFooterSeparator()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_titleButton;
  type metadata accessor for ShelfFooterTitleButton(0);
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = (v0 + OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_footerAction);
  *v4 = 0;
  v4[1] = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1001828A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100182970(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ShelfFooterTitleButton.Style(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100182A28()
{
  result = type metadata accessor for ShelfFooterTitleButton.Style(319);
  if (v1 <= 0x3F)
  {
    result = sub_100016F40(319, &qword_100942F10);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100182B08()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076C02C();
  sub_100182C8C(&qword_10094B350, &type metadata accessor for Artwork);
  result = sub_10076332C();
  if (v5[1])
  {
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C2FC();
    (*(v1 + 8))(v3, v0);
    sub_10076BEFC();
    sub_10076BEFC();
  }

  return result;
}

uint64_t sub_100182C8C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100182D48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchCollectionLayoutAttributes();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100182DFC()
{
  result = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.17 controlPoint2:{0.0, 0.83, 0.83}];
  qword_10094B3A0 = result;
  return result;
}

uint64_t sub_100182E48()
{
  v0 = sub_1007604DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10000A5D4(&qword_10094B450);
  sub_10000DB18(v4, qword_10094B3A8);
  sub_10000A61C(v4, qword_10094B3A8);
  v6[0] = 0x3FF0000000000000;
  v6[1] = 0;
  *v3 = xmmword_100791270;
  (*(v1 + 104))(v3, enum case for TimingCurve.controlPoints(_:), v0);
  return sub_1007607FC();
}

uint64_t sub_100182FB4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10076D9AC();
  sub_10000DB18(v3, a2);
  sub_10000A61C(v3, a2);
  v4 = sub_10076D1AC();
  v9[3] = v4;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_10000DB7C(v9);
  if (qword_100941138 != -1)
  {
    swift_once();
  }

  v6 = sub_10076D3DC();
  v7 = sub_10000A61C(v6, qword_1009A21A0);
  (*(*(v6 - 8) + 16))(v5, v7, v6);
  (*(*(v4 - 8) + 104))(v5, enum case for FontSource.useCase(_:), v4);
  return sub_10076D9BC();
}

char *sub_100183100(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_heroCarouselItem] = 0;
  v9 = &v4[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_pagingProgress];
  *v9 = 0;
  *(v9 + 4) = 514;
  v9[10] = 0;
  v10 = OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_backgroundView;
  type metadata accessor for HeroCarouselItemBackgroundView();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_gradientView;
  type metadata accessor for HeroGradientView();
  *&v4[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView____lazy_storage___moduleGradientView] = 0;
  v12 = &v4[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayBottomInset] = 0;
  v22.receiver = v4;
  v22.super_class = type metadata accessor for HeroCarouselItemView();
  v13 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = v13;
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v17 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [v17 setClipsToBounds:1];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_backgroundView]];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_gradientView]];
  v18 = sub_100183344();
  [v17 addSubview:v18];

  v19 = *&v17[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView];
  if (v19)
  {
    v20 = v19;
    [v17 addSubview:v20];
  }

  return v17;
}

char *sub_100183344()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView____lazy_storage___moduleGradientView;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView____lazy_storage___moduleGradientView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView____lazy_storage___moduleGradientView];
  }

  else
  {
    v4 = [v0 traitCollection];
    v5 = [v4 userInterfaceIdiom];

    v6 = objc_allocWithZone(type metadata accessor for ModuleOverlayGradientBlurView());
    v7 = v0;
    v8 = sub_1003915B0(v5 == 1);
    v9 = *&v0[v1];
    *&v7[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void sub_1001833F8()
{
  v1 = sub_10077164C();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin(v1).n128_u64[0];
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 traitCollection];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 1)
  {
    if (qword_10093F950 != -1)
    {
      swift_once();
    }

    v8 = sub_10076D9AC();
    sub_10000A61C(v8, qword_10094B3D8);
    sub_10076D17C();
    sub_10076D40C();
    (*(v2 + 8))(v5, v1);
  }

  else
  {
    if (qword_10093F948 != -1)
    {
      swift_once();
    }

    v9 = sub_10076D9AC();
    sub_10000A61C(v9, qword_10094B3C0);
    sub_10076D17C();
    sub_10076D40C();
    (*(v2 + 8))(v5, v1);
    sub_100183610();
  }
}

double sub_100183610()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView);
  v2 = 0.0;
  if (v1)
  {
    type metadata accessor for CarouselItemSingleModuleOverlay();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      v5 = v1;
      sub_1005888C0();
      v7 = v6;
      [v4 frame];
      sub_10010E7A0(v8, v9);
LABEL_6:
      v17 = v10;

      return v7 + v17 + *(v0 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayBottomInset);
    }

    type metadata accessor for CarouselItemCollectionModuleOverlay();
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = v11;
      v13 = v1;
      sub_1005888C0();
      v7 = v14;
      [v12 frame];
      sub_10023F2A8(v15, v16);
      goto LABEL_6;
    }
  }

  return v2;
}

void sub_1001837FC()
{
  v1 = v0;
  v2 = sub_100766EFC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HeroCarouselItemView();
  v47.receiver = v0;
  v47.super_class = v6;
  objc_msgSendSuper2(&v47, "layoutSubviews");
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_gradientView];
  [v1 bounds];
  [v7 setFrame:?];
  v8 = *&v1[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_backgroundView];
  [v1 bounds];
  [v8 setBounds:{0.0, 0.0}];
  [v1 bounds];
  MidX = CGRectGetMidX(v48);
  [v1 bounds];
  [v8 setCenter:{MidX, CGRectGetMidY(v49)}];
  v10 = OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView;
  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView];
  if (v11)
  {
    v12 = v11;
    v13 = sub_100183EDC();
    [v12 setBounds:{0.0, 0.0, v13, v14}];

    v15 = *&v1[v10];
    if (v15)
    {
      v16 = v15;
      [v16 setCenter:sub_1001841DC()];
    }
  }

  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_heroCarouselItem])
  {

    v17 = sub_10076279C();

    if (v17)
    {
      sub_100766F1C();

      v18 = sub_100766EEC();
      (*(v3 + 8))(v5, v2);
      if (v18)
      {
        [v1 bounds];
        CGRectGetHeight(v50);
        sub_1001833F8();
        v19 = sub_100183344();
        [v1 bounds];
        sub_100770A3C();
        [v19 setFrame:?];

        v20 = sub_100183610();
        sub_1001833F8();
        v22 = *&v1[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView____lazy_storage___moduleGradientView];
        v23 = OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_effectVisibilityThreshold;
        *&v22[OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_effectVisibilityThreshold] = v20 / v21;
        if ((v22[OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_style] & 1) == 0)
        {
          v46 = _swiftEmptyArrayStorage;
          v24 = v22;
          sub_1004BBAA4(0, 5, 0);
          v25 = v46;
          v26 = *&v22[v23];
          v27 = 0.0;
          v29 = v46[2];
          v28 = v46[3];
          v30 = v28 >> 1;
          v31 = v29 + 1;
          if (v28 >> 1 <= v29)
          {
            *&v45 = 0.0;
            sub_1004BBAA4((v28 > 1), v29 + 1, 1);
            v27 = *&v45;
            v25 = v46;
            v28 = v46[3];
            v30 = v28 >> 1;
          }

          *(v25 + 16) = v31;
          *(v25 + 8 * v29 + 32) = v27 * v26;
          v32 = *&v22[v23];
          v46 = v25;
          v33 = v29 + 2;
          if (v30 <= v31)
          {
            *&v45 = v32;
            sub_1004BBAA4((v28 > 1), v33, 1);
            v32 = *&v45;
            v25 = v46;
          }

          *(v25 + 16) = v33;
          *(v25 + 8 * v31 + 32) = 0.25 * v32;
          v34 = *&v22[v23];
          v46 = v25;
          v36 = *(v25 + 16);
          v35 = *(v25 + 24);
          v37 = v35 >> 1;
          v38 = v36 + 1;
          if (v35 >> 1 <= v36)
          {
            *&v45 = v34;
            sub_1004BBAA4((v35 > 1), v36 + 1, 1);
            v34 = *&v45;
            v25 = v46;
            v35 = v46[3];
            v37 = v35 >> 1;
          }

          *(v25 + 16) = v38;
          *(v25 + 8 * v36 + 32) = 0.5 * v34;
          v39 = *&v22[v23];
          v46 = v25;
          v40 = v36 + 2;
          if (v37 <= v38)
          {
            *&v45 = v39;
            sub_1004BBAA4((v35 > 1), v40, 1);
            v39 = *&v45;
            v25 = v46;
          }

          *(v25 + 16) = v40;
          *(v25 + 8 * v38 + 32) = 0.75 * v39;
          v41 = *&v22[v23];
          v42 = 1.0;
          v46 = v25;
          v44 = *(v25 + 16);
          v43 = *(v25 + 24);
          if (v44 >= v43 >> 1)
          {
            *&v45 = 1.0;
            sub_1004BBAA4((v43 > 1), v44 + 1, 1);
            v42 = *&v45;
            v25 = v46;
          }

          *(v25 + 16) = v44 + 1;
          *(v25 + 8 * v44 + 32) = v42 * v41;
          sub_1001C0414(v25);
        }
      }
    }
  }
}

id sub_100183D30(id a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for HeroCarouselItemView();
  objc_msgSendSuper2(&v12, "traitCollectionDidChange:", a1);
  if (a1)
  {
    a1 = [a1 preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

    return [v1 setNeedsLayout];
  }

  v5 = sub_10076FF9C();
  v7 = v6;
  if (v5 == sub_10076FF9C() && v7 == v8)
  {
  }

  v10 = sub_10077167C();

  if ((v10 & 1) == 0)
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

double sub_100183EDC()
{
  v1 = v0;
  v2 = sub_10076C36C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v23 - v7;
  v9 = sub_10076C38C();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 bounds];
  v23[2] = v15;
  v23[3] = v14;
  v23[1] = v16;
  (*(v3 + 104))(v8, enum case for PageGrid.Direction.vertical(_:), v2);
  [v1 bounds];
  (*(v3 + 16))(v5, v8, v2);
  v17 = 0.0;
  sub_1005AC334(0.0);
  sub_10076C33C();
  (*(v3 + 8))(v8, v2);
  sub_10076C2EC();
  (*(v10 + 8))(v13, v9);
  sub_100770A3C();
  v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView];
  if (v20)
  {
    [v20 sizeThatFits:{v18, v19}];
    return v21;
  }

  return v17;
}

double sub_1001841DC()
{
  v1 = v0;
  v2 = sub_10076702C();
  v53 = *(v2 - 8);
  v54 = v2;
  __chkstk_darwin(v2);
  v49 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076703C();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v46 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&qword_10094B458);
  __chkstk_darwin(v6 - 8);
  v50 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v46 - v9;
  v11 = sub_10076C36C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = sub_10076C38C();
  v19 = *(v18 - 8);
  *&v20 = __chkstk_darwin(v18).n128_u64[0];
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 bounds];
  v51 = v24;
  v52 = v23;
  (*(v12 + 104))(v17, enum case for PageGrid.Direction.vertical(_:), v11);
  [v1 bounds];
  (*(v12 + 16))(v14, v17, v11);
  v55 = 0.0;
  sub_1005AC334(0.0);
  sub_10076C33C();
  (*(v12 + 8))(v17, v11);
  sub_10076C2EC();
  (*(v19 + 8))(v22, v18);
  sub_100770A3C();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = *&v1[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView];
  if (v33)
  {
    [v33 bounds];
    v55 = v34 * 0.5;
  }

  if (!*&v1[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_heroCarouselItem] || (, v35 = sub_10076279C(), , !v35))
  {
    (*(v53 + 56))(v10, 1, 1, v54);
    sub_10000CFBC(v10, &qword_10094B458);
    goto LABEL_9;
  }

  v36 = v46;
  sub_10076704C();

  v37 = v49;
  sub_100766FEC();
  (*(v47 + 8))(v36, v48);
  v38 = [v1 traitCollection];
  sub_10076701C();

  v40 = v53;
  v39 = v54;
  v41 = *(v53 + 8);
  v41(v37, v54);
  (*(v40 + 56))(v10, 0, 1, v39);
  v42 = v50;
  sub_100185F2C(v10, v50);
  v43 = (*(v40 + 88))(v42, v39);
  if (v43 == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:))
  {
LABEL_9:
    v57.origin.x = v26;
    v57.origin.y = v28;
    v57.size.width = v30;
    v57.size.height = v32;
    MidX = v55 + CGRectGetMinX(v57);
    goto LABEL_10;
  }

  if (v43 != enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.center(_:))
  {
    if (v43 == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.trailing(_:))
    {
      v59.origin.x = v26;
      v59.origin.y = v28;
      v59.size.width = v30;
      v59.size.height = v32;
      MidX = CGRectGetMaxX(v59) - v55;
      goto LABEL_10;
    }

    v41(v42, v39);
    goto LABEL_9;
  }

  v56.origin.x = v26;
  v56.origin.y = v28;
  v56.size.width = v30;
  v56.size.height = v32;
  MidX = CGRectGetMidX(v56);
LABEL_10:
  v58.origin.x = v26;
  v58.origin.y = v28;
  v58.size.width = v30;
  v58.size.height = v32;
  CGRectGetMaxY(v58);
  return MidX;
}

id sub_10018484C()
{
  v1 = v0 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_pagingProgress;
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_pagingProgress + 8) && *(v0 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_pagingProgress + 8) != 1)
  {

    return [*(v0 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_backgroundView) setTransform:{&v13, 0x3FF0000000000000, 0, 0, 0x3FF0000000000000, 0, 0}];
  }

  v2 = sub_10077167C();

  if (v2)
  {
    return [*(v0 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_backgroundView) setTransform:{&v13, 0x3FF0000000000000, 0, 0, 0x3FF0000000000000, 0, 0}];
  }

  if (*(v1 + 8) && *(v1 + 8) == 1)
  {
  }

  else
  {
    v4 = sub_10077167C();

    if ((v4 & 1) == 0)
    {
      if (*(v1 + 9))
      {
        v11 = sub_10077167C();

        if ((v11 & 1) == 0)
        {
          v6 = *v1;
          goto LABEL_17;
        }
      }

      else
      {
      }

      v10 = 1.0 - *v1;
      goto LABEL_22;
    }
  }

  if (*(v1 + 9))
  {
    v5 = sub_10077167C();

    if (v5)
    {
      goto LABEL_16;
    }

    v10 = *v1;
LABEL_22:
    v7 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_backgroundView);
    [v7 center];
    v9 = v10 * (v12 * 0.3);
    goto LABEL_23;
  }

LABEL_16:
  v6 = 1.0 - *v1;
LABEL_17:
  v7 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_backgroundView);
  [v7 center];
  v9 = v8 * -0.3 * v6;
LABEL_23:
  CGAffineTransformMakeTranslation(&v13, v9, 0.0);
  return [v7 setTransform:{&v13, *&v13.a, *&v13.c, *&v13.tx}];
}

void sub_100184B50()
{
  v1 = v0 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_pagingProgress;
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_pagingProgress + 8) && *(v0 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_pagingProgress + 8) != 1)
  {

LABEL_9:
    v6 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView);
    if (v6)
    {
      *&v28.a = 0x3FF0000000000000uLL;
      v28.c = 0.0;
      v28.d = 1.0;
      *&v28.tx = 0uLL;
      [v6 setTransform:&v28];
    }

    return;
  }

  v2 = sub_10077167C();

  if (v2)
  {
    goto LABEL_9;
  }

  v3 = OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView;
  v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView);
  if (v4)
  {
    if (*(v1 + 8) && *(v1 + 8) == 1)
    {
      v5 = v4;

      goto LABEL_12;
    }

    v7 = sub_10077167C();
    v8 = v4;

    if (v7)
    {
LABEL_12:
      if (*(v1 + 9))
      {
        v13 = sub_10077167C();

        if ((v13 & 1) == 0)
        {
          v17 = *v1;
          [v4 center];
          v16 = v18 * -0.3 * v17;
          goto LABEL_21;
        }
      }

      else
      {
      }

      v14 = 1.0 - *v1;
      [v4 center];
      v16 = v14 * (v15 * 0.3);
LABEL_21:
      CGAffineTransformMakeTranslation(&v28, v16, 0.0);
      [v4 setTransform:&v28];
LABEL_25:

      goto LABEL_26;
    }

    if (*(v1 + 9))
    {
      v9 = sub_10077167C();

      if ((v9 & 1) == 0)
      {
        v10 = *v1;
        [v8 center];
        v12 = v10 * (v11 * 0.3);
LABEL_24:
        CGAffineTransformMakeTranslation(&v28, v12, 0.0);
        [v8 setTransform:&v28];
        goto LABEL_25;
      }
    }

    else
    {
    }

    v19 = 1.0 - *v1;
    [v8 center];
    v12 = v20 * -0.3 * v19;
    goto LABEL_24;
  }

LABEL_26:
  if (*(v1 + 10) == 1)
  {
    v21 = *(v0 + v3);
    if (v21)
    {
      if (*(v1 + 9))
      {
        v22 = sub_10077167C();
        v23 = v21;

        if ((v22 & 1) == 0)
        {
          if (qword_10093F940 != -1)
          {
            swift_once();
          }

          v24 = sub_10000A5D4(&qword_10094B450);
          sub_10000A61C(v24, qword_10094B3A8);
          sub_1007607DC();
          a = v28.a;
          v21 = v23;
LABEL_37:
          [v21 setAlpha:a];

          return;
        }
      }

      else
      {
        v26 = v21;
      }

      if (qword_10093F940 != -1)
      {
        swift_once();
      }

      v27 = sub_10000A5D4(&qword_10094B450);
      sub_10000A61C(v27, qword_10094B3A8);
      sub_1007607DC();
      a = v28.a;
      goto LABEL_37;
    }
  }
}

void sub_100185070(int a1, double a2)
{
  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView];
  v6 = BYTE1(a1);
  if (v5)
  {
    if (BYTE1(a1))
    {
      v7 = sub_10077167C();
      v8 = v5;

      v9 = 1.0;
      if (v7)
      {
        v9 = 0.0;
      }
    }

    else
    {
      v8 = v5;

      v9 = 0.0;
    }

    [v8 setAlpha:v9];
  }

  if (qword_10093F938 != -1)
  {
    swift_once();
  }

  v10 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_10094B3A0 timingParameters:0.33];
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = a2;
  *(v11 + 32) = a1;
  *(v11 + 34) = BYTE2(a1) & 1;
  v16[4] = sub_100185EF0;
  v16[5] = v11;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_10009AEDC;
  v16[3] = &unk_10088AAB0;
  v12 = _Block_copy(v16);
  v13 = v2;

  [v10 addAnimations:v12];
  _Block_release(v12);
  if (v6)
  {
    v14 = sub_10077167C();

    v15 = 0.166;
    if ((v14 & 1) == 0)
    {
      v15 = 0.0;
    }
  }

  else
  {

    v15 = 0.166;
  }

  [v10 startAnimationAfterDelay:v15];
}

void sub_10018532C(uint64_t a1, __int16 a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView);
  if (v2)
  {
    if (HIBYTE(a2))
    {
      v3 = sub_10077167C();
      v5 = v2;

      v4 = 0.0;
      if (v3)
      {
        v4 = 1.0;
      }
    }

    else
    {
      v5 = v2;

      v4 = 1.0;
    }

    [v5 setAlpha:v4];
  }
}

void sub_100185440(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_10076703C();
  v57 = *(v6 - 8);
  v58 = v6;
  __chkstk_darwin(v6);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076702C();
  v60 = *(v9 - 8);
  v61 = v9;
  __chkstk_darwin(v9);
  v59 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v57 - v12;
  __chkstk_darwin(v14);
  v62 = &v57 - v15;
  v16 = sub_100766EFC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_heroCarouselItem;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_heroCarouselItem] = a1;

  v63 = a2;
  sub_1001316DC(a1, a2);
  if (*&v2[v20] && (, v21 = sub_10076279C(), , v21) && (sub_100766F1C(), , v22 = sub_100766EEC(), (*(v17 + 8))(v19, v16), (v22 & 1) != 0))
  {
    v23 = sub_100183344();
    [v23 setHidden:0];

    if (sub_10076279C())
    {
      sub_10076704C();

      sub_100766FEC();
      (*(v57 + 8))(v8, v58);
      v25 = v60;
      v24 = v61;
      v26 = v62;
      (*(v60 + 32))(v62, v13, v61);
      v27 = *&v3[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView____lazy_storage___moduleGradientView];
      v28 = v59;
      (*(v25 + 16))(v59, v26, v24);
      v29 = OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_alignment;
      swift_beginAccess();
      v30 = *(v25 + 24);
      v31 = v27;
      v30(&v27[v29], v28, v24);
      swift_endAccess();
      sub_100391D1C();

      v32 = *(v25 + 8);
      v32(v28, v24);
      v32(v62, v24);
    }
  }

  else
  {
    v33 = sub_100183344();
    [v33 setHidden:1];
  }

  v34 = v63;
  v35 = sub_100185C20(a1, v63);
  v37 = v35;
  v38 = v36;
  v39 = &v3[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView];
  v40 = *&v3[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView];
  if (v35)
  {
    if (v35 == v40 || !v40)
    {
      *v39 = v35;
      *(v39 + 1) = v36;
      v41 = (v39 + 8);
      v42 = v35;

LABEL_13:
      [v3 addSubview:{v42, v57, v58}];

      goto LABEL_14;
    }
  }

  else if (!v40)
  {
    *v39 = 0;
    *(v39 + 1) = v36;
    v41 = (v39 + 8);
    v56 = 0;
    goto LABEL_14;
  }

  [*&v3[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView] removeFromSuperview];
  v43 = *v39;
  *v39 = v37;
  *(v39 + 1) = v38;
  v41 = (v39 + 8);
  v42 = v37;

  if (v37)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (sub_10076279C() && (v44 = sub_100766F0C(), , v44))
  {
    v45 = *v39;
    if (*v39)
    {
      v46 = *v41;
      ObjectType = swift_getObjectType();
      swift_unknownObjectWeakInit();
      v48 = swift_allocObject();
      *(v48 + 16) = v34;
      *(v48 + 24) = v44;
      v49 = *(v46 + 16);
      v50 = v45;

      v49(sub_100185EB0, v48, ObjectType, v46);

      swift_unknownObjectWeakDestroy();
    }

    else
    {
    }
  }

  else
  {
    v51 = *v39;
    if (*v39)
    {
      v52 = *v41;
      v53 = swift_getObjectType();
      v54 = *(v52 + 16);
      v55 = v51;
      v54(0, 0, v53, v52);
    }
  }
}

uint64_t sub_100185A08(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_10000A5D4(&unk_1009428E0);
  sub_10076F5AC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10000CFBC(v6, &unk_100943200);
  }

  sub_100263BF0(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

id sub_100185B4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeroCarouselItemView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100185C20(uint64_t a1, uint64_t a2)
{
  v3 = sub_100766EFC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076279C();
  if (v7)
  {
    v8 = v7;
    sub_100766F1C();
    v9 = (*(v4 + 88))(v6, v3);
    if (v9 == enum case for HeroCarouselItemOverlay.OverlayType.materialText(_:))
    {
      type metadata accessor for CarouselItemMaterialTextOverlay();
      v10 = &off_100894260;
    }

    else if (v9 == enum case for HeroCarouselItemOverlay.OverlayType.text(_:))
    {
      type metadata accessor for CarouselItemTextOverlay();
      v10 = &off_1008893F8;
    }

    else if (v9 == enum case for HeroCarouselItemOverlay.OverlayType.lockup(_:))
    {
      type metadata accessor for CarouselItemLockupOverlay();
      v10 = &off_10088F380;
    }

    else if (v9 == enum case for HeroCarouselItemOverlay.OverlayType.collectionLockup(_:))
    {
      type metadata accessor for CarouselItemCollectionLockupOverlay(0);
      v10 = &off_1008935A0;
    }

    else if (v9 == enum case for HeroCarouselItemOverlay.OverlayType.singleModule(_:))
    {
      type metadata accessor for CarouselItemSingleModuleOverlay();
      v10 = &off_1008A2650;
    }

    else
    {
      if (v9 != enum case for HeroCarouselItemOverlay.OverlayType.collectionModule(_:))
      {
        (*(v4 + 8))(v6, v3);
        v11 = 0;
        goto LABEL_16;
      }

      type metadata accessor for CarouselItemCollectionModuleOverlay();
      v10 = &off_100893E58;
    }

    v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    ObjectType = swift_getObjectType();
    (v10[4])(v8, a2, ObjectType, v10);
LABEL_16:

    return v11;
  }

  return 0;
}

uint64_t sub_100185E70()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100185EB8()
{

  return _swift_deallocObject(v0, 35, 7);
}

uint64_t sub_100185F14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100185F2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_10094B458);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100185F9C()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_heroCarouselItem) = 0;
  v1 = v0 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_pagingProgress;
  *v1 = 0;
  *(v1 + 8) = 514;
  *(v1 + 10) = 0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_backgroundView;
  type metadata accessor for HeroCarouselItemBackgroundView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_gradientView;
  type metadata accessor for HeroGradientView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView____lazy_storage___moduleGradientView) = 0;
  v4 = (v0 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayBottomInset) = 0;
  sub_10077156C();
  __break(1u);
}

double sub_1001860E8(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v2 - 8);
  v4 = &v66 - v3;
  v5 = sub_10076D39C();
  v74 = *(v5 - 8);
  __chkstk_darwin(v5);
  v73 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076C36C();
  v72 = *(v7 - 8);
  __chkstk_darwin(v7);
  v71 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v66 - v10;
  v12 = sub_10076C38C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v66 - v17;
  sub_10075FFAC();
  sub_100186DB4(&qword_10094B480, &type metadata accessor for FramedVideo);
  sub_10076332C();
  if (!aBlock[0])
  {
    return 0.0;
  }

  v70 = v5;
  v68 = v4;

  v19 = sub_10075FF4C();
  swift_getKeyPath();
  sub_10076338C();

  v20 = (v13 + 8);
  v69 = a1;
  if (v19)
  {
    sub_10076C2FC();
    v22 = v21;
    (*v20)(v18, v12);
  }

  else
  {
    sub_10076C24C();
    v24 = *v20;
    (*v20)(v18, v12);
    v67 = v24;
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C26C();
    v24(v15, v12);
    v25 = v72;
    (*(v72 + 104))(v11, enum case for PageGrid.Direction.vertical(_:), v7);
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C25C();
    v26 = v67;
    v67(v15, v12);
    (*(v25 + 16))(v71, v11, v7);
    sub_1005AC334(0.0);
    sub_10076C33C();
    (*(v25 + 8))(v11, v7);
    sub_10076C2FC();
    v22 = v27;
    v26(v18, v12);
  }

  v28 = sub_10075FF9C();
  v29 = v70;
  if (v28)
  {
    sub_10076BEFC();
    v30 = v73;
    sub_10076D3AC();
    sub_10076D36C();
    v32 = v31;
    (*(v74 + 8))(v30, v29);
    v33 = sub_10075FF4C();

    if (v22 >= v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = v22;
    }

    if (v33)
    {
      v34 = v32;
    }

    v23 = v34 + 0.0;
  }

  else
  {
    v23 = 0.0;
  }

  v35 = sub_10075FF6C();
  v36 = [v35 length];

  if (v36 < 1)
  {

    return v23;
  }

  sub_100770ACC();
  sub_10075FF7C();
  if (v37)
  {
    if (qword_100940F68 != -1)
    {
      swift_once();
    }

    v38 = sub_10076D3DC();
    sub_10000A61C(v38, qword_1009A1C30);
    swift_getKeyPath();
    sub_10076338C();

    v39 = sub_10076C04C();
    v77 = v39;
    v78 = sub_100186DB4(&qword_100943230, &type metadata accessor for Feature);
    v40 = sub_10000DB7C(aBlock);
    (*(*(v39 - 8) + 104))(v40, enum case for Feature.measurement_with_labelplaceholder(_:), v39);
    sub_10076C90C();
    sub_10000CD74(aBlock);
    sub_10076991C();
    swift_unknownObjectRelease();
  }

  v41 = sub_10075FF6C();

  swift_getKeyPath();
  sub_10076338C();

  v42 = v80;
  v43 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v41];
  v44 = [v41 length];
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  *(v45 + 24) = v42;
  *(v45 + 32) = v43;
  *(v45 + 40) = 1;
  v46 = swift_allocObject();
  v46[2] = sub_1000275EC;
  v46[3] = v45;
  v78 = sub_1000ACB04;
  v79 = v46;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026610;
  v77 = &unk_10088AB28;
  v47 = _Block_copy(aBlock);
  v48 = v42;
  v49 = v43;

  [v41 enumerateAttributesInRange:0 options:v44 usingBlock:{0x100000, v47}];

  _Block_release(v47);
  LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

  if (v41)
  {
    __break(1u);
    goto LABEL_29;
  }

  v50 = qword_100940F60;
  v46 = v49;
  if (v50 != -1)
  {
LABEL_29:
    swift_once();
  }

  v51 = sub_10076D3DC();
  v52 = sub_10000A61C(v51, qword_1009A1C18);
  v53 = *(v51 - 8);
  v54 = v68;
  (*(v53 + 16))(v68, v52, v51);
  (*(v53 + 56))(v54, 0, 1, v51);
  swift_getKeyPath();
  sub_10076338C();

  v55 = sub_10076C04C();
  v77 = v55;
  v78 = sub_100186DB4(&qword_100943230, &type metadata accessor for Feature);
  v56 = sub_10000DB7C(aBlock);
  (*(*(v55 - 8) + 104))(v56, enum case for Feature.measurement_with_labelplaceholder(_:), v55);
  sub_10076C90C();
  sub_10000CD74(aBlock);
  sub_10076990C();
  v58 = v57;

  swift_unknownObjectRelease();
  sub_1000276DC(v54);
  if (qword_10093F990 != -1)
  {
    swift_once();
  }

  v59 = sub_10076D9AC();
  sub_10000A61C(v59, qword_10099D738);
  swift_getKeyPath();
  sub_10076338C();

  sub_10076D42C();
  v61 = v60;
  swift_unknownObjectRelease();
  v62 = v58 + v23 + v61;
  if (qword_10093F998 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v59, qword_10099D750);
  swift_getKeyPath();
  sub_10076338C();

  sub_10076D3FC();
  v64 = v63;
  swift_unknownObjectRelease();

  return v62 + v64;
}

uint64_t sub_100186D40()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100186D98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100186DB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100186E10()
{
  v1 = v0;
  v2 = sub_10000A5D4(&qword_1009459C0);
  __chkstk_darwin(v2 - 8);
  v4 = v8 - v3;
  v8[1] = sub_100760F2C();
  sub_10076083C();
  sub_10076F64C();
  sub_100187734(&qword_1009467D0, &type metadata accessor for LinkableText);
  sub_10076F56C();

  v5 = sub_10000A5D4(&qword_1009459B8);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyFooterCollectionViewCell_bodyText;
  swift_beginAccess();
  sub_10018718C(v4, v1 + v6);
  swift_endAccess();
  sub_1006DB580();
  return sub_1001871FC(v4);
}

uint64_t sub_100186FB4()
{
  v0 = sub_10077164C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100941200 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D9AC();
  sub_10000A61C(v4, qword_1009A2380);
  sub_10076D17C();
  sub_10076D40C();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_10018718C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_1009459C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001871FC(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_1009459C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_100187264(void *a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v33[0] = a1;
  v7 = sub_100764FDC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100764FFC();
  v34 = *(v11 - 8);
  v35 = v11;
  __chkstk_darwin(v11);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076997C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005312C();
  if (qword_100940DB8 != -1)
  {
    swift_once();
  }

  v18 = sub_10076D3DC();
  sub_10000A61C(v18, qword_1009A1720);
  v19 = [a5 traitCollection];
  v33[1] = a5;
  v20 = v19;
  v21 = sub_100770B3C();

  sub_100760F2C();
  sub_10076081C();

  v22 = sub_10075F9DC();

  v23 = sub_10076C04C();
  v38 = v23;
  v39 = sub_100187734(&qword_100943230, &type metadata accessor for Feature);
  v24 = sub_10000DB7C(v37);
  (*(*(v23 - 8) + 104))(v24, enum case for Feature.measurement_with_labelplaceholder(_:), v23);
  v33[0] = v22;
  v25 = v21;
  sub_10076C90C();
  sub_10000CD74(v37);
  sub_10076993C();
  sub_10076994C();
  (*(v15 + 8))(v17, v14);
  if (qword_100941530 != -1)
  {
    swift_once();
  }

  v26 = sub_10000A61C(v7, qword_1009A32C0);
  (*(v8 + 16))(v10, v26, v7);
  v27 = v38;
  v28 = v39;
  v29 = sub_10000CF78(v37, v38);
  v36[3] = v27;
  v36[4] = *(v28 + 8);
  v30 = sub_10000DB7C(v36);
  (*(*(v27 - 8) + 16))(v30, v29, v27);
  sub_100764FEC();
  sub_100187734(&unk_100944440, &type metadata accessor for PrivacyFooterLayout);
  v31 = v35;
  sub_10076D2AC();

  (*(v34 + 8))(v13, v31);
  sub_10000CD74(v37);
  return a2;
}

uint64_t sub_100187734(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1001879B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GradientSectionBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100187A20(uint64_t a1)
{
  v3 = sub_10076A05C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v47 - v8;
  v10 = sub_1007621EC();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = (&v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v14, a1, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == enum case for ShelfBackground.color(_:))
  {
    (*(v11 + 96))(v14, v10);
    v16 = *v14;
    v17 = *(sub_10000A5D4(&unk_100950670) + 48);
    v18 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension29GradientSectionBackgroundView_gradientView);
    v19 = [v18 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.0}];

    v20 = [v18 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];

    sub_10000A5D4(&unk_100942870);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100785D70;
    *(v21 + 32) = v16;
    *(v21 + 40) = v16;
    *&v18[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = v21;
    v22 = v16;

    sub_1001C05B8();

    v23 = sub_1007659CC();
    return (*(*(v23 - 8) + 8))(v14 + v17, v23);
  }

  else if (v15 == enum case for ShelfBackground.gradient(_:))
  {
    (*(v11 + 96))(v14, v10);
    v25 = *v14;
    v26 = sub_10000A5D4(&qword_10094B500);
    v27 = v26[12];
    v28 = v26[16];
    v48 = v26[20];
    v29 = *(v4 + 32);
    v29(v9, v14 + v27, v3);
    v29(v6, v14 + v28, v3);
    v30 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension29GradientSectionBackgroundView_gradientView);
    sub_10076A04C();
    v32 = v31;
    v34 = v33;
    v35 = [v30 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v32, v34}];

    sub_10076A04C();
    v37 = v36;
    v39 = v38;
    v40 = [v30 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v37, v39}];

    *&v30[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = v25;

    sub_1001C05B8();
    v41 = *(v4 + 8);
    v41(v6, v3);
    v41(v9, v3);
    v42 = sub_1007659CC();
    return (*(*(v42 - 8) + 8))(v14 + v48, v42);
  }

  else
  {
    v43 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension29GradientSectionBackgroundView_gradientView);
    v44 = [v43 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.0}];

    v45 = [v43 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];

    sub_10000A5D4(&unk_100942870);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_100785D70;
    sub_1000325F0();
    *(v46 + 32) = sub_100770D2C();
    *(v46 + 40) = sub_100770D2C();
    *&v43[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = v46;

    sub_1001C05B8();
    return (*(v11 + 8))(v14, v10);
  }
}

char *sub_100188078(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10075FEEC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&qword_1009473D0);
  __chkstk_darwin(v15 - 8);
  v17 = &v38 - v16;
  v18 = OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_itemLayoutContext;
  v19 = sub_10076341C();
  (*(*(v19 - 8) + 56))(&v5[v18], 1, 1, v19);
  v20 = OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_condensedAdLockupWithIconBackgroundView;
  type metadata accessor for CondensedAdLockupWithIconBackgroundView();
  *&v5[v20] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v21 = OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_shadowView;
  sub_10075F99C();
  *&v5[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsCalculator] = 0;
  v22 = &v5[OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsUpdateBlock];
  *v22 = 0;
  *(v22 + 1) = 0;
  v38.receiver = v5;
  v38.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v38, "initWithFrame:", a1, a2, a3, a4);
  v24 = OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_shadowView;
  v25 = *&v23[OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_shadowView];
  v26 = qword_10093F920;
  v27 = v23;
  v28 = v25;
  if (v26 != -1)
  {
    swift_once();
  }

  v29 = sub_10076BCFC();
  v30 = sub_10000A61C(v29, qword_10099D600);
  v31 = *(v29 - 8);
  (*(v31 + 16))(v17, v30, v29);
  (*(v31 + 56))(v17, 0, 1, v29);
  sub_10075F97C();

  v32 = *&v23[v24];
  (*(v12 + 104))(v14, enum case for CornerStyle.continuous(_:), v11);
  v33 = v32;
  sub_10075F98C();

  (*(v12 + 8))(v14, v11);
  [v27 addSubview:*&v23[v24]];
  v34 = [v27 contentView];
  [v34 setClipsToBounds:1];

  v35 = OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_condensedAdLockupWithIconBackgroundView;
  [*&v27[OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_condensedAdLockupWithIconBackgroundView] setClipsToBounds:1];
  v36 = [v27 contentView];

  [v36 addSubview:*&v27[v35]];
  return v27;
}

uint64_t sub_1001885F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10076C38C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076A7DC();
  sub_100189144(&qword_10094B558, &type metadata accessor for CondensedAdLockupWithIconBackground);
  result = sub_10076332C();
  v9 = v11;
  if (v11)
  {
    swift_getKeyPath();
    sub_10076338C();

    sub_1005CAE80(v9, v7, a2);
    (*(v5 + 8))(v7, v4);
    [v2 setNeedsLayout];
  }

  return result;
}

void sub_100188784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5 - 8];
  v7 = sub_10076F7FC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10000A570(a3, v14);
      sub_10000A5D4(&qword_1009575A0);
      sub_10076A7DC();
      if (swift_dynamicCast())
      {
        sub_10076A7CC();

        sub_10076BACC();
        if ((*(v8 + 48))(v6, 1, v7) == 1)
        {

          sub_10000CFBC(v6, &qword_1009492E0);
        }

        else
        {
          (*(v8 + 32))(v10, v6, v7);
          [v12 bounds];
          sub_1007660EC();

          (*(v8 + 8))(v10, v7);
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell()
{
  result = qword_10094B540;
  if (!qword_10094B540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100188AFC()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100188BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100189144(&qword_10094B550, type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100188C48@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_100188CA0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_100188D60()
{
  v1 = v0;
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "prepareForReuse");
  sub_10075FCAC();
  v2 = OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *&v1[v2] = 0;
}

uint64_t sub_100188E3C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_100188EF4()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001CE50(*v1);
  return v2;
}

uint64_t sub_100188F50(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6);
}

void (*sub_100189010(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_10000A570(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_100012498(v6, v4 + 32);
  return sub_100189248;
}

uint64_t sub_100189144(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100189190()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001891C8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100189200()
{

  sub_10000CD74(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

void sub_100189254()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_itemLayoutContext;
  v2 = sub_10076341C();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_condensedAdLockupWithIconBackgroundView;
  type metadata accessor for CondensedAdLockupWithIconBackgroundView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_shadowView;
  sub_10075F99C();
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsCalculator) = 0;
  v5 = (v0 + OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsUpdateBlock);
  *v5 = 0;
  v5[1] = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_100189368()
{
  sub_10000A5D4(&qword_10094B630);
  sub_100071820(&qword_10094B638, &qword_10094B630);
  sub_10076A64C();
  sub_10000A5D4(&unk_100950690);
  sub_10000A5D4(&qword_10094B640);
  if (swift_dynamicCast())
  {
    sub_10000CF78(&v2, *(&v3 + 1));
    sub_10076208C();
    sub_10000CD74(&v2);
  }

  else
  {
    v4 = 0;
    v2 = 0u;
    v3 = 0u;
    sub_10000CFBC(&v2, &unk_1009506A0);
  }

  type metadata accessor for TodayCardGridTracker();
  result = sub_10076F5AC();
  if (v1)
  {
    swift_beginAccess();
    *(v1 + 16) = &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_1001894EC()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v13 = v1;
    v2 = [v13 layer];
    [v2 setShadowOffset:{0.0, 8.0}];

    v3 = [v13 layer];
    v4 = [objc_opt_self() blackColor];
    v5 = [v4 colorWithAlphaComponent:0.3];

    v6 = [v5 CGColor];
    [v3 setShadowColor:v6];

    v7 = [v13 layer];
    [v7 setShadowRadius:10.0];

    v8 = [v13 layer];
    LODWORD(v9) = 1.0;
    [v8 setShadowOpacity:v9];

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = [Strong view];

      [v12 addSubview:v13];
    }
  }
}

void sub_1001896D8()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v13 = v1;
    v2 = [v13 layer];
    [v2 setShadowOffset:{0.0, 8.0}];

    v3 = [v13 layer];
    v4 = [objc_opt_self() blackColor];
    v5 = [v4 colorWithAlphaComponent:0.3];

    v6 = [v5 CGColor];
    [v3 setShadowColor:v6];

    v7 = [v13 layer];
    [v7 setShadowRadius:10.0];

    v8 = [v13 layer];
    LODWORD(v9) = 1.0;
    [v8 setShadowOpacity:v9];

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = [Strong view];

      [v12 addSubview:v13];
    }
  }
}

void sub_1001898C4()
{
  v1 = sub_10000A5D4(&qword_10094B618);
  __chkstk_darwin(v1 - 8);
  v3 = &v32 - v2;
  v4 = sub_10000A5D4(&qword_10094B620);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - v6;
  v8 = sub_10076E3AC();
  __chkstk_darwin(v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v34 = Strong;
  v33 = [Strong view];
  if (v33)
  {
    v10 = [v34 collectionView];
    if (v10)
    {
      v11 = v10;
      if (*(v0 + 48) && (*(v0 + 72) & 1) == 0)
      {
        if ((*(v0 + 72) & 0x100) != 0)
        {
          v16 = *(v0 + 64) + -1.0;
        }

        else
        {
          v16 = *(v0 + 56);
        }

        [v10 frame];
        v13 = v19;
        v15 = v20;
        [v33 bounds];
        Width = CGRectGetWidth(v39);
        if (v16 >= Width)
        {
          v16 = Width;
        }

        [v33 bounds];
        MinX = CGRectGetMidX(v40) + v16 * -0.5;
      }

      else
      {
        [v10 frame];
        v13 = v12;
        v15 = v14;
        [v33 bounds];
        v16 = CGRectGetWidth(v37);
        [v33 bounds];
        MinX = CGRectGetMinX(v38);
      }

      [v11 setFrame:{MinX, v13, v16, v15}];

      v22 = *(v0 + 24);
      if (v22)
      {
        [v22 updateConfiguration];
      }

      if (*(v0 + 48) && (v23 = *(v0 + 74), v23 != 2) && (v23 & 1) != 0)
      {
        v24 = v11;
        sub_100770C0C();
        sub_10076E35C();
        sub_100770C1C();

        sub_10076F73C();
        sub_10076F70C();
        if (qword_1009406B8 != -1)
        {
          swift_once();
        }

        v25 = sub_10000A61C(v4, qword_1009A0298);
        (*(v5 + 16))(v7, v25, v4);
        v26 = ASKDeviceTypePhone;
        v35[0] = ASKDeviceTypePhone;
        type metadata accessor for DeviceType(0);
        v27 = v26;
        sub_10076F42C();
      }

      else
      {
        sub_10076E59C();
        v28 = v11;
        sub_100770C0C();
        sub_10076E39C();
        sub_100770C1C();

        sub_10076F73C();
        sub_10076F70C();
        if (qword_1009406B8 != -1)
        {
          swift_once();
        }

        v29 = sub_10000A61C(v4, qword_1009A0298);
        v35[3] = v4;
        v35[4] = sub_100071820(&qword_10094B628, &qword_10094B620);
        v30 = sub_10000DB7C(v35);
        (*(v5 + 16))(v30, v29, v4);
        sub_10076F71C();

        sub_10000CD74(v35);
      }

      sub_100189368();
      v31 = sub_10000A5D4(&qword_100950560);
      (*(*(v31 - 8) + 56))(v3, 1, 1, v31);
      sub_1006DF898(v3);
      sub_10000CFBC(v3, &qword_10094B618);
      [v11 reloadData];

      return;
    }

    v18 = v33;
  }

  else
  {
    v18 = v34;
  }
}

uint64_t sub_100189E74(uint64_t a1)
{
  v3 = *(v1 + 40);
  v2 = *(v1 + 48);
  v4 = *(a1 + 16);
  *(v1 + 40) = *a1;
  *(v1 + 56) = v4;
  *(v1 + 71) = *(a1 + 31);
  if (!*(a1 + 8) || (v6 = *(v1 + 40), v5 = *(v1 + 48), , !v5))
  {
    if (!v2)
    {
      goto LABEL_12;
    }

LABEL_11:
    sub_1001898C4();
    goto LABEL_12;
  }

  if (!v2)
  {

    goto LABEL_11;
  }

  if (v6 == v3 && v2 == v5)
  {

    goto LABEL_12;
  }

  v7 = sub_10077167C();

  if ((v7 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
}

void sub_100189F48()
{
  v1 = sub_100770F9C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10077111C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v63 - v10;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = [Strong view];

    if (v14)
    {
      if ((sub_1001E7518() & 1) != 0 && !*(v0 + 24))
      {
        v72 = v2;
        v24 = [v14 window];
        v69 = v6;
        v70 = v5;
        v71 = v8;
        if (v24 && (v25 = v24, v26 = [v24 windowScene], v25, v26))
        {
          v27 = [v26 screen];

          [v27 bounds];
          v29 = v28;
          v31 = v30;
        }

        else
        {
          [v14 bounds];
          v29 = v32;
          v31 = v33;
        }

        v34 = 0;
        v35 = _swiftEmptyArrayStorage;
        v36 = 19;
        if (v29 <= v31)
        {
          v29 = v31;
        }

        v73 = v0;
        aBlock[0] = _swiftEmptyArrayStorage;
        v37 = v72;
        v68 = v14;
LABEL_15:
        if (v34 > 0x13)
        {
          v36 = v34;
        }

        v38 = v36 + 1;
        v39 = (&off_100882E28 + 5 * v34);
        while (v34 != 19)
        {
          if (v38 == ++v34)
          {
            __break(1u);
            return;
          }

          v40 = (v39 + 5);
          v41 = *(v39 + 6);
          v42 = *(v39 + 64);
          v43 = v41;
          if (v42)
          {
            v43 = v29;
          }

          v39 += 5;
          if (v43 <= v29)
          {
            v44 = *(v40 + 26);
            v65 = *(v40 + 25);
            v66 = v44;
            v64 = v40[2];
            v46 = *(v40 - 1);
            v45 = *v40;
            v67 = sub_100016F40(0, &qword_1009641D0);
            v47 = swift_allocObject();
            swift_weakInit();
            v48 = swift_allocObject();
            *(v48 + 16) = v47;
            *(v48 + 24) = v46;
            *(v48 + 32) = v45;
            *(v48 + 40) = v41;
            *(v48 + 48) = v64;
            *(v48 + 56) = v42;
            v49 = v66;
            *(v48 + 57) = v65;
            *(v48 + 58) = v49;
            swift_bridgeObjectRetain_n();
            sub_100770F1C();
            sub_10077019C();
            if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_10077021C();
            }

            sub_10077025C();
            v35 = aBlock[0];
            v37 = v72;
            v36 = 19;
            goto LABEL_15;
          }
        }

        sub_100016F40(0, &qword_100946818);
        v76._object = 0x80000001007D6F80;
        v76._countAndFlagsBits = 0xD000000000000011;
        v77.value._countAndFlagsBits = 0;
        v77.value._object = 0;
        v75.value.super.isa = 0;
        v75.is_nil = 0;
        v50.value = 32;
        isa = sub_100770B5C(v76, v77, v75, v50, 0xFFFFFFFFFFFFFFFFLL, v35, v62).super.super.isa;
        v67 = isa;
        sub_10077110C();
        sub_1007710EC();
        v52 = sub_10076FF6C();
        v53 = [objc_opt_self() systemImageNamed:v52];

        sub_1007710BC();
        sub_100770FBC();
        sub_100770FFC();
        (*(v37 + 104))(v4, enum case for UIButton.Configuration.CornerStyle.large(_:), v1);
        sub_100770FAC();
        v54 = objc_opt_self();
        v55 = [v54 systemBlueColor];
        sub_10077103C();
        v56 = [v54 whiteColor];
        sub_10077104C();
        v57 = swift_allocObject();
        swift_weakInit();
        sub_100016F40(0, &qword_100947240);
        v6 = v69;
        v5 = v70;
        (*(v69 + 16))(v71, v11, v70);
        v58 = sub_10077112C();
        [v58 setMenu:isa];
        [v58 setShowsMenuAsPrimaryAction:1];
        aBlock[4] = sub_10018B320;
        aBlock[5] = v57;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100177EA0;
        aBlock[3] = &unk_10088AC90;
        v59 = _Block_copy(aBlock);

        v2 = v72;

        [v58 setConfigurationUpdateHandler:v59];
        _Block_release(v59);
        v60 = *(v73 + 24);
        *(v73 + 24) = v58;
        v61 = v58;

        v8 = v71;
        sub_1001894EC();
        v0 = v73;

        v14 = v68;

        (*(v6 + 8))(v11, v5);
        if (sub_1001E753C())
        {
          goto LABEL_6;
        }
      }

      else if (sub_1001E753C())
      {
LABEL_6:
        if (!*(v0 + 32))
        {
          sub_10077110C();
          v73 = v0;
          sub_1007710EC();
          v15 = sub_10076FF6C();
          v16 = [objc_opt_self() systemImageNamed:v15];

          sub_1007710BC();
          sub_100770FBC();
          sub_100770FFC();
          (*(v2 + 104))(v4, enum case for UIButton.Configuration.CornerStyle.large(_:), v1);
          sub_100770FAC();
          v17 = objc_opt_self();
          v18 = [v17 systemRedColor];
          sub_10077103C();
          v19 = [v17 whiteColor];
          sub_10077104C();
          sub_100016F40(0, &qword_100947240);
          (*(v6 + 16))(v8, v11, v5);
          sub_100016F40(0, &qword_1009641D0);
          sub_100770F1C();
          v20 = sub_10077112C();
          v21 = *(v73 + 32);
          *(v73 + 32) = v20;
          v22 = v6;
          v23 = v20;

          sub_1001896D8();
          (*(v22 + 8))(v11, v5);
          return;
        }
      }
    }
  }
}

uint64_t sub_10018A868(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  v5 = a3[2];
  v6 = a3[3];
  v7 = *(a3 + 32);
  v8 = *(a3 + 33);
  v9 = *(a3 + 34);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v8)
    {
      v11 = 256;
    }

    else
    {
      v11 = 0;
    }

    v12[0] = v4;
    v12[1] = v3;
    v12[2] = v5;
    v12[3] = v6;
    v14 = v9;
    v13 = v11 | v7;

    sub_100189E74(v12);
  }

  return result;
}

uint64_t sub_10018A918()
{
  v0 = sub_10000A5D4(&unk_10095B400);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v9 - v4;
  sub_10077113C();
  v6 = sub_10077111C();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    sub_10014D2A4(v5, v2);
    sub_10077114C();
    return sub_10000CFBC(v5, &unk_10095B400);
  }

  else
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if (*(Strong + 48))
      {
      }
    }

    sub_1007710EC();
    return sub_10077114C();
  }
}

void sub_10018AAC0()
{
  v0 = [objc_opt_self() sharedURLCache];
  [v0 removeAllCachedResponses];

  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  v2 = sub_10076FF6C();
  CFNotificationCenterPostNotification(v1, v2, 0, 0, 1u);

  v3 = [objc_opt_self() sharedCoordinator];
  [v3 notify];
}

void sub_10018ABAC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v68 = [Strong view];

    if (v68)
    {
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        v4 = v3;
        v5 = [v3 traitCollection];

        if (v5)
        {
          v6 = *(v0 + 24);
          v7 = &selRef_initWithTabBarSystemItem_tag_;
          v8 = &selRef__setPocketInsets_;
          if (v6)
          {
            v9 = v6;
            [v68 bounds];
            [v9 sizeThatFits:{v10, v11}];
            v13 = v12;
            v15 = v14;
            [v68 bounds];
            v16 = CGRectGetMaxX(v70) - v13;
            if (qword_100941218 != -1)
            {
              swift_once();
            }

            v17 = sub_10076D9AC();
            sub_10000A61C(v17, qword_1009A23C8);
            sub_10076DEDC();
            sub_10000A5D4(&unk_100942870);
            v18 = swift_allocObject();
            v67 = xmmword_1007841E0;
            *(v18 + 16) = xmmword_1007841E0;
            *(v18 + 32) = v5;
            v19 = v5;
            v20 = sub_10076DEEC();
            sub_10076D3EC();
            v22 = v21;

            v23 = v16 - v22;
            [v68 bounds];
            MaxY = CGRectGetMaxY(v71);
            [v68 safeAreaInsets];
            v26 = MaxY - v25 - v15;
            v27 = swift_allocObject();
            *(v27 + 16) = xmmword_1007841E0;
            *(v27 + 32) = v19;
            v28 = v19;
            v29 = sub_10076DEEC();
            sub_10076D3EC();
            v31 = v30;

            v7 = &selRef_initWithTabBarSystemItem_tag_;
            [v9 setFrame:{v23, v26 - v31, v13, v15}];

            v8 = &selRef__setPocketInsets_;
            [v68 bringSubviewToFront:v9];
          }

          v32 = *(v0 + 32);
          if (v32)
          {
            v33 = v32;
            [v68 bounds];
            [v33 sizeThatFits:{v34, v35}];
            v37 = v36;
            v39 = v38;
            v40 = *(v0 + 24);
            if (v40)
            {
              v41 = v40;
              [v41 frame];
              v42 = CGRectGetMinX(v72) - v37;
              if (qword_100941208 != -1)
              {
                swift_once();
              }

              v43 = sub_10076D9AC();
              sub_10000A61C(v43, qword_1009A2398);
              sub_10076DEDC();
              sub_10000A5D4(&unk_100942870);
              v44 = swift_allocObject();
              *(v44 + 16) = xmmword_1007841E0;
              *(v44 + 32) = v5;
              v45 = v5;
              v46 = sub_10076DEEC();
              sub_10076D3EC();
              v48 = v47;
            }

            else
            {
              [v68 bounds];
              v42 = CGRectGetMaxX(v73) - v37;
              if (qword_100941218 != -1)
              {
                swift_once();
              }

              v49 = sub_10076D9AC();
              sub_10000A61C(v49, qword_1009A23C8);
              sub_10076DEDC();
              sub_10000A5D4(&unk_100942870);
              v50 = swift_allocObject();
              *(v50 + 16) = xmmword_1007841E0;
              *(v50 + 32) = v5;
              v51 = v5;
              v52 = sub_10076DEEC();
              sub_10076D3EC();
              v48 = v53;
            }

            v54 = v42 - v48;
            v55 = *(v0 + 24);
            if (v55)
            {
              v56 = v55;
              [v56 frame];
              MinY = CGRectGetMinY(v74);
            }

            else
            {
              [v68 bounds];
              v58 = CGRectGetMaxY(v75);
              [v68 safeAreaInsets];
              v60 = v58 - v59 - v39;
              if (qword_100941218 != -1)
              {
                swift_once();
              }

              v61 = sub_10076D9AC();
              sub_10000A61C(v61, qword_1009A23C8);
              sub_10076DEDC();
              sub_10000A5D4(&unk_100942870);
              v62 = swift_allocObject();
              *(v62 + 16) = xmmword_1007841E0;
              *(v62 + 32) = v5;
              v63 = v5;
              v64 = sub_10076DEEC();
              sub_10076D3EC();
              v66 = v65;

              MinY = v60 - v66;
            }

            [v33 v7[217]];

            [v68 v8[46]];
          }
        }
      }
    }
  }
}

uint64_t sub_10018B1E4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_10018B258()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10018B290()
{

  return _swift_deallocObject(v0, 59, 7);
}

uint64_t sub_10018B2D0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 56);
  v5 = *(v1 + 57);
  v6 = *(v1 + 58);
  v8[0] = *(v1 + 24);
  v8[1] = v3;
  v9 = *(v1 + 40);
  v10 = v4;
  v11 = v5;
  v12 = v6;
  return sub_10018A868(a1, v2, v8);
}

uint64_t sub_10018B328(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10018B354()
{
  result = qword_10094B648;
  if (!qword_10094B648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094B648);
  }

  return result;
}

uint64_t MetadataRibbonBarViewLayout.Metrics.standard.unsafeMutableAddressor()
{
  if (qword_10093F958 != -1)
  {
    swift_once();
  }

  v0 = sub_100768F5C();

  return sub_10000A61C(v0, static MetadataRibbonBarViewLayout.Metrics.standard);
}

char *sub_10018B40C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_100768F5C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v42[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_metrics;
  if (qword_10093F958 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v11, static MetadataRibbonBarViewLayout.Metrics.standard);
  v17 = *(v12 + 16);
  v17(&v5[v15], v16, v11);
  v18 = &v5[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_id];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 4) = 0;
  v19 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_itemType;
  v20 = sub_1007668DC();
  (*(*(v20 - 8) + 56))(&v5[v19], 1, 1, v20);
  v21 = &v5[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_labelMaxWidth];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v5[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_truncationLegibilityThreshold];
  *v22 = 0;
  v22[8] = 1;
  v5[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_allowsTruncation] = 2;
  sub_1007626BC();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_dividerLabel] = sub_10076269C();
  v43.receiver = v5;
  v43.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v43, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_dividerLabel;
  v29 = *&v27[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_dividerLabel];
  v30 = objc_opt_self();
  v31 = v29;
  v32 = [v30 separatorColor];
  [v31 setTextColor:v32];

  v33 = *&v27[v28];
  v17(v14, &v27[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_metrics], v11);
  v34 = v33;
  v35 = sub_100768F4C();
  (*(v12 + 8))(v14, v11);
  [v34 setNumberOfLines:v35];

  v36 = *&v27[v28];
  sub_10076D84C();
  if (qword_10093F698 != -1)
  {
    swift_once();
  }

  v37 = sub_10076715C();
  v38 = sub_10000A61C(v37, qword_10099CE38);
  v42[3] = v37;
  v42[4] = sub_10018CD1C();
  v39 = sub_10000DB7C(v42);
  (*(*(v37 - 8) + 16))(v39, v38, v37);
  sub_1007625FC();

  [v27 addSubview:*&v27[v28]];
  return v27;
}

uint64_t sub_10018B854()
{
  ObjectType = swift_getObjectType();
  v18 = sub_10076D1FC();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100768F5C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100768F6C();
  v9 = *(v17 - 8);
  *&v10 = __chkstk_darwin(v17).n128_u64[0];
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v0;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "layoutSubviews", v10);
  v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_dividerLabel];
  v20 = sub_1007626BC();
  v21 = &protocol witness table for UILabel;
  v19 = v13;
  (*(v6 + 16))(v8, &v0[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_metrics], v5);
  v14 = v13;
  sub_100768F0C();
  sub_10076422C();
  sub_100768F2C();
  (*(v2 + 8))(v4, v18);
  return (*(v9 + 8))(v12, v17);
}

uint64_t sub_10018BDE8()
{
  sub_10076438C();
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_dividerLabel];
  if (v2)
  {
    v3 = sub_10076FF6C();
  }

  else
  {
    v3 = 0;
  }

  [v1 setText:v3];

  [v0 setNeedsLayout];
}

uint64_t sub_10018BE7C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_itemType;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &qword_100943318);
}

uint64_t sub_10018BEE4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_itemType;
  swift_beginAccess();
  sub_10003837C(a1, v1 + v3, &qword_100943318);
  return swift_endAccess();
}

uint64_t sub_10018BFC0(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_labelMaxWidth;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_10018C08C(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_truncationLegibilityThreshold;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_10018C14C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10018C190(char a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_allowsTruncation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10018C240@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_id;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &qword_100943310);
}

uint64_t sub_10018C2A8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_id;
  swift_beginAccess();
  sub_10003837C(a1, v1 + v3, &qword_100943310);
  return swift_endAccess();
}

uint64_t sub_10018C378()
{
  v0 = sub_10000A5D4(&unk_100942850);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - v2;
  v4 = sub_100768F5C();
  sub_10000DB18(v4, static MetadataRibbonBarViewLayout.Metrics.standard);
  sub_10000A61C(v4, static MetadataRibbonBarViewLayout.Metrics.standard);
  sub_10000A5D4(&unk_100943120);
  sub_10075FECC();
  sub_100768F3C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t static MetadataRibbonBarViewLayout.Metrics.standard.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10093F958 != -1)
  {
    swift_once();
  }

  v2 = sub_100768F5C();
  v3 = sub_10000A61C(v2, static MetadataRibbonBarViewLayout.Metrics.standard);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t type metadata accessor for MetadataRibbonBarView()
{
  result = qword_10094B688;
  if (!qword_10094B688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10018C5B4()
{
  sub_100768F5C();
  if (v0 <= 0x3F)
  {
    sub_100038324();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10018C6A8()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_metrics;
  if (qword_10093F958 != -1)
  {
    swift_once();
  }

  v2 = sub_100768F5C();
  v3 = sub_10000A61C(v2, static MetadataRibbonBarViewLayout.Metrics.standard);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  v4 = v0 + OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_id;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  v5 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_itemType;
  v6 = sub_1007668DC();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = v0 + OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_labelMaxWidth;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v0 + OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_truncationLegibilityThreshold;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_allowsTruncation) = 2;
  sub_10077156C();
  __break(1u);
}

double sub_10018C828(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v31 = a1;
  v2 = sub_100768F5C();
  v34 = *(v2 - 8);
  __chkstk_darwin(v2);
  v33 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100768F6C();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v32 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10076DA7C();
  v29 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076DD3C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  __chkstk_darwin(v15);
  v17 = &v27 - v16;
  if (qword_10093F958 != -1)
  {
    swift_once();
  }

  v18 = sub_10000A61C(v2, static MetadataRibbonBarViewLayout.Metrics.standard);
  sub_10076DD2C();
  sub_10076D84C();
  v28 = v2;
  if (qword_10093F698 != -1)
  {
    swift_once();
  }

  v19 = sub_10076715C();
  v20 = sub_10000A61C(v19, qword_10099CE38);
  v39[3] = v19;
  v39[4] = sub_10018CD1C();
  v21 = sub_10000DB7C(v39);
  (*(*(v19 - 8) + 16))(v21, v20, v19);
  sub_10076DC8C();
  v22 = *(v9 + 8);
  v22(v11, v8);
  sub_10000CD74(v39);
  sub_100768F4C();
  sub_10076DD1C();
  v22(v14, v8);
  sub_10076438C();
  (*(v9 + 16))(v14, v17, v8);
  sub_10076DA5C();
  sub_10076DA9C();
  sub_10076DA4C();
  (*(v29 + 8))(v7, v30);
  sub_10000A570(v39, v38);
  (*(v34 + 16))(v33, v18, v28);
  v23 = v32;
  sub_100768F0C();
  sub_100768F1C();
  v25 = v24;
  (*(v35 + 8))(v23, v36);
  sub_10000CD74(v39);
  v22(v17, v8);
  return v25;
}

unint64_t sub_10018CD1C()
{
  result = qword_10094B6A0;
  if (!qword_10094B6A0)
  {
    sub_10076715C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094B6A0);
  }

  return result;
}

uint64_t sub_10018CD74(void *a1)
{
  if (*v1 == *a1)
  {
    return sub_1007713EC();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10018CE00()
{
  sub_100016C74(v0 + 16);

  return swift_deallocClassInstance();
}

Swift::Int sub_10018CE5C()
{
  v1 = *v0;
  sub_10077175C();
  (*(*v1 + 104))(v3);
  return sub_1007717AC();
}

Swift::Int sub_10018CF04()
{
  sub_10077175C();
  (*(**v0 + 104))(v2);
  return sub_1007717AC();
}

unint64_t sub_10018CFB4()
{
  result = qword_10094B760;
  if (!qword_10094B760)
  {
    type metadata accessor for DebugSetting();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094B760);
  }

  return result;
}

void sub_10018D048(uint64_t a1, uint64_t (*a2)(void), void *a3)
{
  v5 = objc_opt_self();
  sub_1000325F0();
  v6 = a2();
  v7 = [v5 _effectWithTintColor:v6];

  *a3 = v7;
}

void sub_10018D0DC(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for PaletteBackgroundView();
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  sub_10018D130();
}

id sub_10018D130()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21PaletteBackgroundView_blurEffectOverride];
  if (!v1)
  {
    v2 = [v0 traitCollection];
    v3 = [v2 userInterfaceStyle];

    if (v3 == 2)
    {
      if (qword_10093F968 != -1)
      {
        swift_once();
      }

      v4 = &qword_10099D690;
    }

    else
    {
      if (qword_10093F960 != -1)
      {
        swift_once();
      }

      v4 = &qword_10099D688;
    }

    v1 = *v4;
  }

  return [v0 setEffect:v1];
}

id sub_10018D308()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaletteBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10018D370(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_configuration;
  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_configuration])
  {
    swift_unknownObjectWeakAssign();

    sub_10018D438();
  }

  *&v1[v3] = a1;

  if (a1)
  {
    sub_10018D76C();
    swift_unknownObjectWeakAssign();
    sub_10018D438();
    [v1 setNeedsLayout];
  }

  return result;
}

void sub_10018D438()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = *(v0 + 40);
    v4 = 1 << *(v3 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v3 + 64);
    v7 = OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_iconViews;

    swift_beginAccess();
    v8 = 0;
    v9 = (v4 + 63) >> 6;
    while (v6)
    {
LABEL_10:
      v11 = (v8 << 9) | (8 * __clz(__rbit64(v6)));
      v12 = *(*(v3 + 48) + v11);
      v13 = *(*(v3 + 56) + v11);
      v14 = *&v2[v7];
      if (v14 >> 62)
      {
        v15 = sub_10077158C();
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v6 &= v6 - 1;
      if ((v12 & 0x8000000000000000) == 0 && v12 < v15)
      {
        swift_beginAccess();
        v16 = *&v2[v7];
        if ((v16 & 0xC000000000000001) != 0)
        {
          v22 = v13;
          v19 = sub_10077149C();
        }

        else
        {
          if (v12 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v17 = *(v16 + 8 * v12 + 32);
          v18 = v13;
          v19 = v17;
        }

        v20 = v19;
        swift_endAccess();
        v21 = v13;
        sub_10075FCAC();
        [v2 setNeedsDisplay];
      }
    }

    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v10 >= v9)
      {

        return;
      }

      v6 = *(v3 + 64 + 8 * v10);
      ++v8;
      if (v6)
      {
        v8 = v10;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }
}

void sub_10018D628(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_iconViews;
  swift_beginAccess();
  v7 = *&v3[v6];
  if (v7 >> 62)
  {
    v8 = sub_10077158C();
    if (a2 < 0)
    {
      return;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a2 < 0)
    {
      return;
    }
  }

  if (v8 > a2)
  {
    swift_beginAccess();
    v9 = *&v3[v6];
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = sub_10077149C();
    }

    else
    {
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __break(1u);
        return;
      }

      v10 = *(v9 + 8 * a2 + 32);
    }

    v11 = v10;
    swift_endAccess();
    v12 = a1;
    sub_10075FCAC();
    [v3 setNeedsDisplay];
  }
}

uint64_t sub_10018D72C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_10018D76C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v39 = sub_10076BCFC();
  v2 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_iconViews;
  result = swift_beginAccess();
  v6 = *&v1[v4];
  if (v6 >> 62)
  {
    result = sub_10077158C();
    v7 = result;
    v8 = &unk_10094B000;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = &unk_10094B000;
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    goto LABEL_30;
  }

  v35 = v2;
  v36 = v4;

  v9 = 0;
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = sub_10077149C();
    }

    else
    {
      v10 = *(v6 + 8 * v9 + 32);
    }

    v11 = v10;
    ++v9;
    v40 = v10;
    swift_beginAccess();
    sub_10000A5D4(&unk_10094B8B0);
    sub_10076E17C();
    swift_endAccess();
  }

  while (v7 != v9);

  v2 = v35;
  v4 = v36;
  v8 = &unk_10094B000;
LABEL_10:
  *&v1[v4] = _swiftEmptyArrayStorage;

  v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_configuration];
  if (!v12)
  {
    return result;
  }

  v13 = *(v12 + 24);
  if (v13 < 0)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  if (v13)
  {
    v14 = v8[244];
    v35 = v2 + 2;
    v36 = v14;
    v34 = (v2 + 1);

    do
    {
      while (1)
      {
        __chkstk_darwin(v15);
        v16 = ObjectType;
        *(&v33 - 2) = v12;
        *(&v33 - 1) = v16;
        swift_beginAccess();
        sub_10000A5D4(&unk_10094B8B0);
        sub_10076E15C();
        swift_endAccess();
        v17 = v40;
        if (*(v12 + 24) == 3)
        {
          v18 = qword_10099D540;
          if (qword_10093F8E0 != -1)
          {
            swift_once();
            v18 = qword_10099D540;
          }
        }

        else
        {
          v18 = qword_10099D528;
          if (qword_10093F8D8 != -1)
          {
            swift_once();
            v18 = qword_10099D528;
          }
        }

        v19 = v39;
        v20 = sub_10000A61C(v39, v18);
        (*v35)(v38, v20, v19);
        v21 = v17;
        v22 = [v21 layer];
        sub_10076BCEC();
        [v22 setShadowOffset:?];

        v23 = [v21 layer];
        v24 = sub_10076BCDC();
        v25 = [v24 CGColor];

        [v23 setShadowColor:v25];
        v26 = [v21 layer];
        sub_10076BCBC();
        [v26 setShadowRadius:?];

        v27 = [v21 layer];
        LODWORD(v28) = 1.0;
        [v27 setShadowOpacity:v28];

        [v21 setClipsToBounds:0];
        swift_beginAccess();
        v29 = v21;
        sub_10077019C();
        if (*((*&v1[v4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();
        swift_endAccess();
        v30 = [v29 superview];

        if (v30)
        {
          sub_100016F40(0, &qword_1009441F0);
          v31 = v1;
          v32 = sub_100770EEC();

          if (v32)
          {
            break;
          }
        }

        [v1 addSubview:v29];

        v15 = (*v34)(v38, v39);
        if (!--v13)
        {
        }
      }

      (*v34)(v38, v39);

      --v13;
    }

    while (v13);
  }

  return result;
}

void sub_10018DFAC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  sub_10075FD2C();
  if (v3 == 1)
  {
    v4 = sub_10075FB1C();
  }

  else
  {
    v4 = sub_10075FB3C();
  }

  v5 = v4;
  sub_100016F40(0, &qword_100942F10);
  sub_100770D5C();
  sub_10075FB8C();
  v6 = v5;
  sub_10075FB9C();
  sub_1007638DC();
  sub_10075FBAC();
  sub_1007638EC();

  *a2 = v6;
}

void sub_10018E05C()
{
  v1 = v0;
  v18.receiver = v0;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_configuration];
  if (v2 && *(v2 + 24) >= 1)
  {
    v3 = OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_iconViews;
    swift_beginAccess();
    v4 = *&v1[v3];
    v5 = v4 >> 62 ? sub_10077158C() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 == *(v2 + 24))
    {
      v6 = *&v1[v3];
      if (v6 >> 62)
      {
        sub_100016F40(0, &qword_1009441F0);

        v7 = sub_10077157C();
      }

      else
      {
        swift_bridgeObjectRetain_n();

        sub_10077168C();
        sub_100016F40(0, &qword_1009441F0);
        v7 = v6;
      }

      if (v1[OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_sizeCategory] == 7)
      {
        v8 = 5;
      }

      else
      {
        v8 = v1[OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_sizeCategory];
      }

      sub_10076422C();
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v17 = [v1 traitCollection];
      sub_1002EEE70(v10, v12, v14, v16, v17, v7, v8);
    }
  }
}

uint64_t sub_10018E290(uint64_t result, double a2, double a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_configuration);
  if (v4 && *(v4 + 24) >= 1)
  {
    v5 = result;
    v8 = OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_iconViews;
    swift_beginAccess();
    v9 = *(v3 + v8);
    result = v9 >> 62 ? sub_10077158C() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result == *(v4 + 24))
    {
      v10 = *(v3 + v8);
      if (v10 >> 62)
      {
        sub_100016F40(0, &qword_1009441F0);

        v11 = sub_10077157C();
      }

      else
      {
        swift_bridgeObjectRetain_n();

        sub_10077168C();
        sub_100016F40(0, &qword_1009441F0);
        v11 = v10;
      }

      if (*(v3 + OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_sizeCategory) == 7)
      {
        v12 = 5;
      }

      else
      {
        v12 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_sizeCategory);
      }

      sub_1002EEFA0(a2, a3, v5, v11, v12);
    }
  }

  return result;
}

uint64_t type metadata accessor for MultiAppFallbackIconView()
{
  result = qword_10094B7D0;
  if (!qword_10094B7D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10018E5B8()
{
  sub_10018E66C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10018E66C()
{
  if (!qword_10094B7E0)
  {
    sub_10000CE78(&qword_10094B7E8);
    sub_10018E6DC();
    v0 = sub_10076E19C();
    if (!v1)
    {
      atomic_store(v0, &qword_10094B7E0);
    }
  }
}

unint64_t sub_10018E6DC()
{
  result = qword_10094B7F0;
  if (!qword_10094B7F0)
  {
    sub_10000CE78(&qword_10094B7E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094B7F0);
  }

  return result;
}

void sub_10018E790(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v4 = type metadata accessor for Accessory();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v29 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10000A5D4(&qword_10094BB50);
  __chkstk_darwin(v7 - 8);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v31 = &v28 - v10;
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  v14 = sub_10000A5D4(&qword_10094BB58);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v28 - v16;
  v18 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessory;
  swift_beginAccess();
  v19 = *(v15 + 56);
  v33 = a1;
  sub_100016E2C(a1, v17, &qword_10094BB50);
  sub_100016E2C(v2 + v18, &v17[v19], &qword_10094BB50);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_10000CFBC(v17, &qword_10094BB50);
      return;
    }
  }

  else
  {
    sub_100016E2C(v17, v13, &qword_10094BB50);
    if (v20(&v17[v19], 1, v4) != 1)
    {
      v26 = v29;
      sub_100199BC0(&v17[v19], v29, type metadata accessor for Accessory);
      v27 = sub_10052A9D0(v13, v26);
      sub_100199AA8(v26, type metadata accessor for Accessory);
      sub_100199AA8(v13, type metadata accessor for Accessory);
      sub_10000CFBC(v17, &qword_10094BB50);
      if (v27)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_100199AA8(v13, type metadata accessor for Accessory);
  }

  sub_10000CFBC(v17, &qword_10094BB58);
LABEL_7:
  v21 = v33;
  v22 = v31;
  sub_100016E2C(v33, v31, &qword_10094BB50);
  swift_beginAccess();
  sub_100199B50(v22, v2 + v18);
  swift_endAccess();
  v23 = v32;
  sub_100016E2C(v21, v32, &qword_10094BB50);
  if (v20(v23, 1, v4) == 1)
  {
    sub_10000CFBC(v23, &qword_10094BB50);
    sub_10018ED24(0);
  }

  else
  {
    sub_100527CDC(v30);
    v25 = v24;
    sub_100199AA8(v23, type metadata accessor for Accessory);
    sub_10018ED24(v25);
  }
}

void sub_10018EBE8(void *a1, uint64_t *a2)
{
  v4 = v2;
  v6 = sub_10076771C();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = *&v4[v11];
  if (v12)
  {
    [v12 removeFromSuperview];
    v13 = *&v4[v11];
  }

  else
  {
    v13 = 0;
  }

  *&v4[v11] = a1;
  v14 = a1;

  if (a1)
  {
    (*(v7 + 104))(v10, enum case for DirectionalTextAlignment.leading(_:), v6);
    sub_10076262C();
    [v4 addSubview:v14];
  }
}

void sub_10018ED24(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryView;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryView];
  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      [v5 removeTarget:v1 action:"didTapWithAccessoryView:" forControlEvents:64];
    }

    v6 = *&v1[v3];
    if (v6)
    {
      [v6 removeFromSuperview];
      v4 = *&v1[v3];
    }

    else
    {
      v4 = 0;
    }
  }

  *&v1[v3] = a1;
  v8 = a1;

  if (a1)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      [v7 addTarget:v1 action:"didTapWithAccessoryView:" forControlEvents:64];
    }

    [v1 addSubview:v8];
  }
}

char *sub_10018EE54(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v119 = sub_10076771C();
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v117 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v11 - 8);
  v116 = &v99 - v12;
  v115 = sub_100763BBC();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v121 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&qword_100949710);
  __chkstk_darwin(v14 - 8);
  v120 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v99 - v17;
  v19 = sub_10000A5D4(&qword_100949718);
  __chkstk_darwin(v19 - 8);
  v111 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v107 = &v99 - v22;
  v122 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v102 = *(v122 - 8);
  __chkstk_darwin(v122);
  v110 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v106 = &v99 - v25;
  __chkstk_darwin(v26);
  v105 = (&v99 - v27);
  v28 = sub_10000A5D4(&unk_10094BB80);
  __chkstk_darwin(v28 - 8);
  v30 = &v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v99 - v32;
  v113 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v113);
  v108 = &v99 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v112 = &v99 - v36;
  v37 = sub_10076F9AC();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v99 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = &v4[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowText];
  *v41 = 0;
  v41[1] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowLabel] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtwork] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtworkView] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtwork] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtworkView] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_detailLabel] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_shortDetailLabel] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryView] = 0;
  v42 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessory;
  v43 = type metadata accessor for Accessory();
  (*(*(v43 - 8) + 56))(&v5[v42], 1, 1, v43);
  v44 = &v5[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryAction];
  *v44 = 0;
  v44[1] = 0;
  v45 = &v5[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_separatorInset];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  *v45 = UIEdgeInsetsZero.top;
  v45[1] = left;
  v45[2] = bottom;
  v45[3] = right;
  v5[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_allowsAccessibilityLayouts] = 1;
  sub_1007626BC();
  v49 = sub_10076269C();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel] = v49;
  memset(v125, 0, sizeof(v125));
  memset(v124, 0, sizeof(v124));
  v50 = v49;
  sub_10076F97C();
  sub_10000CFBC(v124, &unk_1009434C0);
  sub_10000CFBC(v125, &unk_1009434C0);
  sub_100770B9C();

  (*(v38 + 8))(v40, v37);
  v51 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_separatorLineView] = v51;
  v109 = v5;
  v52 = &v5[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabelNumberOfLines];
  *v52 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v52[1] = 0;
  v53 = sub_10076034C();
  v54 = *(v53 - 8);
  (*(v54 + 56))(v33, 1, 1, v53);
  v55 = sub_100763BAC();
  v100 = *(v55 - 8);
  v56 = *(v100 + 56);
  v103 = v18;
  v101 = v55;
  v56(v18, 1, 1);
  v104 = v33;
  sub_100016E2C(v33, v30, &unk_10094BB80);
  if ((*(v54 + 48))(v30, 1, v53) == 1)
  {
    sub_10000CFBC(v30, &unk_10094BB80);
    v57 = 0;
  }

  else
  {
    v57 = sub_1007602EC();
    (*(v54 + 8))(v30, v53);
  }

  v58 = v105;
  sub_100286F40(v57, v105);

  if (qword_10093FC50 != -1)
  {
    swift_once();
  }

  v59 = v122;
  v60 = sub_10000A61C(v122, qword_10099DFA0);
  v61 = v107;
  (*(v102 + 56))(v107, 1, 1, v59);
  v62 = v106;
  sub_100199C28(v58, v106, type metadata accessor for TitleHeaderView.TextConfiguration);
  v63 = v110;
  sub_100199C28(v60, v110, type metadata accessor for TitleHeaderView.TextConfiguration);
  v64 = v111;
  sub_100016E2C(v61, v111, &qword_100949718);
  v65 = v103;
  sub_100016E2C(v103, v120, &qword_100949710);
  v66 = v114;
  v67 = v115;
  (*(v114 + 104))(v121, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v115);
  v102 = sub_100016F40(0, &qword_100942F10);
  v99 = sub_100770CDC();
  sub_10000CFBC(v65, &qword_100949710);
  sub_10000CFBC(v61, &qword_100949718);
  sub_100199AA8(v58, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10000CFBC(v104, &unk_10094BB80);
  v68 = v113;
  v69 = *(v113 + 32);
  v70 = v108;
  sub_100199BC0(v62, v108, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100199BC0(v63, v70 + v68[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100023AD0(v64, v70 + v68[6], &qword_100949718);
  *(v70 + v68[7]) = 1;
  *(v70 + v69) = 0;
  *(v70 + v68[9]) = 0;
  *(v70 + v68[14]) = 0x4030000000000000;
  *(v70 + v68[12]) = 0;
  *(v70 + v68[13]) = v99;
  v71 = v120;
  (*(v66 + 32))(v70 + v68[11], v121, v67);
  v72 = v100;
  v73 = v101;
  if ((*(v100 + 48))(v71, 1, v101) == 1)
  {
    sub_10000CFBC(v71, &qword_100949710);
    (*(v72 + 104))(v70 + v68[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v73);
  }

  else
  {
    (*(v72 + 32))(v70 + v68[10], v71, v73);
  }

  v74 = v112;
  sub_100199BC0(v70, v112, type metadata accessor for TitleHeaderView.Style);
  v75 = v109;
  sub_100199BC0(v74, v109 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_style, type metadata accessor for TitleHeaderView.Style);
  v76 = type metadata accessor for TitleHeaderView(0);
  v123.receiver = v75;
  v123.super_class = v76;
  v77 = objc_msgSendSuper2(&v123, "initWithFrame:", a1, a2, a3, a4);
  v78 = [v77 layer];
  [v78 setAllowsGroupOpacity:0];

  [v77 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v77 setEdgesInsettingLayoutMarginsFromSafeArea:0];

  v79 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_separatorLineView;
  v80 = *&v77[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_separatorLineView];
  v81 = sub_100770CDC();
  [v80 setBackgroundColor:v81];

  [v77 addSubview:*&v77[v79]];
  v82 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel;
  v83 = *&v77[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel];
  v84 = &v77[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_style];
  swift_beginAccess();
  [v83 setTextColor:*&v84[v68[5]]];
  v85 = *&v77[v82];
  v86 = v68[5] + *(v122 + 24);
  v87 = sub_10076D3DC();
  v88 = v68;
  v89 = *(v87 - 8);
  v90 = &v84[v86];
  v91 = v116;
  (*(v89 + 16))(v116, v90, v87);
  (*(v89 + 56))(v91, 0, 1, v87);
  v92 = v85;
  sub_1007625DC();

  v93 = *&v77[v82];
  sub_10076266C();

  v94 = [*&v77[v82] layer];
  if (*&v84[v88[5] + 16])
  {

    v95 = sub_10076FF6C();
  }

  else
  {
    v95 = 0;
  }

  [v94 setCompositingFilter:v95];

  swift_unknownObjectRelease();
  v96 = *&v77[v82];
  (*(v118 + 104))(v117, enum case for DirectionalTextAlignment.leading(_:), v119);
  v97 = v96;
  sub_10076262C();

  [v77 addSubview:*&v77[v82]];
  return v77;
}

void sub_10018FD94(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowText + 8);
  if (a2)
  {
    if (v3)
    {
      v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowText) == a1 && v3 == a2;
      if (v4 || (sub_10077167C() & 1) != 0)
      {
        return;
      }
    }
  }

  else if (!v3)
  {
    return;
  }

  v5 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowLabel;
  v6 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowLabel);
  if (v6)
  {
    [v6 removeFromSuperview];
    v6 = *(v2 + v5);
  }

  *(v2 + v5) = 0;
}

void sub_10018FE28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10076771C();
  v52 = *(v6 - 8);
  v53 = v6;
  __chkstk_darwin(v6);
  v51 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v8 - 8);
  v10 = v45 - v9;
  v50 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __chkstk_darwin(v50);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (v45 - v14);
  v16 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v16);
  v18 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = v45 - v21;
  v23 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowText + 8);
  if (v23)
  {
    if (!a2 || (*(v3 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowText) == a1 ? (v24 = v23 == a2) : (v24 = 0), !v24 && (v25 = v20, v26 = sub_10077167C(), v20 = v25, (v26 & 1) == 0)))
    {
      v49 = v20;
      sub_1007626BC();

      v27 = sub_10076269C();
      [v27 setNumberOfLines:1];
      v28 = sub_10076FF6C();

      [v27 setText:v28];

      v29 = sub_10076266C();
      v30 = ((swift_isaMask & *v3) + 448);
      v31 = *((swift_isaMask & *v3) + 0x1C0);
      (v31)(v29);
      v47 = v18;
      v48 = v12;
      v45[1] = v30;
      v46 = type metadata accessor for TitleHeaderView.TextConfiguration;
      sub_100199C28(v22, v15, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_100199AA8(v22, type metadata accessor for TitleHeaderView.Style);
      v32 = *v15;
      v45[0] = type metadata accessor for TitleHeaderView.TextConfiguration;
      sub_100199AA8(v15, type metadata accessor for TitleHeaderView.TextConfiguration);
      [v27 setTextColor:v32];

      v31();
      sub_100199C28(v22, v15, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_100199AA8(v22, type metadata accessor for TitleHeaderView.Style);
      v33 = *(v50 + 24);
      v34 = sub_10076D3DC();
      v35 = *(v34 - 8);
      (*(v35 + 16))(v10, v15 + v33, v34);
      v36 = v45[0];
      sub_100199AA8(v15, v45[0]);
      (*(v35 + 56))(v10, 0, 1, v34);
      sub_1007625DC();
      v37 = [v27 layer];
      v38 = v47;
      v31();
      v39 = v38 + *(v49 + 20);
      v40 = v38;
      v41 = v48;
      sub_100199C28(v39, v48, v46);
      sub_100199AA8(v40, type metadata accessor for TitleHeaderView.Style);
      v42 = *(v41 + 16);

      sub_100199AA8(v41, v36);
      if (v42)
      {
        v43 = sub_10076FF6C();
      }

      else
      {
        v43 = 0;
      }

      [v37 setCompositingFilter:v43];

      swift_unknownObjectRelease();
      (*(v52 + 104))(v51, enum case for DirectionalTextAlignment.leading(_:), v53);
      sub_10076262C();
      [v3 addSubview:v27];
      v44 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowLabel);
      *(v3 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowLabel) = v27;
    }
  }
}

void sub_1001903C8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076BF6C();
  __chkstk_darwin(v4 - 8);
  if (*&v2[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtwork])
  {
    if (a1)
    {
      sub_10076C02C();
      sub_100199B08(&unk_10094BB10, &type metadata accessor for Artwork);
      swift_retain_n();
      v5 = sub_10076FF1C();

      if (v5)
      {

        return;
      }
    }

    else
    {
    }

    sub_10075FD2C();
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    sub_10076BF7C();
    sub_10075FCCC();
    [v2 addSubview:v6];

    v7 = *&v2[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtworkView];
    *&v2[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtworkView] = v6;
  }
}

void sub_100190568(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = v3;
  v6 = *(v3 + *a2);
  if (a1)
  {
    if (v6)
    {
      sub_10076C02C();
      sub_100199B08(&unk_10094BB10, &type metadata accessor for Artwork);

      v7 = sub_10076FF1C();

      if (v7)
      {
        return;
      }
    }
  }

  else if (!v6)
  {
    return;
  }

  v8 = *a3;
  v9 = *(v5 + *a3);
  if (v9)
  {
    [v9 removeFromSuperview];
    v10 = *(v5 + v8);
  }

  else
  {
    v10 = 0;
  }

  *(v5 + v8) = 0;
}

void sub_100190668(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076BF6C();
  __chkstk_darwin(v4 - 8);
  if (*&v2[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtwork])
  {
    if (a1)
    {
      sub_10076C02C();
      sub_100199B08(&unk_10094BB10, &type metadata accessor for Artwork);
      swift_retain_n();
      v5 = sub_10076FF1C();

      if (v5)
      {

        return;
      }
    }

    else
    {
    }

    sub_10075FD2C();
    v6 = sub_10075FB3C();
    sub_10076BF7C();
    sub_10075FCCC();
    [v2 addSubview:v6];

    v7 = *&v2[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtworkView];
    *&v2[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtworkView] = v6;
  }
}

id sub_1001907E8(uint64_t a1)
{
  v3 = sub_10076F9AC();
  v88 = *(v3 - 8);
  __chkstk_darwin(v3);
  v87 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&qword_100949718);
  __chkstk_darwin(v5 - 8);
  v7 = &v77 - v6;
  v8 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v90 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v11 - 8);
  v13 = &v77 - v12;
  v14 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v14);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v1[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_style];
  swift_beginAccess();
  sub_100199C28(v17, v16, type metadata accessor for TitleHeaderView.Style);
  LOBYTE(a1) = sub_10019954C(v16, a1);
  result = sub_100199AA8(v16, type metadata accessor for TitleHeaderView.Style);
  if ((a1 & 1) == 0)
  {
    v77 = v3;
    v78 = v9;
    v19 = v8;
    v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel];
    [v20 setTextColor:*&v17[v14[5]]];
    v21 = v14[5] + *(v19 + 24);
    v22 = sub_10076D3DC();
    v23 = *(v22 - 8);
    v79 = v7;
    v24 = v23;
    v81 = *(v23 + 16);
    v82 = v23 + 16;
    v81(v13, &v17[v21], v22);
    v25 = *(v24 + 56);
    v83 = v24 + 56;
    v84 = v22;
    v80 = v25;
    v25(v13, 0, 1, v22);
    v26 = v78;
    v27 = v79;
    v89 = v13;
    sub_1007625DC();
    [v20 setMinimumScaleFactor:*&v17[v14[5] + *(v19 + 28)]];
    [v20 setAdjustsFontSizeToFitWidth:*&v17[v14[5] + *(v19 + 28)] > 0.0];
    [v1 setBackgroundColor:*&v17[v14[12]]];
    v85 = v19;
    v86 = v1;
    v28 = *&v1[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowLabel];
    v29 = v19;
    v30 = v90;
    if (v28)
    {
      v31 = v27;
      v32 = *v17;
      v33 = v28;
      [v33 setTextColor:v32];
      v34 = v89;
      v35 = v84;
      v81(v89, &v17[*(v29 + 24)], v84);
      v80(v34, 0, 1, v35);
      sub_1007625DC();
      v36 = [v33 layer];
      if (*&v17[v14[5] + 16])
      {

        v37 = sub_10076FF6C();
      }

      else
      {
        v37 = 0;
      }

      [v36 setCompositingFilter:v37];

      swift_unknownObjectRelease();
      v30 = v90;
      v29 = v85;
      v27 = v31;
    }

    sub_100016E2C(&v17[v14[6]], v27, &qword_100949718);
    if ((*(v26 + 48))(v27, 1, v29) == 1)
    {
      sub_10000CFBC(v27, &qword_100949718);
      v38 = v86;
      v39 = *&v86[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_detailLabel];
      if (v39)
      {
        [v39 setHidden:1];
      }

      v40 = *&v38[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_shortDetailLabel];
      if (v40)
      {
        [v40 setHidden:1];
      }
    }

    else
    {
      sub_100199BC0(v27, v30, type metadata accessor for TitleHeaderView.TextConfiguration);
      v41 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_detailLabel;
      v38 = v86;
      v42 = *&v86[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_detailLabel];
      v43 = v89;
      if (v42 || (sub_1007626BC(), v50 = sub_10076269C(), sub_10018EBD0(v50), (v51 = *&v38[v41]) != 0) && ([v51 setNumberOfLines:1], (v52 = *&v38[v41]) != 0) && (objc_msgSend(v52, "setLineBreakMode:", 4), (v53 = *&v38[v41]) != 0) && (v93 = 0u, v94 = 0u, v91 = 0u, v92 = 0u, v54 = v53, v55 = v87, sub_10076F97C(), sub_10000CFBC(&v91, &unk_1009434C0), sub_10000CFBC(&v93, &unk_1009434C0), sub_100770B9C(), v54, v38 = v86, (*(v88 + 8))(v55, v77), (v42 = *&v38[v41]) != 0))
      {
        [v42 setTextColor:*v30];
        v44 = *&v38[v41];
        if (v44)
        {
          v45 = v84;
          v81(v43, &v30[*(v85 + 24)], v84);
          v80(v43, 0, 1, v45);
          v46 = v44;
          sub_1007625DC();

          v47 = *&v38[v41];
          if (v47)
          {
            v48 = [v47 layer];
            v49 = *(v30 + 2) ? sub_10076FF6C() : 0;
            [v48 setCompositingFilter:v49];

            swift_unknownObjectRelease();
            v56 = *&v38[v41];
            if (v56)
            {
              v57 = v56;
              sub_10076266C();

              v58 = *&v38[v41];
              if (v58)
              {
                [v58 setHidden:0];
              }
            }
          }
        }
      }

      v59 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_shortDetailLabel;
      v60 = *&v38[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_shortDetailLabel];
      if (v60 || (sub_1007626BC(), v67 = sub_10076269C(), sub_10018EBDC(v67), (v68 = *&v38[v59]) != 0) && ([v68 setNumberOfLines:1], (v69 = *&v38[v59]) != 0) && (objc_msgSend(v69, "setLineBreakMode:", 4), (v70 = *&v38[v59]) != 0) && (v93 = 0u, v94 = 0u, v91 = 0u, v92 = 0u, v71 = v70, v72 = v87, sub_10076F97C(), sub_10000CFBC(&v91, &unk_1009434C0), sub_10000CFBC(&v93, &unk_1009434C0), sub_100770B9C(), v71, v38 = v86, (*(v88 + 8))(v72, v77), (v60 = *&v38[v59]) != 0))
      {
        [v60 setTextColor:*v30];
        v61 = *&v38[v59];
        if (v61)
        {
          v62 = v84;
          v81(v43, &v30[*(v85 + 24)], v84);
          v80(v43, 0, 1, v62);
          v63 = v61;
          sub_1007625DC();

          v64 = *&v38[v59];
          if (v64)
          {
            v65 = [v64 layer];
            v66 = *(v30 + 2) ? sub_10076FF6C() : 0;
            [v65 setCompositingFilter:v66];

            swift_unknownObjectRelease();
            v73 = *&v38[v59];
            if (v73)
            {
              v74 = v73;
              sub_10076266C();

              v75 = *&v38[v59];
              if (v75)
              {
                [v75 setHidden:0];
              }
            }
          }
        }
      }

      sub_100199AA8(v30, type metadata accessor for TitleHeaderView.TextConfiguration);
    }

    v76 = *&v38[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_separatorLineView];
    [v76 setHidden:(v17[v14[7]] & 1) == 0];
    [v76 setBackgroundColor:*&v17[v14[13]]];
    return [v38 setNeedsLayout];
  }

  return result;
}

uint64_t sub_100191278@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_style;
  swift_beginAccess();
  return sub_100199C28(v1 + v3, a1, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_1001912E4(uint64_t a1)
{
  v3 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_style;
  swift_beginAccess();
  sub_100199C28(v1 + v6, v5, type metadata accessor for TitleHeaderView.Style);
  swift_beginAccess();
  sub_100116308(a1, v1 + v6);
  swift_endAccess();
  sub_1001907E8(v5);
  sub_100199AA8(a1, type metadata accessor for TitleHeaderView.Style);
  return sub_100199AA8(v5, type metadata accessor for TitleHeaderView.Style);
}

double sub_1001914C0(double a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for TitleHeaderView.Style(0);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryView);
  if (v10)
  {
    [v10 frame];
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v12 = 0.0;
    v14 = 0.0;
  }

  v15 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowLabel);
  if (v15 && (v16 = [v15 text]) != 0)
  {
    v17 = v16;
    v46 = sub_10076FF9C();
    v47 = v18;
  }

  else
  {
    v46 = 0;
    v47 = 0;
  }

  v19 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtwork);
  v20 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel);

  v21 = [v20 text];
  if (v21)
  {
    v22 = v21;
    v45 = sub_10076FF9C();
    v24 = v23;
  }

  else
  {
    v45 = 0;
    v24 = 0;
  }

  v25 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtwork);
  v26 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_detailLabel);
  if (!v26)
  {

    goto LABEL_15;
  }

  v27 = [v26 text];
  if (!v27)
  {
LABEL_15:
    v44 = 0;
    v30 = 0;
    goto LABEL_16;
  }

  v28 = v27;
  v44 = sub_10076FF9C();
  v30 = v29;

LABEL_16:
  v31 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_shortDetailLabel);
  if (v31 && (v32 = [v31 text]) != 0)
  {
    v33 = v32;
    v34 = sub_10076FF9C();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  v37 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabelNumberOfLines);

  v38 = v37(v3);

  (*((swift_isaMask & *v3) + 0x1C0))(v39);
  [v3 layoutMargins];
  LOBYTE(v43) = 1;
  sub_1002E2308(v46, v47, v19, v45, v24, v25, v44, v30, a1, a2, v12, v14, v34, v36, v38, v9, v43, v3);
  v41 = v40;

  sub_100199AA8(v9, type metadata accessor for TitleHeaderView.Style);
  return v41;
}

id sub_100191948()
{
  v1 = sub_10076D1FC();
  v422 = *(v1 - 8);
  v423 = v1;
  __chkstk_darwin(v1);
  v421 = &v397 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v420 = sub_100763BCC();
  v418 = *(v420 - 8);
  __chkstk_darwin(v420);
  v417 = &v397 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100763BBC();
  v412 = *(v4 - 8);
  v413 = v4;
  __chkstk_darwin(v4);
  v414 = &v397 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v419 = sub_100763BFC();
  v416 = *(v419 - 8);
  __chkstk_darwin(v419);
  v415 = &v397 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v439 = sub_100763BAC();
  v433 = *(v439 - 8);
  __chkstk_darwin(v439);
  v411 = &v397 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v438 = &v397 - v9;
  v10 = sub_100763BEC();
  v452 = *(v10 - 8);
  v453 = v10;
  __chkstk_darwin(v10);
  v405 = &v397 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v451 = &v397 - v13;
  __chkstk_darwin(v14);
  v450 = &v397 - v15;
  __chkstk_darwin(v16);
  v437 = &v397 - v17;
  v18 = sub_10000A5D4(&qword_100949718);
  __chkstk_darwin(v18 - 8);
  v427 = &v397 - v19;
  v20 = sub_10075D78C();
  v431 = *(v20 - 1);
  v432 = v20;
  __chkstk_darwin(v20);
  v430 = &v397 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10076D3DC();
  v400 = *(v22 - 8);
  v401 = v22;
  __chkstk_darwin(v22);
  v399 = &v397 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v455 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v426 = *(v455 - 1);
  __chkstk_darwin(v455);
  v454 = &v397 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v435 = &v397 - v26;
  __chkstk_darwin(v27);
  v406 = &v397 - v28;
  __chkstk_darwin(v29);
  v403 = &v397 - v30;
  v424 = sub_10000A5D4(&unk_10094BB20);
  v409 = *(v424 - 8);
  __chkstk_darwin(v424);
  v402 = &v397 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v404 = &v397 - v33;
  __chkstk_darwin(v34);
  v445 = &v397 - v35;
  __chkstk_darwin(v36);
  v449 = &v397 - v37;
  __chkstk_darwin(v38);
  v444 = &v397 - v39;
  __chkstk_darwin(v40);
  v448 = &v397 - v41;
  __chkstk_darwin(v42);
  v436 = &v397 - v43;
  __chkstk_darwin(v44);
  v398 = &v397 - v45;
  __chkstk_darwin(v46);
  v440 = &v397 - v47;
  v48 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v48);
  v410 = &v397 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v408 = &v397 - v51;
  __chkstk_darwin(v52);
  v407 = &v397 - v53;
  __chkstk_darwin(v54);
  v425 = &v397 - v55;
  __chkstk_darwin(v56);
  v397 = &v397 - v57;
  __chkstk_darwin(v58);
  v442 = &v397 - v59;
  __chkstk_darwin(v60);
  v62 = &v397 - v61;
  v429 = sub_10076E1EC();
  v63 = *(v429 - 1);
  __chkstk_darwin(v429);
  v65 = &v397 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v446 = sub_10076E21C();
  v66 = *(v446 - 1);
  __chkstk_darwin(v446);
  v68 = &v397 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v434 = type metadata accessor for TitleHeaderView(0);
  v494.receiver = v0;
  v494.super_class = v434;
  v69 = objc_msgSendSuper2(&v494, "layoutSubviews");
  v70 = swift_isaMask & *v0;
  v428 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_separatorLineView);
  v71 = v70 + 448;
  v72 = *(v70 + 448);
  (v72)(v69);
  v447 = v48;
  LODWORD(v48) = v62[*(v48 + 32)];
  v443 = v62;
  sub_100199AA8(v62, type metadata accessor for TitleHeaderView.Style);
  v73 = &enum case for Separator.Position.bottom(_:);
  if (!v48)
  {
    v73 = &enum case for Separator.Position.top(_:);
  }

  v74 = v0;
  (*(v63 + 104))(v65, *v73, v429);
  *(&v492 + 1) = sub_10076D67C();
  v493 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v491);
  sub_10076D66C();
  sub_10076E1FC();
  [v0 bounds];
  sub_10076E1CC();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  (*(v66 + 8))(v68, v446);
  [v428 setFrame:{v76, v78, v80, v82}];
  v83 = v71;
  v84 = v442;
  v85 = sub_10076422C();
  v446 = v72;
  (v72)(v85);
  if (JUScreenClassGetMain() == 1)
  {
    v86 = v447[5];
    if (qword_10093FC38 != -1)
    {
      swift_once();
    }

    v87 = sub_10000A61C(v455, qword_10099DF58);
    v88 = sub_10019942C(v84 + v86, v87);
    v89 = v453;
    v90 = v454;
    v91 = v445;
    if (!v88)
    {
      if (qword_10093FC40 != -1)
      {
        goto LABEL_172;
      }

      goto LABEL_22;
    }

    sub_100199AA8(v84, type metadata accessor for TitleHeaderView.Style);
  }

  else
  {
    sub_100199AA8(v84, type metadata accessor for TitleHeaderView.Style);
    v89 = v453;
    v90 = v454;
    v91 = v445;
  }

  while (1)
  {
    v92 = *&v74[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowLabel];
    v84 = &protocol witness table for UILabel;
    v441 = v83;
    v442 = v74;
    if (!v92)
    {
      goto LABEL_20;
    }

    v429 = v92;
    v93 = [v429 text];
    if (!v93)
    {
      goto LABEL_19;
    }

    v94 = v93;
    v95 = sub_10076FF9C();
    v97 = v96;

    v99 = HIBYTE(v97) & 0xF;
    if ((v97 & 0x2000000000000000) == 0)
    {
      v99 = v95 & 0xFFFFFFFFFFFFLL;
    }

    if (!v99)
    {
LABEL_19:

      v89 = v453;
LABEL_20:
      v434 = *(v452 + 56);
      v113 = (v434)(v440, 1, 1, v89);
      goto LABEL_46;
    }

    v100 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtwork;
    if (*&v74[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtwork])
    {

      if (sub_10076BE0C())
      {
        sub_100016F40(0, &qword_100942F00);
        v101 = v443;
        v446();
        v102 = v403;
        sub_100199C28(v101, v403, type metadata accessor for TitleHeaderView.TextConfiguration);
        sub_100199AA8(v101, type metadata accessor for TitleHeaderView.Style);
        v104 = v399;
        v103 = v400;
        v105 = v401;
        (*(v400 + 16))(v399, v102 + *(v455 + 6), v401);
        sub_100199AA8(v102, type metadata accessor for TitleHeaderView.TextConfiguration);
        v106 = v74;
        v107 = [v74 traitCollection];
        v108 = sub_100770B3C();

        (*(v103 + 8))(v104, v105);
        v109 = *&v106[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtworkView];
        if (v109)
        {
          v110 = objc_opt_self();
          v111 = v109;
          v112 = [v110 configurationWithFont:v108];
          sub_10075FC3C();
        }

        v74 = v442;
      }

      else
      {
        v115 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtworkView;
        v116 = *&v74[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtworkView];
        if (v116)
        {
          v117 = *&v74[v100];
          v118 = v443;
          v446();
          v119 = v403;
          sub_100199C28(v118, v403, type metadata accessor for TitleHeaderView.TextConfiguration);

          v120 = v116;
          sub_100199AA8(v118, type metadata accessor for TitleHeaderView.Style);
          sub_1006BA044(v117, v119, v74);

          sub_100199AA8(v119, type metadata accessor for TitleHeaderView.TextConfiguration);
          sub_10075FC8C();

          v121 = *&v74[v115];
          if (v121)
          {
            v122 = v121;
            sub_10075FC3C();
          }
        }
      }
    }

    v123 = v397;
    (v446)(v98);
    sub_100199C28(v123, v406, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_100199AA8(v123, type metadata accessor for TitleHeaderView.Style);
    v124 = *&v74[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtworkView];
    if (v124)
    {
      v125 = sub_10075FD2C();
      v126 = &protocol witness table for UIView;
      v127 = v124;
    }

    else
    {
      v127 = 0;
      v125 = 0;
      v126 = 0;
      *(&v491 + 1) = 0;
      *&v492 = 0;
    }

    *&v491 = v127;
    *(&v492 + 1) = v125;
    v493 = v126;
    v128 = sub_1007626BC();
    v490 = &protocol witness table for UILabel;
    v489 = v128;
    v129 = v429;
    v488[0] = v429;
    v487 = 0;
    v485 = 0u;
    v486 = 0u;
    v484 = 0;
    v482 = 0u;
    v483 = 0u;
    sub_100016E2C(&v491, v481, &unk_10094DA00);
    v130 = v489;
    v131 = v490;
    v132 = sub_10000CF78(v488, v489);
    v479 = v130;
    v480 = v131[1];
    v133 = sub_10000DB7C(v478);
    (*(*(v130 - 1) + 16))(v133, v132, v130);
    v134 = v455;
    v135 = v406;
    v136 = *(v406 + *(v455 + 8));
    v476 = &type metadata for Float;
    v477 = &protocol witness table for Float;
    v475 = v136;
    v137 = *(v455 + 9);
    v138 = sub_10076D9AC();
    v473 = v138;
    v474 = &protocol witness table for StaticDimension;
    v139 = sub_10000DB7C(v472);
    v140 = *(*(v138 - 8) + 16);
    v140(v139, v135 + v137, v138);
    v141 = *(v134 + 10);
    v470 = v138;
    v471 = &protocol witness table for StaticDimension;
    v142 = sub_10000DB7C(v469);
    v140(v142, v135 + v141, v138);
    sub_100016E2C(&v485, &v463, &qword_10094BB30);
    v143 = *(&v464 + 1);
    if (*(&v464 + 1))
    {
      v144 = v465;
      v145 = sub_10000CF78(&v463, *(&v464 + 1));
      *(&v467 + 1) = v143;
      v468 = *(v144 + 8);
      v146 = sub_10000DB7C(&v466);
      (*(*(v143 - 8) + 16))(v146, v145, v143);
      v147 = v124;
      v148 = v129;
      sub_10000CD74(&v463);
    }

    else
    {
      v149 = v124;
      v150 = v129;
      sub_10000CFBC(&v463, &qword_10094BB30);
      v466 = 0u;
      v467 = 0u;
      v468 = 0;
    }

    sub_100016E2C(&v482, v460, &qword_10094BB30);
    v151 = v461;
    v83 = v441;
    v74 = v442;
    v90 = v454;
    v91 = v445;
    if (v461)
    {
      v152 = v462;
      v153 = sub_10000CF78(v460, v461);
      *(&v464 + 1) = v151;
      v465 = *(v152 + 8);
      v154 = sub_10000DB7C(&v463);
      (*(*(v151 - 8) + 16))(v154, v153, v151);
      sub_10000CD74(v460);
    }

    else
    {
      sub_10000CFBC(v460, &qword_10094BB30);
      v463 = 0u;
      v464 = 0u;
      v465 = 0;
    }

    v155 = v455;
    v156 = v406;
    sub_10000A570(v406 + *(v455 + 12), v460);
    sub_10000A570(v156 + *(v155 + 13), v459);
    v458 = &protocol witness table for Double;
    v457 = &type metadata for Double;
    v456 = 0x4020000000000000;
    v157 = v398;
    sub_100763BDC();
    sub_10000CFBC(&v482, &qword_10094BB30);
    sub_10000CFBC(&v485, &qword_10094BB30);
    sub_100199AA8(v156, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_10000CD74(v488);
    sub_10000CFBC(&v491, &unk_10094DA00);
    v89 = v453;
    v434 = *(v452 + 56);
    (v434)(v157, 0, 1, v453);
    sub_100023AD0(v157, v440, &unk_10094BB20);
    v158 = v429;
    result = [v429 font];
    if (!result)
    {
      goto LABEL_185;
    }

    v160 = result;
    v161 = [v158 text];
    v84 = &protocol witness table for UILabel;
    if (v161)
    {
      v162 = v161;
      v163 = sub_10076FF9C();
      v165 = v164;

      *&v491 = v163;
      *(&v491 + 1) = v165;

      v166 = v430;
      sub_10075D76C();
      sub_10002564C();
      sub_1007711EC();
      LOBYTE(v162) = v167;
      (v431)[1](v166, v432);

      if (v162)
      {

        v168 = 0;
        v74 = v442;
        v89 = v453;
      }

      else
      {
        [v160 lineHeight];
        v170 = v169;

        v171 = ceil(v170 * 1.3);
        v74 = v442;
        if ((*&v171 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
          return result;
        }

        v89 = v453;
        if (v171 <= -9.22337204e18)
        {
          goto LABEL_174;
        }

        if (v171 >= 9.22337204e18)
        {
          goto LABEL_175;
        }

        v168 = v171;
      }
    }

    else
    {

      v168 = 0;
    }

    v172 = v429;
    sub_1001E1328(v168);

LABEL_46:
    v173 = v425;
    (v446)(v113);
    v174 = v427;
    sub_100016E2C(v173 + v447[6], v427, &qword_100949718);
    sub_100199AA8(v173, type metadata accessor for TitleHeaderView.Style);
    if ((*(v426 + 48))(v174, 1, v455) == 1)
    {
      sub_10000CFBC(v174, &qword_100949718);
      (v434)(v436, 1, 1, v89);
      goto LABEL_88;
    }

    sub_100199BC0(v174, v435, type metadata accessor for TitleHeaderView.TextConfiguration);
    v175 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_detailLabel;
    v176 = *&v74[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_detailLabel];
    if (v176)
    {
      result = [v176 font];
      if (!result)
      {
        goto LABEL_183;
      }

      v177 = result;
      v178 = *&v74[v175];
      if (!v178 || (v179 = [v178 text]) == 0)
      {

        v186 = 0;
        v187 = *&v74[v175];
        if (!v187)
        {
          goto LABEL_57;
        }

LABEL_56:
        v188 = v187;
        sub_1001E1328(v186);

        goto LABEL_57;
      }

      v180 = v179;
      v181 = sub_10076FF9C();
      v183 = v182;

      *&v491 = v181;
      *(&v491 + 1) = v183;

      v184 = v430;
      sub_10075D76C();
      sub_10002564C();
      sub_1007711EC();
      LOBYTE(v180) = v185;
      (v431)[1](v184, v432);

      if (v180)
      {

        v186 = 0;
        v74 = v442;
        v187 = *&v442[v175];
        if (v187)
        {
          goto LABEL_56;
        }
      }

      else
      {
        [v177 lineHeight];
        v226 = v225;

        v227 = ceil(v226 * 1.3);
        v74 = v442;
        if ((*&v227 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_176;
        }

        if (v227 <= -9.22337204e18)
        {
          goto LABEL_178;
        }

        if (v227 >= 9.22337204e18)
        {
          goto LABEL_180;
        }

        v186 = v227;
        v187 = *&v442[v175];
        if (v187)
        {
          goto LABEL_56;
        }
      }
    }

LABEL_57:
    v189 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_shortDetailLabel;
    v190 = *&v74[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_shortDetailLabel];
    if (!v190)
    {
      goto LABEL_66;
    }

    result = [v190 font];
    if (!result)
    {
      goto LABEL_184;
    }

    v191 = result;
    v192 = *&v74[v189];
    if (!v192 || (v193 = [v192 text]) == 0)
    {

      v200 = 0;
      v201 = *&v74[v189];
      if (!v201)
      {
        goto LABEL_66;
      }

LABEL_65:
      v202 = v201;
      sub_1001E1328(v200);

      goto LABEL_66;
    }

    v194 = v193;
    v195 = sub_10076FF9C();
    v197 = v196;

    *&v491 = v195;
    *(&v491 + 1) = v197;

    v198 = v430;
    sub_10075D76C();
    sub_10002564C();
    sub_1007711EC();
    LOBYTE(v194) = v199;
    (v431)[1](v198, v432);

    if (v194)
    {

      v200 = 0;
      v74 = v442;
      v201 = *&v442[v189];
      if (v201)
      {
        goto LABEL_65;
      }
    }

    else
    {
      [v191 lineHeight];
      v229 = v228;

      v230 = ceil(v229 * 1.3);
      v74 = v442;
      if ((*&v230 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_177;
      }

      if (v230 <= -9.22337204e18)
      {
        goto LABEL_179;
      }

      if (v230 >= 9.22337204e18)
      {
        goto LABEL_181;
      }

      v200 = v230;
      v201 = *&v442[v189];
      if (v201)
      {
        goto LABEL_65;
      }
    }

LABEL_66:
    v203 = *&v74[v175];
    if (!v203)
    {
      sub_100199AA8(v435, type metadata accessor for TitleHeaderView.TextConfiguration);
      v91 = v445;
      goto LABEL_70;
    }

    v204 = v443;
    v446();
    v205 = *(v204 + v447[9]);
    v206 = v203;
    sub_100199AA8(v204, type metadata accessor for TitleHeaderView.Style);
    v91 = v445;
    if (v205 == 2)
    {
      sub_100199AA8(v435, type metadata accessor for TitleHeaderView.TextConfiguration);

LABEL_70:
      (v434)(v436, 1, 1, v453);
      v83 = v441;
      goto LABEL_88;
    }

    v493 = 0;
    v491 = 0u;
    v492 = 0u;
    v207 = sub_1007626BC();
    v490 = &protocol witness table for UILabel;
    v489 = v207;
    v488[0] = v206;
    v487 = 0;
    v485 = 0u;
    v486 = 0u;
    v484 = 0;
    v482 = 0u;
    v483 = 0u;
    sub_100016E2C(&v491, v481, &unk_10094DA00);
    v208 = v489;
    v209 = v490;
    v210 = sub_10000CF78(v488, v489);
    v479 = v208;
    v480 = v209[1];
    v211 = sub_10000DB7C(v478);
    (*(*(v208 - 1) + 16))(v211, v210, v208);
    v212 = v455;
    v213 = v435;
    v214 = *&v435[*(v455 + 8)];
    v476 = &type metadata for Float;
    v477 = &protocol witness table for Float;
    v475 = v214;
    v215 = *(v455 + 9);
    v216 = sub_10076D9AC();
    v473 = v216;
    v474 = &protocol witness table for StaticDimension;
    v217 = sub_10000DB7C(v472);
    v218 = *(*(v216 - 8) + 16);
    v218(v217, &v213[v215], v216);
    v219 = *(v212 + 10);
    v470 = v216;
    v471 = &protocol witness table for StaticDimension;
    v220 = sub_10000DB7C(v469);
    v218(v220, &v213[v219], v216);
    sub_100016E2C(&v485, &v463, &qword_10094BB30);
    v221 = *(&v464 + 1);
    if (*(&v464 + 1))
    {
      v222 = v465;
      v223 = sub_10000CF78(&v463, *(&v464 + 1));
      *(&v467 + 1) = v221;
      v468 = *(v222 + 8);
      v224 = sub_10000DB7C(&v466);
      (*(*(v221 - 8) + 16))(v224, v223, v221);
      sub_10000CD74(&v463);
    }

    else
    {
      sub_10000CFBC(&v463, &qword_10094BB30);
      v466 = 0u;
      v467 = 0u;
      v468 = 0;
    }

    sub_100016E2C(&v482, v460, &qword_10094BB30);
    v231 = v461;
    v74 = v442;
    v90 = v454;
    if (v461)
    {
      v232 = v462;
      v233 = sub_10000CF78(v460, v461);
      *(&v464 + 1) = v231;
      v465 = *(v232 + 8);
      v234 = sub_10000DB7C(&v463);
      (*(*(v231 - 8) + 16))(v234, v233, v231);
      sub_10000CD74(v460);
    }

    else
    {
      sub_10000CFBC(v460, &qword_10094BB30);
      v463 = 0u;
      v464 = 0u;
      v465 = 0;
    }

    v83 = v441;
    v235 = v455;
    v236 = v435;
    sub_10000A570(&v435[*(v455 + 12)], v460);
    sub_10000A570(v236 + *(v235 + 13), v459);
    v458 = &protocol witness table for Double;
    v457 = &type metadata for Double;
    v456 = 0x4020000000000000;
    v237 = v436;
    sub_100763BDC();
    sub_10000CFBC(&v482, &qword_10094BB30);
    sub_10000CFBC(&v485, &qword_10094BB30);
    sub_10000CFBC(&v491, &unk_10094DA00);
    sub_100199AA8(v236, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_10000CD74(v488);
    v434 = *(v452 + 56);
    (v434)(v237, 0, 1, v453);
LABEL_88:
    v238 = *&v74[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel];
    result = [v238 font];
    if (!result)
    {
      goto LABEL_182;
    }

    v89 = result;
    v239 = [v238 text];
    v435 = v238;
    if (!v239)
    {

      v245 = 0;
      goto LABEL_98;
    }

    v240 = v239;
    v241 = sub_10076FF9C();
    v74 = v242;

    *&v491 = v241;
    *(&v491 + 1) = v74;

    v243 = v430;
    sub_10075D76C();
    sub_10002564C();
    sub_1007711EC();
    v86 = v244;
    (v431)[1](v243, v432);

    if (v86)
    {

      v245 = 0;
      goto LABEL_97;
    }

    [v89 lineHeight];
    v247 = v246;

    v248 = ceil(v247 * 1.3);
    if ((*&v248 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_170;
    }

    if (v248 > -9.22337204e18)
    {
      break;
    }

LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    swift_once();
LABEL_22:
    v114 = sub_10000A61C(v455, qword_10099DF70);
    sub_10019942C(v84 + v86, v114);
    sub_100199AA8(v84, type metadata accessor for TitleHeaderView.Style);
  }

  if (v248 >= 9.22337204e18)
  {
    goto LABEL_171;
  }

  v245 = v248;
LABEL_97:
  v74 = v442;
LABEL_98:
  sub_1001E1328(v245);
  v249 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtwork;
  if (*&v74[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtwork])
  {

    if (sub_10076BE0C())
    {
      sub_100016F40(0, &qword_100942F00);
      v250 = v443;
      v446();
      v251 = v403;
      sub_100199C28(v250 + v447[5], v403, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_100199AA8(v250, type metadata accessor for TitleHeaderView.Style);
      v252 = v399;
      v253 = v400;
      v254 = v401;
      (*(v400 + 16))(v399, v251 + *(v455 + 6), v401);
      sub_100199AA8(v251, type metadata accessor for TitleHeaderView.TextConfiguration);
      v255 = v74;
      v256 = [v74 traitCollection];
      v257 = sub_100770B3C();

      (*(v253 + 8))(v252, v254);
      v258 = *&v255[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtworkView];
      if (v258)
      {
        v259 = objc_opt_self();
        v260 = v258;
        v261 = [v259 configurationWithFont:v257];
        sub_10075FC3C();
      }

      v74 = v442;
      v91 = v445;
      v90 = v454;
    }

    else
    {
      v262 = v90;
      v263 = v74;
      v264 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtworkView;
      v265 = *(v263 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtworkView);
      if (v265)
      {
        v266 = *(v263 + v249);
        v267 = v443;
        v446();
        v268 = v403;
        sub_100199C28(v267 + v447[5], v403, type metadata accessor for TitleHeaderView.TextConfiguration);

        v269 = v265;
        v262 = v454;
        sub_100199AA8(v267, type metadata accessor for TitleHeaderView.Style);
        sub_1006BA044(v266, v268, v263);

        sub_100199AA8(v268, type metadata accessor for TitleHeaderView.TextConfiguration);
        sub_10075FC8C();

        v270 = *(v263 + v264);
        if (v270)
        {
          v271 = v270;
          sub_10075FC3C();
        }
      }

      v74 = v263;
      v91 = v445;
      v90 = v262;
    }
  }

  v272 = v443;
  v446();
  v273 = *(v272 + v447[9]);
  v274 = sub_100199AA8(v272, type metadata accessor for TitleHeaderView.Style);
  if (v273 == 2)
  {
    v275 = *&v74[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_detailLabel];
    v274 = v275;
  }

  else
  {
    v275 = 0;
  }

  v276 = v443;
  (v446)(v274);
  v277 = *(v276 + v447[9]);
  v278 = sub_100199AA8(v276, type metadata accessor for TitleHeaderView.Style);
  if (v277 == 2)
  {
    v279 = *&v74[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_shortDetailLabel];
    v278 = v279;
  }

  else
  {
    v279 = 0;
  }

  v280 = v407;
  (v446)(v278);
  sub_100199C28(v280 + v447[5], v90, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100199AA8(v280, type metadata accessor for TitleHeaderView.Style);
  v281 = *&v74[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtworkView];
  if (v281)
  {
    v282 = sub_10075FD2C();
    v283 = &protocol witness table for UIView;
    v284 = v281;
  }

  else
  {
    v284 = 0;
    v282 = 0;
    v283 = 0;
    *(&v491 + 1) = 0;
    *&v492 = 0;
  }

  v285 = v435;
  *&v491 = v284;
  *(&v492 + 1) = v282;
  v493 = v283;
  v286 = sub_1007626BC();
  v490 = &protocol witness table for UILabel;
  v489 = v286;
  v488[0] = v285;
  if (v275)
  {
    v287 = &protocol witness table for UILabel;
    v288 = v275;
    v289 = v286;
  }

  else
  {
    v288 = 0;
    v289 = 0;
    v287 = 0;
    *&v486 = 0;
    *(&v485 + 1) = 0;
  }

  *&v485 = v288;
  *(&v486 + 1) = v289;
  v487 = v287;
  v431 = v279;
  v432 = v275;
  if (v279)
  {
    v290 = &protocol witness table for UILabel;
    v291 = v279;
  }

  else
  {
    v291 = 0;
    v286 = 0;
    v290 = 0;
    *&v483 = 0;
    *(&v482 + 1) = 0;
  }

  *&v482 = v291;
  *(&v483 + 1) = v286;
  v484 = v290;
  sub_100016E2C(&v491, v481, &unk_10094DA00);
  v292 = v489;
  v293 = v490;
  v294 = sub_10000CF78(v488, v489);
  v479 = v292;
  v480 = v293[1];
  v295 = sub_10000DB7C(v478);
  (*(*(v292 - 1) + 16))(v295, v294, v292);
  v297 = v454;
  v296 = v455;
  v298 = *(v454 + *(v455 + 8));
  v476 = &type metadata for Float;
  v477 = &protocol witness table for Float;
  v475 = v298;
  v299 = *(v455 + 9);
  v300 = sub_10076D9AC();
  v473 = v300;
  v474 = &protocol witness table for StaticDimension;
  v301 = sub_10000DB7C(v472);
  v302 = *(*(v300 - 8) + 16);
  v302(v301, v297 + v299, v300);
  v303 = *(v296 + 10);
  v470 = v300;
  v471 = &protocol witness table for StaticDimension;
  v304 = sub_10000DB7C(v469);
  v302(v304, v297 + v303, v300);
  sub_100016E2C(&v485, &v463, &qword_10094BB30);
  v305 = *(&v464 + 1);
  if (*(&v464 + 1))
  {
    v306 = v465;
    v307 = sub_10000CF78(&v463, *(&v464 + 1));
    *(&v467 + 1) = v305;
    v468 = *(v306 + 8);
    v308 = sub_10000DB7C(&v466);
    (*(*(v305 - 8) + 16))(v308, v307, v305);
    v309 = v431;
    v310 = v281;
    v311 = v435;
    v312 = v432;
    sub_10000CD74(&v463);
  }

  else
  {
    v313 = v431;
    v314 = v281;
    v315 = v435;
    v316 = v432;
    sub_10000CFBC(&v463, &qword_10094BB30);
    v466 = 0u;
    v467 = 0u;
    v468 = 0;
  }

  v317 = v444;
  sub_100016E2C(&v482, v460, &qword_10094BB30);
  v318 = v461;
  if (v461)
  {
    v319 = v462;
    v320 = sub_10000CF78(v460, v461);
    *(&v464 + 1) = v318;
    v465 = *(v319 + 8);
    v321 = sub_10000DB7C(&v463);
    (*(*(v318 - 8) + 16))(v321, v320, v318);
    sub_10000CD74(v460);
  }

  else
  {
    sub_10000CFBC(v460, &qword_10094BB30);
    v463 = 0u;
    v464 = 0u;
    v465 = 0;
  }

  v323 = v454;
  v322 = v455;
  sub_10000A570(v454 + *(v455 + 12), v460);
  sub_10000A570(v323 + *(v322 + 13), v459);
  v458 = &protocol witness table for Double;
  v457 = &type metadata for Double;
  v456 = 0x4020000000000000;
  sub_100763BDC();
  sub_100199AA8(v323, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10000CFBC(&v482, &qword_10094BB30);
  sub_10000CFBC(&v485, &qword_10094BB30);
  sub_10000CD74(v488);
  v324 = sub_10000CFBC(&v491, &unk_10094DA00);
  v325 = v408;
  (v446)(v324);
  v326 = *(v325 + v447[9]);
  sub_100199AA8(v325, type metadata accessor for TitleHeaderView.Style);
  sub_10000A5D4(&qword_10094BB38);
  v454 = *(v409 + 72);
  v327 = (*(v409 + 80) + 32) & ~*(v409 + 80);
  if (v326)
  {
    v328 = v453;
    if (v326 == 1)
    {
      v329 = v91;
      v330 = v454;
      v435 = swift_allocObject();
      v331 = &v435[v327];
      sub_100016E2C(v440, &v435[v327], &unk_10094BB20);
      v332 = v452 + 16;
      (*(v452 + 16))(&v331[v330], v437, v328);
      (v434)(&v331[v330], 0, 1, v328);
      sub_100016E2C(v436, &v331[2 * v330], &unk_10094BB20);
      v333 = (v332 + 32);
      v334 = (v332 + 16);
      v455 = _swiftEmptyArrayStorage;
      v335 = 3;
      v450 = v331;
      v336 = v331;
      do
      {
        v337 = v449;
        sub_100016E2C(v336, v449, &unk_10094BB20);
        sub_100023AD0(v337, v329, &unk_10094BB20);
        if ((*v333)(v329, 1, v328) == 1)
        {
          sub_10000CFBC(v329, &unk_10094BB20);
        }

        else
        {
          v338 = *v334;
          (*v334)(v451, v329, v328);
          v339 = v455;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v339 = sub_10049E330(0, v339[2] + 1, 1, v339);
          }

          v341 = v339[2];
          v340 = v339[3];
          if (v341 >= v340 >> 1)
          {
            v339 = sub_10049E330(v340 > 1, v341 + 1, 1, v339);
          }

          v339[2] = v341 + 1;
          v342 = (*(v452 + 80) + 32) & ~*(v452 + 80);
          v455 = v339;
          v328 = v453;
          v338(v339 + v342 + *(v452 + 72) * v341, v451, v453);
          v329 = v445;
        }

        v336 += v454;
        --v335;
      }

      while (v335);
      goto LABEL_149;
    }

    v360 = v454;
    v435 = swift_allocObject();
    v361 = &v435[v327];
    sub_100016E2C(v440, &v435[v327], &unk_10094BB20);
    v362 = v452;
    (*(v452 + 16))(v361 + v360, v437, v328);
    (v434)(v361 + v360, 0, 1, v328);
    v363 = v404;
    sub_100016E2C(v361, v404, &unk_10094BB20);
    v364 = v402;
    sub_100023AD0(v363, v402, &unk_10094BB20);
    v365 = *(v362 + 48);
    v366 = (v362 + 32);
    v367 = v365(v364, 1, v328);
    v368 = v328;
    v451 = (v362 + 32);
    if (v367 == 1)
    {
      sub_10000CFBC(v364, &unk_10094BB20);
      v455 = _swiftEmptyArrayStorage;
    }

    else
    {
      v369 = *v366;
      (*v366)(v405, v364, v368);
      v370 = _swiftEmptyArrayStorage;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v370 = sub_10049E330(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
      }

      v372 = v370[2];
      v371 = v370[3];
      v455 = v370;
      if (v372 >= v371 >> 1)
      {
        v455 = sub_10049E330(v371 > 1, v372 + 1, 1, v455);
      }

      v373 = v455;
      v455[2] = v372 + 1;
      v374 = v373 + ((*(v452 + 80) + 32) & ~*(v452 + 80)) + *(v452 + 72) * v372;
      v368 = v453;
      v369(v374, v405, v453);
      v364 = v402;
    }

    v375 = v404;
    sub_100016E2C(v361 + v454, v404, &unk_10094BB20);
    sub_100023AD0(v375, v364, &unk_10094BB20);
    if (v365(v364, 1, v368) == 1)
    {
      sub_10000CFBC(v364, &unk_10094BB20);
      v357 = v438;
      v358 = v439;
      v359 = v433;
    }

    else
    {
      v376 = *v451;
      (*v451)(v405, v364, v368);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v358 = v439;
      v359 = v433;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v455 = sub_10049E330(0, v455[2] + 1, 1, v455);
      }

      v357 = v438;
      v379 = v455[2];
      v378 = v455[3];
      if (v379 >= v378 >> 1)
      {
        v455 = sub_10049E330(v378 > 1, v379 + 1, 1, v455);
      }

      v380 = v455;
      v455[2] = v379 + 1;
      v376(&v380[((*(v452 + 80) + 32) & ~*(v452 + 80)) + *(v452 + 72) * v379], v405, v453);
    }

    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else
  {
    v343 = v454;
    v344 = 2 * v454;
    v435 = swift_allocObject();
    v345 = &v435[v327];
    sub_100016E2C(v440, &v435[v327], &unk_10094BB20);
    sub_100016E2C(v436, &v345[v343], &unk_10094BB20);
    v346 = v453;
    v347 = v452 + 16;
    (*(v452 + 16))(&v345[v344], v437, v453);
    (v434)(&v345[v344], 0, 1, v346);
    v348 = (v347 + 32);
    v349 = (v347 + 16);
    v455 = _swiftEmptyArrayStorage;
    v350 = 3;
    v451 = v345;
    do
    {
      v351 = v448;
      sub_100016E2C(v345, v448, &unk_10094BB20);
      sub_100023AD0(v351, v317, &unk_10094BB20);
      if ((*v348)(v317, 1, v346) == 1)
      {
        sub_10000CFBC(v317, &unk_10094BB20);
      }

      else
      {
        v352 = *v349;
        (*v349)(v450, v317, v346);
        v353 = v455;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v353 = sub_10049E330(0, v353[2] + 1, 1, v353);
        }

        v355 = v353[2];
        v354 = v353[3];
        if (v355 >= v354 >> 1)
        {
          v353 = sub_10049E330(v354 > 1, v355 + 1, 1, v353);
        }

        v353[2] = v355 + 1;
        v346 = v453;
        v356 = (*(v452 + 80) + 32) & ~*(v452 + 80);
        v455 = v353;
        v352(v353 + v356 + *(v452 + 72) * v355, v450, v453);
        v317 = v444;
      }

      v345 += v454;
      --v350;
    }

    while (v350);
LABEL_149:
    swift_setDeallocating();
    swift_arrayDestroy();
    v357 = v438;
    v358 = v439;
    v359 = v433;
  }

  v381 = swift_deallocClassInstance();
  v382 = v442;
  v383 = v443;
  (v446)(v381);
  v384 = *(v359 + 16);
  v384(v357, v383 + v447[10], v358);
  sub_100199AA8(v383, type metadata accessor for TitleHeaderView.Style);
  v385 = *&v382[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryView];
  if (v385)
  {
    v386 = sub_100016F40(0, &qword_1009441F0);
    v387 = &protocol witness table for UIView;
  }

  else
  {
    v386 = 0;
    v387 = 0;
    *(&v491 + 1) = 0;
    *&v492 = 0;
  }

  *&v491 = v385;
  *(&v492 + 1) = v386;
  v493 = v387;
  v388 = v443;
  v389 = v446;
  v446();
  v390 = v447;
  v391 = *(v388 + v447[14]);
  v392 = v385;
  sub_100199AA8(v388, type metadata accessor for TitleHeaderView.Style);
  v489 = &type metadata for CGFloat;
  v490 = &protocol witness table for CGFloat;
  v488[0] = v391;
  v393 = (v384)(v411, v438, v439);
  v394 = v410;
  (v389)(v393);
  (*(v412 + 16))(v414, v394 + v390[11], v413);
  sub_100199AA8(v394, type metadata accessor for TitleHeaderView.Style);
  (*(v418 + 104))(v417, enum case for TitleHeaderLayout.AccessoryHorizontalAlignment.rightJustified(_:), v420);
  v395 = v415;
  sub_100763B7C();
  v396 = v421;
  sub_100763B8C();

  (*(v422 + 8))(v396, v423);
  (*(v416 + 8))(v395, v419);
  (*(v433 + 8))(v438, v439);
  (*(v452 + 8))(v437, v453);
  sub_10000CFBC(v436, &unk_10094BB20);
  return sub_10000CFBC(v440, &unk_10094BB20);
}

id sub_100194D24()
{
  v1 = sub_10000A5D4(&qword_10094BB50);
  __chkstk_darwin(v1 - 8);
  v3 = &v30 - v2;
  v4 = type metadata accessor for TitleHeaderView(0);
  v31.receiver = v0;
  v31.super_class = v4;
  objc_msgSendSuper2(&v31, "prepareForReuse");
  v5 = &v0[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryAction];
  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryAction];
  *v5 = 0;
  *(v5 + 1) = 0;
  sub_1000167E0(v6);
  v7 = type metadata accessor for Accessory();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  v8 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessory;
  swift_beginAccess();
  sub_100199B50(v3, &v0[v8]);
  swift_endAccess();
  v9 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryView;
  if (!*&v0[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryView])
  {
    goto LABEL_6;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    [v10 removeTarget:v0 action:"didTapWithAccessoryView:" forControlEvents:64];
  }

  v11 = *&v0[v9];
  if (v11)
  {
    [v11 removeFromSuperview];
    v12 = *&v0[v9];
  }

  else
  {
LABEL_6:
    v12 = 0;
  }

  *&v0[v9] = 0;

  v13 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtwork;
  v14 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtwork];
  if (v14)
  {
    v15 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtworkView;
    v16 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtworkView];

    if (v16)
    {
      [v16 removeFromSuperview];
      v17 = *&v0[v15];
    }

    else
    {
      v17 = 0;
    }

    *&v0[v15] = 0;
  }

  *&v0[v13] = 0;

  sub_100190668(v14);

  v18 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtwork;
  v19 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtwork];
  if (v19)
  {
    v20 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtworkView;
    v21 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtworkView];

    if (v21)
    {
      [v21 removeFromSuperview];
      v22 = *&v0[v20];
    }

    else
    {
      v22 = 0;
    }

    *&v0[v20] = 0;
  }

  *&v0[v18] = 0;

  sub_1001903C8(v19);

  v23 = &v0[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowText];
  v25 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowText];
  v24 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowText + 8];
  if (v24)
  {
    v26 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowLabel;
    v27 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowLabel];

    if (v27)
    {
      [v27 removeFromSuperview];
      v28 = *&v0[v26];
    }

    else
    {
      v28 = 0;
    }

    *&v0[v26] = 0;
  }

  *v23 = 0;
  *(v23 + 1) = 0;

  sub_10018FE28(v25, v24);

  return [*&v0[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel] setText:0];
}

void sub_100195104()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowLabel);
  if (v1)
  {
    v2 = [v1 text];
    if (v2)
    {
      v3 = v2;
      v4 = sub_10076FF9C();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v30 = v4;
    v31 = v6;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v7 = [*(v0 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel) text];
  if (v7)
  {
    v8 = v7;
    v9 = sub_10076FF9C();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v32 = v9;
  v33 = v11;
  v12 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_detailLabel);
  if (v12)
  {
    v13 = [v12 text];
    if (v13)
    {
      v14 = v13;
      v15 = sub_10076FF9C();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    v34 = v15;
    v35 = v17;
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v18 = 0;
  v19 = _swiftEmptyArrayStorage;
LABEL_17:
  if (v18 <= 3)
  {
    v20 = 3;
  }

  else
  {
    v20 = v18;
  }

  v21 = v20 + 1;
  v22 = 16 * v18 + 40;
  while (1)
  {
    if (v18 == 3)
    {
      sub_10000A5D4(&unk_100943470);
      swift_arrayDestroy();
      sub_10000A5D4(&unk_10094BB60);
      sub_10003BCA8();
      sub_10076FEFC();

      return;
    }

    if (v21 == ++v18)
    {
      break;
    }

    v23 = v22 + 16;
    v24 = *&v29[v22];
    v22 += 16;
    if (v24)
    {
      v25 = *&v29[v23 - 24];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_10049D954(0, *(v19 + 2) + 1, 1, v19);
      }

      v27 = *(v19 + 2);
      v26 = *(v19 + 3);
      if (v27 >= v26 >> 1)
      {
        v19 = sub_10049D954((v26 > 1), v27 + 1, 1, v19);
      }

      *(v19 + 2) = v27 + 1;
      v28 = &v19[16 * v27];
      *(v28 + 4) = v25;
      *(v28 + 5) = v24;
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_100195570()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for TitleHeaderView(0);
  v1 = objc_msgSendSuper2(&v7, "_accessibilitySupplementaryFooterViews");
  if (v1)
  {
    v2 = v1;
    v3 = sub_1007701BC();
  }

  else
  {
    v3 = 0;
  }

  v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryView];
  if (v4)
  {
    v5 = v4;

    sub_10000A5D4(&unk_1009434B0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100783DD0;
    *(v3 + 56) = sub_100016F40(0, &qword_1009441F0);
    *(v3 + 32) = v5;
  }

  return v3;
}

id sub_1001956CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitleHeaderView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100195878()
{
  type metadata accessor for TitleHeaderView.Style(319);
  if (v0 <= 0x3F)
  {
    sub_100195E9C(319, &qword_10094B950, type metadata accessor for Accessory);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1001959F0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_10000A5D4(&qword_100949718);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_100763BAC();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[10];
    goto LABEL_9;
  }

  v15 = sub_100763BBC();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[11];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[13]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_100195BCC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_10000A5D4(&qword_100949718);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      v16 = sub_100763BAC();
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[10];
      }

      else
      {
        result = sub_100763BBC();
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[13]) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[11];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_100195D70()
{
  type metadata accessor for TitleHeaderView.TextConfiguration(319);
  if (v0 <= 0x3F)
  {
    sub_100195E9C(319, &qword_10094B9C8, type metadata accessor for TitleHeaderView.TextConfiguration);
    if (v1 <= 0x3F)
    {
      sub_100763BAC();
      if (v2 <= 0x3F)
      {
        sub_100763BBC();
        if (v3 <= 0x3F)
        {
          sub_100195EF0();
          if (v4 <= 0x3F)
          {
            sub_100016F40(319, &qword_100942F10);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100195E9C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1007711AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100195EF0()
{
  if (!qword_10094B9D0[0])
  {
    sub_100016F40(255, &qword_100942F10);
    v0 = sub_1007711AC();
    if (!v1)
    {
      atomic_store(v0, qword_10094B9D0);
    }
  }
}

uint64_t sub_100195F7C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10076D3DC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10076D9AC();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1001960B4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_10076D3DC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10076D9AC();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1001961D8()
{
  sub_100016F40(319, &qword_100942F10);
  if (v0 <= 0x3F)
  {
    sub_1001962D4();
    if (v1 <= 0x3F)
    {
      sub_10076D3DC();
      if (v2 <= 0x3F)
      {
        sub_10076D9AC();
        if (v3 <= 0x3F)
        {
          sub_100196324();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1001962D4()
{
  if (!qword_100950F90)
  {
    v0 = sub_1007711AC();
    if (!v1)
    {
      atomic_store(v0, &qword_100950F90);
    }
  }
}

unint64_t sub_100196324()
{
  result = qword_10094BAA0;
  if (!qword_10094BAA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10094BAA0);
  }

  return result;
}

unint64_t sub_10019638C()
{
  result = qword_10094BAF0;
  if (!qword_10094BAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BAF0);
  }

  return result;
}

id sub_1001963E0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, double a9, double a10, double a11, double a12, uint64_t a13, int *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  v326 = a6;
  v327 = a8;
  v286 = a7;
  v323 = a1;
  v324 = a5;
  v322 = a4;
  v295 = a3;
  v332 = a2;
  v319 = a9;
  v320 = a10;
  v338 = a16;
  v20 = sub_10076D39C();
  v293 = *(v20 - 8);
  v294 = v20;
  __chkstk_darwin(v20);
  v292 = v285 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = sub_10076D1AC();
  v289 = *(v291 - 8);
  __chkstk_darwin(v291);
  v288 = v285 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v333 = sub_10076D9AC();
  v348 = *(v333 - 8);
  __chkstk_darwin(v333);
  v290 = v285 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = sub_100763BCC();
  v314 = *(v316 - 8);
  __chkstk_darwin(v316);
  v315 = v285 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100763BBC();
  v311 = *(v25 - 8);
  v312 = v25;
  __chkstk_darwin(v25);
  v313 = v285 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100763BAC();
  v308 = *(v27 - 8);
  v309 = v27;
  __chkstk_darwin(v27);
  v310 = v285 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v318 = sub_100763BFC();
  v321 = *(v318 - 8);
  __chkstk_darwin(v318);
  v317 = v285 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100763BEC();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v300 = v285 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v345 = v285 - v34;
  __chkstk_darwin(v35);
  v344 = v285 - v36;
  __chkstk_darwin(v37);
  v336 = v285 - v38;
  v39 = sub_10000A5D4(&qword_100949718);
  __chkstk_darwin(v39 - 8);
  v298 = v285 - v40;
  v41 = sub_10076997C();
  v329 = *(v41 - 8);
  v330 = v41;
  __chkstk_darwin(v41);
  v328 = v285 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10075D78C();
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v46 = v285 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v297 = *(v47 - 1);
  __chkstk_darwin(v47);
  v337 = v285 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v301 = v285 - v50;
  __chkstk_darwin(v51);
  v53 = (v285 - v52);
  v54 = sub_10000A5D4(&unk_10094BB20);
  v55 = *(v54 - 8);
  v306 = v54;
  v307 = v55;
  __chkstk_darwin(v54);
  v287 = v285 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v341 = v285 - v58;
  __chkstk_darwin(v59);
  v340 = v285 - v60;
  __chkstk_darwin(v61);
  v299 = v285 - v62;
  __chkstk_darwin(v63);
  v343 = v285 - v64;
  __chkstk_darwin(v65);
  v342 = v285 - v66;
  __chkstk_darwin(v67);
  v335 = (v285 - v68);
  __chkstk_darwin(v69);
  v296 = v285 - v70;
  *&v72 = __chkstk_darwin(v71).n128_u64[0];
  v74 = (v285 - v73);
  v325 = a18;
  v75 = [a18 traitCollection];
  v346 = v30;
  v347 = v31;
  v334 = v74;
  v339 = v47;
  v331 = v75;
  v303 = v43;
  v304 = v46;
  v305 = v44;
  if (!v332)
  {
    v89 = *(v31 + 56);
    v89(v74, 1, 1, v30);
    goto LABEL_23;
  }

  v76 = v338;
  sub_100199C28(v338, v53, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100016F40(0, &qword_100942F00);
  v77 = sub_100770B3C();
  *&v384 = v323;
  *(&v384 + 1) = v332;

  sub_10075D76C();
  sub_10002564C();
  sub_1007711EC();
  v79 = v78;
  (*(v44 + 8))(v46, v43);

  v80 = 0;
  if ((v79 & 1) == 0)
  {
    [v77 lineHeight];
    v82 = ceil(v81 * 1.3);
    if ((*&v82 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v82 > -9.22337204e18)
    {
      if (v82 >= 9.22337204e18)
      {
LABEL_116:
        __break(1u);
        goto LABEL_117;
      }

      v80 = v82;
      goto LABEL_7;
    }

    __break(1u);
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

LABEL_7:
  v302 = v53;
  if (!v295)
  {
    goto LABEL_15;
  }

  v285[1] = v80;

  sub_10076BE2C();
  v83 = v333;
  if (v84 && (v85 = [objc_opt_self() configurationWithFont:v77], v86 = sub_10076FF6C(), , v87 = objc_msgSend(objc_opt_self(), "_systemImageNamed:withConfiguration:", v86, v85), v86, v85, v47 = v339, v87))
  {
    [v87 size];
    sub_10076DDDC();
    swift_allocObject();
    v88 = sub_10076DDBC();
  }

  else
  {
    v90 = v47[6];
    v91 = sub_10076D3DC();
    v92 = v288;
    (*(*(v91 - 8) + 16))(v288, v76 + v90, v91);
    v93 = v289;
    v94 = v291;
    (*(v289 + 104))(v92, enum case for FontSource.useCase(_:), v291);
    *(&v385 + 1) = v94;
    v386 = &protocol witness table for FontSource;
    v95 = sub_10000DB7C(&v384);
    (*(v93 + 16))(v95, v92, v94);

    v96 = v290;
    sub_10076D9BC();
    (*(v93 + 8))(v92, v94);
    sub_10076D99C();
    sub_10076BEFC();
    v97 = v292;
    sub_10076D3AC();
    sub_10076D31C();

    (*(v293 + 8))(v97, v294);
    (*(v348 + 8))(v96, v83);
    sub_10076DDDC();
    swift_allocObject();
    v88 = sub_10076DDBC();
  }

  if (v88)
  {
    *(&v385 + 1) = sub_10076DDDC();
    v386 = &protocol witness table for LayoutViewPlaceholder;
    v295 = v88;
    *&v384 = v88;
  }

  else
  {
LABEL_15:
    v295 = 0;
    v386 = 0;
    v384 = 0u;
    v385 = 0u;
  }

  v383 = 0;
  v381 = 0u;
  v382 = 0u;
  v380 = 0;
  v378 = 0u;
  v379 = 0u;
  v98 = sub_10076C04C();
  v376 = v98;
  v377 = sub_100199B08(&qword_100943230, &type metadata accessor for Feature);
  v99 = sub_10000DB7C(v375);
  (*(*(v98 - 8) + 104))(v99, enum case for Feature.measurement_with_labelplaceholder(_:), v98);
  v100 = v77;

  v53 = v100;
  sub_10076C90C();
  sub_10000CD74(v375);
  v101 = v328;
  sub_10076996C();
  sub_10076994C();
  (*(v329 + 8))(v101, v330);
  sub_100016E2C(&v384, v374, &unk_10094DA00);
  v102 = v376;
  v103 = v377;
  v104 = sub_10000CF78(v375, v376);
  v372 = v102;
  v373 = *(v103 + 8);
  v105 = sub_10000DB7C(v371);
  (*(*(v102 - 8) + 16))(v105, v104, v102);
  v106 = v339;
  v107 = v302;
  v108 = *(v302 + v339[8]);
  v369 = &type metadata for Float;
  v370 = &protocol witness table for Float;
  v368 = v108;
  v109 = v339[9];
  v110 = v333;
  v366 = v333;
  v367 = &protocol witness table for StaticDimension;
  v111 = sub_10000DB7C(v365);
  v112 = *(v348 + 16);
  v112(v111, v107 + v109, v110);
  v113 = v106[10];
  v363 = v110;
  v364 = &protocol witness table for StaticDimension;
  v114 = sub_10000DB7C(v362);
  v112(v114, v107 + v113, v110);
  sub_100016E2C(&v381, &v356, &qword_10094BB30);
  v115 = *(&v357 + 1);
  if (*(&v357 + 1))
  {
    v116 = v358;
    v117 = sub_10000CF78(&v356, *(&v357 + 1));
    *(&v360 + 1) = v115;
    v361 = *(v116 + 8);
    v118 = sub_10000DB7C(&v359);
    (*(*(v115 - 8) + 16))(v118, v117, v115);
    sub_10000CD74(&v356);
  }

  else
  {
    sub_10000CFBC(&v356, &qword_10094BB30);
    v359 = 0u;
    v360 = 0u;
    v361 = 0;
  }

  v119 = v296;
  sub_100016E2C(&v378, v353, &qword_10094BB30);
  v120 = v354;
  v43 = v303;
  if (v354)
  {
    v121 = v355;
    v122 = sub_10000CF78(v353, v354);
    *(&v357 + 1) = v120;
    v358 = *(v121 + 8);
    v123 = sub_10000DB7C(&v356);
    (*(*(v120 - 8) + 16))(v123, v122, v120);
    sub_10000CD74(v353);
  }

  else
  {
    sub_10000CFBC(v353, &qword_10094BB30);
    v356 = 0u;
    v357 = 0u;
    v358 = 0;
  }

  v124 = v339;
  v125 = v302;
  sub_10000A570(v302 + v339[12], v353);
  sub_10000A570(v125 + v124[13], v352);
  v351 = &protocol witness table for Double;
  v350 = &type metadata for Double;
  v349 = 0x4020000000000000;
  sub_100763BDC();

  sub_10000CFBC(&v378, &qword_10094BB30);
  v47 = v124;
  sub_10000CFBC(&v381, &qword_10094BB30);
  sub_100199AA8(v125, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10000CD74(v375);

  sub_10000CFBC(&v384, &unk_10094DA00);
  v30 = v346;
  v89 = *(v347 + 56);
  v89(v119, 0, 1, v346);
  sub_100023AD0(v119, v334, &unk_10094BB20);
LABEL_23:
  v126 = v333;
  v127 = v324;
  if (!v327)
  {
LABEL_26:
    v89(v335, 1, 1, v30);
    v386 = 0;
    v384 = 0u;
    v385 = 0u;
    v381 = 0u;
    v382 = 0u;
    v383 = 0;
    goto LABEL_41;
  }

  v128 = v43;
  v53 = type metadata accessor for TitleHeaderView.Style(0);
  v129 = v298;
  sub_100016E2C(v338 + v53[6], v298, &qword_100949718);
  if ((*(v297 + 48))(v129, 1, v47) == 1)
  {
    sub_10000CFBC(v129, &qword_100949718);
    v43 = v128;
    goto LABEL_26;
  }

  sub_100199BC0(v129, v301, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100016F40(0, &qword_100942F00);
  v332 = sub_100770B3C();
  *&v384 = v286;
  *(&v384 + 1) = v327;

  v130 = v304;
  sub_10075D76C();
  sub_10002564C();
  sub_1007711EC();
  v132 = v131;
  (*(v305 + 8))(v130, v128);

  if (v132)
  {
LABEL_31:
    if (*(v338 + v53[9]) == 2)
    {
      v302 = a14;
      v323 = a13;
      v136 = sub_10076C04C();
      *(&v385 + 1) = v136;
      v298 = sub_100199B08(&qword_100943230, &type metadata accessor for Feature);
      v386 = v298;
      v137 = sub_10000DB7C(&v384);
      LODWORD(v297) = enum case for Feature.measurement_with_labelplaceholder(_:);
      v138 = *(*(v136 - 8) + 104);
      v138(v137);
      v139 = v332;

      v140 = v139;
      sub_10076C90C();
      sub_10000CD74(&v384);
      v141 = v328;
      sub_10076996C();
      sub_10076994C();
      v332 = v89;
      v142 = v330;
      v143 = *(v329 + 8);
      v143(v141, v330);
      *(&v382 + 1) = v136;
      v383 = v298;
      v144 = sub_10000DB7C(&v381);
      (v138)(v144, v297, v136);
      v126 = v333;

      v145 = v140;
      v53 = sub_10076C90C();
      sub_10000CD74(&v381);
      sub_10076996C();
      sub_10076994C();

      v143(v141, v142);
      v127 = v324;
      sub_100199AA8(v301, type metadata accessor for TitleHeaderView.TextConfiguration);

      (v332)(v335, 1, 1, v346);
      v47 = v339;
    }

    else
    {
      v386 = 0;
      v384 = 0u;
      v385 = 0u;
      v383 = 0;
      v381 = 0u;
      v382 = 0u;
      v380 = 0;
      v378 = 0u;
      v379 = 0u;
      v146 = sub_10076C04C();
      v376 = v146;
      v377 = sub_100199B08(&qword_100943230, &type metadata accessor for Feature);
      v147 = sub_10000DB7C(v375);
      (*(*(v146 - 8) + 104))(v147, enum case for Feature.measurement_with_labelplaceholder(_:), v146);

      v148 = v332;
      sub_10076C90C();
      sub_10000CD74(v375);
      v149 = v328;
      v332 = v148;
      sub_10076996C();
      sub_10076994C();
      (*(v329 + 8))(v149, v330);
      sub_100016E2C(&v384, v374, &unk_10094DA00);
      v150 = v376;
      v151 = v377;
      v152 = sub_10000CF78(v375, v376);
      v372 = v150;
      v373 = *(v151 + 8);
      v153 = sub_10000DB7C(v371);
      (*(*(v150 - 8) + 16))(v153, v152, v150);
      v154 = v339;
      v155 = v301;
      v156 = *(v301 + v339[8]);
      v369 = &type metadata for Float;
      v370 = &protocol witness table for Float;
      v368 = v156;
      v157 = v339[9];
      v366 = v126;
      v367 = &protocol witness table for StaticDimension;
      v158 = sub_10000DB7C(v365);
      v159 = v126;
      v160 = *(v348 + 16);
      v160(v158, v155 + v157, v159);
      v161 = v154[10];
      v363 = v159;
      v364 = &protocol witness table for StaticDimension;
      v162 = sub_10000DB7C(v362);
      v160(v162, v155 + v161, v159);
      sub_100016E2C(&v381, &v356, &qword_10094BB30);
      v163 = *(&v357 + 1);
      if (*(&v357 + 1))
      {
        v164 = v358;
        v165 = sub_10000CF78(&v356, *(&v357 + 1));
        *(&v360 + 1) = v163;
        v361 = *(v164 + 8);
        v166 = sub_10000DB7C(&v359);
        (*(*(v163 - 8) + 16))(v166, v165, v163);
        sub_10000CD74(&v356);
      }

      else
      {
        sub_10000CFBC(&v356, &qword_10094BB30);
        v359 = 0u;
        v360 = 0u;
        v361 = 0;
      }

      v167 = v347;
      sub_100016E2C(&v378, v353, &qword_10094BB30);
      v168 = v354;
      if (v354)
      {
        v169 = v355;
        v170 = sub_10000CF78(v353, v354);
        *(&v357 + 1) = v168;
        v358 = *(v169 + 8);
        v171 = sub_10000DB7C(&v356);
        (*(*(v168 - 8) + 16))(v171, v170, v168);
        sub_10000CD74(v353);
      }

      else
      {
        sub_10000CFBC(v353, &qword_10094BB30);
        v356 = 0u;
        v357 = 0u;
        v358 = 0;
      }

      v47 = v339;
      v172 = v301;
      sub_10000A570(v301 + v339[12], v353);
      sub_10000A570(v172 + v47[13], v352);
      v351 = &protocol witness table for Double;
      v350 = &type metadata for Double;
      v349 = 0x4020000000000000;
      v173 = v335;
      sub_100763BDC();
      sub_10000CFBC(&v378, &qword_10094BB30);
      sub_10000CFBC(&v381, &qword_10094BB30);
      sub_10000CFBC(&v384, &unk_10094DA00);
      sub_100199AA8(v172, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_10000CD74(v375);

      v174 = *(v167 + 56);
      v53 = (v167 + 56);
      v174(v173, 0, 1, v346);
      v386 = 0;
      v384 = 0u;
      v385 = 0u;
      v381 = 0u;
      v382 = 0u;
      v383 = 0;
      v126 = v333;
      v127 = v324;
    }

    v43 = v303;
LABEL_41:
    v332 = type metadata accessor for TitleHeaderView.Style(0);
    v324 = v338 + v332[5];
    sub_100199C28(v324, v337, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_100016F40(0, &qword_100942F00);
    v327 = sub_100770B3C();
    if (!v127)
    {
      goto LABEL_49;
    }

    v175 = v126;
    v44 = v322;
    *&v378 = v322;
    *(&v378 + 1) = v127;

    v46 = v304;
    sub_10075D76C();
    sub_10002564C();
    sub_1007711EC();
    v177 = v176;
    (*(v305 + 8))(v46, v43);

    if (v177)
    {
LABEL_48:
      v126 = v175;
      if (!v326)
      {
        goto LABEL_56;
      }

LABEL_49:
      v323 = a15;

      sub_10076BE2C();
      if (v180 && (v181 = [objc_opt_self() configurationWithFont:v327], v182 = sub_10076FF6C(), , v183 = objc_msgSend(objc_opt_self(), "_systemImageNamed:withConfiguration:", v182, v181), v182, v47 = v339, v181, v183))
      {
        [v183 size];
        sub_10076DDDC();
        swift_allocObject();
        v184 = sub_10076DDBC();
      }

      else
      {
        v185 = v126;
        v186 = v324;
        v187 = v47[6];
        v188 = sub_10076D3DC();
        v189 = v186 + v187;
        v126 = v185;
        v190 = v288;
        (*(*(v188 - 8) + 16))(v288, v189, v188);
        v191 = v289;
        v192 = v291;
        (*(v289 + 104))(v190, enum case for FontSource.useCase(_:), v291);
        *(&v379 + 1) = v192;
        v380 = &protocol witness table for FontSource;
        v193 = sub_10000DB7C(&v378);
        (*(v191 + 16))(v193, v190, v192);

        v194 = v290;
        sub_10076D9BC();
        (*(v191 + 8))(v190, v192);
        sub_10076D99C();
        sub_10076BEFC();
        v195 = v292;
        sub_10076D3AC();
        sub_10076D31C();

        (*(v293 + 8))(v195, v294);
        (*(v348 + 8))(v194, v126);
        sub_10076DDDC();
        swift_allocObject();
        v184 = sub_10076DDBC();
      }

      if (v184)
      {
        v196 = sub_10076DDDC();
        v380 = &protocol witness table for LayoutViewPlaceholder;
        *(&v379 + 1) = v196;
        v326 = v184;
        *&v378 = v184;
      }

      else
      {
LABEL_56:
        v326 = 0;
        v380 = 0;
        v378 = 0u;
        v379 = 0u;
      }

      v197 = sub_10076C04C();
      v376 = v197;
      v377 = sub_100199B08(&qword_100943230, &type metadata accessor for Feature);
      v198 = sub_10000DB7C(v375);
      (*(*(v197 - 8) + 104))(v198, enum case for Feature.measurement_with_labelplaceholder(_:), v197);

      v199 = v327;
      sub_10076C90C();
      sub_10000CD74(v375);
      v200 = v328;
      v327 = v199;
      sub_10076996C();
      sub_10076994C();
      (*(v329 + 8))(v200, v330);
      sub_100016E2C(&v378, v374, &unk_10094DA00);
      v201 = v376;
      v202 = v377;
      v203 = sub_10000CF78(v375, v376);
      v372 = v201;
      v373 = *(v202 + 8);
      v204 = sub_10000DB7C(v371);
      (*(*(v201 - 8) + 16))(v204, v203, v201);
      v205 = v339;
      v206 = v337;
      v207 = *(v337 + v339[8]);
      v369 = &type metadata for Float;
      v370 = &protocol witness table for Float;
      v368 = v207;
      v208 = v339[9];
      v366 = v126;
      v367 = &protocol witness table for StaticDimension;
      v209 = sub_10000DB7C(v365);
      v210 = *(v348 + 16);
      v210(v209, v206 + v208, v126);
      v211 = v205[10];
      v363 = v126;
      v364 = &protocol witness table for StaticDimension;
      v212 = sub_10000DB7C(v362);
      v210(v212, v206 + v211, v126);
      sub_100016E2C(&v384, &v356, &qword_10094BB30);
      v213 = *(&v357 + 1);
      if (*(&v357 + 1))
      {
        v214 = v358;
        v215 = sub_10000CF78(&v356, *(&v357 + 1));
        *(&v360 + 1) = v213;
        v361 = *(v214 + 8);
        v216 = sub_10000DB7C(&v359);
        (*(*(v213 - 8) + 16))(v216, v215, v213);
        sub_10000CD74(&v356);
      }

      else
      {
        sub_10000CFBC(&v356, &qword_10094BB30);
        v359 = 0u;
        v360 = 0u;
        v361 = 0;
      }

      v217 = v340;
      v218 = v338;
      sub_100016E2C(&v381, v353, &qword_10094BB30);
      v219 = v354;
      if (v354)
      {
        v220 = v355;
        v221 = sub_10000CF78(v353, v354);
        *(&v357 + 1) = v219;
        v358 = *(v220 + 8);
        v222 = sub_10000DB7C(&v356);
        (*(*(v219 - 8) + 16))(v222, v221, v219);
        sub_10000CD74(v353);
      }

      else
      {
        sub_10000CFBC(v353, &qword_10094BB30);
        v356 = 0u;
        v357 = 0u;
        v358 = 0;
      }

      v223 = v341;
      v224 = v339;
      v225 = v337;
      sub_10000A570(v337 + v339[12], v353);
      sub_10000A570(v225 + v224[13], v352);
      v351 = &protocol witness table for Double;
      v350 = &type metadata for Double;
      v349 = 0x4020000000000000;
      sub_100763BDC();
      sub_10000CD74(v375);
      sub_10000CFBC(&v378, &unk_10094DA00);
      v226 = *(v218 + v332[9]);
      sub_10000A5D4(&qword_10094BB38);
      v348 = *(v307 + 72);
      v227 = (*(v307 + 80) + 32) & ~*(v307 + 80);
      if (v226)
      {
        if (v226 != 1)
        {
          v255 = v348;
          v333 = swift_allocObject();
          v256 = v333 + v227;
          sub_100016E2C(v334, v333 + v227, &unk_10094BB20);
          v257 = v346;
          v258 = v347;
          (*(v347 + 16))(v256 + v255, v336, v346);
          (*(v258 + 56))(v256 + v255, 0, 1, v257);
          v259 = v299;
          sub_100016E2C(v256, v299, &unk_10094BB20);
          v260 = v287;
          sub_100023AD0(v259, v287, &unk_10094BB20);
          v261 = *(v258 + 48);
          v262 = (v258 + 32);
          v263 = v261(v260, 1, v257);
          v345 = (v258 + 32);
          if (v263 == 1)
          {
            sub_10000CFBC(v260, &unk_10094BB20);
            v264 = _swiftEmptyArrayStorage;
          }

          else
          {
            v265 = *v262;
            (*v262)(v300, v260, v257);
            v264 = _swiftEmptyArrayStorage;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v264 = sub_10049E330(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
            }

            v267 = *(v264 + 2);
            v266 = *(v264 + 3);
            if (v267 >= v266 >> 1)
            {
              v264 = sub_10049E330(v266 > 1, v267 + 1, 1, v264);
            }

            *(v264 + 2) = v267 + 1;
            v268 = &v264[((*(v347 + 80) + 32) & ~*(v347 + 80)) + *(v347 + 72) * v267];
            v257 = v346;
            v265(v268, v300, v346);
            v260 = v287;
          }

          v269 = v299;
          sub_100016E2C(v256 + v348, v299, &unk_10094BB20);
          sub_100023AD0(v269, v260, &unk_10094BB20);
          if (v261(v260, 1, v257) == 1)
          {
            sub_10000CFBC(v260, &unk_10094BB20);
            v254 = v338;
            v53 = v334;
          }

          else
          {
            v270 = v257;
            v271 = *v345;
            (*v345)(v300, v260, v270);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v254 = v338;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v264 = sub_10049E330(0, *(v264 + 2) + 1, 1, v264);
            }

            v53 = v334;
            v274 = *(v264 + 2);
            v273 = *(v264 + 3);
            if (v274 >= v273 >> 1)
            {
              v264 = sub_10049E330(v273 > 1, v274 + 1, 1, v264);
            }

            *(v264 + 2) = v274 + 1;
            v271(&v264[((*(v347 + 80) + 32) & ~*(v347 + 80)) + *(v347 + 72) * v274], v300, v346);
          }

          swift_setDeallocating();
          swift_arrayDestroy();
LABEL_100:
          swift_deallocClassInstance();
          v43 = v317;
          if (a11 == 0.0 && a12 == 0.0)
          {
            v275 = 0;
            v276 = 0;
            v277 = 0;
            *&v379 = 0;
            *(&v378 + 1) = 0;
          }

          else
          {
            v276 = sub_10076DDDC();
            swift_allocObject();
            v275 = sub_10076DDBC();
            v277 = &protocol witness table for LayoutViewPlaceholder;
          }

          *&v378 = v275;
          *(&v379 + 1) = v276;
          v380 = v277;
          sub_100016E2C(&v378, v375, &unk_10094DA00);
          v278 = v332;
          v279 = *(v254 + v332[14]);
          v374[3] = &type metadata for CGFloat;
          v374[4] = &protocol witness table for CGFloat;
          v374[0] = v279;
          (*(v308 + 16))(v310, v254 + v332[10], v309);
          (*(v311 + 16))(v313, v254 + v278[11], v312);
          (*(v314 + 104))(v315, enum case for TitleHeaderLayout.AccessoryHorizontalAlignment.rightJustified(_:), v316);
          sub_100763B7C();
          sub_100770ACC();
          sub_100199B08(&unk_10094BB40, &type metadata accessor for TitleHeaderLayout);
          v44 = v318;
          sub_10076D2AC();
          v375[0] = v280;
          v375[1] = v281;
          sub_100770ADC();
          if (JUScreenClassGetMain() != 1)
          {

            (*(v321 + 8))(v43, v44);
            (*(v347 + 8))(v336, v346);
            sub_100199AA8(v337, type metadata accessor for TitleHeaderView.TextConfiguration);
            sub_10000CFBC(&v381, &qword_10094BB30);
            sub_10000CFBC(&v384, &qword_10094BB30);
            sub_10000CFBC(v335, &unk_10094BB20);
            sub_10000CFBC(v53, &unk_10094BB20);
            return sub_10000CFBC(&v378, &unk_10094DA00);
          }

          v282 = v346;
          v47 = v347;
          v46 = v331;
          if (qword_10093FC38 != -1)
          {
            swift_once();
          }

          v283 = sub_10000A61C(v339, qword_10099DF58);
          if (sub_10019942C(v324, v283))
          {

            (*(v321 + 8))(v43, v44);
            (*(v47 + 1))(v336, v282);
            sub_100199AA8(v337, type metadata accessor for TitleHeaderView.TextConfiguration);
            sub_10000CFBC(&v381, &qword_10094BB30);
            sub_10000CFBC(&v384, &qword_10094BB30);
            sub_10000CFBC(v335, &unk_10094BB20);
            sub_10000CFBC(v53, &unk_10094BB20);
            return sub_10000CFBC(&v378, &unk_10094DA00);
          }

          if (qword_10093FC40 == -1)
          {
LABEL_111:
            v284 = sub_10000A61C(v339, qword_10099DF70);
            sub_10019942C(v324, v284);

            (*(v321 + 8))(v43, v44);
            (*(v47 + 1))(v336, v346);
            sub_100199AA8(v337, type metadata accessor for TitleHeaderView.TextConfiguration);
            sub_10000CFBC(&v381, &qword_10094BB30);
            sub_10000CFBC(&v384, &qword_10094BB30);
            sub_10000CFBC(v335, &unk_10094BB20);
            sub_10000CFBC(v53, &unk_10094BB20);
            return sub_10000CFBC(&v378, &unk_10094DA00);
          }

LABEL_119:
          swift_once();
          goto LABEL_111;
        }

        v228 = v348;
        v333 = swift_allocObject();
        v229 = v333 + v227;
        sub_100016E2C(v334, v333 + v227, &unk_10094BB20);
        v231 = v346;
        v230 = v347;
        (*(v347 + 16))(v229 + v228, v336, v346);
        v232 = *(v230 + 56);
        v230 += 56;
        v232(v229 + v228, 0, 1, v231);
        sub_100016E2C(v335, v229 + 2 * v228, &unk_10094BB20);
        v233 = (v230 - 8);
        v344 = (v230 - 24);
        v234 = v231;
        v235 = _swiftEmptyArrayStorage;
        v236 = 3;
        v342 = v229;
        do
        {
          v237 = v343;
          sub_100016E2C(v229, v343, &unk_10094BB20);
          sub_100023AD0(v237, v223, &unk_10094BB20);
          if ((*v233)(v223, 1, v234) == 1)
          {
            sub_10000CFBC(v223, &unk_10094BB20);
          }

          else
          {
            v238 = *v344;
            (*v344)(v345, v223, v234);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v235 = sub_10049E330(0, *(v235 + 2) + 1, 1, v235);
            }

            v240 = *(v235 + 2);
            v239 = *(v235 + 3);
            if (v240 >= v239 >> 1)
            {
              v235 = sub_10049E330(v239 > 1, v240 + 1, 1, v235);
            }

            *(v235 + 2) = v240 + 1;
            v234 = v346;
            v238(&v235[((*(v347 + 80) + 32) & ~*(v347 + 80)) + *(v347 + 72) * v240], v345, v346);
            v223 = v341;
          }

          v229 += v348;
          --v236;
        }

        while (v236);
      }

      else
      {
        v241 = v348;
        v242 = 2 * v348;
        v333 = swift_allocObject();
        v243 = v347;
        v244 = v333 + v227;
        sub_100016E2C(v334, v333 + v227, &unk_10094BB20);
        sub_100016E2C(v335, v244 + v241, &unk_10094BB20);
        v245 = v346;
        (*(v243 + 16))(v244 + v242, v336, v346);
        (*(v243 + 56))(v244 + v242, 0, 1, v245);
        v246 = (v243 + 48);
        v345 = (v243 + 32);
        v247 = v245;
        v248 = _swiftEmptyArrayStorage;
        v249 = 3;
        v343 = v244;
        do
        {
          v250 = v342;
          sub_100016E2C(v244, v342, &unk_10094BB20);
          sub_100023AD0(v250, v217, &unk_10094BB20);
          if ((*v246)(v217, 1, v247) == 1)
          {
            sub_10000CFBC(v217, &unk_10094BB20);
          }

          else
          {
            v251 = *v345;
            (*v345)(v344, v217, v247);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v248 = sub_10049E330(0, *(v248 + 2) + 1, 1, v248);
            }

            v253 = *(v248 + 2);
            v252 = *(v248 + 3);
            if (v253 >= v252 >> 1)
            {
              v248 = sub_10049E330(v252 > 1, v253 + 1, 1, v248);
            }

            *(v248 + 2) = v253 + 1;
            v247 = v346;
            v251(&v248[((*(v347 + 80) + 32) & ~*(v347 + 80)) + *(v347 + 72) * v253], v344, v346);
            v217 = v340;
          }

          v244 += v348;
          --v249;
        }

        while (v249);
      }

      swift_setDeallocating();
      swift_arrayDestroy();
      v254 = v338;
      v53 = v334;
      goto LABEL_100;
    }

    [v327 lineHeight];
    v179 = ceil(v178 * 1.3);
    if ((*&v179 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v179 > -9.22337204e18)
      {
        if (v179 < 9.22337204e18)
        {
          goto LABEL_48;
        }

LABEL_118:
        __break(1u);
        goto LABEL_119;
      }

LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    goto LABEL_115;
  }

  result = [v332 lineHeight];
  v135 = ceil(v134 * 1.3);
  if ((*&v135 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_121;
  }

  if (v135 <= -9.22337204e18)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  if (v135 < 9.22337204e18)
  {
    goto LABEL_31;
  }

LABEL_122:
  __break(1u);
  return result;
}

BOOL sub_10019942C(uint64_t a1, uint64_t a2)
{
  sub_100016F40(0, &qword_10094D040);
  if ((sub_100770EEC() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (!v5 || (*(a1 + 8) != *(a2 + 8) || v4 != v5) && (sub_10077167C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  if (sub_10076D3CC() & 1) != 0 && *(a1 + v6[7]) == *(a2 + v6[7]) && *(a1 + v6[8]) == *(a2 + v6[8]) && (sub_10076D96C() & 1) != 0 && (sub_10076D96C())
  {
    return *(a1 + v6[11]) == *(a2 + v6[11]);
  }

  return 0;
}

BOOL sub_10019954C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v5 = *(v4 - 1);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&qword_100949718);
  __chkstk_darwin(v8 - 8);
  v10 = &v30 - v9;
  v11 = sub_10000A5D4(&qword_10094BB00);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  sub_100016F40(0, &qword_10094D040);
  if ((sub_100770EEC() & 1) == 0)
  {
    return 0;
  }

  v14 = *(a1 + 16);
  v15 = *(a2 + 16);
  if (v14)
  {
    if (!v15 || (*(a1 + 8) != *(a2 + 8) || v14 != v15) && (sub_10077167C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  if ((sub_10076D3CC() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  if (*(a1 + v4[8]) != *(a2 + v4[8]))
  {
    return 0;
  }

  if ((sub_10076D96C() & 1) == 0)
  {
    return 0;
  }

  if ((sub_10076D96C() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v4[11]) != *(a2 + v4[11]))
  {
    return 0;
  }

  v16 = type metadata accessor for TitleHeaderView.Style(0);
  if (!sub_10019942C(a1 + *(v16 + 20), a2 + *(v16 + 20)))
  {
    return 0;
  }

  v30 = v16;
  v17 = *(v16 + 24);
  v18 = *(v11 + 48);
  sub_100016E2C(a1 + v17, v13, &qword_100949718);
  v31 = v18;
  sub_100016E2C(a2 + v17, &v13[v18], &qword_100949718);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) != 1)
  {
    sub_100016E2C(v13, v10, &qword_100949718);
    v20 = v31;
    if (v19(&v13[v31], 1, v4) != 1)
    {
      sub_100199BC0(&v13[v20], v7, type metadata accessor for TitleHeaderView.TextConfiguration);
      v21 = sub_10019942C(v10, v7);
      sub_100199AA8(v7, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_100199AA8(v10, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_10000CFBC(v13, &qword_100949718);
      if (!v21)
      {
        return 0;
      }

      goto LABEL_23;
    }

    sub_100199AA8(v10, type metadata accessor for TitleHeaderView.TextConfiguration);
LABEL_21:
    sub_10000CFBC(v13, &qword_10094BB00);
    return 0;
  }

  if (v19(&v13[v31], 1, v4) != 1)
  {
    goto LABEL_21;
  }

  sub_10000CFBC(v13, &qword_100949718);
LABEL_23:
  v22 = v30;
  if (*(a1 + v30[7]) != *(a2 + v30[7]) || *(a1 + v30[8]) != *(a2 + v30[8]) || *(a1 + v30[9]) != *(a2 + v30[9]) || (sub_100763B9C() & 1) == 0)
  {
    return 0;
  }

  v23 = v22[12];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24)
  {
    if (!v25)
    {
      return 0;
    }

    sub_100016F40(0, &qword_100942F10);
    v26 = v25;
    v27 = v24;
    v28 = sub_100770EEC();

    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  if (sub_100770EEC())
  {
    sub_100763BBC();
    sub_100199B08(&qword_10094BB08, &type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment);
    sub_10077018C();
    sub_10077018C();
    return v33 == v32;
  }

  return 0;
}

uint64_t sub_100199AA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100199B08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100199B50(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_10094BB50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100199BC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100199C28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_100199C90()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowText);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowLabel) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtwork) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtworkView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtwork) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtworkView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_detailLabel) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_shortDetailLabel) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryView) = 0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessory;
  v3 = type metadata accessor for Accessory();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = (v0 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryAction);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_separatorInset);
  v6 = *&UIEdgeInsetsZero.bottom;
  *v5 = *&UIEdgeInsetsZero.top;
  v5[1] = v6;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_allowsAccessibilityLayouts) = 1;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_100199DE8(uint64_t a1)
{
  if (a1 != 2)
  {
    return 0;
  }

  sub_10000A5D4(&unk_100942870);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100785D70;
  v2 = objc_opt_self();
  *(v1 + 32) = [v2 clearColor];
  sub_100016F40(0, &qword_100942F10);
  v3 = [v2 blackColor];
  v4 = [v3 colorWithAlphaComponent:0.06];

  v5.super.isa = [objc_allocWithZone(UIColor) initWithWhite:0.06667 alpha:1.0];
  v6.super.isa = v4;
  isa = sub_100770DEC(v6, v5).super.isa;
  result = v1;
  *(v1 + 40) = isa;
  return result;
}

unint64_t sub_100199F18@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10019C730(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_100199F78()
{
  *&v0[OBJC_IVAR____TtC20ProductPageExtension26SearchCollectionViewLayout_backgroundCornerRadius] = 0;
  v1 = &v0[OBJC_IVAR____TtC20ProductPageExtension26SearchCollectionViewLayout_pendingPrepareObserver];
  v2 = type metadata accessor for SearchCollectionViewLayout();
  *v1 = 0;
  *(v1 + 1) = 0;
  v10.receiver = v0;
  v10.super_class = v2;
  v3 = objc_msgSendSuper2(&v10, "init");
  type metadata accessor for SearchResultBackgroundView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = v3;
  v6 = sub_10076FF6C();
  [v5 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v6];

  type metadata accessor for SearchTransparencyView();
  v7 = swift_getObjCClassFromMetadata();
  sub_1007708EC();
  v8 = sub_10076FF6C();

  [v5 registerClass:v7 forDecorationViewOfKind:v8];

  return v5;
}

double sub_10019A164()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = type metadata accessor for SearchCollectionViewLayout();
  objc_msgSendSuper2(&v14, "collectionViewContentSize");
  v3 = v2;
  v4 = [v0 collectionView];
  if (v4)
  {
    v5 = v4;
    v6 = [v0 collectionView];
    if (v6 && (v7 = v6, v8 = [v6 delegate], v7, v8))
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v9 = sub_100766C4C();
        if (v9)
        {
          v10 = v9;
          v11 = OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits;
          [*&v8[OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits] pageContainerSize];
          [*&v8[v11] pageMarginInsets];
          sub_100770ACC();
          sub_1000D3900(v12, v10, v5);
        }

        swift_unknownObjectRelease();
        [v1 minimumLineSpacing];
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  return v3;
}

void *sub_10019A320(double a1)
{
  v2 = v1;
  v74 = sub_10000A5D4(&qword_10094BC30);
  __chkstk_darwin(v74);
  v5 = &v61 - v4;
  v6 = sub_10075E11C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v61 - v11;
  v13 = sub_10000A5D4(&unk_10094DE60);
  __chkstk_darwin(v13 - 8);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v61 - v17;
  __chkstk_darwin(v19);
  v75 = &v61 - v20;
  v21 = sub_10019ADFC(a1);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = type metadata accessor for SearchCollectionViewLayout();
  v80.receiver = v1;
  v80.super_class = v28;
  result = objc_msgSendSuper2(&v80, "layoutAttributesForElementsInRect:", v21, v23, v25, v27);
  if (!result)
  {
    return result;
  }

  v30 = result;
  sub_100016F40(0, &qword_100947EF0);
  v66 = sub_1007701BC();

  v31 = [v2 collectionView];
  if (!v31)
  {
    return v66;
  }

  v32 = v31;
  v33 = [v31 delegate];

  if (!v33)
  {
    return v66;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
    swift_unknownObjectRelease();
    return v66;
  }

  v65 = v15;
  v63 = v9;
  v73 = v7;
  v61 = v33;
  v34 = [*&v33[OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits] traitCollection];
  [v34 horizontalSizeClass];

  v35 = 1;
  sub_100766C5C();
  if ((v36 & 1) == 0)
  {
    sub_10075E08C();
    v35 = 0;
  }

  v72 = *(v73 + 56);
  v73 += 56;
  v72(v75, v35, 1, v6);
  v79 = _swiftEmptyArrayStorage;
  if (v66 >> 62)
  {
    v37 = sub_10077158C();
  }

  else
  {
    v37 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = v61;
  if (v37)
  {
    v78 = v2;
    if (v37 >= 1)
    {
      v38 = 0;
      v39 = v66;
      v69 = v66 & 0xC000000000000001;
      v70 = "pendingPrepareObserver";
      v67 = (v7 + 48);
      v68 = (v7 + 16);
      v62 = (v7 + 32);
      v76 = (v7 + 8);
      v71 = v37;
      v64 = v12;
      while (1)
      {
        if (v69)
        {
          v40 = sub_10077149C();
        }

        else
        {
          v40 = *(v39 + 8 * v38 + 32);
        }

        v77 = v40;
        v41 = [v40 indexPath];
        sub_10075E06C();

        v42 = sub_10076FF6C();
        isa = sub_10075E02C().super.isa;
        v44 = [v78 layoutAttributesForDecorationViewOfKind:v42 atIndexPath:isa];

        if (v44)
        {
          v45 = v44;
          sub_10077019C();
          if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_10077021C();
          }

          sub_10077025C();
        }

        (*v68)(v18, v12, v6);
        v72(v18, 0, 1, v6);
        v46 = *(v74 + 48);
        sub_1000DE51C(v18, v5);
        sub_1000DE51C(v75, &v5[v46]);
        v47 = *v67;
        if ((*v67)(v5, 1, v6) == 1)
        {
          break;
        }

        v48 = v18;
        v49 = v65;
        sub_1000DE51C(v5, v65);
        if (v47(&v5[v46], 1, v6) == 1)
        {
          sub_10000CFBC(v48, &unk_10094DE60);
          v50 = v49;
          v18 = v48;
          (*v76)(v50, v6);
          v12 = v64;
          v39 = v66;
LABEL_24:
          sub_10000CFBC(v5, &qword_10094BC30);
          goto LABEL_30;
        }

        v51 = v63;
        (*v62)(v63, &v5[v46], v6);
        sub_1000DE58C();
        v52 = sub_10076FF1C();
        v53 = *v76;
        (*v76)(v51, v6);
        sub_10000CFBC(v48, &unk_10094DE60);
        v54 = v49;
        v18 = v48;
        v53(v54, v6);
        sub_10000CFBC(v5, &unk_10094DE60);
        v12 = v64;
        v39 = v66;
        if (v52)
        {
          goto LABEL_26;
        }

LABEL_30:
        v59 = v77;
        sub_10019AF94(v77);
        sub_10077019C();
        if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        ++v38;
        sub_10077025C();

        (*v76)(v12, v6);
        if (v71 == v38)
        {
          v60 = v79;
          goto LABEL_37;
        }
      }

      sub_10000CFBC(v18, &unk_10094DE60);
      if (v47(&v5[v46], 1, v6) == 1)
      {
        sub_10000CFBC(v5, &unk_10094DE60);
LABEL_26:
        type metadata accessor for SearchTransparencyView();
        sub_1007708EC();
        v55 = sub_10076FF6C();

        v56 = sub_10075E02C().super.isa;
        v57 = [v78 layoutAttributesForDecorationViewOfKind:v55 atIndexPath:v56];

        if (v57)
        {
          v58 = v57;
          sub_10077019C();
          if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_10077021C();
          }

          sub_10077025C();
        }

        goto LABEL_30;
      }

      goto LABEL_24;
    }

    __break(1u);
  }

  else
  {
    v60 = _swiftEmptyArrayStorage;
LABEL_37:
    swift_unknownObjectRelease();

    sub_10000CFBC(v75, &unk_10094DE60);
    return v60;
  }

  return result;
}

double sub_10019ADFC(double a1)
{
  v3 = [v1 collectionView];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 collectionView];
    if (v5 && (v6 = v5, v7 = [v5 delegate], v6, v7))
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v8 = sub_100766C4C();
        if (v8)
        {
          v9 = v8;
          v10 = OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits;
          [*&v7[OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits] pageContainerSize];
          [*&v7[v10] pageMarginInsets];
          sub_100770ACC();
          sub_1000D3900(v11, v9, v4);
        }

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  return a1;
}

id sub_10019AF94(void *a1)
{
  v2 = v1;
  v38 = a1;
  v3 = sub_10075E11C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v35 - v12;
  v14 = [v1 collectionView];
  if (v14)
  {
    v15 = v14;
    v16 = [v1 collectionView];
    if (!v16 || (v17 = v16, v18 = [v16 delegate], v17, !v18))
    {
LABEL_14:

      goto LABEL_15;
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v35 = &protocol descriptor for UICollectionViewDelegateSearchLayout;
      v36 = v4;
      v37 = v3;
      v19 = [*&v18[OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits] traitCollection];
      [v19 horizontalSizeClass];

      sub_100766C5C();
      if (v20)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        sub_10075E08C();
        swift_unknownObjectRelease();
        v22 = v36;
        v21 = v37;
        (*(v36 + 32))(v13, v9, v37);
        v23 = [v2 collectionView];
        if (v23 && (v24 = v23, v25 = [v23 delegate], v24, v25))
        {
          swift_getObjectType();
          if (!swift_conformsToProtocol2())
          {

            swift_unknownObjectRelease();
            (*(v22 + 8))(v13, v21);
            goto LABEL_15;
          }

          v26 = sub_100766C4C();
          if (v26)
          {
            v27 = v26;
            v28 = OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits;
            [*&v25[OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits] pageContainerSize];
            [*&v25[v28] pageMarginInsets];
            sub_100770ACC();
            sub_1000D3900(v29, v27, v15);
          }

          swift_unknownObjectRelease();
          v32 = [v38 indexPath];
          sub_10075E06C();

          LOBYTE(v32) = sub_10075E03C();
          v33 = *(v22 + 8);
          v33(v6, v21);
          if (v32)
          {
            sub_100016F40(0, &qword_100947EF0);
            v34 = sub_10077116C();
            [v2 minimumLineSpacing];
            [v34 frame];
            [v34 setFrame:?];

            v33(v13, v21);
            return v34;
          }

          v33(v13, v21);
        }

        else
        {
          (*(v22 + 8))(v13, v21);
        }
      }

      goto LABEL_14;
    }

    swift_unknownObjectRelease();
  }

LABEL_15:
  v30 = v38;

  return v30;
}

uint64_t sub_10019B424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v129 = a2;
  v130 = a1;
  v6 = sub_10075E11C();
  v127 = *(v6 - 8);
  __chkstk_darwin(v6);
  v124 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&qword_10094BC30);
  __chkstk_darwin(v8);
  v10 = &v117 - v9;
  v11 = sub_10000A5D4(&unk_10094DE60);
  __chkstk_darwin(v11 - 8);
  v125 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v126 = &v117 - v14;
  __chkstk_darwin(v15);
  v128 = &v117 - v16;
  v17 = sub_10077164C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = sub_10075E02C().super.isa;
  v22 = type metadata accessor for SearchCollectionViewLayout();
  v132.receiver = v4;
  v132.super_class = v22;
  v23 = objc_msgSendSuper2(&v132, "layoutAttributesForItemAtIndexPath:", isa);

  if (!v23)
  {
    return 0;
  }

  v123 = v10;
  v24 = [v4 collectionView];
  if (!v24)
  {
    goto LABEL_11;
  }

  v25 = v24;
  v26 = [v4 collectionView];
  if (!v26 || (v122 = v6, v27 = v26, v28 = [v26 delegate], v27, !v28))
  {

LABEL_11:
    return 0;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v120 = v28;
  v121 = v23;
  type metadata accessor for SearchCollectionLayoutAttributes();
  v29 = sub_10076FF6C();
  v30 = sub_10075E02C().super.isa;
  v118 = [swift_getObjCClassFromMetadata() layoutAttributesForDecorationViewOfKind:v29 withIndexPath:v30];

  v31 = v25;
  v32 = [v31 traitCollection];
  v117 = [v32 horizontalSizeClass];

  v33 = [v31 traitCollection];
  v34 = [v33 userInterfaceIdiom];

  v119 = v31;
  if (v34)
  {
    if (qword_1009411F0 != -1)
    {
      swift_once();
    }

    v35 = sub_10076D9AC();
    sub_10000A61C(v35, qword_1009A2350);
    v36 = [v31 traitCollection];

    sub_10076DEDC();
    sub_10000A5D4(&unk_100942870);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1007841E0;
    *(v37 + 32) = v36;
    v38 = v36;
    v39 = sub_10076DEEC();
    sub_10076D3EC();
    v41 = v40;
  }

  else
  {
    if (qword_10093F970 != -1)
    {
      swift_once();
    }

    v43 = sub_10076D9AC();
    sub_10000A61C(v43, qword_10099D6D8);
    v44 = [v31 traitCollection];

    sub_10076D17C();
    sub_10076D97C();
    v41 = v45;

    (*(v18 + 8))(v20, v17);
  }

  v47 = v120;
  v46 = v121;
  v48 = v122;
  if (v130 != 0xD000000000000022 || 0x80000001007D7490 != v129)
  {
    v50 = sub_10077167C();
    v49 = v119;
    if ((v50 & 1) != 0 && v117 == 1)
    {
      goto LABEL_23;
    }

    if (sub_10077167C())
    {
      goto LABEL_28;
    }

    type metadata accessor for SearchTransparencyView();
    if (sub_1007708EC() == v130 && v73 == v129)
    {

      v74 = v128;
    }

    else
    {
      v80 = sub_10077167C();

      v74 = v128;
      if ((v80 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    v81 = v127;
    (*(v127 + 16))(v74, a3, v48);
    v82 = v48;
    v83 = *(v81 + 56);
    v84 = 1;
    v83(v74, 0, 1, v82);
    v129 = OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_presenter;
    v130 = OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits;
    v85 = [*&v47[OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits] traitCollection];
    [v85 horizontalSizeClass];

    sub_100766C5C();
    v86 = v126;
    if ((v87 & 1) == 0)
    {
      sub_10075E08C();
      v84 = 0;
    }

    v88 = v84;
    v89 = v122;
    v83(v86, v88, 1, v122);
    v90 = v89;
    v91 = *(v8 + 48);
    v92 = v128;
    v93 = v123;
    sub_1000DE51C(v128, v123);
    sub_1000DE51C(v86, v93 + v91);
    v94 = *(v127 + 48);
    if (v94(v93, 1, v89) == 1)
    {
      sub_10000CFBC(v86, &unk_10094DE60);
      sub_10000CFBC(v92, &unk_10094DE60);
      v95 = v94(v93 + v91, 1, v89);
      v97 = v120;
      v96 = v121;
      if (v95 == 1)
      {
        sub_10000CFBC(v93, &unk_10094DE60);
LABEL_59:
        v104 = v130;
        [*&v97[v130] pageMarginInsets];
        v106 = v105;
        v107 = v118;
        [v96 frame];
        MaxY = CGRectGetMaxY(v137);
        [v4 minimumLineSpacing];
        v110 = v109;
        v111 = sub_100766C4C();
        if (v111)
        {
          v112 = v111;
          [*&v97[v104] pageContainerSize];
          [*&v97[v104] pageMarginInsets];
          sub_100770ACC();
          v114 = sub_1000D3900(v113, v112, v49);
          v116 = v115;
        }

        else
        {
          v114 = 0.0;
          v116 = 0.0;
        }

        [v107 setFrame:{v106, MaxY + v110, v114, v116}];

        swift_unknownObjectRelease();
        return v107;
      }
    }

    else
    {
      v98 = v125;
      sub_1000DE51C(v93, v125);
      v99 = v94(v93 + v91, 1, v90);
      v97 = v120;
      if (v99 != 1)
      {
        v100 = v127;
        v101 = v93 + v91;
        v102 = v124;
        (*(v127 + 32))(v124, v101, v90);
        sub_1000DE58C();
        LODWORD(v117) = sub_10076FF1C();
        v103 = *(v100 + 8);
        v103(v102, v90);
        sub_10000CFBC(v86, &unk_10094DE60);
        sub_10000CFBC(v128, &unk_10094DE60);
        v103(v98, v90);
        v49 = v119;
        sub_10000CFBC(v93, &unk_10094DE60);
        v96 = v121;
        if (v117)
        {
          goto LABEL_59;
        }

LABEL_57:
        swift_unknownObjectRelease();

        goto LABEL_53;
      }

      sub_10000CFBC(v86, &unk_10094DE60);
      sub_10000CFBC(v128, &unk_10094DE60);
      (*(v127 + 8))(v98, v90);
      v96 = v121;
    }

    sub_10000CFBC(v93, &qword_10094BC30);
    goto LABEL_57;
  }

  v49 = v119;
  if (v117 != 1)
  {
LABEL_28:
    v65 = sub_10071C988();
    if (v65)
    {
      v52 = v65;
      [v46 frame];
      v66 = CGRectGetWidth(v135) + 24.0;
      [v46 frame];
      v67 = v41 + v41 + CGRectGetHeight(v136);
      [v46 frame];
      v69 = v68 + -12.0;
      v71 = v70 - v41;
      v63 = v118;
      [v63 setFrame:{v69, v71, v66, v67}];
      *&v63[OBJC_IVAR____TtC20ProductPageExtension32SearchCollectionLayoutAttributes_cornerRadius] = *&v4[OBJC_IVAR____TtC20ProductPageExtension26SearchCollectionViewLayout_backgroundCornerRadius];
      if (v52 != 1)
      {
        if (v52 == 2)
        {
          v64 = 0;
          goto LABEL_40;
        }

LABEL_32:
        if (v52 != 3)
        {
          v131 = v52;
          result = sub_1007716AC();
          __break(1u);
          return result;
        }

        if (qword_1009401C8 != -1)
        {
          swift_once();
        }

        v64 = qword_10099F0F0;
        v72 = qword_10099F0F0;
        goto LABEL_40;
      }

LABEL_39:
      v64 = [objc_opt_self() secondarySystemBackgroundColor];
      goto LABEL_40;
    }

    goto LABEL_52;
  }

LABEL_23:
  v51 = sub_10071C988();
  if (!v51)
  {
LABEL_52:
    swift_unknownObjectRelease();

LABEL_53:
    return 0;
  }

  v52 = v51;
  [v46 frame];
  Width = CGRectGetWidth(v133);
  [v46 frame];
  v55 = Width + v54 + v54;
  [v46 frame];
  v56 = v41 + v41 + CGRectGetHeight(v134);
  [v46 frame];
  v58 = v57;
  v60 = v59;
  [v46 frame];
  v62 = v58 - v61;
  v63 = v118;
  [v63 setFrame:{v62, v60 - v41, v55, v56}];
  *&v63[OBJC_IVAR____TtC20ProductPageExtension32SearchCollectionLayoutAttributes_cornerRadius] = 0;
  if (v52 == 1)
  {
    goto LABEL_39;
  }

  v64 = 0;
  if (v52 != 2)
  {
    goto LABEL_32;
  }

LABEL_40:
  v75 = *&v63[OBJC_IVAR____TtC20ProductPageExtension32SearchCollectionLayoutAttributes_backgroundColor];
  *&v63[OBJC_IVAR____TtC20ProductPageExtension32SearchCollectionLayoutAttributes_backgroundColor] = v64;

  v76 = v63;
  *&v63[OBJC_IVAR____TtC20ProductPageExtension32SearchCollectionLayoutAttributes_backgroundGradientColors] = sub_100199DE8(v52);

  if (v52 >= 3)
  {
    if (qword_1009401D0 != -1)
    {
      swift_once();
    }

    v77 = qword_10099F0F8;
    v78 = qword_10099F0F8;
  }

  else
  {
    v77 = 0;
  }

  v79 = *&v76[OBJC_IVAR____TtC20ProductPageExtension32SearchCollectionLayoutAttributes_borderColor];
  *&v76[OBJC_IVAR____TtC20ProductPageExtension32SearchCollectionLayoutAttributes_borderColor] = v77;

  [v76 setZIndex:-1];
  swift_unknownObjectRelease();

  return v76;
}