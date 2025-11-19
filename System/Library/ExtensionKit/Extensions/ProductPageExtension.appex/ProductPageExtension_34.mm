uint64_t sub_1003D8760@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, void *a2@<X8>)
{
  v4 = sub_10076461C();
  sub_1007706EC();

  return sub_1003D4A9C(a1, a2);
}

uint64_t sub_1003D87AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10076461C();
  v5 = sub_1007706EC();

  if (v5)
  {

    return sub_1003D5CA4(a1, a2);
  }

  else
  {

    return sub_1003D7354(a2);
  }
}

uint64_t sub_1003D8834(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1003D8880()
{
  v1 = v0;
  v2 = sub_10076514C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076516C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100940390 != -1)
  {
    swift_once();
  }

  v10 = sub_10000A61C(v2, qword_10099F7E0);
  (*(v3 + 16))(v5, v10, v2);
  v16[11] = *(v1 + OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_bodyLabel);
  type metadata accessor for ExpandableTextView();
  sub_10076D2DC();
  v11 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_subtitleLabel);
  v16[4] = sub_1007626BC();
  v16[5] = &protocol witness table for UILabel;
  v16[1] = v11;
  v12 = v11;
  sub_10076515C();
  sub_1003DAF1C(&unk_1009560A0, &type metadata accessor for ReviewSummaryLayout);
  sub_10076E0FC();
  v14 = v13;
  (*(v7 + 8))(v9, v6);
  return v14;
}

uint64_t sub_1003D8B18()
{
  v0 = sub_10076514C();
  sub_10000DB18(v0, qword_10099F7E0);
  sub_10000A61C(v0, qword_10099F7E0);
  v2[3] = sub_10000A5D4(&unk_100942850);
  v2[4] = sub_100071820(&qword_100942880, &unk_100942850);
  sub_10000DB7C(v2);
  sub_10000A5D4(&unk_100943120);
  sub_10075FDEC();
  return sub_10076513C();
}

uint64_t sub_1003D8C20()
{
  sub_100016F40(0, &qword_100942F10);
  result = sub_100770D1C();
  qword_100956030 = result;
  return result;
}

char *sub_1003D8C64(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v9 - 8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v62 - v13;
  v15 = sub_10076D3DC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_backgroundView;
  *&v4[v19] = [objc_allocWithZone(UIView) init];
  v63 = v4;
  v64 = OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_bodyLabel;
  if (qword_100940B58 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A61C(v15, qword_1009A1000);
  v21 = *(v16 + 16);
  v21(v18, v20, v15);
  v65 = objc_opt_self();
  v22 = [v65 systemBackgroundColor];
  v23 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  v24 = v22;
  v25 = sub_10073C780(v24, 0.0, 0.0, 0.0, 0.0);
  v21(v14, v18, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  sub_100016E2C(v14, v11, &unk_100943250);
  v26 = v25;
  sub_1007625DC();

  sub_10000CFBC(v14, &unk_100943250);
  v27 = *(v16 + 8);
  v66 = v15;
  v27(v18, v15);

  v28 = v63;
  *&v63[v64] = v26;
  v29 = OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_subtitleLabel;
  sub_1007626BC();
  *&v28[v29] = sub_10076269C();
  v30 = &v28[OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_subtitle];
  *v30 = 0;
  *(v30 + 1) = 0;
  *&v28[OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_subtitleArtwork] = 0;
  v31 = OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_subtitleArtworkAlignment;
  v32 = sub_100760FDC();
  (*(*(v32 - 8) + 56))(&v28[v31], 1, 1, v32);
  v33 = OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_previewContainer;
  *&v28[v33] = [objc_allocWithZone(UIView) init];
  v68.receiver = v28;
  v68.super_class = ObjectType;
  v34 = objc_msgSendSuper2(&v68, "initWithFrame:", a1, a2, a3, a4);
  [v34 setClipsToBounds:1];
  [v34 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v35 = OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_previewContainer;
  v36 = [*&v34[OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_previewContainer] layer];
  [v36 setCornerRadius:16.0];

  [v34 addSubview:*&v34[v35]];
  v37 = OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_backgroundView;
  v38 = *&v34[OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_backgroundView];
  v39 = [v65 systemBackgroundColor];
  [v38 setBackgroundColor:v39];

  [*&v34[v37] setAlpha:0.0];
  v40 = OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_bodyLabel;
  [*(*&v34[OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_bodyLabel] + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel) setAdjustsFontForContentSizeCategory:1];
  v41 = *&v34[v40];
  v42 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines;
  v43 = *&v41[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines];
  *&v41[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines] = 10;
  v44 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed;
  if (v41[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed] == 1)
  {
    v45 = *&v41[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel];
    v46 = v41;
    [v45 setNumberOfLines:10];
    if (*&v41[v42] == v43)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v47 = v41;
    if (v43 == 10)
    {
      goto LABEL_9;
    }
  }

  if (v41[v44])
  {
    sub_10073D75C();
  }

LABEL_9:

  v48 = *&v34[v40];
  v49 = &v48[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler];
  v50 = *&v48[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler];
  *v49 = 0;
  *(v49 + 1) = 0;
  v51 = v48;
  sub_1000167E0(v50);
  [*&v51[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreButton] setUserInteractionEnabled:0];

  v52 = OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_subtitleLabel;
  v53 = qword_100940398;
  v54 = *&v34[OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_subtitleLabel];
  if (v53 != -1)
  {
    swift_once();
  }

  [v54 setTextColor:qword_100956030];

  v55 = *&v34[v52];
  sub_100016F40(0, &qword_100942F00);
  v56 = qword_100940D00;
  v57 = v55;
  if (v56 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v66, qword_1009A14F8);
  v58 = [v34 traitCollection];

  v59 = sub_100770B3C();
  [v57 setFont:v59];

  [*&v34[v52] setNumberOfLines:0];
  [*&v34[v35] addSubview:*&v34[v37]];
  [*&v34[v35] addSubview:*&v34[v40]];
  [*&v34[v35] addSubview:*&v34[v52]];
  sub_10000A5D4(&unk_100945BF0);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_100783DD0;
  *(v60 + 32) = sub_10076E88C();
  *(v60 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v34;
}

void sub_1003D9414()
{
  v1 = sub_10000A5D4(&qword_100956100);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = sub_100760FDC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v0[OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_subtitleLabel];
  v9 = *&v0[OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_subtitle + 8];
  v17 = *&v0[OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_subtitle];
  v18 = v8;
  v10 = *&v0[OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_subtitleArtwork];
  v11 = OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_subtitleArtworkAlignment;
  swift_beginAccess();
  sub_100016E2C(&v0[v11], v3, &qword_100956100);
  v12 = *(v5 + 48);
  if (v12(v3, 1, v4) == 1)
  {
    (*(v5 + 104))(v7, enum case for ReviewSummary.SubtitleArtworkAlignment.trailing(_:), v4);
    v13 = v12(v3, 1, v4);

    if (v13 != 1)
    {
      sub_10000CFBC(v3, &qword_100956100);
    }
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
  }

  v14 = [v0 traitCollection];
  v15 = sub_1003DAB0C(v17, v9, v10, v7);

  (*(v5 + 8))(v7, v4);
  [v18 setAttributedText:v15];
}

uint64_t sub_1003D9714()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076514C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = sub_10076516C();
  v31 = *(v10 - 8);
  v32 = v10;
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37.receiver = v0;
  v37.super_class = ObjectType;
  objc_msgSendSuper2(&v37, "layoutSubviews", v11);
  v14 = [v0 traitCollection];
  v15 = sub_1007706EC();

  if (v15)
  {
    v16 = 8.0;
  }

  else
  {
    v16 = 16.0;
  }

  v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_previewContainer];
  sub_10076422C();
  [v17 setFrame:{sub_100102A30(v18, v19, v20, v21, -v16, -v16)}];
  if (qword_100940390 != -1)
  {
    swift_once();
  }

  v22 = sub_10000A61C(v3, qword_10099F7E0);
  v23 = *(v4 + 16);
  v23(v9, v22, v3);
  sub_10076512C();
  v23(v6, v9, v3);
  v36 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_bodyLabel];
  type metadata accessor for ExpandableTextView();
  sub_10076D2DC();
  v24 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_subtitleLabel];
  v34 = sub_1007626BC();
  v35 = &protocol witness table for UILabel;
  v33 = v24;
  v25 = v24;
  sub_10076515C();
  (*(v4 + 8))(v9, v3);
  [v17 bounds];
  v26 = [v1 traitCollection];
  sub_1003DAF1C(&unk_1009560A0, &type metadata accessor for ReviewSummaryLayout);
  v27 = v32;
  sub_10076E0EC();

  [v17 bounds];
  v28 = [v1 traitCollection];
  sub_10076E0FC();

  [v17 frame];
  [v17 setFrame:?];
  v29 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_backgroundView];
  [v17 bounds];
  [v29 setFrame:?];
  return (*(v31 + 8))(v13, v27);
}

uint64_t type metadata accessor for ReviewSummaryView()
{
  result = qword_100956088;
  if (!qword_100956088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003D9CEC()
{
  sub_1003D9DA4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1003D9DA4()
{
  if (!qword_100956098)
  {
    sub_100760FDC();
    v0 = sub_1007711AC();
    if (!v1)
    {
      atomic_store(v0, &qword_100956098);
    }
  }
}

uint64_t sub_1003D9E44(uint64_t a1, int a2, uint64_t a3)
{
  v73 = a3;
  LODWORD(v74) = a2;
  v54 = sub_10000A5D4(&unk_1009560C0);
  __chkstk_darwin(v54);
  v78 = &v54 - v3;
  v72 = sub_10000A5D4(&qword_100954458);
  __chkstk_darwin(v72);
  v79 = &v54 - v4;
  v76 = sub_10075D96C();
  v5 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_10075D94C();
  v7 = *(v71 - 8);
  __chkstk_darwin(v71);
  v67 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10075D97C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&qword_1009560D0);
  __chkstk_darwin(v13);
  v15 = &v54 - v14;
  v16 = sub_10076D3DC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v66 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v63 = &v54 - v20;
  v21 = sub_10075D99C();
  __chkstk_darwin(v21);
  v57 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v23);
  v58 = v25;
  v26 = *(v25 + 16);
  v77 = &v54 - v27;
  v59 = v28;
  v56 = v25 + 16;
  v55 = v26;
  v26(v24);
  v61 = v16;
  v60 = v17;
  if (v74)
  {
    if (qword_100940CF0 != -1)
    {
      swift_once();
    }

    v29 = sub_10000A61C(v16, qword_1009A14C8);
    v30 = *(v17 + 16);
    v30(v63, v29, v16);
    if (qword_100940CF8 != -1)
    {
      swift_once();
    }

    v31 = qword_1009A14E0;
  }

  else
  {
    if (qword_100940CE0 != -1)
    {
      swift_once();
    }

    v32 = sub_10000A61C(v16, qword_1009A1498);
    v30 = *(v17 + 16);
    v30(v63, v32, v16);
    if (qword_100940CE8 != -1)
    {
      swift_once();
    }

    v31 = qword_1009A14B0;
  }

  v33 = sub_10000A61C(v16, v31);
  v30(v66, v33, v16);
  sub_10075D98C();
  (*(v10 + 16))(v15, v12, v9);
  sub_1003DAF1C(&qword_1009560D8, &type metadata accessor for AttributedString.Runs);
  sub_1007703DC();
  (*(v10 + 8))(v12, v9);
  v74 = (v5 + 8);
  v68 = (v7 + 8);
  v69 = (v7 + 16);
  v64 = enum case for JetFontAttribute.Value.reviewSummaryTitle(_:);
  v62 = enum case for JetFontAttribute.Value.reviewSummaryText(_:);
  v70 = v9;
  v65 = v15;
  while (1)
  {
    while (1)
    {
      v36 = v75;
      sub_10077040C();
      sub_1003DAF1C(&qword_1009560E0, &type metadata accessor for AttributedString.Runs.Index);
      v37 = v76;
      v38 = sub_10076FF1C();
      (*v74)(v36, v37);
      if (v38)
      {
        sub_10000CFBC(v15, &qword_1009560D0);
        sub_100016F40(0, &qword_1009544A0);
        v48 = v77;
        v49 = v59;
        (v55)(v57, v77, v59);
        v50 = sub_10077076C();
        v51 = *(v60 + 8);
        v52 = v61;
        v51(v66, v61);
        v51(v63, v52);
        (*(v58 + 8))(v48, v49);
        return v50;
      }

      v39 = sub_10077042C();
      v40 = v67;
      v41 = v71;
      (*v69)(v67);
      v39(v82, 0);
      sub_10077041C();
      sub_10075D93C();
      sub_1007627CC();
      sub_1003DAF1C(&qword_1009560E8, &type metadata accessor for JetFontAttribute);
      v42 = v78;
      sub_10075D95C();
      (*v68)(v40, v41);
      v43 = sub_1007627BC();
      v44 = *(v43 - 8);
      if ((*(v44 + 48))(v42, 1, v43) != 1)
      {
        break;
      }

LABEL_14:
      swift_getKeyPath();
      swift_getKeyPath();
      sub_100016F40(0, &qword_100942F00);
      v81 = sub_100770B3C();
      sub_100071820(&qword_1009544A8, &qword_100954458);
      v34 = sub_10075D9CC();
      sub_10075D91C();
      sub_1003DAF1C(&qword_1009560F0, &type metadata accessor for AttributeScopes.UIKitAttributes);
      v35 = sub_10075DA1C();
      sub_10000A5D4(&qword_1009560F8);
      sub_100016BD0();
      sub_10075DAAC();
      v35(v80, 0);

      v34(v82, 0);
      v15 = v65;
      sub_10000CFBC(v79, &qword_100954458);
    }

    v45 = (*(v44 + 88))(v78, v43);
    if (v45 != v64)
    {
      break;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_100016F40(0, &qword_100942F00);
    v81 = sub_100770B3C();
    sub_100071820(&qword_1009544A8, &qword_100954458);
    v46 = sub_10075D9CC();
    sub_10075D91C();
    sub_1003DAF1C(&qword_1009560F0, &type metadata accessor for AttributeScopes.UIKitAttributes);
    v47 = sub_10075DA1C();
    sub_10000A5D4(&qword_1009560F8);
    sub_100016BD0();
    sub_10075DAAC();
    v47(v80, 0);

    v46(v82, 0);
    sub_10000CFBC(v79, &qword_100954458);
  }

  if (v45 == v62)
  {
    goto LABEL_14;
  }

  result = sub_10077166C();
  __break(1u);
  return result;
}

uint64_t sub_1003DAB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100760FDC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 0;
  }

  v11 = objc_allocWithZone(NSMutableAttributedString);
  v12 = sub_10076FF6C();
  v13 = [v11 initWithString:v12];

  if (!a3)
  {
    return v13;
  }

  sub_100016F40(0, &qword_1009560B0);

  v14 = sub_10077098C();
  if (sub_10076BE0C())
  {
    v15 = sub_10076044C();
  }

  else
  {
    if ((sub_10076BDFC() & 1) == 0)
    {
LABEL_14:

      goto LABEL_15;
    }

    v15 = sub_1005A6008(a3, v14);
  }

  v16 = v15;

  if (!v16)
  {
LABEL_15:

    return v13;
  }

  v14 = [objc_allocWithZone(NSTextAttachment) init];
  sub_100016F40(0, &qword_100942F10);
  v17 = sub_100770D1C();
  v18 = [v16 imageWithTintColor:v17];

  [v14 setImage:v18];
  (*(v8 + 16))(v10, a4, v7);
  v19 = (*(v8 + 88))(v10, v7);
  if (v19 == enum case for ReviewSummary.SubtitleArtworkAlignment.leading(_:))
  {
    v20 = objc_allocWithZone(NSAttributedString);
    v21 = sub_10076FF6C();
    v22 = [v20 initWithString:v21];

    [v13 insertAttributedString:v22 atIndex:0];
    v23 = [objc_opt_self() attributedStringWithAttachment:v14];
    [v13 insertAttributedString:v23 atIndex:0];
LABEL_13:

    goto LABEL_14;
  }

  if (v19 == enum case for ReviewSummary.SubtitleArtworkAlignment.trailing(_:))
  {
    v24 = objc_allocWithZone(NSAttributedString);
    v25 = sub_10076FF6C();
    v26 = [v24 initWithString:v25];

    [v13 appendAttributedString:v26];
    v23 = [objc_opt_self() attributedStringWithAttachment:v14];
    [v13 appendAttributedString:v23];
    goto LABEL_13;
  }

  result = sub_10077166C();
  __break(1u);
  return result;
}

uint64_t sub_1003DAED0@<X0>(uint64_t *a1@<X8>)
{
  sub_10075D92C();
  result = sub_10075D91C();
  *a1 = result;
  return result;
}

uint64_t sub_1003DAF1C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1003DAF64()
{
  v1 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v1 - 8);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v25 - v5;
  v7 = sub_10076D3DC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_backgroundView;
  *(v0 + v11) = [objc_allocWithZone(UIView) init];
  v25 = OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_bodyLabel;
  v26 = v0;
  if (qword_100940B58 != -1)
  {
    swift_once();
  }

  v12 = sub_10000A61C(v7, qword_1009A1000);
  v13 = *(v8 + 16);
  v13(v10, v12, v7);
  v14 = [objc_opt_self() systemBackgroundColor];
  v15 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  v16 = v14;
  v17 = sub_10073C780(v16, 0.0, 0.0, 0.0, 0.0);
  v13(v6, v10, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_100016E2C(v6, v3, &unk_100943250);
  v18 = v17;
  sub_1007625DC();

  sub_10000CFBC(v6, &unk_100943250);
  (*(v8 + 8))(v10, v7);

  v19 = v26;
  *(v26 + v25) = v18;
  v20 = OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_subtitleLabel;
  sub_1007626BC();
  *(v19 + v20) = sub_10076269C();
  v21 = (v19 + OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_subtitle);
  *v21 = 0;
  v21[1] = 0;
  *(v19 + OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_subtitleArtwork) = 0;
  v22 = OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_subtitleArtworkAlignment;
  v23 = sub_100760FDC();
  (*(*(v23 - 8) + 56))(v19 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_previewContainer;
  *(v19 + v24) = [objc_allocWithZone(UIView) init];
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1003DB314(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003DB360(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = 1;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1003DB3B4()
{
  result = qword_100956108;
  if (!qword_100956108)
  {
    sub_10075EBEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100956108);
  }

  return result;
}

uint64_t sub_1003DB40C()
{
  v0 = sub_10076F50C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076B96C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10075EBDC();
    sub_10074D8E0();
    swift_unknownObjectRelease();
    (*(v5 + 8))(v7, v4);
  }

  sub_10000A5D4(&qword_100942C70);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  return sub_10076FC8C();
}

unint64_t sub_1003DB5C8(uint64_t a1, int *a2)
{
  v3 = sub_100382B5C(a1, a2);
  sub_1003DB9EC();
  sub_10077019C();
  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  return v3;
}

void sub_1003DB660(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  type metadata accessor for SeparatorSupplementaryView();
  if (sub_1007708EC() == a1 && v10 == a2)
  {

    goto LABEL_10;
  }

  v12 = sub_10077167C();

  if (v12)
  {
LABEL_10:
    a5[3] = sub_10000A5D4(&qword_100942C18);
    a5[4] = sub_100023880();
    sub_10000DB7C(a5);

    sub_1007708FC();
    sub_10076A3BC();
    return;
  }

  sub_10037E460(a1, a2, a3, a4, a5);
}

uint64_t sub_1003DB7A8(uint64_t a1)
{
  v2 = sub_100763F9C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100763FDC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v17 - v12;
  (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.top(_:), v2, v11);
  sub_100763FAC();
  (*(v7 + 16))(v9, v13, v6);
  v14 = OBJC_IVAR____TtC20ProductPageExtension26SeparatorSupplementaryView_separator;
  swift_beginAccess();
  (*(v7 + 24))(a1 + v14, v9, v6);
  swift_endAccess();
  sub_1006359A8();
  v15 = *(v7 + 8);
  v15(v9, v6);
  return (v15)(v13, v6);
}

id sub_1003DB9EC()
{
  v20 = sub_10077164C();
  v0 = *(v20 - 8);
  __chkstk_darwin(v20);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10076220C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007621FC();
  v7 = objc_opt_self();
  v8 = [v7 fractionalWidthDimension:1.0];
  v9 = sub_10076461C();
  sub_100763FCC();
  v11 = v10;

  v12 = [v7 absoluteDimension:v11];
  v13 = [objc_opt_self() sizeWithWidthDimension:v8 heightDimension:v12];

  type metadata accessor for SeparatorSupplementaryView();
  sub_1007708EC();
  sub_10076462C();
  sub_10076D17C();
  sub_100219D24();
  sub_10076D40C();
  v15 = v14;
  swift_unknownObjectRelease();
  (*(v0 + 8))(v2, v20);
  v16 = sub_10076FF6C();

  v17 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v13 elementKind:v16 alignment:1 absoluteOffset:{0.0, v15}];

  (*(v4 + 8))(v6, v3);
  return v17;
}

uint64_t sub_1003DBCB0()
{
  v1 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_10076C38C();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v0) + 0xD8))(v6);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_10000CFBC(v3, &unk_1009434A0);
  }

  (*(v5 + 32))(v8, v3, v4);
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v10 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v10 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v11 = *(v0 + *v10);
  if (v11 != 7)
  {
    v12 = [v0 traitCollection];
    sub_1005B1E18(v11, v12);
  }

  return (*(v5 + 8))(v8, v4);
}

void sub_1003DBF1C(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_10076C38C();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a3, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  (*((swift_isaMask & *v3) + 0xE0))(v8);
  sub_1003DC6B0(a2);
  v11 = [v3 backgroundView];
  if (v11)
  {
    v12 = v11;
    v13 = sub_10076C70C();
    if (!v13)
    {
      sub_100016F40(0, &qword_100942F10);
      v13 = sub_100770D8C();
    }

    v14 = v13;
    [v12 setBackgroundColor:v13];
  }
}

void sub_1003DC0C8(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  if ((a3 & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 112))(ObjectType, a2);
    (*((swift_isaMask & *v3) + 0xE0))(v8);
    v10 = (*(a2 + 160))(ObjectType, a2);
    v11 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory);
    *(v3 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory) = v10;
    (*((swift_isaMask & *v3) + 0x1D8))(v11);
    v12 = (*(a2 + 136))(ObjectType, a2);
    sub_1003DC6B0(v12);
  }
}

id sub_1003DC268()
{
  [v0 setAccessibilityTraits:UIAccessibilityTraitButton];
  [v0 setIsAccessibilityElement:0];
  v1 = [v0 contentView];
  [v1 setIsAccessibilityElement:1];

  v2 = [v0 contentView];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v11 = sub_1003E01E4;
  v12 = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1003DE5B0;
  v10 = &unk_1008941C0;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v2 setAutomationElementsBlock:v4];
  _Block_release(v4);

  v6 = sub_10076C03C();
  v10 = v6;
  v11 = sub_1003E0204(&qword_100947230, &type metadata accessor for Feature.iOS);
  v7 = sub_10000DB7C(v9);
  (*(*(v6 - 8) + 104))(v7, enum case for Feature.iOS.today_tab_largest_ax_support(_:), v6);
  LOBYTE(v6) = sub_10076C90C();
  result = sub_10000CD74(v9);
  if ((v6 & 1) == 0)
  {
    return [v5 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
  }

  return result;
}

uint64_t sub_1003DC47C(char a1)
{
  v3 = a1 & 1;
  result = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded) = a1;
  if (result == v3)
  {
    return result;
  }

  v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory);
  if (v5 != 7)
  {
    v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory);
    if (v6 != 7)
    {
      switch(v5)
      {
        case 6:
          if (v6 == 6)
          {
            goto LABEL_20;
          }

          goto LABEL_16;
        case 5:
          if (v6 == 5)
          {
            goto LABEL_20;
          }

          goto LABEL_16;
        case 4:
          if (v6 == 4)
          {
            goto LABEL_20;
          }

LABEL_16:
          if (a1)
          {
            v7 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory);
          }

          else
          {
            v7 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory);
          }

          v8 = result;
          (*((swift_isaMask & *v1) + 0x1D0))(v7);
          result = v8;
          goto LABEL_20;
      }

      if (v5 != v6 || (v6 - 7) >= 0xFDu)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_20:
  v9 = *((swift_isaMask & *v1) + 0x1C8);

  return v9(result);
}

uint64_t sub_1003DC5D8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &unk_1009434A0);
}

uint64_t sub_1003DC640(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_10003837C(a1, v1 + v3, &unk_1009434A0);
  return swift_endAccess();
}

uint64_t sub_1003DC6B0(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory) = a1;
  if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded) & 1) != 0 || ((*((swift_isaMask & *v1) + 0x138))())
  {
    v4 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory) != 7)
    {
      goto LABEL_7;
    }

    v5 = 7;
  }

  else
  {
    v4 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory);
  }

  *(v1 + v4) = a1;
  (*((swift_isaMask & *v1) + 0x1D8))(v5);
LABEL_7:
  v6 = *((swift_isaMask & *v1) + 0x1D0);

  return v6(v3);
}

__n128 sub_1003DC81C@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32);
  result = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets);
  v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 16);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 sub_1003DC83C(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets;
  result = *a1;
  v4 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v4;
  *(v2 + 32) = *(a1 + 32);
  return result;
}

void sub_1003DC85C()
{
  v1 = [v0 backgroundView];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v2 bounds];
  Width = CGRectGetWidth(v17);
  v10 = [v2 subviews];
  sub_100016F40(0, &qword_1009441F0);
  v11 = sub_1007701BC();

  if (v11 >> 62)
  {
    v12 = sub_10077158C();
    if (v12)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
LABEL_4:
      if (v12 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v12; ++i)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = sub_10077149C();
        }

        else
        {
          v14 = *(v11 + 8 * i + 32);
        }

        v15 = v14;
        [v14 setFrame:{v4, v6, Width, v8}];
      }
    }
  }
}

void sub_1003DCA00()
{
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v1 = 0;
  }

  else
  {
    v2 = [v0 traitCollection];
    v3 = [v2 userInterfaceStyle];

    v1 = v3 == 2;
  }

  v4 = [v0 layer];
  v5 = v4;
  v6 = 0.0;
  v7 = 1.0;
  if (!v1)
  {
    v7 = 0.0;
  }

  [v4 setBorderWidth:v7];

  v8 = [v0 layer];
  if (v1)
  {
    v9 = [objc_opt_self() systemWhiteColor];
    v10 = [v9 colorWithAlphaComponent:0.1];

    v11 = [v10 CGColor];
    v6 = 20.0;
  }

  else
  {
    v11 = 0;
  }

  [v8 setBorderColor:v11];

  v12 = [v0 layer];
  [v12 setCornerRadius:v6];

  v13 = [v0 layer];
  [v13 setNeedsDisplay];
}

id sub_1003DCBD8()
{
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory) == 4)
  {
    v1 = [v0 contentView];
    [v1 setClipsToBounds:1];
  }

  return [v0 setNeedsLayout];
}

