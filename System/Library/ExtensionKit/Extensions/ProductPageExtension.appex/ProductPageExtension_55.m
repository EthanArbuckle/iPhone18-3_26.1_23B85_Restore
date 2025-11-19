uint64_t sub_100631B20()
{
  v1 = v0;
  v2 = sub_10076D1AC();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v8 = sub_1007706CC();

  if ((v8 & 1) != 0 && v1[OBJC_IVAR____TtC20ProductPageExtension29TodayCardParagraphOverlayView_isExpanded] == 1)
  {
    if (qword_100940F20 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  if (qword_100940F20 != -1)
  {
LABEL_7:
    swift_once();
  }

LABEL_6:
  v9 = sub_10076D3DC();
  v10 = sub_10000A61C(v9, qword_1009A1B58);
  (*(*(v9 - 8) + 16))(v6, v10, v9);
  (*(v3 + 104))(v6, enum case for FontSource.useCase(_:), v2);
  v14[3] = v2;
  v14[4] = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v14);
  (*(v3 + 16))(v11, v6, v2);
  sub_10076D9BC();
  return (*(v3 + 8))(v6, v2);
}

char *sub_100631DF4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v33 = sub_10076F9AC();
  v10 = *(v33 - 8);
  __chkstk_darwin(v33);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076771C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v17 - 8);
  v19 = &v33 - v18;
  v5[OBJC_IVAR____TtC20ProductPageExtension29TodayCardParagraphOverlayView_isExpanded] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension29TodayCardParagraphOverlayView_sizeCategory] = 7;
  if (qword_100940F20 != -1)
  {
    swift_once();
  }

  v20 = sub_10076D3DC();
  v21 = sub_10000A61C(v20, qword_1009A1B58);
  v22 = *(v20 - 8);
  (*(v22 + 16))(v19, v21, v20);
  v23 = *(v22 + 56);
  v23(v19, 0, 1, v20);
  (*(v14 + 104))(v16, enum case for DirectionalTextAlignment.none(_:), v13);
  v24 = objc_allocWithZone(sub_1007626BC());
  v25 = sub_1007626AC();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension29TodayCardParagraphOverlayView_label] = v25;
  memset(v37, 0, sizeof(v37));
  memset(v36, 0, sizeof(v36));
  v26 = v25;
  sub_10076F95C();
  sub_10000CFBC(v36, &unk_1009434C0);
  sub_10000CFBC(v37, &unk_1009434C0);
  sub_100770B9C();

  (*(v10 + 8))(v12, v33);
  v35.receiver = v5;
  v35.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  v28 = OBJC_IVAR____TtC20ProductPageExtension29TodayCardParagraphOverlayView_label;
  v29 = *&v27[OBJC_IVAR____TtC20ProductPageExtension29TodayCardParagraphOverlayView_label];
  v23(v19, 1, 1, v20);
  v30 = v27;
  v31 = v29;
  sub_1007625DC();

  [*&v27[v28] setAccessibilityIgnoresInvertColors:1];
  [v30 addSubview:*&v27[v28]];

  return v30;
}

double sub_10063229C(double a1)
{
  v3 = sub_10076D9AC();
  v17 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10077164C();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 layoutMargins];
  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29TodayCardParagraphOverlayView_label];
  [v11 sizeThatFits:{a1 - v12 - v13, 1.79769313e308}];
  if (qword_100941390 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v3, qword_1009A2750);
  sub_10076D17C();
  sub_10076D40C();
  v14 = *(v7 + 8);
  v14(v10, v6);
  [v11 firstBaselineFromTop];
  sub_100631B20();
  sub_10076D17C();
  sub_10076D40C();
  v14(v10, v6);
  (*(v17 + 8))(v5, v3);
  [v11 lastBaselineFromBottom];
  return a1;
}

id sub_10063258C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10077164C();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27.receiver = v1;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, "layoutSubviews", v5);
  sub_10076422C();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if (qword_100941390 != -1)
  {
    swift_once();
  }

  v16 = sub_10076D9AC();
  sub_10000A61C(v16, qword_1009A2750);
  sub_10076D17C();
  sub_10076D40C();
  v18 = v17;
  (*(v4 + 8))(v7, v3);
  v19 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29TodayCardParagraphOverlayView_label];
  [v19 sizeThatFits:{v13, v15}];
  v21 = v20;
  v28.origin.x = v9;
  v28.origin.y = v11;
  v28.size.width = v13;
  v28.size.height = v15;
  MinX = CGRectGetMinX(v28);
  v29.origin.x = v9;
  v29.origin.y = v11;
  v29.size.width = v13;
  v29.size.height = v15;
  MinY = CGRectGetMinY(v29);
  [v19 firstBaselineFromTop];
  v25 = MinY + v18 - v24;
  v30.origin.x = v9;
  v30.origin.y = v11;
  v30.size.width = v13;
  v30.size.height = v15;
  return [v19 setFrame:{MinX, v25, CGRectGetWidth(v30), v21}];
}

unint64_t sub_1006329B0()
{
  result = qword_100961F28;
  if (!qword_100961F28)
  {
    sub_10076852C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100961F28);
  }

  return result;
}

uint64_t sub_100632A08(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v5 = v4;
  v48[1] = a2;
  v7 = a4;
  v52 = sub_10076C5FC();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&qword_10094A450);
  __chkstk_darwin(v9 - 8);
  v11 = v48 - v10;
  v12 = sub_10076C7EC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076850C();
  v16 = *(v13 + 48);
  if (v16(v11, 1, v12) == 1)
  {
    (*(v13 + 16))(v15, a3, v12);
    if (v16(v11, 1, v12) != 1)
    {
      sub_10000CFBC(v11, &qword_10094A450);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
  }

  v17 = v4[OBJC_IVAR____TtC20ProductPageExtension29TodayCardParagraphOverlayView_sizeCategory];
  v4[OBJC_IVAR____TtC20ProductPageExtension29TodayCardParagraphOverlayView_sizeCategory] = v7;
  if (v7 == 7)
  {
    if (v17 == 7)
    {
      goto LABEL_10;
    }

LABEL_9:
    [v4 setNeedsLayout];
    goto LABEL_10;
  }

  if (v17 == 7)
  {
    goto LABEL_9;
  }

  switch(v7)
  {
    case 6:
      if (v17 != 6)
      {
        goto LABEL_9;
      }

      break;
    case 5:
      if (v17 != 5)
      {
        goto LABEL_9;
      }

      break;
    case 4:
      if (v17 != 4)
      {
        goto LABEL_9;
      }

      break;
    default:
      if ((v17 - 7) > 0xFFFFFFFC || v17 != v7)
      {
        goto LABEL_9;
      }

      break;
  }

LABEL_10:
  v53 = v13;
  v54 = v12;
  v51 = v15;
  v18 = sub_10076C7BC();
  [v5 setBackgroundColor:v18];

  v19 = [v5 traitCollection];
  if (v7 != 4)
  {
    sub_10076C31C();
    sub_10076C31C();
  }

  [v19 layoutDirection];
  sub_1007708DC();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  [v5 setLayoutMargins:{v21, v23, v25, v27}];
  sub_10076851C();
  v28 = *&v5[OBJC_IVAR____TtC20ProductPageExtension29TodayCardParagraphOverlayView_label];
  v29 = sub_10076C5AC();
  v30 = [v5 traitCollection];
  v31 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v29];
  v32 = [v29 length];
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = v30;
  *(v33 + 32) = v31;
  *(v33 + 40) = 1;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1000275EC;
  *(v34 + 24) = v33;
  aBlock[4] = sub_1000ACB04;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026610;
  aBlock[3] = &unk_10089DD80;
  v35 = _Block_copy(aBlock);
  v36 = v30;
  v37 = v31;

  [v29 enumerateAttributesInRange:0 options:v32 usingBlock:{0x100000, v35}];

  _Block_release(v35);
  LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

  if (v35)
  {
    __break(1u);
  }

  else
  {
    [v28 setAttributedText:v37];

    v39 = v49;
    sub_10076C60C();
    v40 = v50;
    v41 = v52;
    v42 = (*(v50 + 88))(v39, v52);
    if (v42 == enum case for Paragraph.Alignment.left(_:))
    {
      v43 = 0;
      v45 = v53;
      v44 = v54;
    }

    else
    {
      v45 = v53;
      v44 = v54;
      if (v42 == enum case for Paragraph.Alignment.center(_:))
      {
        v43 = 1;
      }

      else if (v42 == enum case for Paragraph.Alignment.right(_:))
      {
        v43 = 2;
      }

      else if (v42 == enum case for Paragraph.Alignment.justified(_:))
      {
        v43 = 3;
      }

      else if (v42 == enum case for Paragraph.Alignment.localized(_:))
      {
        v43 = 4;
      }

      else
      {
        (*(v40 + 8))(v39, v41);
        v43 = 0;
      }
    }

    [v28 setTextAlignment:v43];
    v46 = v51;
    v47 = sub_10076C7CC();
    [v28 setTextColor:v47];

    return (*(v45 + 8))(v46, v44);
  }

  return result;
}

uint64_t sub_1006330C0()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100633118(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_10063317C()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075F26C();
  sub_100633320(&qword_100949A88, &type metadata accessor for AppShowcase);
  sub_10076332C();
  v4 = v10;
  if (!v10)
  {
    return 0.0;
  }

  v5 = sub_100630CB4();
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  (*(v1 + 8))(v3, v0);
  sub_10044328C(v4, v5);
  v7 = v6;

  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_100633320(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10063336C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v30 = a2;
  v4 = sub_10000A5D4(&unk_100946800);
  __chkstk_darwin(v4 - 8);
  v6 = (v29 - v5);
  v7 = sub_10076B2EC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v29 - v12;
  v14 = *&v2[OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_titleLabel];
  sub_10076A2DC();
  v15 = sub_10076FF6C();

  [v14 setText:v15];

  sub_10076A2BC();
  (*(v8 + 104))(v10, enum case for ArcadeDownloadPackSuggestionsPagePrimaryActionKind.getAll(_:), v7);
  sub_100634CBC();
  v16 = sub_10076FF1C();
  v17 = *(v8 + 8);
  v17(v10, v7);
  v17(v13, v7);
  if ((v16 & 1) != 0 || (v18 = sub_10076A28C()) == 0)
  {
    v21 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);
    (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
  }

  else
  {
    v19 = v18;
    v20 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);

    sub_10076A2AC();
    *v6 = v19;
    (*(*(v20 - 8) + 56))(v6, 0, 1, v20);
  }

  v22 = *&v3[OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_gamesView];
  v23 = sub_10076A27C();
  v24 = v23;
  if (!(v23 >> 62))
  {
    v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_7;
    }

LABEL_15:

    v28 = _swiftEmptyArrayStorage;
LABEL_16:
    sub_100545FF4(v28, v6, 0, v30);

    [v3 setNeedsLayout];
    [v3 invalidateIntrinsicContentSize];
    sub_100634498();

    return sub_100128BA0(v6);
  }

  v25 = sub_10077158C();
  if (!v25)
  {
    goto LABEL_15;
  }

LABEL_7:
  v31 = _swiftEmptyArrayStorage;
  result = sub_1007714EC();
  if ((v25 & 0x8000000000000000) == 0)
  {
    v29[1] = v22;
    v27 = 0;
    do
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        sub_10077149C();
      }

      else
      {
      }

      ++v27;

      sub_10076916C();

      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      sub_1007714DC();
    }

    while (v25 != v27);

    v28 = v31;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id sub_100633784()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:150.0 damping:25.0 initialVelocity:{0.0, 0.0}];
  qword_100961FD8 = result;
  return result;
}

char *sub_1006337D4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_10076771C();
  v60 = *(v8 - 8);
  v61 = v8;
  __chkstk_darwin(v8);
  v62 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v10 - 8);
  v59 = &v53 - v11;
  v57 = sub_100760B4C();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v58 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076D1AC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_10076D9AC();
  v17 = *(v56 - 8);
  __chkstk_darwin(v56);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000A5D4(&qword_1009622B0);
  __chkstk_darwin(v20 - 8);
  v22 = &v53 - v21;
  v54 = OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_wordmarkView;
  v23 = enum case for Wordmark.arcade(_:);
  v24 = sub_10076C43C();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v22, v23, v24);
  (*(v25 + 56))(v22, 0, 1, v24);
  if (qword_100941080 != -1)
  {
    swift_once();
  }

  v26 = sub_10076D3DC();
  v53 = sub_10000A61C(v26, qword_1009A1F78);
  v27 = *(v26 - 8);
  v28 = *(v27 + 16);
  v28(v16, v53, v26);
  (*(v14 + 104))(v16, enum case for FontSource.useCase(_:), v13);
  v67 = v13;
  v68 = &protocol witness table for FontSource;
  v29 = sub_10000DB7C(v66);
  (*(v14 + 16))(v29, v16, v13);
  sub_10076D9BC();
  (*(v14 + 8))(v16, v13);
  (*(v55 + 104))(v58, enum case for WordmarkView.Alignment.leading(_:), v57);
  v30 = v56;
  v67 = v56;
  v68 = &protocol witness table for StaticDimension;
  v31 = sub_10000DB7C(v66);
  (*(v17 + 16))(v31, v19, v30);
  v32 = objc_allocWithZone(sub_100760B6C());
  v33 = sub_100760B3C();
  (*(v17 + 8))(v19, v30);
  v34 = v63;
  *(v63 + v54) = v33;
  v35 = OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_titleLabel;
  v36 = v59;
  v28(v59, v53, v26);
  (*(v27 + 56))(v36, 0, 1, v26);
  (*(v60 + 104))(v62, enum case for DirectionalTextAlignment.none(_:), v61);
  v37 = objc_allocWithZone(sub_1007626BC());
  *&v34[v35] = sub_1007626AC();
  v38 = OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_gamesView;
  type metadata accessor for ArcadeDownloadPackGamesCardView(0);
  *&v34[v38] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v39 = &v34[OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_impressionsUpdateBlock];
  *v39 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  *(v39 + 1) = 0;
  v40 = ObjectType;
  v65.receiver = v34;
  v65.super_class = ObjectType;
  v41 = objc_msgSendSuper2(&v65, "initWithFrame:", a1, a2, a3, a4);
  v42 = *&v41[OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_wordmarkView];
  v43 = v41;
  [v43 addSubview:v42];
  v44 = OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_titleLabel;
  [v43 addSubview:*&v43[OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_titleLabel]];
  [v43 addSubview:*&v43[OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_gamesView]];
  [*&v43[v44] setTextAlignment:1];
  [*&v43[v44] setNumberOfLines:0];
  v45 = *&v43[v44];
  v46 = [v43 traitCollection];
  v47 = [v46 preferredContentSizeCategory];

  LOBYTE(v46) = sub_10077084C();
  if (v46)
  {
    v48 = 4;
  }

  else
  {
    v48 = 1;
  }

  [v45 setTextAlignment:{v48, v53}];
  sub_10000A5D4(&unk_100945BF0);
  v49 = swift_allocObject();
  v63 = xmmword_100783DD0;
  *(v49 + 16) = xmmword_100783DD0;
  *(v49 + 32) = sub_10076E88C();
  *(v49 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v67 = v40;
  v66[0] = v43;
  v50 = v43;
  sub_100770C5C();
  swift_unknownObjectRelease();

  sub_10000CD74(v66);
  v51 = swift_allocObject();
  *(v51 + 16) = v63;
  *(v51 + 32) = sub_10076E59C();
  *(v51 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v67 = v40;
  v66[0] = v50;
  sub_100770C5C();
  swift_unknownObjectRelease();

  sub_10000CD74(v66);
  return v50;
}

uint64_t sub_10063406C@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_10076D65C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v21 - v8;
  __chkstk_darwin(v10);
  v12 = v21 - v11;
  *(swift_allocObject() + 16) = v1;
  v13 = v1;
  sub_10076D63C();
  v24 = *&v13[OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_wordmarkView];
  sub_100760B6C();
  sub_10076D2DC();
  sub_10076D64C();
  sub_10000CD74(v21);
  v14 = *(v4 + 8);
  v14(v6, v3);
  v15 = *&v13[OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_titleLabel];
  v22 = sub_1007626BC();
  v23 = &protocol witness table for UILabel;
  v21[0] = v15;
  *(swift_allocObject() + 16) = v13;
  v16 = v13;
  v17 = v15;
  sub_10076D64C();

  v14(v9, v3);
  sub_10000CD74(v21);
  v18 = *&v16[OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_gamesView];
  v22 = type metadata accessor for ArcadeDownloadPackGamesCardView(0);
  v23 = &protocol witness table for CustomLayoutView;
  v21[0] = v18;
  a1[3] = v3;
  a1[4] = &protocol witness table for VerticalStack;
  sub_10000DB7C(a1);
  v19 = v18;
  sub_10076D64C();
  v14(v12, v3);
  return sub_10000CD74(v21);
}

uint64_t sub_100634330(int a1, id a2)
{
  v2 = [a2 traitCollection];
  sub_1007706CC();

  return sub_10076D5CC();
}

void sub_100634498()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_gamesView];
  CGAffineTransformMakeScale(&v6, 0.9, 0.9);
  [v1 setTransform:&v6];
  if (qword_100941398 != -1)
  {
    swift_once();
  }

  v2 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_100961FD8 timingParameters:0.0];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *&v6.tx = sub_100634D4C;
  *&v6.ty = v3;
  *&v6.a = _NSConcreteStackBlock;
  *&v6.b = 1107296256;
  *&v6.c = sub_10009AEDC;
  *&v6.d = &unk_10089DDE0;
  v4 = _Block_copy(&v6);
  v5 = v0;

  [v2 addAnimations:v4];
  _Block_release(v4);
  [v2 startAnimation];
  sub_10054B738();
}

uint64_t sub_1006346EC()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "layoutSubviews");
  sub_10063406C(v5);
  sub_10000CF78(v5, v5[3]);
  [v0 bounds];
  v1 = [v0 traitCollection];
  sub_10076E0EC();

  sub_10000CD74(v5);
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_impressionsUpdateBlock];

  v2(v3);
}

id sub_100634894()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_titleLabel];
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = sub_10077084C();
  if (v2)
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  [v1 setTextAlignment:v4];
  [v0 setNeedsLayout];

  return [v0 invalidateIntrinsicContentSize];
}

uint64_t sub_10063499C(uint64_t a1)
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 2) = v4;
  *(v5 + 3) = v3;
  *(v5 + 4) = a1;
  v6 = (v1 + OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_impressionsUpdateBlock);
  *v6 = sub_100634E38;
  v6[1] = v5;

  v7 = *v6;

  (v7)(v8);
}

void sub_100634AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_gamesView);

      v9 = v5;
      sub_10054D6D8(v8, a3, v9);
    }
  }
}

double sub_100634C10()
{
  sub_10063406C(v3);
  sub_10000CF78(v3, v3[3]);
  sub_10076E0FC();
  v1 = v0;
  sub_10000CD74(v3);
  return v1;
}

unint64_t sub_100634CBC()
{
  result = qword_100962028;
  if (!qword_100962028)
  {
    sub_10076B2EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100962028);
  }

  return result;
}

uint64_t sub_100634D14()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100634D4C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_gamesView);
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform:v3];
}

uint64_t sub_100634D98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100634DB8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100634DF0()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100634E44()
{
  v0 = sub_10076771C();
  v40 = *(v0 - 8);
  v41 = v0;
  __chkstk_darwin(v0);
  v42 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v2 - 8);
  v39 = &v33 - v3;
  v37 = sub_100760B4C();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076D1AC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10076D9AC();
  v9 = *(v36 - 8);
  __chkstk_darwin(v36);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&qword_1009622B0);
  __chkstk_darwin(v12 - 8);
  v14 = &v33 - v13;
  v34 = OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_wordmarkView;
  v15 = enum case for Wordmark.arcade(_:);
  v16 = sub_10076C43C();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v14, v15, v16);
  (*(v17 + 56))(v14, 0, 1, v16);
  if (qword_100941080 != -1)
  {
    swift_once();
  }

  v18 = sub_10076D3DC();
  v33 = sub_10000A61C(v18, qword_1009A1F78);
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v20(v8, v33, v18);
  (*(v6 + 104))(v8, enum case for FontSource.useCase(_:), v5);
  v45 = v5;
  v46 = &protocol witness table for FontSource;
  v21 = sub_10000DB7C(v44);
  (*(v6 + 16))(v21, v8, v5);
  sub_10076D9BC();
  (*(v6 + 8))(v8, v5);
  (*(v35 + 104))(v38, enum case for WordmarkView.Alignment.leading(_:), v37);
  v22 = v36;
  v45 = v36;
  v46 = &protocol witness table for StaticDimension;
  v23 = sub_10000DB7C(v44);
  (*(v9 + 16))(v23, v11, v22);
  v24 = objc_allocWithZone(sub_100760B6C());
  v25 = sub_100760B3C();
  (*(v9 + 8))(v11, v22);
  v26 = v43;
  v27 = v33;
  *(v43 + v34) = v25;
  v28 = OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_titleLabel;
  v29 = v39;
  v20(v39, v27, v18);
  (*(v19 + 56))(v29, 0, 1, v18);
  (*(v40 + 104))(v42, enum case for DirectionalTextAlignment.none(_:), v41);
  v30 = objc_allocWithZone(sub_1007626BC());
  *(v26 + v28) = sub_1007626AC();
  v31 = OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_gamesView;
  type metadata accessor for ArcadeDownloadPackGamesCardView(0);
  *(v26 + v31) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v32 = (v26 + OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_impressionsUpdateBlock);
  *v32 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v32[1] = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_100635488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = sub_100763F9C();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = enum case for ComponentSeparator.Position.top(_:);
  v11 = *(v6 + 104);
  (v11)(v9, enum case for ComponentSeparator.Position.top(_:), v5, v7);
  v12 = sub_100763F8C();
  v14 = v13;
  v32 = v6;
  v29 = *(v6 + 8);
  v29(v9, v5);
  v34._countAndFlagsBits = v12;
  v34._object = v14;
  v30 = a1;
  v31 = a2;
  LOBYTE(v12) = sub_10077003C(v34);

  if (v12 & 1) != 0 || (v10 = enum case for ComponentSeparator.Position.bottom(_:), v11(v9, enum case for ComponentSeparator.Position.bottom(_:), v5), v15 = sub_100763F8C(), v17 = v16, v29(v9, v5), v35._countAndFlagsBits = v15, v35._object = v17, LOBYTE(v15) = sub_10077003C(v35), , (v15) || (v10 = enum case for ComponentSeparator.Position.leading(_:), v11(v9, enum case for ComponentSeparator.Position.leading(_:), v5), v18 = sub_100763F8C(), v20 = v19, v29(v9, v5), v36._countAndFlagsBits = v18, v36._object = v20, LOBYTE(v18) = sub_10077003C(v36), , (v18) || (v10 = enum case for ComponentSeparator.Position.trailing(_:), v11(v9, enum case for ComponentSeparator.Position.trailing(_:), v5), v21 = sub_100763F8C(), v23 = v22, v29(v9, v5), v37._countAndFlagsBits = v21, v37._object = v23, v24 = sub_10077003C(v37), , v24))
  {
    v25 = v33;
    v11(v33, v10, v5);
    v26 = 0;
  }

  else
  {
    v26 = 1;
    v25 = v33;
  }

  return (*(v32 + 56))(v25, v26, 1, v5);
}

char *sub_100635754(double a1, double a2, double a3, double a4)
{
  v9 = sub_100763F9C();
  v10 = __chkstk_darwin(v9);
  (*(v12 + 104))(&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ComponentSeparator.Position.bottom(_:), v10);
  sub_100763FAC();
  v13 = OBJC_IVAR____TtC20ProductPageExtension26SeparatorSupplementaryView_lineView;
  *&v4[v13] = [objc_allocWithZone(UIView) init];
  v14 = OBJC_IVAR____TtC20ProductPageExtension26SeparatorSupplementaryView_lineColor;
  *&v4[v14] = [objc_opt_self() separatorColor];
  v15 = type metadata accessor for SeparatorSupplementaryView();
  v19.receiver = v4;
  v19.super_class = v15;
  v16 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  [v16 setUserInteractionEnabled:0];
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v16 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v17 = OBJC_IVAR____TtC20ProductPageExtension26SeparatorSupplementaryView_lineView;
  [*&v16[OBJC_IVAR____TtC20ProductPageExtension26SeparatorSupplementaryView_lineView] setBackgroundColor:*&v16[OBJC_IVAR____TtC20ProductPageExtension26SeparatorSupplementaryView_lineColor]];
  [v16 addSubview:*&v16[v17]];

  return v16;
}

void sub_1006359A8()
{
  v1 = v0;
  v2 = sub_100763FDC();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 setNeedsLayout];
  v7 = OBJC_IVAR____TtC20ProductPageExtension26SeparatorSupplementaryView_separator;
  swift_beginAccess();
  (*(v3 + 16))(v6, &v1[v7], v2);
  v8 = sub_100763F5C();
  (*(v3 + 8))(v6, v2);
  if (!v8)
  {
    v8 = [objc_opt_self() separatorColor];
  }

  v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtension26SeparatorSupplementaryView_lineColor];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension26SeparatorSupplementaryView_lineColor] = v8;
  v10 = v8;

  [*&v1[OBJC_IVAR____TtC20ProductPageExtension26SeparatorSupplementaryView_lineView] setBackgroundColor:v10];
}

double sub_100635B28(double a1)
{
  v25 = sub_100763F9C();
  v27 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100763FDC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v23 - v10;
  v12 = OBJC_IVAR____TtC20ProductPageExtension26SeparatorSupplementaryView_separator;
  swift_beginAccess();
  v13 = *(v6 + 16);
  v26 = v1;
  v13(v11, v1 + v12, v5);
  sub_100763FBC();
  v14 = *(v6 + 8);
  v15 = v11;
  v16 = v27;
  v17 = v25;
  v14(v15, v5);
  v18 = (*(v16 + 88))(v4, v17);
  if (v18 == enum case for ComponentSeparator.Position.top(_:) || v18 == enum case for ComponentSeparator.Position.bottom(_:))
  {
    v13(v8, v26 + v12, v5);
    sub_100763F7C();
    v14(v8, v5);
  }

  else
  {
    v24 = v14;
    if (v18 == enum case for ComponentSeparator.Position.leading(_:) || v18 == enum case for ComponentSeparator.Position.trailing(_:))
    {
      v13(v8, v26 + v12, v5);
      sub_100763F7C();
      a1 = v21;
      v24(v8, v5);
    }

    else
    {
      (*(v16 + 8))(v4, v17);
      return 0.0;
    }
  }

  return a1;
}

id sub_100635FFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeparatorSupplementaryView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SeparatorSupplementaryView()
{
  result = qword_100962068;
  if (!qword_100962068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100636114()
{
  result = sub_100763FDC();
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

void sub_1006361B4()
{
  v1 = sub_100763F9C();
  v2 = __chkstk_darwin(v1);
  (*(v4 + 104))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ComponentSeparator.Position.bottom(_:), v2);
  sub_100763FAC();
  v5 = OBJC_IVAR____TtC20ProductPageExtension26SeparatorSupplementaryView_lineView;
  *(v0 + v5) = [objc_allocWithZone(UIView) init];
  v6 = OBJC_IVAR____TtC20ProductPageExtension26SeparatorSupplementaryView_lineColor;
  *(v0 + v6) = [objc_opt_self() separatorColor];
  sub_10077156C();
  __break(1u);
}

void sub_100636324(void *a1)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_backButtonAction;
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_backButtonAction);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_backButtonAction) = a1;
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_backButton);
    v5 = a1;
    [v4 removeAction:v3 forControlEvents:64];
    v6 = *(v1 + v2);
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = a1;
  v6 = a1;
  if (a1)
  {
LABEL_3:
    v7 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_backButton);
    v8 = v6;
    [v7 addAction:v8 forControlEvents:64];
  }

