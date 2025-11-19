unint64_t sub_1004994DC()
{
  result = qword_100959108;
  if (!qword_100959108)
  {
    sub_100762A3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100959108);
  }

  return result;
}

uint64_t sub_100499534()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10049958C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_1004995C4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  *&v59 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v5 - 8);
  v7 = &v53 - v6;
  v8 = sub_10000A5D4(&qword_1009590F0);
  __chkstk_darwin(v8);
  v9 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_contentContainerView;
  *&v0[v9] = [objc_allocWithZone(UIView) init];
  v10 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_itemLayoutContext;
  v11 = sub_10076341C();
  (*(*(v11 - 8) + 56))(&v0[v10], 1, 1, v11);
  *&v0[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_shadowView] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_roundedCornerView] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_artwork] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_categories] = _swiftEmptyArrayStorage;
  type metadata accessor for PrivacyCategoryView();
  sub_10076D4CC();
  sub_100498824();
  sub_10076E18C();
  v12 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_style;
  v13 = enum case for PrivacyTypeStyle.productPage(_:);
  v14 = sub_100762A3C();
  (*(*(v14 - 8) + 104))(&v1[v12], v13, v14);
  *&v1[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_separatorView] = 0;
  v15 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_separator;
  v16 = sub_10076E21C();
  (*(*(v16 - 8) + 56))(&v1[v15], 1, 1, v16);
  *&v1[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_iconView] = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_100940DC8 != -1)
  {
    swift_once();
  }

  v17 = sub_10076D3DC();
  v18 = sub_10000A61C(v17, qword_1009A1750);
  v19 = *(v17 - 8);
  v57 = *(v19 + 16);
  v57(v7, v18, v17);
  v56 = *(v19 + 56);
  v56(v7, 0, 1, v17);
  v20 = enum case for DirectionalTextAlignment.none(_:);
  v55 = *(v3 + 104);
  v55(v59, enum case for DirectionalTextAlignment.none(_:), v2);
  v21 = sub_1007626BC();
  v54 = v2;
  v22 = v21;
  v23 = objc_allocWithZone(v21);
  *&v1[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_titleLabel] = sub_1007626AC();
  if (qword_100940DD8 != -1)
  {
    swift_once();
  }

  v24 = sub_10000A61C(v17, qword_1009A1780);
  v57(v7, v24, v17);
  v56(v7, 0, 1, v17);
  v55(v59, v20, v54);
  v25 = objc_allocWithZone(v22);
  *&v1[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_detailLabel] = sub_1007626AC();
  *&v1[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_categoryViews] = _swiftEmptyArrayStorage;
  v60.receiver = v1;
  v60.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v60, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v27 = [v26 contentView];
  [v27 setClipsToBounds:0];

  v28 = [v26 contentView];
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v29 = [v26 contentView];
  sub_100016F40(0, &qword_100942F10);
  v30 = sub_100770D2C();
  [v29 setBackgroundColor:v30];

  v31 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_contentContainerView;
  v32 = *&v26[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_contentContainerView];
  v33 = sub_100770D2C();
  [v32 setBackgroundColor:v33];

  v34 = [v26 contentView];
  [v34 addSubview:*&v26[v31]];

  v35 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_iconView;
  v36 = *&v26[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_iconView];
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 clearColor];
  sub_10075FB8C();

  v40 = qword_1009405E0;
  v41 = *&v26[v35];
  if (v40 != -1)
  {
    swift_once();
  }

  v42 = qword_100959068;
  sub_10075FC3C();

  [*&v26[v31] addSubview:*&v26[v35]];
  v43 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_titleLabel;
  v44 = *&v26[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_titleLabel];
  sub_10076266C();

  [*&v26[v31] addSubview:*&v26[v43]];
  v45 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_detailLabel;
  v46 = *&v26[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_detailLabel];
  sub_10076266C();

  v47 = *&v26[v45];
  v48 = sub_100770D1C();
  [v47 setTextColor:v48];

  [*&v26[v31] addSubview:*&v26[v45]];
  sub_100496400();
  v49 = [objc_opt_self() defaultCenter];
  [v49 addObserver:v26 selector:"lowMemoryWarning:" name:UIApplicationDidReceiveMemoryWarningNotification object:0];

  sub_10000A5D4(&unk_100945BF0);
  v50 = swift_allocObject();
  v59 = xmmword_100783DD0;
  *(v50 + 16) = xmmword_100783DD0;
  *(v50 + 32) = sub_10076E4CC();
  *(v50 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  sub_100770C6C();
  swift_unknownObjectRelease();

  v51 = swift_allocObject();
  *(v51 + 16) = v59;
  *(v51 + 32) = sub_10076E88C();
  *(v51 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v26;
}

void sub_100499EE0()
{
  v1 = sub_10000A5D4(&qword_1009590F0);
  __chkstk_darwin(v1);
  v2 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_contentContainerView;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_itemLayoutContext;
  v4 = sub_10076341C();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_shadowView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_roundedCornerView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_artwork) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_categories) = _swiftEmptyArrayStorage;
  type metadata accessor for PrivacyCategoryView();
  sub_10076D4CC();
  sub_100498824();
  sub_10076E18C();
  v5 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_style;
  v6 = enum case for PrivacyTypeStyle.productPage(_:);
  v7 = sub_100762A3C();
  (*(*(v7 - 8) + 104))(v0 + v5, v6, v7);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_separatorView) = 0;
  v8 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_separator;
  v9 = sub_10076E21C();
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  sub_10077156C();
  __break(1u);
}

uint64_t sub_10049A148()
{
  if (qword_10093F810 != -1)
  {
    return swift_once();
  }

  return result;
}

double sub_10049A208(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v29 = sub_10076172C();
  v28 = *(v29 - 8);
  __chkstk_darwin(v29);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10076174C();
  v31 = *(v32 - 8);
  __chkstk_darwin(v32);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076997C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076C19C();
  v12 = sub_10076C18C();
  sub_10005312C();
  if (qword_100940B50 != -1)
  {
    swift_once();
  }

  v13 = sub_10076D3DC();
  sub_10000A61C(v13, qword_1009A0FE8);
  v33 = a4;
  v14 = [a4 traitCollection];
  v15 = sub_100770B3C();

  v16 = sub_10076C04C();
  v39[3] = v16;
  v39[4] = sub_10049A8B0(&qword_100943230, &type metadata accessor for Feature);
  v17 = sub_10000DB7C(v39);
  (*(*(v16 - 8) + 104))(v17, enum case for Feature.measurement_with_labelplaceholder(_:), v16);
  v18 = v15;
  sub_10076C90C();
  sub_10000CD74(v39);
  sub_10076996C();
  sub_10076994C();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 2) != 0)
  {
    if (qword_10093F810 != -1)
    {
      swift_once();
    }

    [qword_10099D1C8 size];
    v19 = sub_10076DDDC();
    swift_allocObject();
    v20 = sub_10076DDBC();
    *(&v37 + 1) = v19;
    v38 = &protocol witness table for LayoutViewPlaceholder;
    *&v36 = v20;
  }

  else
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
  }

  v21 = v33;
  if (qword_10093F7F8 != -1)
  {
    swift_once();
  }

  v22 = v29;
  v23 = sub_10000A61C(v29, qword_10099D1B0);
  (*(v28 + 16))(v30, v23, v22);
  sub_10000A570(v39, v35);
  sub_100102958(&v36, v34);
  sub_10076173C();
  [v21 pageMarginInsets];
  sub_100770ACC();
  sub_10049A8B0(&qword_1009566E0, &type metadata accessor for FootnoteLayout);
  v24 = v32;
  sub_10076D2AC();
  sub_100770AEC();
  v26 = v25;

  (*(v31 + 8))(v7, v24);
  sub_10000CD74(v39);
  sub_1001029C8(&v36);
  return v26;
}

id sub_10049A7BC()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension26FootnoteCollectionViewCell_footnoteView];
  v2 = sub_10076C18C();
  v3 = v1[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_hasChevron];
  v1[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_hasChevron] = (v2 & 2) != 0;
  sub_100133E3C(v3);
  v1[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLightensOnHighlight] = (sub_10076C18C() & 4) != 0;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLabel];
  sub_10076C19C();
  v5 = sub_10076FF6C();

  [v4 setText:v5];

  [v1 setNeedsLayout];

  return [v0 setNeedsLayout];
}

uint64_t sub_10049A8B0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10049A8F8(uint64_t a1, uint64_t a2)
{
  v5 = sub_10076BF6C();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10076BEDC();
  v22 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100763ADC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && a2)
  {
    v13 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupView);
    v14 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
    swift_beginAccess();
    (*(v10 + 16))(v12, v13 + v14, v9);
    v21[1] = a2;

    sub_1007639AC();
    (*(v10 + 8))(v12, v9);
    sub_10076BEEC();
    sub_10076BE9C();
    v22 = *(v22 + 8);
    (v22)(v8, v6);
    sub_10076BFCC();
    v15 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
    v16 = *(v13 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
    sub_10076BF7C();
    sub_10075FCCC();
    [v16 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_1000325F0();
      sub_100770D5C();
    }

    sub_10075FB8C();

    v17 = *(v13 + v15);
    sub_10076BEEC();
    v18 = sub_10076BE9C();
    (v22)(v8, v6);
    [v17 setContentMode:v18];

    v19 = *(v13 + v15);
    sub_10075FD2C();
    sub_10049BD3C(&qword_100941820, &type metadata accessor for ArtworkView);
    v20 = v19;
    sub_100760B8C();
  }
}