uint64_t sub_1003DCC54()
{
  swift_getObjectType();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1003E028C;
  *(v4 + 24) = v3;
  v9[4] = sub_1000349FC;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1001C5148;
  v9[3] = &unk_100894238;
  v5 = _Block_copy(v9);
  v6 = v0;
  v7 = v1;

  [v2 performWithoutAnimation:v5];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if ((v2 & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003DCDE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10076C38C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  swift_getKeyPath();
  sub_10076338C();

  (*(v5 + 56))(v13, 0, 1, v4);
  (*((swift_isaMask & *v2) + 0xE0))(v13);
  type metadata accessor for TodayCardGridTracker();
  sub_10076F64C();
  sub_10076FC1C();
  v14 = sub_1003B1704();
  sub_1003DC6B0(v14);
  sub_10076C84C();
  sub_1003E0204(&qword_100947150, &type metadata accessor for TodayCard);
  v15 = sub_10076332C();
  v16 = v21;
  if (!v21)
  {
  }

  (*((swift_isaMask & *v2) + 0xD8))(v15);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {

    return sub_10000CFBC(v10, &unk_1009434A0);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    if (*(v2 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded))
    {
      v18 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v18 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v19 = *(v2 + *v18);
    if (v19 == 7)
    {
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      (*((swift_isaMask & *v2) + 0x1E0))(v16, v19, v7, a2);
      [v2 setNeedsLayout];

      return (*(v5 + 8))(v7, v4);
    }
  }
}

void sub_1003DD1D8(uint64_t a1, unsigned __int8 a2, char a3, uint64_t a4, NSString *a5)
{
  if (a3)
  {
    sub_1005DE2F4(a2, a4, a5);
  }

  else
  {
    sub_1005DE768(a2, a4, a5);
  }
}

uint64_t sub_1003DD1F4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  swift_weakAssign();
  v5 = (*((swift_isaMask & *v2) + 0x268))(a1, a2);
  v7 = v6;
  v8 = (v2 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v9 = *v8;
  *v8 = v5;
  v8[1] = v7;
  sub_10001CE50(v5);
  result = sub_1000167E0(v9);
  if (v5)
  {
    v5(result);
    return sub_1000167E0(v5);
  }

  return result;
}

uint64_t sub_1003DD30C()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10076611C();
  }

  swift_weakAssign();
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  *v1 = 0;
  v1[1] = 0;
  return sub_1000167E0(v2);
}

void *sub_1003DD3B0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v54[1] = swift_getObjectType();
  v10 = sub_10075FEEC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&qword_1009473D0);
  __chkstk_darwin(v14 - 8);
  v16 = v54 - v15;
  v17 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_itemLayoutContext;
  v18 = sub_10076341C();
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  v5[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded] = 0;
  v19 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  v20 = sub_10076C38C();
  (*(*(v20 - 8) + 56))(&v5[v19], 1, 1, v20);
  v5[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory] = 7;
  v5[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] = 7;
  v5[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isTransitioning] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isMotionEnabled] = 1;
  v21 = &v5[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v21[32] = 1;
  swift_weakInit();
  v22 = &v5[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock];
  v23 = sub_10075F99C();
  *v22 = 0;
  v22[1] = 0;
  v24 = [objc_allocWithZone(v23) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_shadowView] = v24;
  v25 = type metadata accessor for BaseTodayCardCollectionViewCell();
  v55.receiver = v5;
  v55.super_class = v25;
  v26 = objc_msgSendSuper2(&v55, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v30 = v26;
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v31 = [v30 contentView];
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v32 = [v30 layer];
  [v32 setAllowsGroupOpacity:0];

  v33 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_shadowView;
  v34 = qword_10093F878;
  v35 = *(v30 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_shadowView);
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = sub_10076BCFC();
  v37 = sub_10000A61C(v36, qword_10099D408);
  v38 = *(v36 - 8);
  (*(v38 + 16))(v16, v37, v36);
  (*(v38 + 56))(v16, 0, 1, v36);
  sub_10075F97C();

  v39 = *(v30 + v33);
  (*(v11 + 104))(v13, enum case for CornerStyle.continuous(_:), v10);
  v40 = v39;
  sub_10075F98C();

  (*(v11 + 8))(v13, v10);
  [v30 insertSubview:*(v30 + v33) atIndex:0];
  v41 = [objc_allocWithZone(UIView) init];
  [v30 setBackgroundView:v41];

  v42 = [v30 backgroundView];
  [v42 setClipsToBounds:0];

  v43 = [v30 backgroundView];
  [v43 _setContinuousCornerRadius:20.0];

  v44 = [v30 backgroundView];
  if (v44)
  {
    v45 = v44;
    sub_100016F40(0, &qword_100942F10);
    v46 = sub_100770D8C();
    [v45 setBackgroundColor:v46];
  }

  v47 = [v30 contentView];
  v48 = [v47 layer];

  [v48 setAllowsGroupBlending:0];
  v49 = [v30 contentView];
  [v49 setClipsToBounds:1];

  v50 = [v30 backgroundView];
  if (v50)
  {
    v51 = [v50 layer];

    [v51 setAllowsGroupBlending:0];
  }

  (*((swift_isaMask & *v30) + 0x278))();
  sub_10000A5D4(&unk_100945BF0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_100783DD0;
  *(v52 + 32) = sub_10076E3FC();
  *(v52 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v30;
}

uint64_t sub_1003DDB1C()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for BaseTodayCardCollectionViewCell();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    [v0 bounds];
    sub_1007660FC();
  }

  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_shadowView);
  [v1 bounds];
  [v2 setFrame:?];
  v3 = [v1 sendSubviewToBack:v2];
  (*((swift_isaMask & *v1) + 0x1A8))(v3);
  v4 = (v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  result = swift_beginAccess();
  v6 = *v4;
  if (*v4)
  {

    v6(v7);
    return sub_1000167E0(v6);
  }

  return result;
}

id sub_1003DDDB0(void *a1, void *a2)
{
  [a1 frame];
  [a2 setFrame:?];
  v4 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  v5 = sub_1003DC47C(*(a1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded));
  v6 = (*((swift_isaMask & *a1) + 0x138))(v5);
  v7 = (*((swift_isaMask & *a2) + 0x140))(v6 & 1);
  v8 = (*((swift_isaMask & *a1) + 0x150))(v7);
  (*((swift_isaMask & *a2) + 0x158))(v8 & 1);
  v9 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  v10 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory);
  *(a2 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory) = *(a1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory);
  (*((swift_isaMask & *a2) + 0x1D8))(v10);
  if (*(a1 + v4))
  {
    v11 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v11 = v9;
  }

  v12 = sub_1003DC6B0(*(a1 + v11));
  v13 = (*((swift_isaMask & *a1) + 0x190))(v12);
  (*((swift_isaMask & *a2) + 0x198))(v13 & 1);
  v14 = sub_1003E0204(&qword_100956330, type metadata accessor for BaseTodayCardCollectionViewCell);
  (*((swift_isaMask & *a2) + 0x1E8))(a1, v14, 0);

  return [a2 layoutIfNeeded];
}

double sub_1003DE0CC()
{
  v1 = sub_10076C38C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TodayCardGridTracker();
  sub_10076F64C();
  sub_10076FC1C();
  v5 = sub_1003B1704();
  sub_10076C84C();
  sub_1003E0204(&qword_100947150, &type metadata accessor for TodayCard);
  sub_10076332C();
  v6 = v13;
  if (v13)
  {
    swift_getKeyPath();
    sub_10076338C();

    swift_getKeyPath();
    sub_10076338C();

    v7 = v13;
    v8 = (*(v0 + 528))(v6, v5, 0, v4, v13, 0);
  }

  else
  {
    swift_getKeyPath();
    sub_10076338C();

    swift_getKeyPath();
    sub_10076338C();

    v9 = v13;
    sub_1005DE768(v5, v4, v13);
    v8 = v10;
  }

  (*(v2 + 8))(v4, v1);
  return v8;
}

_BYTE *sub_1003DE354(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v7 = v3[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded];
  v8 = type metadata accessor for BaseTodayCardCollectionViewCell();
  if (v7)
  {
    v12.receiver = v3;
    v12.super_class = v8;
    return objc_msgSendSuper2(&v12, "hitTest:withEvent:", a1, a2, a3);
  }

  else
  {
    v13.receiver = v3;
    v13.super_class = v8;
    result = objc_msgSendSuper2(&v13, "hitTest:withEvent:", a1, a2, a3);
    if (result)
    {
      v10 = result;
      [v3 bounds];
      v14.x = a2;
      v14.y = a3;
      if (!CGRectContainsPoint(v15, v14))
      {
        return v10;
      }

      sub_100016F40(0, &qword_1009441F0);
      if (sub_100770EEC())
      {
        return v10;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        return v10;
      }

      type metadata accessor for SearchAdTransparencyLabel();
      if (swift_dynamicCastClass())
      {
        return v10;
      }

      else
      {

        v11 = v3;
        return v3;
      }
    }
  }

  return result;
}

char *sub_1003DE51C(void *a1)
{
  v1 = [a1 contentView];
  v2 = [v1 subviews];

  sub_100016F40(0, &qword_1009441F0);
  v3 = sub_1007701BC();

  v4 = sub_10016E820(v3);

  return v4;
}

Class sub_1003DE5B0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    v4.super.isa = sub_1007701AC().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

id sub_1003DE62C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseTodayCardCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BaseTodayCardCollectionViewCell()
{
  result = qword_1009562C8;
  if (!qword_1009562C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003DE758()
{
  sub_1003DE89C(319, &qword_100944F90, &type metadata accessor for ItemLayoutContext);
  if (v0 <= 0x3F)
  {
    sub_1003DE89C(319, qword_100946AC0, &type metadata accessor for PageGrid);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1003DE89C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1003DE93C()
{
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v1 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v1 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  return *(v0 + *v1);
}

double sub_1003DE9F4@<D0>(uint64_t a1@<X8>)
{
  (*((swift_isaMask & *v1) + 0x170))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_1003DEBE0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &unk_1009428D0);
}

uint64_t sub_1003DEC48(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10003837C(a1, v1 + v3, &unk_1009428D0);
  return swift_endAccess();
}

uint64_t sub_1003DED20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_1003DEE7C()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_1003DEEDC(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_10010D5A4;
}

uint64_t sub_1003DEF74()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001CE50(*v1);
  return v2;
}

uint64_t sub_1003DEFD0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6);
}

uint64_t sub_1003DF1E8(void *a1)
{
  a1[1] = sub_1003E0204(&qword_1009562D8, type metadata accessor for BaseTodayCardCollectionViewCell);
  a1[2] = sub_1003E0204(&qword_1009562E0, type metadata accessor for BaseTodayCardCollectionViewCell);
  a1[3] = sub_1003E0204(&qword_100950A68, type metadata accessor for BaseTodayCardCollectionViewCell);
  a1[4] = sub_1003E0204(&qword_1009562E8, type metadata accessor for BaseTodayCardCollectionViewCell);
  a1[5] = sub_1003E0204(&qword_1009562F0, type metadata accessor for BaseTodayCardCollectionViewCell);
  a1[6] = sub_1003E0204(&qword_1009562F8, type metadata accessor for BaseTodayCardCollectionViewCell);
  result = sub_1003E0204(&qword_100950A78, type metadata accessor for BaseTodayCardCollectionViewCell);
  a1[7] = result;
  return result;
}

uint64_t sub_1003DF334(uint64_t a1, void *a2)
{
  v4 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_10076C38C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016E2C(a1, v6, &unk_1009434A0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10000CFBC(v6, &unk_1009434A0);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_10076C31C();
  sub_10076C31C();
  [a2 layoutDirection];
  sub_1007708DC();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1003DF554(uint64_t result, char a2)
{
  if (result)
  {

    sub_10076C7FC();
    v3 = sub_100761BEC();

    if (v3 <= 6)
    {
      if (v3 > 3)
      {
        if (v3 == 4)
        {

          v4 = type metadata accessor for InAppPurchaseTodayCardCollectionViewCell();
          v5 = &unk_100956338;
          v6 = type metadata accessor for InAppPurchaseTodayCardCollectionViewCell;
          goto LABEL_37;
        }

        if (v3 != 5)
        {
          goto LABEL_16;
        }

        if (a2 == 4)
        {
          goto LABEL_35;
        }

        v8 = type metadata accessor for RiverTodayCardCollectionViewCell();
        goto LABEL_36;
      }

      if (v3 >= 2)
      {
        if (v3 != 2)
        {
          if (v3 != 3)
          {
            goto LABEL_32;
          }

LABEL_16:

          v4 = type metadata accessor for MultiAppFallbackCardCollectionViewCell();
          v5 = &unk_100956320;
          v6 = type metadata accessor for MultiAppFallbackCardCollectionViewCell;
          goto LABEL_37;
        }

        if (a2 == 4)
        {
          sub_10076C7FC();
          sub_10076472C();
          if (swift_dynamicCastClass())
          {
            v7 = sub_1007646EC();

            if (v7)
            {
              v4 = type metadata accessor for ListTodayCardCollectionViewCell();
              v5 = &unk_100956340;
              v6 = type metadata accessor for ListTodayCardCollectionViewCell;
              goto LABEL_37;
            }
          }

          else
          {
          }

LABEL_35:
          v8 = type metadata accessor for MultiAppFallbackCardCollectionViewCell();
          goto LABEL_36;
        }

        v8 = type metadata accessor for ListTodayCardCollectionViewCell();
LABEL_36:
        v4 = v8;
        v5 = &unk_100956330;
        v6 = type metadata accessor for BaseTodayCardCollectionViewCell;
        goto LABEL_37;
      }

LABEL_21:

      v4 = type metadata accessor for StoryCardCollectionViewCell();
      v5 = &unk_100952D50;
      v6 = type metadata accessor for StoryCardCollectionViewCell;
      goto LABEL_37;
    }

    if (v3 > 10)
    {
      switch(v3)
      {
        case 11:

          v4 = type metadata accessor for CondensedAdLockupWithIconBackgroundViewTodayCardCollectionViewCell();
          v5 = &unk_100956310;
          v6 = type metadata accessor for CondensedAdLockupWithIconBackgroundViewTodayCardCollectionViewCell;
          goto LABEL_37;
        case 12:

          v4 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell();
          v5 = &unk_100956308;
          v6 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell;
          goto LABEL_37;
        case 13:

          v4 = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell();
          v5 = &unk_100956300;
          v6 = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell;
          goto LABEL_37;
      }
    }

    else
    {
      switch(v3)
      {
        case 7:

          v4 = type metadata accessor for GridTodayCardCollectionViewCell();
          v5 = &unk_100956328;
          v6 = type metadata accessor for GridTodayCardCollectionViewCell;
          goto LABEL_37;
        case 8:
          goto LABEL_21;
        case 10:

          v4 = type metadata accessor for AppEventTodayCardCollectionViewCell();
          v5 = &unk_100956318;
          v6 = type metadata accessor for AppEventTodayCardCollectionViewCell;
LABEL_37:
          sub_1003E0204(v5, v6);
          return v4;
      }
    }

LABEL_32:

    return 0;
  }

  return result;
}

uint64_t sub_1003DF8CC(uint64_t a1, char a2, void *a3)
{
  v6 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_10076C38C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016E2C(a1, v8, &unk_1009434A0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_10000CFBC(v8, &unk_1009434A0);
  }

  (*(v10 + 32))(v12, v8, v9);
  if (a2 != 4)
  {
    sub_10076C31C();
    sub_10076C31C();
  }

  [a3 layoutDirection];
  sub_1007708DC();
  return (*(v10 + 8))(v12, v9);
}

id sub_1003DFB08()
{
  v1 = v0;
  v2 = sub_10076C38C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v42 - v7;
  v9 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v42 - v14;
  v16 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  v17 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_shadowView);
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded) != 1)
  {
    [v17 setHidden:{0, v13}];
    v22 = [v0 backgroundView];
    if (v22)
    {
      v23 = v22;
      [v22 _setContinuousCornerRadius:20.0];
    }

    v24 = [v1 contentView];
    [v24 _setContinuousCornerRadius:20.0];

    (*((swift_isaMask & *v1) + 0xD8))();
    if ((*(v3 + 48))(v11, 1, v2))
    {
      v21 = v11;
      goto LABEL_10;
    }

    (*(v3 + 16))(v5, v11, v2);
    sub_10000CFBC(v11, &unk_1009434A0);
    if (*(v1 + v16))
    {
      v34 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v34 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v35 = *(v1 + *v34);
    v36 = [v1 traitCollection];
    if (v35 != 4)
    {
      sub_10076C31C();
      sub_10076C31C();
    }

    [v36 layoutDirection];
    sub_1007708DC();
    v27 = v37;
    v29 = v38;
    v31 = v39;
    v33 = v40;

    (*(v3 + 8))(v5, v2);
LABEL_18:
    [v1 setLayoutMargins:{v27, v29, v31, v33}];
    return [v1 setNeedsLayout];
  }

  [v17 setHidden:{1, v13}];
  v18 = [v0 backgroundView];
  if (v18)
  {
    v19 = v18;
    [v18 _setContinuousCornerRadius:0.0];
  }

  v20 = [v1 contentView];
  [v20 _setContinuousCornerRadius:0.0];

  (*((swift_isaMask & *v1) + 0xD8))();
  if (!(*(v3 + 48))(v15, 1, v2))
  {
    (*(v3 + 16))(v8, v15, v2);
    sub_10000CFBC(v15, &unk_1009434A0);
    v25 = [v1 traitCollection];
    sub_10076C31C();
    sub_10076C31C();
    [v25 layoutDirection];
    sub_1007708DC();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    (*(v3 + 8))(v8, v2);
    goto LABEL_18;
  }

  v21 = v15;
LABEL_10:
  sub_10000CFBC(v21, &unk_1009434A0);
  return [v1 setNeedsLayout];
}

void sub_1003E0038()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_itemLayoutContext;
  v2 = sub_10076341C();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded) = 0;
  v3 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  v4 = sub_10076C38C();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isTransitioning) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isMotionEnabled) = 1;
  v5 = v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 1;
  swift_weakInit();
  v6 = (v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  *v6 = 0;
  v6[1] = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1003E01AC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1003E01EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003E0204(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003E024C()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1003E02B0()
{
  result = qword_100950A98;
  if (!qword_100950A98)
  {
    type metadata accessor for TitledButtonStackCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950A98);
  }

  return result;
}

double sub_1003E030C()
{
  v0 = sub_10000A5D4(&qword_10094DC40);
  v36 = *(v0 - 8);
  v37 = v0;
  __chkstk_darwin(v0);
  v35 = &v27 - v1;
  v2 = sub_10076C38C();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076664C();
  v33 = *(v5 - 8);
  v34 = v5;
  __chkstk_darwin(v5);
  v27 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10000A5D4(&unk_1009520A0);
  v29 = *(v30 - 8);
  __chkstk_darwin(v30);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = sub_10000A5D4(&unk_100946720);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - v13;
  v15 = sub_10000A5D4(&unk_100946710);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v27 - v17;
  sub_1007633BC();
  sub_10076F4AC();
  (*(v16 + 8))(v18, v15);
  swift_getKeyPath();
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  (*(v12 + 8))(v14, v11);

  sub_1007633DC();
  v19 = v27;
  sub_10076331C();
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  (*(v31 + 8))(v4, v32);
  v20 = sub_100630CB4();
  sub_10000A570(v40, v38);
  sub_10000A5D4(&qword_1009575A0);
  sub_100763C3C();
  swift_dynamicCast();
  v21 = v29;
  v22 = v30;
  (*(v29 + 16))(v28, v10, v30);
  sub_10076FCFC();
  v23 = v35;
  sub_10076FDBC();
  sub_1001D53DC(v39, v20);
  v25 = v24;
  swift_unknownObjectRelease();
  (*(v36 + 8))(v23, v37);
  (*(v33 + 8))(v19, v34);
  (*(v21 + 8))(v10, v22);
  sub_10000CD74(v40);

  return v25;
}

uint64_t sub_1003E0930(uint64_t a1, uint64_t *a2, void **a3)
{
  v5 = sub_10076D1AC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10076D9AC();
  sub_10000DB18(v9, a2);
  sub_10000A61C(v9, a2);
  v10 = *a3;
  *v8 = v10;
  (*(v6 + 104))(v8, enum case for FontSource.textStyle(_:), v5);
  v15[3] = v5;
  v15[4] = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v15);
  (*(v6 + 16))(v11, v8, v5);
  v12 = v10;
  sub_10076D9BC();
  return (*(v6 + 8))(v8, v5);
}

void sub_1003E0AA0(double a1, double a2, double a3, double a4)
{
  v9 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v9 - 8);
  v11 = &v91[-v10];
  v12 = sub_100766FCC();
  __chkstk_darwin(v12 - 8);
  v13 = sub_10076702C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v91[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_100766F4C();
  v18 = __chkstk_darwin(v17);
  (*(v20 + 104))(&v91[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)], enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.leading(_:), v18);
  (*(v14 + 104))(v16, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v13);
  sub_100766FBC();
  sub_100766F5C();
  v21 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_materialBackground;
  *&v4[v21] = [objc_allocWithZone(UIVisualEffectView) init];
  v22 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_badgeLabel;
  sub_1007626BC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v22] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v24 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_titleLabel;
  *&v4[v24] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v25 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_descriptionLabel;
  *&v4[v25] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v26 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_callToActionLabel;
  *&v4[v26] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v27 = sub_10076FF6C();
  v28 = [objc_opt_self() systemImageNamed:v27];

  if (v28)
  {
    v29 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_chevronView;
    v30 = [objc_allocWithZone(UIImageView) initWithImage:v28];

    *&v4[v29] = v30;
    v31 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_tapGestureRecognizer;
    *&v4[v31] = [objc_allocWithZone(UITapGestureRecognizer) init];
    v32 = &v4[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_selectionHandler];
    v33 = type metadata accessor for CarouselItemMaterialTextOverlay();
    *v32 = 0;
    *(v32 + 1) = 0;
    v101.receiver = v4;
    v101.super_class = v33;
    v34 = objc_msgSendSuper2(&v101, "initWithFrame:", a1, a2, a3, a4);
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v38 = v34;
    [v38 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
    [v38 setOverrideUserInterfaceStyle:2];
    [v38 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
    v99 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_materialBackground;
    v39 = *&v38[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_materialBackground];
    sub_1003E3E98(v39, 26.0);

    v40 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_badgeLabel;
    v41 = qword_100941110;
    v42 = *&v38[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_badgeLabel];
    if (v41 != -1)
    {
      swift_once();
    }

    v43 = sub_10076D3DC();
    v44 = sub_10000A61C(v43, qword_1009A2128);
    v45 = *(v43 - 8);
    v46 = *(v45 + 16);
    v46(v11, v44, v43);
    v94 = v45;
    v95 = *(v45 + 56);
    v95(v11, 0, 1, v43);
    sub_1007625DC();

    [*&v38[v40] setNumberOfLines:1];
    v47 = *&v38[v40];
    v48 = objc_opt_self();
    v49 = v47;
    v100 = v48;
    v50 = [v48 secondaryLabelColor];
    v51 = v40;
    v52 = v50;
    [v49 setTextColor:v50];

    v98 = v51;
    v53 = [*&v38[v51] layer];
    v97 = kCAFilterPlusL;
    [v53 setCompositingFilter:?];

    v54 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_titleLabel;
    v55 = qword_100941120;
    v56 = *&v38[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_titleLabel];
    if (v55 != -1)
    {
      swift_once();
    }

    v57 = sub_10000A61C(v43, qword_1009A2158);
    v46(v11, v57, v43);
    v58 = v95;
    v95(v11, 0, 1, v43);
    sub_1007625DC();

    [*&v38[v54] setNumberOfLines:2];
    v59 = *&v38[v54];
    v60 = [v100 labelColor];
    v96 = v54;
    v61 = v60;
    [v59 setTextColor:v60];

    v62 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_descriptionLabel;
    v63 = *&v38[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_descriptionLabel];
    *v11 = UIFontTextStyleFootnote;
    v11[1] = UIFontWeightRegular;
    v92 = enum case for FontUseCase.preferredFontDerivative(_:);
    v64 = v11;
    v65 = v94[13];
    v65(v64);
    v58(v64, 0, 1, v43);
    v94 = UIFontTextStyleFootnote;
    v66 = v63;
    sub_1007625DC();

    v67 = v62;
    [*&v38[v62] setNumberOfLines:2];
    v68 = *&v38[v62];
    v93 = v62;
    v69 = v68;
    v70 = [v100 secondaryLabelColor];
    [v69 setTextColor:v70];

    v71 = [*&v38[v67] layer];
    v72 = v97;
    [v71 setCompositingFilter:v97];

    v73 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_callToActionLabel;
    v74 = *&v38[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_callToActionLabel];
    *v64 = v94;
    v64[1] = UIFontWeightBold;
    (v65)(v64, v92, v43);
    v58(v64, 0, 1, v43);
    v75 = v74;
    sub_1007625DC();

    [*&v38[v73] setNumberOfLines:1];
    v76 = *&v38[v73];
    v77 = v100;
    v78 = [v100 labelColor];
    [v76 setTextColor:v78];

    v79 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_chevronView;
    v80 = *&v38[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_chevronView];
    v81 = objc_opt_self();
    v82 = v80;
    v83 = [v81 configurationWithTextStyle:UIFontTextStyleBody];
    [v82 setPreferredSymbolConfiguration:v83];

    v84 = *&v38[v79];
    v85 = [v77 secondaryLabelColor];
    [v84 setTintColor:v85];

    v86 = [*&v38[v79] layer];
    [v86 setCompositingFilter:v72];

    v87 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_tapGestureRecognizer;
    [*&v38[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_tapGestureRecognizer] setEnabled:0];
    v88 = *&v38[v87];
    v89 = v38;
    [v88 addTarget:v89 action:"handleSelection:"];
    v90 = *&v38[v87];
    [v90 setDelegate:v89];

    [v89 addGestureRecognizer:*&v38[v87]];
    [v89 addSubview:*&v38[v99]];
    [v89 addSubview:*&v38[v98]];
    [v89 addSubview:*&v38[v96]];
    [v89 addSubview:*&v38[v93]];
    [v89 addSubview:*&v38[v73]];
    [v89 addSubview:*&v38[v79]];
    sub_1003E2A4C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003E172C@<X0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v30 = a1;
  v31 = a2;
  v29 = sub_10076DF4C();
  v28 = *(v29 - 8);
  __chkstk_darwin(v29);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100766F4C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  v13 = sub_10076703C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v14 + 16))(v16, v3 + v17, v13);
  sub_100766F6C();
  (*(v14 + 8))(v16, v13);
  (*(v7 + 104))(v9, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v6);
  sub_1003E3C30(&qword_100949440);
  sub_10077018C();
  sub_10077018C();
  if (v39[0] == v36[0] && v39[1] == v36[1])
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_10077167C();
  }

  v19 = *(v7 + 8);
  v19(v9, v6);
  v19(v12, v6);

  sub_1003E1CB0(v39);
  if ((v30 & 1) == 0)
  {
    v23 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_chevronView);
    v37 = sub_100016F40(0, &qword_10094A280);
    v38 = &protocol witness table for UIImageView;
    v36[0] = v23;
    v24 = v23;
    sub_10076DF8C();
    v34 = sub_10076DFAC();
    v35 = &protocol witness table for Center;
    sub_10000DB7C(v33);
    sub_10076DFBC();
    (*(v28 + 104))(v5, enum case for Pin.Edge.trailingEdge(_:), v29);
    sub_10000A570(v39, v36);
    v32[3] = sub_10076E04C();
    v32[4] = &protocol witness table for Margins;
    sub_10000DB7C(v32);
    sub_10076E03C();
    v37 = sub_10076DF5C();
    v38 = &protocol witness table for Pin;
    sub_10000DB7C(v36);
    sub_10076DF6C();
    if ((v18 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    sub_10000A570(v39, v32);
    sub_10076DF7C();
    v34 = sub_10076DFAC();
    v35 = &protocol witness table for Center;
    sub_10000DB7C(v33);
    sub_10076DFBC();
    goto LABEL_10;
  }

  v20 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_chevronView);
  type metadata accessor for CarouselItemMaterialTextOverlay();
  sub_10076422C();
  [v20 sizeThatFits:{v21, v22}];
  sub_10000A570(v39, v33);
  v37 = sub_10076E04C();
  v38 = &protocol witness table for Margins;
  sub_10000DB7C(v36);
  sub_10076E03C();
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  sub_10000A570(v36, v33);
LABEL_10:
  sub_10000A570(v33, v32);
  v25 = sub_10076E04C();
  v26 = v31;
  v31[3] = v25;
  v26[4] = &protocol witness table for Margins;
  sub_10000DB7C(v26);
  sub_10076E03C();
  sub_10000CD74(v39);
  sub_10000CD74(v36);
  return sub_10000CD74(v33);
}