LABEL_4:
}

char *sub_1006363F8(int a1)
{
  v2 = v1;
  LODWORD(v58) = a1;
  ObjectType = swift_getObjectType();
  v4 = sub_10076361C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v57 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v60 = &v53 - v8;
  __chkstk_darwin(v9);
  v59 = &v53 - v10;
  v11 = sub_10076771C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v15 - 8);
  v17 = &v53 - v16;
  v18 = OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_contentView;
  *&v2[v18] = [objc_allocWithZone(type metadata accessor for AppPromotionScrollableContentContainerView()) init];
  v19 = OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_backButton;
  v20 = objc_allocWithZone(type metadata accessor for CardHeaderButton());
  *&v2[v19] = sub_1000EB2A0(1u);
  v21 = OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_learnMoreLabel;
  v22 = sub_10076D3DC();
  (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
  v23 = v11;
  v24 = v5;
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.none(_:), v23);
  v25 = objc_allocWithZone(sub_1007626BC());
  *&v2[v21] = sub_1007626AC();
  *&v2[OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_backButtonAction] = 0;
  v26 = *(v5 + 104);
  v26(&v2[OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_mediaOverlayStyle], enum case for MediaOverlayStyle.matchSystem(_:), v4);
  v2[OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_displayMode] = v58 & 1;
  v65.receiver = v2;
  v65.super_class = ObjectType;
  v58 = ObjectType;
  v27 = objc_msgSendSuper2(&v65, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v27;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v31 setClipsToBounds:1];
  [v31 setUserInteractionEnabled:0];
  v32 = OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_contentView;
  v33 = *&v31[OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_contentView];
  v34 = *&v33[OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_protectionMode];
  *&v33[OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_protectionMode] = 2;
  v35 = v33;
  if (v34 != 2)
  {
    sub_1004228CC();
  }

  sub_100422D68();
  sub_100423840(v34);

  v56 = v32;
  [v31 addSubview:*&v31[v32]];
  v36 = OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_backButton;
  v37 = *&v31[OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_backButton];
  v38 = OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_mediaOverlayStyle;
  swift_beginAccess();
  v54 = *(v24 + 16);
  v55 = v38;
  v54(v59, &v31[v38], v4);
  v26(v60, enum case for MediaOverlayStyle.light(_:), v4);
  sub_1006373AC();
  v39 = v37;
  sub_10077018C();
  sub_10077018C();
  if (v63 == v61 && v64 == v62)
  {
    v40 = v4;
    v41 = 2;
  }

  else
  {
    v40 = v4;
    if (sub_10077167C())
    {
      v41 = 2;
    }

    else
    {
      v41 = 1;
    }
  }

  v42 = *(v24 + 8);
  v42(v60, v40);
  v42(v59, v40);

  sub_1000EB134(v41);

  [v31 addSubview:*&v31[v36]];
  v43 = OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_learnMoreLabel;
  [*&v31[v56] addSubview:*&v31[OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_learnMoreLabel]];
  v44 = v57;
  v54(v57, &v31[v55], v40);
  sub_1007635FC();
  v42(v44, v40);
  sub_10076FF9C();
  v45 = sub_10076FF6C();

  v46 = [*&v31[v43] layer];
  [v46 setCompositingFilter:v45];

  sub_10000A5D4(&unk_100945BF0);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_100784500;
  *(v47 + 32) = sub_10076E59C();
  *(v47 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  *(v47 + 48) = sub_10076E88C();
  *(v47 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100770C6C();
  swift_unknownObjectRelease();

  v48 = *&v31[v43];
  v49 = objc_opt_self();
  v50 = v48;
  v51 = [v49 secondaryLabelColor];
  [v50 setTextColor:v51];

  sub_100636B08();
  return v31;
}

id sub_100636B08()
{
  v1 = v0;
  v2 = sub_10076361C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_contentView);
  v7 = OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_mediaOverlayStyle;
  swift_beginAccess();
  v8 = *(v3 + 16);
  v8(v5, v1 + v7, v2);
  v9 = OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_mediaOverlayStyle;
  swift_beginAccess();
  (*(v3 + 24))(v6 + v9, v5, v2);
  swift_endAccess();
  sub_100422A60();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v11 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_backButton);
  v8(v5, v1 + v7, v2);
  v12 = sub_10076360C();
  v10(v5, v2);
  [v11 setOverrideUserInterfaceStyle:v12];
  v13 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_learnMoreLabel);
  v8(v5, v1 + v7, v2);
  v14 = sub_1007635FC();
  v10(v5, v2);
  return [v13 setOverrideUserInterfaceStyle:v14];
}

id sub_100636D50()
{
  v1 = v0;
  v31.receiver = v0;
  v31.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v31, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_contentView];
  [v0 bounds];
  [v2 bounds];
  [v2 setBounds:?];
  [v0 bounds];
  x = v32.origin.x;
  y = v32.origin.y;
  width = v32.size.width;
  height = v32.size.height;
  MidX = CGRectGetMidX(v32);
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  [v2 setCenter:{MidX, CGRectGetMidY(v33)}];
  v8 = [v0 traitCollection];
  v9 = sub_1007706EC();

  if (v9)
  {
    v10 = 16.0;
  }

  else
  {
    v10 = 20.0;
  }

  [v1 bounds];
  sub_100770ACC();
  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_learnMoreLabel];
  [v11 sizeThatFits:?];
  v13 = v12;
  v15 = v14;
  v34.origin.x = v10;
  v34.origin.y = 72.0;
  v34.size.width = v13;
  v34.size.height = v15;
  CGRectGetMaxY(v34);
  [v2 contentSize];
  [v2 setContentSize:?];
  [v11 bounds];
  [v11 setBounds:?];
  v35.origin.x = v10;
  v35.origin.y = 72.0;
  v35.size.width = v13;
  v35.size.height = v15;
  v16 = CGRectGetMidX(v35);
  v36.origin.x = v10;
  v36.origin.y = 72.0;
  v36.size.width = v13;
  v36.size.height = v15;
  [v11 setCenter:{v16, CGRectGetMidY(v36)}];
  v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_backButton];
  [v1 bounds];
  [v17 sizeThatFits:{v18, v19}];
  v20 = [v1 traitCollection];
  [v1 bounds];
  sub_1007709CC();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  [v17 bounds];
  [v17 setBounds:?];
  v37.origin.x = v22;
  v37.origin.y = v24;
  v37.size.width = v26;
  v37.size.height = v28;
  v29 = CGRectGetMidX(v37);
  v38.origin.x = v22;
  v38.origin.y = v24;
  v38.size.width = v26;
  v38.size.height = v28;
  return [v17 setCenter:{v29, CGRectGetMidY(v38)}];
}

uint64_t sub_1006370B0()
{
  sub_10000A5D4(&unk_100952248);
  v1 = swift_allocObject();
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_contentView);
  v3 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_contentBasedProtectionView);
  *(v1 + 16) = xmmword_100784500;
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_fullProtectionView);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  v5 = v4;
  v6 = v3;
  return v1;
}

uint64_t type metadata accessor for AppPromotionLearnMoreView()
{
  result = qword_1009620C0;
  if (!qword_1009620C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100637268()
{
  result = sub_10076361C();
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

uint64_t sub_100637334()
{
  sub_10000A5D4(&unk_100952248);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100784500;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_backButton);
  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_learnMoreLabel);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = v2;
  v5 = v3;
  return v1;
}

unint64_t sub_1006373AC()
{
  result = qword_1009620D0;
  if (!qword_1009620D0)
  {
    sub_10076361C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009620D0);
  }

  return result;
}

id sub_100637408(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_learnMoreLabel];
  if (qword_100940628 != -1)
  {
    swift_once();
  }

  v3 = qword_10099FD40;
  v4 = *algn_10099FD48;
  v5 = qword_10099FD50;
  v6 = [a1 traitCollection];
  if (sub_10077071C())
  {
  }

  else
  {
    v7 = sub_1007706EC();

    if (v7)
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }
  }

  [v2 setFont:v5];

  return [a1 setNeedsLayout];
}

void sub_1006374F4()
{
  v1 = v0;
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_contentView;
  *(v1 + v9) = [objc_allocWithZone(type metadata accessor for AppPromotionScrollableContentContainerView()) init];
  v10 = OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_backButton;
  v11 = objc_allocWithZone(type metadata accessor for CardHeaderButton());
  *(v1 + v10) = sub_1000EB2A0(1u);
  v12 = OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_learnMoreLabel;
  v13 = sub_10076D3DC();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v14 = objc_allocWithZone(sub_1007626BC());
  *(v1 + v12) = sub_1007626AC();
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_backButtonAction) = 0;
  v15 = OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_mediaOverlayStyle;
  v16 = enum case for MediaOverlayStyle.matchSystem(_:);
  v17 = sub_10076361C();
  (*(*(v17 - 8) + 104))(v1 + v15, v16, v17);
  sub_10077156C();
  __break(1u);
}

id sub_100637778()
{
  v1 = sub_100761DDC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v17[-v6];
  v8 = sub_100761D8C();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 104))(v12, enum case for BreakoutDetails.TextAlignment.center(_:), v8, v10);
  v13 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailTextAlignment;
  swift_beginAccess();
  (*(v9 + 40))(v0 + v13, v12, v8);
  swift_endAccess();
  (*(v2 + 104))(v7, enum case for BreakoutDetails.Badge.none(_:), v1);
  v14 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badge;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v14, v1);
  swift_beginAccess();
  (*(v2 + 24))(v0 + v14, v7, v1);
  swift_endAccess();
  sub_10063AA94();
  v15 = *(v2 + 8);
  v15(v4, v1);
  v15(v7, v1);
  [*(v0 + OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_titleLabel) setText:0];
  [*(v0 + OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_descriptionLabel) setText:0];
  return [*(v0 + OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButton) setTitle:0 forState:0];
}

uint64_t sub_100637A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v31 = a3;
  v5 = sub_10000A5D4(&qword_10094E398);
  __chkstk_darwin(v5 - 8);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  v10 = sub_10000A5D4(&unk_10094C040);
  __chkstk_darwin(v10 - 8);
  v12 = &v29 - v11;
  v13 = sub_10000A5D4(&unk_1009467F0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v29 - v18;
  sub_100016E2C(a1, v12, &unk_10094C040);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000CFBC(v12, &unk_10094C040);
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
    (*(v14 + 16))(v16, v19, v13);
    v20 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_config;
    swift_beginAccess();
    (*(v14 + 24))(v3 + v20, v16, v13);
    swift_endAccess();
    sub_1006398D8();
    v21 = *(v14 + 8);
    v21(v16, v13);
    v21(v19, v13);
  }

  v22 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailTextAlignment;
  swift_beginAccess();
  v23 = sub_100761D8C();
  (*(*(v23 - 8) + 24))(v3 + v22, v30, v23);
  swift_endAccess();
  v24 = sub_100761DAC();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v9, v31, v24);
  (*(v25 + 56))(v9, 0, 1, v24);
  v26 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  v27 = v32;
  sub_100016E2C(v3 + v26, v32, &qword_10094E398);
  swift_beginAccess();
  sub_10063E5AC(v9, v3 + v26);
  swift_endAccess();
  sub_10063C830(v27);
  sub_10000CFBC(v27, &qword_10094E398);
  sub_10000CFBC(v9, &qword_10094E398);
  sub_1006398D8();
  return sub_10063B688();
}

uint64_t sub_100637E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v3 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v3 - 8);
  v72 = &v58 - v4;
  v5 = sub_10076D3DC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v67 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v66 = &v58 - v9;
  __chkstk_darwin(v10);
  v65 = &v58 - v11;
  v12 = sub_100765D1C();
  v75 = *(v12 - 8);
  v76 = v12;
  __chkstk_darwin(v12);
  v73 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v74 = &v58 - v15;
  v16 = sub_10076D1AC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for BreakoutDetailsView.Config(0);
  v80 = v5;
  v81 = v20;
  v21 = *(a1 + *(v20 + 92));
  v68 = v6;
  v22 = v20;
  v23 = *(v20 + 40);
  if (v21)
  {
    v24 = *(v6 + 16);
    v79 = v6 + 16;
    v70 = v24;
    v24(v19, a1 + v23, v5);
    LODWORD(v69) = enum case for FontSource.useCase(_:);
    v64 = v17[13];
    v62 = v16;
    v64(v19);
    v63 = sub_100767EAC();
    v96 = v63;
    v71 = sub_10063EBB8(&qword_1009622C0, &type metadata accessor for CappedSizeStaticDimension);
    v97 = v71;
    sub_10000DB7C(v95);
    v78 = v17 + 13;
    v61 = v21;
    sub_100767E9C();
    v25 = v70;
    v70(v19, a1 + v22[13], v80);
    v26 = v22;
    v27 = v69;
    v28 = v64;
    (v64)(v19, v69, v16);
    v29 = v63;
    v93 = v63;
    v94 = v71;
    sub_10000DB7C(v92);
    v30 = v61;
    sub_100767E9C();
    v25(v19, a1 + v26[9], v80);
    v31 = v62;
    v28(v19, v27, v62);
    v32 = v71;
    v90 = v29;
    v91 = v71;
    sub_10000DB7C(v89);
    v33 = v30;
    v34 = v80;
    sub_100767E9C();
    v70(v19, a1 + v26[14], v34);
    v28(v19, v69, v31);
    v87 = v29;
    v88 = v32;
    sub_10000DB7C(v86);
    sub_100767E9C();
  }

  else
  {
    v79 = a1;
    v35 = *(v6 + 16);
    v70 = (v6 + 16);
    v63 = v35;
    v35(v19, a1 + v23, v5);
    LODWORD(v71) = enum case for FontSource.useCase(_:);
    v36 = v17[13];
    v61 = v17 + 13;
    v37 = v16;
    v36(v19);
    v60 = sub_10076D9AC();
    v96 = v60;
    v97 = &protocol witness table for StaticDimension;
    sub_10000DB7C(v95);
    v93 = v16;
    v94 = &protocol witness table for FontSource;
    v38 = sub_10000DB7C(v92);
    v39 = v17[2];
    v69 = v17 + 2;
    v39(v38, v19, v37);
    v58 = v39;
    sub_10076D9BC();
    v40 = v17[1];
    v78 = v17 + 1;
    v64 = v40;
    (v40)(v19, v37);
    v41 = v63;
    v63(v19, v79 + v22[13], v80);
    v59 = v36;
    (v36)(v19, v71, v37);
    v42 = v60;
    v93 = v60;
    v94 = &protocol witness table for StaticDimension;
    sub_10000DB7C(v92);
    v90 = v37;
    v91 = &protocol witness table for FontSource;
    v43 = sub_10000DB7C(v89);
    v39(v43, v19, v37);
    sub_10076D9BC();
    (v64)(v19, v37);
    v41(v19, v79 + v22[9], v80);
    (v36)(v19, v71, v37);
    v90 = v42;
    v91 = &protocol witness table for StaticDimension;
    sub_10000DB7C(v89);
    v87 = v37;
    v88 = &protocol witness table for FontSource;
    v44 = sub_10000DB7C(v86);
    v45 = v58;
    v58(v44, v19, v37);
    sub_10076D9BC();
    v46 = v64;
    (v64)(v19, v37);
    v63(v19, v79 + v22[14], v80);
    a1 = v79;
    (v59)(v19, v71, v37);
    v87 = v60;
    v88 = &protocol witness table for StaticDimension;
    sub_10000DB7C(v86);
    v85[3] = v37;
    v85[4] = &protocol witness table for FontSource;
    v47 = sub_10000DB7C(v85);
    v45(v47, v19, v37);
    sub_10076D9BC();
    v46(v19, v37);
    v34 = v80;
  }

  v48 = v72;
  if ((*(a1 + v81[11] + 8) & 1) == 0)
  {
    sub_100016E2C(a1 + v81[12], v72, &unk_100943250);
    v49 = v68;
    if ((*(v68 + 48))(v48, 1, v34) != 1)
    {
      v52 = v65;
      (*(v49 + 32))(v65, v48, v34);
      v53 = *(v49 + 16);
      v53(v66, a1 + v81[10], v34);
      v53(v67, v52, v34);
      v51 = v74;
      sub_100765D0C();
      (*(v49 + 8))(v52, v34);
      v50 = &enum case for BreakoutDetailsLayout.Metrics.TitleTextBehavior.lineCountCompression(_:);
      goto LABEL_9;
    }

    sub_10000CFBC(v48, &unk_100943250);
  }

  v50 = &enum case for BreakoutDetailsLayout.Metrics.TitleTextBehavior.standard(_:);
  v51 = v74;
LABEL_9:
  v55 = v75;
  v54 = v76;
  (*(v75 + 104))(v51, *v50, v76);
  sub_10000A570(v95, v85);
  (*(v55 + 16))(v73, v51, v54);
  sub_10000A570(v92, &v84);
  sub_10000A570(v89, &v83);
  v56 = *(a1 + v81[15]);
  v82[8] = &type metadata for CGFloat;
  v82[9] = &protocol witness table for CGFloat;
  v82[5] = v56;
  sub_10000A570(v86, v82);
  sub_100765CFC();
  (*(v55 + 8))(v51, v54);
  sub_10000CD74(v86);
  sub_10000CD74(v89);
  sub_10000CD74(v92);
  return sub_10000CD74(v95);
}

uint64_t sub_100638958(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000A5D4(&qword_100962298);
  sub_10000DB18(v3, a2);
  sub_10000A61C(v3, a2);
  sub_10000A5D4(&unk_100943120);
  type metadata accessor for ContentHorizontalAlignment(0);
  return sub_10075FDDC();
}

char *sub_1006389FC(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v122 = sub_1007641BC();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_10076F9AC();
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v115 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v6 - 8);
  v8 = &v102 - v7;
  v9 = sub_10076771C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v124 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v131 = &v102 - v13;
  v14 = sub_10076D3DC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badge;
  v19 = enum case for BreakoutDetails.Badge.none(_:);
  v20 = sub_100761DDC();
  (*(*(v20 - 8) + 104))(&v2[v18], v19, v20);
  *&v2[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel] = 0;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark] = 0;
  v21 = &v2[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButtonHandler];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailTextAlignment;
  v23 = enum case for BreakoutDetails.TextAlignment.leading(_:);
  v24 = sub_100761D8C();
  (*(*(v24 - 8) + 104))(&v2[v22], v23, v24);
  v25 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailBackgroundStyle;
  v26 = sub_100761DAC();
  (*(*(v26 - 8) + 56))(&v2[v25], 1, 1, v26);
  v27 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_config;
  v28 = sub_10000A5D4(&unk_1009467F0);
  v118 = *(v28 - 8);
  v29 = *(v118 + 16);
  v125 = v2;
  v123 = a1;
  v119 = v28;
  v29(&v2[v27], a1);
  if (qword_100941038 != -1)
  {
    swift_once();
  }

  v30 = sub_10000A61C(v14, qword_1009A1EA0);
  v31 = *(v15 + 16);
  v32 = v17;
  v130 = v17;
  v31(v17, v30, v14);
  v128 = v31;
  v33 = v14;
  v34 = enum case for DirectionalTextAlignment.none(_:);
  v35 = v10;
  v126 = v15;
  v127 = v10;
  v36 = *(v10 + 104);
  (v36)(v131, enum case for DirectionalTextAlignment.none(_:), v9);
  v108 = type metadata accessor for CappedSizeDynamicTypeLabel();
  v110 = objc_allocWithZone(v108);
  *&v110[qword_10095A0D0] = 0;
  v31(v8, v32, v33);
  v37 = *(v15 + 56);
  v37(v8, 0, 1, v33);
  v38 = v124;
  v113 = v34;
  v39 = v34;
  v40 = v33;
  v112 = v35 + 104;
  v111 = v36;
  (v36)(v124, v39, v9);
  v41 = v38;
  v42 = sub_1007626AC();
  v43 = v130;
  v129 = v15 + 16;
  v128(v8, v130, v40);
  v110 = (v15 + 56);
  v109 = v37;
  v37(v8, 0, 1, v40);
  v44 = v42;
  v103 = v8;
  sub_1007625DC();
  v45 = v43;
  sub_1007625BC();
  [v44 setNumberOfLines:2];
  v46 = v127;
  v47 = *(v127 + 16);
  v48 = v131;
  v107 = v127 + 16;
  v106 = v47;
  v47(v41, v131, v9);
  sub_10076262C();

  v49 = *(v46 + 8);
  v127 = v46 + 8;
  v105 = v49;
  v49(v48, v9);
  v50 = *(v126 + 8);
  v126 += 8;
  v104 = v50;
  v50(v45, v40);
  *&v125[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_titleLabel] = v44;
  if (qword_100941058 != -1)
  {
    swift_once();
  }

  v51 = sub_10000A61C(v40, qword_1009A1F00);
  v52 = v128;
  v128(v45, v51, v40);
  v53 = v113;
  v54 = v111;
  (v111)(v131, v113, v9);
  v55 = objc_allocWithZone(v108);
  *&v55[qword_10095A0D0] = 0;
  v56 = v103;
  v52(v103, v130, v40);
  v57 = v109;
  v109(v56, 0, 1, v40);
  v58 = v9;
  v59 = v124;
  v60 = v53;
  v61 = v58;
  v54(v124, v60);
  v62 = sub_1007626AC();
  v52(v56, v130, v40);
  v63 = v130;
  v57(v56, 0, 1, v40);
  v64 = v62;
  sub_1007625DC();
  sub_1007625BC();
  [v64 setNumberOfLines:2];
  v65 = v131;
  v106(v59, v131, v61);
  sub_10076262C();

  v105(v65, v61);
  v104(v63, v40);
  v66 = v125;
  *&v125[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_descriptionLabel] = v64;
  v67 = [objc_opt_self() effectWithStyle:17];
  v68 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v67];

  *&v66[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_backgroundMaterialView] = v68;
  type metadata accessor for CappedSizeDynamicTypeButton();
  if (qword_100941060 != -1)
  {
    swift_once();
  }

  v69 = sub_10000A61C(v40, qword_1009A1F18);
  v128(v63, v69, v40);
  *&v66[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButton] = sub_10076312C();
  v136.receiver = v66;
  v136.super_class = ObjectType;
  v70 = objc_msgSendSuper2(&v136, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v70 setUserInteractionEnabled:0];
  [v70 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v70 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  sub_1006398D8();
  v74 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_titleLabel;
  v75 = *&v70[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_titleLabel];
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v76 = v75;
  v77 = v115;
  sub_10076F95C();
  sub_10000CFBC(&v132, &unk_1009434C0);
  sub_10000CFBC(&v134, &unk_1009434C0);
  sub_100770B9C();

  v78 = *(v116 + 8);
  v79 = v117;
  v78(v77, v117);
  v80 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_descriptionLabel;
  v81 = *&v70[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_descriptionLabel];
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v82 = v81;
  sub_10076F95C();
  sub_10000CFBC(&v132, &unk_1009434C0);
  sub_10000CFBC(&v134, &unk_1009434C0);
  sub_100770B9C();

  v78(v77, v79);
  v83 = *&v70[v74];
  sub_10076266C();

  v84 = *&v70[v80];
  sub_10076266C();

  [*&v70[v74] setLineBreakMode:0];
  [*&v70[v80] setLineBreakMode:0];
  v85 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButton;
  [*&v70[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButton] _setWantsAccessibilityUnderline:0];
  v86 = *&v70[v85];
  v87 = objc_opt_self();
  v88 = v86;
  v89 = [v87 whiteColor];
  [v88 setTitleColor:v89 forState:0];

  v90 = *&v70[v85];
  v91 = [v87 whiteColor];
  [v90 setTitleColor:v91 forState:1];

  v92 = *&v70[v85];
  v93 = [v87 whiteColor];
  [v92 setTintColor:v93];

  v94 = *&v70[v85];
  (*(v121 + 104))(v120, enum case for ImageAlignedButton.ImageAlignment.trailing(_:), v122);
  v95 = v94;
  sub_1007641CC();

  v96 = *&v70[v85];
  sub_1007641FC();

  v97 = [*&v70[v85] titleLabel];
  [v97 setLineBreakMode:0];

  [*&v70[v85] addTarget:v70 action:"didTapActionButton" forControlEvents:64];
  v98 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_backgroundMaterialView;
  v99 = *&v70[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_backgroundMaterialView];
  v100 = sub_10076FF6C();
  [v99 _setGroupName:v100];

  [*&v70[v98] _setContinuousCornerRadius:20.0];
  [*&v70[v98] setClipsToBounds:1];
  [*&v70[v98] setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [*&v70[v98] setEdgesInsettingLayoutMarginsFromSafeArea:0];

  (*(v118 + 8))(v123, v119);
  return v70;
}

uint64_t sub_1006398D8()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v2 - 8);
  v103 = &v98 - v3;
  v4 = sub_100761DAC();
  v104 = *(v4 - 8);
  __chkstk_darwin(v4);
  v101 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v99 = &v98 - v7;
  __chkstk_darwin(v8);
  v100 = &v98 - v9;
  __chkstk_darwin(v10);
  v105 = &v98 - v11;
  __chkstk_darwin(v12);
  v14 = &v98 - v13;
  v15 = sub_10000A5D4(&unk_1009467F0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v98 - v17;
  v19 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v19);
  v21 = (&v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_config;
  swift_beginAccess();
  (*(v16 + 16))(v18, v1 + v22, v15);
  v107 = v1;
  sub_10075FDCC();
  (*(v16 + 8))(v18, v15);
  v23 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark);
  v24 = &selRef_initWithTabBarSystemItem_tag_;
  if (v23)
  {
    v25 = *v21;
    if (*v21)
    {
      v26 = v23;
      v27 = v25;
    }

    else
    {
      v28 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailBackgroundStyle;
      swift_beginAccess();
      v29 = v104;
      if ((*(v104 + 48))(v1 + v28, 1, v4))
      {
        v26 = v23;
        v27 = 0;
      }

      else
      {
        (*(v29 + 16))(v14, v1 + v28, v4);
        v26 = v23;
        v27 = sub_100666660();
        (*(v29 + 8))(v14, v4);
      }
    }

    v30 = v25;
    [v26 setTintColor:v27];
  }

  v31 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel;
  v32 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel);
  if (v32)
  {
    v33 = *v21;
    if (*v21)
    {
      v34 = v32;
      v35 = v33;
    }

    else
    {
      v36 = v14;
      v37 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailBackgroundStyle;
      swift_beginAccess();
      v38 = v104;
      if ((*(v104 + 48))(v1 + v37, 1, v4))
      {
        v34 = v32;
        v35 = 0;
        v14 = v36;
      }

      else
      {
        (*(v38 + 16))(v36, v1 + v37, v4);
        v34 = v32;
        v35 = sub_100666660();
        v39 = v38;
        v14 = v36;
        (*(v39 + 8))(v36, v4);
      }

      v24 = &selRef_initWithTabBarSystemItem_tag_;
    }

    v40 = v33;
    [v34 setTextColor:v35];
  }

  v106 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_titleLabel);
  v41 = v21[1];
  isa = v41;
  v102 = v31;
  if (!v41)
  {
    v43 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailBackgroundStyle;
    swift_beginAccess();
    if (!(*(v104 + 48))(v1 + v43, 1, v4))
    {
      v98 = v14;
      v44 = v104;
      v45 = *(v104 + 16);
      v46 = v1 + v43;
      v47 = v105;
      v45(v105, v46, v4);
      v48 = v100;
      v45(v100, v47, v4);
      v49 = (*(v44 + 88))(v48, v4);
      v50 = (v44 + 8);
      if (v49 == enum case for BreakoutDetails.BackgroundStyle.material(_:) || (v51 = v49, v49 == enum case for BreakoutDetails.BackgroundStyle.dark(_:)))
      {
        isa = [objc_opt_self() whiteColor];
        (*v50)(v105, v4);
      }

      else
      {
        v52 = enum case for BreakoutDetails.BackgroundStyle.light(_:);
        sub_1000325F0();
        isa = sub_100770E4C(0.18824, 0.18824, 0.2, 1.0).super.isa;
        v53 = *v50;
        (*v50)(v105, v4);
        if (v51 != v52)
        {
          v53(v100, v4);
        }
      }

      v31 = v102;
      v14 = v98;
      v24 = &selRef_initWithTabBarSystemItem_tag_;
    }
  }

  v54 = v41;
  [v106 setTextColor:isa];

  v105 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_descriptionLabel);
  v55 = v21[2];
  v56 = v55;
  if (!v55)
  {
    v57 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailBackgroundStyle;
    swift_beginAccess();
    if (!(*(v104 + 48))(v1 + v57, 1, v4))
    {
      v58 = v14;
      v59 = v104;
      (*(v104 + 16))(v58, v1 + v57, v4);
      v56 = sub_100666230();
      v60 = v58;
      v24 = &selRef_initWithTabBarSystemItem_tag_;
      (*(v59 + 8))(v60, v4);
    }
  }

  v61 = v55;
  [v105 setTextColor:v56];

  v62 = v21[3];
  v63 = v62;
  if (!v62)
  {
    v64 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailBackgroundStyle;
    swift_beginAccess();
    if (!(*(v104 + 48))(v1 + v64, 1, v4))
    {
      v65 = v104;
      v66 = *(v104 + 16);
      v67 = v1 + v64;
      v68 = v99;
      v66(v99, v67, v4);
      v69 = v101;
      v66(v101, v68, v4);
      v70 = (*(v65 + 88))(v69, v4);
      v71 = (v65 + 8);
      if (v70 == enum case for BreakoutDetails.BackgroundStyle.material(_:) || (v72 = v70, v70 == enum case for BreakoutDetails.BackgroundStyle.dark(_:)))
      {
        v63 = [objc_opt_self() whiteColor];
        (*v71)(v68, v4);
      }

      else
      {
        LODWORD(v104) = enum case for BreakoutDetails.BackgroundStyle.light(_:);
        sub_1000325F0();
        v73 = v68;
        v63 = sub_100770E4C(0.18824, 0.18824, 0.2, 1.0).super.isa;
        v74 = *v71;
        (*v71)(v73, v4);
        if (v72 != v104)
        {
          v74(v101, v4);
        }
      }

      v31 = v102;
      v24 = &selRef_initWithTabBarSystemItem_tag_;
    }
  }

  v75 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButton);
  v76 = v62;
  [v75 setTitleColor:v63 forState:0];
  [v75 setTitleColor:v63 forState:1];
  v77 = v24[254];
  v101 = v63;
  [v75 v77];
  v104 = v1;
  v78 = *(v1 + v31);
  v79 = v19;
  if (v78)
  {
    v80 = *(v19 + 36);
    v81 = sub_10076D3DC();
    v82 = *(v81 - 8);
    v83 = v103;
    (*(v82 + 16))(v103, v21 + v80, v81);
    (*(v82 + 56))(v83, 0, 1, v81);
    v19 = v79;
    v84 = v78;
    sub_1007625DC();
  }

  v85 = *(v19 + 40);
  v86 = sub_10076D3DC();
  v87 = *(v86 - 8);
  v88 = *(v87 + 16);
  v89 = v103;
  v88(v103, v21 + v85, v86);
  v90 = *(v87 + 56);
  v90(v89, 0, 1, v86);
  sub_1007625DC();
  v88(v89, v21 + v79[13], v86);
  v90(v89, 0, 1, v86);
  sub_1007625DC();
  v88(v89, v21 + v79[14], v86);
  v90(v89, 0, 1, v86);
  sub_10076311C();
  v91 = *(v104 + v102);
  if (v91)
  {
    v92 = *(v21 + v79[23]);
    v93 = v92;
    v94 = v91;
    sub_1004CF328(v92);
  }

  v95 = *(v21 + v79[23]);
  v96 = v95;
  sub_1004CF328(v95);
  sub_1004CF328(v95);
  sub_10024E618(v95);

  return sub_1000A91F8(v21);
}