uint64_t sub_10049ACC0(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v106 = a2;
  v7 = sub_10076F68C();
  v117 = *(v7 - 8);
  v118 = v7;
  __chkstk_darwin(v7);
  v116 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v9 - 8);
  v115 = &v101 - v10;
  v11 = sub_10000A5D4(&unk_100949290);
  __chkstk_darwin(v11 - 8);
  v111 = &v101 - v12;
  v13 = sub_10000A5D4(&unk_100945560);
  __chkstk_darwin(v13 - 8);
  v110 = &v101 - v14;
  v109 = sub_100768FEC();
  v107 = *(v109 - 8);
  __chkstk_darwin(v109);
  v108 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000A5D4(&qword_10094F730);
  __chkstk_darwin(v16 - 8);
  v114 = &v101 - v17;
  v18 = sub_10000A5D4(&unk_1009492A0);
  __chkstk_darwin(v18 - 8);
  v105 = &v101 - v19;
  v20 = sub_10000A5D4(&unk_10094D210);
  __chkstk_darwin(v20 - 8);
  v104 = &v101 - v21;
  v22 = sub_10000A5D4(&unk_100945550);
  __chkstk_darwin(v22 - 8);
  v103 = &v101 - v23;
  v24 = sub_10076A3AC();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v102 = &v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v27 - 8);
  v121 = &v101 - v28;
  v29 = sub_10075F15C();
  v30 = *&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_formattedDateView];
  sub_1004B1900(v29);
  [v3 setNeedsLayout];
  v31 = sub_10075F1AC();
  sub_100327154(v31, v32);
  v33 = sub_10075F1BC();
  sub_100327160(v33, v34);
  v35 = sub_10075F1CC();
  sub_10032716C(v35, v36);
  v37 = sub_10075F13C();
  sub_100327178(v37, v38);
  type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
  v119 = a3;
  sub_10076F63C();
  v39 = v123;
  v40 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
  v41 = *(v30 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator);
  v42 = v41;
  sub_1004B57F0(v39);
  v43 = *(v30 + v40);
  *(v30 + v40) = v39;
  v44 = v39;

  sub_1004B5954(v41);
  sub_10075F1DC();
  v45 = sub_10076BB9C();

  sub_100327DC0(v45);
  v112 = v4;
  v113 = a1;
  v46 = *&v4[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupView];
  v120 = sub_10075F1DC();
  v47 = *(v25 + 104);
  v47(v102, enum case for OfferButtonPresenterViewAlignment.right(_:), v24);
  v48 = v103;
  v47(v103, enum case for OfferButtonPresenterViewAlignment.left(_:), v24);
  (*(v25 + 56))(v48, 0, 1, v24);
  sub_10049BD3C(&unk_1009492B0, &type metadata accessor for OfferButtonPresenterViewAlignment);
  v49 = v121;
  sub_10076759C();
  v50 = sub_10000A5D4(&qword_100945590);
  (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
  if (v106)
  {
    v51 = enum case for OfferStyle.infer(_:);
    v52 = sub_10075F78C();
    v53 = *(v52 - 8);
    v54 = v104;
    (*(v53 + 104))(v104, v51, v52);
    (*(v53 + 56))(v54, 0, 1, v52);
    v55 = enum case for OfferEnvironment.light(_:);
    v56 = sub_1007628DC();
    v57 = *(v56 - 8);
    v58 = v105;
    (*(v57 + 104))(v105, v55, v56);
    (*(v57 + 56))(v58, 0, 1, v56);
  }

  else
  {
    v59 = sub_10075F78C();
    v54 = v104;
    (*(*(v59 - 8) + 56))(v104, 1, 1, v59);
    v60 = sub_1007628DC();
    v58 = v105;
    (*(*(v60 - 8) + 56))(v105, 1, 1, v60);
  }

  v61 = v107;
  v62 = v109;
  (*(v107 + 104))(v108, enum case for OfferButtonSubtitlePosition.below(_:), v109);
  (*(v61 + 56))(v110, 1, 1, v62);
  sub_10049BD3C(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition);
  v63 = v114;
  sub_10076759C();
  v64 = sub_10000A5D4(&unk_100946750);
  (*(*(v64 - 8) + 56))(v63, 0, 1, v64);
  v65 = sub_10076C54C();
  v66 = v111;
  (*(*(v65 - 8) + 56))(v111, 1, 1, v65);
  v67 = v119;
  sub_1004D0A60(v120, v46, v121, v119, 0, 0, v54, v58, v66, v63);
  sub_10000CFBC(v66, &unk_100949290);
  v46[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 1;
  sub_10026202C();
  [v46 setNeedsLayout];
  v68 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel;
  v69 = *&v46[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel];
  v70 = v115;
  if (v69)
  {
    [v69 setHidden:1];
    v71 = *&v46[v68];
    if (v71)
    {
      [v71 setText:0];
    }
  }

  v72 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel;
  v73 = *&v46[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel];
  if (v73)
  {
    if (([v73 isHidden] & 1) == 0)
    {
      v74 = *&v46[v72];
      if (v74)
      {
        if ([v74 hasContent])
        {
          v75 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel;
          [*&v46[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel] setHidden:1];
          [*&v46[v75] setText:0];
        }
      }
    }
  }

  v76 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel;
  if ([*&v46[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel] isHidden] & 1) == 0 && (objc_msgSend(*&v46[v76], "hasContent"))
  {
    v77 = *&v46[v72];
    if (v77)
    {
      [v77 setHidden:1];
      v78 = *&v46[v72];
      if (v78)
      {
        [v78 setText:0];
      }
    }

    v79 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel;
    [*&v46[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel] setHidden:1];
    [*&v46[v79] setText:0];
  }

  sub_10000CFBC(v63, &qword_10094F730);
  sub_10000CFBC(v58, &unk_1009492A0);
  sub_10000CFBC(v54, &unk_10094D210);
  sub_10000CFBC(v121, &unk_100946760);
  v80 = *&v46[v72];
  if (v80)
  {
    v81 = qword_100940AD8;
    v82 = v80;
    if (v81 != -1)
    {
      swift_once();
    }

    v83 = sub_10076D3DC();
    v84 = sub_10000A61C(v83, qword_1009A0E98);
    v85 = *(v83 - 8);
    (*(v85 + 16))(v70, v84, v83);
    (*(v85 + 56))(v70, 0, 1, v83);
    sub_1007625DC();
  }

  v86 = *&v46[v68];
  if (v86)
  {
    v87 = qword_100940AF0;
    v88 = v86;
    if (v87 != -1)
    {
      swift_once();
    }

    v89 = sub_10076D3DC();
    v90 = sub_10000A61C(v89, qword_1009A0EE0);
    v91 = *(v89 - 8);
    (*(v91 + 16))(v70, v90, v89);
    (*(v91 + 56))(v70, 0, 1, v89);
    sub_1007625DC();
  }

  sub_100767C9C();
  sub_10076F64C();
  sub_10076FC1C();
  v92 = v123;

  v93 = sub_10075F17C();
  type metadata accessor for NotifyMeButtonPresenter();
  v94 = swift_allocObject();
  v95 = v94 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_view;
  *(v94 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v94 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer) = 0;
  *(v94 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  swift_beginAccess();
  *(v95 + 8) = &off_1008913A8;
  swift_unknownObjectWeakAssign();
  *(v94 + 16) = v92;
  *(v94 + 24) = v93;

  v96 = v116;
  v97 = v118;
  sub_10076FC1C();
  (*(v117 + 32))(v94 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_metricsPipeline, v96, v97);
  *(v94 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_objectGraph) = v67;
  sub_10076148C();

  sub_10076FC1C();
  *(v94 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_bag) = v122;
  sub_10074F1BC();
  sub_10074F8C8();
  v98 = [objc_opt_self() defaultCenter];

  v99 = sub_100767C0C();
  [v98 addObserver:v94 selector:"userNotificationsDidChangeNotification:" name:v99 object:0];

  sub_10032AC88(v94);
}

uint64_t sub_10049BBF8(uint64_t a1, uint64_t a2)
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

uint64_t sub_10049BD3C(unint64_t *a1, void (*a2)(uint64_t))
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

double static LargeGameCenterPlayerLayout.estimatedMeasurements(fitting:using:in:)(uint64_t a1, void *a2, double a3)
{
  swift_getObjectType();

  return sub_10049F108(a1, a2, a3);
}

uint64_t LargeGameCenterPlayerLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v83 = a1;
  v84 = a2;
  v82 = sub_10077164C();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_10076DBAC();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_10076D1FC();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_10076DB9C();
  v15 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10076DB5C();
  v73 = *(v17 - 8);
  v92 = v73;
  __chkstk_darwin(v17);
  v89 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_10076DB6C();
  v91 = *(v88 - 8);
  __chkstk_darwin(v88);
  v87 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_10076DB0C();
  v93 = *(v90 - 8);
  __chkstk_darwin(v90);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v21;
  sub_10000CF78(v6 + 23, v6[26]);
  v101.origin.x = a3;
  v101.origin.y = a4;
  v101.size.width = a5;
  v101.size.height = a6;
  CGRectGetMinX(v101);
  v102.origin.x = a3;
  v102.origin.y = a4;
  v102.size.width = a5;
  v102.size.height = a6;
  CGRectGetMinY(v102);
  sub_10076D23C();
  sub_10000A5D4(&qword_1009426C0);
  v22 = *(v15 + 72);
  v69 = v15;
  v23 = v92;
  v24 = v17;
  v85 = (*(v69 + 80) + 32) & ~*(v69 + 80);
  v67 = v22;
  v72 = swift_allocObject();
  v71 = xmmword_100783DD0;
  *(v72 + 1) = xmmword_100783DD0;
  v25 = v6[31];
  v26 = v7[32];
  v27 = sub_10000CF78(v7 + 28, v7[31]);
  v99 = v25;
  v100 = *(v26 + 8);
  v28 = sub_10000DB7C(&v98);
  (*(*(v25 - 8) + 16))(v28, v27, v25);
  v96 = &type metadata for Double;
  v97 = &protocol witness table for Double;
  v95 = 0;
  v29 = *(v93 + 104);
  v65 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  v66 = v93 + 104;
  v64 = v29;
  v29(v21);
  v30 = v91;
  v31 = *(v91 + 104);
  v32 = v87;
  v62 = enum case for VerticalFlowLayout.HorizontalPlacement.center(_:);
  v33 = v88;
  v63 = v91 + 104;
  v61 = v31;
  v31(v87);
  sub_10000A5D4(&unk_100963750);
  v34 = swift_allocObject();
  *(v34 + 16) = v71;
  sub_10076DB2C();
  v94 = v34;
  sub_1004A018C(&qword_1009426B0, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
  sub_10000A5D4(&unk_100963760);
  sub_100016EDC();
  v35 = v89;
  sub_1007712CC();
  v36 = v86;
  v37 = v32;
  sub_10076DB8C();
  v38 = *(v23 + 8);
  v73 = v24;
  v92 = v23 + 8;
  v38(v35, v24);
  v39 = *(v30 + 8);
  v91 = v30 + 8;
  v39(v37, v33);
  v40 = v90;
  v41 = *(v93 + 8);
  v93 += 8;
  v41(v36, v90);
  sub_1000F00E0(&v95);
  sub_10000CD74(&v98);
  LODWORD(v23) = *(v7 + 176);
  sub_10000CF78(v7 + 33, v7[36]);
  if (v23 == 1)
  {
    sub_10076D25C();
    v42 = v7[36];
    v43 = v7[37];
    v44 = sub_10000CF78(v7 + 33, v42);
    v99 = v42;
    v100 = *(v43 + 8);
    v45 = sub_10000DB7C(&v98);
    (*(*(v42 - 8) + 16))(v45, v44, v42);
    v97 = &protocol witness table for Double;
    v96 = &type metadata for Double;
    v95 = 0;
    v46 = v38;
    v47 = v86;
    v64(v86, v65, v40);
    v48 = v87;
    v49 = v88;
    v61(v87, v62, v88);
    v50 = v89;
    sub_10076DB3C();
    v51 = v68;
    sub_10076DB8C();
    v46(v50, v73);
    v39(v48, v49);
    v41(v47, v40);
    sub_1000F00E0(&v95);
    sub_10000CD74(&v98);
    v52 = v72;
    v54 = v72[2];
    v53 = v72[3];
    if (v54 >= v53 >> 1)
    {
      v52 = sub_10049EC9C(v53 > 1, v54 + 1, 1, v72, &qword_1009426C0, &unk_100784180, &type metadata accessor for VerticalFlowLayout.Child);
    }

    *(v52 + 2) = v54 + 1;
    (*(v69 + 32))(&v52[v85 + v54 * v67], v51, v70);
  }

  else
  {
    sub_10076D25C();
    sub_10000CF78(v7 + 33, v7[36]);
    sub_10076D23C();
  }

  v55 = v77;
  sub_10076DB7C();
  v103.origin.x = a3;
  v103.origin.y = a4;
  v103.size.width = a5;
  v103.size.height = a6;
  CGRectGetMinX(v103);
  sub_10000CF78(v7 + 17, v7[20]);
  v56 = v80;
  sub_1000FF02C();
  sub_10076D40C();
  v57 = *(v81 + 8);
  v58 = v82;
  v57(v56, v82);
  sub_10000CF78(v7 + 23, v7[26]);
  sub_10076D22C();
  CGRectGetMaxY(v104);
  v105.origin.x = a3;
  v105.origin.y = a4;
  v105.size.width = a5;
  v105.size.height = a6;
  CGRectGetWidth(v105);
  sub_10000CF78(v7 + 17, v7[20]);
  sub_1000FF02C();
  sub_10076D40C();
  v57(v56, v58);
  v106.origin.x = a3;
  v106.origin.y = a4;
  v106.size.width = a5;
  v106.size.height = a6;
  CGRectGetHeight(v106);
  sub_10000CF78(v7 + 23, v7[26]);
  sub_10076D22C();
  CGRectGetMaxY(v107);
  v59 = v74;
  sub_10076DB1C();
  (*(v78 + 8))(v55, v79);
  (*(v75 + 8))(v59, v76);
  v108.origin.x = a3;
  v108.origin.y = a4;
  v108.size.width = a5;
  v108.size.height = a6;
  CGRectGetMinX(v108);
  v109.origin.x = a3;
  v109.origin.y = a4;
  v109.size.width = a5;
  v109.size.height = a6;
  CGRectGetMinY(v109);
  v110.origin.x = a3;
  v110.origin.y = a4;
  v110.size.width = a5;
  v110.size.height = a6;
  CGRectGetWidth(v110);
  sub_10000CF78(v7 + 28, v7[31]);
  sub_10076D22C();
  CGRectGetMaxY(v111);
  sub_10000CF78(v7 + 33, v7[36]);
  sub_10076D22C();
  CGRectGetMaxY(v112);
  sub_10000CF78(v7 + 12, v7[15]);
  sub_1000FF02C();
  sub_10076D40C();
  v57(v56, v58);
  return sub_10076D1BC();
}

uint64_t LargeGameCenterPlayerLayout.Metrics.displayNameTopSpace.setter(__int128 *a1)
{
  sub_10000CD74(v1 + 56);

  return sub_10003F19C(a1, v1 + 56);
}

uint64_t LargeGameCenterPlayerLayout.Metrics.labelBottomSpace.setter(__int128 *a1)
{
  sub_10000CD74(v1 + 96);

  return sub_10003F19C(a1, v1 + 96);
}

uint64_t LargeGameCenterPlayerLayout.Metrics.labelMargin.setter(__int128 *a1)
{
  sub_10000CD74(v1 + 136);

  return sub_10003F19C(a1, v1 + 136);
}

double LargeGameCenterPlayerLayout.measurements(fitting:in:)(void *a1, double a2)
{
  swift_getObjectType();

  return sub_10049F108(v2, a1, a2);
}

void *sub_10049CD80(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&qword_1009592B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[11 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000A5D4(&qword_100942890);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10049CF8C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&qword_1009592A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_10049D0D8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&qword_10094E578);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_10049D1CC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&unk_100952260);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_10049D2F4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&qword_100959268);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000A5D4(&qword_100959270);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10049D474(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&qword_100959200);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000A5D4(&qword_100959208);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10049D5BC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&qword_1009591B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10049D6EC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&qword_100952660);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000A5D4(&unk_100943470);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10049D834(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&qword_1009591B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10049D954(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&qword_100944FF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10049DA60(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&unk_1009434B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10049DB70(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&qword_1009591F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_10049DCC0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&qword_1009591A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000A5D4(&qword_1009591A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10049DEB4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&qword_100959258);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10049DFD0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&qword_100959178);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[11 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000A5D4(&qword_100959180);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10049E120(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&qword_100959188);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10049E22C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&qword_100952110);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10049E358(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&qword_10094E568);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_10049E4EC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000A5D4(a5);
  v14 = *(sub_10000A5D4(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(sub_10000A5D4(a7) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_10049E744(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_10000A5D4(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000A5D4(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_10049E89C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_10000A5D4(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000A5D4(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_10049E9F4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_10000A5D4(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000A5D4(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_10049EB78(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_10000A5D4(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

size_t sub_10049EC9C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000A5D4(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_10049EE7C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000A5D4(&qword_100944FF0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_10049EF00(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000A5D4(&qword_100944C48);
  v4 = *(sub_10075E11C() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10049EFFC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000A5D4(&qword_100952110);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_10049F080(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000A5D4(&unk_100942870);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

double sub_10049F108(uint64_t a1, void *a2, double a3)
{
  v118 = sub_10077164C();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v115 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_10076DBAC();
  v114 = *(v116 - 8);
  __chkstk_darwin(v116);
  v113 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_10076DB9C();
  v8 = *(v108 - 8);
  __chkstk_darwin(v108);
  v106 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_10076DB5C();
  v10 = *(v121 - 8);
  __chkstk_darwin(v121);
  v109 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_10076DB6C();
  v125 = *(v112 - 8);
  __chkstk_darwin(v112);
  v111 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_10076DB0C();
  v13 = *(v110 - 8);
  __chkstk_darwin(v110);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10076997C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = a1;
  v20 = sub_10005312C();
  if (qword_100940DA0 != -1)
  {
    swift_once();
  }

  v98 = sub_10076D3DC();
  sub_10000A61C(v98, qword_1009A16D8);
  v122 = a2;
  v21 = [a2 traitCollection];
  v100 = v20;
  sub_100770B3C();

  v22 = sub_10076C04C();
  v135 = v22;
  v97 = sub_1004A018C(&qword_100943230, &type metadata accessor for Feature);
  v136 = v97;
  v23 = sub_10000DB7C(&v134);
  v24 = *(v22 - 8);
  v25 = *(v24 + 104);
  v96 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v99 = v22;
  v95 = v25;
  v94 = v24 + 104;
  v25(v23);
  sub_10076C90C();
  sub_10000CD74(&v134);
  sub_10076996C();
  sub_10076994C();
  v26 = *(v17 + 8);
  v102 = v19;
  v104 = v16;
  v103 = v17 + 8;
  v93 = v26;
  v26(v19, v16);
  sub_10000A5D4(&qword_1009426C0);
  v27 = *(v8 + 72);
  v107 = v8;
  v120 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v101 = v27;
  v123 = swift_allocObject();
  v119 = xmmword_100783DD0;
  *(v123 + 1) = xmmword_100783DD0;
  v28 = v135;
  v29 = v136;
  v30 = sub_10000CF78(&v134, v135);
  v132 = v28;
  v133 = *(v29 + 8);
  v31 = sub_10000DB7C(&v131);
  (*(*(v28 - 8) + 16))(v31, v30, v28);
  v129 = &type metadata for Double;
  v130 = &protocol witness table for Double;
  v128 = 0;
  v32 = *(v13 + 104);
  v33 = v15;
  v91 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  v34 = v110;
  v92 = v13 + 104;
  v90 = v32;
  v32(v15);
  v35 = v125;
  v36 = *(v125 + 104);
  v37 = v111;
  v88 = enum case for VerticalFlowLayout.HorizontalPlacement.center(_:);
  v38 = v112;
  v89 = v125 + 104;
  v87 = v36;
  v36(v111);
  v39 = sub_10000A5D4(&unk_100963750);
  v40 = *(v10 + 72);
  v41 = v10;
  v42 = *(v10 + 80);
  v43 = (v42 + 32) & ~v42;
  v84 = v42;
  v85 = v39;
  v83 = v43 + v40;
  v44 = swift_allocObject();
  *(v44 + 16) = v119;
  v86 = v43;
  sub_10076DB2C();
  v127[0] = v44;
  v45 = sub_1004A018C(&qword_1009426B0, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
  v46 = sub_10000A5D4(&unk_100963760);
  v47 = sub_100016EDC();
  v48 = v109;
  v81 = v46;
  v80 = v47;
  v49 = v121;
  v82 = v45;
  sub_1007712CC();
  v50 = v124;
  sub_10076DB8C();
  v51 = *(v41 + 8);
  v105 = v41 + 8;
  v79 = v51;
  v51(v48, v49);
  v52 = *(v35 + 8);
  v125 = v35 + 8;
  v52(v37, v38);
  v78 = *(v13 + 8);
  v78(v33, v34);
  sub_1000F00E0(&v128);
  sub_10000CD74(&v131);
  if (*(v50 + 176) == 1)
  {
    v53 = v38;
    v54 = v52;
    v55 = v33;
    if (qword_100940DA8 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v98, qword_1009A16F0);
    v56 = [v122 traitCollection];
    sub_100770B3C();

    v57 = v99;
    v132 = v99;
    v133 = v97;
    v58 = sub_10000DB7C(&v131);
    v95(v58, v96, v57);
    sub_10076C90C();
    sub_10000CD74(&v131);
    v59 = v102;
    sub_10076996C();
    sub_10076994C();
    v93(v59, v104);
    v60 = v132;
    v61 = v133;
    v62 = sub_10000CF78(&v131, v132);
    v129 = v60;
    v130 = *(v61 + 8);
    v63 = sub_10000DB7C(&v128);
    (*(*(v60 - 8) + 16))(v63, v62, v60);
    v127[4] = &protocol witness table for Double;
    v127[3] = &type metadata for Double;
    v127[0] = 0;
    v90(v55, v91, v34);
    v87(v37, v88, v53);
    v64 = swift_allocObject();
    *(v64 + 16) = v119;
    sub_10076DB2C();
    v126 = v64;
    v65 = v48;
    v66 = v121;
    sub_1007712CC();
    v67 = v124;
    v68 = v34;
    v69 = v106;
    sub_10076DB8C();
    v79(v65, v66);
    v54(v37, v53);
    v78(v55, v68);
    sub_1000F00E0(v127);
    sub_10000CD74(&v128);
    v70 = v123;
    v72 = v123[2];
    v71 = v123[3];
    if (v72 >= v71 >> 1)
    {
      v70 = sub_10049EC9C(v71 > 1, v72 + 1, 1, v123, &qword_1009426C0, &unk_100784180, &type metadata accessor for VerticalFlowLayout.Child);
    }

    *(v70 + 2) = v72 + 1;
    (*(v107 + 32))(&v70[v120 + v72 * v101], v69, v108);
    sub_10000CD74(&v131);
  }

  else
  {
    v67 = v124;
  }

  v73 = v113;
  sub_10076DB7C();
  v74 = v116;
  sub_10076D2AC();
  sub_10000CF78((v67 + 96), *(v67 + 120));
  v75 = v115;
  sub_1000FF02C();
  sub_10076D40C();
  (*(v117 + 8))(v75, v118);
  (*(v114 + 8))(v73, v74);
  sub_10000CD74(&v134);
  return a3;
}

unint64_t sub_10049FF44()
{
  result = qword_100959160;
  if (!qword_100959160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100959160);
  }

  return result;
}

uint64_t sub_10049FFA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 304))
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

uint64_t sub_10049FFE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
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
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 304) = 1;
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

    *(result + 304) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1004A0088(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1004A00C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 177))
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

uint64_t sub_1004A010C(uint64_t result, int a2, int a3)
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
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 177) = 1;
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

    *(result + 177) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1004A018C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t CompoundActionImplementation.PerformError.localizedDescription.getter()
{
  sub_1004A02E4(v0, &v4);
  if (!v5)
  {
    return 0xD00000000000003ALL;
  }

  sub_100012498(&v4, v3);
  sub_10077145C(49);
  v6._object = 0x80000001007E95F0;
  v6._countAndFlagsBits = 0xD000000000000016;
  sub_1007700CC(v6);
  sub_10000A5D4(&qword_1009592D0);
  sub_10077151C();
  v7._countAndFlagsBits = 0xD000000000000019;
  v7._object = 0x80000001007E9610;
  sub_1007700CC(v7);
  v1 = 0;
  sub_10000CD74(v3);
  return v1;
}

uint64_t CompoundActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = sub_10000A5D4(&unk_1009428E0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - v8;
  sub_10076F63C();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000CFBC(v5, &unk_100943200);
    sub_10000A5D4(&qword_100942C70);
    sub_1004A0684();
    swift_allocError();
    *v10 = 0u;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0;
    return sub_10076FC7C();
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12 = sub_10076F6AC();
    if (v12)
    {
      v13 = v12;
      *(&v19 + 1) = sub_100085204();
      v20 = &protocol witness table for OS_dispatch_queue;
      *&v18 = v13;
      sub_100012498(&v18, v21);
    }

    else
    {
      v14 = sub_10076F81C();
      v18 = 0u;
      v19 = 0u;
      v20 = 0;
      v22 = v14;
      v23 = &protocol witness table for SyncTaskScheduler;
      sub_10000DB7C(v21);
      sub_10076F80C();
      if (*(&v19 + 1))
      {
        sub_10000CFBC(&v18, &qword_1009592E0);
      }
    }

    sub_10000A5D4(&qword_100942C70);
    v15 = sub_10076FCEC();
    v16 = swift_allocObject();
    *(v16 + 16) = sub_10076166C();
    *(v16 + 24) = 0;
    sub_10000CF78(v21, v22);
    sub_10000A570(v21, &v18);
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = v15;
    v17[4] = a2;
    sub_100012498(&v18, (v17 + 5));

    sub_10076F55C();

    (*(v7 + 8))(v9, v6);

    sub_10000CD74(v21);
    return v15;
  }
}

unint64_t sub_1004A0684()
{
  result = qword_1009592D8;
  if (!qword_1009592D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009592D8);
  }

  return result;
}

uint64_t sub_1004A06D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1004A0710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10076F50C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(a1 + 16);
  if (v12 >> 62)
  {
    result = sub_10077158C();
  }

  else
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = *(a1 + 24);
  if (v14 == result)
  {
    swift_endAccess();
    (*(v9 + 104))(v11, enum case for ActionOutcome.performed(_:), v8);
    sub_10076FCBC();
    return (*(v9 + 8))(v11, v8);
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
    result = sub_10077149C();
    v15 = result;
    v16 = v14 + 1;
    if (!__OFADD__(v14, 1))
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v15 = *(v12 + 8 * v14 + 32);

  v16 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_9:
  *(a1 + 24) = v16;
  swift_endAccess();
  sub_100563DC4(v15, 1, a3);
  sub_10000A570(a4, v19);
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  sub_100012498(v19, (v17 + 5));
  v17[10] = v15;
  swift_retain_n();

  sub_10076FC6C();
}

uint64_t sub_1004A09B0()
{

  sub_10000CD74(v0 + 40);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1004A0A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10076F50C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v19 = &v31 - v18;
  (*(v13 + 16))(&v31 - v18, a1, v12, v17);
  v20 = (*(v13 + 88))(v19, v12);
  v21 = v20;
  if (v20 != enum case for ActionOutcome.performed(_:))
  {
    if (v20 == enum case for ActionOutcome.unsupported(_:))
    {
      sub_1004A0684();
      swift_allocError();
      v27 = v26;
      v26[3] = sub_10076B90C();
      v27[4] = sub_1004A0F18(&qword_10095D660, &type metadata accessor for Action);
      *v27 = a6;

      sub_10076FCAC();
    }

    goto LABEL_20;
  }

  swift_beginAccess();
  v22 = *(a2 + 16);
  if (v22 >> 62)
  {
    v23 = sub_10077158C();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = *(a2 + 24);
  if (v24 == v23)
  {
    swift_endAccess();
    (*(v13 + 104))(v15, v21, v12);
    sub_10076FCBC();
    return (*(v13 + 8))(v15, v12);
  }

  if ((v22 & 0xC000000000000001) != 0)
  {
    v28 = sub_10077149C();
    v29 = v24 + 1;
    if (!__OFADD__(v24, 1))
    {
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  if ((v24 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    result = sub_10077166C();
    __break(1u);
    return result;
  }

  v28 = *(v22 + 8 * v24 + 32);

  v29 = v24 + 1;
  if (__OFADD__(v24, 1))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_12:
  *(a2 + 24) = v29;
  swift_endAccess();
  sub_100563DC4(v28, 1, a4);
  sub_10000A570(a5, v32);
  v30 = swift_allocObject();
  v30[2] = a2;
  v30[3] = a3;
  v30[4] = a4;
  sub_100012498(v32, (v30 + 5));
  v30[10] = v28;
  swift_retain_n();

  sub_10076FC6C();
}

uint64_t sub_1004A0E10(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1004A0E28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004A0E78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_1004A0ED4(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1004A0F18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004A0F6C()
{

  sub_10000CD74(v0 + 40);

  return _swift_deallocObject(v0, 88, 7);
}

id sub_1004A0FE4()
{
  v1 = v0;
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, "prepareForReuse");
  *&v0[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_artwork] = 0;

  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_artworkView];
  sub_10075FCAC();

  v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_mediaViewContainer];
  v4 = OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer;
  v5 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
  v6 = *(v5 + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  *(v5 + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents) = 0;
  sub_100453A30(v6);

  sub_1004526E4();
  v7 = *(v3 + v4);
  v8 = *(v7 + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  *(v7 + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents) = 0;
  sub_100453A30(v8);

  *&v1[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_video] = 0;

  v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_epicHeaderView];
  if (v9)
  {
    v10 = v9;
    sub_10075FCAC();
  }

  *&v1[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_epicHeadingArtwork] = 0;

  v11 = &v1[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_fallbackTitle];
  *v11 = 0;
  *(v11 + 1) = 0;

  sub_1004A1230();
  v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_fallbackTitleView];
  [v12 setHidden:1];
  [v12 setText:0];
  v13 = &v1[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_footerText];
  *v13 = 0;
  *(v13 + 1) = 0;

  return sub_1004A13B4();
}

void sub_1004A1230()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_fallbackTitleView];
  v2 = [v1 text];
  if (!v2)
  {
    v8 = &v0[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_fallbackTitle + 8];
    v7 = *v8;
LABEL_11:
    if (!v7)
    {
      return;
    }

LABEL_12:
    if (*v8)
    {
LABEL_13:

      v11 = sub_10076FF6C();

LABEL_17:
      [v1 setText:v11];

      [v0 setNeedsLayout];
      return;
    }

LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  v3 = v2;
  v4 = sub_10076FF9C();
  v6 = v5;

  v8 = &v0[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_fallbackTitle + 8];
  v7 = *v8;
  if (!v6)
  {
    goto LABEL_11;
  }

  if (!v7)
  {

    if (*v8)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  if (v4 != *&v0[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_fallbackTitle] || v7 != v6)
  {
    v10 = sub_10077167C();

    if (v10)
    {
      return;
    }

    goto LABEL_12;
  }
}

id sub_1004A13B4()
{
  v1 = v0;
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100943250);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v31 - v8;
  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_footerText + 8])
  {
    v10 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_footerLabel;
    v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_footerLabel];
    v12 = &selRef_initWithTabBarSystemItem_tag_;
    if (v11)
    {
    }

    else
    {
      v14 = qword_100940B28;

      if (v14 != -1)
      {
        swift_once();
      }

      v15 = sub_10076D3DC();
      v16 = sub_10000A61C(v15, qword_1009A0F70);
      v17 = *(v15 - 8);
      (*(v17 + 16))(v9, v16, v15);
      (*(v17 + 56))(v9, 0, 1, v15);
      (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
      v18 = objc_allocWithZone(sub_1007626BC());
      v19 = sub_1007626AC();
      v20 = sub_10076FF6C();
      [v19 setText:v20];

      v21 = qword_10093FFE0;
      v22 = v19;
      if (v21 != -1)
      {
        swift_once();
      }

      [v22 setTextColor:qword_10099EB08];

      [v22 setTextAlignment:1];
      [v22 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
      v23 = v22;
      sub_1004A185C(v22);
      v12 = &selRef_initWithTabBarSystemItem_tag_;
      v24 = [v1 contentView];
      [v24 addSubview:v23];

      v11 = *&v1[v10];
      if (!v11)
      {
        goto LABEL_17;
      }
    }

    v25 = [v11 layer];
    v26 = [v1 v12[115]];
    [v26 overrideUserInterfaceStyle];

    sub_10076FF9C();
    v27 = sub_10076FF6C();

    [v25 setCompositingFilter:v27];

    v28 = *&v1[v10];
    if (v28)
    {
      v29 = v28;
      v30 = sub_10076FF6C();

      [v29 setText:v30];

      result = *&v1[v10];
      if (!result)
      {
        return result;
      }

      return [result setHidden:0];
    }

LABEL_17:

    result = *&v1[v10];
    if (!result)
    {
      return result;
    }

    return [result setHidden:0];
  }

  result = *&v1[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_footerLabel];
  if (result)
  {

    return [result setHidden:{1, v7}];
  }

  return result;
}

void sub_1004A185C(void *a1)
{
  v3 = sub_10076F9AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_footerLabel;
  v8 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_footerLabel);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_footerLabel) = a1;
  v13 = a1;

  v9 = *(v1 + v7);
  if (v9)
  {
    memset(v15, 0, sizeof(v15));
    memset(v14, 0, sizeof(v14));
    v10 = v9;
    sub_10076F95C();
    sub_10000CFBC(v14, &unk_1009434C0);
    sub_10000CFBC(v15, &unk_1009434C0);
    sub_100770B9C();

    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v11 = v13;
  }
}

void (*sub_1004A1A04(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_mediaViewContainer);
  v4 = OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer;
  a1[1] = v3;
  a1[2] = v4;
  v5 = *(*(v3 + v4) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  if (v5)
  {
    type metadata accessor for VideoView();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_1004A1AA0;
}

void sub_1004A1AA0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*(a1 + 8) + *(a1 + 16));
  if (a2)
  {
    if (v2)
    {
      sub_1004A3670(&qword_100942810, type metadata accessor for VideoView);
      v5 = v2;
      v6 = [v5 superview];
      if (v6)
      {
        v7 = v6;
        sub_100016F40(0, &qword_1009441F0);
        v8 = v3;
        v9 = sub_100770EEC();

        if (v9)
        {
          [v5 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v15 = *&v3[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
    *&v3[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = v2;
    v16 = v2;
    sub_100453A30(v15);

    v17 = *a1;
  }

  else
  {
    if (v2)
    {
      sub_1004A3670(&qword_100942810, type metadata accessor for VideoView);
      v10 = v2;
      v11 = [v10 superview];
      if (v11)
      {
        v12 = v11;
        sub_100016F40(0, &qword_1009441F0);
        v13 = v3;
        v14 = sub_100770EEC();

        if (v14)
        {
          [v10 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v19 = *&v3[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
    *&v3[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = v2;
    v18 = v2;
    sub_100453A30(v19);

    v17 = v19;
  }
}

char *sub_1004A1CE8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10076F9AC();
  v89 = *(v10 - 8);
  v90 = v10;
  __chkstk_darwin(v10);
  v88 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_10076771C();
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v85 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v13 - 8);
  v15 = &v83 - v14;
  v16 = sub_100760B4C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000A5D4(&qword_1009622B0);
  __chkstk_darwin(v20 - 8);
  v22 = &v83 - v21;
  v23 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_itemLayoutContext;
  v24 = sub_10076341C();
  (*(*(v24 - 8) + 56))(&v5[v23], 1, 1, v24);
  v25 = &v5[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_fallbackTitle];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = &v5[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_footerText];
  *v26 = 0;
  *(v26 + 1) = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_video] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_epicHeadingArtwork] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_artwork] = 0;
  v27 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_headingView;
  v28 = enum case for Wordmark.arcade(_:);
  v29 = sub_10076C43C();
  v30 = *(v29 - 8);
  (*(v30 + 104))(v22, v28, v29);
  (*(v30 + 56))(v22, 0, 1, v29);
  (*(v17 + 104))(v19, enum case for WordmarkView.Alignment.leading(_:), v16);
  *(&v97 + 1) = &type metadata for Double;
  v98 = &protocol witness table for Double;
  *&v96 = 0x4028000000000000;
  v31 = objc_allocWithZone(sub_100760B6C());
  *&v5[v27] = sub_100760B3C();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_epicHeaderView] = 0;
  v32 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_fallbackTitleView;
  if (qword_100940B20 != -1)
  {
    swift_once();
  }

  v33 = sub_10076D3DC();
  v34 = sub_10000A61C(v33, qword_1009A0F58);
  v35 = *(v33 - 8);
  (*(v35 + 16))(v15, v34, v33);
  (*(v35 + 56))(v15, 0, 1, v33);
  (*(v84 + 104))(v85, enum case for DirectionalTextAlignment.none(_:), v86);
  v36 = objc_allocWithZone(sub_1007626BC());
  *&v5[v32] = sub_1007626AC();
  v37 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_offerButton;
  v38 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[v37] = sub_1001E89B8(0);
  v39 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_artworkView;
  sub_10075FD2C();
  *&v5[v39] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_footerLabel] = 0;
  v40 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_gradientView;
  *&v5[v40] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v41 = type metadata accessor for MediaView();
  v42 = objc_allocWithZone(v41);
  *&v42[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionView] = 0;
  *&v42[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionAmount] = 0;
  v42[OBJC_IVAR____TtC20ProductPageExtension9MediaView_isRubberbanding] = 0;
  *&v42[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v42[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionOffset] = 0;
  v43 = type metadata accessor for UberContentContainer();
  v44 = objc_allocWithZone(v43);
  *&v44[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = 0;
  *&v44[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY] = 0;
  v45 = &v44[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_prominentPlayButtonCenterYOverride];
  *v45 = 0;
  v45[8] = 1;
  v46 = &v44[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_systemBackgroundExtensionOutsets];
  *v46 = 0u;
  *(v46 + 1) = 0u;
  v46[32] = 1;
  *&v44[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_backgroundExtensionView] = 0;
  v95.receiver = v44;
  v95.super_class = v43;
  v47 = objc_msgSendSuper2(&v95, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v48 = v47;
  if (*&v47[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_backgroundExtensionView])
  {
    [v47 addSubview:?];
  }

  v49 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_mediaViewContainer;
  *&v42[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer] = v48;
  v94.receiver = v42;
  v94.super_class = v41;
  v50 = objc_msgSendSuper2(&v94, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v50 setClipsToBounds:1];
  [v50 addSubview:*&v50[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer]];

  *&v5[v49] = v50;
  v93.receiver = v5;
  v93.super_class = ObjectType;
  v51 = objc_msgSendSuper2(&v93, "initWithFrame:", a1, a2, a3, a4);
  v52 = [v51 contentView];
  [v52 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v53 = [v51 contentView];
  [v53 _setCornerRadius:20.0];

  v54 = [v51 contentView];
  [v54 setClipsToBounds:1];

  v55 = [v51 contentView];
  sub_100016F40(0, &qword_100942F10);
  v56 = sub_100770D5C();
  [v55 setBackgroundColor:v56];

  v57 = [v51 contentView];
  v58 = [v57 layer];

  [v58 setAllowsGroupBlending:0];
  v59 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_gradientView;
  v60 = *&v51[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_gradientView];
  sub_10000A5D4(&unk_100942870);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_100785D70;
  v62 = objc_allocWithZone(UIColor);
  v63 = v60;
  *(v61 + 32) = [v62 initWithWhite:0.0 alpha:0.0];
  *(v61 + 40) = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.15];
  *&v63[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = v61;

  sub_1001C05B8();

  v64 = [v51 contentView];
  [v64 addSubview:*&v51[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_mediaViewContainer]];

  v65 = [v51 contentView];
  [v65 addSubview:*&v51[v59]];

  v66 = [v51 contentView];
  [v66 addSubview:*&v51[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_offerButton]];

  v67 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_fallbackTitleView;
  v68 = *&v51[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_fallbackTitleView];
  v69 = sub_100770CFC();
  [v68 setTextColor:v69];

  [*&v51[v67] setTextAlignment:1];
  [*&v51[v67] setHidden:1];
  v70 = [v51 contentView];
  [v70 addSubview:*&v51[v67]];

  v71 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_headingView;
  v72 = *&v51[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_headingView];
  v73 = sub_100770CFC();
  [v72 setTintColor:v73];

  v74 = *&v51[v71];
  v96 = 0u;
  v97 = 0u;
  v91 = 0u;
  v92 = 0u;
  v75 = v74;
  v76 = v88;
  sub_10076F95C();
  sub_10000CFBC(&v91, &unk_1009434C0);
  sub_10000CFBC(&v96, &unk_1009434C0);
  sub_100770B9C();

  v77 = v90;
  v78 = *(v89 + 8);
  v78(v76, v90);
  v79 = [v51 contentView];

  [v79 addSubview:*&v51[v71]];
  v80 = *&v51[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_artworkView];
  v96 = 0u;
  v97 = 0u;
  v91 = 0u;
  v92 = 0u;
  v81 = v80;
  sub_10076F95C();
  sub_10000CFBC(&v91, &unk_1009434C0);
  sub_10000CFBC(&v96, &unk_1009434C0);
  sub_100770B9C();

  v78(v76, v77);
  return v51;
}

uint64_t sub_1004A2940()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D1FC();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v36 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076449C();
  __chkstk_darwin(v5 - 8);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007644BC();
  v40 = *(v8 - 8);
  v41 = v8;
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v39 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67.receiver = v1;
  v67.super_class = ObjectType;
  objc_msgSendSuper2(&v67, "layoutSubviews", v9);
  [v1 bounds];
  v35[1] = v7;
  sub_1004A1184();
  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_gradientView];
  v65 = type metadata accessor for GradientView();
  v66 = &protocol witness table for UIView;
  v64 = v11;
  v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_mediaViewContainer];
  v62 = type metadata accessor for MediaView();
  v63 = &protocol witness table for UIView;
  v61 = v12;
  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_headingView];
  v59 = sub_100760B6C();
  v60 = &protocol witness table for UIView;
  v58 = v13;
  v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_epicHeaderView];
  if (v14)
  {
    v15 = sub_10075FD2C();
    v16 = &protocol witness table for UIView;
    v17 = v14;
  }

  else
  {
    v17 = 0;
    v15 = 0;
    v16 = 0;
    v54 = 0;
    v55 = 0;
  }

  v53 = v17;
  v56 = v15;
  v57 = v16;
  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_fallbackTitleView];
  v19 = sub_1007626BC();
  v51 = v19;
  v52 = &protocol witness table for UILabel;
  v50 = v18;
  v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_offerButton];
  v48 = type metadata accessor for OfferButton();
  v49 = &protocol witness table for UIView;
  v47 = v20;
  v21 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_footerLabel];
  if (v21)
  {
    v22 = &protocol witness table for UIView;
  }

  else
  {
    v19 = 0;
    v22 = 0;
    v43 = 0;
    v44 = 0;
  }

  v42 = v21;
  v45 = v19;
  v46 = v22;
  v23 = v14;
  v24 = v18;
  v25 = v20;
  v26 = v21;
  v11;
  v27 = v12;
  v28 = v13;
  v29 = v39;
  sub_1007644AC();
  v30 = [v1 contentView];
  [v30 bounds];

  v31 = v36;
  sub_10076446C();
  (*(v37 + 8))(v31, v38);
  sub_10000A5D4(&unk_100952260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100784500;
  [v1 bounds];
  v33 = CGRectGetHeight(v68) + -88.0;
  [v1 bounds];
  *(inited + 32) = v33 / CGRectGetHeight(v69);
  *(inited + 40) = 0x3FF0000000000000;
  sub_1001C0414(inited);
  return (*(v40 + 8))(v29, v41);
}

id sub_1004A2E04()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_epicHeaderView;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_epicHeaderView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_epicHeaderView];
  }

  else
  {
    v4 = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = [v0 contentView];
    [v5 insertSubview:v4 aboveSubview:*&v0[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_mediaViewContainer]];

    v6 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t type metadata accessor for PosterLockupCollectionViewCell()
{
  result = qword_100959328;
  if (!qword_100959328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004A3100()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1004A31C4()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_mediaViewContainer) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  if (!v1)
  {
    return 0;
  }

  type metadata accessor for VideoView();
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    return v3;
  }

  return result;
}

void sub_1004A3234(void *a1)
{
  sub_100454524(a1);
}

uint64_t (*sub_1004A328C(uint64_t **a1))()
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
  v2[4] = sub_1004A1A04(v2);
  return sub_100019A4C;
}

uint64_t sub_1004A32FC()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1004A3670(&qword_100959348, type metadata accessor for PosterLockupCollectionViewCell);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1004A3370(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1004A3670(&qword_100959348, type metadata accessor for PosterLockupCollectionViewCell);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_1004A33FC(uint64_t *a1))()
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
  sub_1004A3670(&qword_100959348, type metadata accessor for PosterLockupCollectionViewCell);
  *(v3 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_1004A34B8(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_mediaViewContainer);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
  sub_100016F40(0, &qword_1009441F0);
  v6 = v5;
  v7 = sub_100770EEC();

  return v7 & 1;
}

uint64_t sub_1004A3670(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1004A36B8()
{
  v1 = v0;
  v43 = sub_10076771C();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v3 - 8);
  v5 = &v41 - v4;
  v6 = sub_100760B4C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&qword_1009622B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v41 - v11;
  v13 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_itemLayoutContext;
  v14 = sub_10076341C();
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  v15 = (v1 + OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_fallbackTitle);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v1 + OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_footerText);
  *v16 = 0;
  v16[1] = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_video) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_epicHeadingArtwork) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_artwork) = 0;
  v17 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_headingView;
  v18 = enum case for Wordmark.arcade(_:);
  v19 = sub_10076C43C();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v12, v18, v19);
  (*(v20 + 56))(v12, 0, 1, v19);
  (*(v7 + 104))(v9, enum case for WordmarkView.Alignment.leading(_:), v6);
  v47 = &type metadata for Double;
  v48 = &protocol witness table for Double;
  v46 = 0x4028000000000000;
  v21 = objc_allocWithZone(sub_100760B6C());
  *(v1 + v17) = sub_100760B3C();
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_epicHeaderView) = 0;
  v22 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_fallbackTitleView;
  if (qword_100940B20 != -1)
  {
    swift_once();
  }

  v23 = sub_10076D3DC();
  v24 = sub_10000A61C(v23, qword_1009A0F58);
  v25 = *(v23 - 8);
  (*(v25 + 16))(v5, v24, v23);
  (*(v25 + 56))(v5, 0, 1, v23);
  (*(v41 + 104))(v42, enum case for DirectionalTextAlignment.none(_:), v43);
  v26 = objc_allocWithZone(sub_1007626BC());
  *(v1 + v22) = sub_1007626AC();
  v27 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_offerButton;
  v28 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v1 + v27) = sub_1001E89B8(0);
  v29 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_artworkView;
  sub_10075FD2C();
  *(v1 + v29) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_footerLabel) = 0;
  v30 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_gradientView;
  *(v1 + v30) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v31 = type metadata accessor for MediaView();
  v32 = objc_allocWithZone(v31);
  *&v32[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionView] = 0;
  *&v32[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionAmount] = 0;
  v32[OBJC_IVAR____TtC20ProductPageExtension9MediaView_isRubberbanding] = 0;
  *&v32[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v32[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionOffset] = 0;
  v33 = type metadata accessor for UberContentContainer();
  v34 = objc_allocWithZone(v33);
  *&v34[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = 0;
  *&v34[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY] = 0;
  v35 = &v34[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_prominentPlayButtonCenterYOverride];
  *v35 = 0;
  v35[8] = 1;
  v36 = &v34[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_systemBackgroundExtensionOutsets];
  *v36 = 0u;
  *(v36 + 1) = 0u;
  v36[32] = 1;
  *&v34[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_backgroundExtensionView] = 0;
  v45.receiver = v34;
  v45.super_class = v33;
  v37 = objc_msgSendSuper2(&v45, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v38 = v37;
  if (*&v37[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_backgroundExtensionView])
  {
    [v37 addSubview:?];
  }

  v39 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_mediaViewContainer;
  *&v32[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer] = v38;
  v44.receiver = v32;
  v44.super_class = v31;
  v40 = objc_msgSendSuper2(&v44, "initWithFrame:", 0.0, 0.0, 0.0, 0.0, v41);
  [v40 setClipsToBounds:1];
  [v40 addSubview:*&v40[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer]];

  *(v1 + v39) = v40;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1004A3D54()
{

  return swift_deallocClassInstance();
}

void sub_1004A3DBC(void *a1)
{
  v2 = v1;
  type metadata accessor for RiverTodayCardCollectionViewCell();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView);
    v6 = v4;
    v7 = a1;
    v8 = v5;
    sub_10076C66C();

    v9 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_gradientView);
    v10 = v9[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_isAnimating];
    v9[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_isAnimating] = 1;
    if ((v10 & 1) == 0)
    {
      v11 = v9;
LABEL_4:
      sub_1007214A0();
    }
  }

  else
  {
    type metadata accessor for ListTodayCardCollectionViewCell();
    v16 = swift_dynamicCastClass();
    if (!v16)
    {
      goto LABEL_6;
    }

    v17 = v16;
    v18 = *(v16 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverView);
    v19 = a1;
    if (v18)
    {
      v20 = v18;
      sub_10076C66C();
    }

    v21 = *(v17 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverBackgroundView);
    v7 = a1;
    if (v21)
    {
      v22 = v21[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_isAnimating];
      v21[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_isAnimating] = 1;
      v7 = a1;
      if ((v22 & 1) == 0)
      {
        v11 = a1;
        v7 = v21;
        goto LABEL_4;
      }
    }
  }

LABEL_6:
  swift_getObjectType();
  v12 = swift_conformsToProtocol2();
  if (v12 && a1)
  {
    v13 = v12;
    sub_10076C84C();
    sub_1002A2E88();
    v14 = a1;
    sub_10076332C();
    if (v23)
    {
      ObjectType = swift_getObjectType();
      (*(v13 + 192))(*(v2 + 24), ObjectType, v13);
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        if (sub_10076C74C())
        {
          sub_10076518C();
        }

        swift_getObjectType();
        sub_10076457C();
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

id sub_1004A4048(void *a1)
{
  type metadata accessor for RiverTodayCardCollectionViewCell();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView);
    v4 = v2;
    v5 = a1;
    v6 = v3;
    sub_10076C66C();

    v7 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_gradientView);
    v8 = v7[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_isAnimating];
    v7[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_isAnimating] = 0;
    if (v8 == 1)
    {
      v9 = v7;
LABEL_4:
      sub_1007214A0();
    }
  }

  else
  {
    type metadata accessor for ListTodayCardCollectionViewCell();
    v11 = swift_dynamicCastClass();
    if (!v11)
    {
      goto LABEL_6;
    }

    v12 = v11;
    v13 = *(v11 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverView);
    v14 = a1;
    if (v13)
    {
      v15 = v13;
      sub_10076C66C();
    }

    v16 = *(v12 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverBackgroundView);
    v5 = a1;
    if (v16)
    {
      v17 = v16[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_isAnimating];
      v16[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_isAnimating] = 0;
      v5 = a1;
      if (v17 == 1)
      {
        v9 = a1;
        v5 = v16;
        goto LABEL_4;
      }
    }
  }

LABEL_6:
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result && a1)
  {

    return [a1 setHidden:0];
  }

  return result;
}

uint64_t sub_1004A41F0()
{
  v36 = sub_1007656DC();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v23 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_10076D1AC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007656EC();
  sub_10000DB18(v5, qword_10099FCA8);
  v33 = sub_10000A61C(v5, qword_10099FCA8);
  if (qword_100940600 != -1)
  {
    swift_once();
  }

  v6 = sub_10076D3DC();
  v7 = sub_10000A61C(v6, qword_10099FCC0);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v9(v4, v7, v6);
  v11 = enum case for FontSource.useCase(_:);
  v12 = v2 + 13;
  v32 = v2[13];
  v32(v4, enum case for FontSource.useCase(_:), v1);
  v31 = sub_10076D9AC();
  v50[3] = v31;
  v50[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v50);
  v48 = v1;
  v49 = &protocol witness table for FontSource;
  v13 = sub_10000DB7C(&v47);
  v30 = v2[2];
  v30(v13, v4, v1);
  sub_10076D9BC();
  v14 = v2[1];
  v28 = v2 + 1;
  v29 = v14;
  v14(v4, v1);
  if (qword_100940608 != -1)
  {
    swift_once();
  }

  v15 = sub_10000A61C(v6, qword_10099FCD8);
  v24 = v9;
  v25 = v10;
  v9(v4, v15, v6);
  v16 = v32;
  v32(v4, v11, v1);
  v27 = v12;
  v17 = v31;
  v48 = v31;
  v49 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v47);
  v26 = v11;
  v45 = v1;
  v46 = &protocol witness table for FontSource;
  v18 = sub_10000DB7C(v44);
  v19 = v30;
  v30(v18, v4, v1);
  sub_10076D9BC();
  v20 = v29;
  v29(v4, v1);
  v45 = &type metadata for Double;
  v46 = &protocol witness table for Double;
  v44[0] = 0x4034000000000000;
  v24(v4, v15, v6);
  v16(v4, v26, v1);
  v43[3] = v17;
  v43[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v43);
  v41 = v1;
  v42 = &protocol witness table for FontSource;
  v21 = sub_10000DB7C(v40);
  v19(v21, v4, v1);
  sub_10076D9BC();
  v20(v4, v1);
  v42 = &protocol witness table for Double;
  v41 = &type metadata for Double;
  v40[0] = 0x4080E00000000000;
  v39 = 0;
  v38 = 0u;
  v37 = 0u;
  (*(v34 + 104))(v35, enum case for EditorialQuoteLayout.Metrics.Alignment.leading(_:), v36);
  return sub_1007656CC();
}

char *sub_1004A47BC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_10076771C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v45 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - v13;
  v15 = OBJC_IVAR____TtC20ProductPageExtension32EditorialQuoteCollectionViewCell_itemLayoutContext;
  v16 = sub_10076341C();
  v17 = *(*(v16 - 8) + 56);
  v46 = v4;
  v17(&v4[v15], 1, 1, v16);
  if (qword_100940600 != -1)
  {
    swift_once();
  }

  v18 = sub_10076D3DC();
  v19 = sub_10000A61C(v18, qword_10099FCC0);
  v20 = *(v18 - 8);
  v43 = *(v20 + 16);
  v43(v14, v19, v18);
  v42 = *(v20 + 56);
  v42(v14, 0, 1, v18);
  v21 = enum case for DirectionalTextAlignment.none(_:);
  v22 = *(v10 + 104);
  v22(v45, enum case for DirectionalTextAlignment.none(_:), v9);
  v23 = sub_1007626BC();
  v41 = v9;
  v24 = v23;
  v25 = objc_allocWithZone(v23);
  *&v46[OBJC_IVAR____TtC20ProductPageExtension32EditorialQuoteCollectionViewCell_quoteLabel] = sub_1007626AC();
  if (qword_100940608 != -1)
  {
    swift_once();
  }

  v26 = sub_10000A61C(v18, qword_10099FCD8);
  v43(v14, v26, v18);
  v42(v14, 0, 1, v18);
  v22(v45, v21, v41);
  v27 = objc_allocWithZone(v24);
  v28 = sub_1007626AC();
  v29 = v46;
  *&v46[OBJC_IVAR____TtC20ProductPageExtension32EditorialQuoteCollectionViewCell_attributionLabel] = v28;
  v47.receiver = v29;
  v47.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  v31 = [v30 contentView];
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v32 = [v30 contentView];
  [v32 addSubview:*&v30[OBJC_IVAR____TtC20ProductPageExtension32EditorialQuoteCollectionViewCell_quoteLabel]];

  v33 = OBJC_IVAR____TtC20ProductPageExtension32EditorialQuoteCollectionViewCell_attributionLabel;
  v34 = *&v30[OBJC_IVAR____TtC20ProductPageExtension32EditorialQuoteCollectionViewCell_attributionLabel];
  v35 = objc_opt_self();
  v36 = v34;
  v37 = [v35 systemGrayColor];
  [v36 setTextColor:v37];

  v38 = [v30 contentView];
  [v38 addSubview:*&v30[v33]];

  v39 = v30;
  sub_1004A52B8(v39, v39);

  return v39;
}

uint64_t sub_1004A4D5C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v23 = sub_10076D1FC();
  v3 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007656EC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076570C();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30.receiver = v1;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, "layoutSubviews", v12);
  v15 = [v1 contentView];
  sub_1000ACA5C();
  sub_10076422C();

  if (qword_1009405F8 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v6, qword_10099FCA8);
  (*(v7 + 16))(v9, v16, v6);
  v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32EditorialQuoteCollectionViewCell_quoteLabel];
  v28 = sub_1007626BC();
  v29 = &protocol witness table for UIView;
  v26 = &protocol witness table for UIView;
  v27 = v17;
  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32EditorialQuoteCollectionViewCell_attributionLabel];
  v25 = v28;
  v24 = v18;
  v19 = v17;
  v20 = v18;
  sub_1007656FC();
  sub_1007656BC();
  (*(v3 + 8))(v5, v23);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1004A50C0(uint64_t a1)
{
  v2 = v1;
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_10077070C();

  if (!a1)
  {
    return sub_1004A52B8(v2, v2);
  }

  if ((sub_10077070C() ^ v5))
  {
    return sub_1004A52B8(v2, v2);
  }

  v6 = [v2 traitCollection];
  v7 = sub_1007706EC() & 1;

  result = sub_1007706EC();
  if ((result & 1) != v7)
  {
    return sub_1004A52B8(v2, v2);
  }

  return result;
}