uint64_t sub_1003E1CB0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v67 = a1;
  ObjectType = swift_getObjectType();
  v71 = sub_10076D65C();
  v68 = *(v71 - 8);
  __chkstk_darwin(v71);
  v62 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v64 = &v60 - v5;
  __chkstk_darwin(v6);
  v66 = &v60 - v7;
  v8 = sub_10076D9AC();
  v69 = *(v8 - 8);
  __chkstk_darwin(v8);
  v65 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v9;
  __chkstk_darwin(v10);
  v72 = &v60 - v11;
  v12 = sub_100766F4C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v60 - v17;
  v19 = sub_10076703C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v20 + 16))(v22, &v2[v23], v19);
  sub_100766F6C();
  (*(v20 + 8))(v22, v19);
  (*(v13 + 104))(v15, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v12);
  sub_1003E3C30(&qword_100949440);
  sub_10077018C();
  sub_10077018C();
  if (v73[0] == v76 && v73[1] == v77)
  {
    v24 = *(v13 + 8);
    v24(v15, v12);
    v24(v18, v12);

LABEL_5:
    v27 = qword_1009403B8;
    v61 = *&v2[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_callToActionLabel];
    if (v27 != -1)
    {
      swift_once();
    }

    v28 = qword_100956398;
    goto LABEL_11;
  }

  v25 = sub_10077167C();
  v26 = *(v13 + 8);
  v26(v15, v12);
  v26(v18, v12);

  if (v25)
  {
    goto LABEL_5;
  }

  v29 = qword_1009403B0;
  v61 = *&v2[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_descriptionLabel];
  if (v29 != -1)
  {
    swift_once();
  }

  v28 = qword_100956380;
LABEL_11:
  v30 = v64;
  v31 = sub_10000A61C(v8, v28);
  v64 = *(v69 + 16);
  (v64)(v72, v31, v8);
  v32 = v62;
  sub_10076D63C();
  v33 = *&v2[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_badgeLabel];
  v34 = sub_1007626BC();
  v74 = v34;
  v75 = &protocol witness table for UILabel;
  v73[0] = v33;
  v35 = swift_allocObject();
  v36 = ObjectType;
  *(v35 + 16) = v2;
  *(v35 + 24) = v36;
  v37 = v36;
  v38 = v33;
  v39 = v2;
  sub_10076D64C();

  v60 = v8;
  v40 = *(v68 + 1);
  v41 = v32;
  v42 = v71;
  v40(v41, v71);
  v68 = v40;
  sub_10000CD74(v73);
  v43 = *&v39[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_titleLabel];
  v74 = v34;
  v75 = &protocol witness table for UILabel;
  v73[0] = v43;
  v44 = swift_allocObject();
  *(v44 + 16) = v39;
  *(v44 + 24) = v37;
  v62 = v39;
  v45 = v43;
  v46 = v66;
  sub_10076D64C();

  v40(v30, v42);
  sub_10000CD74(v73);
  v74 = v34;
  v75 = &protocol witness table for UILabel;
  v47 = v61;
  v73[0] = v61;
  v48 = v65;
  v49 = v60;
  (v64)(v65, v72, v60);
  v50 = v69;
  v51 = (*(v69 + 80) + 24) & ~*(v69 + 80);
  v52 = (v63 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  v54 = v62;
  *(v53 + 16) = v62;
  (*(v50 + 32))(v53 + v51, v48, v49);
  v55 = v71;
  *(v53 + v52) = ObjectType;
  v56 = v67;
  v67[3] = v55;
  v56[4] = &protocol witness table for VerticalStack;
  sub_10000DB7C(v56);
  v57 = v47;
  v58 = v54;
  sub_10076D64C();

  v68(v46, v55);
  (*(v50 + 8))(v72, v49);
  return sub_10000CD74(v73);
}

uint64_t sub_1003E2474(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v22 = a6;
  v23 = a5;
  v8 = sub_100766F4C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076703C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v13 + 16))(v15, a2 + v16, v12);
  sub_100766F6C();
  (*(v13 + 8))(v15, v12);
  sub_100766F2C();
  (*(v9 + 8))(v11, v8);
  sub_10076D5EC();
  v17 = sub_10076D60C();
  sub_10076D62C();
  sub_10076D62C();
  if (sub_10076D62C() != v17)
  {
    sub_10076D62C();
  }

  sub_10076D5DC();
  if (*a4 != -1)
  {
    swift_once();
  }

  v18 = sub_10076D9AC();
  v19 = sub_10000A61C(v18, v23);
  v24[3] = v18;
  v24[4] = &protocol witness table for StaticDimension;
  v20 = sub_10000DB7C(v24);
  (*(*(v18 - 8) + 16))(v20, v19, v18);
  return sub_10076D5BC();
}

uint64_t sub_1003E270C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100766F4C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076703C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v10 + 16))(v12, a2 + v13, v9);
  sub_100766F6C();
  (*(v10 + 8))(v12, v9);
  sub_100766F2C();
  (*(v6 + 8))(v8, v5);
  sub_10076D5EC();
  sub_10000A5D4(&qword_100955A70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100784500;
  v15 = sub_10076D60C();
  *(inited + 32) = v15;
  v16 = sub_10076D61C();
  *(inited + 40) = v16;
  sub_10076D62C();
  sub_10076D62C();
  if (sub_10076D62C() != v15)
  {
    sub_10076D62C();
  }

  sub_10076D62C();
  if (sub_10076D62C() != v16)
  {
    sub_10076D62C();
  }

  sub_10076D5DC();
  v17 = sub_10076D9AC();
  v24 = v17;
  v25 = &protocol witness table for StaticDimension;
  v18 = sub_10000DB7C(v23);
  v19 = *(*(v17 - 8) + 16);
  v19(v18, a3, v17);
  sub_10076D5BC();
  if (qword_1009403C0 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A61C(v17, qword_1009563B0);
  v24 = v17;
  v25 = &protocol witness table for StaticDimension;
  v21 = sub_10000DB7C(v23);
  v19(v21, v20, v17);
  return sub_10076D5CC();
}

id sub_1003E2A4C()
{
  v1 = v0;
  v56 = sub_100766FCC();
  v64 = *(v56 - 8);
  __chkstk_darwin(v56);
  v63 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v61 = &v53 - v4;
  __chkstk_darwin(v5);
  v57 = &v53 - v6;
  __chkstk_darwin(v7);
  v54 = &v53 - v8;
  v9 = sub_100766F4C();
  v66 = *(v9 - 8);
  v67 = v9;
  __chkstk_darwin(v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076703C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v62 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v58 = &v53 - v16;
  __chkstk_darwin(v17);
  v55 = &v53 - v18;
  __chkstk_darwin(v19);
  v53 = &v53 - v20;
  __chkstk_darwin(v21);
  v23 = &v53 - v22;
  v24 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  v25 = *(v13 + 16);
  v25(v23, &v0[v24], v12);
  sub_100766F6C();
  v26 = *(v13 + 8);
  (v26)(v23, v12);
  v27 = [v0 traitCollection];
  v28 = sub_100766F3C();

  v66[1](v11, v67);
  v29 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_badgeLabel];
  v65 = v28;
  [v29 setTextAlignment:v28];
  v59 = v25;
  v60 = v24;
  v30 = v1;
  v31 = v53;
  v25(v53, &v1[v24], v12);
  v32 = v12;
  v33 = v54;
  sub_100766FDC();
  v66 = v26;
  v67 = v13 + 8;
  (v26)(v31, v12);
  v34 = sub_100766F9C();
  v35 = v33;
  v36 = v56;
  v64 = *(v64 + 8);
  (v64)(v35);
  if (!v34)
  {
    v34 = [objc_opt_self() secondaryLabelColor];
  }

  [v29 setTextColor:v34];

  v37 = v30;
  v38 = *&v30[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_titleLabel];
  [v38 setTextAlignment:v65];
  v39 = v59;
  v40 = v60;
  v41 = v55;
  v59(v55, &v30[v60], v32);
  v42 = v57;
  sub_100766FDC();
  (v66)(v41, v32);
  v43 = sub_100766FAC();
  (v64)(v42, v36);
  if (!v43)
  {
    v43 = [objc_opt_self() labelColor];
  }

  [v38 setTextColor:v43];

  v44 = *&v37[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_descriptionLabel];
  [v44 setTextAlignment:v65];
  v45 = v58;
  v39(v58, &v37[v40], v32);
  v46 = v61;
  sub_100766FDC();
  (v66)(v45, v32);
  v47 = sub_100766F7C();
  (v64)(v46, v36);
  if (!v47)
  {
    v47 = [objc_opt_self() secondaryLabelColor];
  }

  [v44 setTextColor:v47];

  v48 = *&v37[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_callToActionLabel];
  [v48 setTextAlignment:v65];
  v49 = v62;
  v39(v62, &v37[v40], v32);
  v50 = v63;
  sub_100766FDC();
  (v66)(v49, v32);
  v51 = sub_100766F8C();
  (v64)(v50, v36);
  if (!v51)
  {
    v51 = [objc_opt_self() labelColor];
  }

  [v48 setTextColor:v51];

  return [v37 setNeedsLayout];
}

id sub_1003E31C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarouselItemMaterialTextOverlay();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CarouselItemMaterialTextOverlay()
{
  result = qword_100956430;
  if (!qword_100956430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003E333C()
{
  result = sub_10076703C();
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

uint64_t sub_1003E33F0(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_selectionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_selectionHandler);
  *v4 = a1;
  v4[1] = a2;
  sub_10001CE50(a1);
  sub_10001CE50(a1);
  sub_1000167E0(v5);
  v6 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_tapGestureRecognizer);
  if (a1)
  {
    sub_1000167E0(a1);
  }

  [v6 setEnabled:a1 != 0];

  return sub_1000167E0(a1);
}

id sub_1003E34A4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100766F4C();
  v75 = *(v4 - 8);
  __chkstk_darwin(v4);
  v64 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v63 = &v56 - v7;
  __chkstk_darwin(v8);
  v59 = &v56 - v9;
  __chkstk_darwin(v10);
  v70 = &v56 - v11;
  __chkstk_darwin(v12);
  v69 = &v56 - v13;
  __chkstk_darwin(v14);
  v68 = &v56 - v15;
  v16 = sub_10076703C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v58 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v56 - v20;
  __chkstk_darwin(v22);
  v24 = &v56 - v23;
  sub_10076704C();
  v25 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  v26 = v17[3];
  v73 = v25;
  v26(&v2[v25], v24, v16);
  swift_endAccess();
  sub_1003E2A4C();
  v27 = v17[1];
  v60 = v24;
  v74 = v16;
  v71 = v27;
  v72 = v17 + 1;
  v27(v24, v16);
  v28 = *&v2[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_badgeLabel];
  sub_1007670AC();
  if (v29)
  {
    v30 = sub_10076FF6C();
  }

  else
  {
    v30 = 0;
  }

  [v28 setText:v30];

  v31 = *&v2[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_titleLabel];
  sub_1007670BC();
  if (v32)
  {
    v33 = sub_10076FF6C();
  }

  else
  {
    v33 = 0;
  }

  [v31 setText:v33];

  v34 = *&v2[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_descriptionLabel];
  sub_10076706C();
  if (v35)
  {
    v36 = sub_10076FF6C();
  }

  else
  {
    v36 = 0;
  }

  v57 = v34;
  [v34 setText:v36];

  v37 = v17[2];
  v38 = v74;
  v61 = v17 + 2;
  v67 = v37;
  v37(v21, &v2[v73], v74);
  sub_100766F6C();
  v71(v21, v38);
  v39 = v75;
  v40 = *(v75 + 104);
  v66 = enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:);
  v65 = v40;
  v40(v69);
  sub_1003E3C30(&qword_100949440);
  sub_10077018C();
  sub_10077018C();
  v62 = a1;
  if (v78 == v76 && v79 == v77)
  {
    v41 = 1;
  }

  else
  {
    v41 = sub_10077167C();
  }

  v42 = *(v39 + 8);
  v42(v69, v4);
  v75 = v39 + 8;
  v42(v68, v4);

  [v57 setHidden:v41 & 1];
  v69 = *&v2[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_chevronView];
  v43 = v74;
  v44 = v58;
  v67(v58, &v2[v73], v74);
  sub_100766F6C();
  v71(v44, v43);
  v45 = v59;
  v65(v59, v66, v4);
  sub_10077018C();
  sub_10077018C();
  if (v78 == v76 && v79 == v77)
  {
    v46 = 1;
  }

  else
  {
    v46 = sub_10077167C();
  }

  v42(v45, v4);
  v42(v70, v4);

  [v69 setHidden:v46 & 1];
  v47 = *&v2[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_callToActionLabel];
  v48 = sub_10076707C();
  v50 = sub_100113EB4(v48, v49, [v2 effectiveUserInterfaceLayoutDirection]);

  [v47 setAttributedText:v50];

  v51 = v74;
  v52 = v60;
  v67(v60, &v2[v73], v74);
  v53 = v63;
  sub_100766F6C();
  v71(v52, v51);
  v54 = v64;
  v65(v64, v66, v4);
  sub_1003E3C30(&qword_100956448);
  LOBYTE(v52) = sub_10076FF1C();
  v42(v54, v4);
  v42(v53, v4);
  [v47 setHidden:(v52 & 1) == 0];
  return [v2 setNeedsLayout];
}

uint64_t sub_1003E3C30(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100766F4C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1003E3C74()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1003E3D24()
{
  v1 = sub_10076D9AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1003E3DF4(uint64_t a1)
{
  v3 = *(sub_10076D9AC() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1003E270C(a1, v4, v5);
}

void sub_1003E3E98(void *a1, double a2)
{
  sub_10000A5D4(&unk_100942870);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007841E0;
  *(v4 + 32) = [objc_opt_self() effectWithStyle:17];
  sub_100016F40(0, &qword_1009492C0);
  isa = sub_1007701AC().super.isa;

  [a1 setBackgroundEffects:isa];

  [a1 _setContinuousCornerRadius:a2];
  v6 = [a1 layer];
  [v6 setCornerRadius:a2];

  v7 = [a1 layer];
  [v7 setCornerCurve:kCACornerCurveContinuous];

  v8 = [a1 layer];
  v9 = [objc_opt_self() mainScreen];
  [v9 scale];
  v11 = v10;

  [v8 setBorderWidth:1.0 / v11];
  v12 = [a1 layer];
  v13 = [objc_opt_self() whiteColor];
  v14 = [v13 colorWithAlphaComponent:0.15];

  v15 = [v14 CGColor];
  [v12 setBorderColor:v15];
}

void sub_1003E4108()
{
  v1 = sub_100766FCC();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10076702C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100766F4C();
  v7 = __chkstk_darwin(v6);
  (*(v9 + 104))(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.leading(_:), v7);
  (*(v3 + 104))(v5, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v2);
  sub_100766FBC();
  sub_100766F5C();
  v10 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_materialBackground;
  *(v0 + v10) = [objc_allocWithZone(UIVisualEffectView) init];
  v11 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_badgeLabel;
  sub_1007626BC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v11) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v13 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_titleLabel;
  *(v0 + v13) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v14 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_descriptionLabel;
  *(v0 + v14) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v15 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_callToActionLabel;
  *(v0 + v15) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v16 = sub_10076FF6C();
  v17 = [objc_opt_self() systemImageNamed:v16];

  if (!v17)
  {
    __break(1u);
  }

  v18 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_chevronView;
  v19 = [objc_allocWithZone(UIImageView) initWithImage:v17];

  *(v0 + v18) = v19;
  v20 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_tapGestureRecognizer;
  *(v0 + v20) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v21 = (v0 + OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_selectionHandler);
  *v21 = 0;
  v21[1] = 0;
  sub_10077156C();
  __break(1u);
}

unint64_t sub_1003E4490()
{
  result = qword_100956450;
  if (!qword_100956450)
  {
    sub_10075EAEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100956450);
  }

  return result;
}

uint64_t sub_1003E44F0()
{
  v0 = sub_10076F50C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076A54C();
  sub_10076F64C();
  sub_10076FC1C();
  v4 = v9;
  sub_10076A53C();
  sub_10075F45C();
  sub_10076FC1C();
  v5 = v9;
  sub_10075F44C();
  sub_10000A5D4(&qword_100942C70);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  v6 = sub_10076FC8C();

  return v6;
}

id sub_1003E46C8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076B6EC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076664C();
  v39 = *(v7 - 8);
  __chkstk_darwin(v7);
  v37 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&qword_1009572A0);
  __chkstk_darwin(v9 - 8);
  v10 = sub_10000A5D4(&unk_1009520C0);
  v38 = *(v10 - 8);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v43 = &v30 - v12;
  v46.receiver = v0;
  v46.super_class = ObjectType;
  objc_msgSendSuper2(&v46, "viewDidLoad", v11);
  v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_componentView];
  v35 = *&v0[OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_componentView + 8];
  v36 = swift_getObjectType();
  v42 = v13;
  v14 = [v13 backgroundView];
  result = [v0 view];
  v16 = result;
  v40 = v10;
  v41 = v6;
  if (v14)
  {
    if (!result)
    {
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    v17 = [v14 backgroundColor];
    [v16 setBackgroundColor:v17];

LABEL_6:
    v18 = v7;
    v33 = v4;
    v34 = v3;

    result = [v0 view];
    if (result)
    {
      v19 = result;
      v20 = *&v0[OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_scrollView];
      v32 = v20;
      [result addSubview:v20];

      [v20 setDelegate:v0];
      [v20 setAlwaysBounceVertical:1];
      v44[0] = 0;
      sub_10077140C();
      sub_10076FDEC();
      v45[0] = *&v0[OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_stateStore];

      sub_10000A5D4(&unk_1009520B0);
      sub_100071820(&qword_1009564C0, &unk_1009520B0);
      sub_10076F82C();
      v21 = OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_model;
      v31 = *&v0[OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_objectGraph];
      sub_10000A5D4(&unk_10094F738);
      v22 = v39;
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_100784500;
      sub_1007665FC();
      sub_1007665CC();
      v45[0] = v23;
      sub_1003E5E5C(&unk_100945570, &type metadata accessor for ComponentLayoutOptions);
      sub_10000A5D4(&qword_10094F748);
      sub_100071820(&qword_10094F750, &qword_10094F748);
      v24 = v37;
      sub_1007712CC();
      v45[0] = _swiftEmptyArrayStorage;
      sub_1003E5E5C(&unk_100946780, &type metadata accessor for Shelf.PresentationHints);
      sub_10000A5D4(&unk_1009564D0);
      sub_100071820(&qword_100944550, &unk_1009564D0);
      v25 = v41;
      v26 = v34;
      sub_1007712CC();
      v27 = v36;
      v28 = v42;
      (*(v35 + 80))(&v1[v21], v43, v31, v24, v25, v1, v36);
      (*(v33 + 8))(v25, v26);
      (*(v22 + 8))(v24, v18);
      sub_10000A570(&v1[v21], v45);
      v44[3] = v27;
      v44[0] = v28;
      v29 = v28;
      sub_10075FA0C();
      sub_1003E5EA4(v45);
      sub_10000CD74(v44);
      [v32 addSubview:v29];
      return (*(v38 + 8))(v43, v40);
    }

    __break(1u);
    goto LABEL_9;
  }

  if (result)
  {
    v17 = [v42 backgroundColor];
    [v16 setBackgroundColor:v17];
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
  return result;
}

id sub_1003E4E08()
{
  v41.receiver = v0;
  v41.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v41, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_scrollView];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  [result bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v1 setFrame:{v5, v7, v9, v11}];
  result = [v0 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = result;
  [result bounds];
  v14 = v13;
  v16 = v15;

  v17 = sub_1003E5054(v14, v16);
  v19 = v18;
  [v1 frame];
  Height = CGRectGetHeight(v42);
  v21 = *&v0[OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_componentView];
  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v22 = result;
  [result bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v43.origin.x = v24;
  v43.origin.y = v26;
  v43.size.width = v28;
  v43.size.height = v30;
  MinX = CGRectGetMinX(v43);
  result = [v0 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v32 = result;
  if (v19 <= Height)
  {
    v19 = Height;
  }

  [result bounds];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v44.origin.x = v34;
  v44.origin.y = v36;
  v44.size.width = v38;
  v44.size.height = v40;
  [v21 setFrame:{MinX, CGRectGetMinY(v44), v17, v19}];
  [v1 setContentSize:{v17, v19}];
  return [v0 setPreferredContentSize:{v17, v19}];
}

double sub_1003E5054(double a1, double a2)
{
  v3 = v2;
  v24 = sub_10076664C();
  v6 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&qword_1009572A0);
  __chkstk_darwin(v9 - 8);
  v10 = sub_10000A5D4(&unk_1009520A0);
  v22 = *(v10 - 8);
  v23 = v10;
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  v25 = 0;
  sub_10077140C();
  sub_10076FDEC();
  v26 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_stateStore);

  sub_10000A5D4(&unk_1009520B0);
  sub_100071820(&qword_1009564C0, &unk_1009520B0);
  sub_10076FD7C();
  v13 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_componentView + 8);
  ObjectType = swift_getObjectType();
  v20 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_objectGraph);
  v21 = OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_model;
  sub_10000A5D4(&unk_10094F738);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100784500;
  sub_1007665FC();
  sub_1007665CC();
  v26 = v15;
  sub_1003E5E5C(&unk_100945570, &type metadata accessor for ComponentLayoutOptions);
  sub_10000A5D4(&qword_10094F748);
  sub_100071820(&qword_10094F750, &qword_10094F748);
  v16 = v24;
  sub_1007712CC();
  v17 = (*(v13 + 72))(v3 + v21, 1, v12, v20, v8, v3, ObjectType, v13, a1, a2);
  (*(v6 + 8))(v8, v16);
  (*(v22 + 8))(v12, v23);
  return v17;
}

void sub_1003E5524(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "traitCollectionDidChange:", a1);
  if (a1 && [a1 horizontalSizeClass] == 2)
  {
    v3 = [v1 traitCollection];
    v4 = [v3 horizontalSizeClass];

    if (v4 == 1)
    {
      [v1 dismissViewControllerAnimated:0 completion:0];
    }
  }
}

uint64_t sub_1003E5648()
{
  v1 = sub_10076B6EC();
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  __chkstk_darwin(v1);
  v24 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10076664C();
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&qword_1009572A0);
  __chkstk_darwin(v6 - 8);
  v7 = sub_10000A5D4(&unk_1009520C0);
  v22 = *(v7 - 8);
  v23 = v7;
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  v27 = 0;
  sub_10077140C();
  sub_10076FDEC();
  v28 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_stateStore);

  sub_10000A5D4(&unk_1009520B0);
  sub_100071820(&qword_1009564C0, &unk_1009520B0);
  sub_10076F82C();
  v18 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_componentView + 8);
  ObjectType = swift_getObjectType();
  v16 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_objectGraph);
  v17 = OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_model;
  sub_10000A5D4(&unk_10094F738);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100783DD0;
  sub_1007665FC();
  v28 = v10;
  sub_1003E5E5C(&unk_100945570, &type metadata accessor for ComponentLayoutOptions);
  sub_10000A5D4(&qword_10094F748);
  sub_100071820(&qword_10094F750, &qword_10094F748);
  v11 = v21;
  sub_1007712CC();
  v28 = _swiftEmptyArrayStorage;
  sub_1003E5E5C(&unk_100946780, &type metadata accessor for Shelf.PresentationHints);
  sub_10000A5D4(&unk_1009564D0);
  sub_100071820(&qword_100944550, &unk_1009564D0);
  v13 = v24;
  v12 = v25;
  sub_1007712CC();
  (*(v18 + 80))(v0 + v17, v9, v16, v5, v13, v0, ObjectType);
  (*(v26 + 8))(v13, v12);
  (*(v19 + 8))(v5, v11);
  return (*(v22 + 8))(v9, v23);
}

id sub_1003E5B60(uint64_t a1)
{
  v3 = sub_10000A5D4(&unk_10094DE60);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = [objc_allocWithZone(type metadata accessor for ComponentViewOverflowTransitioning()) init];
  v7 = OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_overflowTransitioning;
  v8 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_overflowTransitioning];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_overflowTransitioning] = v6;

  v9 = *&v1[v7];
  if (v9)
  {
    v9[OBJC_IVAR____TtC20ProductPageExtension34ComponentViewOverflowTransitioning_isTransitioningFromContainer] = 1;
    v10 = sub_10075E11C();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v5, a1, v10);
    (*(v11 + 56))(v5, 0, 1, v10);
    v12 = OBJC_IVAR____TtC20ProductPageExtension34ComponentViewOverflowTransitioning_selectedIndexPath;
    swift_beginAccess();
    v13 = v9;
    sub_10021560C(v5, &v9[v12]);
    swift_endAccess();

    v14 = *&v1[v7];
  }

  else
  {
    v14 = 0;
  }

  [v1 setTransitioningDelegate:v14];
  return [v1 setModalPresentationStyle:4];
}

void sub_1003E5E44()
{
  v1 = *(*v0 + OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_overflowTransitioning);
  *(*v0 + OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_overflowTransitioning) = 0;
}

uint64_t sub_1003E5E5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003E5EA4(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_10094F720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003E5F0C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_titleLabel] setText:0];
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_captionLabel] setText:0];
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_iconImageView] setImage:0];
  *&v0[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_icon] = 0;
}

uint64_t sub_1003E5FB0()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007672DC();
  sub_10000DB18(v4, qword_10099F860);
  v30 = sub_10000A61C(v4, qword_10099F860);
  v40[8] = &type metadata for Double;
  v40[9] = &protocol witness table for Double;
  v40[5] = 0x4030000000000000;
  if (qword_100940D70 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A1648);
  v7 = *(v5 - 8);
  v8 = *(v7 + 16);
  v9 = v7 + 16;
  v8(v3, v6, v5);
  v10 = enum case for FontSource.useCase(_:);
  v11 = v1 + 13;
  v29 = v1[13];
  v29(v3, enum case for FontSource.useCase(_:), v0);
  v28 = sub_10076D9AC();
  v40[3] = v28;
  v40[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v40);
  v38 = v0;
  v39 = &protocol witness table for FontSource;
  v12 = sub_10000DB7C(v37);
  v27 = v1[2];
  v27(v12, v3, v0);
  sub_10076D9BC();
  v13 = v1[1];
  v25 = v1 + 1;
  v26 = v13;
  v13(v3, v0);
  if (qword_100940D78 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v5, qword_1009A1660);
  v22[0] = v8;
  v22[1] = v9;
  v8(v3, v14, v5);
  v15 = v29;
  v29(v3, v10, v0);
  v24 = v11;
  v16 = v28;
  v38 = v28;
  v39 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v37);
  v23 = v10;
  v35 = v0;
  v36 = &protocol witness table for FontSource;
  v17 = sub_10000DB7C(v34);
  v18 = v27;
  v27(v17, v3, v0);
  sub_10076D9BC();
  v19 = v26;
  v26(v3, v0);
  (v22[0])(v3, v14, v5);
  v15(v3, v23, v0);
  v35 = v16;
  v36 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v34);
  v32 = v0;
  v33 = &protocol witness table for FontSource;
  v20 = sub_10000DB7C(v31);
  v18(v20, v3, v0);
  sub_10076D9BC();
  v19(v3, v0);
  v33 = &protocol witness table for Double;
  v32 = &type metadata for Double;
  v31[0] = 0;
  return sub_1007672BC();
}