double sub_10063A510()
{
  v1 = v0;
  v2 = sub_100761DAC();
  v32 = *(v2 - 8);
  __chkstk_darwin(v2);
  v30 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&qword_100962290);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v30 - v6;
  v8 = sub_10000A5D4(&qword_10094E398);
  __chkstk_darwin(v8 - 8);
  v31 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v13 = sub_10000A5D4(&unk_1009467F0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v30 - v15;
  v33 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v33);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_config;
  swift_beginAccess();
  v20 = v1 + v19;
  v21 = v18;
  v22 = v32;
  (*(v14 + 16))(v16, v20, v13);
  v34 = v1;
  sub_10075FDCC();
  (*(v14 + 8))(v16, v13);
  v23 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  (*(v22 + 104))(v12, enum case for BreakoutDetails.BackgroundStyle.material(_:), v2);
  (*(v22 + 56))(v12, 0, 1, v2);
  v24 = *(v5 + 56);
  sub_100016E2C(v1 + v23, v7, &qword_10094E398);
  sub_100016E2C(v12, &v7[v24], &qword_10094E398);
  v25 = *(v22 + 48);
  if (v25(v7, 1, v2) != 1)
  {
    v26 = v31;
    sub_100016E2C(v7, v31, &qword_10094E398);
    if (v25(&v7[v24], 1, v2) != 1)
    {
      v28 = v30;
      (*(v22 + 32))(v30, &v7[v24], v2);
      sub_10063EBB8(&unk_1009622A0, &type metadata accessor for BreakoutDetails.BackgroundStyle);
      sub_10076FF1C();
      v29 = *(v22 + 8);
      v29(v28, v2);
      sub_10000CFBC(v12, &qword_10094E398);
      v29(v26, v2);
      sub_10000CFBC(v7, &qword_10094E398);
      goto LABEL_7;
    }

    sub_10000CFBC(v12, &qword_10094E398);
    (*(v22 + 8))(v26, v2);
    goto LABEL_6;
  }

  sub_10000CFBC(v12, &qword_10094E398);
  if (v25(&v7[v24], 1, v2) != 1)
  {
LABEL_6:
    sub_10000CFBC(v7, &qword_100962290);
    goto LABEL_7;
  }

  sub_10000CFBC(v7, &qword_10094E398);
LABEL_7:
  sub_1000A91F8(v21);
  return 0.0;
}

id sub_10063AA94()
{
  v90 = sub_100760B4C();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v91 = &v84 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_10000A5D4(&unk_1009467F0);
  v87 = *(v88 - 1);
  __chkstk_darwin(v88);
  v85 = &v84 - v2;
  v3 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v3 - 8);
  v84 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&qword_1009622B0);
  __chkstk_darwin(v5 - 8);
  v86 = &v84 - v6;
  v7 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v7 - 8);
  v92 = &v84 - v8;
  v95 = sub_10076771C();
  v99 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v98 = &v84 - v11;
  v94 = sub_10076D3DC();
  v97 = *(v94 - 8);
  __chkstk_darwin(v94);
  v96 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100761DDC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v19 = &v84 - v18;
  v20 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badge;
  swift_beginAccess();
  v21 = *(v14 + 16);
  v22 = v0;
  v21(v19, &v0[v20], v13);
  sub_10063EBB8(&qword_1009622B8, &type metadata accessor for BreakoutDetails.Badge);
  v23 = sub_10076FF1C();
  v24 = v19;
  v25 = *(v14 + 8);
  result = v25(v24, v13);
  if ((v23 & 1) == 0)
  {
    v21(v16, &v22[v20], v13);
    v27 = (*(v14 + 88))(v16, v13);
    v28 = v22;
    if (v27 == enum case for BreakoutDetails.Badge.text(_:))
    {
      v91 = v22;
      (*(v14 + 96))(v16, v13);
      v29 = v16[1];
      v89 = *v16;
      v90 = v29;
      if (qword_100941030 != -1)
      {
        swift_once();
      }

      v30 = v94;
      v31 = sub_10000A61C(v94, qword_1009A1E88);
      v32 = v96;
      v33 = v97;
      v34 = *(v97 + 16);
      v34(v96, v31, v30);
      v35 = v34;
      v88 = v34;
      v36 = enum case for DirectionalTextAlignment.none(_:);
      v87 = *(v99 + 104);
      v37 = v95;
      (v87)(v98, enum case for DirectionalTextAlignment.none(_:), v95);
      v38 = objc_allocWithZone(type metadata accessor for CappedSizeDynamicTypeLabel());
      *&v38[qword_10095A0D0] = 0;
      v39 = v92;
      v35(v92, v32, v30);
      v40 = *(v33 + 56);
      v40(v39, 0, 1, v30);
      v41 = v93;
      (v87)(v93, v36, v37);
      v42 = sub_1007626AC();
      v43 = v96;
      v88(v39, v96, v30);
      v40(v39, 0, 1, v30);
      v44 = v42;
      sub_1007625DC();
      sub_1007625BC();
      [v44 setNumberOfLines:1];
      v46 = v98;
      v45 = v99;
      (*(v99 + 16))(v41, v98, v37);
      sub_10076262C();
      (*(v45 + 8))(v46, v37);
      (*(v97 + 8))(v43, v30);
      sub_10076266C();
      v47 = sub_10076FF6C();

      [v44 setText:v47];

      v48 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel;
      v28 = v91;
      v49 = *&v91[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel];
      v50 = v44;
      if (v49)
      {
        [v49 removeFromSuperview];
        v51 = *&v28[v48];
      }

      else
      {
        v51 = 0;
      }

      *&v28[v48] = v44;
      v73 = v44;

      sub_10063C5E8(&OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel);
      v74 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark;
      v75 = *&v28[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark];
      if (v75)
      {
        [v75 removeFromSuperview];
        v76 = *&v28[v74];
      }

      else
      {
        v76 = 0;
      }

      *&v28[v74] = 0;

      sub_10063C5E8(&OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark);
    }

    else if (v27 == enum case for BreakoutDetails.Badge.wordmark(_:))
    {
      v52 = enum case for Wordmark.arcade(_:);
      v53 = sub_10076C43C();
      v54 = *(v53 - 8);
      v55 = v86;
      (*(v54 + 104))(v86, v52, v53);
      (*(v54 + 56))(v55, 0, 1, v53);
      v56 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_config;
      swift_beginAccess();
      v57 = v87;
      v58 = &v28[v56];
      v59 = v85;
      v60 = v88;
      (*(v87 + 16))(v85, v58, v88);
      v100 = v28;
      v61 = v84;
      sub_10075FDCC();
      (*(v57 + 8))(v59, v60);
      v62 = *(v61 + 32);
      sub_1000A91F8(v61);
      (*(v89 + 104))(v91, enum case for WordmarkView.Alignment.center(_:), v90);
      v101 = &type metadata for CGFloat;
      v102 = &protocol witness table for CGFloat;
      v100 = v62;
      v63 = objc_allocWithZone(sub_100760B6C());
      v64 = sub_100760B3C();
      v65 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel;
      v66 = *&v28[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel];
      if (v66)
      {
        [v66 removeFromSuperview];
        v67 = *&v28[v65];
      }

      else
      {
        v67 = 0;
      }

      *&v28[v65] = 0;

      sub_10063C5E8(&OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel);
      v80 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark;
      v81 = *&v28[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark];
      v82 = v64;
      if (v81)
      {
        [v81 removeFromSuperview];
        v81 = *&v28[v80];
      }

      *&v28[v80] = v64;
      v83 = v64;

      sub_10063C5E8(&OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark);
    }

    else
    {
      v68 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel;
      v69 = *&v22[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel];
      if (v27 == enum case for BreakoutDetails.Badge.none(_:))
      {
        if (v69)
        {
          [*&v22[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel] removeFromSuperview];
          v69 = *&v22[v68];
        }

        *&v22[v68] = 0;

        sub_10063C5E8(&OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel);
        v70 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark;
        v71 = *&v28[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark];
        if (v71)
        {
          [v71 removeFromSuperview];
          v72 = *&v28[v70];
        }

        else
        {
          v72 = 0;
        }

        *&v28[v70] = 0;

        sub_10063C5E8(&OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark);
      }

      else
      {
        if (v69)
        {
          [*&v22[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel] removeFromSuperview];
          v69 = *&v22[v68];
        }

        *&v22[v68] = 0;

        sub_10063C5E8(&OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel);
        v77 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark;
        v78 = *&v22[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark];
        if (v78)
        {
          [v78 removeFromSuperview];
          v79 = *&v22[v77];
        }

        else
        {
          v79 = 0;
        }

        *&v22[v77] = 0;

        sub_10063C5E8(&OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark);
        v25(v16, v13);
      }
    }

    sub_1006398D8();
    sub_10063B688();
    return [v28 setNeedsLayout];
  }

  return result;
}

uint64_t sub_10063B688()
{
  v1 = v0;
  v2 = sub_100761DAC();
  v103 = *(v2 - 8);
  __chkstk_darwin(v2);
  v96 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_10000A5D4(&qword_100962290);
  __chkstk_darwin(v102);
  v5 = &v95 - v4;
  v6 = sub_10000A5D4(&qword_10094E398);
  __chkstk_darwin(v6 - 8);
  v97 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v95 - v9;
  v99 = sub_100760B4C();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v100 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_100761D8C();
  v111 = *(v109 - 8);
  __chkstk_darwin(v109);
  v105 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v95 - v14;
  __chkstk_darwin(v16);
  v110 = &v95 - v17;
  v18 = sub_10000A5D4(&unk_1009467F0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v95 - v20;
  v107 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v107);
  v23 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_config;
  swift_beginAccess();
  (*(v19 + 16))(v21, &v1[v24], v18);
  v114 = v1;
  sub_10075FDCC();
  (*(v19 + 8))(v21, v18);
  v25 = [v1 traitCollection];
  LOBYTE(v18) = sub_10077071C();

  v106 = v23;
  if ((v18 & 1) != 0 && v23[*(v107 + 96)] == 1)
  {
    v26 = v109;
    (*(v111 + 104))(v110, enum case for BreakoutDetails.TextAlignment.leading(_:), v109);
  }

  else
  {
    v27 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailTextAlignment;
    swift_beginAccess();
    v26 = v109;
    (*(v111 + 16))(v110, &v1[v27], v109);
  }

  v28 = sub_100761D7C();
  v29 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel;
  v30 = *&v1[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel];
  if (v30)
  {
    [v30 setTextAlignment:v28];
  }

  v104 = *&v1[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_titleLabel];
  [v104 setTextAlignment:v28];
  v108 = *&v1[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_descriptionLabel];
  [v108 setTextAlignment:v28];
  v101 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark;
  v31 = *&v1[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark];
  if (v31)
  {
    v32 = v111;
    (*(v111 + 16))(v15, v110, v26);
    v33 = (*(v32 + 88))(v15, v26);
    if (v33 == enum case for BreakoutDetails.TextAlignment.leading(_:))
    {
      (*(v98 + 104))(v100, enum case for WordmarkView.Alignment.leading(_:), v99);
    }

    else if (v33 == enum case for BreakoutDetails.TextAlignment.trailing(_:))
    {
      (*(v98 + 104))(v100, enum case for WordmarkView.Alignment.trailing(_:), v99);
    }

    else
    {
      v34 = *(v98 + 104);
      if (v33 != enum case for BreakoutDetails.TextAlignment.center(_:))
      {
        v34(v100, enum case for WordmarkView.Alignment.leading(_:), v99);
        v94 = *(v111 + 8);
        v35 = v31;
        v94(v15, v26);
        goto LABEL_15;
      }

      v34(v100, enum case for WordmarkView.Alignment.center(_:), v99);
    }

    v35 = v31;
LABEL_15:
    sub_100760B5C();
  }

  v36 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  v37 = v103;
  (*(v103 + 104))(v10, enum case for BreakoutDetails.BackgroundStyle.material(_:), v2);
  (*(v37 + 56))(v10, 0, 1, v2);
  v38 = *(v102 + 48);
  sub_100016E2C(&v1[v36], v5, &qword_10094E398);
  sub_100016E2C(v10, &v5[v38], &qword_10094E398);
  v39 = *(v37 + 48);
  v40 = &off_100911000;
  if (v39(v5, 1, v2) == 1)
  {
    sub_10000CFBC(v10, &qword_10094E398);
    v41 = &selRef_initWithTabBarSystemItem_tag_;
    if (v39(&v5[v38], 1, v2) == 1)
    {
      sub_10000CFBC(v5, &qword_10094E398);
      v42 = v105;
      v43 = v107;
LABEL_28:
      v55 = *&v1[v101];
      if (v55)
      {
        v56 = [v55 v40[274]];
        [v56 setCompositingFilter:kCAFilterPlusL];
      }

      v57 = *&v1[v29];
      if (v57)
      {
        v58 = [v57 v40[274]];
        v59 = kCAFilterPlusL;
        [v58 setCompositingFilter:kCAFilterPlusL];
      }

      else
      {
        v59 = kCAFilterPlusL;
      }

      v60 = [v108 v40[274]];
      [v60 setCompositingFilter:v59];

      v61 = [*&v1[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_backgroundMaterialView] contentView];
      v49 = [v61 v40[274]];

      [v49 setAllowsGroupBlending:0];
      goto LABEL_34;
    }

    goto LABEL_21;
  }

  v44 = v97;
  sub_100016E2C(v5, v97, &qword_10094E398);
  if (v39(&v5[v38], 1, v2) == 1)
  {
    sub_10000CFBC(v10, &qword_10094E398);
    (*(v37 + 8))(v44, v2);
    v41 = &selRef_initWithTabBarSystemItem_tag_;
    v40 = &off_100911000;
LABEL_21:
    sub_10000CFBC(v5, &qword_100962290);
    v42 = v105;
    v43 = v107;
    goto LABEL_22;
  }

  v50 = v96;
  (*(v37 + 32))(v96, &v5[v38], v2);
  sub_10063EBB8(&unk_1009622A0, &type metadata accessor for BreakoutDetails.BackgroundStyle);
  LODWORD(v102) = sub_10076FF1C();
  v51 = v29;
  v52 = v44;
  v53 = *(v37 + 8);
  v53(v50, v2);
  sub_10000CFBC(v10, &qword_10094E398);
  v54 = v52;
  v29 = v51;
  v53(v54, v2);
  sub_10000CFBC(v5, &qword_10094E398);
  v42 = v105;
  v41 = &selRef_initWithTabBarSystemItem_tag_;
  v43 = v107;
  v40 = &off_100911000;
  if (v102)
  {
    goto LABEL_28;
  }

LABEL_22:
  v45 = *&v1[v101];
  if (v45)
  {
    v46 = [v45 v40[274]];
    [v46 setCompositingFilter:0];
  }

  v47 = *&v1[v29];
  if (v47)
  {
    v48 = [v47 v40[274]];
    [v48 setCompositingFilter:0];
  }

  v49 = [v108 v40[274]];
  [v49 setCompositingFilter:0];
LABEL_34:

  v62 = v106;
  v63 = &v106[*(v43 + 84)];
  v64 = v109;
  if (v63[8])
  {
    v65 = [v1 v41[274]];
    v66 = sub_1007706EC();

    if (v66)
    {
      v67 = 3;
    }

    else
    {
      v67 = 2;
    }

    [v104 setNumberOfLines:v67];
  }

  else
  {
    [v104 setNumberOfLines:*v63];
  }

  v68 = v62 + *(v43 + 88);
  if (*(v68 + 8))
  {
    v69 = [v1 v41[274]];
    v70 = sub_1007706EC();

    if (v70)
    {
      v71 = 3;
    }

    else
    {
      v71 = 2;
    }

    [v108 setNumberOfLines:v71];
  }

  else
  {
    [v108 setNumberOfLines:*v68];
  }

  v72 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailTextAlignment;
  swift_beginAccess();
  v73 = v111;
  (*(v111 + 16))(v42, &v1[v72], v64);
  v74 = (*(v73 + 88))(v42, v64);
  if (v74 == enum case for BreakoutDetails.TextAlignment.leading(_:))
  {
    if (qword_1009413A0 != -1)
    {
      swift_once();
    }

    v75 = sub_10000A5D4(&qword_100962298);
    v76 = qword_1009620E0;
LABEL_54:
    sub_10000A61C(v75, v76);
    v112 = v1;
    v77 = v1;
    sub_10075FDCC();

    v78 = v113;
    goto LABEL_55;
  }

  if (v74 == enum case for BreakoutDetails.TextAlignment.trailing(_:))
  {
    if (qword_1009413A8 != -1)
    {
      swift_once();
    }

    v75 = sub_10000A5D4(&qword_100962298);
    v76 = qword_1009620F8;
    goto LABEL_54;
  }

  if (v74 == enum case for BreakoutDetails.TextAlignment.center(_:))
  {
    v78 = 0;
  }

  else
  {
    if (qword_1009413A0 != -1)
    {
      swift_once();
    }

    v91 = sub_10000A5D4(&qword_100962298);
    sub_10000A61C(v91, qword_1009620E0);
    v112 = v1;
    v92 = v1;
    sub_10075FDCC();

    v93 = v113;
    (*(v111 + 8))(v42, v64);
    v78 = v93;
  }

LABEL_55:
  v79 = *&v1[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButton];
  [v79 setContentHorizontalAlignment:v78];
  v80 = [v79 titleLabel];
  if (!v80)
  {
    goto LABEL_63;
  }

  v81 = v80;
  v82 = sub_100770E6C();
  v84 = v83;

  v85 = HIBYTE(v84) & 0xF;
  if ((v84 & 0x2000000000000000) == 0)
  {
    v85 = v82 & 0xFFFFFFFFFFFFLL;
  }

  if (v85)
  {
    v86 = [v1 v41[274]];
    v87 = sub_10077070C();

    if (v87)
    {
      v88 = 0.0;
    }

    else
    {
      v88 = 2.0;
    }

    [v79 setImageEdgeInsets:{0.0, v88}];
    v89 = sub_1005A5DB8(0x74756F6B61657242, 0xEF6E6F7276656843, 0);
    [v79 setImage:v89 forState:0];
  }

  else
  {
LABEL_63:
    [v79 setImageEdgeInsets:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    [v79 setImage:0 forState:0];
  }

  sub_10063D624();
  (*(v111 + 8))(v110, v64);
  return sub_1000A91F8(v62);
}

id sub_10063C5E8(void *a1)
{
  v3 = sub_10000A5D4(&qword_10094E398);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v21 - v8;
  v10 = *&v1[*a1];
  if (v10)
  {
    v11 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailBackgroundStyle;
    swift_beginAccess();
    sub_100016E2C(&v1[v11], v9, &qword_10094E398);
    v12 = sub_100761DAC();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v9, 1, v12) == 1)
    {
      v14 = v10;
    }

    else
    {
      sub_100016E2C(v9, v5, &qword_10094E398);
      if ((*(v13 + 88))(v5, v12) == enum case for BreakoutDetails.BackgroundStyle.material(_:))
      {
        v15 = *&v1[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_backgroundMaterialView];
        v16 = v10;
        v17 = [v15 contentView];
        [v17 addSubview:v16];

LABEL_8:
        sub_10000CFBC(v9, &qword_10094E398);
        return [v1 setNeedsLayout];
      }

      v18 = *(v13 + 8);
      v19 = v10;
      v18(v5, v12);
    }

    [v1 addSubview:v10];
    goto LABEL_8;
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_10063C830(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100761DAC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&qword_10094E398);
  __chkstk_darwin(v7 - 8);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v43 = &v39 - v10;
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  v14 = sub_10000A5D4(&qword_100962290);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v39 - v16;
  v18 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  v19 = *(v15 + 56);
  v42 = v18;
  sub_100016E2C(&v2[v18], v17, &qword_10094E398);
  sub_100016E2C(a1, &v17[v19], &qword_10094E398);
  v20 = v5;
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) == 1)
  {
    if (v21(&v17[v19], 1, v4) == 1)
    {
      return sub_10000CFBC(v17, &qword_10094E398);
    }

    goto LABEL_6;
  }

  sub_100016E2C(v17, v13, &qword_10094E398);
  if (v21(&v17[v19], 1, v4) == 1)
  {
    (*(v5 + 8))(v13, v4);
LABEL_6:
    sub_10000CFBC(v17, &qword_100962290);
    goto LABEL_7;
  }

  v30 = v40;
  (*(v5 + 32))(v40, &v17[v19], v4);
  sub_10063EBB8(&unk_1009622A0, &type metadata accessor for BreakoutDetails.BackgroundStyle);
  LODWORD(v39) = sub_10076FF1C();
  v31 = *(v5 + 8);
  v31(v30, v4);
  v31(v13, v4);
  result = sub_10000CFBC(v17, &qword_10094E398);
  if ((v39 & 1) == 0)
  {
LABEL_7:
    v39 = *&v2[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_backgroundMaterialView];
    [v39 removeFromSuperview];
    v22 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark;
    v23 = *&v2[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark];
    if (v23)
    {
      [v23 removeFromSuperview];
    }

    v24 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel;
    v25 = *&v2[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel];
    if (v25)
    {
      [v25 removeFromSuperview];
    }

    v26 = *&v2[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_titleLabel];
    [v26 removeFromSuperview];
    v27 = *&v2[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_descriptionLabel];
    [v27 removeFromSuperview];
    v40 = *&v2[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButton];
    [v40 removeFromSuperview];
    v17 = v43;
    sub_100016E2C(&v2[v42], v43, &qword_10094E398);
    if (v21(v17, 1, v4) != 1)
    {
      v28 = v41;
      sub_100016E2C(v17, v41, &qword_10094E398);
      if ((*(v20 + 88))(v28, v4) == enum case for BreakoutDetails.BackgroundStyle.material(_:))
      {
        v29 = v39;
        [v2 addSubview:v39];
        if (*&v2[v22])
        {
          [v2 addSubview:?];
        }

        else
        {
          v33 = *&v2[v24];
          if (v33)
          {
            v34 = v33;
            v35 = [v29 contentView];
            [v35 addSubview:v34];
          }
        }

        v36 = [v29 contentView];
        [v36 addSubview:v26];

        v37 = [v29 contentView];
        [v37 addSubview:v27];

        v38 = [v29 contentView];
        [v38 addSubview:v40];

        return sub_10000CFBC(v17, &qword_10094E398);
      }

      (*(v20 + 8))(v28, v4);
    }

    if (*&v2[v22] || *&v2[v24])
    {
      [v2 addSubview:?];
    }

    [v2 addSubview:v26];
    [v2 addSubview:v27];
    [v2 addSubview:v40];
    return sub_10000CFBC(v17, &qword_10094E398);
  }

  return result;
}