uint64_t type metadata accessor for EditorialQuoteCollectionViewCell()
{
  result = qword_100959470;
  if (!qword_100959470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1004A52B8(void *a1, uint64_t a2)
{
  v4 = sub_10076771C();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 traitCollection];
  v10 = sub_1007706EC();

  if (v10)
  {
    v11 = enum case for DirectionalTextAlignment.leading(_:);
    v12 = *(v5 + 104);
    v12(v8, enum case for DirectionalTextAlignment.leading(_:), v4);
    sub_10076262C();
    v12(v8, v11, v4);
    return sub_10076262C();
  }

  else
  {
    [*(a2 + OBJC_IVAR____TtC20ProductPageExtension32EditorialQuoteCollectionViewCell_quoteLabel) setTextAlignment:1];
    v14 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension32EditorialQuoteCollectionViewCell_attributionLabel);

    return [v14 setTextAlignment:1];
  }
}

id sub_1004A5458(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = sub_10076C36C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  v13 = sub_10076C38C();
  v22 = *(v13 - 8);
  v23 = v13;
  v14 = __chkstk_darwin(v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v12, enum case for PageGrid.Direction.vertical(_:), v6, v14);
  if (a3)
  {
    result = [v4 view];
    if (!result)
    {
      goto LABEL_7;
    }

    v18 = result;
    [result bounds];
  }

  result = [v4 view];
  if (result)
  {
    v19 = result;
    [result safeAreaInsets];

    (*(v7 + 16))(v9, v12, v6);
    sub_1005AC334(0.0);
    sub_10076C33C();
    (*(v7 + 8))(v12, v6);
    v20 = [v4 navigationItem];
    sub_10076C31C();
    [v20 largeTitleInsets];
    [v20 setLargeTitleInsets:?];

    v21 = [v4 navigationItem];
    sub_10076C31C();
    [v21 largeTitleInsets];
    [v21 setLargeTitleInsets:?];

    return (*(v22 + 8))(v16, v23);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1004A57D4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10000A5D4(&qword_1009499A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  sub_10076463C();
  sub_1003B2204(v7);
  v8 = sub_10000A5D4(&unk_100946720);
  (*(*(v8 - 8) + 48))(v4, 1, v8);
  sub_1003B2204(v4);
  a1[3] = sub_10076220C();
  a1[4] = sub_100219D24();
  sub_10000DB7C(a1);
  return sub_1007621FC();
}

uint64_t sub_1004A5914()
{
  v6 = [v0 presentedViewController];
  sub_10003F040();
  sub_10000A5D4(&qword_1009594E8);
  if (swift_dynamicCast())
  {
    sub_100012498(v4, v7);
    v1 = v8;
    v2 = v9;
    sub_10000CF78(v7, v8);
    (*(v2 + 8))(v1, v2);
    return sub_10000CD74(v7);
  }

  else
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    return sub_10000CFBC(v4, &unk_1009594F0);
  }
}

uint64_t sub_1004A5A04()
{
  v6 = [v0 presentedViewController];
  sub_10003F040();
  sub_10000A5D4(&qword_1009594E8);
  if (swift_dynamicCast())
  {
    sub_100012498(v4, v7);
    v1 = v8;
    v2 = v9;
    sub_10000CF78(v7, v8);
    (*(v2 + 16))(v1, v2);
    return sub_10000CD74(v7);
  }

  else
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    return sub_10000CFBC(v4, &unk_1009594F0);
  }
}