uint64_t sub_1003E6438()
{
  v0 = sub_10000A5D4(&unk_100942EF0);
  sub_10000DB18(v0, qword_1009564E0);
  sub_10000A61C(v0, qword_1009564E0);
  sub_10000A5D4(&unk_100943120);
  type metadata accessor for NSTextAlignment(0);
  return sub_10075FDDC();
}

void sub_1003E64D4()
{
  v0 = [objc_opt_self() systemFontOfSize:30.0];
  v1 = [objc_opt_self() configurationWithFont:v0];

  qword_1009564F8 = v1;
}

char *sub_1003E654C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10076D3DC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v49 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076771C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v17 - 8);
  v19 = &v49 - v18;
  v20 = OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_itemLayoutContext;
  v21 = sub_10076341C();
  (*(*(v21 - 8) + 56))(&v5[v20], 1, 1, v21);
  v22 = OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_iconImageView;
  *&v5[v22] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v23 = OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_iconPositioningView;
  *&v5[v23] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v24 = OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_titleLabel;
  if (qword_100940D70 != -1)
  {
    swift_once();
  }

  v25 = sub_10000A61C(v10, qword_1009A1648);
  v26 = *(v11 + 16);
  v26(v19, v25, v10);
  (*(v11 + 56))(v19, 0, 1, v10);
  (*(v14 + 104))(v16, enum case for DirectionalTextAlignment.none(_:), v13);
  v27 = objc_allocWithZone(sub_1007626BC());
  *&v5[v24] = sub_1007626AC();
  v28 = OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_captionLabel;
  if (qword_100940D78 != -1)
  {
    swift_once();
  }

  v29 = sub_10000A61C(v10, qword_1009A1660);
  v30 = v49;
  v26(v49, v29, v10);
  v31 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  *&v5[v28] = sub_10050BDFC(v30, 0, 0);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_icon] = 0;
  v52.receiver = v5;
  v52.super_class = ObjectType;
  v32 = objc_msgSendSuper2(&v52, "initWithFrame:", a1, a2, a3, a4);
  v33 = [v32 contentView];
  [v33 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v34 = OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_iconImageView;
  [*&v32[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_iconImageView] setContentMode:1];
  [*&v32[v34] setAccessibilityIgnoresInvertColors:1];
  v35 = qword_1009403D8;
  v36 = *&v32[v34];
  if (v35 != -1)
  {
    swift_once();
  }

  [v36 setPreferredSymbolConfiguration:qword_1009564F8];

  v37 = OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_captionLabel;
  v38 = *&v32[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_captionLabel];
  v39 = objc_opt_self();
  v40 = v38;
  v41 = [v39 systemGrayColor];
  [v40 setTextColor:v41];

  v42 = qword_1009403D0;
  v43 = *&v32[v37];
  if (v42 != -1)
  {
    swift_once();
  }

  v44 = sub_10000A5D4(&unk_100942EF0);
  sub_10000A61C(v44, qword_1009564E0);
  v51 = v32;
  sub_10075FDCC();

  sub_100770E7C();
  v45 = [v32 contentView];
  [v45 addSubview:*&v32[v34]];

  v46 = [v32 contentView];
  [v46 addSubview:*&v32[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_titleLabel]];

  v47 = [v32 contentView];
  [v47 addSubview:*&v32[v37]];

  return v32;
}

uint64_t sub_1003E6BF0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v37 = sub_10076D1FC();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1007672FC();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v39 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007672DC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v34 - v12;
  v51.receiver = v1;
  v51.super_class = ObjectType;
  objc_msgSendSuper2(&v51, "layoutSubviews", v11);
  v35 = OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_icon;
  v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_icon];
  v15 = qword_1009403C8;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v6, qword_10099F860);
  v38 = v7;
  v17 = *(v7 + 16);
  v17(v13, v16, v6);
  if (v14)
  {
    v18 = qword_1009403D8;

    if (v18 != -1)
    {
      swift_once();
    }

    v19 = sub_10076044C();
    if (v19)
    {
      v20 = v19;
      [v19 size];
    }
  }

  sub_1007672CC();

  v17(v9, v13, v6);
  v21 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_iconPositioningView];
  v49 = sub_100016F40(0, &qword_1009441F0);
  v50 = &protocol witness table for UIView;
  v48 = v21;
  v22 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_titleLabel];
  v46 = sub_100016F40(0, &qword_100956550);
  v47 = &protocol witness table for UILabel;
  v45 = v22;
  v23 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_captionLabel];
  v43 = type metadata accessor for DynamicTypeLinkedLabel();
  v44 = &protocol witness table for UIView;
  v42 = v23;
  v24 = v21;
  v25 = v22;
  v26 = v23;
  v27 = v39;
  sub_1007672EC();
  v28 = [v1 contentView];
  sub_10076422C();

  sub_1007672AC();
  (*(v36 + 8))(v4, v37);
  if (!*&v1[v35])
  {
    goto LABEL_16;
  }

  v29 = qword_1009403D8;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = sub_10076044C();
  if (!v30)
  {

LABEL_16:
    v31 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_iconImageView];
    [v31 frame];
    [v31 setFrame:?];
    goto LABEL_17;
  }

  v31 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_iconImageView];
  v32 = v30;
  [v30 size];
  [v31 frame];
  [v31 setFrame:?];

LABEL_17:
  [v24 center];
  [v31 setCenter:?];
  (*(v40 + 8))(v27, v41);
  return (*(v38 + 8))(v13, v6);
}

id sub_1003E7274(void *a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_1009403D0 != -1)
    {
      swift_once();
    }

    v6 = sub_10000A5D4(&unk_100942EF0);
    sub_10000A61C(v6, qword_1009564E0);
    v7 = v1;
    sub_10075FDCC();

    return sub_100770E7C();
  }

  return result;
}

uint64_t type metadata accessor for ProductCapabilityCell()
{
  result = qword_100956528;
  if (!qword_100956528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003E7514()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1003E75C4()
{
  sub_100016F40(0, &qword_10094A280);
  sub_10032E104();
  return sub_100760BFC();
}

double sub_1003E7634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v52 = a4;
  v50 = a3;
  v48 = a1;
  v60 = sub_1007672FC();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = sub_1007672DC();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v54 = &v44[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v55 = &v44[-v9];
  v10 = sub_10076997C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v49 = &v44[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v44[-v14];
  v51 = sub_10076DDDC();
  v53 = sub_10076DDCC();
  v16 = sub_100016F40(0, &qword_100942F00);
  v17 = qword_100940D70;

  if (v17 != -1)
  {
    swift_once();
  }

  v46 = sub_10076D3DC();
  sub_10000A61C(v46, qword_1009A1648);
  v61 = a5;
  v18 = [a5 traitCollection];
  v47 = v16;
  sub_100770B3C();

  v19 = sub_10076C04C();
  v70[3] = v19;
  v20 = sub_1003E7E60(&qword_100943230, &type metadata accessor for Feature);
  v70[4] = v20;
  v21 = sub_10000DB7C(v70);
  v22 = *(*(v19 - 8) + 104);
  v45 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v22(v21);
  sub_10076C90C();
  sub_10000CD74(v70);
  sub_10076996C();
  sub_10076994C();
  v23 = *(v11 + 8);
  v23(v15, v10);
  if (v50)
  {
    v48 = sub_10076080C();
  }

  else
  {
    v48 = 0;
  }

  v50 = v10;
  if (qword_100940D78 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v46, qword_1009A1660);
  v24 = [v61 traitCollection];
  sub_100770B3C();

  v68 = v19;
  v69 = v20;
  v25 = sub_10000DB7C(&v67);
  (v22)(v25, v45, v19);
  sub_10076C90C();
  sub_10000CD74(&v67);
  v26 = v49;
  sub_10076996C();
  sub_10076994C();
  v23(v26, v50);
  if (qword_1009403C8 != -1)
  {
    swift_once();
  }

  v27 = v58;
  v28 = sub_10000A61C(v58, qword_10099F860);
  v29 = v56;
  v30 = *(v56 + 16);
  v31 = v55;
  v30(v55, v28, v27);
  if (v52)
  {
    v32 = qword_1009403D8;

    if (v32 != -1)
    {
      swift_once();
    }

    v33 = sub_10076044C();
    if (v33)
    {
      v34 = v33;
      [v33 size];
    }
  }

  sub_1007672CC();
  v30(v54, v31, v27);
  v65 = v51;
  v66 = &protocol witness table for LayoutViewPlaceholder;
  v64 = v53;
  sub_10000A570(v70, v63);
  v35 = v68;
  v36 = v69;
  v37 = sub_10000CF78(&v67, v68);
  v62[3] = v35;
  v62[4] = *(v36 + 8);
  v38 = sub_10000DB7C(v62);
  (*(*(v35 - 8) + 16))(v38, v37, v35);

  v39 = v57;
  sub_1007672EC();
  sub_1003E7E60(&unk_100956540, &type metadata accessor for ProductCapabilityLayout);
  v40 = v60;
  sub_10076D2AC();
  v42 = v41;

  (*(v59 + 8))(v39, v40);
  (*(v29 + 8))(v31, v27);
  sub_10000CD74(v70);
  sub_10000CD74(&v67);
  return v42;
}

uint64_t sub_1003E7E60(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1003E7EA8()
{
  v1 = v0;
  v2 = sub_10076D3DC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076771C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  v12 = OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_itemLayoutContext;
  v13 = sub_10076341C();
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_iconImageView;
  *(v1 + v14) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15 = OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_iconPositioningView;
  *(v1 + v15) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_titleLabel;
  if (qword_100940D70 != -1)
  {
    swift_once();
  }

  v17 = sub_10000A61C(v2, qword_1009A1648);
  v18 = *(v3 + 16);
  v18(v11, v17, v2);
  (*(v3 + 56))(v11, 0, 1, v2);
  (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
  v19 = objc_allocWithZone(sub_1007626BC());
  *(v1 + v16) = sub_1007626AC();
  v20 = OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_captionLabel;
  if (qword_100940D78 != -1)
  {
    swift_once();
  }

  v21 = sub_10000A61C(v2, qword_1009A1660);
  v22 = v25;
  v18(v25, v21, v2);
  v23 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  *(v1 + v20) = sub_10050BDFC(v22, 0, 0);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_icon) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1003E8288()
{
  v0 = sub_10076E1EC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076E21C();
  sub_10000DB18(v4, qword_10099F8A8);
  sub_10000A61C(v4, qword_10099F8A8);
  (*(v1 + 104))(v3, enum case for Separator.Position.bottom(_:), v0);
  v7[3] = sub_10076D67C();
  v7[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v7);
  sub_10076D66C();
  return sub_10076E1FC();
}

void sub_1003E83C0()
{
  v1 = v0;
  v2 = sub_10076E21C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v1[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_hasSeparator] & 1) == 0)
  {
    v13 = &v1[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_separatorView];
    v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_separatorView];
LABEL_10:
    if (!v14)
    {
      v12 = 0;
      goto LABEL_14;
    }

    v19 = v14;
    v12 = 0;
    v18 = v14;
LABEL_12:
    [v18 removeFromSuperview];
    goto LABEL_14;
  }

  if (qword_1009403E0 != -1)
  {
    v27 = v4;
    swift_once();
    v4 = v27;
  }

  v7 = v4;
  v8 = sub_10000A61C(v4, qword_10099F8A8);
  (*(v3 + 16))(v6, v8, v7);
  v9 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
  swift_beginAccess();
  v11 = *(v3 + 40);
  v12 = v9;
  v11(&v9[v10], v6, v7);
  swift_endAccess();

  v13 = &v1[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_separatorView];
  v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_separatorView];
  if (!v12)
  {
    goto LABEL_10;
  }

  if (v14)
  {
    v15 = v14;
    v16 = v12;
    v17 = sub_100770EEC();

    if ((v17 & 1) == 0)
    {
      v18 = *v13;
      if (*v13)
      {
        goto LABEL_12;
      }
    }
  }

LABEL_14:
  v20 = *v13;
  *v13 = v12;
  v21 = v12;

  v22 = *v13;
  if (v14)
  {
    if (!v22)
    {
      goto LABEL_22;
    }

    type metadata accessor for SeparatorView();
    v14 = v14;
    v23 = v22;
    v24 = sub_100770EEC();

    if (v24)
    {
      goto LABEL_22;
    }

    v22 = *v13;
    if (!*v13)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v22)
  {
    v14 = 0;
LABEL_21:
    v25 = v22;
    v26 = [v1 contentView];
    [v26 addSubview:v25];

    v21 = v25;
    v14 = v26;
LABEL_22:

    v21 = v14;
  }
}

uint64_t sub_1003E86BC()
{
  if (qword_1009411F0 != -1)
  {
    swift_once();
  }

  v0 = sub_10076D9AC();
  v1 = sub_10000A61C(v0, qword_1009A2350);
  qword_10099F8D8 = v0;
  unk_10099F8E0 = &protocol witness table for StaticDimension;
  v2 = sub_10000DB7C(qword_10099F8C0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

char *sub_1003E8778(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10076771C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v14 - 8);
  v16 = &v47 - v15;
  v17 = OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_expandableTextView;
  sub_1000325F0();
  v18 = sub_100770D7C();
  v19 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  *&v5[v17] = sub_10073C780(v18, 0.0, 0.0, 0.0, 0.0);
  v20 = OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_versionMetadata;
  if (qword_100940B58 != -1)
  {
    swift_once();
  }

  v21 = sub_10076D3DC();
  v22 = sub_10000A61C(v21, qword_1009A1000);
  v23 = *(v21 - 8);
  (*(v23 + 16))(v16, v22, v21);
  (*(v23 + 56))(v16, 0, 1, v21);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v24 = objc_allocWithZone(sub_1007626BC());
  *&v5[v20] = sub_1007626AC();
  v25 = OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_lockupView;
  *&v5[v25] = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_hasSeparator] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_separatorView] = 0;
  v26 = OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
  v27 = sub_10076BD9C();
  (*(*(v27 - 8) + 56))(&v5[v26], 1, 1, v27);
  v28 = type metadata accessor for UpdatesLockupCollectionViewCell();
  v47.receiver = v5;
  v47.super_class = v28;
  v29 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  v30 = [v29 contentView];
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v31 = [v29 contentView];
  [v31 addSubview:*&v29[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_lockupView]];

  v32 = OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_expandableTextView;
  v33 = *&v29[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_expandableTextView];
  v34 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines;
  v35 = *&v33[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines];
  *&v33[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines] = 2;
  v36 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed;
  if (v33[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed] == 1)
  {
    v37 = *&v33[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel];
    v38 = v33;
    [v37 setNumberOfLines:2];
    if (*&v33[v34] == v35)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v39 = v33;
    if (v35 == 2)
    {
      goto LABEL_9;
    }
  }

  if (v33[v36])
  {
    sub_10073D75C();
  }

LABEL_9:

  v40 = [v29 contentView];
  [v40 addSubview:*&v29[v32]];

  v41 = [v29 contentView];
  v42 = OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_versionMetadata;
  [v41 addSubview:*&v29[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_versionMetadata]];

  v43 = *&v29[v42];
  v44 = sub_100770D1C();
  [v43 setTextColor:v44];

  v45 = sub_100770D7C();
  [v29 setBackgroundColor:v45];

  return v29;
}

void sub_1003E8DA4()
{
  v1 = [v0 contentView];
  v2 = [v0 backgroundColor];
  [v1 setBackgroundColor:v2];

  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_lockupView];
  v4 = [v0 backgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_expandableTextView];
  v6 = [v0 backgroundColor];
  [v5 setBackgroundColor:v6];

  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_versionMetadata];
  v8 = [v0 backgroundColor];
  [v7 setBackgroundColor:v8];
}

uint64_t sub_1003E8EE4()
{
  v62 = sub_10076E21C();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v59 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10077164C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UpdatesLockupCollectionViewCell();
  v68.receiver = v0;
  v68.super_class = v6;
  objc_msgSendSuper2(&v68, "layoutSubviews");
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_lockupView];
  sub_10076422C();
  [v7 sizeThatFits:{v8, v9}];
  v11 = v10;
  sub_10076422C();
  MinX = CGRectGetMinX(v69);
  sub_10076422C();
  MinY = CGRectGetMinY(v70);
  sub_10076422C();
  Width = CGRectGetWidth(v71);
  [v7 setFrame:{MinX, MinY, Width, v11}];
  if (qword_1009403E8 != -1)
  {
    swift_once();
  }

  sub_10000A570(qword_10099F8C0, v66);
  sub_10076422C();
  Height = CGRectGetHeight(v72);
  v73.origin.x = MinX;
  v73.origin.y = MinY;
  v73.size.width = Width;
  v73.size.height = v11;
  v16 = CGRectGetHeight(v73);
  sub_10000CF78(v66, v67);
  sub_1000FF02C();
  sub_10076D40C();
  v18 = v17;
  v19 = v3 + 8;
  v20 = *(v3 + 8);
  v65 = v19;
  v20(v5, v2);
  v21 = Height - (v16 + v18);
  v22 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_versionMetadata];
  sub_10076422C();
  v64 = v22;
  [v22 sizeThatFits:{v23, v24}];
  v26 = v25;
  v27 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_expandableTextView];
  v63 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed;
  if ((v27[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed] & 1) == 0)
  {
    sub_10000CF78(v66, v67);
    sub_1000FF02C();
    sub_10076D40C();
    v29 = v28;
    v20(v5, v2);
    v21 = v21 - (v26 + v29);
  }

  sub_10076422C();
  [v27 measurementsWithFitting:v0 in:{CGRectGetWidth(v74), v21}];
  v31 = v30;
  sub_10076422C();
  v32 = CGRectGetMinX(v75);
  v76.origin.x = MinX;
  v76.origin.y = MinY;
  v76.size.width = Width;
  v76.size.height = v11;
  MaxY = CGRectGetMaxY(v76);
  sub_10000CF78(v66, v67);
  sub_1000FF02C();
  sub_10076D40C();
  v35 = v34;
  v20(v5, v2);
  sub_10076422C();
  [v27 setFrame:{v32, MaxY + v35, CGRectGetWidth(v77), v31}];
  [v27 frame];
  v36 = CGRectGetMinX(v78);
  [v27 frame];
  v37 = CGRectGetMaxY(v79);
  sub_10000CF78(v66, v67);
  sub_1000FF02C();
  sub_10076D40C();
  v39 = v38;
  v20(v5, v2);
  sub_10076422C();
  v40 = CGRectGetWidth(v80);
  v41 = v64;
  [v64 setFrame:{v36, v37 + v39, v40, v26}];
  v42 = 1.0;
  if (v27[v63])
  {
    v42 = 0.0;
  }

  [v41 setAlpha:v42];
  v43 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_separatorView];
  if (v43)
  {
    v44 = v43;
    sub_10076422C();
    CGRectGetMinX(v81);
    [v0 bounds];
    CGRectGetMinY(v82);
    sub_10076422C();
    CGRectGetWidth(v83);
    [v0 bounds];
    CGRectGetHeight(v84);
    v45 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
    swift_beginAccess();
    v46 = v61;
    v47 = &v44[v45];
    v48 = v60;
    v49 = v62;
    (*(v61 + 16))(v60, v47, v62);
    sub_10076E1CC();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    (*(v46 + 8))(v48, v49);
    [v44 setFrame:{v51, v53, v55, v57}];
  }

  return sub_10000CD74(v66);
}

id sub_1003E95B4()
{
  v1 = v0;
  v2 = sub_10000A5D4(&qword_100943190);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for UpdatesLockupCollectionViewCell();
  v13.receiver = v0;
  v13.super_class = v5;
  objc_msgSendSuper2(&v13, "prepareForReuse");
  v6 = *(*&v0[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  v14.value.super.isa = 0;
  v14.is_nil = 0;
  sub_10075FCEC(v14, v7);

  v8 = sub_10076BD9C();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
  swift_beginAccess();
  sub_1003EAED8(v4, &v1[v9]);
  swift_endAccess();
  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_expandableTextView];
  sub_10073CEFC(0, 0);
  [v10 setNeedsLayout];
  return [*&v1[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_versionMetadata] setText:0];
}

void sub_1003E977C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000A5D4(&qword_100943190);
  __chkstk_darwin(v6 - 8);
  v8 = &v24[-v7 - 8];
  v9 = sub_10076BF6C();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10076BEDC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (a1)
  {
    v23 = a2;

    sub_10076BEEC();
    v14 = sub_10076BE9C();
    (*(v11 + 8))(v13, v10);
    if (qword_10093FBE0 != -1)
    {
      swift_once();
    }

    v15 = sub_100763ADC();
    sub_10000A61C(v15, qword_10099DDA0);
    sub_1007639AC();
    sub_10076BFCC();
    v16 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_lockupView);
    v17 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
    v18 = *(v16 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
    sub_10076BF7C();
    sub_10075FCCC();
    [v18 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_1000325F0();
      sub_100770D5C();
    }

    sub_10075FB8C();

    [*(v16 + v17) setContentMode:v14];
    sub_10076C01C();
    v19 = sub_10076BD9C();
    (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
    v20 = OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
    swift_beginAccess();
    sub_1003EAED8(v8, v3 + v20);
    swift_endAccess();
    sub_100760C4C();
    v21 = *(v16 + v17);
    sub_10075FD2C();
    v22 = v21;
    sub_100760BCC();

    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_100760B7C();

    sub_10000CFBC(v24, &qword_100943310);
  }
}

void sub_1003E9B4C(objc_class *a1, int a2, uint64_t a3)
{
  v39 = a2;
  v5 = sub_10000A5D4(&qword_100943190);
  __chkstk_darwin(v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v34 - v9;
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  v14 = sub_10076BD9C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v38 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v34 - v18;
  sub_10003267C(a3, v13);
  v20 = *(v15 + 48);
  if (v20(v13, 1, v14) == 1)
  {
    v10 = v13;
  }

  else
  {
    v37 = a1;
    v36 = *(v15 + 32);
    v36(v19, v13, v14);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v35 = v7;
      v22 = OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
      v23 = Strong;
      swift_beginAccess();
      sub_10003267C(v23 + v22, v10);

      if (v20(v10, 1, v14) != 1)
      {
        v31 = v38;
        v36(v38, v10, v14);
        sub_1003EAF88(&qword_100943198, &type metadata accessor for Artwork.URLTemplate);
        v32 = sub_10076FF1C();
        v33 = *(v15 + 8);
        v33(v31, v14);
        v33(v19, v14);
        v7 = v35;
        a1 = v37;
        if ((v32 & 1) == 0)
        {
          return;
        }

        goto LABEL_9;
      }

      (*(v15 + 8))(v19, v14);
      v7 = v35;
    }

    else
    {
      (*(v15 + 8))(v19, v14);
      (*(v15 + 56))(v10, 1, 1, v14);
    }

    a1 = v37;
  }

  sub_10000CFBC(v10, &qword_100943190);
LABEL_9:
  swift_beginAccess();
  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    v26 = *(*(v24 + OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);

    v40.is_nil = (v39 & 1) == 0;
    v40.value.super.isa = a1;
    sub_10075FC5C(v40, v27);
  }

  swift_beginAccess();
  v28 = swift_unknownObjectWeakLoadStrong();
  if (v28)
  {
    v29 = v28;
    (*(v15 + 56))(v7, 1, 1, v14);
    v30 = OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
    swift_beginAccess();
    sub_1003EAED8(v7, v29 + v30);
    swift_endAccess();
  }
}

double sub_1003E9FB0(double a1, double a2)
{
  v3 = v2;
  v6 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v6 - 8);
  v8 = &v80 - v7;
  v83 = sub_10076443C();
  v9 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v82 = &v80 - v12;
  v13 = sub_100763ADC();
  v93 = *(v13 - 8);
  v94 = v13;
  __chkstk_darwin(v13);
  v95 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_10077164C();
  v87 = *(v92 - 8);
  *&v15 = __chkstk_darwin(v92).n128_u64[0];
  v91 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_expandableTextView];
  v18 = [*(v17 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel) attributedText];
  v19 = *(v17 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed);
  v88 = v3[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_hasSeparator];
  v20 = [*&v3[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_versionMetadata] text];
  if (v20)
  {
    v21 = v20;
    v85 = sub_10076FF9C();
    v89 = v22;
  }

  else
  {
    v85 = 0;
    v89 = 0;
  }

  [v3 layoutMargins];
  v27 = v26;
  if (v19)
  {
    v28 = 2;
  }

  else
  {
    v28 = 0;
  }

  v90 = v18;
  v84 = v24;
  if (v18)
  {
    v29 = v23;
    if (a2 >= a1)
    {
      v30 = a1;
    }

    else
    {
      v30 = a2;
    }

    v31 = a1;
    if (v30 != 0.0)
    {
      v32 = v24;
      v33 = v25;
      v34 = v18;
      v35 = [v3 traitCollection];
      v36 = type metadata accessor for ExpandableTextView.MeasurementsCacheKey();
      v37 = objc_allocWithZone(v36);
      v38 = &v37[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_layoutMargins];
      *v38 = v29;
      *(v38 + 1) = v32;
      *(v38 + 2) = v33;
      *(v38 + 3) = v27;
      *&v37[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_numberOfLines] = v28;
      v39 = &v37[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_fittingSize];
      *v39 = a1;
      v39[1] = a2;
      *&v37[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_traitCollection] = v35;
      *&v37[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_attributedText] = v34;
      v97.receiver = v37;
      v97.super_class = v36;
      v40 = objc_msgSendSuper2(&v97, "init");
      if (qword_1009415A0 != -1)
      {
        swift_once();
      }

      v41 = qword_1009678B0;
      v42 = [qword_1009678B0 objectForKey:v40];
      if (v42)
      {
        v43 = v42;

        v31 = *&v43[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D610CacheValue_measurements];
      }

      else
      {
        v86 = v41;
        v44 = qword_100941598;
        v43 = v34;
        if (v44 != -1)
        {
          swift_once();
        }

        v45 = sub_10076D3DC();
        v46 = sub_10000A61C(v45, qword_100967898);
        v47 = *(v45 - 8);
        (*(v47 + 16))(v8, v46, v45);
        (*(v47 + 56))(v8, 0, 1, v45);
        sub_10076D80C();
        sub_10076D82C();
        sub_10076D81C();
        v49 = v48;
        v51 = v50;
        v53 = v52;

        sub_10000CFBC(v8, &unk_100943250);
        v54 = type metadata accessor for ExpandableTextView.CacheValue();
        v55 = objc_allocWithZone(v54);
        v56 = &v55[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D610CacheValue_measurements];
        *v56 = a1;
        v56[1] = v29 + v33 + v49;
        *(v56 + 2) = v51;
        *(v56 + 3) = v53;
        v96.receiver = v55;
        v96.super_class = v54;
        v57 = objc_msgSendSuper2(&v96, "init");
        [v86 setObject:v57 forKey:v40];

        v31 = a1;
      }
    }
  }

  else
  {
    v31 = a1;
  }

  if (qword_1009403E8 != -1)
  {
    swift_once();
  }

  LODWORD(v86) = v19;
  sub_10000CF78(qword_10099F8C0, qword_10099F8D8);
  v58 = v91;
  sub_1000FF02C();
  sub_10076D40C();
  v59 = *(v87 + 8);
  v59(v58, v92);
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v60 = v94;
  v61 = sub_10000A61C(v94, qword_10099DDA0);
  v62 = [v3 traitCollection];
  (*(v93 + 16))(v95, v61, v60);
  v63 = sub_100763A4C();
  if ((v65 & 1) == 0 && ((v63 | v64) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_10077071C())
    {
      if (qword_10093F520 != -1)
      {
        swift_once();
      }

      v66 = qword_100944C88;
    }

    else
    {
      if (qword_10093F528 != -1)
      {
        swift_once();
      }

      v66 = qword_100944CA0;
    }

    v67 = v83;
    v68 = sub_10000A61C(v83, v66);
    v69 = v81;
    (*(v9 + 16))(v81, v68, v67);
    v70 = v82;
    (*(v9 + 32))(v82, v69, v67);
    sub_1007643EC();
    sub_10076441C();
    sub_100763A5C();
    (*(v9 + 8))(v70, v67);
  }

  v71 = v95;
  sub_10076398C();

  (*(v93 + 8))(v71, v94);
  if ((v89 == 0) | v86 & 1)
  {
    v72 = v90;
  }

  else
  {
    sub_10000CF78(qword_10099F8C0, qword_10099F8D8);
    v73 = v91;
    sub_1000FF02C();
    sub_10076D40C();
    v59(v73, v92);
    v72 = v90;
    if (qword_100940B58 != -1)
    {
      swift_once();
    }

    v74 = sub_10076D3DC();
    sub_10000A61C(v74, qword_1009A1000);
    v75 = sub_10076C04C();
    v98[3] = v75;
    v98[4] = sub_1003EAF88(&qword_100943230, &type metadata accessor for Feature);
    v76 = sub_10000DB7C(v98);
    (*(*(v75 - 8) + 104))(v76, enum case for Feature.measurement_with_labelplaceholder(_:), v75);
    sub_10076C90C();
    sub_10000CD74(v98);
    sub_10076991C();
  }

  if (v88)
  {
    if (qword_1009403E0 != -1)
    {
      swift_once();
    }

    v77 = sub_10076E21C();
    sub_10000A61C(v77, qword_10099F8A8);
    sub_100770AFC();
    v31 = v78;
  }

  return v31;
}