uint64_t sub_10063CF44()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v52 = sub_10076D1FC();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&qword_10094E398);
  __chkstk_darwin(v4 - 8);
  v6 = v49 - v5;
  v7 = sub_10000A5D4(&unk_1009467F0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v49 - v9;
  v11 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v11 - 8);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100765D2C();
  __chkstk_darwin(v14 - 8);
  v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49[0] = sub_100765D4C();
  v17 = *(v49[0] - 8);
  *&v18 = __chkstk_darwin(v49[0]).n128_u64[0];
  v20 = v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74.receiver = v1;
  v74.super_class = ObjectType;
  v49[1] = ObjectType;
  objc_msgSendSuper2(&v74, "layoutSubviews", v18);
  v21 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_config;
  swift_beginAccess();
  (*(v8 + 16))(v10, &v1[v21], v7);
  v71 = v1;
  v22 = v1;
  sub_10075FDCC();
  (*(v8 + 8))(v10, v7);

  sub_10063A510();
  sub_100637E90(v13, v16);
  sub_1000A91F8(v13);
  v23 = *&v22[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_titleLabel];
  v24 = type metadata accessor for CappedSizeDynamicTypeLabel();
  v72 = v24;
  v73 = &protocol witness table for UILabel;
  v70 = &protocol witness table for UILabel;
  v71 = v23;
  v25 = *&v22[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_descriptionLabel];
  v69 = v24;
  v68 = v25;
  v26 = *&v22[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel];
  if (v26)
  {
    v27 = &protocol witness table for UILabel;
    v28 = *&v22[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel];
  }

  else
  {
    v28 = 0;
    v24 = 0;
    v27 = 0;
    v65 = 0;
    v64 = 0;
  }

  v63 = v28;
  v66 = v24;
  v67 = v27;
  v29 = *&v22[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark];
  if (v29)
  {
    v30 = sub_100760B6C();
    v31 = &protocol witness table for UIView;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v60 = 0;
    v59 = 0;
  }

  v58 = v29;
  v61 = v30;
  v62 = v31;
  v32 = *&v22[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButton];
  v33 = v26;
  v34 = v29;
  v35 = v23;
  v36 = v25;
  v37 = [v32 titleForState:0];
  if (v37)
  {

    v38 = type metadata accessor for CappedSizeDynamicTypeButton();
    v37 = v32;
    v39 = &protocol witness table for UIView;
  }

  else
  {
    v38 = 0;
    v39 = 0;
    v55 = 0;
    v54 = 0;
  }

  v53 = v37;
  v56 = v38;
  v57 = v39;
  sub_100765D3C();
  v40 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  sub_100016E2C(&v22[v40], v6, &qword_10094E398);
  v41 = sub_100761DAC();
  v42 = *(v41 - 8);
  if ((*(v42 + 48))(v6, 1, v41) == 1)
  {
    sub_10000CFBC(v6, &qword_10094E398);
LABEL_14:
    sub_10076422C();
    v47 = v50;
    goto LABEL_15;
  }

  v43 = (*(v42 + 88))(v6, v41);
  v44 = enum case for BreakoutDetails.BackgroundStyle.material(_:);
  (*(v42 + 8))(v6, v41);
  if (v43 != v44)
  {
    goto LABEL_14;
  }

  v45 = *&v22[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_backgroundMaterialView];
  sub_10076422C();
  [v45 setFrame:?];
  v46 = [v45 contentView];
  [v46 bounds];

  v47 = v50;
LABEL_15:
  sub_100765CDC();
  (*(v51 + 8))(v47, v52);
  sub_10063D624();
  return (*(v17 + 8))(v20, v49[0]);
}

void sub_10063D624()
{
  v1 = v0;
  v2 = sub_10075D78C();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_titleLabel);
  v8 = [v7 font];
  if (!v8)
  {
    goto LABEL_41;
  }

  v9 = v8;
  v10 = [v7 text];
  if (v10)
  {
    v11 = v10;
    v12 = sub_10076FF9C();
    v14 = v13;

    v47 = v12;
    v48 = v14;

    sub_10075D76C();
    sub_10002564C();
    sub_1007711EC();
    LOBYTE(v11) = v15;
    (*(v3 + 8))(v6, v2);

    if (v11)
    {

      v16 = 0;
    }

    else
    {
      [v9 lineHeight];
      v18 = v17;

      v19 = ceil(v18 * 1.3);
      if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (v19 <= -9.22337204e18)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if (v19 >= 9.22337204e18)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v16 = v19;
    }
  }

  else
  {

    v16 = 0;
  }

  sub_1001E1328(v16);
  v20 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_descriptionLabel);
  v21 = [v20 font];
  if (!v21)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v22 = v21;
  v23 = [v20 text];
  if (!v23)
  {

    v29 = 0;
    goto LABEL_19;
  }

  v24 = v23;
  v25 = sub_10076FF9C();
  v27 = v26;

  v47 = v25;
  v48 = v27;

  sub_10075D76C();
  sub_10002564C();
  sub_1007711EC();
  LOBYTE(v24) = v28;
  (*(v3 + 8))(v6, v2);

  if (v24)
  {

    v29 = 0;
    goto LABEL_19;
  }

  [v22 lineHeight];
  v31 = v30;

  v32 = ceil(v31 * 1.3);
  if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_33;
  }

  if (v32 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v32 >= 9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v29 = v32;
LABEL_19:
  sub_1001E1328(v29);
  v33 = [*(v1 + OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButton) titleLabel];
  if (!v33)
  {
    return;
  }

  v34 = v33;
  v35 = [v33 font];
  if (!v35)
  {
LABEL_43:
    __break(1u);
    return;
  }

  v36 = v35;
  v37 = [v34 text];
  if (!v37)
  {

    goto LABEL_25;
  }

  v38 = v37;
  v39 = sub_10076FF9C();
  v41 = v40;

  v47 = v39;
  v48 = v41;

  sub_10075D76C();
  sub_10002564C();
  sub_1007711EC();
  LOBYTE(v38) = v42;
  (*(v3 + 8))(v6, v2);

  if ((v38 & 1) == 0)
  {
    [v36 lineHeight];
    v45 = v44;

    v46 = ceil(v45 * 1.3);
    if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v46 > -9.22337204e18)
      {
        if (v46 < 9.22337204e18)
        {
          v43 = v46;
          goto LABEL_30;
        }

        goto LABEL_40;
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_25:
  v43 = 0;
LABEL_30:
  sub_1001E1328(v43);
}

void sub_10063DEF0()
{
  sub_100761DDC();
  if (v0 <= 0x3F)
  {
    sub_10063E074();
    if (v1 <= 0x3F)
    {
      sub_100761D8C();
      if (v2 <= 0x3F)
      {
        sub_10063E558(319, &unk_100962180, &type metadata accessor for BreakoutDetails.BackgroundStyle);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_10063E074()
{
  if (!qword_100962170)
  {
    sub_10000CE78(&unk_100943120);
    type metadata accessor for BreakoutDetailsView.Config(255);
    v0 = sub_10075FEBC();
    if (!v1)
    {
      atomic_store(v0, &qword_100962170);
    }
  }
}

uint64_t sub_10063E11C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_10076D3DC();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 36);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_10000A5D4(&unk_100943250);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 48);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_10063E26C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = sub_10076D3DC();
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
      v13 = sub_10000A5D4(&unk_100943250);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10063E39C()
{
  sub_10063E558(319, qword_10094B9D0, sub_1000325F0);
  if (v0 <= 0x3F)
  {
    sub_10076D3DC();
    if (v1 <= 0x3F)
    {
      sub_10063E508();
      if (v2 <= 0x3F)
      {
        sub_10063E558(319, &qword_100962200, &type metadata accessor for FontUseCase);
        if (v3 <= 0x3F)
        {
          sub_10063E558(319, &unk_100962208, type metadata accessor for UIContentSizeCategory);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10063E508()
{
  if (!qword_1009621F8)
  {
    v0 = sub_1007711AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1009621F8);
    }
  }
}

void sub_10063E558(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_10063E5AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_10094E398);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_10063E61C(uint64_t a1, char *a2)
{
  v46 = a1;
  v3 = sub_10000A5D4(&qword_10094E398);
  __chkstk_darwin(v3 - 8);
  v5 = &v44 - v4;
  v6 = sub_10000A5D4(&unk_1009467F0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v44 - v8;
  v10 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100765D2C();
  __chkstk_darwin(v13 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_100765D4C();
  v16 = *(v45 - 8);
  __chkstk_darwin(v45);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_config;
  swift_beginAccess();
  (*(v7 + 16))(v9, &a2[v19], v6);
  v65 = a2;
  v20 = a2;
  sub_10075FDCC();
  (*(v7 + 8))(v9, v6);

  sub_10063A510();
  sub_100637E90(v12, v15);
  sub_1000A91F8(v12);
  v21 = *&v20[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_titleLabel];
  v22 = type metadata accessor for CappedSizeDynamicTypeLabel();
  v66 = v22;
  v67 = &protocol witness table for UILabel;
  v64 = &protocol witness table for UILabel;
  v65 = v21;
  v23 = *&v20[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_descriptionLabel];
  v63 = v22;
  v62 = v23;
  v24 = *&v20[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel];
  if (v24)
  {
    v25 = &protocol witness table for UILabel;
    v26 = *&v20[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel];
  }

  else
  {
    v26 = 0;
    v22 = 0;
    v25 = 0;
    v58 = 0;
    v59 = 0;
  }

  v57 = v26;
  v60 = v22;
  v61 = v25;
  v27 = *&v20[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark];
  if (v27)
  {
    v28 = sub_100760B6C();
    v29 = &protocol witness table for UIView;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v54 = 0;
    v53 = 0;
  }

  v52 = v27;
  v55 = v28;
  v56 = v29;
  v30 = *&v20[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButton];
  v31 = v24;
  v32 = v27;
  v33 = v21;
  v34 = v23;
  v35 = [v30 titleForState:0];
  if (v35)
  {

    v36 = type metadata accessor for CappedSizeDynamicTypeButton();
    v35 = v30;
    v37 = &protocol witness table for UIView;
  }

  else
  {
    v36 = 0;
    v37 = 0;
    v49 = 0;
    v48 = 0;
  }

  v47 = v35;
  v50 = v36;
  v51 = v37;
  sub_100765D3C();
  sub_100765CCC();
  v39 = v38;
  (*(v16 + 8))(v18, v45);
  v40 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  sub_100016E2C(&v20[v40], v5, &qword_10094E398);
  v41 = sub_100761DAC();
  v42 = *(v41 - 8);
  if ((*(v42 + 48))(v5, 1, v41) == 1)
  {
    sub_10000CFBC(v5, &qword_10094E398);
  }

  else
  {
    (*(v42 + 88))(v5, v41);
    (*(v42 + 8))(v5, v41);
  }

  return v39;
}

uint64_t sub_10063EBB8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10063EC00()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badge;
  v2 = enum case for BreakoutDetails.Badge.none(_:);
  v3 = sub_100761DDC();
  (*(*(v3 - 8) + 104))(v0 + v1, v2, v3);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark) = 0;
  v4 = (v0 + OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButtonHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailTextAlignment;
  v6 = enum case for BreakoutDetails.TextAlignment.leading(_:);
  v7 = sub_100761D8C();
  (*(*(v7 - 8) + 104))(v0 + v5, v6, v7);
  v8 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailBackgroundStyle;
  v9 = sub_100761DAC();
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  sub_10077156C();
  __break(1u);
}

void sub_10063ED74(void *a1, uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v4 = sub_10000A5D4(&qword_100943190);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  v7 = sub_10076BD9C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  __chkstk_darwin(v14);
  v16 = &v28 - v15;
  sub_100016E2C(a3, v6, &qword_100943190);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000CFBC(v6, &qword_100943190);
    v17 = v29;
    if (!v29)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v18 = *(v8 + 32);
    v18(v16, v6, v7);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v20 = Strong;
      if (*&Strong[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_artwork])
      {

        sub_10076C01C();

        v18(v13, v10, v7);
        sub_100640884(&qword_100943198, &type metadata accessor for Artwork.URLTemplate);
        v21 = sub_10076FF1C();
        v22 = *(v8 + 8);
        v22(v13, v7);
        v22(v16, v7);
        if ((v21 & 1) == 0)
        {
          return;
        }

        v17 = v29;
        if (!v29)
        {
          goto LABEL_11;
        }

        goto LABEL_8;
      }
    }

    (*(v8 + 8))(v16, v7);
    v17 = v29;
    if (!v29)
    {
LABEL_11:
      v23 = 0;
      goto LABEL_12;
    }
  }

LABEL_8:
  v23 = [v17 imageWithRenderingMode:2];
LABEL_12:
  swift_beginAccess();
  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    v26 = *(v24 + OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_iconView);

    v30.value.super.isa = v23;
    v30.is_nil = 0;
    sub_10075FCEC(v30, v27);
  }
}

double sub_10063F1C4(uint64_t a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1007637CC();
  v77 = *(v8 - 8);
  v78 = v8;
  __chkstk_darwin(v8);
  v76 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076997C();
  v82 = *(v10 - 8);
  v83 = v10;
  __chkstk_darwin(v10);
  v81 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_10076D3DC();
  v88 = *(v90 - 8);
  __chkstk_darwin(v90);
  v87 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100762A3C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v69 - v18;
  v20 = sub_1007637AC();
  v85 = *(v20 - 8);
  v86 = v20;
  __chkstk_darwin(v20);
  v74 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v69 - v23;
  v25 = sub_10076015C();
  sub_10076012C();
  ObjectType = swift_getObjectType();
  v93 = a5;
  sub_100495254(v25, v19, a5, v24);

  v26 = *(v14 + 8);
  v75 = v19;
  v94 = v26;
  v26(v19, v13);
  v27 = sub_10076DDDC();
  swift_allocObject();
  v28 = sub_10076DDBC();
  swift_allocObject();
  v72 = sub_10076DDBC();
  swift_allocObject();
  v71 = sub_10076DDBC();
  v84 = v24;
  sub_10076378C();
  v92 = v27;
  swift_allocObject();
  v29 = sub_10076DDBC();
  v89 = a1;
  sub_10076012C();
  v30 = (*(v14 + 88))(v16, v13);
  v73 = v28;
  v70 = v29;
  if (v30 != enum case for PrivacyTypeStyle.productPage(_:))
  {
    if (v30 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v30 == enum case for PrivacyTypeStyle.detailPage(_:))
    {
      v33 = v93;
      v34 = v82;
      if (qword_100940DD0 != -1)
      {
        swift_once();
      }

      v38 = v90;
      v39 = sub_10000A61C(v90, qword_1009A1768);
      (*(v88 + 16))(v87, v39, v38);
      v37 = 4;
    }

    else
    {
      v33 = v93;
      v34 = v82;
      if (qword_100940DC8 != -1)
      {
        swift_once();
      }

      v35 = v90;
      v36 = sub_10000A61C(v90, qword_1009A1750);
      (*(v88 + 16))(v87, v36, v35);
      (v94)(v16, v13);
      v37 = 1;
    }

    v94 = v37;
    goto LABEL_13;
  }

  if (qword_100940DC8 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v31 = v90;
    v32 = sub_10000A61C(v90, qword_1009A1750);
    (*(v88 + 16))(v87, v32, v31);
    v94 = 1;
    v33 = v93;
    v34 = v82;
LABEL_13:
    v40 = v81;
    sub_10005312C();
    v41 = [v33 traitCollection];
    v42 = sub_100770B3C();

    sub_10076013C();
    v43 = sub_10076C04C();
    v101[3] = v43;
    v82 = sub_100640884(&qword_100943230, &type metadata accessor for Feature);
    v101[4] = v82;
    v44 = sub_10000DB7C(v101);
    v45 = *(v43 - 8);
    v46 = *(v45 + 104);
    LODWORD(v81) = enum case for Feature.measurement_with_labelplaceholder(_:);
    v79 = v45 + 104;
    v80 = v46;
    v46(v44);
    v47 = v42;
    sub_10076C90C();
    sub_10000CD74(v101);
    v69 = v47;
    sub_10076996C();
    sub_10076994C();
    v48 = v33;
    v49 = v34[1];
    v50 = v83;
    v49(v40, v83);
    if (qword_100940DD8 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v90, qword_1009A1780);
    v51 = [v48 traitCollection];
    v52 = sub_100770B3C();

    sub_10076014C();
    v100[3] = v43;
    v100[4] = v82;
    v53 = sub_10000DB7C(v100);
    v80(v53, v81, v43);
    v54 = v52;
    sub_10076C90C();
    sub_10000CD74(v100);
    sub_10076996C();
    sub_10076994C();
    v49(v40, v50);
    v94 = sub_10076010C();
    if (v94 >> 62)
    {
      v55 = sub_10077158C();
      v82 = v54;
      if (!v55)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v55 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v82 = v54;
      if (!v55)
      {
        goto LABEL_29;
      }
    }

    type metadata accessor for PrivacyCategoryView();
    if (v55 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_31:
    swift_once();
  }

  v56 = 0;
  v57 = v94 & 0xC000000000000001;
  v58 = _swiftEmptyArrayStorage;
  do
  {
    if (v57)
    {
      v59 = sub_10077149C();
    }

    else
    {
      v59 = *(v94 + 8 * v56 + 32);
    }

    v60 = sub_1001052B0(v59, v93);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v58 = sub_10049D2D0(0, v58[2] + 1, 1, v58);
    }

    v62 = v58[2];
    v61 = v58[3];
    if (v62 >= v61 >> 1)
    {
      v58 = sub_10049D2D0((v61 > 1), v62 + 1, 1, v58);
    }

    ++v56;

    v98 = v92;
    v99 = &protocol witness table for LayoutViewPlaceholder;
    *&v97 = v60;
    v58[2] = v62 + 1;
    sub_100012498(&v97, &v58[5 * v62 + 4]);
  }

  while (v55 != v56);
LABEL_29:

  v63 = [v93 traitCollection];
  sub_10076E20C();

  v64 = v92;
  swift_allocObject();
  v65 = sub_10076DDBC();
  (*(v85 + 16))(v74, v84, v86);
  v98 = v64;
  v99 = &protocol witness table for LayoutViewPlaceholder;
  *&v97 = v73;
  v96[23] = v64;
  v96[24] = &protocol witness table for LayoutViewPlaceholder;
  v96[19] = &protocol witness table for LayoutViewPlaceholder;
  v96[20] = v72;
  v96[18] = v64;
  v96[14] = &protocol witness table for LayoutViewPlaceholder;
  v96[15] = v71;
  v96[13] = v64;
  v96[9] = &protocol witness table for LayoutViewPlaceholder;
  v96[10] = v65;
  v94 = v65;
  v96[8] = v64;
  v96[5] = v70;
  sub_10000A570(v101, v96);
  sub_10000A570(v100, &v95);

  sub_10076012C();
  v66 = v76;
  sub_1007637BC();
  sub_100640884(&qword_10094F870, &type metadata accessor for PrivacyTypeLayout);
  v67 = v78;
  sub_10076D2AC();

  (*(v77 + 8))(v66, v67);
  sub_10000CD74(v100);
  sub_10000CD74(v101);
  (*(v88 + 8))(v87, v90);
  (*(v85 + 8))(v84, v86);
  return a2;
}

void sub_10063FDF0()
{
  v1 = v0;
  v2 = sub_100762A3C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076012C();
  v6 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_style;
  swift_beginAccess();
  (*(v3 + 24))(v1 + v6, v5, v2);
  swift_endAccess();
  sub_100496EE4();
  (*(v3 + 8))(v5, v2);
  v7 = sub_10076013C();
  sub_100496C50(v7, v8);
  v9 = sub_10076014C();
  sub_100496C5C(v9, v10);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_artwork) = sub_10076015C();

  v11 = sub_10076010C();
  sub_100499334();
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_categories) = v11;

  sub_100496C68();
}

uint64_t sub_10063FF88()
{
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_artwork))
  {

    sub_10076BFBC();
    sub_100760C4C();
    sub_10075FD2C();
    sub_100760BCC();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_100760B7C();

    sub_10000CFBC(v10, &qword_100943310);
  }

  v1 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_categoryViews;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3 >> 62)
  {
    result = sub_10077158C();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_10077149C();
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      if (*&v6[OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_category])
      {

        sub_10076217C();

        sub_10076BFBC();
        v8 = *&v7[OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_iconView];
        sub_10075FD2C();
        sub_100640884(&qword_100951F78, &type metadata accessor for ArtworkView);
        v9 = v8;
        sub_10077140C();
        swift_allocObject();
        swift_unknownObjectWeakInit();

        sub_100760B7C();

        sub_10000CFBC(v10, &qword_100943310);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_1006402C4(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v24 = sub_10077164C();
  v3 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_1009568A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_10076B5BC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  sub_100016E2C(a1, v8, &unk_1009568A0);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    (*(v10 + 32))(v15, v8, v9);
    (*(v10 + 104))(v12, enum case for Shelf.ContentType.privacyFooter(_:), v9);
    sub_100640884(&qword_10094C660, &type metadata accessor for Shelf.ContentType);
    sub_10077018C();
    sub_10077018C();
    if (v27 == v25 && v28 == v26)
    {
      v20 = *(v10 + 8);
      v20(v12, v9);
      v20(v15, v9);
    }

    else
    {
      v21 = sub_10077167C();
      v22 = *(v10 + 8);
      v22(v12, v9);
      v22(v15, v9);

      if ((v21 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    return 0;
  }

  sub_10000CFBC(v8, &unk_1009568A0);
LABEL_3:
  if (qword_1009411F8 != -1)
  {
    swift_once();
  }

  v16 = sub_10076D9AC();
  sub_10000A61C(v16, qword_1009A2368);
  sub_10076D17C();
  sub_10076D40C();
  v18 = v17;
  (*(v3 + 8))(v5, v24);
  return v18;
}

uint64_t sub_1006406C0()
{
  sub_10075FD2C();
  sub_100640884(&qword_100941820, &type metadata accessor for ArtworkView);
  sub_100760BFC();
  v1 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_categoryViews;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3 >> 62)
  {
    result = sub_10077158C();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_10077149C();
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      sub_100760BFC();
    }
  }

  return result;
}

uint64_t sub_100640844()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100640884(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_10064091C()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100760DAC();
  sub_100640B5C(&qword_10094C4B8, &type metadata accessor for EditorialLink);
  sub_10076332C();
  v4 = v14;
  if (!v14)
  {
    return 0.0;
  }

  sub_10000A5D4(&unk_1009467A0);
  sub_10076F64C();
  sub_10076FC1C();
  v13[1] = v4;
  sub_10075F74C();

  v5 = v14;
  if ((~v14 & 0xF000000000000007) != 0)
  {
    v6 = v15;
  }

  else
  {

    v6 = 0;
    v5 = v4;
  }

  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  v9 = v8;
  (*(v1 + 8))(v3, v0);
  v10 = sub_100630CB4();
  sub_1001B7EC0(v5, v6, v10, v9);
  v7 = v11;
  swift_unknownObjectRelease();

  sub_1000A9094(v5, v6);
  return v7;
}

uint64_t sub_100640B5C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100640BBC()
{
  result = qword_100962328;
  if (!qword_100962328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100962328);
  }

  return result;
}

uint64_t sub_100640C10()
{
  v0 = sub_10076FD2C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076FD4C();
  sub_10000DB18(v4, qword_100962310);
  sub_10000A61C(v4, qword_100962310);
  if (qword_1009412D0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_1009A25B8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_10076FD3C();
}

uint64_t sub_100640D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = sub_1007627AC();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  sub_10000A5D4(&qword_100942A80);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v5 = sub_10076B96C();
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_100640F04, 0, 0);
}

uint64_t sub_100640F04()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  sub_10000A5D4(&unk_10094A8C0);
  sub_10076F64C();
  sub_10076FC1C();
  v4 = v0[8];
  v0[25] = v0[7];
  v0[26] = v4;
  v0[27] = swift_getObjectType();
  sub_10000A5D4(&qword_10094D7B8);
  sub_10076FC1C();
  sub_10075EC6C();
  v5 = *(v2 + 48);
  v0[28] = v5;
  v0[29] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v3, 1, v1) == 1)
  {
    sub_10000CFBC(v0[18], &qword_100942A80);
  }

  else
  {
    v6 = v0[24];
    v7 = v0[20];
    v13 = v0[19];
    v8 = v0[13];
    v9 = v0[14];
    v10 = v0[12];
    (*(v7 + 32))(v6, v0[18]);
    (*(v8 + 104))(v9, enum case for InstallationType.redownload(_:), v10);
    sub_10075EE0C();
    (*(v8 + 8))(v9, v10);
    (*(v7 + 8))(v6, v13);
  }

  v11 = swift_task_alloc();
  v0[30] = v11;
  *v11 = v0;
  v11[1] = sub_10064112C;

  return sub_100641BF4();
}

uint64_t sub_10064112C()
{
  v2 = *v1;
  *(v2 + 248) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1006413B0, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 256) = v3;
    *v3 = v2;
    v3[1] = sub_10064129C;

    return sub_10064229C(v2 + 16);
  }
}