void sub_1004A5AF4(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_10000A5D4(&qword_1009473D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_dismissTapGestureRecognizer] = 0;
  v10 = &v3[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_interactiveDismissal];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_scrollDismissInitialTranslationY] = 0;
  v3[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_isScrollDismissActive] = 0;
  v11 = [objc_opt_self() effectWithStyle:4];
  v12 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v11];

  *&v3[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_overlayView] = v12;
  sub_10075F99C();
  *&v3[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_shadowView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  type metadata accessor for TransitioningPresentedContainerView();
  *&v3[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_presentedContainerView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v31.receiver = v3;
  v31.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v31, "initWithPresentedViewController:presentingViewController:", a1, a2);
  v14 = objc_allocWithZone(UITapGestureRecognizer);
  v15 = v13;
  v16 = [v14 initWithTarget:v15 action:"dismissTapDidChange:"];
  v17 = *&v15[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_dismissTapGestureRecognizer];
  *&v15[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_dismissTapGestureRecognizer] = v16;
  v18 = v16;

  if (v18)
  {
    v19 = *&v15[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_overlayView];
    [v19 addGestureRecognizer:v18];

    v20 = OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_shadowView;
    v21 = qword_10093F878;
    v22 = *&v15[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_shadowView];
    if (v21 != -1)
    {
      swift_once();
    }

    v23 = sub_10076BCFC();
    v24 = sub_10000A61C(v23, qword_10099D408);
    v25 = *(v23 - 8);
    (*(v25 + 16))(v9, v24, v23);
    (*(v25 + 56))(v9, 0, 1, v23);
    sub_10075F97C();

    v26 = [*&v15[v20] layer];
    [v26 setMaskedCorners:3];

    [*&v15[v20] _setContinuousCornerRadius:20.0];
    [*&v15[v20] setAutoresizingMask:18];
    v27 = *&v15[v20];
    sub_10075F95C();

    v28 = OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_presentedContainerView;
    [*&v15[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_presentedContainerView] setClipsToBounds:0];
    v29 = *&v15[v28];
    v30 = *&v15[v20];
    [v29 bounds];
    [v30 setFrame:?];

    [*&v15[v28] addSubview:*&v15[v20]];
  }

  else
  {
    __break(1u);
  }
}

void sub_1004A5FA0()
{
  v1 = v0;
  v2 = sub_10076C36C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v54 - v7;
  v9 = sub_10076C38C();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v1 containerView];
  if (!v14)
  {
    return;
  }

  v15 = v14;
  v57 = v10;
  v16 = [v1 traitCollection];
  v17 = [v16 horizontalSizeClass];

  if (v17 != 2)
  {
    v50 = [v1 presentingViewController];
    v51 = [v50 view];

    if (v51)
    {
      [v51 bounds];

      return;
    }

    goto LABEL_23;
  }

  v55 = v13;
  v56 = v9;
  (*(v3 + 104))(v8, enum case for PageGrid.Direction.vertical(_:), v2);
  v18 = [v1 presentingViewController];
  v19 = [v18 view];

  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v19 bounds];
  v21 = v20;
  v23 = v22;

  v24 = [v1 presentingViewController];
  v25 = [v24 view];

  if (!v25)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v54[1] = v21;
  v54[2] = v23;
  [v25 safeAreaInsets];

  (*(v3 + 16))(v5, v8, v2);
  v26 = v55;
  if (qword_100941288 != -1)
  {
    swift_once();
  }

  sub_10076C33C();
  (*(v3 + 8))(v8, v2);
  v27 = [v1 presentingViewController];
  v28 = [v27 traitCollection];

  sub_10076C24C();
  sub_1007706FC();

  [v15 safeAreaInsets];
  v31 = fmax(v30, 44.0);
  if (v29 < 0.0)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = v29;
  }

  [v15 bounds];
  v58.origin.x = sub_100102A30(v33, v34, v35, v36, v31, v32);
  CGRectGetHeight(v58);
  sub_1007709EC();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = [v1 presentedViewController];
  type metadata accessor for ComponentViewOverflowViewController();
  v46 = swift_dynamicCastClass();
  v47 = v57;
  if (v46)
  {
    sub_1003E5054(v42, v44);
    v49 = v48;
  }

  else
  {

    v52 = [v1 presentedViewController];
    type metadata accessor for ProductPageReviewsOverflowViewController();
    if (swift_dynamicCastClass())
    {
      v49 = sub_100664E78();
    }

    else
    {

      v49 = v44;
    }
  }

  v53 = v56;
  v59.origin.x = v38;
  v59.origin.y = v40;
  v59.size.width = v42;
  v59.size.height = v44;
  if (CGRectGetHeight(v59) >= v49)
  {
    sub_1007709EC();
  }

  else
  {
    [v15 safeAreaInsets];

    sub_100102A30(v38, v40, v42, v44, 0.0, 0.0);
  }

  (*(v47 + 8))(v26, v53);
}

void sub_1004A6654(uint64_t a1, void *a2)
{
  v12.receiver = v2;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "willTransitionToTraitCollection:withTransitionCoordinator:", a1, a2);
  v5 = [v2 containerView];
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = v2;
    *(v7 + 24) = v6;
    v11[4] = sub_1004A7F8C;
    v11[5] = v7;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1006F5994;
    v11[3] = &unk_100896FD0;
    v8 = _Block_copy(v11);
    v9 = v2;
    v10 = v6;

    [a2 animateAlongsideTransition:v8 completion:0];
    _Block_release(v8);
  }
}

void sub_1004A678C(int a1, char *a2, void *a3)
{
  v5 = [a2 presentedViewController];
  v10 = [v5 view];

  v6 = [a2 traitCollection];
  v7 = [v6 horizontalSizeClass];

  if (v7 == 2)
  {
    if (v10)
    {
      v8 = *&a2[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_shadowView];
      v9 = v10;
      [v8 _continuousCornerRadius];
      [v9 _setContinuousCornerRadius:?];
    }
  }

  else if (v10)
  {
    [v10 _setContinuousCornerRadius:0.0];
  }

  [a3 bounds];
  [*&a2[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_overlayView] setFrame:?];
}

void sub_1004A6950(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  *(*&v3[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_presentedContainerView] + OBJC_IVAR____TtC20ProductPageExtension35TransitioningPresentedContainerView_hidesInsertedSubviews) = 1;
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v10[4] = sub_1004A7F28;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1006F5994;
  v10[3] = &unk_100896F80;
  v8 = _Block_copy(v10);
  v9 = v3;

  [a1 animateAlongsideTransition:0 completion:v8];
  _Block_release(v8);
}