id sub_1003EAB5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpdatesLockupCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for UpdatesLockupCollectionViewCell()
{
  result = qword_1009565A8;
  if (!qword_1009565A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003EAC68()
{
  sub_1003EAD20();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1003EAD20()
{
  if (!qword_100954DD0)
  {
    sub_10076BD9C();
    v0 = sub_1007711AC();
    if (!v1)
    {
      atomic_store(v0, &qword_100954DD0);
    }
  }
}

uint64_t sub_1003EAD98()
{
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v0 = sub_100763ADC();
  sub_10000A61C(v0, qword_10099DDA0);
  return sub_1007639AC();
}

void sub_1003EAE14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1001E2BC0(a1, a2, a3, WitnessTable);
}

uint64_t sub_1003EAE80(uint64_t a1)
{
  result = sub_1003EAF88(&qword_1009565B8, type metadata accessor for UpdatesLockupCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1003EAED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100943190);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003EAF48()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1003EAF88(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1003EAFD0()
{
  v1 = v0;
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_expandableTextView;
  sub_1000325F0();
  v10 = sub_100770D7C();
  v11 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  *(v1 + v9) = sub_10073C780(v10, 0.0, 0.0, 0.0, 0.0);
  v12 = OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_versionMetadata;
  if (qword_100940B58 != -1)
  {
    swift_once();
  }

  v13 = sub_10076D3DC();
  v14 = sub_10000A61C(v13, qword_1009A1000);
  v15 = *(v13 - 8);
  (*(v15 + 16))(v8, v14, v13);
  (*(v15 + 56))(v8, 0, 1, v13);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v16 = objc_allocWithZone(sub_1007626BC());
  *(v1 + v12) = sub_1007626AC();
  v17 = OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_lockupView;
  *(v1 + v17) = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_hasSeparator) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_separatorView) = 0;
  v18 = OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
  v19 = sub_10076BD9C();
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  sub_10077156C();
  __break(1u);
}

void sub_1003EB2F8(uint64_t a1, char a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ((sub_1000735EC() & 1) == 0)
    {
      goto LABEL_10;
    }

    v7 = [v6 view];
    if (v7)
    {
      v8 = v7;
      type metadata accessor for InsetCollectionViewControllerContentView();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = *(v9 + OBJC_IVAR____TtC20ProductPageExtensionP33_6AB601F6024DE25A6D4830FED98485CA40InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

        if (v10 & 1) == 0 && (a2)
        {

          if ((a3 & 1) != 0 || (v11 = *&v6[qword_10099CC20]) == 0)
          {
            v12 = 1;
          }

          else
          {
            [*(v11 + OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView_lockupView) setAlpha:1.0];
            v12 = 1;
          }

LABEL_24:
          sub_1003EB560(v12);
LABEL_25:

          return;
        }

LABEL_10:
        v13 = *&v6[qword_10099CC28];
        if (v13)
        {
          v14 = *&v6[qword_10099CC20];

          if (v14 || (v15 = [v6 traitCollection], v16 = sub_1007706CC(), v15, (v16 & 1) != 0))
          {
            v17 = [v6 collectionView];

            if (v17)
            {
              [v17 _systemContentInset];
              v19 = v18;
              [v17 contentOffset];
              v21 = v20;
              v22 = [v17 contentInset];
              v23.n128_f64[0] = fmin((v19 + v21 + v23.n128_f64[0] - *(v13 + 32)) / *(v13 + 40), 1.0);
              if (v23.n128_f64[0] < 0.0)
              {
                v23.n128_f64[0] = 0.0;
              }

              (*(v13 + 16))(v22, v23);

              goto LABEL_25;
            }

LABEL_29:
            __break(1u);
            return;
          }
        }

        v24 = *&v6[qword_10099CC20];
        if (v24)
        {
          v25 = 0.0;
          if (a2)
          {
            v25 = 1.0;
          }

          [*(v24 + OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView_lockupView) setAlpha:v25];
        }

        v12 = a2 & 1;
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_29;
  }
}

void sub_1003EB560(char a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = sub_1007706CC();

  if (v5)
  {
    if (a1)
    {
      sub_1000325F0();
      v6 = sub_100770E1C();
    }

    else
    {
      v6 = [objc_opt_self() whiteColor];
    }

    v12 = v6;
    v10 = [v2 navigationItem];
    v11 = [v10 rightBarButtonItem];

    if (!v11)
    {
      goto LABEL_13;
    }

    v9 = [v11 customView];

    if (!v9)
    {
      goto LABEL_13;
    }

    [v9 setTintColor:v12];
  }

  else
  {
    v7 = [v2 navigationItem];
    v8 = [v7 rightBarButtonItem];

    if (!v8)
    {
      return;
    }

    v9 = [v8 customView];

    if (!v9)
    {
      return;
    }

    v12 = [objc_opt_self() whiteColor];
    [v9 setTintColor:v12];
  }

LABEL_13:
}

uint64_t sub_1003EB74C(uint64_t result, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_title);
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_title);
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_title + 8);
  *v3 = result;
  v3[1] = a2;
  if (a2)
  {
    if (v5)
    {
      v6 = v4 == result && v5 == a2;
      if (v6 || (sub_10077167C() & 1) != 0)
      {
        goto LABEL_11;
      }
    }
  }

  else if (!v5)
  {
    return result;
  }

  sub_1003EB8BC();
LABEL_11:
}

void sub_1003EB7CC(id a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleTextColor);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleTextColor) = a1;
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    v7 = v3;
    goto LABEL_8;
  }

  v7 = v3;
  if (!v3)
  {
    a1 = a1;
    goto LABEL_8;
  }

  sub_100016F40(0, &qword_100942F10);
  a1 = a1;
  v4 = v7;
  v5 = sub_100770EEC();

  if ((v5 & 1) == 0)
  {
LABEL_8:
    sub_1003EB8BC();

    v6 = v7;
    goto LABEL_9;
  }

  v6 = v4;
LABEL_9:
}

id sub_1003EB8BC()
{
  if (*&v0[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_title + 8])
  {
    if (v0[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_isBetaApp] == 1)
    {

      v1 = sub_1003EBAFC();
      v2 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v1];

      v3 = objc_allocWithZone(NSMutableAttributedString);
      v4 = sub_10076FF6C();

      v5 = [v3 initWithString:v4];

      v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleTextColor];
      if (v6)
      {
        v7 = v6;
        [v5 addAttribute:NSForegroundColorAttributeName value:v7 range:{0, objc_msgSend(v5, "length")}];
      }

      [v2 appendAttributedString:v5];
      [*&v0[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel] setAttributedText:v2];
    }

    else
    {
      v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel];

      [v13 setAttributedText:0];
      v14 = sub_10076FF6C();

      [v13 setText:v14];

      [v13 setTextColor:*&v0[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleTextColor]];
    }

    v10 = "setNeedsLayout";
    v11 = v0;
  }

  else
  {
    v9 = *&v0[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel];
    [v9 setAttributedText:0];
    v10 = "setText:";
    v11 = v9;
    v8 = 0;
  }

  return [v11 v10];
}

id sub_1003EBAFC()
{
  v1 = sub_10077164C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(NSMutableAttributedString) init];
  v6 = sub_1005A5DB8(0xD000000000000014, 0x80000001007E3E90, 0);
  if (qword_1009403F0 != -1)
  {
    swift_once();
  }

  v7 = sub_10076D9AC();
  sub_10000A61C(v7, qword_1009565C0);
  sub_10076D17C();
  sub_10076D40C();
  v9 = v8;
  v10 = *(v2 + 8);
  v30 = v1;
  v10(v4, v1);
  sub_100016F40(0, &qword_100942F00);
  if (qword_100940A48 != -1)
  {
    swift_once();
  }

  v11 = sub_10076D3DC();
  sub_10000A61C(v11, qword_1009A0CE8);
  v12 = [v0 traitCollection];
  v13 = sub_100770B3C();

  v29 = v13;
  [v13 capHeight];
  v15 = floor((v14 - v9) * 0.5);
  v16 = [objc_allocWithZone(NSTextAttachment) init];
  v17 = [objc_opt_self() systemYellowColor];
  v18 = [v6 imageWithTintColor:v17];
  v28 = v6;
  v19 = v18;

  [v16 setImage:v19];
  [v16 setBounds:{0.0, v15, v9, v9}];
  sub_100016F40(0, &unk_10094E7F0);
  v20 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment:v16];
  [v5 appendAttributedString:v20];
  if (qword_1009403F8 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v7, qword_1009565D8);
  sub_10076D17C();
  sub_10076D40C();
  v22 = v21;
  v10(v4, v30);
  v23 = [objc_allocWithZone(NSTextAttachment) init];
  [v23 setBounds:{0.0, 0.0, v22, 0.0}];
  v24 = [objc_allocWithZone(UIImage) init];
  [v23 setImage:v24];

  v25 = [objc_opt_self() attributedStringWithAttachment:v23];
  [v5 appendAttributedString:v25];

  return v5;
}

id sub_1003EBF74(char a1, uint64_t a2)
{
  v5 = sub_10076771C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100943250);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v21 - v11;
  v13 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel;
  result = *(v2 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel);
  if (a1)
  {
    if (result)
    {
      goto LABEL_6;
    }

    v15 = v2;
    if (qword_100940A40 != -1)
    {
      swift_once();
    }

    v16 = sub_10076D3DC();
    v17 = sub_10000A61C(v16, qword_1009A0CD0);
    v18 = *(v16 - 8);
    (*(v18 + 16))(v12, v17, v16);
    (*(v18 + 56))(v12, 0, 1, v16);
    (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
    v19 = objc_allocWithZone(sub_1007626BC());
    v20 = sub_1007626AC();
    v2 = v15;
    sub_1003EB734(v20);
    result = *(v15 + v13);
    if (result)
    {
LABEL_6:
      [result setTextColor:{a2, v10}];
      result = *(v2 + v13);
      if (result)
      {
        return [result setHidden:0];
      }
    }
  }

  else if (result)
  {
    [result setHidden:{1, v10}];
    result = *(v2 + v13);
    if (result)
    {

      return [result setText:0];
    }
  }

  return result;
}

void sub_1003EC234()
{
  v1 = v0;
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel;
  v10 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel);
  if (v10)
  {
    goto LABEL_5;
  }

  if (qword_100940A90 != -1)
  {
    swift_once();
  }

  v11 = sub_10076D3DC();
  v12 = sub_10000A61C(v11, qword_1009A0DC0);
  v13 = *(v11 - 8);
  (*(v13 + 16))(v8, v12, v11);
  (*(v13 + 56))(v8, 0, 1, v11);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v14 = objc_allocWithZone(sub_1007626BC());
  v15 = sub_1007626AC();
  sub_1003EB740(v15);
  v10 = *(v1 + v9);
  if (v10)
  {
LABEL_5:
    v16 = v10;
    sub_10076266C();

    v17 = *(v1 + v9);
    if (v17)
    {
      sub_100016F40(0, &qword_100942F10);
      v18 = v17;
      v19 = sub_100770D0C();
      [v18 setTextColor:v19];

      v20 = *(v1 + v9);
      if (v20)
      {
        [v20 setHidden:0];
      }
    }
  }
}

uint64_t sub_1003EC4FC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10076D1AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076D9AC();
  sub_10000DB18(v7, a2);
  sub_10000A61C(v7, a2);
  if (qword_100940A48 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  v9 = sub_10000A61C(v8, qword_1009A0CE8);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_10000DB7C(v13);
  (*(v4 + 16))(v10, v6, v3);
  sub_10076D9BC();
  return (*(v4 + 8))(v6, v3);
}

void sub_1003EC6D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_stateMachine);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_stateMachine + 8);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v3 = sub_10075ECDC();
    v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_isBetaApp);
    *(v0 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_isBetaApp) = v3 & 1;
    if ((v3 & 1) != v4)
    {
      sub_1003EB8BC();
    }

    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    v6[2] = v5;
    v6[3] = v1;
    v6[4] = v2;
    swift_unknownObjectRetain();

    sub_10075ECEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_isBetaApp);
    *(v0 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_isBetaApp) = 0;
    if (v7 == 1)
    {

      sub_1003EB8BC();
    }
  }
}

void sub_1003EC86C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getObjectType();
    v2 = sub_10075ECDC();
    v3 = v1[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_isBetaApp];
    v1[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_isBetaApp] = v2 & 1;
    if ((v2 & 1) != v3)
    {
      sub_1003EB8BC();
    }
  }
}

char *sub_1003EC900(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v74 = sub_10076F9AC();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v72 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_10076771C();
  v11 = *(v78 - 8);
  __chkstk_darwin(v78);
  v13 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v14 - 8);
  v16 = v67 - v15;
  v17 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
  sub_10075FD2C();
  *&v4[v17] = sub_10075FB3C();
  v18 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_ordinalLabel;
  if (qword_100940AA8 != -1)
  {
    swift_once();
  }

  v19 = sub_10076D3DC();
  v20 = sub_10000A61C(v19, qword_1009A0E08);
  v21 = *(v19 - 8);
  v22 = v21 + 16;
  v79 = *(v21 + 16);
  v79(v16, v20, v19);
  v24 = *(v21 + 56);
  v23 = v21 + 56;
  v77 = v24;
  v24(v16, 0, 1, v19);
  v25 = *(v11 + 104);
  v75 = v11 + 104;
  v76 = enum case for DirectionalTextAlignment.none(_:);
  v25(v13);
  v26 = sub_1007626BC();
  v27 = objc_allocWithZone(v26);
  *&v4[v18] = sub_1007626AC();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel] = 0;
  v28 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel;
  if (qword_100940A48 != -1)
  {
    swift_once();
  }

  v29 = sub_10000A61C(v19, qword_1009A0CE8);
  v79(v16, v29, v19);
  v77(v16, 0, 1, v19);
  (v25)(v13, v76, v78);
  v30 = objc_allocWithZone(v26);
  *&v4[v28] = sub_1007626AC();
  v70 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel;
  v31 = v13;
  v71 = v25;
  if (qword_100940A68 != -1)
  {
    swift_once();
  }

  v69 = sub_10000A61C(v19, qword_1009A0D48);
  v79(v16, v69, v19);
  v32 = v77;
  v77(v16, 0, 1, v19);
  v33 = v76;
  v67[1] = v23;
  v34 = v78;
  v67[0] = v22;
  v35 = v71;
  (v71)(v31, v76, v78);
  v36 = objc_allocWithZone(v26);
  v68 = v26;
  *&v4[v70] = sub_1007626AC();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel] = 0;
  v37 = v34;
  v38 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel;
  v79(v16, v69, v19);
  v32(v16, 0, 1, v19);
  v35(v31, v33, v37);
  v39 = objc_allocWithZone(v68);
  *&v5[v38] = sub_1007626AC();
  v40 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton;
  v41 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[v40] = sub_1001E89B8(0);
  v42 = &v5[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabelPresenter];
  *v42 = 0u;
  v42[1] = 0u;
  v43 = &v5[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_title];
  *v43 = 0;
  v43[1] = 0;
  v44 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleTextColor;
  sub_100016F40(0, &qword_100942F10);
  *&v5[v44] = sub_100770CFC();
  v45 = &v5[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_stateMachine];
  *v45 = 0;
  v45[1] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_isBetaApp] = 0;
  v46 = type metadata accessor for BaseLockupView();
  v82.receiver = v5;
  v82.super_class = v46;
  v47 = objc_msgSendSuper2(&v82, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v51 = v47;
  [v51 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v51 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v52 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
  [v51 addSubview:*&v51[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView]];
  v53 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_ordinalLabel;
  v54 = *&v51[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_ordinalLabel];
  sub_10076266C();

  [v51 addSubview:*&v51[v53]];
  v55 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel;
  v56 = *&v51[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel];
  sub_10076266C();

  [v51 addSubview:*&v51[v55]];
  v57 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel;
  v58 = *&v51[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel];
  v59 = sub_100770D1C();
  [v58 setTextColor:v59];

  v60 = *&v51[v57];
  sub_10076266C();

  [v51 addSubview:*&v51[v57]];
  v61 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel;
  [*&v51[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel] _setTextColorFollowsTintColor:1];
  v62 = *&v51[v61];
  sub_10076266C();

  [*&v51[v61] setText:0];
  [*&v51[v61] setHidden:1];
  [v51 addSubview:*&v51[v61]];
  [v51 addSubview:*&v51[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton]];
  v63 = *&v51[v52];
  memset(v81, 0, sizeof(v81));
  memset(v80, 0, sizeof(v80));
  v64 = v63;
  v65 = v72;
  sub_10076F95C();
  sub_1000258C0(v80);
  sub_1000258C0(v81);
  sub_100770B9C();

  (*(v73 + 8))(v65, v74);
  return v51;
}

id sub_1003ED1F0()
{
  if (*&v0[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_stateMachine])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v1 = v0;
    sub_10075ED0C();

    swift_unknownObjectRelease();
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for BaseLockupView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1003ED3A4(id a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for BaseLockupView();
  objc_msgSendSuper2(&v11, "traitCollectionDidChange:", a1);
  if (a1)
  {
    a1 = [a1 preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_11:
    if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_isBetaApp) == 1)
    {
      sub_1003EB8BC();
    }

    return;
  }

  v5 = sub_10076FF9C();
  v7 = v6;
  if (v5 == sub_10076FF9C() && v7 == v8)
  {

    return;
  }

  v10 = sub_10077167C();

  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }
}

uint64_t sub_1003ED5EC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1003ED624()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1003ED670()
{
  v49 = sub_10076771C();
  v1 = *(v49 - 8);
  __chkstk_darwin(v49);
  v3 = v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v4 - 8);
  v6 = v40 - v5;
  v7 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
  sub_10075FD2C();
  *(v0 + v7) = sub_10075FB3C();
  v8 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_ordinalLabel;
  if (qword_100940AA8 != -1)
  {
    swift_once();
  }

  v9 = sub_10076D3DC();
  v10 = sub_10000A61C(v9, qword_1009A0E08);
  v11 = *(v9 - 8);
  v12 = v11 + 16;
  v50 = *(v11 + 16);
  v50(v6, v10, v9);
  v15 = *(v11 + 56);
  v13 = v11 + 56;
  v14 = v15;
  v15(v6, 0, 1, v9);
  v16 = *(v1 + 104);
  v45 = enum case for DirectionalTextAlignment.none(_:);
  v47 = v1 + 104;
  v44 = v16;
  (v16)(v3);
  v48 = sub_1007626BC();
  v17 = objc_allocWithZone(v48);
  *(v0 + v8) = sub_1007626AC();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel) = 0;
  v18 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel;
  if (qword_100940A48 != -1)
  {
    swift_once();
  }

  v19 = sub_10000A61C(v9, qword_1009A0CE8);
  v20 = v12;
  v50(v6, v19, v9);
  v46 = v13;
  v42 = v14;
  v14(v6, 0, 1, v9);
  v44(v3, v45, v49);
  v21 = objc_allocWithZone(v48);
  v22 = v3;
  v23 = sub_1007626AC();
  v43 = v0;
  *(v0 + v18) = v23;
  v41 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel;
  if (qword_100940A68 != -1)
  {
    swift_once();
  }

  v40[0] = sub_10000A61C(v9, qword_1009A0D48);
  v40[1] = v20;
  v50(v6, v40[0], v9);
  v24 = v42;
  v42(v6, 0, 1, v9);
  v25 = v45;
  v26 = v49;
  v27 = v44;
  v44(v22, v45, v49);
  v28 = objc_allocWithZone(v48);
  v29 = sub_1007626AC();
  v30 = v43;
  *(v43 + v41) = v29;
  *(v30 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel) = 0;
  v31 = v26;
  v32 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel;
  v50(v6, v40[0], v9);
  v24(v6, 0, 1, v9);
  v27(v22, v25, v31);
  v33 = objc_allocWithZone(v48);
  *(v30 + v32) = sub_1007626AC();
  v34 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton;
  v35 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v30 + v34) = sub_1001E89B8(0);
  v36 = (v30 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabelPresenter);
  *v36 = 0u;
  v36[1] = 0u;
  v37 = (v30 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_title);
  *v37 = 0;
  v37[1] = 0;
  v38 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleTextColor;
  sub_100016F40(0, &qword_100942F10);
  *(v30 + v38) = sub_100770CFC();
  v39 = (v30 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_stateMachine);
  *v39 = 0;
  v39[1] = 0;
  *(v30 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_isBetaApp) = 0;
  sub_10077156C();
  __break(1u);
}

id sub_1003EDC00()
{
  result = [objc_opt_self() systemGray6Color];
  qword_10099F8F0 = result;
  return result;
}

void sub_1003EDC3C()
{
  v0 = [objc_opt_self() systemBlackColor];
  v1 = [v0 colorWithAlphaComponent:0.05];

  qword_10099F8F8 = v1;
}

id sub_1003EDCA8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC20ProductPageExtension38CondensedSearchEditorialBackgroundView_isBorderHidden] = 0;
  v20.receiver = v4;
  v20.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v11 = qword_100940400;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  [v12 setBackgroundColor:qword_10099F8F0];
  v13 = [v12 layer];
  if (qword_100940408 != -1)
  {
    swift_once();
  }

  v14 = [qword_10099F8F8 CGColor];
  [v13 setBorderColor:v14];

  v15 = [v12 layer];
  v16 = [objc_opt_self() mainScreen];
  [v16 scale];
  v18 = v17;

  [v15 setBorderWidth:1.0 / v18];
  [v12 _setContinuousCornerRadius:16.0];

  return v12;
}

void sub_1003EDF20(void *a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v3 = [a1 userInterfaceStyle];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v1 traitCollection];
  v5 = [v4 userInterfaceStyle];

  if ((!a1 || v3 != v5) && (*(v1 + OBJC_IVAR____TtC20ProductPageExtension38CondensedSearchEditorialBackgroundView_isBorderHidden) & 1) == 0)
  {
    v6 = [v1 layer];
    if (qword_100940408 != -1)
    {
      swift_once();
    }

    v7 = [qword_10099F8F8 CGColor];
    [v6 setBorderColor:v7];
  }
}

double sub_1003EE138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EE1EC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

double sub_1003EE1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v33 = a6;
  v31 = a4;
  v32 = a5;
  v29 = a3;
  v30 = a2;
  v26 = a1;
  v28 = sub_10000A5D4(&unk_1009520A0);
  v14 = *(v28 - 8);
  __chkstk_darwin(v28);
  v16 = &v26 - v15;
  swift_getAssociatedTypeWitness();
  v27 = sub_10076FDAC();
  v17 = *(v27 - 8);
  __chkstk_darwin(v27);
  v19 = &v26 - v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v23 = &v26 - v22;
  sub_10000A570(v26, v34);
  sub_10000A5D4(&qword_1009575A0);
  swift_dynamicCast();
  (*(v14 + 16))(v16, v29, v28);
  sub_10076FDBC();
  v24 = (*(a8 + 48))(v23, v30, v19, v31, v32, v33, a7, a8, a9, a10);
  (*(v17 + 8))(v19, v27);
  (*(v21 + 8))(v23, AssociatedTypeWitness);
  return v24;
}

uint64_t sub_1003EE4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1984(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003EE574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v25 = a6;
  v10 = sub_10000A5D4(&unk_1009520C0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  v14 = sub_10000A5D4(&unk_100946700);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v24 - v16;
  sub_10000A570(a1, v26);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076092C();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v11 + 16))(v13, a2, v10);
    sub_10076FCFC();
    sub_10076F87C();
    v19 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_objectGraph);
    *(v6 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_objectGraph) = a3;

    sub_100595060(v19);

    v20 = v25;
    v21 = [v25 snapshotPageTraitEnvironment];
    *(v6 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_pageTraits) = v21;
    swift_unknownObjectRelease();
    v22 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_flowLayout);
    [v20 pageMarginInsets];
    [v22 setSectionInset:?];

    sub_100594F54(v23);

    return (*(v15 + 8))(v17, v14);
  }

  return result;
}