uint64_t sub_10064129C()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_100641730;
  }

  else
  {
    v2 = sub_100641550;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1006413B0()
{
  v1 = v0[28];
  v2 = v0[19];
  v3 = v0[17];
  sub_10075EC6C();
  if (v1(v3, 1, v2) == 1)
  {
    v4 = v0[17];
    swift_unknownObjectRelease();
    sub_10000CD74((v0 + 2));
    sub_10000CFBC(v4, &qword_100942A80);
  }

  else
  {
    v5 = v0[23];
    v6 = v0[19];
    v7 = v0[20];
    (*(v7 + 32))(v5, v0[17], v6);
    sub_10075EE1C();
    swift_unknownObjectRelease();
    (*(v7 + 8))(v5, v6);
    sub_10000CD74((v0 + 2));
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_100641550()
{
  v1 = v0[28];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[9];
  v5 = enum case for ActionOutcome.performed(_:);
  v6 = sub_10076F50C();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  sub_10075EC6C();
  if (v1(v3, 1, v2) == 1)
  {
    v7 = v0[16];
    swift_unknownObjectRelease();
    sub_10000CD74((v0 + 2));
    sub_10000CFBC(v7, &qword_100942A80);
  }

  else
  {
    v8 = v0[22];
    v9 = v0[19];
    v10 = v0[20];
    (*(v10 + 32))(v8, v0[16], v9);
    sub_10075EE1C();
    swift_unknownObjectRelease();
    (*(v10 + 8))(v8, v9);
    sub_10000CD74((v0 + 2));
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100641730()
{
  v1 = v0[28];
  v2 = v0[19];
  v3 = v0[15];
  sub_10075EC6C();
  if (v1(v3, 1, v2) == 1)
  {
    v4 = v0[15];
    swift_unknownObjectRelease();
    sub_10000CD74((v0 + 2));
    sub_10000CFBC(v4, &qword_100942A80);
  }

  else
  {
    v6 = v0[20];
    v5 = v0[21];
    v7 = v0[19];
    (*(v6 + 32))(v5, v0[15], v7);
    sub_10075EE1C();
    swift_unknownObjectRelease();
    (*(v6 + 8))(v5, v7);
    sub_10000CD74((v0 + 2));
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1006418D0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_10075DDBC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *sub_10000CF78((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10000A5D4(&qword_10095E8E0);
    v10 = swift_allocError();
    *v11 = a3;
    v12 = a3;

    return _swift_continuation_throwingResumeWithError(v9, v10);
  }

  else
  {
    sub_10075DD9C();
    (*(v6 + 32))(*(*(v9 + 64) + 40), v8, v5);
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_100641A40(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000257CC;

  return sub_100640D64(a1, v6, a3);
}

unint64_t sub_100641AF4()
{
  result = qword_100962330;
  if (!qword_100962330)
  {
    sub_10075EC8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100962330);
  }

  return result;
}

uint64_t sub_100641B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100641BA0();

  return AsyncActionImplementation.perform(_:asPartOf:)(a1, a2, a3, v6);
}

unint64_t sub_100641BA0()
{
  result = qword_100962338;
  if (!qword_100962338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100962338);
  }

  return result;
}

uint64_t sub_100641BF4()
{
  sub_10076F2EC();
  v0[22] = swift_task_alloc();
  v1 = sub_10075DDBC();
  v0[23] = v1;
  v0[24] = *(v1 - 8);
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();

  return _swift_task_switch(sub_100641CE8, 0, 0);
}

uint64_t sub_100641CE8()
{
  v1 = v0[25];
  v2 = objc_allocWithZone(ASDSystemAppMetadata);
  v3 = sub_10076FF6C();
  v4 = [v2 initWithBundleID:v3];
  v0[27] = v4;

  [v4 setUserInitiated:1];
  v5 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_100641E84;
  v6 = swift_continuation_init();
  v0[17] = sub_10000A5D4(&unk_100962360);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1006418D0;
  v0[13] = &unk_10089DFF8;
  v0[14] = v6;
  [v5 installApp:v4 withCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100641E84()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_100642200;
  }

  else
  {
    v2 = sub_100641F94;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100641F94()
{
  v1 = v0[27];
  (*(v0[24] + 32))(v0[26], v0[25], v0[23]);

  if (qword_1009413B0 != -1)
  {
    swift_once();
  }

  v2 = v0[26];
  v3 = v0[24];
  v9 = v0[27];
  v4 = v0[23];
  v5 = sub_10076FD4C();
  sub_10000A61C(v5, qword_100962310);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783DD0;
  sub_10076F2DC();
  v11._object = 0x80000001007F3800;
  v11._countAndFlagsBits = 0xD000000000000036;
  sub_10076F2CC(v11);
  v0[21] = v4;
  v6 = sub_10000DB7C(v0 + 18);
  (*(v3 + 16))(v6, v2, v4);
  sub_10076F29C();
  sub_10000CFBC((v0 + 18), &unk_1009434C0);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_10076F2CC(v12);
  sub_10076F2FC();
  sub_10076FBCC();

  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100642200()
{
  v1 = *(v0 + 216);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10064229C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_10000A5D4(&qword_100962340);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_10000A5D4(&qword_100962348);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_1006423DC, 0, 0);
}

uint64_t sub_1006423DC()
{
  v1 = *(v0 + 16);
  sub_10000CF78(v1, v1[3]);
  if (sub_10075F41C())
  {
    if (qword_1009413B0 != -1)
    {
      swift_once();
    }

    v2 = sub_10076FD4C();
    sub_10000A61C(v2, qword_100962310);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBCC();

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    if (qword_1009413B0 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 72);
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    v14 = *(v0 + 64);
    v8 = *(v0 + 16);
    v9 = sub_10076FD4C();
    *(v0 + 80) = v9;
    *(v0 + 88) = sub_10000A61C(v9, qword_100962310);
    *(v0 + 96) = sub_10000A5D4(&unk_100942A60);
    v10 = *(sub_10076F33C() - 8);
    *(v0 + 104) = *(v10 + 72);
    *(v0 + 120) = *(v10 + 80);
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBCC();

    sub_10000CF78(v8, v1[3]);
    sub_10075F40C();
    sub_10000A5D4(&qword_10094FD60);
    sub_100071820(&qword_10094FD68, &qword_10094FD60);
    sub_10076F48C();

    (*(v7 + 16))(v14, v5, v6);
    sub_100071820(&qword_100962350, &qword_100962348);
    sub_10077032C();
    v11 = sub_100071820(&qword_100962358, &qword_100962340);
    v12 = swift_task_alloc();
    *(v0 + 112) = v12;
    *v12 = v0;
    v12[1] = sub_100642894;
    v13 = *(v0 + 24);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 124, v13, v11);
  }
}

uint64_t sub_100642894()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[4];
    v3 = v2[5];
    v5 = v2[3];

    (*(v4 + 8))(v3, v5);
    v6 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  }

  else
  {
    v6 = sub_1006429D4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1006429D4()
{
  v1 = *(v0 + 124);
  if (v1 == 2)
  {
LABEL_4:
    v2 = *(v0 + 72);
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);
    (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));
    (*(v4 + 8))(v2, v3);

    v5 = *(v0 + 8);

    return v5();
  }

  if (v1)
  {
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBCC();

    goto LABEL_4;
  }

  v7 = sub_100071820(&qword_100962358, &qword_100962340);
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_100642894;
  v9 = *(v0 + 24);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 124, v9, v7);
}

uint64_t sub_100642BFC@<X0>(uint64_t *a1@<X8>)
{
  v19[0] = sub_10076B5BC();
  v2 = *(v19[0] - 8);
  __chkstk_darwin(v19[0]);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_100946720);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v19 - v10;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v12 = *(v6 + 8);
  v12(v11, v5);
  if (v19[1] && (v13 = sub_1007603BC(), result = , (v13 & 1) != 0))
  {
    a1[3] = &type metadata for CGFloat;
    a1[4] = &protocol witness table for CGFloat;
    *a1 = 0x4040000000000000;
  }

  else
  {
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    v12(v8, v5);
    v15 = v19[0];
    if (*(v2 + 88))(v4, v19[0]) == enum case for Shelf.ContentType.ribbonBar(_:) && (sub_1007645FC())
    {
      if (qword_100941210 != -1)
      {
        swift_once();
      }

      v16 = sub_10076D9AC();
      v17 = sub_10000A61C(v16, qword_1009A23B0);
      a1[3] = v16;
      a1[4] = &protocol witness table for StaticDimension;
      v18 = sub_10000DB7C(a1);
      (*(*(v16 - 8) + 16))(v18, v17, v16);
    }

    else
    {
      a1[3] = &type metadata for Double;
      a1[4] = &protocol witness table for Double;
      *a1 = 0;
    }

    return (*(v2 + 8))(v4, v15);
  }

  return result;
}

uint64_t sub_100642F38@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v132 = a2;
  v121 = sub_10076D1AC();
  v119 = *(v121 - 8);
  __chkstk_darwin(v121);
  v120 = (&v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v126 = sub_10000A5D4(&qword_100942F28);
  __chkstk_darwin(v126);
  v130 = &v116 - v4;
  v5 = sub_10000A5D4(&unk_1009568A0);
  __chkstk_darwin(v5 - 8);
  v127 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v131 = &v116 - v8;
  v9 = sub_10076B5BC();
  v128 = *(v9 - 8);
  v129 = v9;
  __chkstk_darwin(v9);
  v134 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&qword_1009499A0);
  __chkstk_darwin(v11 - 8);
  v124 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v123 = &v116 - v14;
  __chkstk_darwin(v15);
  v125 = &v116 - v16;
  __chkstk_darwin(v17);
  v19 = &v116 - v18;
  __chkstk_darwin(v20);
  v22 = &v116 - v21;
  __chkstk_darwin(v23);
  v25 = &v116 - v24;
  v118 = sub_10077164C();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v116 = &v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10000A5D4(&unk_100946720);
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v122 = &v116 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v116 - v31;
  __chkstk_darwin(v33);
  v35 = &v116 - v34;
  v135 = a1;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v36 = *(v28 + 8);
  v36(v35, v27);
  v133 = v36;
  if (v136)
  {
    v37 = sub_1007603BC();

    if (v37)
    {
      sub_10076468C();
      swift_getKeyPath();
      sub_10076F49C();

      v133(v32, v27);
      v38 = v137;
      if (v137)
      {
      }

      v39 = v118;
      v40 = v117;
      v41 = v116;
      if (qword_1009411F0 != -1)
      {
        swift_once();
      }

      v42 = sub_10076D9AC();
      sub_10000A61C(v42, qword_1009A2350);
      sub_10076462C();
      sub_10076D17C();
      sub_10076D40C();
      v44 = v43;
      swift_unknownObjectRelease();
      v45 = *(v40 + 8);
      v45(v41, v39);
      if (qword_1009411F8 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v42, qword_1009A2368);
      sub_10076462C();
      sub_10076D17C();
      sub_10076D40C();
      v47 = v46;
      swift_unknownObjectRelease();
      result = (v45)(v41, v39);
      v49 = v44 + v47;
      if (v38)
      {
        v49 = v44;
      }

      v50 = v132;
      v132[3] = &type metadata for CGFloat;
      v50[4] = &protocol witness table for CGFloat;
      *v50 = v49;
      return result;
    }
  }

  sub_10076463C();
  sub_10000CFBC(v22, &qword_1009499A0);
  sub_10002AB4C(v19, v25);
  v51 = *(v28 + 48);
  if (v51(v25, 1, v27) == 1)
  {
    sub_10000CFBC(v25, &qword_1009499A0);
    v52 = v130;
LABEL_19:
    v59 = v122;
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    v60 = v59;
    v61 = v133;
    v133(v60, v27);
    v63 = v123;
    v62 = v124;
    sub_10076463C();
    sub_10000CFBC(v63, &qword_1009499A0);
    v64 = v125;
    sub_10002AB4C(v62, v125);
    if (v51(v64, 1, v27) == 1)
    {
      sub_10000CFBC(v64, &qword_1009499A0);
      v65 = 1;
      v66 = v131;
    }

    else
    {
      swift_getKeyPath();
      v66 = v131;
      sub_10076F49C();

      v61(v64, v27);
      v65 = 0;
    }

    v68 = v127;
    v67 = v128;
    v69 = v52;
    v70 = v129;
    (*(v128 + 56))(v66, v65, 1, v129);
    v71 = *(v126 + 48);
    (*(v67 + 16))(v69, v134, v70);
    sub_10002ABBC(v66, v69 + v71);
    if ((*(v67 + 48))(v69 + v71, 1, v70) == 1)
    {
      v72 = enum case for Shelf.ContentType.ribbonBar(_:);
      v73 = (*(v67 + 88))(v69, v70);
    }

    else
    {
      sub_10002ABBC(v69 + v71, v68);
      v74 = *(v67 + 88);
      v75 = v74(v68, v70);
      v72 = enum case for Shelf.ContentType.ribbonBar(_:);
      if (v75 == enum case for Shelf.ContentType.ribbonBar(_:))
      {
        v76 = v120;
        *v120 = UIFontTextStyleBody;
        v77 = v119;
        v78 = v121;
        (*(v119 + 104))(v76, enum case for FontSource.textStyle(_:), v121);
        v79 = sub_10076D9AC();
        v80 = v132;
        v132[3] = v79;
        v80[4] = &protocol witness table for StaticDimension;
        sub_10000DB7C(v80);
        v138 = v78;
        v139 = &protocol witness table for FontSource;
        v81 = sub_10000DB7C(&v136);
        (*(v77 + 16))(v81, v76, v78);
        v82 = UIFontTextStyleBody;
        sub_10076D9BC();
        (*(v77 + 8))(v76, v78);
        sub_10000CFBC(v66, &unk_1009568A0);
        v83 = *(v67 + 8);
        v83(v134, v70);
        sub_10000CFBC(v69 + v71, &unk_1009568A0);
        return (v83)(v69, v70);
      }

      (*(v67 + 8))(v68, v70);
      v73 = v74(v69, v70);
    }

    if (v73 == v72)
    {
      if ((sub_1007645FC() & 1) == 0)
      {
        v93 = sub_10076461C();
        [v93 userInterfaceIdiom];

        v94 = v120;
        *v120 = UIFontTextStyleBody;
        v95 = v119 + 104;
        v96 = v121;
        (*(v119 + 104))(v94, enum case for FontSource.textStyle(_:), v121);
        v97 = sub_10076D9AC();
        v98 = v132;
        v132[3] = v97;
        v98[4] = &protocol witness table for StaticDimension;
        v135 = sub_10000DB7C(v98);
        v99 = (v95 - 88);
        v100 = v67;
        v101 = (v95 - 96);
        v102 = (v100 + 8);
        v138 = v96;
        v139 = &protocol witness table for FontSource;
        v103 = sub_10000DB7C(&v136);
        (*v99)(v103, v94, v96);
        v104 = UIFontTextStyleBody;
        sub_10076D9BC();
        (*v101)(v94, v96);
        sub_10000CFBC(v131, &unk_1009568A0);
        (*v102)(v134, v70);
LABEL_44:
        v110 = v69 + v71;
        v111 = &unk_1009568A0;
        return sub_10000CFBC(v110, v111);
      }

      v84 = v120;
      *v120 = UIFontTextStyleBody;
      v85 = v119;
      v86 = v121;
      (*(v119 + 104))(v84, enum case for FontSource.textStyle(_:), v121);
      v87 = sub_10076D9AC();
      v88 = v132;
      v132[3] = v87;
      v88[4] = &protocol witness table for StaticDimension;
      sub_10000DB7C(v88);
      v138 = v86;
      v139 = &protocol witness table for FontSource;
      v89 = sub_10000DB7C(&v136);
      (*(v85 + 16))(v89, v84, v86);
      v90 = UIFontTextStyleBody;
      sub_10076D9BC();
      (*(v85 + 8))(v84, v86);
    }

    else
    {
      if (v73 == enum case for Shelf.ContentType.reviewSummary(_:))
      {
        v91 = v132;
        v132[3] = &type metadata for Double;
        v91[4] = &protocol witness table for Double;
        v92 = 0x4038000000000000;
      }

      else
      {
        if (v73 == enum case for Shelf.ContentType.productRatings(_:))
        {
          v105 = sub_10076461C();
          v106 = sub_1007706EC();

          v107 = 52.0;
          if (v106)
          {
            v107 = 36.0;
          }

          v108 = v132;
          v132[3] = &type metadata for Double;
          v108[4] = &protocol witness table for Double;
          *v108 = v107;
          goto LABEL_43;
        }

        if (v73 != enum case for Shelf.ContentType.productReviewAction(_:))
        {
          if (v73 != enum case for Shelf.ContentType.arcadeFooter(_:) && v73 != enum case for Shelf.ContentType.uber(_:))
          {
            if (qword_100941220 != -1)
            {
              swift_once();
            }

            v112 = sub_10076D9AC();
            v113 = sub_10000A61C(v112, qword_1009A23E0);
            v114 = v132;
            v132[3] = v112;
            v114[4] = &protocol witness table for StaticDimension;
            v115 = sub_10000DB7C(v114);
            (*(*(v112 - 8) + 16))(v115, v113, v112);
            sub_10000CFBC(v66, &unk_1009568A0);
            (*(v67 + 8))(v134, v70);
            v111 = &qword_100942F28;
            v110 = v69;
            return sub_10000CFBC(v110, v111);
          }

          v109 = v132;
          v132[3] = &type metadata for Double;
          v109[4] = &protocol witness table for Double;
          *v109 = 0;
          goto LABEL_43;
        }

        v91 = v132;
        v132[3] = &type metadata for Double;
        v91[4] = &protocol witness table for Double;
        v92 = 0x4042000000000000;
      }

      *v91 = v92;
    }

LABEL_43:
    sub_10000CFBC(v66, &unk_1009568A0);
    (*(v67 + 8))(v134, v70);
    goto LABEL_44;
  }

  swift_getKeyPath();
  sub_10076F49C();

  v53 = v136;
  v133(v25, v27);
  v52 = v130;
  if (!v53)
  {
    goto LABEL_19;
  }

  v54 = sub_1007603BC();

  if ((v54 & 1) == 0)
  {
    goto LABEL_19;
  }

  if (qword_1009411F0 != -1)
  {
    swift_once();
  }

  v55 = sub_10076D9AC();
  v56 = sub_10000A61C(v55, qword_1009A2350);
  v57 = v132;
  v132[3] = v55;
  v57[4] = &protocol witness table for StaticDimension;
  v58 = sub_10000DB7C(v57);
  return (*(*(v55 - 8) + 16))(v58, v56, v55);
}

uint64_t sub_100643F38@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v53 = a2;
  v3 = sub_10076C38C();
  v46 = *(v3 - 8);
  v47 = v3;
  __chkstk_darwin(v3);
  v45 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_10000A5D4(&qword_100942F28) - 8;
  __chkstk_darwin(v52);
  v51 = &v45 - v5;
  v6 = sub_10000A5D4(&unk_1009568A0);
  __chkstk_darwin(v6 - 8);
  v48 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v45 - v9;
  v11 = sub_10000A5D4(&unk_100946720);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v45 - v13;
  v15 = sub_10076B5BC();
  v50 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v18 = *(v12 + 8);
  v18(v14, v11);
  v49 = a1;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v19 = v14;
  v20 = v17;
  v21 = v51;
  v18(v19, v11);
  v22 = v10;
  v23 = v15;
  v24 = v50;
  v25 = *(v52 + 56);
  (*(v50 + 16))(v21, v20, v23);
  sub_10002ABBC(v22, &v21[v25]);
  v26 = *(v24 + 88);
  v27 = v26(v21, v23);
  v28 = enum case for Shelf.ContentType.categoryBrick(_:);
  if (v27 == enum case for Shelf.ContentType.categoryBrick(_:))
  {
    sub_10000CFBC(&v21[v25], &unk_1009568A0);
    goto LABEL_3;
  }

  if ((*(v24 + 48))(&v21[v25], 1, v23) == 1)
  {
LABEL_14:
    if (v26(v21, v23) == enum case for Shelf.ContentType.action(_:))
    {
      v38 = v45;
      sub_10076460C();
      sub_10076C23C();
      v40 = v39;
      (*(v46 + 8))(v38, v47);
      v41 = v53;
      *(v53 + 3) = &type metadata for CGFloat;
      *(v41 + 4) = &protocol witness table for CGFloat;
      *v41 = v40 * 0.5;
      sub_10000CFBC(v22, &unk_1009568A0);
      (*(v24 + 8))(v20, v23);
      v42 = &v21[v25];
      v43 = &unk_1009568A0;
    }

    else
    {
      v44 = v53;
      *(v53 + 3) = &type metadata for Double;
      *(v44 + 4) = &protocol witness table for Double;
      *v44 = 0.0;
      sub_10000CFBC(v22, &unk_1009568A0);
      (*(v24 + 8))(v20, v23);
      v43 = &qword_100942F28;
      v42 = v21;
    }

    return sub_10000CFBC(v42, v43);
  }

  v35 = v48;
  sub_10002ABBC(&v21[v25], v48);
  if (v26(v35, v23) != v28)
  {
    (*(v24 + 8))(v35, v23);
    goto LABEL_14;
  }

  sub_10000CFBC(&v21[v25], &unk_1009568A0);
  (*(v24 + 8))(v21, v23);
LABEL_3:
  v29 = sub_10076C04C();
  v54[3] = v29;
  v54[4] = sub_10004C7BC();
  v30 = sub_10000DB7C(v54);
  (*(*(v29 - 8) + 104))(v30, enum case for Feature.shelf_header(_:), v29);
  LOBYTE(v29) = sub_10076C90C();
  sub_10000CD74(v54);
  if ((v29 & 1) != 0 && (sub_1007645FC() & 1) == 0)
  {
    v36 = v53;
    *(v53 + 3) = &type metadata for Double;
    *(v36 + 4) = &protocol witness table for Double;
    *v36 = 0.0;
  }

  else
  {
    if (qword_100941230 != -1)
    {
      swift_once();
    }

    v31 = sub_10076D9AC();
    v32 = sub_10000A61C(v31, qword_1009A2410);
    v33 = v53;
    *(v53 + 3) = v31;
    v33[4] = &protocol witness table for StaticDimension;
    v34 = sub_10000DB7C(v33);
    (*(*(v31 - 8) + 16))(v34, v32, v31);
  }

  sub_10000CFBC(v22, &unk_1009568A0);
  return (*(v24 + 8))(v20, v23);
}

void sub_100644650()
{
  v0 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v0 - 8);
  v2 = &v37 - v1;
  v3 = sub_10076D3DC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v42 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v37 - v7;
  __chkstk_darwin(v9);
  v11 = &v37 - v10;
  __chkstk_darwin(v12);
  v14 = &v37 - v13;
  v15 = type metadata accessor for BreakoutDetailsView.Config(0);
  sub_10000DB18(v15, qword_1009A27C8);
  v16 = sub_10000A61C(v15, qword_1009A27C8);
  if (qword_100941030 != -1)
  {
    swift_once();
  }

  v17 = sub_10000A61C(v3, qword_1009A1E88);
  v18 = v4[2];
  v39 = v14;
  v18(v14, v17, v3);
  if (qword_100941040 != -1)
  {
    swift_once();
  }

  v19 = sub_10000A61C(v3, qword_1009A1EB8);
  v40 = v11;
  v18(v11, v19, v3);
  if (qword_100941048 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A61C(v3, qword_1009A1ED0);
  v18(v2, v20, v3);
  v21 = v4[7];
  v21(v2, 0, 1, v3);
  if (qword_100941058 != -1)
  {
    swift_once();
  }

  v41 = v2;
  v22 = sub_10000A61C(v3, qword_1009A1F00);
  v38 = v8;
  v18(v8, v22, v3);
  if (qword_100941060 != -1)
  {
    swift_once();
  }

  v23 = sub_10000A61C(v3, qword_1009A1F18);
  v18(v42, v23, v3);
  v37 = UIContentSizeCategoryExtraExtraExtraLarge;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  v24 = v15[12];
  v25 = v16 + v15[11];
  v21((v16 + v24), 1, 1, v3);
  v26 = v16 + v15[21];
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = v16 + v15[22];
  *v27 = 0;
  *(v27 + 8) = 1;
  v28 = v15[23];
  *(v16 + v28) = 0;
  *(v16 + 32) = 0x4030000000000000;
  v29 = v4[4];
  v29(v16 + v15[9], v39, v3);
  v29(v16 + v15[10], v40, v3);
  *v25 = 3;
  *(v25 + 8) = 0;
  v30 = v37;
  v31 = v37;
  sub_100644B80(v41, v16 + v24);
  v29(v16 + v15[13], v38, v3);
  v29(v16 + v15[14], v42, v3);
  *(v16 + v15[15]) = 0x4044000000000000;
  *(v16 + v15[16]) = 0x4024000000000000;
  *(v16 + v15[17]) = 0x4042000000000000;
  *(v16 + v15[18]) = 0x403E000000000000;
  *(v16 + v15[19]) = 0x4038000000000000;
  v32 = *v16;
  *v16 = 0;

  v33 = *(v16 + 8);
  *(v16 + 8) = 0;

  v34 = *(v16 + 16);
  *(v16 + 16) = 0;

  v35 = *(v16 + 24);
  *(v16 + 24) = 0;

  *(v16 + v15[20]) = 0;
  *v26 = 0;
  *(v26 + 8) = 0;
  *v27 = 0;
  *(v27 + 8) = 1;
  v36 = *(v16 + v28);
  *(v16 + v28) = v30;

  *(v16 + v15[24]) = 0;
}

uint64_t sub_100644B80(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100943250);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100644BF0()
{
  v0 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v0 - 8);
  v2 = &v37 - v1;
  v3 = sub_10076D3DC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v37 - v8;
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  v16 = type metadata accessor for BreakoutDetailsView.Config(0);
  sub_10000DB18(v16, qword_1009A27E0);
  v17 = sub_10000A61C(v16, qword_1009A27E0);
  if (qword_100941030 != -1)
  {
    swift_once();
  }

  v42 = v9;
  v18 = sub_10000A61C(v3, qword_1009A1E88);
  v19 = v4[2];
  v39 = v15;
  v19(v15, v18, v3);
  if (qword_100941050 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A61C(v3, qword_1009A1EE8);
  v40 = v12;
  v19(v12, v20, v3);
  v21 = v4[7];
  v21(v2, 1, 1, v3);
  if (qword_100941058 != -1)
  {
    swift_once();
  }

  v41 = v2;
  v22 = sub_10000A61C(v3, qword_1009A1F00);
  v19(v42, v22, v3);
  if (qword_100941060 != -1)
  {
    swift_once();
  }

  v23 = sub_10000A61C(v3, qword_1009A1F18);
  v19(v6, v23, v3);
  v37 = UIContentSizeCategoryExtraExtraExtraLarge;
  v38 = v6;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  v24 = v16[12];
  v25 = v17 + v16[11];
  v21((v17 + v24), 1, 1, v3);
  v26 = v17 + v16[21];
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = v17 + v16[22];
  *v27 = 0;
  *(v27 + 8) = 1;
  v28 = v16[23];
  *(v17 + v28) = 0;
  *(v17 + 32) = 0x4030000000000000;
  v29 = v4[4];
  v29(v17 + v16[9], v39, v3);
  v29(v17 + v16[10], v40, v3);
  *v25 = 0;
  *(v25 + 8) = 1;
  v30 = v37;
  v31 = v37;
  sub_100644B80(v41, v17 + v24);
  v29(v17 + v16[13], v42, v3);
  v29(v17 + v16[14], v38, v3);
  *(v17 + v16[15]) = 0x4044000000000000;
  *(v17 + v16[16]) = 0x4024000000000000;
  *(v17 + v16[17]) = 0x4045000000000000;
  *(v17 + v16[18]) = 0x403E000000000000;
  *(v17 + v16[19]) = 0x4038000000000000;
  v32 = *v17;
  *v17 = 0;

  v33 = *(v17 + 8);
  *(v17 + 8) = 0;

  v34 = *(v17 + 16);
  *(v17 + 16) = 0;

  v35 = *(v17 + 24);
  *(v17 + 24) = 0;

  *(v17 + v16[20]) = 0;
  *v26 = 0;
  *(v26 + 8) = 0;
  *v27 = 0;
  *(v27 + 8) = 1;
  v36 = *(v17 + v28);
  *(v17 + v28) = v30;

  *(v17 + v16[24]) = 0;
}

void sub_1006450D4(double a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v5 - 8);
  v7 = &v42 - v6;
  v8 = sub_10076D3DC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v42 - v13;
  __chkstk_darwin(v15);
  v17 = &v42 - v16;
  __chkstk_darwin(v18);
  v20 = &v42 - v19;
  v21 = type metadata accessor for BreakoutDetailsView.Config(0);
  sub_10000DB18(v21, a3);
  v22 = sub_10000A61C(v21, a3);
  if (qword_100941030 != -1)
  {
    swift_once();
  }

  v47 = v14;
  v23 = sub_10000A61C(v8, qword_1009A1E88);
  v24 = v9[2];
  v44 = v20;
  v24(v20, v23, v8);
  if (qword_100941038 != -1)
  {
    swift_once();
  }

  v25 = sub_10000A61C(v8, qword_1009A1EA0);
  v45 = v17;
  v24(v17, v25, v8);
  v26 = v9[7];
  v26(v7, 1, 1, v8);
  if (qword_100941058 != -1)
  {
    swift_once();
  }

  v46 = v7;
  v27 = sub_10000A61C(v8, qword_1009A1F00);
  v24(v47, v27, v8);
  if (qword_100941060 != -1)
  {
    swift_once();
  }

  v28 = sub_10000A61C(v8, qword_1009A1F18);
  v24(v11, v28, v8);
  v42 = UIContentSizeCategoryExtraExtraExtraLarge;
  v43 = v11;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  v29 = v21[12];
  v30 = v22 + v21[11];
  v26((v22 + v29), 1, 1, v8);
  v31 = v22 + v21[21];
  *v31 = 0;
  *(v31 + 8) = 1;
  v32 = v22 + v21[22];
  *v32 = 0;
  *(v32 + 8) = 1;
  v33 = v21[23];
  *(v22 + v33) = 0;
  *(v22 + 32) = 0x4030000000000000;
  v34 = v9[4];
  v34(v22 + v21[9], v44, v8);
  v34(v22 + v21[10], v45, v8);
  *v30 = 0;
  *(v30 + 8) = 1;
  v35 = v42;
  v36 = v42;
  sub_100644B80(v46, v22 + v29);
  v34(v22 + v21[13], v47, v8);
  v34(v22 + v21[14], v43, v8);
  *(v22 + v21[15]) = a1;
  *(v22 + v21[16]) = 0x403C000000000000;
  *(v22 + v21[17]) = 0x403A000000000000;
  *(v22 + v21[18]) = 0x4038000000000000;
  *(v22 + v21[19]) = 0x4038000000000000;
  v37 = *v22;
  *v22 = 0;

  v38 = *(v22 + 8);
  *(v22 + 8) = 0;

  v39 = *(v22 + 16);
  *(v22 + 16) = 0;

  v40 = *(v22 + 24);
  *(v22 + 24) = 0;

  *(v22 + v21[20]) = 0x4034000000000000;
  *v31 = 0;
  *(v31 + 8) = 1;
  *v32 = 0;
  *(v32 + 8) = 1;
  v41 = *(v22 + v33);
  *(v22 + v33) = v35;

  *(v22 + v21[24]) = 0;
}