void sub_1004A6B04()
{
  v1 = v0;
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, "containerViewWillLayoutSubviews");
  v2 = [v0 containerView];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    [*&v0[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_overlayView] setFrame:?];
    v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_presentedContainerView];
    sub_1004A5FA0();
    [v4 setFrame:?];
    [v4 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [v0 containerView];
    if (!v13)
    {
LABEL_12:

      return;
    }

    v14 = v13;
    v29.origin.x = 0.0;
    v29.origin.y = 0.0;
    v29.size.width = 0.0;
    v29.size.height = 0.0;
    v25.origin.x = v6;
    v25.origin.y = v8;
    v25.size.width = v10;
    v25.size.height = v12;
    if (CGRectEqualToRect(v25, v29) || ([v14 bounds], v30.origin.x = 0.0, v30.origin.y = 0.0, v30.size.width = 0.0, v30.size.height = 0.0, CGRectEqualToRect(v26, v30)))
    {
LABEL_11:

      v3 = v14;
      goto LABEL_12;
    }

    [v14 bounds];
    MaxY = CGRectGetMaxY(v27);
    [v14 safeAreaInsets];
    v17 = MaxY - v16;
    v28.origin.x = v6;
    v28.origin.y = v8;
    v28.size.width = v10;
    v28.size.height = v12;
    v18 = CGRectGetMaxY(v28);
    v19 = [v1 presentedViewController];
    v20 = [v19 view];

    if (v17 >= v18)
    {
      if (v20)
      {
        v21 = [v20 layer];
        v22 = 15;
        goto LABEL_10;
      }
    }

    else
    {
      if (v20)
      {
        v21 = [v20 layer];
        v22 = 3;
LABEL_10:
        v23 = v21;

        [v23 setMaskedCorners:v22];
        v3 = v14;
        v14 = v23;
        goto LABEL_11;
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_1004A6DB8()
{
  v1 = [v0 containerView];
  if (v1)
  {
    v17 = v1;
    [v1 bounds];
    v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_overlayView];
    [v2 setFrame:?];
    [v17 addSubview:v2];
    v3 = [v0 presentedViewController];
    v4 = [v3 view];

    if (v4)
    {
      [v4 setClipsToBounds:1];
      [v4 setAutoresizingMask:18];
      v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_presentedContainerView];
      [v5 bounds];
      [v4 setFrame:?];
      v6 = [v4 layer];
      v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_shadowView];
      v8 = [v7 layer];
      v9 = [v8 maskedCorners];

      [v6 setMaskedCorners:v9];
      [v7 _cornerRadius];
      [v4 _setCornerRadius:?];
      [v5 addSubview:v4];
      v10 = [v0 presentedViewController];
      v11 = [v10 contentScrollView];

      sub_1004A7E54(&selRef_removeTarget_action_, &selRef__removeScrollViewScrollObserver_);
      swift_unknownObjectWeakAssign();
      sub_1004A7E54(&selRef_addTarget_action_, &selRef__addScrollViewScrollObserver_);
    }

    v12 = [v0 presentedViewController];
    v13 = [v12 transitionCoordinator];

    [v2 setAlpha:0.0];
    if (v13)
    {
      v14 = swift_allocObject();
      *(v14 + 16) = v0;
      aBlock[4] = sub_1004A7E4C;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1006F5994;
      aBlock[3] = &unk_100896F30;
      v15 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      v16 = v0;

      [v13 animateAlongsideTransition:v15 completion:0];

      swift_unknownObjectRelease();
      _Block_release(v15);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1004A7140(uint64_t a1, char *a2)
{
  [*&a2[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_overlayView] setAlpha:1.0];
  v3 = [a2 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 == 1)
  {
    v5 = [a2 presentedViewController];
    v6 = [v5 view];

    if (v6)
    {
      [v6 _setCornerRadius:0.0];
    }
  }
}

void sub_1004A7288(char a1)
{
  if ((a1 & 1) == 0)
  {
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_overlayView] removeFromSuperview];
    v2 = [v1 presentedViewController];
    v4 = [v2 view];

    if (v4)
    {
      [v4 setClipsToBounds:0];
      v3 = [v4 layer];
      [v3 setMaskedCorners:15];

      [v4 _setCornerRadius:0.0];
    }
  }
}

void sub_1004A73D8()
{
  v1 = [v0 presentedViewController];
  v2 = [v1 transitionCoordinator];

  if (v2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v6[4] = sub_1004A7E2C;
    v6[5] = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_1006F5994;
    v6[3] = &unk_100896EE0;
    v4 = _Block_copy(v6);
    swift_unknownObjectRetain();
    v5 = v0;

    [v2 animateAlongsideTransition:v4 completion:0];
    swift_unknownObjectRelease();
    _Block_release(v4);
    swift_unknownObjectRelease();
  }
}

void sub_1004A7504(uint64_t a1, char *a2)
{
  [*&a2[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_overlayView] setAlpha:0.0];
  v3 = *&a2[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_shadowView];
  [v3 setAlpha:0.0];
  v4 = [a2 presentedViewController];
  v5 = [v4 view];

  if (v5)
  {
    [v3 _cornerRadius];
    [v5 _setCornerRadius:?];
  }

  v6 = [a2 presentedViewController];
  v7 = [v6 view];

  if (v7)
  {
    v8 = [v7 layer];

    [v8 setMaskedCorners:15];
  }

  v9 = [a2 presentedViewController];
  [v9 setNeedsStatusBarAppearanceUpdate];
}

void sub_1004A777C(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v33 = Strong;
    v4 = OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_isScrollDismissActive;
    if (v1[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_isScrollDismissActive] == 1)
    {
      [*&v1[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_presentedContainerView] frame];
      v5 = CGRectGetHeight(v38) * 0.14;
      [a1 translationInView:0];
      v7 = v6 - *&v1[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_scrollDismissInitialTranslationY];
      if (v7 >= v5)
      {
        v8 = v5;
      }

      else
      {
        v8 = v6 - *&v1[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_scrollDismissInitialTranslationY];
      }

      v9 = 0.0;
      if (v5 <= 0.0)
      {
        v9 = v5;
      }

      if (v7 < 0.0)
      {
        v10 = v9;
      }

      else
      {
        v10 = v8;
      }

      v11 = v10 / v5;
      v12 = [a1 state];
      if (v12 > 2)
      {
        if ((v12 - 4) >= 2)
        {
          if (v12 != 3)
          {
            goto LABEL_27;
          }

          if (v11 == 1.0)
          {
            v32 = [v1 presentedViewController];
            [v32 dismissViewControllerAnimated:1 completion:0];

            goto LABEL_27;
          }
        }
      }

      else if (v12)
      {
        if (v12 == 2)
        {
          v13 = &v1[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_interactiveDismissal];
          swift_beginAccess();
          if (*(v13 + 24))
          {
            sub_10000A570(v13, &v34);
            v14 = *(&v35 + 1);
            v15 = v36;
            sub_10000CF78(&v34, *(&v35 + 1));
            (v15[2])(v14, v15, v11);

            sub_10000CD74(&v34);
            return;
          }

          goto LABEL_29;
        }

LABEL_27:

LABEL_29:

        return;
      }

      v29 = &v1[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_interactiveDismissal];
      swift_beginAccess();
      if (*(v29 + 24))
      {
        sub_10000A570(v29, &v34);
        v30 = *(&v35 + 1);
        v31 = v36;
        sub_10000CF78(&v34, *(&v35 + 1));
        (v31[4])(v30, v31);

        sub_10000CD74(&v34);
      }

      else
      {
      }

      v36 = 0;
      v34 = 0u;
      v35 = 0u;
      swift_beginAccess();
      sub_1004198A8(&v34, v29);
      swift_endAccess();
      v1[v4] = 0;
    }

    else
    {
      if ([a1 state] != 1)
      {
        goto LABEL_27;
      }

      v16 = [v1 traitCollection];
      v17 = [v16 horizontalSizeClass];

      if (v17 != 2)
      {
        goto LABEL_27;
      }

      [v33 contentOffset];
      v19 = v18;
      [v33 adjustedContentInset];
      if (v19 + v20 > 0.0)
      {
        goto LABEL_27;
      }

      [v33 adjustedContentInset];
      [v33 contentOffset];
      [v33 setContentOffset:?];
      sub_10000A5D4(&unk_100942870);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_100785D70;
      v22 = [v1 presentedViewController];
      v23 = [v22 view];

      if (v23)
      {
        v24 = *&v1[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_shadowView];
        *(v21 + 32) = v23;
        *(v21 + 40) = v24;
        v36 = &off_100889268;
        *&v34 = v21;
        *(&v34 + 1) = _swiftEmptyArrayStorage;
        *&v35 = 0x3FB1EB851EB851ECLL;
        *(&v35 + 1) = &type metadata for PullDownInteractiveDismissal;
        v25 = OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_interactiveDismissal;
        swift_beginAccess();
        v26 = v24;
        sub_1004198A8(&v34, &v1[v25]);
        swift_endAccess();
        [a1 translationInView:0];
        v28 = v27;

        *&v1[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_scrollDismissInitialTranslationY] = v28;
        v1[v4] = 1;
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_1004A7DF4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004A7E34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1004A7E54(SEL *a1, SEL *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong panGestureRecognizer];

    [v7 *a1];
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    [v8 *a2];
  }
}

uint64_t sub_1004A7F4C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1004A7FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100767D5C();
  (*(a3 + 8))(a2, a3);
  sub_10076F64C();
  sub_10076FC1C();

  sub_100767CEC();
}

void sub_1004A8058(char a1, uint64_t a2, uint64_t a3)
{
  *((*(a3 + 16))(a2, a3) + OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_isMotionEnabled) = a1;

  sub_1004A8214(a2, a3);
}

uint64_t sub_1004A80D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v4();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    v7 = [Strong layer];
    CATransform3DMakeScale(&v8, 1.0, 1.0, 1.0);
    [v7 setTransform:&v8];

    (v4)(a1, a2);
    swift_unknownObjectWeakAssign();
  }

  return result;
}

uint64_t sub_1004A81CC(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 16))() + OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_isMotionEnabled);

  return v2;
}

void sub_1004A8214(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  (*(a2 + 8))();
  sub_100767D5C();
  sub_10076F5CC();

  v5 = v23;
  v21 = a1;
  v22 = v3;
  v20 = *(v3 + 16);
  LODWORD(v3) = *(v20(a1, v3) + OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_isMotionEnabled);

  if (v3 == 1)
  {
    sub_100767CDC();
  }

  else
  {
    v6 = [v2 view];
    if (v6)
    {
      v7 = v6;
      if (sub_100767D4C())
      {
        sub_100767CAC();
      }
    }
  }

  v8 = [v2 collectionView];
  if (!v8)
  {
    goto LABEL_21;
  }

  v19 = v8;
  v9 = [v8 visibleCells];
  sub_1000FEDC4();
  v10 = sub_1007701BC();

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_10;
    }

LABEL_20:

    v5 = v23;
LABEL_21:

    return;
  }

  v11 = sub_10077158C();
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_10:
  if (v11 >= 1)
  {
    for (i = 0; i != v11; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = sub_10077149C();
      }

      else
      {
        v13 = *(v10 + 8 * i + 32);
      }

      v14 = v13;
      swift_getObjectType();
      v15 = swift_conformsToProtocol2();
      if (v15)
      {
        if (v14)
        {
          v16 = v15;
          ObjectType = swift_getObjectType();
          v18 = *(v20(v21, v22) + OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_isMotionEnabled);

          (*(v16 + 192))(v18, ObjectType, v16);
        }
      }
    }

    goto LABEL_20;
  }

  __break(1u);
}

void sub_1004A8490(void *a1, CGFloat a2)
{
  v3 = [a1 layer];
  CATransform3DMakeScale(&v4, a2, a2, 1.0);
  [v3 setTransform:&v4];
}

__n128 ProductLockupAccessibilityLayout.init(metrics:iconView:titleText:developerText:taglineText:tertiaryTitleText:offerButton:shareButton:offerSubtitleText:expandedOfferTitleText:expandedOfferSubtitleText:bannerView:secondaryBannerView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v20 = type metadata accessor for ProductLockupAccessibilityLayout(0);
  sub_1004A8660(a1, a9 + *(v20 + 64));
  sub_100012498(a2, a9);
  sub_100012498(a3, a9 + 40);
  sub_100012498(a4, a9 + 80);
  sub_100012498(a5, a9 + 120);
  v21 = *(a6 + 16);
  *(a9 + 160) = *a6;
  *(a9 + 176) = v21;
  *(a9 + 192) = *(a6 + 32);
  sub_100012498(a7, a9 + 200);
  v22 = *(a8 + 16);
  *(a9 + 240) = *a8;
  *(a9 + 256) = v22;
  *(a9 + 272) = *(a8 + 32);
  sub_100012498(a10, a9 + 280);
  v23 = *(a11 + 16);
  *(a9 + 320) = *a11;
  *(a9 + 336) = v23;
  *(a9 + 352) = *(a11 + 32);
  v24 = *(a12 + 16);
  *(a9 + 360) = *a12;
  *(a9 + 376) = v24;
  *(a9 + 392) = *(a12 + 32);
  *(a9 + 432) = *(a13 + 32);
  v25 = *(a13 + 16);
  *(a9 + 400) = *a13;
  *(a9 + 416) = v25;
  *(a9 + 472) = *(a14 + 32);
  result = *(a14 + 16);
  *(a9 + 440) = *a14;
  *(a9 + 456) = result;
  return result;
}

uint64_t sub_1004A8660(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double ProductLockupAccessibilityLayout.measurements(fitting:in:)(void *a1, double a2)
{
  ObjectType = swift_getObjectType();

  return sub_1004AC96C(a1, v2, ObjectType, a2);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.init(layoutMargins:bannerViewHeight:secondaryBannerViewHeight:iconSize:titleSpace:developerSpace:taglineSpace:tertiaryTitleSpace:shareButtonLeadingMargin:offerTopSpace:offerSubtitleSpace:expandedOfferTitleSpace:expandedOfferSubtitleSpace:bottomSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, __int128 *a16, uint64_t a17, __int128 *a18, __int128 *a19)
{
  *a9 = a10;
  a9[1] = a11;
  a9[2] = a12;
  a9[3] = a13;
  sub_100012498(a1, (a9 + 4));
  sub_100012498(a2, (a9 + 9));
  a9[14] = a14;
  a9[15] = a15;
  v27 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  v28 = v27[8];
  v29 = sub_10000A5D4(&unk_100945BD0);
  v30 = *(*(v29 - 8) + 32);
  v30(a9 + v28, a3, v29);
  v30(a9 + v27[9], a4, v29);
  v30(a9 + v27[10], a5, v29);
  v30(a9 + v27[11], a6, v29);
  sub_100012498(a7, a9 + v27[12]);
  sub_100012498(a8, a9 + v27[13]);
  sub_100012498(a16, a9 + v27[14]);
  v30(a9 + v27[15], a17, v29);
  sub_100012498(a18, a9 + v27[16]);
  v31 = a9 + v27[17];

  return sub_100012498(a19, v31);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.titleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 32);
  v4 = sub_10000A5D4(&unk_100945BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.titleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 32);
  v4 = sub_10000A5D4(&unk_100945BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.developerSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 36);
  v4 = sub_10000A5D4(&unk_100945BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.developerSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 36);
  v4 = sub_10000A5D4(&unk_100945BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.taglineSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 40);
  v4 = sub_10000A5D4(&unk_100945BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.taglineSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 40);
  v4 = sub_10000A5D4(&unk_100945BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.tertiaryTitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 44);
  v4 = sub_10000A5D4(&unk_100945BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.tertiaryTitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 44);
  v4 = sub_10000A5D4(&unk_100945BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.shareButtonLeadingMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 48);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.offerTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 52);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.offerSubtitleSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 56);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.expandedOfferTitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 60);
  v4 = sub_10000A5D4(&unk_100945BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.expandedOfferTitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 60);
  v4 = sub_10000A5D4(&unk_100945BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.expandedOfferSubtitleSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 64);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 68);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);

  return sub_1004AC9C0(v3, a1);
}

uint64_t ProductLockupAccessibilityLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v293 = a2;
  v13 = sub_10076D1FC();
  v291 = *(v13 - 8);
  v292 = v13;
  __chkstk_darwin(v13);
  v290 = &v276 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076543C();
  v288 = *(v15 - 8);
  v289 = v15;
  __chkstk_darwin(v15);
  v304 = &v276 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v312 = sub_10076541C();
  v323 = *(v312 - 8);
  __chkstk_darwin(v312);
  v279 = &v276 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v294 = &v276 - v19;
  __chkstk_darwin(v20);
  v278 = &v276 - v21;
  __chkstk_darwin(v22);
  v302 = &v276 - v23;
  __chkstk_darwin(v24);
  v276 = &v276 - v25;
  __chkstk_darwin(v26);
  v277 = &v276 - v27;
  v339 = sub_1007653CC();
  v344 = *(v339 - 8);
  __chkstk_darwin(v339);
  v315 = &v276 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v343 = sub_1007653EC();
  v342 = *(v343 - 8);
  __chkstk_darwin(v343);
  v317 = &v276 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v340 = sub_10076540C();
  v345 = *(v340 - 8);
  __chkstk_darwin(v340);
  v338 = &v276 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10077164C();
  v32 = *(v31 - 8);
  *&v33 = __chkstk_darwin(v31).n128_u64[0];
  v35 = &v276 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = [a1 traitCollection];
  v305 = sub_1007706FC();

  v37 = v7 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
  sub_10000CF78((v37 + 32), *(v37 + 56));
  sub_1000FF02C();
  sub_10076D40C();
  v39 = v38;
  v40 = *(v32 + 8);
  v40(v35, v31);
  sub_10000CF78((v37 + 72), *(v37 + 96));
  sub_1000FF02C();
  sub_10076D40C();
  v42 = v41;
  v307 = v35;
  v308 = v32 + 8;
  v43 = v35;
  v44 = v314;
  v309 = v31;
  v306 = v40;
  v40(v43, v31);
  v45 = v37;
  v46 = *(v37 + 8);
  v47 = v39 + *v37;
  v287 = v42;
  v298 = a3;
  v48 = a3;
  v49 = a4;
  v50 = a4;
  v51 = a5;
  v52 = a5;
  v53 = a6;
  v54 = sub_100102A30(v48, v50, v52, a6, v47, v46);
  v56 = v55;
  v58 = v57;
  v60 = v59;
  sub_100016E2C((v44 + 30), v359, &unk_10094DA00);
  v341 = a1;
  v303 = v60;
  if (v360)
  {
    sub_10000CF78(v359, v360);
    sub_10076D2BC();
    v295 = v61;
    v63 = v62;
    sub_10000CD74(v359);
  }

  else
  {
    sub_10000CFBC(v359, &unk_10094DA00);
    v295 = 0.0;
    v63 = 0;
  }

  v280 = v63;
  sub_100016E2C((v44 + 30), v359, &unk_10094DA00);
  v64 = v360;
  sub_10000CFBC(v359, &unk_10094DA00);
  v296 = v53;
  v297 = v39;
  v299 = v49;
  v300 = v51;
  if (v64)
  {
    v65 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_10000CF78((v37 + *(v65 + 48)), *(v37 + *(v65 + 48) + 24));
    v66 = v307;
    sub_1000FF02C();
    v67 = v341;
    sub_10076D40C();
    v69 = v68;
    v306(v66, v309);
  }

  else
  {
    v69 = 0.0;
    v67 = v341;
  }

  v70 = [v67 traitCollection];
  v71 = sub_10077070C();

  v367.origin.x = v54;
  v367.origin.y = v56;
  v367.size.width = v58;
  v72 = v303;
  v367.size.height = v303;
  MinX = CGRectGetMinX(v367);
  v74 = v295;
  v75 = v69 + v295 + MinX;
  v368.origin.x = v54;
  v368.origin.y = v56;
  v368.size.width = v58;
  v368.size.height = v72;
  Width = CGRectGetWidth(v368);
  if (v305)
  {
    v77 = Width - v74 - v69;
  }

  else
  {
    v77 = Width;
  }

  if ((v305 & 1 & v71) != 0)
  {
    v78 = v75;
  }

  else
  {
    v78 = MinX;
  }

  v283 = v78;
  v369.origin.x = v54;
  v369.origin.y = v56;
  v369.size.width = v58;
  v369.size.height = v72;
  MinY = CGRectGetMinY(v369);
  v285 = v56;
  v286 = v54;
  v370.origin.x = v54;
  v370.origin.y = v56;
  v284 = v58;
  v370.size.width = v58;
  v370.size.height = v72;
  Height = CGRectGetHeight(v370);
  sub_10000CF78(v44, v44[3]);
  v80 = *(v37 + 120);
  sub_10076D28C();
  v81 = v44[13];
  v337 = v44 + 10;
  sub_10000CF78(v44 + 10, v81);
  sub_10076D2AC();
  v83 = v82;
  v85 = v84;
  v86 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  v87 = v45;
  v88 = (v45 + *(v86 + 36));
  *&v356 = v67;
  v89 = sub_10000A5D4(&unk_100945BD0);
  v336 = v88;
  sub_10075FDCC();
  *&v356 = v359[0];
  sub_10076D42C();
  v91 = v83 - v85 + v90;
  v92 = (v44 + 15);
  sub_10000CF78(v44 + 15, v44[18]);
  sub_10076D2AC();
  v94 = v93;
  v96 = v95;
  v321 = v86;
  v322 = v87;
  *&v356 = v67;
  v311 = v89;
  sub_10075FDCC();
  *&v356 = v359[0];
  sub_10076D42C();
  v98 = v94 - v96 + v97;
  if (v98 >= v91)
  {
    sub_10000A570(v92, &v356);
    v92 = v337;
  }

  else
  {
    sub_10000A570(v337, &v356);
  }

  v99 = v323;
  v100 = v339;
  v101 = v344;
  sub_10000A570(v92, &v353);
  v102 = v341;
  *&v350 = v341;
  sub_10075FDCC();
  v103 = v359[0];
  *&v350 = v102;
  sub_10075FDCC();
  v104 = v359[0];
  if (v98 >= v91)
  {
    v105 = v359[0];
  }

  else
  {
    v105 = v103;
  }

  *(&v351 + 1) = &type metadata for CGFloat;
  v352 = &protocol witness table for CGFloat;
  *&v350 = v105;
  if (v98 >= v91)
  {
    v104 = v103;
  }

  *(&v348 + 1) = &type metadata for CGFloat;
  v349 = &protocol witness table for CGFloat;
  *&v347 = v104;
  sub_100012498(&v356, v359);
  sub_10000A570(&v350, &v362);
  sub_100012498(&v353, v363);
  sub_100012498(&v347, v365);
  sub_10000CD74(&v350);
  v106 = v314;
  sub_10000CF78(v314 + 25, v314[28]);
  sub_10076D2BC();
  v108 = v107;
  sub_10000A5D4(&qword_10094F2A8);
  v316 = *(v99 + 72);
  v109 = (*(v99 + 80) + 32) & ~*(v99 + 80);
  v281 = 2 * v316;
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_100783C60;
  v313 = v109;
  v301 = v110;
  v310 = (v110 + v109);
  *(&v357 + 1) = &type metadata for CGFloat;
  v358 = &protocol witness table for CGFloat;
  *&v356 = v80;
  v355 = 0;
  v353 = 0u;
  v354 = 0u;
  v320 = enum case for _VerticalFlowLayout.Child.Placement.firstBaseline(_:);
  v336 = *(*&v345 + 104);
  v337 = (*&v345 + 104);
  v111 = v338;
  v336();
  v335 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.leading(_:);
  v112 = v342;
  v333 = *(v342 + 104);
  v334 = v342 + 104;
  v113 = v106;
  v114 = v317;
  v333();
  v115 = sub_10000A5D4(&unk_100959500);
  v116 = *(*&v101 + 72);
  v330 = *(*&v101 + 80);
  v331 = v115;
  v332 = (v330 + 32) & ~v330;
  v329 = v332 + v116;
  v117 = swift_allocObject();
  v328 = xmmword_100783DD0;
  *(v117 + 16) = xmmword_100783DD0;
  sub_10076539C();
  *&v350 = v117;
  v327 = sub_1004ACB0C(&qword_10094F2B0, &type metadata accessor for _VerticalFlowLayout.ExclusionCondition);
  v326 = sub_10000A5D4(&qword_100959510);
  v325 = sub_1004ACA24();
  v118 = v101;
  v119 = v315;
  sub_1007712CC();
  sub_1007653FC();
  v324 = *(*&v118 + 8);
  v324(v119, v100);
  v120 = *(v112 + 8);
  v342 = v112 + 8;
  v319 = v120;
  v120(v114, v343);
  v121 = *(*&v345 + 8);
  *&v345 += 8;
  v318 = v121;
  v122 = v340;
  v121(v111, v340);
  sub_10000CFBC(&v353, &unk_100943240);
  sub_10000CD74(&v356);
  v123 = v106[8];
  v124 = v106[9];
  v125 = sub_10000CF78(v113 + 5, v113[8]);
  *(&v357 + 1) = v123;
  v358 = *(v124 + 8);
  v126 = sub_10000DB7C(&v356);
  (*(*(v123 - 8) + 16))(v126, v125, v123);
  v127 = v100;
  *&v344 = *&v118 + 8;
  *&v350 = v341;
  sub_10075FDCC();
  v128 = *&v353;
  sub_10000CF78(v113 + 5, v113[8]);
  sub_10076D6EC();
  *(&v354 + 1) = &type metadata for CGFloat;
  v355 = &protocol witness table for CGFloat;
  *&v353 = v128 + v129;
  v352 = 0;
  v350 = 0u;
  v351 = 0u;
  v130 = v338;
  v131 = v122;
  (v336)(v338, v320, v122);
  v132 = v317;
  v133 = v343;
  (v333)(v317, v335, v343);
  v134 = swift_allocObject();
  *(v134 + 16) = v328;
  sub_10076539C();
  *&v347 = v134;
  sub_1007712CC();
  sub_1007653FC();
  v324(v119, v127);
  v135 = v133;
  v319(v132, v133);
  v318(v130, v131);
  sub_10000CFBC(&v350, &unk_100943240);
  sub_10000CD74(&v353);
  sub_10000CD74(&v356);
  v136 = v360;
  v137 = v361;
  v138 = sub_10000CF78(v359, v360);
  *(&v357 + 1) = v136;
  v358 = *(v137 + 8);
  v139 = sub_10000DB7C(&v356);
  (*(*(v136 - 8) + 16))(v139, v138, v136);
  v355 = 0;
  v353 = 0u;
  v354 = 0u;
  v140 = v320;
  (v336)(v130, v320, v131);
  v141 = v339;
  (v333)(v132, v335, v135);
  v142 = swift_allocObject();
  *(v142 + 16) = v328;
  sub_10076539C();
  *&v350 = v142;
  sub_1007712CC();
  sub_1007653FC();
  v324(v119, v141);
  v143 = v319;
  v319(v132, v135);
  v144 = v143;
  v145 = v318;
  v318(v130, v131);
  sub_10000CFBC(&v353, &unk_100943240);
  sub_10000CD74(&v356);
  sub_100016E2C((v314 + 20), &v353, &qword_10094BB30);
  if (*(&v354 + 1))
  {
    v146 = v140;
    v147 = v145;
    sub_100012498(&v353, &v356);
    v148 = *(&v357 + 1);
    v149 = v358;
    v150 = v144;
    v151 = sub_10000CF78(&v356, *(&v357 + 1));
    *(&v354 + 1) = v148;
    v355 = v149[1];
    v152 = sub_10000DB7C(&v353);
    (*(*(v148 - 8) + 16))(v152, v151, v148);
    *&v347 = v341;
    *(&v351 + 1) = &type metadata for CGFloat;
    v352 = &protocol witness table for CGFloat;
    sub_10075FDCC();
    v349 = 0;
    v347 = 0u;
    v348 = 0u;
    v153 = v338;
    v154 = v340;
    (v336)(v338, v146, v340);
    v155 = v317;
    v156 = v343;
    (v333)(v317, v335, v343);
    v157 = swift_allocObject();
    *(v157 + 16) = v328;
    sub_10076539C();
    v346 = v157;
    v158 = v315;
    v159 = v339;
    sub_1007712CC();
    v160 = v277;
    sub_1007653FC();
    v324(v158, v159);
    v150(v155, v156);
    v147(v153, v154);
    sub_10000CFBC(&v347, &unk_100943240);
    sub_10000CD74(&v350);
    sub_10000CD74(&v353);
    v161 = v301;
    v163 = *(v301 + 2);
    v162 = *(v301 + 3);
    if (v163 >= v162 >> 1)
    {
      v161 = sub_10049CF64(v162 > 1, v163 + 1, 1, v301);
    }

    v165 = v312;
    v164 = v313;
    v166 = v323;
    *(v161 + 2) = v163 + 1;
    (*(v166 + 32))(&v161[v164 + v163 * v316], v160, v165);
    sub_10000CD74(&v356);
  }

  else
  {
    sub_10000CFBC(&v353, &qword_10094BB30);
    v165 = v312;
    v158 = v315;
    v155 = v317;
    v161 = v301;
  }

  v167 = v314;
  sub_10000CF78(v314 + 25, v314[28]);
  if (sub_10076D24C())
  {
    v168 = v158;
    v169 = v161;
    v170 = v320;
    v171 = v336;
  }

  else
  {
    sub_10000CF78((v322 + *(v321 + 52)), *(v322 + *(v321 + 52) + 24));
    v301 = v161;
    v172 = v307;
    sub_1000FF02C();
    sub_10076D40C();
    v174 = v173;
    v175 = v315;
    v306(v172, v309);
    *(&v357 + 1) = &type metadata for CGFloat;
    v358 = &protocol witness table for CGFloat;
    *&v356 = v108 + v174;
    v355 = 0;
    v353 = 0u;
    v354 = 0u;
    v176 = v338;
    v177 = v340;
    (v336)(v338, v320, v340);
    v178 = v343;
    (v333)(v155, v335, v343);
    v179 = swift_allocObject();
    *(v179 + 16) = v328;
    sub_10076539C();
    *&v350 = v179;
    v180 = v339;
    sub_1007712CC();
    v181 = v276;
    sub_1007653FC();
    v324(v175, v180);
    v319(v155, v178);
    v182 = v177;
    v183 = v301;
    v318(v176, v182);
    sub_10000CFBC(&v353, &unk_100943240);
    sub_10000CD74(&v356);
    v185 = *(v183 + 2);
    v184 = *(v183 + 3);
    if (v185 >= v184 >> 1)
    {
      v183 = sub_10049CF64(v184 > 1, v185 + 1, 1, v183);
    }

    v186 = v323;
    *(v183 + 2) = v185 + 1;
    (*(v186 + 32))(&v183[v313 + v185 * v316], v181, v165);
    v167 = v314;
    v168 = v315;
    v169 = v183;
    v170 = v320;
    v171 = v336;
  }

  v358 = 0;
  v356 = 0u;
  v357 = 0u;
  v187 = v338;
  v188 = v340;
  (v171)(v338, v170, v340);
  v189 = v317;
  v190 = v343;
  (v333)(v317, v335, v343);
  v191 = swift_allocObject();
  *(v191 + 16) = v328;
  sub_10076539C();
  *&v353 = v191;
  v192 = v339;
  sub_1007712CC();
  sub_1007653FC();
  v324(v168, v192);
  v319(v189, v190);
  v318(v187, v188);
  sub_10000CFBC(&v356, &unk_100943240);
  v194 = *(v169 + 2);
  v193 = *(v169 + 3);
  v195 = v169;
  if (v194 >= v193 >> 1)
  {
    v195 = sub_10049CF64(v193 > 1, v194 + 1, 1, v169);
  }

  v196 = v323;
  *(v195 + 2) = v194 + 1;
  v198 = *(v196 + 32);
  v197 = v196 + 32;
  v310 = v198;
  v198(&v195[v313 + v194 * v316], v302, v312);
  sub_100016E2C((v167 + 30), &v353, &unk_10094DA00);
  v199 = v317;
  if (*(&v354 + 1))
  {
    sub_100012498(&v353, &v356);
    sub_10000CF78(v167 + 25, v167[28]);
    if (v305 & 1 | ((sub_10076D24C() & 1) == 0))
    {
      sub_10000CD74(&v356);
    }

    else
    {
      *(&v354 + 1) = &type metadata for CGFloat;
      v355 = &protocol witness table for CGFloat;
      *&v353 = v280;
      v352 = 0;
      v350 = 0u;
      v351 = 0u;
      v200 = v338;
      (v336)(v338, v320, v340);
      v201 = v343;
      (v333)(v199, v335, v343);
      v202 = swift_allocObject();
      *(v202 + 16) = v328;
      sub_10076539C();
      *&v347 = v202;
      v203 = v315;
      v204 = v339;
      sub_1007712CC();
      sub_1007653FC();
      v324(v203, v204);
      v319(v199, v201);
      v318(v200, v340);
      sub_10000CFBC(&v350, &unk_100943240);
      sub_10000CD74(&v353);
      v206 = *(v195 + 2);
      v205 = *(v195 + 3);
      if (v206 >= v205 >> 1)
      {
        v195 = sub_10049CF64(v205 > 1, v206 + 1, 1, v195);
      }

      sub_10000CD74(&v356);
      *(v195 + 2) = v206 + 1;
      v310(&v195[v313 + v206 * v316], v278, v312);
    }
  }

  else
  {
    sub_10000CFBC(&v353, &unk_10094DA00);
  }

  sub_100016E2C((v167 + 40), &v353, &qword_10094BB30);
  v323 = v197;
  if (*(&v354 + 1))
  {
    sub_100012498(&v353, &v356);
    v207 = *(&v357 + 1);
    v208 = v358;
    v209 = sub_10000CF78(&v356, *(&v357 + 1));
    *(&v354 + 1) = v207;
    v355 = v208[1];
    v210 = sub_10000DB7C(&v353);
    (*(*(v207 - 8) + 16))(v210, v209, v207);
    *&v347 = v341;
    *(&v351 + 1) = &type metadata for CGFloat;
    v352 = &protocol witness table for CGFloat;
    sub_10075FDCC();
    v349 = 0;
    v347 = 0u;
    v348 = 0u;
    v211 = v195;
    v212 = v338;
    v213 = v340;
    (v336)(v338, v320, v340);
    v214 = v343;
    (v333)(v199, v335, v343);
    v215 = swift_allocObject();
    *(v215 + 16) = v328;
    sub_10076539C();
    v346 = v215;
    v216 = v315;
    v217 = v339;
    sub_1007712CC();
    sub_1007653FC();
    v324(v216, v217);
    v319(v199, v214);
    v218 = v212;
    v195 = v211;
    v318(v218, v213);
    sub_10000CFBC(&v347, &unk_100943240);
    sub_10000CD74(&v350);
    sub_10000CD74(&v353);
    v220 = *(v211 + 2);
    v219 = *(v211 + 3);
    if (v220 >= v219 >> 1)
    {
      v195 = sub_10049CF64(v219 > 1, v220 + 1, 1, v211);
    }

    *(v195 + 2) = v220 + 1;
    v310(&v195[v313 + v220 * v316], v294, v312);
    sub_10000CD74(&v356);
  }

  else
  {
    sub_10000CFBC(&v353, &qword_10094BB30);
  }

  sub_100016E2C((v167 + 45), &v353, &qword_10094BB30);
  if (*(&v354 + 1))
  {
    v221 = v315;
    v222 = v343;
    sub_100012498(&v353, &v356);
    v223 = *(&v357 + 1);
    v224 = v358;
    v225 = sub_10000CF78(&v356, *(&v357 + 1));
    *(&v354 + 1) = v223;
    v355 = v224[1];
    v226 = sub_10000DB7C(&v353);
    (*(*(v223 - 8) + 16))(v226, v225, v223);
    v352 = 0;
    v350 = 0u;
    v351 = 0u;
    v227 = v338;
    v228 = v195;
    v229 = v340;
    (v336)(v338, v320, v340);
    (v333)(v199, v335, v222);
    v230 = swift_allocObject();
    *(v230 + 16) = v328;
    sub_10076539C();
    *&v347 = v230;
    v231 = v339;
    sub_1007712CC();
    v232 = v279;
    sub_1007653FC();
    v324(v221, v231);
    v319(v199, v222);
    v233 = v229;
    v234 = v228;
    v318(v227, v233);
    sub_10000CFBC(&v350, &unk_100943240);
    sub_10000CD74(&v353);
    v235 = *(v228 + 2);
    v236 = *(v234 + 3);
    if (v235 >= v236 >> 1)
    {
      v234 = sub_10049CF64(v236 > 1, v235 + 1, 1, v234);
    }

    *(v234 + 2) = v235 + 1;
    v310(&v234[v313 + v235 * v316], v232, v312);
    sub_10000CD74(&v356);
  }

  else
  {
    sub_10000CFBC(&v353, &qword_10094BB30);
  }

  sub_1007653DC();
  v237 = v290;
  v239 = MinY;
  v238 = v283;
  sub_10076538C();
  sub_10000CF78(v167 + 5, v167[8]);
  sub_10076D2AC();
  v343 = v240;
  v242 = v241;
  sub_10000CF78(v167 + 5, v167[8]);
  sub_10076D22C();
  v243 = CGRectGetMaxY(v371) - v242;
  v372.origin.x = v238;
  v372.origin.y = v239;
  v372.size.width = v77;
  v372.size.height = Height;
  v244 = CGRectGetMinX(v372);
  v373.origin.x = v238;
  v373.origin.y = v239;
  v373.size.width = v77;
  v373.size.height = Height;
  v245 = CGRectGetWidth(v373);
  sub_10076D1EC();
  v247 = v246;
  v374.origin.x = v238;
  v374.origin.y = v239;
  v374.size.width = v77;
  v374.size.height = Height;
  v248 = v247 + CGRectGetHeight(v374) - v243;
  sub_10000CF78(v363, v364);
  sub_10076D2AC();
  v344 = v244;
  v375.origin.x = v244;
  v375.origin.y = v243;
  v375.size.width = v245;
  v375.size.height = v248;
  v345 = CGRectGetMinX(v375);
  v376.origin.x = v244;
  v376.origin.y = v243;
  v376.size.width = v245;
  v376.size.height = v248;
  CGRectGetMinY(v376);
  sub_10000CF78(v365, v365[3]);
  sub_10076D42C();
  sub_10000CF78(v363, v364);
  sub_100770A4C();
  sub_10076D23C();
  sub_100016E2C((v167 + 30), &v353, &unk_10094DA00);
  if (!*(&v354 + 1))
  {
    sub_10000CFBC(&v353, &unk_10094DA00);
    v249 = v296;
    v251 = v285;
    v250 = v286;
    goto LABEL_56;
  }

  sub_100012498(&v353, &v356);
  v249 = v296;
  v251 = v285;
  v250 = v286;
  if ((v305 & 1) == 0)
  {
    sub_10000CF78(v167 + 25, v167[28]);
    if ((sub_10076D24C() & 1) == 0)
    {
      sub_10000CF78(v167 + 25, v167[28]);
      sub_10076D22C();
      CGRectGetMidY(v378);
      goto LABEL_58;
    }

    sub_10000CD74(&v356);
LABEL_56:
    v252 = v284;
    v253 = v303;
    goto LABEL_59;
  }

  sub_10000CF78(v167 + 5, v167[8]);
  sub_10076D22C();
  CGRectGetMinY(v377);
LABEL_58:
  v379.origin.x = v250;
  v379.origin.y = v251;
  v252 = v284;
  v379.size.width = v284;
  v253 = v303;
  v379.size.height = v303;
  CGRectGetMaxX(v379);
  sub_10000CF78(&v356, *(&v357 + 1));
  v249 = v296;
  sub_100770A4C();
  sub_10076D23C();
  sub_10000CD74(&v356);
LABEL_59:
  v380.origin.x = v250;
  v380.origin.y = v251;
  v380.size.width = v252;
  v380.size.height = v253;
  v254 = CGRectGetWidth(v380);
  v255 = sub_10076D1CC();
  *v256 = v254;
  v255(&v356, 0);
  v257 = (v322 + *(v321 + 68));
  sub_10000CF78(v257, v257[3]);
  v258 = v307;
  sub_1000FF02C();
  sub_10076D40C();
  v260 = v259;
  v306(v258, v309);
  v261 = sub_10076D1CC();
  *(v262 + 8) = v260 + *(v262 + 8);
  v261(&v356, 0);
  sub_100016E2C((v167 + 50), &v353, &unk_10094DA00);
  if (*(&v354 + 1))
  {
    sub_100012498(&v353, &v356);
    sub_10000CF78(&v356, *(&v357 + 1));
    v264 = v298;
    v263 = v299;
    v381.origin.x = v298;
    v381.origin.y = v299;
    v265 = v300;
    v381.size.width = v300;
    v381.size.height = v249;
    CGRectGetMinX(v381);
    v382.origin.x = v264;
    v382.origin.y = v263;
    v382.size.width = v265;
    v382.size.height = v249;
    CGRectGetMinY(v382);
    v383.origin.x = v264;
    v383.origin.y = v263;
    v383.size.width = v265;
    v383.size.height = v249;
    CGRectGetWidth(v383);
    sub_10076D23C();
    sub_10000CD74(&v356);
  }

  else
  {
    sub_10000CFBC(&v353, &unk_10094DA00);
  }

  sub_100016E2C((v167 + 55), &v353, &unk_10094DA00);
  if (*(&v354 + 1))
  {
    sub_100012498(&v353, &v356);
    sub_10000CF78(&v356, *(&v357 + 1));
    v266 = v298;
    v267 = v299;
    v384.origin.x = v298;
    v384.origin.y = v299;
    v268 = v300;
    v384.size.width = v300;
    v384.size.height = v249;
    CGRectGetMinX(v384);
    v385.origin.x = v266;
    v385.origin.y = v267;
    v385.size.width = v268;
    v385.size.height = v249;
    CGRectGetMaxY(v385);
    v269 = v287;
    sub_10000CF78(v257, v257[3]);
    v270 = v307;
    sub_1000FF02C();
    sub_10076D40C();
    v306(v270, v309);
    v386.origin.x = v266;
    v386.origin.y = v267;
    v386.size.width = v268;
    v386.size.height = v249;
    CGRectGetWidth(v386);
    sub_10076D23C();
    sub_10000CD74(&v356);
  }

  else
  {
    sub_10000CFBC(&v353, &unk_10094DA00);
    v269 = v287;
  }

  v271 = sub_10076D1CC();
  *(v272 + 8) = v297 + *(v272 + 8);
  v271(&v356, 0);
  v273 = sub_10076D1CC();
  *(v274 + 8) = v269 + *(v274 + 8);
  v273(&v356, 0);
  (*(v288 + 8))(v304, v289);
  sub_10000CD74(v366);
  (*(v291 + 32))(v293, v237, v292);
  return sub_10000CFBC(v359, &unk_1009522A0);
}

double ProductLockupAccessibilityLayout.offerButtonMinYDistanceFromBottom(fitting:in:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_1004ABB78(a1, v1);
}

double sub_1004ABB78(uint64_t a1, void *a2)
{
  v4 = sub_10077164C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CF78(a2 + 35, a2[38]);
  v8 = sub_10076D24C();
  v9 = 0.0;
  v10 = 0.0;
  if ((v8 & 1) == 0)
  {
    sub_10000CF78(a2 + 35, a2[38]);
    sub_10076D2AC();
    v12 = v11;
    v9 = v13;
    v14 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
    v15 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_10000CF78(&v14[*(v15 + 56)], *&v14[*(v15 + 56) + 24]);
    sub_10076D42C();
    v10 = v12 - v9 + v16;
  }

  v46 = v10;
  sub_100016E2C((a2 + 40), &v48, &qword_10094BB30);
  if (v49)
  {
    sub_100012498(&v48, v50);
    sub_10000CF78(v50, v51);
    sub_10076D2AC();
    v18 = v17;
    v9 = v19;
    type metadata accessor for ProductLockupAccessibilityLayout(0);
    type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    v47 = a1;
    sub_10000A5D4(&unk_100945BD0);
    sub_10075FDCC();
    v47 = v48;
    v20 = v18;
    sub_10076D42C();
    v22 = v21;
    sub_10000CD74(v50);
    v45 = v9;
  }

  else
  {
    sub_10000CFBC(&v48, &qword_10094BB30);
    v20 = JUMeasurementsZero[1];
    v45 = JUMeasurementsZero[3];
    v22 = 0.0;
  }

  sub_100016E2C((a2 + 45), &v48, &qword_10094BB30);
  if (v49)
  {
    sub_100012498(&v48, v50);
    sub_10000CF78(v50, v51);
    sub_10076D2AC();
    v24 = v23;
    v44 = v22;
    v9 = v25;
    v26 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
    v27 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_10000CF78(&v26[*(v27 + 64)], *&v26[*(v27 + 64) + 24]);
    sub_1000FF02C();
    sub_10076D40C();
    v29 = v28;
    (*(v5 + 8))(v7, v4);
    *&v48 = v29;
    v22 = v44;
    sub_10076D42C();
    v31 = v30;
    sub_10000CD74(v50);
    v32 = v9;
  }

  else
  {
    sub_10000CFBC(&v48, &qword_10094BB30);
    v24 = JUMeasurementsZero[1];
    v32 = JUMeasurementsZero[3];
    v31 = 0.0;
  }

  sub_10000CF78(a2 + 25, a2[28]);
  sub_10076D2BC();
  v34 = v24 - v32 + v31 + v20 - v45 + v22 + v46 + v33;
  v35 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
  sub_10000CF78(v35 + 9, *(v35 + 12));
  sub_1000FF02C();
  sub_10076D40C();
  v37 = v36;
  v38 = *(v5 + 8);
  v38(v7, v4);
  v39 = v34 + v37;
  v40 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  sub_10000CF78(&v35[*(v40 + 68)], *&v35[*(v40 + 68) + 24]);
  sub_1000FF02C();
  sub_10076D40C();
  v42 = v41;
  v38(v7, v4);
  return v9 + v39 + v42;
}