uint64_t sub_1003EE808(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, void *a6)
{
  v20[0] = a6;
  v10 = sub_10000A5D4(&unk_1009520C0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - v12;
  v14 = sub_10000A5D4(&unk_100946700);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v20 - v16;
  sub_10000A570(a1, v21);
  sub_10000A5D4(&qword_1009575A0);
  sub_100761D1C();
  result = swift_dynamicCast();
  if (result)
  {
    v19 = v20[2];
    (*(v11 + 16))(v13, a2, v10);
    sub_10076FCFC();
    sub_10076F87C();
    sub_1001A69F8(v19, a4, a3, v20[0]);

    return (*(v15 + 8))(v17, v14);
  }

  return result;
}

uint64_t sub_1003EEA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v71 = a4;
  v67 = a3;
  v9 = sub_10000A5D4(&qword_10094BB50);
  __chkstk_darwin(v9 - 8);
  v66 = &v60 - v10;
  v11 = sub_10076664C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_1009520C0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v60 - v17;
  v19 = sub_10000A5D4(&unk_100946700);
  v68 = *(v19 - 8);
  v69 = v19;
  __chkstk_darwin(v19);
  v21 = &v60 - v20;
  sub_10000A570(a1, v73);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076B90C();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  v63 = a6;
  v23 = v72;
  (*(v16 + 16))(v18, a2, v15);
  sub_10076FCFC();
  v64 = v21;
  sub_10076F87C();
  v24 = v65;
  v25 = *&v65[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_textLabel];
  sub_10076B8EC();
  sub_10076260C();

  v26 = v24;
  v27 = *&v24[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_separatorView];
  sub_1007665FC();
  sub_100409428(&unk_100945570, &type metadata accessor for ComponentLayoutOptions);
  v28 = sub_10077124C();
  v29 = *(v12 + 8);
  v30 = v14;
  v31 = v14;
  v62 = v12 + 8;
  v32 = v29;
  v29(v31, v11);
  [v27 setHidden:v28 & 1];
  v70 = v23;
  v33 = sub_10076B8BC();
  v34 = v11;
  v61 = v25;
  if ((v33 & 2) != 0)
  {
    [v25 _setTextColorFollowsTintColor:1];
  }

  else
  {
    [v25 _setTextColorFollowsTintColor:0];
    sub_100016F40(0, &qword_100942F10);
    v35 = sub_100770CFC();
    [v25 setTextColor:v35];
  }

  v36 = v63;
  swift_getObjectType();
  v37 = sub_10045B094(v36);
  v38 = type metadata accessor for Accessory();
  v39 = v26;
  if (v37)
  {
    v40 = v66;
    swift_storeEnumTagMultiPayload();
    v41 = 0;
    v42 = v32;
  }

  else
  {
    v41 = 1;
    v42 = v32;
    v40 = v66;
  }

  (*(*(v38 - 8) + 56))(v40, v41, 1, v38);
  sub_100292808(v40, v67);
  sub_10000CFBC(v40, &qword_10094BB50);
  v43 = [v36 traitCollection];
  v44 = [v43 horizontalSizeClass];

  if (v44 == 1 || (sub_10076660C(), v45 = sub_10077124C(), v42(v30, v34), (v45 & 1) != 0))
  {
    v46 = [v39 contentView];
    [v36 pageMarginInsets];
  }

  else
  {
    v46 = [v39 contentView];
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v51 = v64;
  v52 = v61;
  [v46 setLayoutMargins:{top, left, bottom, right}];

  v53 = sub_10076B8FC();
  if (v53)
  {

    v54 = *&v39[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_lazilyCreatedArtworkView];
    if (v54 && ([v54 isHidden] & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_18:
    v56 = v53 == 0;
    v57 = sub_1002907D4();
    [v57 setHidden:v56];

    goto LABEL_19;
  }

  v55 = *&v39[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_lazilyCreatedArtworkView];
  if (v55 && ![v55 isHidden])
  {
    goto LABEL_18;
  }

LABEL_19:
  sub_10076660C();
  v58 = sub_10077124C();
  v42(v30, v34);
  v39[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_isVertical] = (v58 & 1) == 0;
  if (v58)
  {
    v59 = 1;
  }

  else
  {
    v59 = 3;
  }

  [v52 setNumberOfLines:v59];
  [v39 setNeedsLayout];
  [v39 setNeedsLayout];

  return (*(v68 + 8))(v51, v69);
}

uint64_t sub_1003EF0D8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v76 = a6;
  v79 = a4;
  v88 = a3;
  v75 = a2;
  v7 = sub_10000A5D4(&unk_100949290);
  __chkstk_darwin(v7 - 8);
  v86 = &v73 - v8;
  v9 = sub_10000A5D4(&qword_10094F730);
  __chkstk_darwin(v9 - 8);
  v87 = &v73 - v10;
  v11 = sub_10000A5D4(&unk_1009492A0);
  __chkstk_darwin(v11 - 8);
  v85 = &v73 - v12;
  v13 = sub_10000A5D4(&unk_10094D210);
  __chkstk_darwin(v13 - 8);
  v84 = &v73 - v14;
  v15 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v15 - 8);
  v83 = &v73 - v16;
  v17 = sub_10000A5D4(&unk_1009467C0);
  __chkstk_darwin(v17 - 8);
  v77 = &v73 - v18;
  v91 = sub_10076664C();
  v78 = *(v91 - 8);
  __chkstk_darwin(v91);
  v90 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10076D1AC();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = (&v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_10076E1EC();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v74 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_10076E21C();
  v82 = *(v92 - 8);
  __chkstk_darwin(v92);
  v93 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10000A5D4(&unk_1009520C0);
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v73 - v30;
  v81 = sub_10000A5D4(&unk_100946700);
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v33 = &v73 - v32;
  sub_10000A570(a1, v95);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076BC0C();
  result = swift_dynamicCast();
  if (result)
  {
    v73 = v94[0];
    (*(v29 + 16))(v31, v75, v28);
    sub_10076FCFC();
    v75 = v33;
    sub_10076F87C();
    v35 = [v76 traitCollection];
    (*(v25 + 104))(v74, enum case for Separator.Position.bottom(_:), v24);
    *v23 = UIFontTextStyleBody;
    (*(v21 + 104))(v23, enum case for FontSource.textStyle(_:), v20);
    v96 = sub_10076D9AC();
    v97 = &protocol witness table for StaticDimension;
    sub_10000DB7C(v95);
    v94[3] = v20;
    v94[4] = &protocol witness table for FontSource;
    v36 = sub_10000DB7C(v94);
    (*(v21 + 16))(v36, v23, v20);
    v37 = UIFontTextStyleBody;
    sub_10076D9BC();
    (*(v21 + 8))(v23, v20);
    v38 = v93;
    sub_10076E1FC();
    v39 = v90;
    sub_1007665FC();
    sub_100409428(&unk_100945570, &type metadata accessor for ComponentLayoutOptions);
    v40 = v91;
    v41 = sub_10077124C();
    v42 = *(v78 + 8);
    v42(v39, v40);
    v76 = v35;
    if (v41)
    {
      v43 = v82;
      v44 = v77;
      (*(v82 + 56))(v77, 1, 1, v92);
      v45 = OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_separator;
      v46 = v89;
      swift_beginAccess();
      sub_1000A912C(v44, &v46[v45], &unk_1009467C0);
      swift_endAccess();
      sub_1002A66D8();
      sub_10000CFBC(v44, &unk_1009467C0);
      v47 = v90;
      sub_10076660C();
      v48 = v91;
      LOBYTE(v45) = sub_10077124C();
      v42(v47, v48);
      v49 = [v46 contentView];
      v50 = v49;
      if (v45)
      {
        [v49 layoutMargins];
        [v50 setLayoutMargins:?];
      }

      else
      {
        sub_10076E1AC();
        sub_10000CF78(v95, v96);
        sub_10076D41C();
        [v50 layoutMargins];
        [v50 setLayoutMargins:?];

        sub_10000CD74(v95);
      }
    }

    else
    {
      v51 = v38;
      v43 = v82;
      v52 = v77;
      v53 = v92;
      (*(v82 + 16))(v77, v51, v92);
      (*(v43 + 56))(v52, 0, 1, v53);
      v54 = OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_separator;
      v46 = v89;
      swift_beginAccess();
      sub_1000A912C(v52, &v46[v54], &unk_1009467C0);
      swift_endAccess();
      sub_1002A66D8();
      sub_10000CFBC(v52, &unk_1009467C0);
      v55 = [v46 contentView];
      [v55 layoutMargins];
      [v55 setLayoutMargins:?];

      v56 = v90;
      sub_1007665DC();
      v57 = v91;
      v58 = sub_10077124C();
      v42(v56, v57);
      v59 = v46[OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_hideSeparatorIndependentlyOfLayout];
      v46[OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_hideSeparatorIndependentlyOfLayout] = v58 & 1;
      if ((v58 & 1) != v59)
      {
        v60 = *&v46[OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_separatorView];
        if (v60)
        {
          v61 = 1.0;
          if (v58)
          {
            v61 = 0.0;
          }

          [v60 setAlpha:v61];
        }
      }
    }

    v62 = *&v46[OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_lockupView];
    v63 = sub_10000A5D4(&qword_100945590);
    v64 = v83;
    (*(*(v63 - 8) + 56))(v83, 1, 1, v63);
    v65 = sub_10075F78C();
    v66 = v84;
    (*(*(v65 - 8) + 56))(v84, 1, 1, v65);
    v67 = sub_1007628DC();
    v68 = v85;
    (*(*(v67 - 8) + 56))(v85, 1, 1, v67);
    v69 = sub_10000A5D4(&unk_100946750);
    v70 = v87;
    (*(*(v69 - 8) + 56))(v87, 1, 1, v69);
    v71 = sub_10076C54C();
    v72 = v86;
    (*(*(v71 - 8) + 56))(v86, 1, 1, v71);
    sub_1004D0A60(v73, v62, v64, v88, 0, 0, v66, v68, v72, v70);
    sub_10000CFBC(v72, &unk_100949290);
    v62[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v62 setNeedsLayout];
    sub_10000CFBC(v70, &qword_10094F730);
    sub_10000CFBC(v68, &unk_1009492A0);
    sub_10000CFBC(v66, &unk_10094D210);
    sub_10000CFBC(v64, &unk_100946760);
    [v46 setNeedsLayout];

    (*(v43 + 8))(v93, v92);
    return (*(v80 + 8))(v75, v81);
  }

  return result;
}

uint64_t sub_1003EFE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), void (*a8)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v26 = a8;
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v12 = sub_10000A5D4(&unk_1009520C0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - v14;
  v16 = sub_10000A5D4(&unk_100946700);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v22 - v18;
  sub_10000A570(a1, v28);
  sub_10000A5D4(&qword_1009575A0);
  a7(0);
  result = swift_dynamicCast();
  if (result)
  {
    v21 = v27;
    (*(v13 + 16))(v15, a2, v12);
    sub_10076FCFC();
    sub_10076F87C();
    v26(v21, v19, a3, v23, v24, v25);

    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

uint64_t sub_1003F00A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a5;
  v23 = a6;
  v20 = a3;
  v21 = a4;
  ObjectType = swift_getObjectType();
  v9 = sub_10000A5D4(&unk_1009520C0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = sub_10000A5D4(&unk_100946700);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19 - v15;
  sub_10000A570(a1, v25);
  sub_10000A5D4(&qword_1009575A0);
  sub_100760F3C();
  result = swift_dynamicCast();
  if (result)
  {
    v26 = v24;
    (*(v10 + 16))(v12, a2, v9);
    sub_10076FCFC();
    sub_10076F87C();
    v18 = sub_100409428(&unk_1009467B0, type metadata accessor for PrivacyFooterCollectionViewCell);
    (*(v18 + 56))(&v26, v16, v20, v21, v22, v23, ObjectType, v18);
    (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_1003F0304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v46 = a2;
  v47 = a6;
  v49 = a3;
  ObjectType = swift_getObjectType();
  v9 = sub_10000A5D4(&unk_10094C040);
  __chkstk_darwin(v9 - 8);
  v11 = &v44 - v10;
  v12 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = (&v44 - v16);
  v18 = sub_10000A5D4(&unk_1009467F0);
  v52 = *(v18 - 8);
  v53 = v18;
  __chkstk_darwin(v18);
  v48 = &v44 - v19;
  v20 = sub_10000A5D4(&unk_1009520C0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v44 - v22;
  v24 = sub_10000A5D4(&unk_100946700);
  v50 = *(v24 - 8);
  v51 = v24;
  __chkstk_darwin(v24);
  v26 = &v44 - v25;
  sub_10000A570(a1, v57);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076115C();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v21 + 16))(v23, v46, v20);
    sub_10076FCFC();
    sub_10076F87C();
    v28 = [v47 snapshotPageTraitEnvironment];
    *&v7[OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_pageTraits] = v28;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    [v7 setNeedsLayout];
    swift_unknownObjectRelease();
    sub_10076114C();
    v29 = sub_100761DCC();

    v45 = v26;
    if (v29)
    {
      if (qword_1009413D0 != -1)
      {
        swift_once();
      }

      v30 = sub_10000A61C(v12, qword_1009A27F8);
      sub_1000A9194(v30, v17);
      v31 = *v17;
      v32 = v29;

      *v17 = v29;
      sub_1000A9194(v17, v14);
      sub_10000A5D4(&unk_100943120);
      v33 = v48;
      sub_10075FE0C();

      sub_1000A91F8(v17);
    }

    else
    {
      if (qword_1009413D0 != -1)
      {
        swift_once();
      }

      v34 = sub_10000A61C(v12, qword_1009A27F8);
      sub_1000A9194(v34, v17);
      sub_10000A5D4(&unk_100943120);
      v33 = v48;
      sub_10075FE0C();
    }

    v35 = v53;
    v36 = sub_10076114C();
    v37 = v52;
    (*(v52 + 16))(v11, v33, v35);
    (*(v37 + 56))(v11, 0, 1, v35);
    sub_1006098B0(v36, v11, v49);

    sub_10000CFBC(v11, &unk_10094C040);
    v38 = sub_10076113C();
    if (!v38)
    {
      v38 = [objc_opt_self() clearColor];
    }

    v39 = v38;
    v40 = ObjectType;
    v56.receiver = v7;
    v56.super_class = ObjectType;
    objc_msgSendSuper2(&v56, "setBackgroundColor:", v38);
    v41 = *&v7[OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_iconView];
    v55.receiver = v7;
    v55.super_class = v40;
    v42 = v41;
    v43 = objc_msgSendSuper2(&v55, "backgroundColor");
    sub_10075FB8C();

    [v7 setNeedsLayout];

    (*(v37 + 8))(v33, v35);
    return (*(v50 + 8))(v45, v51);
  }

  return result;
}

uint64_t sub_1003F0918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v54 = a6;
  v65 = a3;
  v53 = a2;
  v7 = sub_10000A5D4(&unk_100945560);
  __chkstk_darwin(v7 - 8);
  v62 = &v51 - v8;
  v60 = sub_100768FEC();
  v56 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10000A5D4(&unk_100946750);
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v51 - v10;
  v11 = sub_10000A5D4(&unk_100945550);
  __chkstk_darwin(v11 - 8);
  v13 = &v51 - v12;
  v14 = sub_10076A3AC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v18 - 8);
  v20 = &v51 - v19;
  v21 = sub_10000A5D4(&unk_1009520C0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v51 - v23;
  v25 = sub_10000A5D4(&unk_100946700);
  v63 = *(v25 - 8);
  v64 = v25;
  __chkstk_darwin(v25);
  v27 = &v51 - v26;
  sub_10000A570(a1, v67);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076161C();
  result = swift_dynamicCast();
  if (result)
  {
    v51 = v13;
    v29 = v66;
    (*(v22 + 16))(v24, v53, v21);
    sub_10076FCFC();
    sub_10076F87C();
    v30 = v55;
    v31 = [v55 contentView];
    [v54 pageMarginInsets];
    [v31 setLayoutMargins:?];

    v54 = v29;
    v32 = sub_1007615BC();
    v33 = v30;
    v52 = v27;
    if (v32)
    {
      if (v32 >> 62)
      {
        v37 = v32;
        v38 = sub_10077158C();
        v32 = v37;
        if (v38)
        {
          goto LABEL_5;
        }
      }

      else if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        v34 = v32;
        sub_100760C4C();
        sub_10076F64C();
        sub_10076FC1C();
        v35 = v67[0];
        v36 = *&v33[OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_iconGridView];
        [v36 setHidden:0];
        *&v36[OBJC_IVAR____TtC20ProductPageExtension12IconGridView_impressionableArtworks] = v34;

        *&v36[OBJC_IVAR____TtC20ProductPageExtension12IconGridView_artworkLoader] = v35;

        sub_1003BF4A0(v34, v35);

LABEL_9:
        v55 = *&v33[OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_offerButton];
        v39 = sub_1007615FC();
        v40 = sub_1007615DC();
        v41 = sub_1007615CC();
        (*(v15 + 104))(v17, enum case for OfferButtonPresenterViewAlignment.center(_:), v14);
        (*(v15 + 56))(v51, 1, 1, v14);
        sub_100409428(&unk_1009492B0, &type metadata accessor for OfferButtonPresenterViewAlignment);
        sub_10076759C();
        v42 = sub_10000A5D4(&qword_100945590);
        (*(*(v42 - 8) + 56))(v20, 0, 1, v42);
        v43 = v56;
        v44 = v60;
        (*(v56 + 104))(v57, enum case for OfferButtonSubtitlePosition.above(_:), v60);
        (*(v43 + 56))(v62, 1, 1, v44);
        sub_100409428(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition);
        v45 = v58;
        sub_10076759C();
        sub_1001F12C8(v39, v40, v41, v20, v45, v65, 0, 0);

        (*(v59 + 8))(v45, v61);
        sub_10000CFBC(v20, &unk_100946760);
        sub_100767E8C();
        sub_10076F64C();
        sub_10076FC1C();
        v46 = v67[0];
        sub_1007615EC();
        sub_10076160C();
        v47 = sub_100767DCC();
        swift_allocObject();
        v48 = v46;
        v49 = sub_100767DAC();
        sub_100409428(&unk_100946770, type metadata accessor for ArcadeShowcaseCollectionViewCell);
        swift_unknownObjectRetain();
        sub_100767DBC();
        v67[3] = v47;
        v67[0] = v49;
        v50 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_offerLabelPresenter;
        swift_beginAccess();

        sub_10003837C(v67, &v33[v50], &unk_1009434C0);
        swift_endAccess();
        [v33 setNeedsLayout];

        return (*(v63 + 8))(v52, v64);
      }
    }

    [*&v30[OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_iconGridView] setHidden:1];
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1003F12C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = sub_10000A5D4(&unk_1009520C0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v39 - v14;
  v16 = sub_10000A5D4(&unk_100946700);
  v40 = *(v16 - 8);
  v41 = v16;
  __chkstk_darwin(v16);
  v18 = v39 - v17;
  sub_10000A570(a1, v43);
  sub_10000A5D4(&qword_1009575A0);
  sub_10075E67C();
  result = swift_dynamicCast();
  if (result)
  {
    v20 = v42;
    (*(v13 + 16))(v15, a2, v12);
    sub_10076FCFC();
    sub_10076F87C();
    v21 = v39[1];
    sub_100078490(v20, a3, a4, a5, a6);
    sub_10075E66C();
    v22 = sub_10076BB6C();
    v24 = v23;

    if (v24)
    {
      v44._countAndFlagsBits = 0x465F4E4F5F444441;
      v44._object = 0xEE005050415F524FLL;
      v45._object = 0x80000001007D1F20;
      v45._countAndFlagsBits = 0xD000000000000031;
      sub_1007622EC(v44, v45);
      sub_10000A5D4(&qword_100966CF0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_100783DD0;
      *(v25 + 56) = &type metadata for String;
      *(v25 + 64) = sub_1000A9040();
      *(v25 + 32) = v22;
      *(v25 + 40) = v24;

      sub_10076FFCC();

      v26 = objc_allocWithZone(NSMutableAttributedString);
      v27 = sub_10076FF6C();
      v28 = [v26 initWithString:v27];

      v29 = objc_allocWithZone(NSString);
      v30 = sub_10076FF6C();

      v31 = [v29 initWithString:v30];

      v32 = sub_10076FF6C();

      v33 = [v31 rangeOfString:v32 options:4];
      v35 = v34;

      v36 = [v21 tintColor];
      v43[0] = v36;
      sub_10000A5D4(&qword_100946798);
      v37 = sub_10077119C();

      [v28 addAttribute:NSForegroundColorAttributeName value:v37 range:{v33, v35}];
      swift_unknownObjectRelease();
      v38 = *(*&v21[OBJC_IVAR____TtC20ProductPageExtension37InAppPurchaseLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_subtitleLabel);
      if (!v38)
      {

        return (*(v40 + 8))(v18, v41);
      }

      [v38 setAttributedText:v28];
    }

    return (*(v40 + 8))(v18, v41);
  }

  return result;
}

uint64_t sub_1003F1764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v26 = a8;
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v12 = sub_10000A5D4(&unk_1009520C0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - v14;
  v16 = sub_10000A5D4(&unk_100946700);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v22 - v18;
  sub_10000A570(a1, v28);
  sub_10000A5D4(&qword_1009575A0);
  a7(0);
  result = swift_dynamicCast();
  if (result)
  {
    v21 = v27;
    (*(v13 + 16))(v15, a2, v12);
    sub_10076FCFC();
    sub_10076F87C();
    v26(v21, a3, v23, v24, v25);

    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

uint64_t sub_1003F1984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a6;
  v35 = a4;
  v36 = a5;
  v33 = a2;
  v34 = a3;
  v38 = a1;
  v10 = sub_10000A5D4(&unk_1009520C0);
  v31 = *(v10 - 8);
  v32 = v10;
  __chkstk_darwin(v10);
  v12 = v28 - v11;
  v28[1] = swift_getAssociatedTypeWitness();
  v13 = sub_10076F86C();
  v29 = *(v13 - 8);
  v30 = v13;
  __chkstk_darwin(v13);
  v15 = v28 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = sub_1007711AC();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v28 - v19;
  v21 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v22);
  v24 = v28 - v23;
  sub_10000A570(v38, v39);
  sub_10000A5D4(&qword_1009575A0);
  v25 = swift_dynamicCast();
  v26 = *(v21 + 56);
  if (v25)
  {
    v26(v20, 0, 1, AssociatedTypeWitness);
    (*(v21 + 32))(v24, v20, AssociatedTypeWitness);
    (*(v31 + 16))(v12, v33, v32);
    sub_10076F87C();
    (*(a8 + 56))(v24, v15, v34, v35, v36, v37, a7, a8);
    (*(v29 + 8))(v15, v30);
    return (*(v21 + 8))(v24, AssociatedTypeWitness);
  }

  else
  {
    v26(v20, 1, 1, AssociatedTypeWitness);
    return (*(v18 + 8))(v20, v17);
  }
}

uint64_t sub_1003F1D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1DB8(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_1003F1DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a3;
  v23 = a2;
  v20 = a1;
  v22 = sub_10000A5D4(&unk_1009520C0);
  v7 = *(v22 - 8);
  __chkstk_darwin(v22);
  v9 = &v19 - v8;
  swift_getAssociatedTypeWitness();
  v21 = sub_10076F86C();
  v10 = *(v21 - 8);
  __chkstk_darwin(v21);
  v12 = &v19 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v16 = &v19 - v15;
  sub_10000A570(v20, v25);
  sub_10000A5D4(&qword_1009575A0);
  swift_dynamicCast();
  (*(v7 + 16))(v9, v23, v22);
  sub_10076F87C();
  v17 = (*(a5 + 64))(v16, v12, v24, a4, a5);
  (*(v10 + 8))(v12, v21);
  (*(v14 + 8))(v16, AssociatedTypeWitness);
  return v17;
}

double sub_1003F209C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EE1EC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003F2150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1984(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003F21EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1DB8(a1, a2, a3, a4, WitnessTable);
}

double sub_1003F2280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EE1EC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003F2334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1984(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003F23D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1DB8(a1, a2, a3, a4, WitnessTable);
}

double sub_1003F244C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EE1EC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003F2500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1984(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003F259C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1DB8(a1, a2, a3, a4, WitnessTable);
}

double sub_1003F2670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EE1EC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003F2724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1984(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003F27C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1DB8(a1, a2, a3, a4, WitnessTable);
}

double sub_1003F283C(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = sub_10000A5D4(&unk_1009520A0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20[-v13];
  v15 = sub_10000A5D4(&qword_10094DC40);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v20[-v17];
  sub_10000A570(a1, v20);
  sub_10000A5D4(&qword_1009575A0);
  sub_10075F26C();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a4, v11);
  sub_10076FCFC();
  sub_10076FDBC();
  sub_10044328C(v21, a7);
  (*(v16 + 8))(v18, v15);

  return a2;
}

uint64_t sub_1003F2AA8(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&unk_1009520C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - v5;
  v7 = sub_10000A5D4(&unk_100946700);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v13 - v10;
  (*(v4 + 16))(v6, a2, v3, v9);
  sub_10076FCFC();
  sub_10076F87C();
  (*(v8 + 8))(v11, v7);
  return 0;
}

double sub_1003F2C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EE1EC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003F2D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1984(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003F2DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1DB8(a1, a2, a3, a4, WitnessTable);
}

double sub_1003F2E34(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10000A5D4(&unk_1009520A0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17[-v9];
  v11 = sub_10000A5D4(&qword_10094DC40);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v17[-v13];
  sub_10000A570(a1, v17);
  sub_10000A5D4(&qword_1009575A0);
  sub_100761D1C();
  swift_dynamicCast();
  (*(v8 + 16))(v10, a4, v7);
  sub_10076FCFC();
  sub_10076FDBC();
  v15 = sub_1001A87E4(a2);
  (*(v12 + 8))(v14, v11);

  return v15;
}

double sub_1003F30D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = sub_10000A5D4(&unk_1009520A0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19[-v11];
  v13 = sub_10000A5D4(&qword_10094DC40);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19[-v15];
  sub_10000A570(a1, v19);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076C0CC();
  swift_dynamicCast();
  (*(v10 + 16))(v12, a3, v9);
  sub_10076FCFC();
  sub_10076FDBC();
  v17 = sub_1005B6C20(v20, a6, 1);
  (*(v14 + 8))(v16, v13);

  return v17;
}

double sub_1003F3344(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = sub_10000A5D4(&unk_1009520A0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23[-v13];
  v15 = sub_10000A5D4(&qword_10094DC40);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v23[-v17];
  sub_10000A570(a1, v23);
  sub_10000A5D4(&qword_1009575A0);
  sub_10075F29C();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a4, v11);
  sub_10076FCFC();
  sub_10076FDBC();
  v19 = v24;
  ObjectType = swift_getObjectType();
  v21 = sub_1002EFEE4(a2, v19, a7, ObjectType);
  (*(v16 + 8))(v18, v15);

  return v21;
}

double sub_1003F35B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EE1EC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003F3664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1984(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003F3700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1DB8(a1, a2, a3, a4, WitnessTable);
}

double sub_1003F377C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EE1EC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003F3830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1984(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003F38CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1DB8(a1, a2, a3, a4, WitnessTable);
}

double sub_1003F3948(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = sub_10000A5D4(&unk_1009520A0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24[-v14];
  v16 = sub_10000A5D4(&qword_10094DC40);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v24[-v18];
  sub_10000A570(a1, v24);
  sub_10000A5D4(&qword_1009575A0);
  sub_10075F29C();
  swift_dynamicCast();
  (*(v13 + 16))(v15, a4, v12);
  sub_10076FCFC();
  sub_10076FDBC();
  v20 = v25;
  ObjectType = swift_getObjectType();
  v22 = sub_10034537C(a2, v20, a7, v7, ObjectType);
  (*(v17 + 8))(v19, v16);

  return v22;
}

uint64_t sub_1003F3C60(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&unk_1009520C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-v5];
  v7 = sub_10000A5D4(&unk_1009566B0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v13[-v10];
  (*(v4 + 16))(v6, a2, v3, v9);
  sub_10076F87C();
  sub_100111DA4();
  sub_10076F83C();
  (*(v8 + 8))(v11, v7);
  return 3;
}

double sub_1003F3E1C(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10000A5D4(&unk_1009520A0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = sub_10000A5D4(&qword_10094DC40);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v17 - v13;
  (*(v7 + 16))(v9, a4, v6, v12);
  sub_10076FCFC();
  sub_10076FDBC();
  if (qword_100940348 != -1)
  {
    swift_once();
  }

  v15 = sub_10076D39C();
  sub_10000A61C(v15, qword_10099F728);
  sub_10076D36C();
  (*(v11 + 8))(v14, v10);
  return a1;
}

void sub_1003F40AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&unk_1009520A0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  v8 = sub_10000A5D4(&qword_10094DC40);
  v9 = __chkstk_darwin(v8 - 8);
  (*(v5 + 16))(v7, a3, v4, v9);
  sub_10076FCFC();
  sub_10076FDBC();
  sub_10077156C();
  __break(1u);
}

double sub_1003F421C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&unk_1009520A0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  v8 = sub_10000A5D4(&qword_10094DC40);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v18 - v11;
  (*(v5 + 16))(v7, a3, v4, v10);
  sub_10076FCFC();
  sub_10076FDBC();
  if (qword_100940330 != -1)
  {
    swift_once();
  }

  v13 = sub_1007640EC();
  sub_10000A61C(v13, qword_10099F660);
  sub_10076410C();
  sub_100409428(&unk_1009566D0, &type metadata accessor for FlowcaseItemLayout);
  sub_10076DBDC();
  if (qword_100940338 != -1)
  {
    swift_once();
  }

  v14 = sub_10076E21C();
  sub_10000A61C(v14, qword_10099F678);
  sub_100770AFC();
  v16 = v15;
  (*(v9 + 8))(v12, v8);
  return v16;
}

double sub_1003F4528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EE1EC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003F45DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1984(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003F4678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1DB8(a1, a2, a3, a4, WitnessTable);
}

double sub_1003F46F4(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10000A5D4(&unk_1009520A0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = sub_10000A5D4(&qword_10094DC40);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v17 - v13;
  (*(v7 + 16))(v9, a4, v6, v12);
  sub_10076FCFC();
  sub_10076FDBC();
  if (qword_10093F650 != -1)
  {
    swift_once();
  }

  swift_getObjectType();
  type metadata accessor for VideoCardView();
  v15 = sub_1000C31A8(a1);
  (*(v11 + 8))(v14, v10);
  return v15;
}

double sub_1003F4908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EE1EC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003F49BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1984(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003F4A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1DB8(a1, a2, a3, a4, WitnessTable);
}

double sub_1003F4AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v31 = a6;
  v29 = a4;
  v30 = a5;
  v27 = a3;
  v28 = a2;
  v11 = sub_10000A5D4(&unk_1009520A0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  v15 = sub_10000A5D4(&qword_100956718);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v26 - v17;
  v19 = sub_10075F51C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A570(a1, v32);
  sub_10000A5D4(&qword_1009575A0);
  swift_dynamicCast();
  (*(v12 + 16))(v14, v27, v11);
  sub_10076FDBC();
  v23 = sub_100409428(&qword_100956720, type metadata accessor for AnnotationCollectionViewCell);
  v24 = (*(v23 + 48))(v22, v28, v18, v29, v30, v31, a7, a8);
  (*(v16 + 8))(v18, v15);
  (*(v20 + 8))(v22, v19);
  return v24;
}

double sub_1003F4DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EE1EC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003F4EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1984(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003F4F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1DB8(a1, a2, a3, a4, WitnessTable);
}

double sub_1003F4FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EE1EC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003F5074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1984(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003F5110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1DB8(a1, a2, a3, a4, WitnessTable);
}

double sub_1003F51EC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_10000A5D4(&unk_1009520A0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - v12;
  v14 = sub_10000A5D4(&qword_10094DC40);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v20 - v17;
  (*(v11 + 16))(v13, a4, v10, v16);
  sub_10076FCFC();
  sub_10076FDBC();
  sub_100322D48(a7);
  (*(v15 + 8))(v18, v14);
  return a1;
}

double sub_1003F53AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EE1EC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003F5460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1984(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003F54FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1DB8(a1, a2, a3, a4, WitnessTable);
}

double sub_1003F5578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = sub_10000A5D4(&unk_1009520A0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - v11;
  v13 = sub_10000A5D4(&qword_10094DC40);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v21 - v16;
  (*(v10 + 16))(v12, a3, v9, v15);
  sub_10076FCFC();
  sub_10076FDBC();
  sub_1005C57C4(a2, a6);
  v19 = v18;
  (*(v14 + 8))(v17, v13);
  return v19;
}

double sub_1003F5788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EE1EC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003F583C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1984(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003F58D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1DB8(a1, a2, a3, a4, WitnessTable);
}

double sub_1003F59A4(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = sub_10000A5D4(&unk_1009520A0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23[-v15];
  v17 = sub_10000A5D4(&qword_10094DC40);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v23[-v19];
  sub_10000A570(a1, v23);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076092C();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a5, v13);
  sub_10076FCFC();
  sub_10076FDBC();
  v21 = sub_100597094(v24, 0, 0, a8, 0.0, 0.0, a2, a3, a2);
  (*(v18 + 8))(v20, v17);

  return v21;
}

double sub_1003F5BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EE1EC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003F5C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1984(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003F5D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1DB8(a1, a2, a3, a4, WitnessTable);
}

double sub_1003F5DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EE1EC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003F5E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1984(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003F5EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1DB8(a1, a2, a3, a4, WitnessTable);
}

double sub_1003F5FA4(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[0] = a11;
  v17 = sub_10000A5D4(&unk_1009520A0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v29 - v19;
  v21 = sub_10000A5D4(&qword_10094DC40);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = v29 - v23;
  sub_10000A570(a1, v30);
  sub_10000A5D4(&qword_1009575A0);
  sub_10075F1FC();
  swift_dynamicCast();
  (*(v18 + 16))(v20, a5, v17);
  sub_10076FCFC();
  sub_10076FDBC();
  v25 = v31;
  ObjectType = swift_getObjectType();
  v27 = (v29[0])(v25, a8, a6, v29[1], ObjectType, a2, a3);
  (*(v22 + 8))(v24, v21);

  return v27;
}

double sub_1003F6214(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = sub_10000A5D4(&unk_1009520A0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - v12;
  v14 = sub_10000A5D4(&qword_10094DC40);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v22 - v17;
  (*(v11 + 16))(v13, a4, v10, v16);
  sub_10076FCFC();
  sub_10076FDBC();
  v19 = [a7 snapshotPageTraitEnvironment];
  swift_getObjectType();
  v20 = sub_100582810(v19, a1);
  swift_unknownObjectRelease();
  (*(v15 + 8))(v18, v14);
  return v20;
}

double sub_1003F646C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&unk_1009520A0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  v8 = sub_10000A5D4(&qword_10094DC40);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v16 - v11;
  (*(v5 + 16))(v7, a3, v4, v10);
  sub_10076FCFC();
  sub_10076FDBC();
  sub_10076CB3C();
  sub_10076CB0C();
  v14 = v13;
  (*(v9 + 8))(v12, v8);
  return v14;
}

uint64_t sub_1003F6638(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&unk_1009520C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - v5;
  v7 = sub_10000A5D4(&unk_100946700);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v13 - v10;
  (*(v4 + 16))(v6, a2, v3, v9);
  sub_10076FCFC();
  sub_10076F87C();
  (*(v8 + 8))(v11, v7);
  return 3;
}

double sub_1003F67C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EE1EC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003F6878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1984(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003F6914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1DB8(a1, a2, a3, a4, WitnessTable);
}

double sub_1003F6990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EE1EC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003F6A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1984(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003F6AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1DB8(a1, a2, a3, a4, WitnessTable);
}

double sub_1003F6B5C(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v10 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v10 - 8);
  v62 = &v59 - v11;
  v61 = sub_10077164C();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v66 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076D39C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A5D4(&unk_1009520A0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v59 - v19;
  v21 = sub_10000A5D4(&qword_10094DC40);
  v64 = *(v21 - 8);
  v65 = v21;
  __chkstk_darwin(v21);
  v23 = &v59 - v22;
  sub_10000A570(a1, aBlock);
  sub_10000A5D4(&qword_1009575A0);
  sub_100760E0C();
  swift_dynamicCast();
  (*(v18 + 16))(v20, a2, v17);
  sub_10076FCFC();
  v63 = v23;
  sub_10076FDBC();
  if ((sub_10075FF4C() & 1) == 0)
  {
    [a6 pageMarginInsets];
  }

  v24 = a6;
  v25 = sub_100760DFC();
  v26 = v66;
  if (v25)
  {
    sub_10076BEFC();
    sub_10076D3AC();
    sub_10076D36C();
    v28 = v27;
    v29 = *(v14 + 8);
    v29(v16, v13);
    sub_10075FF4C();
    if ((sub_10075FF4C() & 1) != 0 || v28 <= a4)
    {
    }

    else
    {
      sub_10076BEFC();
      sub_10076D3AC();
      sub_10076D35C();
      v29(v16, v13);
    }
  }

  v30 = sub_10075FF6C();
  v31 = [v30 length];

  if (v31 >= 1)
  {
    sub_10075FF7C();
    if (v32)
    {
      if (qword_100940F68 != -1)
      {
        swift_once();
      }

      v33 = sub_10076D3DC();
      sub_10000A61C(v33, qword_1009A1C30);
      v34 = sub_10076C04C();
      v68 = v34;
      v69 = sub_100409428(&qword_100943230, &type metadata accessor for Feature);
      v35 = sub_10000DB7C(aBlock);
      (*(*(v34 - 8) + 104))(v35, enum case for Feature.measurement_with_labelplaceholder(_:), v34);
      sub_10076C90C();
      sub_10000CD74(aBlock);
      sub_10076991C();

      if (qword_10093F990 != -1)
      {
        swift_once();
      }

      v36 = sub_10076D9AC();
      sub_10000A61C(v36, qword_10099D738);
      sub_10076D17C();
      sub_10076D40C();
      v37 = *(v60 + 8);
      v38 = v61;
      v37(v26, v61);
      if (qword_10093F9A0 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v36, qword_10099D768);
      sub_10076D17C();
      sub_10076D40C();
      v37(v26, v38);
      if (qword_10093F998 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v36, qword_10099D750);
      sub_10076D17C();
      sub_10076D40C();
      v37(v26, v38);
    }

    v39 = sub_10075FF6C();
    v40 = [v24 traitCollection];
    v41 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v39];
    v42 = [v39 length];
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    *(v43 + 24) = v40;
    *(v43 + 32) = v41;
    *(v43 + 40) = 1;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_100027A88;
    *(v44 + 24) = v43;
    v69 = sub_1003BE1CC;
    v70 = v44;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026610;
    v68 = &unk_1008944C0;
    v45 = _Block_copy(aBlock);
    v46 = v40;
    v47 = v41;

    [v39 enumerateAttributesInRange:0 options:v42 usingBlock:{0x100000, v45}];

    _Block_release(v45);
    LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

    if (v41)
    {
      __break(1u);
    }

    else
    {
      v48 = qword_100940F60;
      v39 = v47;
      if (v48 == -1)
      {
LABEL_21:
        v49 = sub_10076D3DC();
        v50 = sub_10000A61C(v49, qword_1009A1C18);
        v51 = *(v49 - 8);
        v52 = v62;
        (*(v51 + 16))(v62, v50, v49);
        (*(v51 + 56))(v52, 0, 1, v49);
        v53 = sub_10076C04C();
        v68 = v53;
        v69 = sub_100409428(&qword_100943230, &type metadata accessor for Feature);
        v54 = sub_10000DB7C(aBlock);
        (*(*(v53 - 8) + 104))(v54, enum case for Feature.measurement_with_labelplaceholder(_:), v53);
        sub_10076C90C();
        sub_10000CD74(aBlock);
        sub_10076990C();

        sub_10000CFBC(v52, &unk_100943250);
        if (qword_10093F990 != -1)
        {
          swift_once();
        }

        v55 = sub_10076D9AC();
        sub_10000A61C(v55, qword_10099D738);
        sub_10076D42C();
        if (qword_10093F998 != -1)
        {
          swift_once();
        }

        sub_10000A61C(v55, qword_10099D750);
        sub_10076D3FC();

        goto LABEL_26;
      }
    }

    swift_once();
    goto LABEL_21;
  }

LABEL_26:
  sub_100770ABC();
  v57 = v56;
  (*(v64 + 8))(v63, v65);

  return v57;
}

double sub_1003F774C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_10000A5D4(&unk_1009520A0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20[-v9];
  v11 = sub_10000A5D4(&qword_10094DC40);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20[-v13];
  sub_10000A570(a1, v20);
  sub_10000A5D4(&qword_1009575A0);
  sub_10075F29C();
  swift_dynamicCast();
  (*(v8 + 16))(v10, a2, v7);
  sub_10076FCFC();
  sub_10076FDBC();
  v15 = v21;
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v18 = sub_1002EFEE4(v17, v15, a4, ObjectType);
  (*(v12 + 8))(v14, v11);

  return v18;
}

double sub_1003F7978(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v24 = a5;
  v25 = sub_1007617CC();
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_1009520A0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - v13;
  v15 = sub_10000A5D4(&qword_10094DC40);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v24 - v17;
  sub_10000A570(a1, v26);
  sub_10000A5D4(&qword_1009575A0);
  sub_1007617FC();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a2, v11);
  sub_10076FCFC();
  sub_10076FDBC();
  if (sub_10076178C())
  {
    v19 = v24;
  }

  else
  {
    v19 = v24;
    [v24 pageMarginInsets];
    a3 = a3 - v20 - v21;
  }

  sub_1007617EC();
  v22 = [v19 traitCollection];
  sub_1007617AC();

  (*(v8 + 8))(v10, v25);
  (*(v16 + 8))(v18, v15);

  return a3;
}

double sub_1003F7C74(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v88 = a4;
  v85 = sub_10076997C();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v81 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v79 = &v71 - v8;
  __chkstk_darwin(v9);
  v78 = &v71 - v10;
  v76 = sub_10076545C();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v77 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_10076761C();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v80 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1007675FC();
  v94 = *(v13 - 8);
  __chkstk_darwin(v13);
  v89 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v93 = &v71 - v16;
  v17 = sub_10076C96C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v74 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v71 - v21;
  v23 = sub_10000A5D4(&unk_1009520A0);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v71 - v25;
  v92 = sub_10000A5D4(&qword_10094DC40);
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v28 = &v71 - v27;
  sub_10000A570(a1, v101);
  sub_10000A5D4(&qword_1009575A0);
  sub_100763D9C();
  swift_dynamicCast();
  (*(v24 + 16))(v26, a2, v23);
  sub_10076FCFC();
  v90 = v28;
  sub_10076FDBC();
  v29 = v101[5];
  v30 = sub_100763D5C();
  if (*(v30 + 16))
  {
    v31 = v18;
    v32 = v88;
    v73 = v31;
    v33 = *(v31 + 16);
    v34 = v30 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v86 = v22;
    v87 = v17;
    v33(v22, v34, v17);

    if (qword_10093FAC8 != -1)
    {
      swift_once();
    }

    v35 = sub_10000A61C(v13, qword_10099D948);
    v36 = *(v94 + 16);
    v37 = v93;
    v36(v93, v35, v13);
    v38 = [v32 traitCollection];
    v39 = sub_10077071C();

    if (v39)
    {
      v71 = v13;
      v36(v89, v37, v13);
      v33(v74, v86, v87);
      v40 = v29;
      sub_100763D7C();
      v41 = [v32 traitCollection];
      v42 = sub_1007706EC();

      v43 = &enum case for AchievementGroupView.Size.phone(_:);
      if ((v42 & 1) == 0)
      {
        v43 = &enum case for AchievementGroupView.Size.pad(_:);
      }

      (*(v75 + 104))(v77, *v43, v76);
      v44 = sub_10076546C();
      v45 = objc_allocWithZone(v44);
      v46 = sub_10076544C();
      v101[3] = v44;
      v101[4] = &protocol witness table for UIView;
      v101[0] = v46;
      v47 = sub_100763D8C();
      v102._object = 0x80000001007D1EE0;
      v102._countAndFlagsBits = 0xD000000000000032;
      v103._countAndFlagsBits = 0;
      v103._object = 0xE000000000000000;
      sub_100767D6C(v102, v47, v103);
      v48 = sub_100016F40(0, &qword_100942F00);
      if (qword_100940D80 != -1)
      {
        swift_once();
      }

      v77 = sub_10076D3DC();
      sub_10000A61C(v77, qword_1009A1678);
      v76 = v48;
      sub_100770B2C();
      v49 = sub_10076C04C();
      v100[3] = v49;
      v75 = sub_100409428(&qword_100943230, &type metadata accessor for Feature);
      v100[4] = v75;
      v50 = sub_10000DB7C(v100);
      v51 = *(*(v49 - 8) + 104);
      LODWORD(v74) = enum case for Feature.measurement_with_labelplaceholder(_:);
      v72 = v51;
      v51(v50);
      sub_10076C90C();
      sub_10000CD74(v100);
      v52 = v78;
      sub_10076996C();
      sub_10076994C();
      v53 = *(v84 + 8);
      v54 = v85;
      v53(v52, v85);
      v55 = [v32 traitCollection];
      sub_1000BFFCC();
      v84 = v40;

      if (qword_100940D88 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v77, qword_1009A1690);
      sub_100770B2C();
      v99[3] = v49;
      v99[4] = v75;
      v56 = sub_10000DB7C(v99);
      v72(v56, v74, v49);
      sub_10076C90C();
      sub_10000CD74(v99);
      v57 = v79;
      sub_10076996C();
      sub_10076994C();
      v53(v57, v54);
      sub_100763D6C();
      if (qword_100940D90 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v77, qword_1009A16A8);
      sub_100770B2C();
      v98[3] = v49;
      v98[4] = v75;
      v58 = sub_10000DB7C(v98);
      v72(v58, v74, v49);
      sub_10076C90C();
      sub_10000CD74(v98);
      v59 = v81;
      sub_10076996C();
      sub_10076994C();
      v53(v59, v54);
      v97 = 0;
      v96 = 0u;
      v95 = 0u;
      v60 = v80;
      sub_10076760C();
      sub_100409428(&unk_100947480, &type metadata accessor for AchievementSummaryLayout);
      v61 = v83;
      sub_10076D2AC();
      v63 = v62;
      (*(v82 + 8))(v60, v61);
      (*(v94 + 8))(v93, v71);
      (*(v73 + 8))(v86, v87);
    }

    else
    {
      [v32 pageContainerSize];
      if (v65 >= v64)
      {
        v67 = v87;
        v66 = v93;
      }

      else
      {
        JUScreenClassGetLandscapeWidth();
        v66 = v93;
        v67 = v87;
      }

      v68 = v86;
      sub_1007675CC();
      v63 = v69;
      (*(v94 + 8))(v66, v13);
      (*(v73 + 8))(v68, v67);
    }
  }

  else
  {

    v63 = 0.0;
  }

  (*(v91 + 8))(v90, v92);

  return v63;
}

double sub_1003F89F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_10000A5D4(&unk_1009520A0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24[-v11];
  v13 = sub_10000A5D4(&qword_10094DC40);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24[-v15];
  sub_10000A570(a1, v24);
  sub_10000A5D4(&qword_1009575A0);
  sub_10075F1FC();
  swift_dynamicCast();
  (*(v10 + 16))(v12, a2, v9);
  sub_10076FCFC();
  sub_10076FDBC();
  v17 = v25;
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v20 = v19;
  v21 = type metadata accessor for AppEventView();
  v22 = sub_10069CFD8(v20, v17, a5, a3, v21, ObjectType);
  (*(v14 + 8))(v16, v13);

  return v22;
}

double sub_1003F8C3C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v40 = sub_10076172C();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10076174C();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v42 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076997C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_1009520A0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v36 - v15;
  v39 = sub_10000A5D4(&qword_10094DC40);
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v18 = &v36 - v17;
  sub_10000A570(a1, v51);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076C1AC();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a2, v13);
  sub_10076FCFC();
  v36 = v18;
  sub_10076FDBC();
  sub_10076C19C();
  v19 = sub_10076C18C();
  sub_100016F40(0, &qword_100942F00);
  if (qword_100940B50 != -1)
  {
    swift_once();
  }

  v20 = sub_10076D3DC();
  sub_10000A61C(v20, qword_1009A0FE8);
  v45 = a4;
  v21 = [a4 traitCollection];
  v22 = sub_100770B3C();

  v23 = sub_10076C04C();
  v51[3] = v23;
  v51[4] = sub_100409428(&qword_100943230, &type metadata accessor for Feature);
  v24 = sub_10000DB7C(v51);
  (*(*(v23 - 8) + 104))(v24, enum case for Feature.measurement_with_labelplaceholder(_:), v23);
  v25 = v22;
  sub_10076C90C();
  sub_10000CD74(v51);
  sub_10076996C();
  sub_10076994C();
  (*(v10 + 8))(v12, v9);
  if ((v19 & 2) != 0)
  {
    if (qword_10093F810 != -1)
    {
      swift_once();
    }

    [qword_10099D1C8 size];
    v26 = sub_10076DDDC();
    swift_allocObject();
    v27 = sub_10076DDBC();
    *(&v49 + 1) = v26;
    v50 = &protocol witness table for LayoutViewPlaceholder;
    *&v48 = v27;
  }

  else
  {
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
  }

  v28 = v45;
  if (qword_10093F7F8 != -1)
  {
    swift_once();
  }

  v29 = v40;
  v30 = sub_10000A61C(v40, qword_10099D1B0);
  (*(v38 + 16))(v41, v30, v29);
  sub_10000A570(v51, v47);
  sub_100102958(&v48, v46);
  v31 = v42;
  sub_10076173C();
  [v28 pageMarginInsets];
  sub_100770ACC();
  sub_100409428(&qword_1009566E0, &type metadata accessor for FootnoteLayout);
  v32 = v44;
  sub_10076D2AC();
  sub_100770AEC();
  v34 = v33;

  (*(v43 + 8))(v31, v32);
  sub_10000CD74(v51);
  (*(v37 + 8))(v36, v39);
  sub_10000CFBC(&v48, &unk_10094DA00);

  return v34;
}

double sub_1003F93DC(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v9 = sub_10000A5D4(&unk_1009520A0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23[-v11];
  v13 = sub_10000A5D4(&qword_10094DC40);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23[-v15];
  sub_10000A570(a1, v23);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076653C();
  swift_dynamicCast();
  (*(v10 + 16))(v12, a2, v9);
  sub_10076FCFC();
  sub_10076FDBC();
  v17 = sub_10076651C();
  if (v18)
  {
    v19 = sub_10076652C();
    if (v19 >> 62)
    {
      v20 = sub_10077158C();
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v20 = v17;
  }

  v21 = [a5 traitCollection];
  sub_10054D204(v20, v21);

  (*(v14 + 8))(v16, v13);

  return a3;
}

double sub_1003F9658(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v54 = sub_1007656EC();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v56 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_10076570C();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_10076997C();
  v63 = *(v62 - 8);
  __chkstk_darwin(v62);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_1009520A0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v49 - v15;
  v55 = sub_10000A5D4(&qword_10094DC40);
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v18 = v49 - v17;
  sub_10000A570(a1, &v69);
  sub_10000A5D4(&qword_1009575A0);
  sub_1007616DC();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a2, v13);
  sub_10076FCFC();
  v51 = v18;
  sub_10076FDBC();
  v19 = v72;
  [a5 pageMarginInsets];
  sub_100770ACC();
  v20 = [a5 traitCollection];
  LOBYTE(v13) = sub_1007706EC();

  v21 = 4;
  if ((v13 & 1) == 0)
  {
    v21 = 1;
  }

  v60 = v21;
  v50 = v19;
  sub_1007616CC();
  v49[1] = v22;
  v23 = sub_100016F40(0, &qword_100942F00);
  if (qword_100940600 != -1)
  {
    swift_once();
  }

  v24 = sub_10076D3DC();
  sub_10000A61C(v24, qword_10099FCC0);
  v25 = [a5 traitCollection];
  sub_100770B3C();

  v26 = sub_10076C04C();
  v61 = a5;
  v27 = v26;
  v70 = v26;
  v28 = sub_100409428(&qword_100943230, &type metadata accessor for Feature);
  v71 = v28;
  v29 = sub_10000DB7C(&v69);
  v30 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v31 = *(v27 - 8);
  v49[0] = v23;
  v32 = *(v31 + 104);
  v32(v29, enum case for Feature.measurement_with_labelplaceholder(_:), v27);
  sub_10076C90C();
  sub_10000CD74(&v69);
  sub_10076996C();
  sub_10076994C();
  v33 = *(v63 + 8);
  v63 += 8;
  v33(v12, v62);
  v50 = sub_1007616BC();
  if (qword_100940608 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v24, qword_10099FCD8);
  v34 = [v61 traitCollection];
  sub_100770B3C();

  v67 = v27;
  v68 = v28;
  v35 = sub_10000DB7C(v66);
  v32(v35, v30, v27);
  sub_10076C90C();
  sub_10000CD74(v66);
  sub_10076996C();
  sub_10076994C();
  v33(v12, v62);
  if (qword_1009405F8 != -1)
  {
    swift_once();
  }

  v36 = v54;
  v37 = sub_10000A61C(v54, qword_10099FCA8);
  (*(v52 + 16))(v56, v37, v36);
  v38 = v70;
  v39 = v71;
  v40 = sub_10000CF78(&v69, v70);
  v65[3] = v38;
  v65[4] = *(v39 + 8);
  v41 = sub_10000DB7C(v65);
  (*(*(v38 - 8) + 16))(v41, v40, v38);
  v42 = v67;
  v43 = v68;
  v44 = sub_10000CF78(v66, v67);
  v64[3] = v42;
  v64[4] = *(v43 + 8);
  v45 = sub_10000DB7C(v64);
  (*(*(v42 - 8) + 16))(v45, v44, v42);
  v46 = v57;
  sub_1007656FC();
  sub_100409428(&unk_100961240, &type metadata accessor for EditorialQuoteLayout);
  v47 = v59;
  sub_10076D2AC();
  (*(v58 + 8))(v46, v47);
  (*(v53 + 8))(v51, v55);
  sub_10000CD74(v66);
  sub_10000CD74(&v69);

  return a3;
}

double sub_1003F9F54(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v46 = a5;
  v8 = sub_100764FDC();
  v41 = *(v8 - 8);
  v42 = v8;
  __chkstk_darwin(v8);
  v43 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100764FFC();
  v44 = *(v10 - 8);
  v45 = v10;
  __chkstk_darwin(v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_10076997C();
  v13 = *(v39 - 8);
  __chkstk_darwin(v39);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000A5D4(&unk_1009520A0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v39 - v18;
  v40 = sub_10000A5D4(&qword_10094DC40);
  v20 = *(v40 - 8);
  __chkstk_darwin(v40);
  v22 = &v39 - v21;
  sub_10000A570(a1, v48);
  sub_10000A5D4(&qword_1009575A0);
  sub_100760F3C();
  swift_dynamicCast();
  (*(v17 + 16))(v19, a2, v16);
  sub_10076FCFC();
  sub_10076FDBC();
  sub_100016F40(0, &qword_100942F00);
  if (qword_100940DB8 != -1)
  {
    swift_once();
  }

  v23 = sub_10076D3DC();
  sub_10000A61C(v23, qword_1009A1720);
  v24 = [v46 traitCollection];
  v25 = sub_100770B3C();

  sub_100760F2C();
  sub_10076081C();

  v26 = sub_10075F9DC();

  v27 = sub_10076C04C();
  v49 = v27;
  v50 = sub_100409428(&qword_100943230, &type metadata accessor for Feature);
  v28 = sub_10000DB7C(v48);
  (*(*(v27 - 8) + 104))(v28, enum case for Feature.measurement_with_labelplaceholder(_:), v27);
  v29 = v26;
  v30 = v25;
  sub_10076C90C();
  sub_10000CD74(v48);
  sub_10076993C();
  sub_10076994C();
  (*(v13 + 8))(v15, v39);
  if (qword_100941530 != -1)
  {
    swift_once();
  }

  v31 = v42;
  v32 = sub_10000A61C(v42, qword_1009A32C0);
  (*(v41 + 16))(v43, v32, v31);
  v33 = v49;
  v34 = v50;
  v35 = sub_10000CF78(v48, v49);
  v47[3] = v33;
  v47[4] = *(v34 + 8);
  v36 = sub_10000DB7C(v47);
  (*(*(v33 - 8) + 16))(v36, v35, v33);
  sub_100764FEC();
  sub_100409428(&unk_100944440, &type metadata accessor for PrivacyFooterLayout);
  v37 = v45;
  sub_10076D2AC();

  (*(v44 + 8))(v12, v37);
  (*(v20 + 8))(v22, v40);
  sub_10000CD74(v48);

  return a3;
}

double sub_1003FA5D4(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = sub_10000A5D4(&unk_1009520A0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v23 - v12;
  v14 = sub_10000A5D4(&qword_10094DC40);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v23 - v16;
  sub_10000A570(a1, v24);
  sub_10000A5D4(&qword_1009575A0);
  sub_100760DAC();
  swift_dynamicCast();
  (*(v11 + 16))(v13, a2, v10);
  sub_10076FCFC();
  sub_10076FDBC();
  v18 = v24[5];
  sub_10000A5D4(&unk_1009467A0);
  sub_10076F64C();
  sub_10076FC1C();
  v23[1] = v18;
  sub_10075F74C();

  v19 = v24[0];
  if ((~v24[0] & 0xF000000000000007) != 0)
  {
    v20 = v24[1];
  }

  else
  {

    v20 = 0;
    v19 = v18;
  }

  v21 = sub_1001B7EC0(v19, v20, a6, a3);
  sub_1000A9094(v19, v20);
  (*(v15 + 8))(v17, v14);

  return v21;
}

double sub_1003FA87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v27 = a5;
  v26 = a3;
  v28 = sub_10075FAEC();
  v7 = *(v28 - 8);
  __chkstk_darwin(v28);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_1009520A0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - v12;
  v14 = sub_10000A5D4(&qword_10094DC40);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v26 - v16;
  sub_10000A570(a1, &v29);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076161C();
  swift_dynamicCast();
  (*(v11 + 16))(v13, a2, v10);
  sub_10076FCFC();
  sub_10076FDBC();
  sub_100767E8C();
  sub_10076F64C();
  sub_10076FC1C();
  v18 = v29;
  sub_100767E6C();
  if (sub_10075FABC())
  {
    v19 = sub_1007615EC();
  }

  else
  {
    v19 = sub_10076160C();
  }

  v21 = v19;
  v22 = v20;
  v23 = v27;
  swift_getObjectType();
  v24 = sub_10026C9FC(v21, v22, v23);

  (*(v7 + 8))(v9, v28);
  (*(v15 + 8))(v17, v14);

  return v24;
}

double sub_1003FABB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v48 = sub_10076A1BC();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v44 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10076A1EC();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076710C();
  __chkstk_darwin(v10 - 8);
  v45 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_10076712C();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_10076997C();
  v13 = *(v38 - 8);
  __chkstk_darwin(v38);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000A5D4(&unk_1009520A0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v36 - v18;
  v41 = sub_10000A5D4(&qword_10094DC40);
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v21 = &v36 - v20;
  sub_10000A570(a1, v59);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076349C();
  swift_dynamicCast();
  (*(v17 + 16))(v19, a2, v16);
  sub_10076FCFC();
  v39 = v21;
  sub_10076FDBC();
  v51 = a4;
  v22 = [a4 traitCollection];
  v23 = sub_10076DDDC();
  swift_allocObject();
  v24 = sub_10076DDBC();
  sub_10076348C();
  sub_100016F40(0, &qword_100942F00);
  if (qword_100941020 != -1)
  {
    swift_once();
  }

  v25 = sub_10076D3DC();
  sub_10000A61C(v25, qword_1009A1E58);
  sub_100770B3C();
  v26 = sub_10076C04C();
  v37 = v22;
  v27 = v26;
  v59[3] = v26;
  v59[4] = sub_100409428(&qword_100943230, &type metadata accessor for Feature);
  v28 = sub_10000DB7C(v59);
  (*(*(v27 - 8) + 104))(v28, enum case for Feature.measurement_with_labelplaceholder(_:), v27);
  sub_10076C90C();
  sub_10000CD74(v59);
  sub_10076996C();
  sub_10076994C();
  (*(v13 + 8))(v15, v38);
  sub_10076344C();
  v29 = v44;
  sub_10076A1CC();
  (*(v42 + 8))(v9, v43);
  sub_100228E74(v29, v51, v45);
  (*(v46 + 8))(v29, v48);
  swift_allocObject();
  v30 = sub_10076DDBC();
  v57 = v23;
  v58 = &protocol witness table for LayoutViewPlaceholder;
  v56 = v30;
  sub_10000A570(v59, v55);
  v53 = v23;
  v54 = &protocol witness table for LayoutViewPlaceholder;
  v52 = v24;

  v31 = v47;
  sub_10076711C();
  sub_100409428(&qword_10094DF38, &type metadata accessor for LargeHeroBreakoutLayout);
  v32 = v50;
  sub_10076D2AC();
  v34 = v33;

  (*(v49 + 8))(v31, v32);
  sub_10000CD74(v59);
  (*(v40 + 8))(v39, v41);

  return v34;
}

double sub_1003FB38C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_10000A5D4(&unk_1009520A0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22[-v9];
  v11 = sub_10000A5D4(&qword_10094DC40);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22[-v13];
  sub_10000A570(a1, v22);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076382C();
  swift_dynamicCast();
  (*(v8 + 16))(v10, a2, v7);
  sub_10076FCFC();
  sub_10076FDBC();
  v15 = sub_1007637FC();
  v17 = v16;
  v18 = sub_10076381C();
  v19 = sub_10076380C();
  swift_getObjectType();
  v20 = sub_1003E7634(v15, v17, v18, v19, a4);

  (*(v12 + 8))(v14, v11);

  return v20;
}

double sub_1003FB600(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v9 = sub_10077164C();
  v84 = *(v9 - 8);
  v85 = v9;
  __chkstk_darwin(v9);
  v82 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_10076D39C();
  v81 = *(v83 - 8);
  __chkstk_darwin(v83);
  v93 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v12 - 8);
  v89 = &v81 - v13;
  v14 = sub_10000A5D4(&unk_1009520A0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v81 - v16;
  v18 = sub_10000A5D4(&qword_10094DC40);
  v91 = *(v18 - 8);
  v92 = v18;
  __chkstk_darwin(v18);
  v20 = &v81 - v19;
  sub_10000A570(a1, &v106);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076B56C();
  swift_dynamicCast();
  (*(v15 + 16))(v17, a2, v14);
  sub_10076FCFC();
  v90 = v20;
  sub_10076FDBC();
  v21 = v105;
  [a5 pageMarginInsets];
  v110._object = 0x80000001007E1440;
  v110._countAndFlagsBits = 0xD000000000000010;
  v111._countAndFlagsBits = 0;
  v111._object = 0xE000000000000000;
  v22 = sub_1007622EC(v110, v111);
  v24 = sub_1003B5290(v22, v23);
  if (v24 > 2)
  {
    if (v24 - 3 < 2)
    {
      if (qword_1009402A0 != -1)
      {
        swift_once();
      }

      v25 = &xmmword_10099F488;
      goto LABEL_21;
    }

    if (v24 == 5)
    {
      if (qword_1009402A8 != -1)
      {
        swift_once();
      }

      v25 = &xmmword_10099F4E0;
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  if (!v24)
  {
LABEL_15:
    if (qword_100940288 != -1)
    {
      swift_once();
    }

    v25 = &xmmword_10099F380;
    goto LABEL_21;
  }

  if (v24 == 1)
  {
    if (qword_100940290 != -1)
    {
      swift_once();
    }

    v25 = &xmmword_10099F3D8;
  }

  else
  {
    if (qword_100940298 != -1)
    {
      swift_once();
    }

    v25 = &xmmword_10099F430;
  }

LABEL_21:
  v26 = v25[4];
  *&v108[16] = v25[3];
  *&v108[32] = v26;
  v109 = *(v25 + 10);
  v27 = v25[2];
  v107 = v25[1];
  *v108 = v27;
  v106 = *v25;
  v28 = *&v108[40];
  v29 = v109;
  v97 = *&v108[24];
  v98 = *&v108[8];
  v30 = *(&v107 + 1);
  v31 = v27;
  v33 = *(&v106 + 1);
  v32 = v107;
  v34 = v106;
  sub_100375BC0(&v106, v102);
  v102[0] = __PAIR128__(v33, v34);
  v102[1] = __PAIR128__(v30, v32);
  *&v103[0] = v31;
  *(v103 + 8) = v98;
  *(&v103[1] + 8) = v97;
  *(&v103[2] + 1) = v28;
  v104 = v29;
  v109 = v29;
  v106 = __PAIR128__(v33, v34);
  v107 = __PAIR128__(v30, v32);
  *v108 = v103[0];
  *&v108[16] = v103[1];
  *&v108[32] = v103[2];
  [a5 pageMarginInsets];
  v35 = [objc_allocWithZone(type metadata accessor for QuotesLabel()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v96 = sub_1003B52DC(&v106);

  *&v97 = v21;
  sub_10076B53C();
  v37 = v36;
  v38 = sub_100016F40(0, &qword_100942F00);
  if (qword_1009402C8 != -1)
  {
    swift_once();
  }

  v94 = sub_10076D3DC();
  v39 = sub_10000A61C(v94, qword_10099F538);
  *&v98 = a5;
  v40 = [a5 traitCollection];
  v88 = v39;
  v41 = sub_100770B3C();

  sub_10000A5D4(&unk_10094E7E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100784500;
  *(inited + 32) = NSParagraphStyleAttributeName;
  v43 = qword_10093F680;
  v44 = NSParagraphStyleAttributeName;
  if (v43 != -1)
  {
    swift_once();
  }

  v45 = [qword_10099CDD8 paragraphStyleWithBaseWritingDirection:-1];
  v46 = sub_100016F40(0, &qword_10094D748);
  *(inited + 40) = v45;
  *(inited + 64) = v46;
  *(inited + 72) = NSFontAttributeName;
  *(inited + 104) = v38;
  *(inited + 80) = v41;
  v47 = NSFontAttributeName;
  v87 = v41;
  sub_1000FC5F4(inited);
  swift_setDeallocating();
  sub_10000A5D4(&unk_100948B10);
  swift_arrayDestroy();
  v48 = objc_allocWithZone(NSMutableAttributedString);
  v49 = sub_10076FF6C();
  type metadata accessor for Key(0);
  sub_100409428(&qword_100943320, type metadata accessor for Key);
  v50.super.isa = sub_10076FE3C().super.isa;
  v86 = v37;
  isa = v50.super.isa;

  v52 = [v48 initWithString:v49 attributes:isa];

  v95 = v52;
  if (v96)
  {
    v53 = v96;
    sub_1000FC5F4(_swiftEmptyArrayStorage);
    v54 = objc_allocWithZone(NSAttributedString);
    v55 = sub_10076FF6C();
    v56 = sub_10076FE3C().super.isa;

    v57 = [v54 initWithString:v55 attributes:v56];

    v58 = v95;
    [v58 appendAttributedString:v57];
    v59 = [objc_allocWithZone(NSTextAttachment) init];
    [v59 setImage:v53];
    [(UIImage *)v53 size];
    [v59 setBounds:{0.0, -v28, v60, v61}];
    v62 = [objc_opt_self() attributedStringWithAttachment:v59];
    [v58 appendAttributedString:v62];

    sub_100375C20(v102);
  }

  else
  {

    sub_100375C20(v102);
  }

  v63 = v94;
  v64 = *(v94 - 8);
  v65 = v89;
  (*(v64 + 16))(v89, v88, v94);
  (*(v64 + 56))(v65, 0, 1, v63);
  v66 = sub_10076C04C();
  v100 = v66;
  v67 = sub_100409428(&qword_100943230, &type metadata accessor for Feature);
  v101 = v67;
  v68 = sub_10000DB7C(v99);
  v69 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v70 = *(*(v66 - 8) + 104);
  v70(v68, enum case for Feature.measurement_with_labelplaceholder(_:), v66);
  sub_10076C90C();
  sub_10000CD74(v99);
  sub_10076990C();
  sub_10000CFBC(v65, &unk_100943250);
  if (qword_1009402D8 != -1)
  {
    swift_once();
  }

  v71 = sub_10076D9AC();
  sub_10000A61C(v71, qword_10099F568);
  sub_10076D42C();
  if (qword_1009402E0 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v71, qword_10099F580);
  sub_10076D3FC();
  v89 = [objc_allocWithZone(NSStringDrawingContext) init];
  [v89 setMaximumNumberOfLines:0];
  sub_10076B54C();
  if (v72)
  {
    if (qword_1009402D0 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v94, qword_10099F550);
    v100 = v66;
    v101 = v67;
    v73 = sub_10000DB7C(v99);
    v70(v73, v69, v66);
    sub_10076C90C();
    sub_10000CD74(v99);
    v74 = v98;
    sub_10076991C();

    if (qword_1009402E8 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v71, qword_10099F598);
    sub_10076D42C();
    v75 = v74;
    v76 = v93;
    v77 = &off_100911000;
    if (qword_1009402F0 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v71, qword_10099F5B0);
    sub_10076D3FC();
  }

  else
  {
    v75 = v98;
    v76 = v93;
    v77 = &off_100911000;
  }

  if (sub_10076B55C())
  {
    sub_10076BEFC();
    sub_10076BEFC();
    sub_10076D3AC();
    if ((sub_10076B52C() & 1) == 0)
    {
      [v75 v77[255]];
      [v75 v77[255]];
    }

    sub_10076D36C();
    v78 = v95;
    if (qword_1009402F8 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v71, qword_10099F5C8);
    v79 = v82;
    sub_10076D17C();
    sub_10076D40C();

    (*(v84 + 8))(v79, v85);
    (*(v81 + 8))(v76, v83);
    (*(v91 + 8))(v90, v92);
  }

  else
  {

    (*(v91 + 8))(v90, v92);
  }

  return a3;
}

double sub_1003FC5C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_10000A5D4(&unk_1009520A0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - v9;
  v28 = sub_10000A5D4(&qword_10094DC40);
  v11 = *(v28 - 8);
  __chkstk_darwin(v28);
  v13 = &v27 - v12;
  sub_10000A570(a1, &v30);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076B90C();
  swift_dynamicCast();
  (*(v8 + 16))(v10, a2, v7);
  sub_10076FCFC();
  sub_10076FDBC();
  v14 = v33;
  swift_getObjectType();
  v15 = [a4 traitCollection];
  v16 = [v15 horizontalSizeClass];

  if (v16 == 1)
  {
    [a4 pageMarginInsets];
  }

  v29 = v14;

  sub_10000A5D4(&unk_1009520F0);
  if (swift_dynamicCast())
  {
    sub_10000CF78(&v30, *(&v31 + 1));
    v17 = sub_10076968C();
    sub_10000CD74(&v30);
  }

  else
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    sub_10000CFBC(&v30, &qword_10094D3E8);
    v17 = 0;
  }

  v18 = sub_10076B8EC();
  v20 = v19;
  v21 = sub_10076B8FC();
  if (v21)
  {
  }

  v22 = sub_10045B094(a4);
  if (qword_10093FCF0 != -1)
  {
    swift_once();
  }

  v23 = sub_10076063C();
  v24 = sub_10000A61C(v23, qword_10099E180);
  v25 = sub_100293124(v24, a4, v18, v20, v21 != 0, v22, v17 & 1);

  (*(v11 + 8))(v13, v28);

  return v25;
}

uint64_t sub_1003FC9C4(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v11 = sub_10000A5D4(&unk_1009520A0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v35 - v13;
  v15 = sub_10000A5D4(&unk_1009566C0);
  v38 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v35 - v16;
  sub_10000A570(a1, aBlock);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076C61C();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a2, v11);
  sub_10076FDBC();
  v18 = aBlock[6];
  sub_100111DA4();
  v39 = v15;
  v37 = v17;
  sub_10076FD8C();
  if (LOBYTE(aBlock[0]) == 2)
  {
    v36 = sub_10076C56C();
  }

  else
  {
    v36 = LOBYTE(aBlock[0]);
  }

  v19 = sub_10076C5AC();
  v35[1] = swift_getObjectType();
  v20 = [a6 traitCollection];
  v35[0] = v18;
  v21 = v20;
  v22 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v19];
  v23 = [v19 length];
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = v21;
  *(v24 + 32) = v22;
  *(v24 + 40) = 1;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_100027A88;
  *(v25 + 24) = v24;
  aBlock[4] = sub_1003BE1CC;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026610;
  aBlock[3] = &unk_1008945B0;
  v26 = _Block_copy(aBlock);
  v27 = v21;
  v28 = v22;

  [v19 enumerateAttributesInRange:0 options:v23 usingBlock:{0x100000, v26}];

  _Block_release(v26);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
  }

  else
  {
    v30 = v28;
    [a6 pageMarginInsets];
    sub_1003899C8(v28, v36 & 1, a6, v31, v32, v33, v34, a3, a4);

    sub_100414900(v35[0], a6);
    (*(v38 + 8))(v37, v39);
  }

  return result;
}

double sub_1003FCE2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v7 - 8);
  v47 = v46 - v8;
  v9 = sub_10076D39C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_1009520A0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v46 - v15;
  v17 = sub_10000A5D4(&qword_10094DC40);
  v49 = *(v17 - 8);
  v50 = v17;
  __chkstk_darwin(v17);
  v19 = v46 - v18;
  sub_10000A570(a1, aBlock);
  sub_10000A5D4(&qword_1009575A0);
  sub_10075FFAC();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a2, v13);
  sub_10076FCFC();
  v48 = v19;
  sub_10076FDBC();
  if ((sub_10075FF4C() & 1) == 0)
  {
    [a4 pageMarginInsets];
  }

  if (sub_10075FF9C())
  {
    sub_10076BEFC();
    sub_10076D3AC();
    sub_10076D36C();
    (*(v10 + 8))(v12, v9);
    sub_10075FF4C();
  }

  v20 = sub_10075FF6C();
  v21 = [v20 length];

  if (v21 >= 1)
  {
    sub_10075FF7C();
    if (v22)
    {
      if (qword_100940F68 != -1)
      {
        swift_once();
      }

      v23 = sub_10076D3DC();
      sub_10000A61C(v23, qword_1009A1C30);
      v24 = sub_10076C04C();
      v52 = v24;
      v53 = sub_100409428(&qword_100943230, &type metadata accessor for Feature);
      v25 = sub_10000DB7C(aBlock);
      (*(*(v24 - 8) + 104))(v25, enum case for Feature.measurement_with_labelplaceholder(_:), v24);
      sub_10076C90C();
      sub_10000CD74(aBlock);
      sub_10076991C();
    }

    v26 = sub_10075FF6C();
    v46[1] = a4;
    v27 = [a4 traitCollection];
    v28 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v26];
    v29 = [v26 length];
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    *(v30 + 24) = v27;
    *(v30 + 32) = v28;
    *(v30 + 40) = 1;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_100027A88;
    *(v31 + 24) = v30;
    v53 = sub_1003BE1CC;
    v54 = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026610;
    v52 = &unk_100894538;
    v32 = _Block_copy(aBlock);
    v33 = v27;
    v34 = v28;

    [v26 enumerateAttributesInRange:0 options:v29 usingBlock:{0x100000, v32}];

    _Block_release(v32);
    LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

    if (v33)
    {
      __break(1u);
    }

    else
    {
      v35 = qword_100940F60;
      v26 = v34;
      if (v35 == -1)
      {
LABEL_12:
        v36 = sub_10076D3DC();
        v37 = sub_10000A61C(v36, qword_1009A1C18);
        v38 = *(v36 - 8);
        v39 = v47;
        (*(v38 + 16))(v47, v37, v36);
        (*(v38 + 56))(v39, 0, 1, v36);
        v40 = sub_10076C04C();
        v52 = v40;
        v53 = sub_100409428(&qword_100943230, &type metadata accessor for Feature);
        v41 = sub_10000DB7C(aBlock);
        (*(*(v40 - 8) + 104))(v41, enum case for Feature.measurement_with_labelplaceholder(_:), v40);
        sub_10076C90C();
        sub_10000CD74(aBlock);
        sub_10076990C();

        sub_10000CFBC(v39, &unk_100943250);
        if (qword_10093F990 != -1)
        {
          swift_once();
        }

        v42 = sub_10076D9AC();
        sub_10000A61C(v42, qword_10099D738);
        sub_10076D42C();
        if (qword_10093F998 != -1)
        {
          swift_once();
        }

        sub_10000A61C(v42, qword_10099D750);
        sub_10076D3FC();

        goto LABEL_17;
      }
    }

    swift_once();
    goto LABEL_12;
  }

LABEL_17:
  sub_100770ABC();
  v44 = v43;
  (*(v49 + 8))(v48, v50);

  return v44;
}

double sub_1003FD79C(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v112 = a5;
  ObjectType = a2;
  v7 = sub_1007637CC();
  v93 = *(v7 - 8);
  v94 = v7;
  __chkstk_darwin(v7);
  v92 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076997C();
  v100 = *(v9 - 8);
  v101 = v9;
  __chkstk_darwin(v9);
  v99 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076D3DC();
  v107 = *(v11 - 8);
  v108 = v11;
  __chkstk_darwin(v11);
  v106 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100762A3C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v109 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v82 - v17;
  v19 = sub_1007637AC();
  v103 = *(v19 - 8);
  v104 = v19;
  __chkstk_darwin(v19);
  v87 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v82 - v22;
  v24 = sub_10000A5D4(&unk_1009520A0);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v82 - v26;
  v28 = sub_10000A5D4(&qword_10094DC40);
  v90 = *(v28 - 8);
  v91 = v28;
  __chkstk_darwin(v28);
  v30 = &v82 - v29;
  sub_10000A570(a1, v119);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076016C();
  swift_dynamicCast();
  (*(v25 + 16))(v27, ObjectType, v24);
  v31 = v112;
  sub_10076FCFC();
  v89 = v30;
  sub_10076FDBC();
  v32 = v119[5];
  v33 = sub_10076015C();
  sub_10076012C();
  ObjectType = swift_getObjectType();
  sub_100495254(v33, v18, v31, v23);

  v34 = *(v14 + 8);
  v88 = v18;
  v34(v18, v13);
  v35 = sub_10076DDDC();
  swift_allocObject();
  v36 = sub_10076DDBC();
  swift_allocObject();
  v85 = sub_10076DDBC();
  swift_allocObject();
  v84 = sub_10076DDBC();
  v102 = v23;
  sub_10076378C();
  v111 = v35;
  v37 = v109;
  swift_allocObject();
  v38 = sub_10076DDBC();
  sub_10076012C();
  v39 = (*(v14 + 88))(v37, v13);
  v86 = v36;
  v83 = v38;
  if (v39 != enum case for PrivacyTypeStyle.productPage(_:))
  {
    if (v39 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v39 == enum case for PrivacyTypeStyle.detailPage(_:))
    {
      v46 = v106;
      if (qword_100940DD0 != -1)
      {
        swift_once();
      }

      v47 = v108;
      v48 = sub_10000A61C(v108, qword_1009A1768);
      (*(v107 + 16))(v46, v48, v47);
      v45 = 4;
      goto LABEL_13;
    }

    v42 = v106;
    if (qword_100940DC8 != -1)
    {
      swift_once();
    }

    v43 = v108;
    v44 = sub_10000A61C(v108, qword_1009A1750);
    (*(v107 + 16))(v42, v44, v43);
    v34(v37, v13);
    goto LABEL_9;
  }

  if (qword_100940DC8 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v40 = v108;
    v41 = sub_10000A61C(v108, qword_1009A1750);
    (*(v107 + 16))(v106, v41, v40);
LABEL_9:
    v45 = 1;
LABEL_13:
    v109 = v45;
    sub_100016F40(0, &qword_100942F00);
    v49 = v112;
    v50 = [v112 traitCollection];
    v51 = sub_100770B3C();

    sub_10076013C();
    v52 = sub_10076C04C();
    v119[3] = v52;
    v98 = sub_100409428(&qword_100943230, &type metadata accessor for Feature);
    v119[4] = v98;
    v53 = sub_10000DB7C(v119);
    v105 = v32;
    v54 = *(v52 - 8);
    v55 = *(v54 + 104);
    v97 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v95 = v54 + 104;
    v96 = v55;
    v55(v53);
    v56 = v51;
    sub_10076C90C();
    sub_10000CD74(v119);
    v57 = v99;
    v82 = v56;
    sub_10076996C();
    sub_10076994C();
    v58 = v101;
    v32 = v100[1];
    v32(v57, v101);
    if (qword_100940DD8 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v108, qword_1009A1780);
    v59 = [v49 traitCollection];
    v60 = sub_100770B3C();

    sub_10076014C();
    v118[3] = v52;
    v118[4] = v98;
    v61 = sub_10000DB7C(v118);
    v96(v61, v97, v52);
    v62 = v60;
    sub_10076C90C();
    sub_10000CD74(v118);
    sub_10076996C();
    sub_10076994C();
    v32(v57, v58);
    v63 = sub_10076010C();
    v64 = v63;
    if (v63 >> 62)
    {
      v74 = v63;
      v75 = sub_10077158C();
      v64 = v74;
      v65 = v75;
      v100 = v62;
      if (!v75)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v65 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v100 = v62;
      if (!v65)
      {
        goto LABEL_29;
      }
    }

    v66 = v64;
    v109 = type metadata accessor for PrivacyCategoryView();
    if (v65 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_31:
    swift_once();
  }

  v67 = 0;
  v68 = v66;
  v69 = _swiftEmptyArrayStorage;
  do
  {
    if ((v66 & 0xC000000000000001) != 0)
    {
      v70 = sub_10077149C();
    }

    else
    {
      v70 = *(v68 + 8 * v67 + 32);
    }

    v71 = sub_1001052B0(v70, v112);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v69 = sub_10049D2D0(0, v69[2] + 1, 1, v69);
    }

    v73 = v69[2];
    v72 = v69[3];
    if (v73 >= v72 >> 1)
    {
      v69 = sub_10049D2D0((v72 > 1), v73 + 1, 1, v69);
    }

    ++v67;

    v116 = v111;
    v117 = &protocol witness table for LayoutViewPlaceholder;
    *&v115 = v71;
    v69[2] = v73 + 1;
    sub_100012498(&v115, &v69[5 * v73 + 4]);
    v68 = v66;
  }

  while (v65 != v67);
LABEL_29:

  v76 = [v112 traitCollection];
  sub_10076E20C();

  v77 = v111;
  swift_allocObject();
  v78 = sub_10076DDBC();
  (*(v103 + 16))(v87, v102, v104);
  v116 = v77;
  v117 = &protocol witness table for LayoutViewPlaceholder;
  *&v115 = v86;
  v114[23] = v77;
  v114[24] = &protocol witness table for LayoutViewPlaceholder;
  v114[19] = &protocol witness table for LayoutViewPlaceholder;
  v114[20] = v85;
  v114[18] = v77;
  v114[14] = &protocol witness table for LayoutViewPlaceholder;
  v114[15] = v84;
  v114[13] = v77;
  v114[9] = &protocol witness table for LayoutViewPlaceholder;
  v114[10] = v78;
  ObjectType = v78;
  v114[8] = v77;
  v114[5] = v83;
  sub_10000A570(v119, v114);
  sub_10000A570(v118, &v113);

  sub_10076012C();
  v79 = v92;
  sub_1007637BC();
  sub_100409428(&qword_10094F870, &type metadata accessor for PrivacyTypeLayout);
  v80 = v94;
  sub_10076D2AC();

  (*(v93 + 8))(v79, v80);
  sub_10000CD74(v118);
  sub_10000CD74(v119);
  (*(v107 + 8))(v106, v108);
  (*(v103 + 8))(v102, v104);
  (*(v90 + 8))(v89, v91);

  return a3;
}