void sub_1006455A8()
{
  v0 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v0 - 8);
  v2 = &v34 - v1;
  v3 = sub_10076D3DC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v43 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v34 - v7;
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  v15 = type metadata accessor for BreakoutDetailsView.Config(0);
  sub_10000DB18(v15, qword_1009A2810);
  v16 = sub_10000A61C(v15, qword_1009A2810);
  if (qword_100941068 != -1)
  {
    swift_once();
  }

  v17 = sub_10000A61C(v3, qword_1009A1F30);
  v18 = *(v4 + 16);
  v39 = v14;
  v18(v14, v17, v3);
  if (qword_100941090 != -1)
  {
    swift_once();
  }

  v19 = sub_10000A61C(v3, qword_1009A1FA8);
  v40 = v11;
  v18(v11, v19, v3);
  v41 = v4;
  v20 = *(v4 + 56);
  v20(v2, 1, 1, v3);
  if (qword_1009410A0 != -1)
  {
    swift_once();
  }

  v42 = v2;
  v21 = sub_10000A61C(v3, qword_1009A1FD8);
  v18(v8, v21, v3);
  v38 = v8;
  if (qword_100941060 != -1)
  {
    swift_once();
  }

  v22 = sub_10000A61C(v3, qword_1009A1F18);
  v18(v43, v22, v3);
  sub_1000325F0();
  v34 = sub_100770CFC();
  v35 = sub_100770CFC();
  v36 = sub_100770D1C();
  v37 = sub_100770D1C();
  *v16 = 0u;
  *(v16 + 16) = 0u;
  v23 = v15[12];
  v24 = v16 + v15[11];
  v20((v16 + v23), 1, 1, v3);
  v25 = v16 + v15[21];
  *v25 = 0;
  *(v25 + 8) = 1;
  v26 = v16 + v15[22];
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = v15[23];
  *(v16 + v27) = 0;
  *(v16 + 32) = 0x4030000000000000;
  v28 = *(v41 + 32);
  v28(v16 + v15[9], v39, v3);
  v28(v16 + v15[10], v40, v3);
  *v24 = 0;
  *(v24 + 8) = 1;
  sub_100644B80(v42, v16 + v23);
  v28(v16 + v15[13], v38, v3);
  v28(v16 + v15[14], v43, v3);
  *(v16 + v15[15]) = 0x4042000000000000;
  *(v16 + v15[16]) = 0x4030000000000000;
  *(v16 + v15[17]) = 0x4043800000000000;
  *(v16 + v15[18]) = 0x4041000000000000;
  *(v16 + v15[19]) = 0x4038000000000000;
  v29 = *v16;
  *v16 = v34;

  v30 = *(v16 + 8);
  *(v16 + 8) = v35;

  v31 = *(v16 + 16);
  *(v16 + 16) = v36;

  v32 = *(v16 + 24);
  *(v16 + 24) = v37;

  *(v16 + v15[20]) = 0;
  *v25 = 0;
  *(v25 + 8) = 0;
  *v26 = 0;
  *(v26 + 8) = 0;
  v33 = *(v16 + v27);
  *(v16 + v27) = 0;

  *(v16 + v15[24]) = 1;
}

void sub_100645AA8()
{
  v0 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v0 - 8);
  v2 = &v34 - v1;
  v3 = sub_10076D3DC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v43 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v34 - v7;
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  v15 = type metadata accessor for BreakoutDetailsView.Config(0);
  sub_10000DB18(v15, qword_1009A2828);
  v16 = sub_10000A61C(v15, qword_1009A2828);
  if (qword_100941068 != -1)
  {
    swift_once();
  }

  v17 = sub_10000A61C(v3, qword_1009A1F30);
  v18 = *(v4 + 16);
  v39 = v14;
  v18(v14, v17, v3);
  if (qword_100941098 != -1)
  {
    swift_once();
  }

  v19 = sub_10000A61C(v3, qword_1009A1FC0);
  v40 = v11;
  v18(v11, v19, v3);
  v41 = v4;
  v20 = *(v4 + 56);
  v20(v2, 1, 1, v3);
  if (qword_1009410A8 != -1)
  {
    swift_once();
  }

  v42 = v2;
  v21 = sub_10000A61C(v3, qword_1009A1FF0);
  v18(v8, v21, v3);
  v38 = v8;
  if (qword_100941060 != -1)
  {
    swift_once();
  }

  v22 = sub_10000A61C(v3, qword_1009A1F18);
  v18(v43, v22, v3);
  sub_1000325F0();
  v34 = sub_100770CFC();
  v35 = sub_100770CFC();
  v36 = sub_100770D1C();
  v37 = sub_100770D1C();
  *v16 = 0u;
  *(v16 + 16) = 0u;
  v23 = v15[12];
  v24 = v16 + v15[11];
  v20((v16 + v23), 1, 1, v3);
  v25 = v16 + v15[21];
  *v25 = 0;
  *(v25 + 8) = 1;
  v26 = v16 + v15[22];
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = v15[23];
  *(v16 + v27) = 0;
  *(v16 + 32) = 0x402A000000000000;
  v28 = *(v41 + 32);
  v28(v16 + v15[9], v39, v3);
  v28(v16 + v15[10], v40, v3);
  *v24 = 0;
  *(v24 + 8) = 1;
  sub_100644B80(v42, v16 + v23);
  v28(v16 + v15[13], v38, v3);
  v28(v16 + v15[14], v43, v3);
  *(v16 + v15[15]) = 0x402A000000000000;
  *(v16 + v15[16]) = 0x4030000000000000;
  *(v16 + v15[17]) = 0x403F000000000000;
  *(v16 + v15[18]) = 0x403A000000000000;
  *(v16 + v15[19]) = 0x4038000000000000;
  v29 = *v16;
  *v16 = v34;

  v30 = *(v16 + 8);
  *(v16 + 8) = v35;

  v31 = *(v16 + 16);
  *(v16 + 16) = v36;

  v32 = *(v16 + 24);
  *(v16 + 24) = v37;

  *(v16 + v15[20]) = 0;
  *v25 = 0;
  *(v25 + 8) = 0;
  *v26 = 0;
  *(v26 + 8) = 0;
  v33 = *(v16 + v27);
  *(v16 + v27) = 0;

  *(v16 + v15[24]) = 1;
}

uint64_t sub_100645FA4()
{
  v0 = sub_10076D39C();
  sub_10000DB18(v0, qword_1009A2840);
  sub_10000A61C(v0, qword_1009A2840);
  return sub_10076D3AC();
}

char *sub_100645FF8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_isCollapsing] = 0;
  v3 = OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkView;
  *&v1[v3] = [objc_allocWithZone(UIImageView) init];
  v4 = OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkFallbackView;
  if (qword_100940708 != -1)
  {
    swift_once();
  }

  v17[2] = xmmword_1009A04A0;
  v17[3] = unk_1009A04B0;
  v18 = qword_1009A04C0;
  v17[0] = xmmword_1009A0480;
  v17[1] = *algn_1009A0490;
  v5 = objc_allocWithZone(type metadata accessor for AppPromotionIAPFallbackView());
  *&v1[v4] = sub_1004F0D74(v17, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_mediaOverlayStyle;
  v7 = enum case for MediaOverlayStyle.matchSystem(_:);
  v8 = sub_10076361C();
  (*(*(v8 - 8) + 104))(&v1[v6], v7, v8);
  v9 = &v1[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_refetchArtworkBlock];
  *v9 = 0;
  *(v9 + 1) = 0;
  v16.receiver = v1;
  v16.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v16, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v11 = OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkView;
  v12 = *&v10[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkView];
  v13 = v10;
  [v12 setContentMode:2];
  [*&v10[v11] setClipsToBounds:1];
  [*&v10[v11] setAccessibilityIgnoresInvertColors:1];
  [v13 addSubview:*&v10[v11]];
  v14 = OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkFallbackView;
  [*&v13[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkFallbackView] setContentMode:2];
  [*&v13[v14] setClipsToBounds:1];
  [v13 addSubview:*&v13[v14]];

  return v13;
}

void sub_10064628C()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkView];
    v5 = Strong;
    [v3 setHidden:1];
    v5[qword_1009A2560] = 1;
    *&v5[qword_1009602B8 + 8] = &off_10089E040;
    swift_unknownObjectWeakAssign();
    v4 = [v0 traitCollection];
    sub_1007706FC();

    [v5 _setCornerRadius:20.0];
    [v1 insertSubview:v5 aboveSubview:v3];
    [v1 setNeedsLayout];
  }
}

void (*sub_1006463B8(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_10064640C;
}

void sub_10064640C(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v23 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_1006483F0(&qword_100942810, type metadata accessor for VideoView);
      v7 = v23;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        sub_100016F40(0, &qword_1009441F0);
        v10 = v4;
        v11 = sub_100770EEC();

        v12 = *(a1 + 8);
        if (v11)
        {
          v13 = swift_unknownObjectWeakLoadStrong();
          if (v13)
          {
            v14 = v13;
            [v13 removeFromSuperview];
          }

          [*(v12 + OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkView) setHidden:0];
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v23;
    }

    swift_unknownObjectWeakAssign();
    sub_10064628C();

    v22 = *a1;
  }

  else
  {
    if (Strong)
    {
      sub_1006483F0(&qword_100942810, type metadata accessor for VideoView);
      v15 = [v6 superview];
      if (v15)
      {
        v16 = v15;
        sub_100016F40(0, &qword_1009441F0);
        v17 = v4;
        v18 = sub_100770EEC();

        v19 = *(a1 + 8);
        if (v18)
        {
          v20 = swift_unknownObjectWeakLoadStrong();
          if (v20)
          {
            v21 = v20;
            [v20 removeFromSuperview];
          }

          [*(v19 + OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkView) setHidden:0];
        }
      }

      else
      {
      }
    }

    swift_unknownObjectWeakAssign();
    sub_10064628C();
    v22 = v23;
  }
}

void sub_1006467B0()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10077164C();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32.receiver = v0;
  v32.super_class = ObjectType;
  objc_msgSendSuper2(&v32, "frame", v4);
  v7 = enum case for FloatingPointRoundingRule.up(_:);
  v8 = *(v3 + 104);
  v8(v6, enum case for FloatingPointRoundingRule.up(_:), v2);
  sub_100770A2C();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = *(v3 + 8);
  v17(v6, v2);
  v8(v6, v7, v2);
  sub_100770A2C();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v17(v6, v2);
  v33.origin.x = v10;
  v33.origin.y = v12;
  v33.size.width = v14;
  v33.size.height = v16;
  v34.origin.x = v19;
  v34.origin.y = v21;
  v34.size.width = v23;
  v34.size.height = v25;
  if (!CGRectEqualToRect(v33, v34) && (v0[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_isCollapsing] & 1) == 0)
  {
    v26 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_refetchArtworkBlock];
    if (v26)
    {

      [v0 bounds];
      v8(v6, v7, v2);
      sub_100770AAC();
      v28 = v27;
      v30 = v29;
      v17(v6, v2);
      v31 = [v0 traitCollection];
      v26(v28, v30);
      sub_1000167E0(v26);
    }
  }
}

id sub_100646A80()
{
  v34.receiver = v0;
  v34.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v34, "layoutSubviews");
  v1 = v0[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_isCollapsing];
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = Strong;
  if (v1 == 1)
  {
    if (Strong)
    {
      [v0 bounds];
      v5 = v4;
      v7 = v6;
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8 && (v9 = v8, v10 = *(v8 + qword_1009602D0), v9, v11 = [v10 image], v10, v11))
      {
        [v11 size];
        v13 = v12;
        v15 = v14;

        v16 = v15;
        v17 = v13;
      }

      else
      {
        [v0 bounds];
      }

      [v3 setFrame:{v5, v7, v17, v16}];
    }

    v20 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkView];
    [v0 bounds];
    v22 = v21;
    v24 = v23;
    v25 = [v20 image];
    if (v25)
    {
      v26 = v25;
      [v25 size];
      v28 = v27;
      v30 = v29;
    }

    else
    {
      [v0 bounds];
      v28 = v31;
      v30 = v32;
    }

    [v20 setFrame:{v22, v24, v28, v30}];
    v19 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkFallbackView];
    [v20 frame];
  }

  else
  {
    if (Strong)
    {
      [v0 bounds];
      [v3 setFrame:?];
    }

    v18 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkView];
    [v0 bounds];
    [v18 setFrame:?];
    v19 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkFallbackView];
    [v0 bounds];
  }

  return [v19 setFrame:?];
}

void sub_100646D28()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[qword_1009602F8];
    if (v1)
    {
      v5 = Strong;
      v2 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_10032E034;
      aBlock[5] = v2;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1005F04D8;
      aBlock[3] = &unk_10089E170;
      v3 = _Block_copy(aBlock);
      v4 = v1;

      [v4 enterFullScreenAnimated:1 completionHandler:v3];

      _Block_release(v3);
    }

    else
    {
    }
  }
}

void sub_100646EB4()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100505C94(0, 0);
    swift_unknownObjectRelease();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + qword_1009602F8);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      [v3 setShowsPlaybackControls:1];
    }
  }
}

void sub_100646F78()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = [Strong traitCollection];
    v2 = sub_1007706FC();

    if (v2)
    {

      swift_unknownObjectRelease();
    }

    else
    {
      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      *(v4 + 24) = 0x3FF0000000000000;
      v5 = objc_opt_self();
      v7[4] = sub_1005076E8;
      v7[5] = v4;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 1107296256;
      v7[2] = sub_10009AEDC;
      v7[3] = &unk_10089E120;
      v6 = _Block_copy(v7);

      [v5 animateWithDuration:4 delay:v6 options:0 animations:0.3 completion:0.0];

      swift_unknownObjectRelease();
      _Block_release(v6);
    }
  }
}

void sub_100647128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10000A5D4(&unk_10094C030);
  __chkstk_darwin(v8 - 8);
  v75 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v74 = &v67 - v11;
  v12 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v12 - 8);
  v73 = &v67 - v13;
  v14 = sub_1007611EC();
  __chkstk_darwin(v14 - 8);
  __chkstk_darwin(v15);
  v16 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v16 - 8);
  v18 = &v67 - v17;
  v19 = sub_10076121C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10076481C();
  v26 = __chkstk_darwin(v23);
  v28 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = &OBJC_METACLASS____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView;
  if (a1)
  {
    v69 = v25;
    v70 = v24;
    v71 = a2;
    v30 = *(v20 + 104);
    v67 = v4;
    v31 = v28;
    v30(v22, enum case for VideoFillMode.scaleAspectFill(_:), v19, v26);

    sub_10076B84C();
    sub_10076BEFC();
    sub_10076D3AC();

    v32 = sub_10076D39C();
    (*(*(v32 - 8) + 56))(v18, 0, 1, v32);
    sub_10076B7EC();
    sub_10076B82C();
    sub_10076B7FC();
    sub_10076B7DC();
    v33 = a3;
    sub_10076B83C();
    sub_1007647FC();
    sub_100762F0C();
    sub_10076F5CC();
    sub_10076B7CC();
    v34 = v73;
    sub_10076B85C();
    v35 = sub_10075DB7C();
    (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
    v36 = v74;
    sub_10076B81C();
    v37 = v75;
    sub_10076B80C();
    type metadata accessor for VideoView();
    sub_1006483F0(&qword_100942810, type metadata accessor for VideoView);
    v38 = v31;
    v4 = v67;
    v68 = v38;
    v72 = v33;
    v39 = sub_100762EEC();
    sub_10000CFBC(v37, &unk_10094C030);
    sub_10000CFBC(v36, &unk_10094C030);
    sub_10000CFBC(v34, &unk_1009435D0);
    sub_10000CFBC(v76, &qword_100943310);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v41 = Strong;
      v42 = [Strong superview];
      if (v42)
      {
        v43 = v42;
        sub_100016F40(0, &qword_1009441F0);
        v44 = v4;
        v45 = sub_100770EEC();

        if (v45)
        {
          v46 = swift_unknownObjectWeakLoadStrong();
          if (v46)
          {
            v47 = v46;
            [v46 removeFromSuperview];
          }

          [*&v44[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkView] setHidden:0];
        }
      }

      else
      {
      }
    }

    swift_unknownObjectWeakAssign();
    sub_10064628C();

    v51 = swift_unknownObjectWeakLoadStrong();
    if (v51)
    {
      v52 = v51;
      sub_10076B84C();
      v53 = sub_10076BE1C();

      [v52 setBackgroundColor:v53];
    }

    sub_10076B84C();
    v54 = sub_10076BE1C();

    a2 = v71;
    if (!v54)
    {
      sub_100016F40(0, &qword_100942F10);
      v54 = sub_100770D5C();
    }

    [v4 setBackgroundColor:v54];

    (*(v69 + 8))(v68, v70);
    v48 = &selRef_initWithTabBarSystemItem_tag_;
    v29 = &OBJC_METACLASS____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView;
  }

  else
  {
    v48 = &selRef_initWithTabBarSystemItem_tag_;
    if (a2)
    {

      v49 = sub_10076BE1C();
      if (!v49)
      {
        sub_100016F40(0, &qword_100942F10);
        v49 = sub_100770D5C();
      }

      v50 = v49;
      [v4 setBackgroundColor:v49];

      v29 = &OBJC_METACLASS____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView;
    }
  }

  [*&v4[v29[22].cache] v48[222]];
  v55 = swift_unknownObjectWeakLoadStrong();
  if (v55)
  {
    v56 = v55;
    [v55 v48[222]];
  }

  [*&v4[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkFallbackView] v48[222]];
  v57 = sub_100647974(a2, a1);
  v58 = &v4[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_refetchArtworkBlock];
  v59 = *&v4[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_refetchArtworkBlock];
  *v58 = v57;
  v58[1] = v60;
  sub_1000167E0(v59);
  v61 = *v58;
  if (*v58)
  {

    [v4 bounds];
    v63 = v62;
    v65 = v64;
    v66 = [v4 traitCollection];
    v61(v63, v65);
    sub_1000167E0(v61);
  }
}

void (*sub_100647974(uint64_t a1, uint64_t a2))(uint64_t a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  if (a2)
  {
    a1 = sub_10076B84C();
LABEL_5:
    v5 = a2 != 0;
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    *(v8 + 24) = v6;
    *(v8 + 32) = v7;
    *(v8 + 40) = a1;
    *(v8 + 48) = ObjectType;
    return sub_1006486B0;
  }

  if (a1)
  {

    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_100647A70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_100760C4C();
  sub_10076F5AC();
  if (v10)
  {
    if (!sub_100764E0C())
    {
      [*&v2[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkView] setHidden:1];
      v7 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkFallbackView];
      sub_100764D7C();
      sub_1004F16F4();

      v8 = sub_100764D7C();
      [v3 bounds];
      sub_1006486C0(v8, v10, v7);
      goto LABEL_6;
    }
  }

  v5 = sub_100764DFC();
  v6 = sub_100764E0C();
  sub_100647128(v5, v6, a2);
LABEL_6:
}

void sub_100647BA0(double a1, double a2, uint64_t a3, char a4)
{
  v7 = sub_10076BEDC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v13 = swift_unknownObjectWeakLoadStrong();

      if (v13)
      {
        v14 = &qword_1009602D0;
        goto LABEL_7;
      }
    }
  }

  else
  {
    swift_beginAccess();
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v13 = v15;
      v14 = &OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkView;
LABEL_7:
      v16 = *&v13[*v14];

      if (a1 != 0.0)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }
  }

  v16 = 0;
  if (a1 != 0.0)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (a2 == 0.0)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (!v16)
  {
    return;
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
LABEL_11:

    return;
  }

  sub_100760C4C();
  v16 = v16;
  sub_10076F5AC();

  if (!v19[4])
  {

    goto LABEL_11;
  }

  if (qword_1009413E8 != -1)
  {
    swift_once();
  }

  v17 = sub_10076D39C();
  sub_10000A61C(v17, qword_1009A2840);
  sub_10076D36C();
  sub_10076BEEC();
  v18 = sub_10076BE9C();
  (*(v8 + 8))(v10, v7);
  sub_10076BFCC();
  [v16 setContentMode:v18];
  sub_100016F40(0, &qword_10094A280);
  sub_10032E104();
  sub_100760B8C();
}

uint64_t type metadata accessor for AppPromotionMediaContainerView()
{
  result = qword_1009623C8;
  if (!qword_1009623C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100647FCC()
{
  result = sub_10076361C();
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

void sub_1006480A4(void *a1)
{
  sub_100648480();
  swift_unknownObjectWeakAssign();
  sub_10064628C();
}

uint64_t (*sub_1006480F4(uint64_t **a1))()
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
  v2[4] = sub_1006463B8(v2);
  return sub_100019A4C;
}

uint64_t sub_10064816C()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1006483F0(&unk_1009623F0, type metadata accessor for AppPromotionMediaContainerView);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1006481E0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1006483F0(&unk_1009623F0, type metadata accessor for AppPromotionMediaContainerView);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_10064826C(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_1006483F0(&unk_1009623F0, type metadata accessor for AppPromotionMediaContainerView);
  *(v3 + 32) = sub_10076483C();
  return sub_10001D41C;
}

id sub_100648328()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "frame");
}

uint64_t sub_1006483F0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100648480()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1006483F0(&qword_100942810, type metadata accessor for VideoView);
    v1 = [Strong superview];
    if (v1)
    {
      v2 = v1;
      sub_100016F40(0, &qword_1009441F0);
      v3 = v0;
      v4 = sub_100770EEC();

      if (v4)
      {
        v5 = swift_unknownObjectWeakLoadStrong();
        if (v5)
        {
          v6 = v5;
          [v5 removeFromSuperview];
        }

        v7 = *&v3[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkView];

        [v7 setHidden:0];
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1006485F8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100648630()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100648668()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1006486C0(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = sub_10076BF6C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10076BEDC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[3] = sub_10076C52C();
  v34[4] = &protocol witness table for AppPromotion;
  v34[0] = a1;
  sub_10000A570(v34, v33);

  sub_10000A5D4(&unk_100942830);
  if (swift_dynamicCast())
  {
    v11 = v32;
    v12 = sub_10076C49C();
    sub_10076C4BC();
    sub_10075E67C();
    v13 = swift_dynamicCastClass();
    v29 = v11;
    if (v13)
    {
      sub_10075E66C();
      v14 = sub_10076BB5C();
    }

    else
    {

      sub_10076C4BC();
      v14 = sub_10076BB5C();
    }

    v30 = a2;
    if (v14)
    {

      sub_10076BEEC();
      sub_10076BE9C();
      v31 = v8;
      v15 = *(v8 + 8);
      v15(v10, v7);
      sub_10076BFCC();
      v28 = a3;
      v16 = *&a3[qword_10095AD68];
      sub_10076BF7C();
      sub_10075FCCC();
      [v16 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10);
        sub_100770D5C();
      }

      sub_10075FB8C();
      sub_10076BEEC();
      v17 = sub_10076BE9C();
      v15(v10, v7);
      [v16 setContentMode:v17];
      sub_10075FD2C();
      sub_1006483F0(&qword_100941820, &type metadata accessor for ArtworkView);
      sub_100760B8C();

      v8 = v31;
      a3 = v28;
    }

    if (v12)
    {
      sub_10076BEEC();
      sub_10076BE9C();
      v18 = *(v8 + 8);
      v31 = v8 + 8;
      v28 = v18;
      (v18)(v10, v7);
      sub_10076BFCC();
      v19 = *&a3[qword_10095AD60];
      v20 = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView;
      v21 = *(v19 + OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView);
      sub_10076BF7C();
      sub_10075FCCC();
      [v21 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10);
        sub_100770D5C();
      }

      sub_10075FB8C();

      v22 = *(v19 + v20);
      sub_10076BEEC();
      v23 = sub_10076BE9C();
      (v28)(v10, v7);
      [v22 setContentMode:v23];

      v24 = *(v19 + v20);
      sub_10075FD2C();
      sub_1006483F0(&qword_100941820, &type metadata accessor for ArtworkView);
      v25 = v24;
      sub_100760B8C();
    }

    else
    {
    }
  }

  return sub_10000CD74(v34);
}