double sub_1004AC100(void *a1, void *a2, uint64_t a3, double a4)
{
  v87 = a3;
  v7 = sub_10077164C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v92 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64));
  v11 = *v10;
  v12 = a4 - v10[1];
  v14 = v10[2];
  v13 = v10[3];
  v90 = v10;
  v15 = v12 - v13;
  v85 = v14;
  v86 = v11;
  v16 = a4 - v11 - v14;
  v17 = [a1 traitCollection];
  v18 = sub_1007706FC();

  sub_100016E2C((a2 + 30), v102, &unk_10094DA00);
  if (v103)
  {
    sub_10000CF78(v102, v103);
    sub_10076D2BC();
    v20 = v19;
    sub_10000CD74(v102);
  }

  else
  {
    sub_10000CFBC(v102, &unk_10094DA00);
    v20 = 0.0;
  }

  sub_100016E2C((a2 + 30), v102, &unk_10094DA00);
  v21 = v103;
  sub_10000CFBC(v102, &unk_10094DA00);
  v88 = v8;
  v89 = v7;
  if (v21)
  {
    v22 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_10000CF78((v90 + *(v22 + 48)), *(v90 + *(v22 + 48) + 24));
    v23 = v92;
    sub_1000FF02C();
    sub_10076D40C();
    v25 = v24;
    (*(v8 + 8))(v23, v7);
    if (v18)
    {
LABEL_6:
      v26 = v15 - v20 - v25;
      goto LABEL_9;
    }
  }

  else
  {
    v25 = 0.0;
    if (v18)
    {
      goto LABEL_6;
    }
  }

  v26 = v15;
LABEL_9:
  v91 = v26;
  sub_10000CF78(a2 + 5, a2[8]);
  sub_10076D2AC();
  v28 = v27;
  v30 = v29;
  v31 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  *&v100 = a1;
  sub_10000A5D4(&unk_100945BD0);
  v32 = a2;
  v33 = v90;
  sub_10075FDCC();
  *&v100 = v102[0];
  v82 = v30;
  v83 = v28;
  sub_10076D42C();
  v81 = v34;
  sub_10000CF78(v32 + 5, v32[8]);
  sub_10076D6EC();
  v80 = v35;
  sub_10000CF78(v32 + 10, v32[13]);
  sub_10076D2AC();
  v37 = v36;
  v39 = v38;
  v40 = *(v31 + 36);
  *&v100 = a1;
  v79 = v40;
  v41 = v33;
  sub_10075FDCC();
  *&v100 = v102[0];
  sub_10076D42C();
  v42 = v16;
  v44 = v37 - v39 + v43;
  v45 = (v32 + 15);
  v93 = v32;
  sub_10000CF78(v32 + 15, v32[18]);
  v84 = v42;
  sub_10076D2AC();
  v47 = v46;
  v49 = v48;
  *&v100 = a1;
  sub_10075FDCC();
  *&v100 = v102[0];
  sub_10076D42C();
  v51 = v47 - v49 + v50;
  if (v51 >= v44)
  {
    sub_10000A570(v45, &v100);
    v45 = (v32 + 10);
  }

  else
  {
    sub_10000A570((v32 + 10), &v100);
  }

  sub_10000A570(v45, &v98);
  v97[0] = a1;
  sub_10075FDCC();
  v52 = v102[0];
  v97[0] = a1;
  sub_10075FDCC();
  v53 = v102[0];
  if (v51 >= v44)
  {
    v54 = v102[0];
  }

  else
  {
    v54 = v52;
  }

  v97[3] = &type metadata for CGFloat;
  v97[4] = &protocol witness table for CGFloat;
  v97[0] = v54;
  if (v51 >= v44)
  {
    v53 = v52;
  }

  v95 = &type metadata for CGFloat;
  v96 = &protocol witness table for CGFloat;
  *&v94 = v53;
  sub_100012498(&v100, v102);
  sub_10000A570(v97, v104);
  sub_100012498(&v98, &v105);
  sub_100012498(&v94, &v106);
  sub_10000CD74(v97);
  sub_10000CF78(v102, v103);
  sub_10076D2AC();
  v56 = v55;
  v58 = v57;
  sub_10000CF78(v104, v104[3]);
  sub_10076D42C();
  v60 = v59;
  sub_100016E2C((v93 + 20), &v98, &qword_10094BB30);
  v61 = v89;
  if (v99)
  {
    sub_100012498(&v98, &v100);
    sub_10000CF78(&v100, v101);
    sub_10076D2AC();
    v63 = v62;
    v65 = v64;
    v97[0] = a1;
    sub_10075FDCC();
    v97[0] = v98;
    sub_10076D42C();
    v67 = v63 - v65 + v66;
    sub_10000CD74(&v100);
  }

  else
  {
    sub_10000CFBC(&v98, &qword_10094BB30);
    v67 = 0.0;
  }

  v68 = v88;
  v69 = v67 + v56 - v58 + v60 + v83 - v82 + v81 + v80 + v41[15];
  sub_10000CF78((v41 + *(v31 + 52)), *(v41 + *(v31 + 52) + 24));
  v70 = v92;
  sub_1000FF02C();
  sub_10076D40C();
  v72 = v71;
  v73 = *(v68 + 8);
  v73(v70, v61);
  v74 = v69 + v72 + sub_1004ABB78(a1, v93);
  sub_10000CF78(v41 + 4, *(v41 + 7));
  sub_1000FF02C();
  sub_10076D40C();
  v76 = v75;
  v73(v70, v61);
  v77 = v85 + v86 + v74 + v76;
  sub_10000CFBC(v102, &unk_1009522A0);
  return v77;
}

double sub_1004AC96C(void *a1, void *a2, uint64_t a3, double a4)
{
  sub_1004AC100(a1, a2, a3, a4);
  type metadata accessor for ProductLockupAccessibilityLayout(0);
  return a4;
}

uint64_t sub_1004AC9C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1004ACA24()
{
  result = qword_10094F2B8;
  if (!qword_10094F2B8)
  {
    sub_10000CE78(&qword_100959510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094F2B8);
  }

  return result;
}

uint64_t sub_1004ACA88(uint64_t a1)
{
  *(a1 + 8) = sub_1004ACB0C(&unk_100952290, type metadata accessor for ProductLockupAccessibilityLayout);
  result = sub_1004ACB0C(&qword_100959518, type metadata accessor for ProductLockupAccessibilityLayout);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1004ACB0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004ACB68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 64);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1004ACC28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 64);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1004ACCCC()
{
  sub_100102F90(319, &unk_100950F60);
  if (v0 <= 0x3F)
  {
    sub_100102F90(319, &qword_100953E00);
    if (v1 <= 0x3F)
    {
      sub_1001A3380(319, &unk_100950F70, &unk_100953E10);
      if (v2 <= 0x3F)
      {
        sub_1001A3380(319, &qword_100950F80, &qword_10094CF50);
        if (v3 <= 0x3F)
        {
          type metadata accessor for ProductLockupAccessibilityLayout.Metrics(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1004ACE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000A5D4(&unk_100945BD0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1004ACEF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = sub_10000A5D4(&unk_100945BD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1004ACFA0()
{
  type metadata accessor for UIEdgeInsets(319);
  if (v0 <= 0x3F)
  {
    sub_100102F90(319, &qword_10094BAA0);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        sub_100363428();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

char *sub_1004AD080(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension31TodayDebugSectionBackgroundView_sectionTypeIndicator;
  *&v4[v9] = [objc_allocWithZone(UIView) init];
  v17.receiver = v4;
  v17.super_class = type metadata accessor for TodayDebugSectionBackgroundView();
  v10 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v14 = v10;
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v14 addSubview:*&v14[OBJC_IVAR____TtC20ProductPageExtension31TodayDebugSectionBackgroundView_sectionTypeIndicator]];
  v15 = [v14 layer];
  [v15 setZPosition:1000.0];

  return v14;
}

void sub_1004AD310(uint64_t a1)
{
  v2 = sub_10076B66C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100946720);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v21 = sub_100768BDC();
  v10 = *(v21 - 8);
  __chkstk_darwin(v21);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v7 + 8))(v9, v6);
  if ((*(v3 + 88))(v5, v2) == enum case for Shelf.ContentsMetadata.todaySection(_:))
  {
    (*(v3 + 96))(v5, v2);
    v13 = v5;
    v14 = v21;
    (*(v10 + 32))(v12, v13, v21);
    v15 = v23;
    v16 = *&v23[OBJC_IVAR____TtC20ProductPageExtension31TodayDebugSectionBackgroundView_sectionTypeIndicator];
    v17 = sub_100768BBC();
    [v16 setBackgroundColor:v17];

    sub_1002E65B0();
    sub_100768A3C();
    sub_100768A5C();
    sub_1007704EC();
    [v15 setLayoutMargins:?];
    (*(v10 + 8))(v12, v14);
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    v18 = *&v23[OBJC_IVAR____TtC20ProductPageExtension31TodayDebugSectionBackgroundView_sectionTypeIndicator];
    v19 = [objc_opt_self() clearColor];
    [v18 setBackgroundColor:v19];
  }
}

id sub_1004AD734()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayDebugSectionBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1004AD7A0()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleCaption2;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightBold];

  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = UIFontTextStyleFootnote;
  v4 = [v0 _preferredFontForTextStyle:v3 weight:UIFontWeightBold];

  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v1;
  v6 = [v0 _preferredFontForTextStyle:v5 weight:UIFontWeightBold];

  if (v6)
  {
    qword_10099FCF8 = v2;
    unk_10099FD00 = v4;
    qword_10099FD08 = v6;
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1004AD8B8()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleTitle3;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightRegular];

  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = UIFontTextStyleBody;
  v4 = [v0 _preferredFontForTextStyle:v3 weight:UIFontWeightRegular];

  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v1;
  v6 = [v0 _preferredFontForTextStyle:v5 weight:UIFontWeightRegular];

  if (v6)
  {
    qword_10099FD10 = v2;
    *algn_10099FD18 = v4;
    qword_10099FD20 = v6;
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1004AD9D0()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleTitle3;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightBold];

  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v1;
  v4 = [v0 _preferredFontForTextStyle:v3 weight:UIFontWeightBold];

  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v3;
  v6 = [v0 _preferredFontForTextStyle:v5 weight:UIFontWeightBold];

  if (v6)
  {
    qword_10099FD28 = v2;
    unk_10099FD30 = v4;
    qword_10099FD38 = v6;
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1004ADADC()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleFootnote;
  v2 = [v0 preferredFontForTextStyle:v1];

  v3 = UIFontTextStyleSubheadline;
  v4 = [v0 preferredFontForTextStyle:v3];

  v5 = UIFontTextStyleBody;
  v6 = [v0 preferredFontForTextStyle:v5];

  qword_10099FD40 = v2;
  *algn_10099FD48 = v4;
  qword_10099FD50 = v6;
}

CGFloat sub_1004ADBF8(CGFloat a1, uint64_t a2, _OWORD *a3, _OWORD *a4, _OWORD *a5)
{
  CGAffineTransformMakeTranslation(&v11, 0.0, a1);
  result = v11.a;
  v9 = *&v11.c;
  v10 = *&v11.tx;
  *a3 = *&v11.a;
  *a4 = v9;
  *a5 = v10;
  return result;
}

uint64_t sub_1004ADC54(char a1)
{
  v2 = v1;
  v4 = *v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = v2[5];
    ObjectType = swift_getObjectType();
    (*(*(v7 + 8) + 16))(*(v2 + 16), ObjectType);
  }

  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = v2[7];
    v12 = swift_getObjectType();
    (*(*(v11 + 8) + 16))(*(v2 + 16), v12);
  }

  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    v15 = [v13 traitCollection];

    if (v15)
    {
      v16 = v15;
      if (sub_1007706EC())
      {
        v17 = sub_10077071C();

        if (v17)
        {
          v18 = swift_unknownObjectWeakLoadStrong();
          if (v18)
          {
            v19 = v18;
            [v18 setUserInteractionEnabled:0];
          }

          v20 = swift_unknownObjectWeakLoadStrong();
          if (v20)
          {
            v21 = v20;
            v22 = 1;
            [v20 setUserInteractionEnabled:1];
LABEL_18:

            goto LABEL_20;
          }

          v22 = 1;
          goto LABEL_20;
        }
      }

      else
      {
      }
    }
  }

  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v23;
    [v23 setUserInteractionEnabled:*(v2 + 16)];
  }

  v25 = swift_unknownObjectWeakLoadStrong();
  if (v25)
  {
    v21 = v25;
    [v25 setUserInteractionEnabled:(v2[2] & 1) == 0];
    v22 = 0;
    goto LABEL_18;
  }

  v22 = 0;
LABEL_20:
  v53 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v54 = 0;
  v26 = *(v2 + 16);
  if (v22)
  {
    v27 = swift_allocObject();
    v28 = 0;
    *(v27 + 16) = v2;
    *(v27 + 24) = v26;
    *(v27 + 32) = v4;
    v29 = sub_1004AF1B4;
    v55 = sub_1004AF1B4;
    v56 = v27;
    v30 = sub_1004AF1C4;
    v51 = sub_1004AF1C4;
    v52 = v2;
    v31 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  }

  else
  {
    if (v2[2])
    {
      v32 = swift_unknownObjectWeakLoadStrong();
      if (v32)
      {
        v33 = v32;
        [*(v32 + OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_contentView) _scrollToTopIfPossible:0];
      }

      v27 = swift_allocObject();
      *(v27 + 16) = v2;
      *(v27 + 24) = v4;
      v29 = sub_1004AF0F4;
      v55 = sub_1004AF0F4;
      v56 = v27;
      v31 = sub_1004AF0FC;
      v53 = sub_1004AF0FC;
      v54 = v2;
      v34 = sub_1004AF104;
    }

    else
    {
      v27 = swift_allocObject();
      *(v27 + 16) = v2;
      *(v27 + 24) = v4;
      v29 = sub_1004AF16C;
      v55 = sub_1004AF16C;
      v56 = v27;
      v31 = sub_1004AF174;
      v53 = sub_1004AF174;
      v54 = v2;
      v34 = sub_1004AF204;
    }

    v30 = v34;
    v51 = v34;
    v52 = v2;

    v28 = v2;
  }

  swift_retain_n();
  v35 = objc_opt_self();
  if (a1)
  {
    v49 = v29;
    v50 = v27;
    v45 = _NSConcreteStackBlock;
    v46 = 1107296256;
    v47 = sub_10009AEDC;
    v48 = &unk_1008970B8;
    v36 = _Block_copy(&v45);

    v49 = v30;
    v50 = v2;
    v45 = _NSConcreteStackBlock;
    v46 = 1107296256;
    v47 = sub_1000513F0;
    v48 = &unk_1008970E0;
    v37 = _Block_copy(&v45);

    [v35 animateWithDuration:4 delay:v36 options:v37 animations:0.4 completion:0.0];
    _Block_release(v37);
    _Block_release(v36);
    v49 = v31;
    v50 = v28;
    v45 = _NSConcreteStackBlock;
    v46 = 1107296256;
    v47 = sub_10009AEDC;
    v48 = &unk_100897108;
    v38 = _Block_copy(&v45);

    [v35 animateWithDuration:4 delay:v38 options:0 animations:0.2 completion:0.2];
    _Block_release(v38);
    v39 = 0;
LABEL_32:

    return sub_1000167E0(v39);
  }

  v40 = swift_allocObject();
  v40[2] = &v55;
  v40[3] = &v53;
  v40[4] = &v51;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1004AF138;
  *(v41 + 24) = v40;
  v49 = sub_1000349FC;
  v50 = v41;
  v45 = _NSConcreteStackBlock;
  v46 = 1107296256;
  v47 = sub_1001C5148;
  v48 = &unk_100897090;
  v42 = _Block_copy(&v45);

  [v35 performWithoutAnimation:v42];
  _Block_release(v42);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v39 = sub_1004AF138;
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

void sub_1004AE2EC(uint64_t a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(a1 + 56);
    v6 = Strong;
    ObjectType = swift_getObjectType();
    v8 = (*(*(v5 + 8) + 32))(ObjectType);

    v9 = *(v8 + 16);
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        if (i >= *(v8 + 16))
        {
          __break(1u);
          goto LABEL_52;
        }

        v11 = *(v8 + 32 + 8 * i);
        if (v11)
        {
          [v11 setAlpha:0.0];
        }
      }
    }
  }

  v12 = swift_unknownObjectWeakLoadStrong();
  if (!v12)
  {
    goto LABEL_16;
  }

  v13 = *(a1 + 56);
  v14 = v12;
  v15 = swift_getObjectType();
  v8 = (*(*(v13 + 8) + 40))(v15);

  if (qword_100940630 != -1)
  {
    goto LABEL_56;
  }

  v16 = *(v8 + 16);
  if (v16)
  {
    goto LABEL_12;
  }

  while (1)
  {
LABEL_15:

LABEL_16:
    v20 = swift_unknownObjectWeakLoadStrong();
    if (v20)
    {
      v21 = *(a1 + 56);
      v22 = v20;
      v23 = swift_getObjectType();
      v8 = (*(*(v21 + 8) + 48))(v23);

      v24 = *(v8 + 16);
      if (v24)
      {
        v25 = 0;
        while (v25 < *(v8 + 16))
        {
          v26 = *(v8 + 32 + 8 * v25);
          if (v26)
          {
            [v26 setAlpha:0.0];
          }

          if (v24 == ++v25)
          {
            goto LABEL_23;
          }
        }

        goto LABEL_53;
      }

LABEL_23:
    }

    v27 = swift_unknownObjectWeakLoadStrong();
    if (v27)
    {
      v28 = *(a1 + 40);
      v29 = v27;
      v30 = swift_getObjectType();
      v8 = (*(*(v28 + 8) + 32))(v30);

      v31 = *(v8 + 16);
      if (v31)
      {
        v32 = 0;
        while (v32 < *(v8 + 16))
        {
          v33 = *(v8 + 32 + 8 * v32);
          if (v33)
          {
            [v33 setAlpha:1.0];
          }

          if (v31 == ++v32)
          {
            goto LABEL_31;
          }
        }

        goto LABEL_54;
      }

LABEL_31:
    }

    v34 = swift_unknownObjectWeakLoadStrong();
    if (!v34)
    {
      break;
    }

    v35 = *(a1 + 40);
    v36 = v34;
    v37 = swift_getObjectType();
    v8 = (*(*(v35 + 8) + 40))(v37);

    v38 = *(v8 + 16);
    if (!v38)
    {
LABEL_37:

      break;
    }

    v39 = 0;
    while (v39 < *(v8 + 16))
    {
      v40 = v39 + 1;
      v41 = *(v8 + 32 + 8 * v39);
      *&v58 = 0;
      v57 = 0x3FF0000000000000uLL;
      *(&v58 + 1) = 0x3FF0000000000000;
      v59 = 0uLL;
      [v41 setTransform:&v57];
      v39 = v40;
      if (v38 == v40)
      {
        goto LABEL_37;
      }
    }

    while (1)
    {
      __break(1u);
LABEL_56:
      swift_once();
      v16 = *(v8 + 16);
      if (!v16)
      {
        break;
      }

LABEL_12:
      v17 = 0;
      v55 = *algn_1009596F0;
      v56 = xmmword_1009596E0;
      v54 = xmmword_100959700;
      while (v17 < *(v8 + 16))
      {
        v18 = v17 + 1;
        v19 = *(v8 + 32 + 8 * v17);
        v57 = v56;
        v58 = v55;
        v59 = v54;
        [v19 setTransform:&v57];
        v17 = v18;
        if (v16 == v18)
        {
          goto LABEL_15;
        }
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
    }
  }

  v42 = swift_unknownObjectWeakLoadStrong();
  if (v42)
  {
    v43 = v42;
    v44 = *(v42 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_learnMoreButton);

    v45 = 1.0;
    if (a2)
    {
      v45 = 0.0;
    }

    [v44 setAlpha:{v45, v54, v55, v56}];
  }

  v46 = swift_unknownObjectWeakLoadStrong();
  if (v46)
  {
    v47 = v46;
    v48 = *(v46 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_inlineLearnMoreLabel);

    v49 = 0.0;
    if (a2)
    {
      v49 = 1.0;
    }

    [v48 setAlpha:{v49, v54, v55, v56}];
  }

  v50 = swift_unknownObjectWeakLoadStrong();
  if (v50)
  {
    v51 = v50;
    [v50 setNeedsLayout];
  }

  v52 = swift_unknownObjectWeakLoadStrong();
  if (v52)
  {
    v53 = v52;
    sub_1005053B8();
  }
}