uint64_t sub_100648C48()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100648C80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100648C98()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_isCollapsing) = 0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkView;
  *(v1 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkFallbackView;
  if (qword_100940708 != -1)
  {
    swift_once();
  }

  v9[2] = xmmword_1009A04A0;
  v9[3] = unk_1009A04B0;
  v10 = qword_1009A04C0;
  v9[0] = xmmword_1009A0480;
  v9[1] = *algn_1009A0490;
  v4 = objc_allocWithZone(type metadata accessor for AppPromotionIAPFallbackView());
  *(v1 + v3) = sub_1004F0D74(v9, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_mediaOverlayStyle;
  v6 = enum case for MediaOverlayStyle.matchSystem(_:);
  v7 = sub_10076361C();
  (*(*(v7 - 8) + 104))(v1 + v5, v6, v7);
  v8 = (v1 + OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_refetchArtworkBlock);
  *v8 = 0;
  v8[1] = 0;
  sub_10077156C();
  __break(1u);
}

id sub_10064901C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchHintsCollectionViewDataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100649084()
{
  v0 = sub_10000A5D4(&qword_100942900);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10076C2DC();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10000A5D4(&qword_100942908);
  __chkstk_darwin(v2 - 8);
  __chkstk_darwin(v3);
  __chkstk_darwin(v4);
  __chkstk_darwin(v5);
  sub_10000A5D4(&qword_100942910);
  sub_10076C20C();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100784500;
  sub_10001E290();
  sub_10076C29C();
  sub_10076C28C();
  sub_10076C29C();
  sub_10076C2CC();
  sub_10076C29C();
  sub_10076C29C();
  sub_10076C1CC();
  sub_10076C29C();
  sub_10076C28C();
  sub_10076C27C();
  sub_10076C2CC();
  sub_1007704BC();
  sub_10076C29C();
  sub_10076C29C();
  result = sub_10076C1CC();
  qword_1009A2860 = v6;
  return result;
}

uint64_t sub_100649484()
{
  sub_1000325F0();
  result = sub_100770D1C();
  qword_100962430 = result;
  return result;
}

char *sub_1006494B8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v84 = sub_10076048C();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076A51C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v85 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v86 = &v80 - v15;
  __chkstk_darwin(v16);
  v18 = &v80 - v17;
  __chkstk_darwin(v19);
  v21 = &v80 - v20;
  v22 = OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_metrics;
  sub_10076A50C();
  v23 = &v5[OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_id];
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *(v23 + 4) = 0;
  v24 = OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_itemType;
  v25 = sub_1007668DC();
  (*(*(v25 - 8) + 56))(&v5[v24], 1, 1, v25);
  v26 = &v5[OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_labelMaxWidth];
  *v26 = 0;
  v26[8] = 1;
  v27 = &v5[OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_truncationLegibilityThreshold];
  *v27 = 0;
  v27[8] = 1;
  v5[OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_allowsTruncation] = 2;
  swift_beginAccess();
  v88 = *(v12 + 16);
  v88(v21, &v5[v22], v11);
  v28 = sub_10076A4DC();
  v87 = v12;
  v29 = *(v12 + 8);
  v89 = v11;
  v91 = v12 + 8;
  v90 = v29;
  v29(v21, v11);
  v30 = type metadata accessor for RatingView();
  v31 = objc_allocWithZone(v30);
  *&v31[OBJC_IVAR____TtC20ProductPageExtension10RatingView_rating] = 0;
  *&v31[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarColor] = 0;
  v32 = &v31[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starPadding];
  *v32 = 0;
  v32[8] = 1;
  *&v31[OBJC_IVAR____TtC20ProductPageExtension10RatingView_maxNumberOfStars] = v28;
  if (qword_10093F570 != -1)
  {
    swift_once();
  }

  v33 = qword_100944D30;
  *&v31[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starColor] = qword_100944D30;
  v31[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starSize] = 3;
  *v32 = 0;
  v32[8] = 1;
  v31[OBJC_IVAR____TtC20ProductPageExtension10RatingView_useCase] = 0;
  v34 = type metadata accessor for StarRow();
  v35 = objc_allocWithZone(v34);
  v36 = v33;
  *&v31[OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView] = sub_10006446C(v28, 1, 3, 0, 1, 0, 0);
  v31[OBJC_IVAR____TtC20ProductPageExtension10RatingView_fillEmptyStars] = 0;
  v37 = objc_allocWithZone(v34);
  *&v31[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarRowView] = sub_10006446C(v28, 0, 3, 0, 1, 0, 0);
  v96.receiver = v31;
  v96.super_class = v30;
  v38 = objc_msgSendSuper2(&v96, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1000620A4();
  v39 = OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView;
  v40 = *&v38[OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView];
  v41 = *&v40[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_currentRating];
  *&v40[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_currentRating] = *&v38[OBJC_IVAR____TtC20ProductPageExtension10RatingView_rating];
  v42 = v40;
  sub_100062B94(v41);

  if (*&v38[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarRowView])
  {
    [v38 addSubview:?];
  }

  [v38 addSubview:*&v38[v39]];

  *&v5[OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_starRatingView] = v38;
  sub_1007626BC();
  v43 = sub_10076269C();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_ratingCountLabel] = v43;
  v44 = &v5[v22];
  v45 = v89;
  v88(v18, v44, v89);
  v46 = v43;
  v47 = sub_10076A4EC();
  v90(v18, v45);
  [v46 setLineBreakMode:v47];

  v48 = type metadata accessor for MetadataRibbonStarRatingView();
  v95.receiver = v5;
  v95.super_class = v48;
  v49 = objc_msgSendSuper2(&v95, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v53 = v49;
  [v53 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v54 = OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_ratingCountLabel;
  v55 = qword_1009413F8;
  v56 = *&v53[OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_ratingCountLabel];
  if (v55 != -1)
  {
    swift_once();
  }

  [v56 setTextColor:qword_100962430];

  v57 = *&v53[v54];
  sub_10076D84C();
  if (qword_10093F698 != -1)
  {
    swift_once();
  }

  v58 = sub_10076715C();
  v59 = sub_10000A61C(v58, qword_10099CE38);
  v93 = v58;
  v94 = sub_100043BA4(&qword_10094B6A0, &type metadata accessor for MetadataRibbonTextStyle);
  v60 = sub_10000DB7C(v92);
  (*(*(v58 - 8) + 16))(v60, v59, v58);
  sub_1007625FC();

  v61 = *&v53[v54];
  v62 = OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_metrics;
  v81 = OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_metrics;
  swift_beginAccess();
  v63 = v89;
  v88(v18, &v53[v62], v89);
  v64 = v61;
  v65 = sub_10076A4FC();
  v90(v18, v63);
  [v64 setNumberOfLines:v65];

  [v53 addSubview:*&v53[OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_starRatingView]];
  [v53 addSubview:*&v53[v54]];
  v66 = v85;
  sub_10076A50C();
  v67 = [v53 traitCollection];
  v68 = sub_10076C04C();
  v93 = v68;
  v94 = sub_100043BA4(&qword_100943230, &type metadata accessor for Feature);
  v69 = sub_10000DB7C(v92);
  (*(*(v68 - 8) + 104))(v69, enum case for Feature.search_tags(_:), v68);
  LOBYTE(v68) = sub_10076C90C();
  sub_10000CD74(v92);
  if (v68)
  {
    v70 = 1;
  }

  else
  {
    v70 = 2;
  }

  v71 = [objc_opt_self() configurationWithPointSize:4 weight:v70 scale:10.0];
  v72 = v83;
  v73 = v82;
  v74 = v84;
  (*(v83 + 104))(v82, enum case for SystemImage.star(_:), v84);
  v75 = [v71 configurationWithTraitCollection:v67];
  v76 = sub_10076046C();

  (*(v72 + 8))(v73, v74);
  [v76 contentInsets];
  [v76 contentInsets];
  [v76 size];
  [v76 contentInsets];
  [v76 contentInsets];
  [v76 size];

  v77 = v86;
  sub_10076A4CC();
  v90(v66, v63);
  v78 = v81;
  swift_beginAccess();
  (*(v87 + 40))(&v53[v78], v77, v63);
  swift_endAccess();

  return v53;
}

uint64_t sub_10064A084()
{
  v1 = sub_10076D1FC();
  v20 = *(v1 - 8);
  v21 = v1;
  __chkstk_darwin(v1);
  v19 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10076A51C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10076A52C();
  v7 = *(v18 - 8);
  __chkstk_darwin(v18);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MetadataRibbonStarRatingView();
  v28.receiver = v0;
  v28.super_class = v10;
  objc_msgSendSuper2(&v28, "layoutSubviews");
  v11 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_starRatingView];
  v26 = type metadata accessor for RatingView();
  v27 = &protocol witness table for UIView;
  v25 = v11;
  v12 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_ratingCountLabel];
  v23 = sub_1007626BC();
  v24 = &protocol witness table for UILabel;
  v22 = v12;
  v13 = OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_metrics;
  swift_beginAccess();
  (*(v4 + 16))(v6, &v0[v13], v3);
  v14 = v11;
  v15 = v12;
  sub_10076A49C();
  sub_10076422C();
  v16 = v19;
  sub_10076A4BC();
  (*(v20 + 8))(v16, v21);
  return (*(v7 + 8))(v9, v18);
}

double sub_10064A380(uint64_t a1)
{
  v18[0] = a1;
  v2 = sub_10076A51C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076A52C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_starRatingView);
  v18[12] = type metadata accessor for RatingView();
  v18[13] = &protocol witness table for UIView;
  v18[9] = v10;
  v11 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_ratingCountLabel);
  v18[7] = sub_1007626BC();
  v18[8] = &protocol witness table for UILabel;
  v18[4] = v11;
  v12 = OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_metrics;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v12, v2);
  v13 = v10;
  v14 = v11;
  sub_10076A49C();
  sub_10076A4AC();
  v16 = v15;
  (*(v7 + 8))(v9, v6);
  return v16;
}

id sub_10064A660()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetadataRibbonStarRatingView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MetadataRibbonStarRatingView()
{
  result = qword_100962478;
  if (!qword_100962478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10064A7AC()
{
  sub_10076A51C();
  if (v0 <= 0x3F)
  {
    sub_100038324();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10064A8B4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_itemType;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &qword_100943318);
}

uint64_t sub_10064A91C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_itemType;
  swift_beginAccess();
  sub_10003837C(a1, v1 + v3, &qword_100943318);
  return swift_endAccess();
}

uint64_t sub_10064A9F8(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_labelMaxWidth;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_10064AAC4(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_truncationLegibilityThreshold;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_10064AB88()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10064ABCC(char a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_allowsTruncation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10064AC7C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_id;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &qword_100943310);
}

uint64_t sub_10064ACE4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_id;
  swift_beginAccess();
  sub_10003837C(a1, v1 + v3, &qword_100943310);
  return swift_endAccess();
}

uint64_t sub_10064ADB4()
{
  v1 = v0;
  sub_1007642BC();
  v3 = v2;
  sub_10076438C();
  v5 = v4;
  sub_100062020(v3);
  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_ratingCountLabel];
  if (v5)
  {
    v7 = sub_10076FF6C();
  }

  else
  {
    v7 = 0;
  }

  [v6 setText:v7];

  [v1 setNeedsLayout];
}

double sub_10064AE74(uint64_t a1, void *a2)
{
  v51 = a1;
  v58 = sub_10076A52C();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_10076DA7C();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10076DD3C();
  v46 = *(v54 - 8);
  __chkstk_darwin(v54);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v43 - v8;
  __chkstk_darwin(v10);
  v53 = &v43 - v11;
  v12 = sub_10076048C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_10076A51C();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v45 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v43 - v18;
  sub_10076A50C();
  sub_10076A4DC();
  v56 = a2;
  v20 = [a2 traitCollection];
  v21 = sub_10076C04C();
  v64 = v21;
  v65 = sub_100043BA4(&qword_100943230, &type metadata accessor for Feature);
  v22 = sub_10000DB7C(v63);
  (*(*(v21 - 8) + 104))(v22, enum case for Feature.search_tags(_:), v21);
  LOBYTE(v21) = sub_10076C90C();
  sub_10000CD74(v63);
  if (v21)
  {
    v23 = 1;
  }

  else
  {
    v23 = 2;
  }

  v24 = [objc_opt_self() configurationWithPointSize:4 weight:v23 scale:10.0];
  (*(v13 + 104))(v15, enum case for SystemImage.star(_:), v12);
  v25 = [v24 configurationWithTraitCollection:v20];
  v26 = sub_10076046C();

  (*(v13 + 8))(v15, v12);
  [v26 contentInsets];
  [v26 contentInsets];
  [v26 size];
  [v26 contentInsets];
  [v26 contentInsets];
  [v26 size];

  v27 = sub_10076DDDC();
  swift_allocObject();
  v44 = sub_10076DDBC();
  sub_10076DD2C();
  sub_10076D84C();
  if (qword_10093F698 != -1)
  {
    swift_once();
  }

  v28 = sub_10076715C();
  v29 = sub_10000A61C(v28, qword_10099CE38);
  v64 = v28;
  v65 = sub_100043BA4(&qword_10094B6A0, &type metadata accessor for MetadataRibbonTextStyle);
  v30 = sub_10000DB7C(v63);
  (*(*(v28 - 8) + 16))(v30, v29, v28);
  sub_10076DC8C();
  v31 = v46;
  v32 = *(v46 + 8);
  v33 = v6;
  v34 = v54;
  v32(v33, v54);
  v43 = v32;
  sub_10000CD74(v63);
  sub_10076A4FC();
  v35 = v53;
  sub_10076DD1C();
  v32(v9, v34);
  sub_10076438C();
  (*(v31 + 16))(v9, v35, v34);
  sub_10076DA5C();
  v36 = v49;
  sub_10076DA9C();
  sub_10076DA4C();
  (*(v50 + 8))(v36, v52);
  v61 = v27;
  v62 = &protocol witness table for LayoutViewPlaceholder;
  v60 = v44;
  sub_10000A570(v63, v59);
  v37 = v47;
  v38 = v48;
  (*(v47 + 16))(v45, v19, v48);

  v39 = v55;
  sub_10076A49C();
  sub_10076A4AC();
  v41 = v40;

  (*(v57 + 8))(v39, v58);
  sub_10000CD74(v63);
  v43(v35, v34);
  (*(v37 + 8))(v19, v38);
  return v41;
}

void sub_10064B72C(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

uint64_t sub_10064B73C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 2);
  v5 = a1[24];
  v6 = *(a2 + 2);
  v7 = a2[24];
  if (v4)
  {
    if (v6)
    {
      v8 = *(a1 + 1) == *(a2 + 1) && v4 == v6;
      if (v8 || (sub_10077167C() & 1) != 0)
      {
        return v5 ^ v7 ^ 1u;
      }
    }
  }

  else if (!v6)
  {
    return v5 ^ v7 ^ 1u;
  }

  return 0;
}

uint64_t sub_10064B7C4()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = &v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_appStateMachine];
  if (*&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_appStateMachine])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_10075ED0C();
    swift_unknownObjectRelease();
  }

  *v1 = 0;
  *(v1 + 1) = 0;
  return swift_unknownObjectRelease();
}

uint64_t sub_10064B8BC(uint64_t a1, uint64_t a2)
{
  v202 = a2;
  v192 = sub_100762A7C();
  v191 = *(v192 - 8);
  __chkstk_darwin(v192);
  v190 = &v155 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_100945560);
  __chkstk_darwin(v4 - 8);
  v189 = &v155 - v5;
  v188 = sub_100768FEC();
  v183 = *(v188 - 8);
  __chkstk_darwin(v188);
  v185 = &v155 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_10000A5D4(&unk_100946750);
  v186 = *(v187 - 8);
  __chkstk_darwin(v187);
  v184 = &v155 - v7;
  v8 = sub_10000A5D4(&unk_100945550);
  __chkstk_darwin(v8 - 8);
  v10 = &v155 - v9;
  v11 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v11 - 8);
  v182 = &v155 - v12;
  v13 = sub_10076A3AC();
  v199 = *(v13 - 8);
  v200 = v13;
  __chkstk_darwin(v13);
  v181 = &v155 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v162 = &v155 - v16;
  __chkstk_darwin(v17);
  v198 = &v155 - v18;
  v19 = sub_10000A5D4(&unk_100962490);
  __chkstk_darwin(v19 - 8);
  v166 = &v155 - v20;
  v21 = sub_10000A5D4(&unk_100949290);
  __chkstk_darwin(v21 - 8);
  v165 = &v155 - v22;
  v23 = sub_10000A5D4(&unk_1009492A0);
  __chkstk_darwin(v23 - 8);
  v164 = &v155 - v24;
  v25 = sub_10000A5D4(&unk_10094D210);
  __chkstk_darwin(v25 - 8);
  v163 = &v155 - v26;
  v180 = sub_10075EBAC();
  v179 = *(v180 - 8);
  __chkstk_darwin(v180);
  v178 = &v155 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_10076186C();
  v174 = *(v175 - 8);
  __chkstk_darwin(v175);
  v173 = &v155 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_10076B96C();
  v177 = *(v195 - 8);
  __chkstk_darwin(v195);
  v176 = &v155 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_10076201C();
  v193 = *(v194 - 8);
  __chkstk_darwin(v194);
  v161 = &v155 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v160 = &v155 - v32;
  v197 = sub_10076C36C();
  v33 = *(v197 - 8);
  __chkstk_darwin(v197);
  v196 = &v155 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v155 - v36;
  v38 = sub_10076C38C();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v201 = &v155 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v43 = &v155 - v42;
  __chkstk_darwin(v44);
  v46 = &v155 - v45;
  sub_100762BEC();
  sub_100650EB4(&qword_1009624A0, &type metadata accessor for ProductTopLockup);
  result = sub_10076332C();
  v48 = v204;
  if (!v204)
  {
    return result;
  }

  v157 = v10;
  v171 = v37;
  swift_getKeyPath();
  v203 = v48;
  sub_10076338C();

  sub_10076C24C();
  v49 = *(v39 + 8);
  v49(v46, v38);
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C26C();
  v49(v43, v38);
  v50 = v171;
  v51 = v197;
  (*(v33 + 104))(v171, enum case for PageGrid.Direction.vertical(_:), v197);
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C25C();
  v158 = v49;
  v49(v46, v38);
  (*(v33 + 16))(v196, v50, v51);
  sub_1005AC334(0.0);
  sub_10076C33C();
  (*(v33 + 8))(v50, v51);
  v196 = sub_100630CB4();
  v159 = a1;
  v52 = sub_1001B5A0C();
  v53 = v172;
  v54 = &v172[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconSize];
  *v54 = v52;
  *(v54 + 1) = v55;
  sub_10000A5D4(&unk_10094A8C0);
  v56 = sub_10076F64C();
  sub_10076FC1C();
  v167 = *(&v204 + 1);
  v197 = v204;
  v57 = v53;
  v58 = *&v53[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_titleLabel];
  sub_100762BAC();
  v169 = v38;
  v168 = v39 + 8;
  if (v59)
  {
    v60 = sub_10076FF6C();
  }

  else
  {
    v60 = 0;
  }

  [v58 setText:v60];

  v61 = v57;
  v62 = *&v57[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel];
  sub_100762BCC();
  if (v63)
  {
    v64 = sub_10076FF6C();
  }

  else
  {
    v64 = 0;
  }

  [v62 setText:v64];

  v65 = *&v57[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_developerLabel];
  sub_100762ADC();
  if (v66)
  {
    v67 = sub_10076FF6C();
  }

  else
  {
    v67 = 0;
  }

  [v65 setText:v67];

  v68 = sub_100762B4C();
  v69 = sub_100762B3C();
  v156 = v46;
  if (v70 == 1)
  {
    sub_10030235C(0, 0);
    v73 = 0;
    v74 = 0;
  }

  else
  {
    v73 = v71;
    v74 = v72;
    v75 = v69;
    v76 = v70;

    sub_10030235C(v75, v76);
  }

  sub_100302370(v73, v74);
  v77 = sub_100762B2C();
  v78 = v61[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasExpandedOffer];
  v170 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasExpandedOffer;
  v61[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasExpandedOffer] = v77 & 1;
  sub_100301BE0(v78);
  v79 = sub_100762B6C();
  v171 = v68;
  v80 = v176;
  if ((v79 & 1) != 0 && v68)
  {
    v155 = v56;

    v81 = v160;
    sub_100766A8C();
    v82 = v193;
    v83 = v161;
    v84 = v194;
    (*(v193 + 104))(v161, enum case for OfferLabelStyle.none(_:), v194);
    sub_100650EB4(&unk_100958360, &type metadata accessor for OfferLabelStyle);
    v85 = sub_10076FF1C();
    v86 = *(v82 + 8);
    v86(v83, v84);
    v86(v81, v84);
    if ((v85 & 1) == 0)
    {

      sub_100766ACC();
      sub_10076148C();
      swift_unknownObjectRetain();
      sub_10076FC1C();
      sub_10076130C();

      v87 = sub_100764E4C();
      swift_allocObject();
      v68 = v171;
      v88 = sub_100764E2C();
      *(&v205 + 1) = v87;
      *&v204 = v88;
      v89 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerLabelPresenter;
      swift_beginAccess();

      sub_10003837C(&v204, &v61[v89], &unk_1009434C0);
      swift_endAccess();
      sub_100650EB4(&qword_1009624A8, type metadata accessor for ProductLockupCollectionViewCell);
      swift_unknownObjectRetain();
      sub_100764E3C();
    }
  }

  v90 = sub_100762B5C();
  if (v90)
  {
    v91 = v90;
    v92 = v175;
    v93 = v174;
    v94 = v173;
  }

  else
  {
    v92 = v175;
    v93 = v174;
    v94 = v173;
    if (!v68)
    {
      v95 = v80;
      goto LABEL_28;
    }

    v91 = sub_100766AFC();
  }

  (*(v93 + 104))(v94, enum case for OfferTitleType.standard(_:), v92);
  if (!*(v91 + 16))
  {
    v95 = v80;
    goto LABEL_27;
  }

  v95 = v80;
  v96 = sub_10061070C(v94);
  if ((v97 & 1) == 0)
  {
LABEL_27:

    (*(v93 + 8))(v94, v92);
LABEL_28:
    v103 = 0;
    v100 = 0;
    goto LABEL_29;
  }

  v98 = (*(v91 + 56) + 16 * v96);
  v99 = *v98;
  v100 = v98[1];
  v101 = *(v93 + 8);

  v102 = v94;
  v103 = v99;
  v101(v102, v92);

LABEL_29:
  swift_getObjectType();
  v104 = v61[v170];
  v105 = swift_unknownObjectRetain();
  v106 = sub_100307E18(v105, v104, v61);
  swift_unknownObjectRelease();
  swift_getObjectType();
  sub_100762BBC();
  v107 = sub_10075EE2C();
  v109 = v108;
  (*(v177 + 8))(v95, v195);
  ObjectType = swift_getObjectType();
  v111 = v178;
  v174 = ObjectType;
  v195 = v109;
  sub_10075ED1C();
  v177 = v103;
  v176 = v100;
  v175 = v106;
  sub_10064D340(v111, v103, v100, v106);
  (*(v179 + 8))(v111, v180);
  if (v68)
  {

    sub_1000FD730(_swiftEmptyArrayStorage);
    v112 = sub_10075F78C();
    v113 = v163;
    (*(*(v112 - 8) + 56))(v163, 1, 1, v112);
    v114 = sub_1007628DC();
    v115 = v164;
    (*(*(v114 - 8) + 56))(v164, 1, 1, v114);
    v116 = sub_10076C54C();
    v117 = v165;
    (*(*(v116 - 8) + 56))(v165, 1, 1, v116);
    v118 = v166;
    (*(v193 + 56))(v166, 1, 1, v194);
    v204 = 0u;
    v205 = 0u;
    v194 = sub_100766A5C();

    sub_10000CFBC(&v204, &unk_1009434C0);
    sub_10000CFBC(v118, &unk_100962490);
    sub_10000CFBC(v117, &unk_100949290);
    sub_10000CFBC(v115, &unk_1009492A0);
    sub_10000CFBC(v113, &unk_10094D210);
  }

  else
  {
    v194 = 0;
  }

  v119 = v198;
  v120 = sub_100762B7C();
  v121 = v199;
  v122 = *(v199 + 104);
  if (v120)
  {
    v123 = v200;
    v122(v119, enum case for OfferButtonPresenterViewAlignment.center(_:), v200);
  }

  else
  {
    if (v61[v170])
    {
      v124 = &enum case for OfferButtonPresenterViewAlignment.right(_:);
    }

    else
    {
      v124 = &enum case for OfferButtonPresenterViewAlignment.left(_:);
    }

    v125 = v162;
    v123 = v200;
    v122(v162, *v124, v200);
    (*(v121 + 32))(v119, v125, v123);
  }

  v126 = sub_100762AAC();
  (*(v121 + 16))(v181, v119, v123);
  (*(v121 + 56))(v157, 1, 1, v123);
  sub_100650EB4(&unk_1009492B0, &type metadata accessor for OfferButtonPresenterViewAlignment);
  v127 = v182;
  sub_10076759C();
  v128 = sub_10000A5D4(&qword_100945590);
  (*(*(v128 - 8) + 56))(v127, 0, 1, v128);
  v129 = v183;
  v130 = v188;
  (*(v183 + 104))(v185, enum case for OfferButtonSubtitlePosition.below(_:), v188);
  (*(v129 + 56))(v189, 1, 1, v130);
  sub_100650EB4(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition);
  v131 = v184;
  sub_10076759C();
  sub_1001F12C8(v194, v126, 0, v127, v131, v202, 0, 0);

  (*(v186 + 8))(v131, v187);
  sub_10000CFBC(v127, &unk_100946760);
  v132 = &v61[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_appStateMachine];
  if (*&v61[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_appStateMachine])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_10075ED0C();
    swift_unknownObjectRelease();
  }

  v133 = v158;
  v134 = v195;
  *v132 = v107;
  v132[1] = v134;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v135 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v136 = swift_allocObject();
  v137 = v177;
  v136[2] = v135;
  v136[3] = v137;
  v138 = v175;
  v136[4] = v176;
  v136[5] = v138;

  sub_10075ECEC();

  v139 = [v61 contentView];
  sub_10076C2EC();
  [v139 setLayoutMargins:?];

  v140 = [v61 traitCollection];
  LOBYTE(v139) = sub_1007706EC();

  v141 = 0;
  if (v139)
  {
    v142 = sub_100762B7C();
    v143 = v202;
    v144 = v159;
    if (v142)
    {
      swift_getKeyPath();
      v145 = v156;
      sub_10076338C();

      sub_10076C25C();
      v141 = v146;
      v133(v145, v169);
    }
  }

  else
  {
    v143 = v202;
    v144 = v159;
  }

  *&v61[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bottomSafeAreaDistance] = v141;
  v147 = v190;
  v148 = v203;
  sub_100762B9C();
  v149 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_theme;
  swift_beginAccess();
  v150 = v191;
  v151 = v192;
  (*(v191 + 24))(&v61[v149], v147, v192);
  swift_endAccess();
  sub_100300494();
  (*(v150 + 8))(v147, v151);
  sub_10064D554(v144, v143);
  sub_10064E850(v148, v107, v195, v144, v143);
  *&v61[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_secondaryBannerViewHeight] = sub_1001B5E80();
  v152 = sub_100762B0C();
  v153 = sub_100762B7C();
  v154 = sub_10064F020(v152, v153 & 1, v144, v143);

  sub_100301564(v154);
  [v61 setNeedsLayout];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v199 + 8))(v198, v200);
  return (v133)(v201, v169);
}

id sub_10064D340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *&v4[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerSubtitleLabel];
  if (a3)
  {
    v8 = sub_10076FF6C();
  }

  else
  {
    v8 = 0;
  }

  [v7 setText:v8];

  [v7 setTextAlignment:a4];
  [v7 setHidden:(a3 == 0) | ((sub_10075EB9C() & 1) == 0)];

  return [v4 setNeedsLayout];
}

uint64_t sub_10064D414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_10075EBAC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    swift_getObjectType();
    sub_10075ED1C();
    sub_10064D340(v12, a4, a5, a6);

    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