uint64_t sub_1004AE748(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = a1[7];
    v4 = Strong;
    ObjectType = swift_getObjectType();
    v6 = (*(*(v3 + 8) + 32))(ObjectType);

    v7 = *(v6 + 16);
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        if (i >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_26;
        }

        v9 = *(v6 + 32 + 8 * i);
        if (v9)
        {
          [v9 setAlpha:0.0];
        }
      }
    }
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = a1[7];
  v12 = v10;
  v13 = swift_getObjectType();
  v6 = (*(*(v11 + 8) + 40))(v13);

  if (qword_100940630 != -1)
  {
    goto LABEL_28;
  }

  v14 = *(v6 + 16);
  if (v14)
  {
    goto LABEL_12;
  }

LABEL_15:
  while (1)
  {

LABEL_16:
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v19 = result;
    v20 = a1[5];
    v21 = swift_getObjectType();
    a1 = (*(*(v20 + 8) + 48))(v21);

    v6 = a1[2];
    if (!v6)
    {
    }

    v22 = 0;
    while (v22 < a1[2])
    {
      v23 = a1[v22 + 4];
      if (v23)
      {
        [v23 setAlpha:1.0];
      }

      if (v6 == ++v22)
      {
      }
    }

    while (1)
    {
      __break(1u);
LABEL_28:
      swift_once();
      v14 = *(v6 + 16);
      if (!v14)
      {
        break;
      }

LABEL_12:
      v15 = 0;
      v25 = *algn_1009596F0;
      v26 = xmmword_1009596E0;
      v24 = xmmword_100959700;
      while (v15 < *(v6 + 16))
      {
        v16 = v15 + 1;
        v17 = *(v6 + 32 + 8 * v15);
        v27[0] = v26;
        v27[1] = v25;
        v27[2] = v24;
        [v17 setTransform:v27];
        v15 = v16;
        if (v14 == v16)
        {
          goto LABEL_15;
        }
      }

LABEL_26:
      __break(1u);
    }
  }
}

void sub_1004AE984(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(a1 + 40);
    v4 = Strong;
    ObjectType = swift_getObjectType();
    v6 = (*(*(v3 + 8) + 32))(ObjectType);

    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = 0;
      while (v8 < *(v6 + 16))
      {
        v9 = *(v6 + 32 + 8 * v8);
        if (v9)
        {
          [v9 setAlpha:1.0];
        }

        if (v7 == ++v8)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

LABEL_8:
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = *(a1 + 40);
    v12 = v10;
    v13 = swift_getObjectType();
    v14 = (*(*(v11 + 8) + 40))(v13);

    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = 0;
      while (v16 < *(v14 + 16))
      {
        v17 = v16 + 1;
        v18 = *(v14 + 32 + 8 * v16);
        v27[1] = 0;
        v27[2] = 0;
        v27[0] = 0x3FF0000000000000;
        v27[3] = 0x3FF0000000000000;
        v27[4] = 0;
        v27[5] = 0;
        [v18 setTransform:v27];
        v16 = v17;
        if (v15 == v17)
        {
          goto LABEL_14;
        }
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

LABEL_14:
  }

  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    v21 = *(a1 + 56);
    v22 = swift_getObjectType();
    v23 = (*(*(v21 + 8) + 48))(v22);

    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = 0;
      while (v25 < *(v23 + 16))
      {
        v26 = *(v23 + 32 + 8 * v25);
        if (v26)
        {
          [v26 setAlpha:0.0];
        }

        if (v24 == ++v25)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_26;
    }

LABEL_22:
  }
}

uint64_t sub_1004AEB80(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = a1[5];
    v4 = Strong;
    ObjectType = swift_getObjectType();
    v6 = (*(*(v3 + 8) + 32))(ObjectType);

    v7 = *(v6 + 16);
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        if (i >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_26;
        }

        v9 = *(v6 + 32 + 8 * i);
        if (v9)
        {
          [v9 setAlpha:0.0];
        }
      }
    }
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = a1[5];
  v12 = v10;
  v13 = swift_getObjectType();
  v6 = (*(*(v11 + 8) + 40))(v13);

  if (qword_100940638 != -1)
  {
    goto LABEL_28;
  }

  v14 = *(v6 + 16);
  if (v14)
  {
    goto LABEL_12;
  }

LABEL_15:
  while (1)
  {

LABEL_16:
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v19 = result;
    v20 = a1[7];
    v21 = swift_getObjectType();
    a1 = (*(*(v20 + 8) + 48))(v21);

    v6 = a1[2];
    if (!v6)
    {
    }

    v22 = 0;
    while (v22 < a1[2])
    {
      v23 = a1[v22 + 4];
      if (v23)
      {
        [v23 setAlpha:1.0];
      }

      if (v6 == ++v22)
      {
      }
    }

    while (1)
    {
      __break(1u);
LABEL_28:
      swift_once();
      v14 = *(v6 + 16);
      if (!v14)
      {
        break;
      }

LABEL_12:
      v15 = 0;
      v25 = xmmword_100959720;
      v26 = xmmword_100959710;
      v24 = xmmword_100959730;
      while (v15 < *(v6 + 16))
      {
        v16 = v15 + 1;
        v17 = *(v6 + 32 + 8 * v15);
        v27[0] = v26;
        v27[1] = v25;
        v27[2] = v24;
        [v17 setTransform:v27];
        v15 = v16;
        if (v14 == v16)
        {
          goto LABEL_15;
        }
      }

LABEL_26:
      __break(1u);
    }
  }
}

void sub_1004AEDBC(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(a1 + 56);
    v4 = Strong;
    ObjectType = swift_getObjectType();
    v6 = (*(*(v3 + 8) + 32))(ObjectType);

    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = 0;
      while (v8 < *(v6 + 16))
      {
        v9 = *(v6 + 32 + 8 * v8);
        if (v9)
        {
          [v9 setAlpha:1.0];
        }

        if (v7 == ++v8)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

LABEL_8:
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = *(a1 + 56);
    v12 = v10;
    v13 = swift_getObjectType();
    v14 = (*(*(v11 + 8) + 40))(v13);

    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = 0;
      while (v16 < *(v14 + 16))
      {
        v17 = v16 + 1;
        v18 = *(v14 + 32 + 8 * v16);
        v27[1] = 0;
        v27[2] = 0;
        v27[0] = 0x3FF0000000000000;
        v27[3] = 0x3FF0000000000000;
        v27[4] = 0;
        v27[5] = 0;
        [v18 setTransform:v27];
        v16 = v17;
        if (v15 == v17)
        {
          goto LABEL_14;
        }
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

LABEL_14:
  }

  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    v21 = *(a1 + 40);
    v22 = swift_getObjectType();
    v23 = (*(*(v21 + 8) + 48))(v22);

    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = 0;
      while (v25 < *(v23 + 16))
      {
        v26 = *(v23 + 32 + 8 * v25);
        if (v26)
        {
          [v26 setAlpha:0.0];
        }

        if (v24 == ++v25)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_26;
    }

LABEL_22:
  }
}

uint64_t sub_1004AEFB8(void (**a1)(uint64_t), void (**a2)(uint64_t), void (**a3)(uint64_t))
{
  v5 = *a1;

  v5(v6);

  v7 = *a2;

  v7(v8);

  v9 = *a3;

  v9(1);
}

uint64_t sub_1004AF048()
{
  swift_unknownObjectWeakDestroy();
  sub_10000CC8C(v0 + 32);
  sub_10000CC8C(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_1004AF0BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1004AF154(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004AF17C()
{

  return _swift_deallocObject(v0, 40, 7);
}

void *sub_1004AF208()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_avatarShowcase);
  v2 = v1;
  return v1;
}

void (*sub_1004AF240(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_avatarShowcase);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_1004AF298;
}

void sub_1004AF298(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1002D7138(v2);
  }

  else
  {
    sub_1002D7138(*a1);
  }
}

uint64_t sub_1004AF330(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1004AF504(&qword_100951208, type metadata accessor for LargeLockupCollectionViewCell);

  return AvatarShowcaseDisplaying.applyAvatars(from:asPartOf:)(a1, a2, ObjectType, v5);
}

uint64_t sub_1004AF3EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v4 = sub_1004AF504(&qword_100951208, type metadata accessor for LargeLockupCollectionViewCell);

  return a3(ObjectType, v4);
}

uint64_t sub_1004AF504(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004AF54C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10076F08C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076F0CC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  aBlock[4] = sub_1004AF9B8;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_1008971A8;
  v12 = _Block_copy(aBlock);

  sub_10076F0AC();
  v14[1] = _swiftEmptyArrayStorage;
  sub_1000717C8();
  sub_10000A5D4(&unk_10094E1C0);
  sub_1000852B8();
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v12);
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
}

uint64_t sub_1004AF7BC(uint64_t a1)
{
  v2 = sub_10076B5BC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;
  v17[0] = v3 + 8;
  v17[1] = v3 + 16;

  v11 = 0;
  while (v8)
  {
LABEL_9:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    (*(v3 + 16))(v5, *(a1 + 48) + *(v3 + 72) * (v13 | (v11 << 6)), v2);
    v14 = sub_10041329C();
    v16 = v15;
    result = (*(v3 + 8))(v5, v2);
    if (v14)
    {
      result = (*(v16 + 8))(v14, v16);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
    }

    v8 = *(a1 + 56 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1004AF980()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004AF9C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_1004AF9D8(uint64_t a1, int *a2)
{
  v30[0] = a2;
  v3 = sub_10076B5BC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v30 - v8;
  v10 = sub_10000A5D4(&unk_100946720);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v30 - v12;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v11 + 8))(v13, v10);
  (*(v4 + 104))(v6, enum case for Shelf.ContentType.todayCard(_:), v3);
  sub_1004B115C(&qword_10094C660, &type metadata accessor for Shelf.ContentType);
  sub_10077018C();
  sub_10077018C();
  if (v30[4] == v30[2] && v30[5] == v30[3])
  {
    v14 = *(v4 + 8);
    v14(v6, v3);
    v14(v9, v3);
  }

  else
  {
    v15 = sub_10077167C();
    v16 = *(v4 + 8);
    v16(v6, v3);
    v16(v9, v3);

    if ((v15 & 1) == 0)
    {
      return sub_100382B5C(a1, v30[0]);
    }
  }

  v17 = COERCE_DOUBLE(sub_1004B0648(a1, v30[0]));
  if (v19)
  {
    return _swiftEmptyArrayStorage;
  }

  v20 = v17;
  v21 = v18;
  v22 = v18 >= v17 ? v17 : v18;
  if (v22 <= 0.0)
  {
    return _swiftEmptyArrayStorage;
  }

  v23 = objc_opt_self();
  v24 = [v23 absoluteDimension:v20];
  v25 = [v23 absoluteDimension:v21];
  v26 = [objc_opt_self() sizeWithWidthDimension:v24 heightDimension:v25];

  v27 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v26 elementKind:UICollectionElementKindSectionHeader alignment:1];
  sub_10000A5D4(&unk_100942870);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1007841E0;
  *(v28 + 32) = v27;

  return v28;
}

double sub_1004AFDFC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v65 = a4;
  v76 = a1;
  v77 = a2;
  v78 = a5;
  v6 = sub_10076469C();
  v7 = *(v6 - 8);
  v74 = v6;
  v75 = v7;
  __chkstk_darwin(v6);
  v72 = v8;
  v73 = &v63[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1007621EC();
  v70 = *(v9 - 8);
  v71 = v9;
  __chkstk_darwin(v9);
  v69 = &v63[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v68 = &v63[-v12];
  v13 = sub_10076B5BC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v63[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v63[-v18];
  v20 = sub_10000A5D4(&unk_100946720);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v67 = &v63[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v25 = &v63[-v24];
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v66 = *(v21 + 8);
  v66(v25, v20);
  (*(v14 + 104))(v16, enum case for Shelf.ContentType.todayCard(_:), v13);
  sub_1004B115C(&qword_10094C660, &type metadata accessor for Shelf.ContentType);
  sub_10077018C();
  sub_10077018C();
  if (v81 == v79 && v82 == v80)
  {
    v26 = *(v14 + 8);
    v26(v16, v13);
    v26(v19, v13);

LABEL_5:
    v29 = v67;
    sub_10076468C();
    swift_getKeyPath();
    v30 = v68;
    sub_10076F49C();

    v66(v29, v20);
    v32 = v69;
    v31 = v70;
    v33 = v71;
    (*(v70 + 104))(v69, enum case for ShelfBackground.interactive(_:), v71);
    sub_1004B115C(&qword_100949730, &type metadata accessor for ShelfBackground);
    v34 = sub_10076FF1C();
    v35 = *(v31 + 8);
    v35(v32, v33);
    v35(v30, v33);
    v28 = v34 ^ 1;
    goto LABEL_6;
  }

  v64 = sub_10077167C();
  v27 = *(v14 + 8);
  v27(v16, v13);
  v27(v19, v13);

  v28 = 0;
  if (v64)
  {
    goto LABEL_5;
  }

LABEL_6:
  v36 = sub_10076FF9C();
  v39 = v76;
  v38 = v77;
  if (v36 == v76 && v37 == v77)
  {

    if ((v28 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_13:
    v42 = sub_10000A5D4(&qword_100954788);
    v43 = v78;
    v78[3] = v42;
    v43[4] = sub_100120048(&qword_100954790, &qword_100954788);
    v78 = sub_10000DB7C(v43);
    v44 = sub_10076FF9C();
    v76 = v45;
    v77 = v44;
    type metadata accessor for ShelfHeaderView();
    sub_1007708FC();
    v46 = swift_allocObject();
    swift_weakInit();
    v47 = v74;
    v48 = v75;
    v49 = v73;
    (*(v75 + 16))(v73, a3, v74);
    v50 = (*(v48 + 80) + 24) & ~*(v48 + 80);
    v51 = (v72 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    *(v52 + 16) = v46;
    (*(v48 + 32))(v52 + v50, v49, v47);
    *(v52 + v51) = v65;

    goto LABEL_16;
  }

  v41 = sub_10077167C();

  if (v41 & v28)
  {
    goto LABEL_13;
  }

LABEL_9:
  type metadata accessor for TodayDebugSectionBackgroundView();
  if (sub_1007708EC() == v39 && v40 == v38)
  {
  }

  else
  {
    v53 = sub_10077167C();

    if ((v53 & 1) == 0)
    {
      return sub_10037E460(v39, v38, a3, v65, v78);
    }
  }

  v54 = sub_10000A5D4(&qword_1009599A0);
  v55 = v78;
  v78[3] = v54;
  v55[4] = sub_100120048(&qword_1009599A8, &qword_1009599A0);
  v78 = sub_10000DB7C(v55);
  sub_1007708EC();
  sub_1007708FC();
  v56 = v74;
  v57 = v75;
  v58 = a3;
  v59 = v73;
  (*(v75 + 16))(v73, v58, v74);
  v60 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v61 = swift_allocObject();
  (*(v57 + 32))(v61 + v60, v59, v56);
LABEL_16:
  sub_10076A3BC();
  return result;
}

uint64_t sub_1004B0648(uint64_t a1, int *a2)
{
  v37 = a2;
  v3 = sub_10076C38C();
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin(v3);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076B5BC();
  v39 = *(v5 - 8);
  __chkstk_darwin(v5);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v10 = sub_10000A5D4(&unk_100946720);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v17 = *(v11 + 8);
  v17(v16, v10);
  v18 = v42;
  if (v42)
  {
    v33 = a1;
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    v17(v13, v10);
    v20 = v38;
    v19 = v39;
    (*(v39 + 104))(v38, enum case for Shelf.ContentType.todayCard(_:), v5);
    sub_1004B115C(&qword_10094C660, &type metadata accessor for Shelf.ContentType);
    sub_10077018C();
    sub_10077018C();
    if (v42 == v40 && v43 == v41)
    {
      v21 = *(v19 + 8);
      v21(v20, v5);
      v21(v9, v5);

LABEL_7:
      v25 = v33;
      v26 = v34;
      sub_10076464C();
      sub_10076C8BC();
      sub_10076C2FC();
      v28 = v27;
      v30 = v29;
      (*(v35 + 8))(v26, v36);
      type metadata accessor for ShelfHeaderView();
      v31 = sub_10042395C(v18, v25, v28, v30);

      return *&v31;
    }

    v23 = sub_10077167C();
    v24 = *(v19 + 8);
    v24(v20, v5);
    v24(v9, v5);

    if (v23)
    {
      goto LABEL_7;
    }

    v22 = v33;
  }

  else
  {
    v22 = a1;
  }

  return sub_10037F5E8(v22, v37);
}

void *sub_1004B0AC8()
{
  v0 = sub_10076B5BC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v19 - v5;
  v7 = sub_10000A5D4(&unk_100946720);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - v9;
  v11 = sub_100382E44();
  v20 = v11;
  if (sub_1001E7560())
  {
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    (*(v8 + 8))(v10, v7);
    (*(v1 + 104))(v3, enum case for Shelf.ContentType.todayCard(_:), v0);
    sub_1004B115C(&qword_10094C660, &type metadata accessor for Shelf.ContentType);
    sub_10077018C();
    sub_10077018C();
    if (v19[3] == v19[1] && v19[4] == v19[2])
    {
      v12 = *(v1 + 8);
      v12(v3, v0);
      v12(v6, v0);
    }

    else
    {
      v13 = sub_10077167C();
      v14 = *(v1 + 8);
      v14(v3, v0);
      v14(v6, v0);

      if ((v13 & 1) == 0)
      {
        return v11;
      }
    }

    v15 = objc_opt_self();
    type metadata accessor for TodayDebugSectionBackgroundView();
    sub_1007708EC();
    v16 = sub_10076FF6C();

    v17 = [v15 backgroundDecorationItemWithElementKind:v16];

    sub_10077019C();
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();
    return v20;
  }

  return v11;
}

uint64_t sub_1004B0E94()
{
  v1 = sub_10076469C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1004B0F80()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004B0FB8()
{
  v1 = sub_10076469C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1004B1090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_10076469C() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = *(v4 + 16);
  v12 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100381918(a1, a2, a3, a4, v11, v4 + v10, v12);
}

uint64_t sub_1004B115C(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_1004B11A8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1004B11E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_1004B122C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1004B12A8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1004B12BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1004B1304(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1004B1364(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  sub_10000CF78((v4 + 64), *(v4 + 88));
  sub_10076E0FC();
  v10 = v9;
  v12 = v11;
  v14 = v13 + 4.0;
  v31.origin.x = a1;
  v31.origin.y = a2;
  v31.size.width = a3;
  v31.size.height = a4;
  MinX = CGRectGetMinX(v31);
  sub_100083158(v4, v29);
  sub_10000CF78(v29, v30);
  sub_10076D41C();
  v16 = v15;
  sub_10000CD74(v29);
  v32.origin.y = v16 - v12;
  v32.origin.x = MinX;
  v32.size.width = v14;
  v32.size.height = v10;
  v17 = CGRectGetMaxX(v32) + *(v4 + 40);
  sub_10000CF78((v4 + 104), *(v4 + 128));
  v33.origin.x = a1;
  v33.origin.y = a2;
  v33.size.width = a3;
  v33.size.height = a4;
  CGRectGetWidth(v33);
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  CGRectGetHeight(v34);
  sub_10076E0FC();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_100083158(v4, v29);
  sub_10000CF78(v29, v30);
  sub_10076D41C();
  v25 = v24;
  sub_10000CD74(v29);
  v35.origin.x = v17;
  v35.origin.y = v25 - v23;
  v35.size.width = v19;
  v35.size.height = v21;
  CGRectGetMaxX(v35);
  v36.origin.x = a1;
  v36.origin.y = a2;
  v36.size.width = a3;
  v36.size.height = a4;
  CGRectGetWidth(v36);
  v37.origin.x = a1;
  v37.origin.y = a2;
  v37.size.width = a3;
  v37.size.height = a4;
  CGRectGetWidth(v37);
  sub_10000CF78((v4 + 144), *(v4 + 168));
  v38.origin.x = a1;
  v38.origin.y = a2;
  v38.size.width = a3;
  v38.size.height = a4;
  CGRectGetHeight(v38);
  sub_10076E0FC();
  sub_100083158(v4, v29);
  sub_10000CF78(v29, v30);
  sub_10076D41C();
  sub_10000CD74(v29);
  sub_10000CF78((v4 + 64), *(v4 + 88));
  sub_1007709CC();
  sub_10076E0EC();
  sub_10000CF78((v4 + 104), *(v4 + 128));
  sub_1007709CC();
  sub_10076E0EC();
  sub_10000CF78((v4 + 144), *(v4 + 168));
  sub_1007709CC();
  return sub_10076E0EC();
}