void sub_10064D554(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v149 = a2;
  ObjectType = swift_getObjectType();
  v5 = sub_10076771C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v9 - 8);
  v137 = &v131 - v10;
  v11 = sub_10076D3DC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_10076C43C();
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v138 = &v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_10076C38C();
  v142 = *(v143 - 8);
  __chkstk_darwin(v143);
  v141 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A5D4(&unk_1009520A0);
  __chkstk_darwin(v17 - 8);
  v148 = sub_10000A5D4(&unk_10094C330);
  v145 = *(v148 - 8);
  __chkstk_darwin(v148);
  v147 = &v131 - v18;
  sub_100762BEC();
  sub_100650EB4(&qword_1009624A0, &type metadata accessor for ProductTopLockup);
  v146 = a1;
  sub_10076332C();
  if (v154)
  {
    v132 = v14;
    v19 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView;
    v20 = *&v2[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView];
    v150 = v154;
    v134 = v11;
    v133 = v12;
    v136 = v5;
    v135 = v6;
    if (v20)
    {
      v21 = *(v20 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_uber);

      v22 = sub_100762B8C();
      if (v21)
      {
        v154 = v21;
        if (v22)
        {
          v151 = v22;
          sub_10076B29C();
          sub_100650EB4(&qword_100961168, &type metadata accessor for Uber);
          v23 = sub_10076FF1C();

          v24 = v23 ^ 1;
LABEL_13:
          v131 = v8;
          v26 = *&v3[v19];
          if (v26 && (v27 = *&v26[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView], v28 = OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer, (v29 = *(*(v27 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents)) != 0))
          {
            type metadata accessor for VideoView();
            v30 = swift_dynamicCastClass();
            if (v30)
            {
              sub_100650EB4(&qword_100942810, type metadata accessor for VideoView);
              v31 = v29;
              v32 = v26;
              v33 = [v30 superview];
              if (v33)
              {
                v30 = v33;
                v34 = *(v27 + v28);
                sub_100016F40(0, &qword_1009441F0);
                v35 = v34;
                v36 = sub_100770EEC();

                LODWORD(v30) = v36 ^ 1;
              }

              else
              {

                LODWORD(v30) = 1;
              }
            }
          }

          else
          {
            LODWORD(v30) = 0;
          }

          v37 = sub_100762B8C();
          if (v37)
          {
            v38 = v37;
            if ((v24 | v30))
            {
              v39 = sub_100762B7C();
              v40 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber;
              v41 = v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber];
              v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber] = v39 & 1;
              if ((v39 & 1) != v41)
              {
                sub_100300958();
              }

              sub_100650B98(v3, v3);
              sub_100301614();
              sub_100301868();
              v42 = v146;
              sub_1007633DC();
              sub_10076FDBC();
              swift_getKeyPath();
              sub_1001B65D8();

              sub_10076FD9C();

              v43 = v154;
              v44 = objc_allocWithZone(type metadata accessor for UberHeaderView());
              v45 = v149;

              v46 = sub_1002088B0(v38, (v43 & 1) == 0, v45);
              sub_100300E78(v46);
              v47 = *&v3[v19];
              if (v47)
              {
                swift_getKeyPath();
                v48 = v47;
                v49 = v141;
                sub_10076338C();

                sub_10076C2EC();
                v51 = v50;
                v53 = v52;
                v55 = v54;
                v57 = v56;
                (*(v142 + 8))(v49, v143);
                v58 = OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_titleView;
                [*&v48[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_titleView] layoutMargins];
                if (v51 == v62 && v53 == v59 && v55 == v60 && v57 == v61 || ([*&v48[v58] setLayoutMargins:{v51, v53, v55, v57, v131}], objc_msgSend(v48, "invalidateIntrinsicContentSize"), (v63 = *&v48[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_sizeChangeObserver]) == 0))
                {
                }

                else
                {

                  v63(v64);

                  sub_1000167E0(v63);
                }
              }

              v65 = sub_1001AFE30(v42, v149);
              if (v3[v40] == 1)
              {
                v66 = [v3 contentView];
                [v66 setOverrideUserInterfaceStyle:2];

                sub_1003037E0();
                v67 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_disclosureArrow;
                if (!*&v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_disclosureArrow])
                {
                  v68 = [objc_allocWithZone(type metadata accessor for ChevronView()) init];
                  [v68 setOverrideUserInterfaceStyle:2];
                  v69 = *&v3[v67];
                  if (v69)
                  {
                    [v69 removeFromSuperview];
                    v70 = *&v3[v67];
                  }

                  else
                  {
                    v70 = 0;
                  }

                  *&v3[v67] = v68;
                  v71 = v68;

                  v72 = [v3 contentView];
                  [v72 addSubview:v71];
                }

                v73 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_wordmarkView];
                v74 = v139;
                v75 = v138;
                v76 = v140;
                (*(v139 + 104))(v138, enum case for Wordmark.arcade(_:), v140);
                swift_getKeyPath();
                sub_10076338C();

                v77 = v154;
                sub_100760B2C();

                (*(v74 + 8))(v75, v76);
                [v73 setHidden:0];
                [*&v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_developerLabel] setHidden:1];
                v78 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel];
                v79 = [v78 text];
                v80 = v79;
                if (v79)
                {
                }

                [v78 setHidden:v80 == 0];
                v81 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_tertiaryTitleLabel;
                swift_beginAccess();
                v82 = *&v3[v81];
                if (v82)
                {
                  [v82 removeFromSuperview];
                  v83 = *&v3[v81];
                }

                else
                {
                  v83 = 0;
                }

                *&v3[v81] = 0;

                [v3 setNeedsLayout];
                v84 = [v3 contentView];
                [v84 overrideUserInterfaceStyle];

                sub_10076FF9C();
                v85 = sub_10076FF6C();

                v86 = [v78 layer];
                [v86 setCompositingFilter:v85];

                v87 = [v73 layer];
                [v87 setCompositingFilter:v85];

                v88 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferTitleLabel];
                if (v88)
                {
                  [v88 setHidden:1];
                }

                v89 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
                if (v89)
                {
                  v90 = [v89 layer];
                  [v90 setCompositingFilter:v85];
                }

                v91 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_downloadProgressLabel];
                if (v91)
                {
                  v92 = [v91 layer];
                  [v92 setCompositingFilter:v85];
                }
              }

              sub_100760C4C();
              sub_10076F64C();
              sub_10076FC1C();
              sub_10064FEC0(v42, v154, v65);

              (*(v145 + 8))(v147, v148);
            }

            else
            {
            }
          }

          if (v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber])
          {
            goto LABEL_83;
          }

          v93 = [v3 contentView];
          [v93 setOverrideUserInterfaceStyle:0];

          v94 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_disclosureArrow;
          v95 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_disclosureArrow];
          if (v95)
          {
            [v95 removeFromSuperview];
            v96 = *&v3[v94];
          }

          else
          {
            v96 = 0;
          }

          v97 = v136;
          v98 = v135;
          *&v3[v94] = 0;

          sub_100762AFC();
          v99 = sub_10077002C();

          v100 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_tertiaryTitleLabel;
          if (v99)
          {
            swift_beginAccess();
            v101 = *&v3[v100];
            if (v101)
            {
              [v101 removeFromSuperview];
              v102 = *&v3[v100];
            }

            else
            {
              v102 = 0;
            }

            *&v3[v100] = 0;

            [v3 setNeedsLayout];
            goto LABEL_72;
          }

          swift_beginAccess();
          v103 = *&v3[v100];
          if (v103)
          {
LABEL_60:
            v104 = v103;
            sub_100762AFC();
            if (v105)
            {
              v106 = sub_10076FF6C();
            }

            else
            {
              v106 = 0;
            }

            [v104 setText:{v106, v131}];

            goto LABEL_72;
          }

          if (qword_100940050 != -1)
          {
            swift_once();
          }

          v107 = sub_10000A5D4(&qword_10094C390);
          sub_10000A61C(v107, qword_10099EC28);
          swift_getKeyPath();
          sub_10076338C();

          v153 = v151;
          v108 = v132;
          sub_10075FDCC();
          swift_unknownObjectRelease();
          if (qword_100940178 != -1)
          {
            swift_once();
          }

          v109 = sub_10000A5D4(&unk_10094C370);
          sub_10000A61C(v109, qword_10099EFE0);
          swift_getKeyPath();
          sub_10076338C();

          v152 = v153;
          sub_10075FDCC();
          swift_unknownObjectRelease();
          v110 = v133;
          v111 = v137;
          v112 = v134;
          (*(v133 + 16))(v137, v108, v134);
          (*(v110 + 56))(v111, 0, 1, v112);
          (*(v98 + 104))(v131, enum case for DirectionalTextAlignment.leading(_:), v97);
          v113 = objc_allocWithZone(sub_1007626BC());
          v114 = sub_1007626AC();
          v115 = *&v3[v100];
          if (v115)
          {
            [v115 removeFromSuperview];
            v116 = *&v3[v100];
          }

          else
          {
            v116 = 0;
          }

          *&v3[v100] = v114;
          v126 = v114;

          v127 = [v3 contentView];
          [v127 addSubview:v126];

          [v3 setNeedsLayout];
          swift_beginAccess();
          v128 = *&v3[v100];
          if (v128)
          {
            swift_endAccess();
            sub_100016F40(0, &qword_100942F10);
            v129 = v128;
            v130 = sub_100770D0C();
            [v129 setTextColor:v130];

            (*(v133 + 8))(v132, v134);
            v103 = *&v3[v100];
            if (v103)
            {
              goto LABEL_60;
            }
          }

          else
          {
            (*(v133 + 8))(v132, v134);
            swift_endAccess();
            v103 = *&v3[v100];
            if (v103)
            {
              goto LABEL_60;
            }
          }

LABEL_72:
          v117 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_wordmarkView];
          [v117 setHidden:{1, v131}];
          v118 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurView];
          if (v118)
          {
            [v118 removeFromSuperview];
          }

          v119 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
          if (v119)
          {
            [v119 removeFromSuperview];
          }

          v120 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_shadowView];
          if (v120)
          {
            [v120 removeFromSuperview];
          }

          v121 = [*&v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel] layer];
          [v121 setCompositingFilter:0];

          v122 = [v117 layer];
          [v122 setCompositingFilter:0];

          v123 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferTitleLabel];
          if (v123)
          {
            [v123 setHidden:0];
          }

          v124 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
          if (v124)
          {
            v125 = [v124 layer];
            [v125 setCompositingFilter:0];
          }

          sub_100306DD4();
LABEL_83:
          [v3 setNeedsLayout];

          return;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v22 = sub_100762B8C();
    }

    if (!v22)
    {
      v24 = 0;
      goto LABEL_13;
    }

LABEL_12:

    v24 = 1;
    goto LABEL_13;
  }

  sub_100300E78(0);
  v25 = v2[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber];
  v2[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber] = 0;
  if (v25 == 1)
  {
    sub_100300958();
  }

  sub_100650B98(v2, v2);
  sub_100301614();
  sub_100301868();
}

uint64_t sub_10064E850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v69 = a5;
  v67 = a4;
  v5 = sub_10076C38C();
  v65 = *(v5 - 8);
  v66 = v5;
  __chkstk_darwin(v5);
  v64 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10075EBAC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_10094C348);
  __chkstk_darwin(v11 - 8);
  v13 = (&v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v16 = &v57 - v15;
  __chkstk_darwin(v17);
  v19 = &v57 - v18;
  __chkstk_darwin(v20);
  v22 = &v57 - v21;
  swift_getObjectType();
  sub_10075ED1C();
  sub_100762AEC();
  (*(v8 + 8))(v10, v7);
  LODWORD(v23) = sub_100762B7C();
  sub_10064F3E0(v22, v19);
  v24 = sub_100762B8C();
  if (v24)
  {
  }

  sub_100016E2C(v19, v16, &unk_10094C348);
  v25 = sub_100762ACC();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v16, 1, v25) == 1)
  {
    goto LABEL_4;
  }

  sub_100016E2C(v16, v13, &unk_10094C348);
  v29 = (*(v26 + 88))(v13, v25);
  if (v29 == enum case for ProductTopLockup.PrimaryBanner.askToBuy(_:))
  {
    (*(v26 + 96))(v13, v25);
    v30 = *v13;
    sub_10076148C();
    sub_10076F64C();
    sub_10076FC1C();
    if ((sub_1007612AC() & 1) == 0)
    {
      v63 = v24 == 0;
      v62 = sub_10076B9DC();
      v61 = v38;
      v59 = v23 ^ 1;
      v58 = type metadata accessor for LinkableHeaderCollectionViewCell();
      v28 = v67;
      v39 = sub_100630CB4();
      swift_getKeyPath();
      v60 = v30;
      v40 = v23;
      v23 = v64;
      sub_10076338C();

      sub_10076C2FC();
      v42 = v41;
      v43 = v23;
      LOBYTE(v23) = v40;
      (*(v65 + 8))(v43, v66);
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      sub_100126678(v62, v42, v61, v63 & v59, v39, v58, ObjectType);
      v27 = v45;

      swift_unknownObjectRelease_n();
      sub_10000CFBC(v16, &unk_10094C348);
      goto LABEL_30;
    }
  }

  else
  {
    if (v29 != enum case for ProductTopLockup.PrimaryBanner.banner(_:))
    {
      (*(v26 + 8))(v13, v25);
LABEL_4:
      sub_10000CFBC(v16, &unk_10094C348);
      v27 = 0;
      v28 = v67;
      goto LABEL_30;
    }

    (*(v26 + 96))(v13, v25);
    v30 = *v13;
  }

  v28 = v67;

  sub_10000CFBC(v16, &unk_10094C348);
  if ((v23 & 1) == 0)
  {
    if (qword_100940078 != -1)
    {
      swift_once();
    }

    sub_10000CF78(qword_10099ECC0, qword_10099ECD8);
    swift_getKeyPath();
    sub_10076338C();

    v31 = *&v70[0];
    sub_10076D41C();
  }

  v32 = sub_10076B99C();
  if (v32)
  {
  }

  sub_10076B98C();
  sub_10000A5D4(&unk_10094C3B0);
  v33 = sub_1007701EC();

  if (v23)
  {
    _Q3 = xmmword_10078C3D0;
    v35 = 17.0;
    v36 = 0.0;
    v37 = 0.0;
  }

  else
  {
    v36 = 22.0;
    if (v32)
    {
      v36 = 15.0;
    }

    if (v33)
    {
      v37 = 15.0;
    }

    else
    {
      v37 = v36;
    }

    v35 = 9.0;
    if (v33)
    {
      v46 = 12.0;
    }

    else
    {
      v46 = 9.0;
    }

    __asm { FMOV            V3.2D, #15.0 }

    *&_Q3 = v46;
  }

  v70[1] = _Q3;
  v70[0] = _Q3;
  v71 = v35;
  v72 = v36;
  v73 = v35;
  v74 = v37;
  v75 = xmmword_100785070;
  v76 = xmmword_100785080;
  v51 = sub_100630CB4();
  swift_getKeyPath();
  v52 = v64;
  sub_10076338C();

  sub_10076C2FC();
  (*(v65 + 8))(v52, v66);
  sub_10011D440(v30, v70, v51);
  v27 = v53;
  swift_unknownObjectRelease();

LABEL_30:
  v54 = v69;
  *(v68 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bannerViewHeight) = v27;
  v55 = sub_10064F840(v19, v23 & 1, v28, v54);
  sub_100301558(v55);
  sub_10000CFBC(v19, &unk_10094C348);
  return sub_10000CFBC(v22, &unk_10094C348);
}

uint64_t sub_10064F020(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v7 = sub_10077164C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return a1;
  }

  v27 = a4;

  v11 = sub_100630CB4();
  v12 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_secondaryBannerView);
  if (v12)
  {
    type metadata accessor for BannerCollectionViewCell();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = v13;
      v30 = v13;
      v15 = v12;
      v16 = 0;
LABEL_7:
      sub_100016F40(0, &qword_100942F10);
      v20 = v14;
      v21 = sub_100770D2C();
      [v20 setBackgroundColor:v21];

      goto LABEL_8;
    }
  }

  v30 = 0;
  v17 = objc_opt_self();
  v18 = swift_allocObject();
  *(v18 + 16) = &v30;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_100650E7C;
  *(v16 + 24) = v18;
  aBlock[4] = sub_1000349FC;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001C5148;
  aBlock[3] = &unk_10089E238;
  v19 = _Block_copy(aBlock);

  [v17 performWithoutAnimation:v19];
  _Block_release(v19);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = sub_100650E7C;
  v14 = v30;
  if (v30)
  {
    goto LABEL_7;
  }

LABEL_8:
  v22 = 0.0;
  if ((v28 & 1) == 0)
  {
    if (qword_100940080 == -1)
    {
LABEL_10:
      sub_10000CF78(qword_10099ECE8, qword_10099ED00);
      sub_1000FF02C();
      sub_10076D40C();
      v22 = v23;
      (*(v8 + 8))(v10, v7);
      goto LABEL_11;
    }

LABEL_16:
    swift_once();
    goto LABEL_10;
  }

LABEL_11:
  if (v30)
  {
    v24 = v30;
    sub_100031484(a1, v28 & 1, v11, v27, v22, 0.0, 0.0);
  }

  swift_unknownObjectRelease();

  a1 = v30;
  sub_1000167E0(v16);
  return a1;
}

uint64_t sub_10064F3E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000A5D4(&unk_10094C348);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  v10 = sub_10000A5D4(&qword_10094C340);
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - v11;
  sub_100016E2C(a1, v9, &unk_10094C348);
  v13 = sub_100762ACC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v9, 1, v13) == 1)
  {
    sub_10000CFBC(v9, &unk_10094C348);
  }

  else
  {
    v24 = a2;
    sub_100762ABC();
    (*(v14 + 8))(v9, v13);
    v16 = sub_1007607CC();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v12, 1, v16) == 1)
    {
      sub_10000CFBC(v12, &qword_10094C340);
      a2 = v24;
    }

    else
    {
      v18 = sub_1007607BC();
      (*(v17 + 8))(v12, v16);
      a2 = v24;
      if (v18)
      {
        v19 = qword_100941308;
        goto LABEL_9;
      }
    }
  }

  sub_100016E2C(a1, v6, &unk_10094C348);
  if (v15(v6, 1, v13) != 1)
  {
    (*(v14 + 32))(a2, v6, v13);
    v20 = 0;
    if (qword_100941308 == -1)
    {
      goto LABEL_10;
    }

LABEL_12:
    swift_once();
    goto LABEL_10;
  }

  sub_10000CFBC(v6, &unk_10094C348);
  v19 = qword_100941308;
LABEL_9:
  v20 = 1;
  if (v19 != -1)
  {
    goto LABEL_12;
  }

LABEL_10:
  v21 = sub_10076FD4C();
  sub_10000A61C(v21, qword_1009A2660);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783DD0;
  sub_10076F27C();
  sub_10076FBCC();

  return (*(v14 + 56))(a2, v20, 1, v13);
}

char *sub_10064F840(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v44 = a3;
  v45 = a4;
  v7 = sub_10077164C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_10094C348);
  __chkstk_darwin(v11 - 8);
  v13 = (&v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v16 = &v44 - v15;
  sub_100016E2C(a1, &v44 - v15, &unk_10094C348);
  v17 = sub_100762ACC();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    goto LABEL_2;
  }

  sub_100016E2C(v16, v13, &unk_10094C348);
  v20 = (*(v18 + 88))(v13, v17);
  if (v20 != enum case for ProductTopLockup.PrimaryBanner.askToBuy(_:))
  {
    if (v20 != enum case for ProductTopLockup.PrimaryBanner.banner(_:))
    {
      (*(v18 + 8))(v13, v17);
LABEL_2:
      sub_10000CFBC(v16, &unk_10094C348);
      return 0;
    }

    (*(v18 + 96))(v13, v17);
    v21 = *v13;
    goto LABEL_8;
  }

  (*(v18 + 96))(v13, v17);
  v21 = *v13;
  sub_10076148C();
  sub_10076F5CC();
  if (sub_1007612AC())
  {

LABEL_8:

    sub_10000CFBC(v16, &unk_10094C348);
    v22 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bannerView);
    v23 = a2;
    if (v22 && (type metadata accessor for BannerCollectionViewCell(), (v24 = swift_dynamicCastClass()) != 0))
    {
      v25 = v24;
      v26 = v22;
    }

    else
    {
      v27 = objc_allocWithZone(type metadata accessor for BannerCollectionViewCell());
      v25 = [v27 initWithFrame:{0.0, 0.0, 0.0, 0.0, v44, v45}];
    }

    v28 = sub_100630CB4();
    v29 = 0.0;
    if ((v23 & 1) == 0)
    {
      if (qword_100940078 != -1)
      {
        swift_once();
      }

      sub_10000CF78(qword_10099ECC0, qword_10099ECD8);
      sub_1000FF02C();
      sub_10076D40C();
      v29 = v30;
      (*(v8 + 8))(v10, v7);
    }

    sub_100016F40(0, &qword_100942F10);
    v31 = v25;
    v32 = sub_100770D2C();
    [v31 setBackgroundColor:v32];

    sub_100031484(v21, v23 & 1, v28, v45, v29, 0.0, v29);
    swift_unknownObjectRelease();

    return v31;
  }

  v33 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bannerView);
  if (v33 && (type metadata accessor for LinkableHeaderCollectionViewCell(), (v34 = swift_dynamicCastClass()) != 0))
  {
    v35 = v34;
    v36 = v33;
  }

  else
  {
    v37 = objc_allocWithZone(type metadata accessor for LinkableHeaderCollectionViewCell());
    v35 = [v37 initWithFrame:{0.0, 0.0, 0.0, 0.0, v44, v45}];
  }

  sub_100016F40(0, &qword_100942F10);
  v38 = v35;
  v39 = sub_100770D2C();
  [v38 setBackgroundColor:v39];

  sub_10076B9AC();
  sub_100630CB4();
  v40 = *(*&v38[OBJC_IVAR____TtC20ProductPageExtension32LinkableHeaderCollectionViewCell_headerView] + OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_label);
  v41 = sub_10076082C();
  v42 = sub_100107BF4(v41, sub_1000368B8);

  v43 = sub_10076081C();
  sub_10050C274(v43, 0, v42);

  [v38 setNeedsLayout];

  swift_unknownObjectRelease();

  sub_10000CFBC(v16, &unk_10094C348);
  return v38;
}

uint64_t sub_10064FE60(uint64_t *a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for BannerCollectionViewCell()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = *a1;
  *a1 = v2;

  return _objc_release_x1(v2, v3);
}

void sub_10064FEC0(uint64_t a1, uint64_t a2, double a3)
{
  v7 = sub_10076B27C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView])
  {

    sub_10076B28C();
    v11 = (*(v8 + 88))(v10, v7);
    if (v11 == enum case for Uber.AssetType.artwork(_:))
    {
      v12 = [v3 traitCollection];
      v13 = sub_1007706EC();

      if (v13)
      {
        if (!sub_10076B20C())
        {
          goto LABEL_11;
        }

LABEL_10:

        sub_1006500EC(v14, a1, a2, a3);

        return;
      }

      if (sub_10076B26C())
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    if (v11 == enum case for Uber.AssetType.video(_:))
    {
      if (sub_10076B25C())
      {
        sub_10076B84C();

        goto LABEL_10;
      }

LABEL_11:

      return;
    }

    v15 = enum case for Uber.AssetType.icon(_:);
    v16 = v11;

    if (v16 != v15)
    {
      (*(v8 + 8))(v10, v7);
    }
  }
}

void sub_1006500EC(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v74 = a2;
  v8 = sub_10076D39C();
  v68 = *(v8 - 8);
  v69 = v8;
  __chkstk_darwin(v8);
  v67 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_1009520A0);
  __chkstk_darwin(v10 - 8);
  v70 = &v58 - v11;
  v12 = sub_10000A5D4(&unk_10094C330);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v73 = &v58 - v14;
  v15 = sub_10076B21C();
  v75 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v72 = &v58 - v19;
  __chkstk_darwin(v20);
  v22 = &v58 - v21;
  __chkstk_darwin(v23);
  v25 = &v58 - v24;
  v26 = sub_10076C38C();
  __chkstk_darwin(v26);
  v30 = &v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v4;
  v31 = *&v4[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView];
  if (v31)
  {
    v61 = v28;
    v62 = v27;
    v63 = a1;
    v64 = v13;
    v65 = v12;
    v32 = *&v31[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_uber];

    v33 = v31;
    v34 = [v33 backgroundColor];
    v60 = v33;
    v35 = *&v33[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView];
    v36 = type metadata accessor for MediaView();
    v81.receiver = v35;
    v81.super_class = v36;
    objc_msgSendSuper2(&v81, "setBackgroundColor:", v34);
    [*(*&v35[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer] + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents) setBackgroundColor:v34];
    v37 = *&v35[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionView];
    if (v37)
    {
      v38 = v37;
      [v38 setBackgroundColor:v34];
    }

    swift_getKeyPath();
    sub_10076338C();

    sub_10076C26C();
    v40 = v39;
    sub_10076C25C();
    v42 = v40 - v41;
    swift_getKeyPath();
    sub_10076338C();

    v43 = v80;
    v44 = sub_1007706EC();

    v59 = v17;
    v66 = a3;
    if (v44)
    {
      sub_10076B23C();
      (*(v75 + 104))(v22, enum case for Uber.Style.inline(_:), v15);
      sub_100650EB4(&qword_10094DC28, &type metadata accessor for Uber.Style);
      sub_10077018C();
      sub_10077018C();
      if (v78 == v76 && v79 == v77)
      {
        v45 = v32;
        v46 = 1;
      }

      else
      {
        v45 = v32;
        v46 = sub_10077167C();
      }

      v47 = *(v75 + 8);
      v47(v22, v15);
      v47(v25, v15);

      if (v46)
      {
        v42 = v42 - a4;
      }

      v32 = v45;
    }

    sub_1007633DC();
    v48 = v73;
    sub_10076FDBC();
    v49 = v72;
    v74 = v32;
    sub_10076B23C();
    swift_getKeyPath();
    sub_1001B65D8();
    v50 = v65;
    sub_10076FD9C();

    v51 = v78;
    sub_10076C2FC();
    v53 = v52;
    v54 = [v71 traitCollection];
    sub_10020B56C(v54, v49, (v51 & 1) == 0, v53, *&v42, 0);
    if (sub_1007706EC())
    {
      (*(v75 + 104))(v59, enum case for Uber.Style.inline(_:), v15);
      sub_100650EB4(&qword_10094DC28, &type metadata accessor for Uber.Style);
      sub_10077018C();
      sub_10077018C();
      if (v78 == v76 && v79 == v77)
      {
        (*(v75 + 8))(v59, v15);

LABEL_18:
        sub_10076BFCC();

        (*(v75 + 8))(v49, v15);
        type metadata accessor for UberHeaderView();
        sub_100650EB4(&unk_1009624C0, type metadata accessor for UberHeaderView);
        v57 = v60;
        sub_100760B8C();

        (*(v64 + 8))(v48, v50);
        (*(v61 + 8))(v30, v62);
        return;
      }

      v55 = sub_10077167C();
      (*(v75 + 8))(v59, v15);

      if (v55)
      {
        goto LABEL_18;
      }
    }

    sub_10076BEFC();
    v56 = v67;
    sub_10076D3AC();
    sub_10076D35C();
    (*(v68 + 8))(v56, v69);
    goto LABEL_18;
  }
}

uint64_t sub_1006509A8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &unk_1009428D0);
}

uint64_t sub_100650A14(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10003837C(a1, v1 + v3, &unk_1009428D0);
  return swift_endAccess();
}

uint64_t sub_100650AF4(uint64_t result, uint64_t a2)
{
  v4 = result;
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferTitleText);
  v6 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferTitleText + 8);
  if (!v6)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!a2 || ((result = *v5, *v5 == v4) ? (v7 = v6 == a2) : (v7 = 0), !v7 && (result = sub_10077167C(), (result & 1) == 0)))
  {
LABEL_10:

    return sub_10030235C(v4, a2);
  }

  return result;
}

void sub_100650B98(void *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber;
  if (*(a2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber) == 1)
  {
    sub_100770E7C();
  }

  else
  {
    if (qword_100940060 != -1)
    {
      swift_once();
    }

    v5 = sub_10000A5D4(&unk_100942EF0);
    sub_10000A61C(v5, qword_10099EC58);
    v13 = a1;
    sub_10075FDCC();
  }

  sub_100770E7C();
  v6 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasExpandedOffer;
  sub_100650D54(a1, *(a2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasExpandedOffer), a2);
  sub_100770E7C();
  v7 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_downloadProgressLabel);
  if (v7)
  {
    v8 = *(a2 + v6);
    v9 = v7;
    v10 = [a1 traitCollection];
    if ((*(a2 + v4) & 1) != 0 || (v8 & 1) != 0 && (sub_1007706FC() & 1) == 0)
    {

      v11 = 1;
    }

    else
    {
      v12 = sub_10077070C();

      if (v12)
      {
        v11 = 2;
      }

      else
      {
        v11 = 0;
      }
    }

    [v9 setTextAlignment:{v11, v13}];
  }
}