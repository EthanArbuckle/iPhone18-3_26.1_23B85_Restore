id sub_5D67B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchResultsContainerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_5D68E0()
{
  result = qword_95D238;
  if (!qword_95D238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95D238);
  }

  return result;
}

id sub_5D6934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_searchFocusViewController] = 0;
  v7 = &v4[OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_searchResultsViewController];
  *v7 = 0;
  v7[1] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_searchResultsDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_activeSearchSection] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_activeSearchSectionViewController] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_objectGraph] = a3;
  sub_75A110();
  sub_768900();

  sub_768ED0();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_artworkLoader] = v15;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_facetsPresenter] = a1;
  sub_762E40();

  sub_7688F0();
  sub_75ED70();
  swift_allocObject();
  v8 = sub_75ED20();
  v9 = sub_5D6B7C(&qword_95D240, &type metadata accessor for SearchHintsPresenter);

  v10 = sub_6A0B30(a3, v8, v9, _swiftEmptyArrayStorage, 0x6948686372616573, 0xEB0000000073746ELL);
  v11 = objc_allocWithZone(type metadata accessor for SearchHintsViewController());
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_searchHintsViewController] = sub_5E13DC(v8, v10);
  v14.receiver = v4;
  v14.super_class = type metadata accessor for SearchResultsContainerViewController();
  v12 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", 0, 0);

  return v12;
}

uint64_t sub_5D6B7C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_5D6BC4(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_activeSearchSection;
  v5 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_activeSearchSection);
  if (v5 != a1)
  {
    v6 = v1 + OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      (*(v7 + 8))(a1, ObjectType, v7);
      swift_unknownObjectRelease();
    }

    *(v1 + v4) = a1;
  }

  if (a1 <= 1u)
  {
    if (!a1)
    {
      v19 = a1;
      goto LABEL_15;
    }

    v9 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_searchHintsViewController);
    goto LABEL_13;
  }

  if (a1 == 2)
  {
    v9 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_searchResultsViewController);
    if (!v9)
    {
      goto LABEL_14;
    }

LABEL_13:
    v19 = v9;
    v10 = v9;
    goto LABEL_15;
  }

  v9 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_searchFocusViewController);
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_14:
  v19 = 0;
LABEL_15:
  v11 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_activeSearchSectionViewController);
  if (v11)
  {
    v12 = v19;
    if (v19)
    {
      sub_5D6E68();
      v13 = v11;
      v14 = v19;
      v15 = sub_76A1C0();

      v12 = v19;
      if (v15)
      {
LABEL_18:
        if (v5 == a1)
        {
          goto LABEL_24;
        }

        goto LABEL_22;
      }
    }
  }

  else
  {
    v12 = v19;
    if (!v19)
    {
      goto LABEL_18;
    }
  }

  sub_5D6484(v12);
LABEL_22:
  v16 = v2 + OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(v16 + 8);
    v18 = swift_getObjectType();
    (*(v17 + 16))(*(v2 + v4), v5, v18, v17);
    swift_unknownObjectRelease();
  }

LABEL_24:
}

void sub_5D6DA8()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_searchFocusViewController) = 0;
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_searchResultsViewController);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_searchResultsDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_activeSearchSection) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_activeSearchSectionViewController) = 0;
  sub_76A840();
  __break(1u);
}

unint64_t sub_5D6E68()
{
  result = qword_94DC90;
  if (!qword_94DC90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_94DC90);
  }

  return result;
}

uint64_t MetadataRibbonTagViewLayout.Metrics.standard.unsafeMutableAddressor()
{
  if (qword_93DDE0 != -1)
  {
    swift_once();
  }

  v0 = sub_762380();

  return sub_BE38(v0, static MetadataRibbonTagViewLayout.Metrics.standard);
}

char *sub_5D6F18(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_762380();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonTagView_metrics;
  if (qword_93DDE0 != -1)
  {
    swift_once();
  }

  v16 = sub_BE38(v11, static MetadataRibbonTagViewLayout.Metrics.standard);
  v17 = *(v12 + 16);
  v17(&v5[v15], v16, v11);
  v18 = &v5[OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonTagView_id];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 4) = 0;
  v19 = OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonTagView_itemType;
  v20 = sub_75FC90();
  (*(*(v20 - 8) + 56))(&v5[v19], 1, 1, v20);
  v21 = &v5[OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonTagView_labelMaxWidth];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v5[OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonTagView_truncationLegibilityThreshold];
  *v22 = 0;
  v22[8] = 1;
  v5[OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonTagView_allowsTruncation] = 2;
  sub_75BB20();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonTagView_tagLabel] = sub_75BB00();
  v42.receiver = v5;
  v42.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonTagView_tagLabel;
  v29 = *&v27[OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonTagView_tagLabel];
  sub_396E8();
  v30 = v29;
  v31 = sub_769FF0();
  [v30 setTextColor:v31];

  v32 = *&v27[v28];
  v17(v14, &v27[OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonTagView_metrics], v11);
  v33 = v32;
  v34 = sub_762370();
  (*(v12 + 8))(v14, v11);
  [v33 setNumberOfLines:v34];

  v35 = *&v27[v28];
  sub_766B40();
  if (qword_93C740 != -1)
  {
    swift_once();
  }

  v36 = sub_760500();
  v37 = sub_BE38(v36, qword_99BB00);
  v41[3] = v36;
  v41[4] = sub_DC39C();
  v38 = sub_B1B4(v41);
  (*(*(v36 - 8) + 16))(v38, v37, v36);
  sub_75BA60();

  [v27 addSubview:*&v27[v28]];
  return v27;
}

uint64_t sub_5D7348()
{
  ObjectType = swift_getObjectType();
  v18 = sub_7664F0();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_762380();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_762390();
  v9 = *(v17 - 8);
  *&v10 = __chkstk_darwin(v17).n128_u64[0];
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v0;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "layoutSubviews", v10);
  v13 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonTagView_tagLabel];
  v20 = sub_75BB20();
  v21 = &protocol witness table for UILabel;
  v19 = v13;
  (*(v6 + 16))(v8, &v0[OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonTagView_metrics], v5);
  v14 = v13;
  sub_762330();
  sub_75D650();
  sub_762350();
  (*(v2 + 8))(v4, v18);
  return (*(v9 + 8))(v12, v17);
}

uint64_t sub_5D78DC()
{
  sub_75D7B0();
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonTagView_tagLabel];
  if (v2)
  {
    v3 = sub_769210();
  }

  else
  {
    v3 = 0;
  }

  [v1 setText:v3];

  [v0 setNeedsLayout];
}

uint64_t sub_5D7970@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonTagView_itemType;
  swift_beginAccess();
  return sub_1ED18(v1 + v3, a1, &qword_93EBC0);
}

uint64_t sub_5D79D8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonTagView_itemType;
  swift_beginAccess();
  sub_B33C8(a1, v1 + v3, &qword_93EBC0);
  return swift_endAccess();
}

uint64_t sub_5D7AB4(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonTagView_labelMaxWidth;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_5D7B80(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonTagView_truncationLegibilityThreshold;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_5D7C40()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonTagView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_5D7C84(char a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonTagView_allowsTruncation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_5D7D34@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonTagView_id;
  swift_beginAccess();
  return sub_1ED18(v1 + v3, a1, &unk_9443A0);
}

uint64_t sub_5D7D9C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonTagView_id;
  swift_beginAccess();
  sub_B33C8(a1, v1 + v3, &unk_9443A0);
  return swift_endAccess();
}

uint64_t sub_5D7E6C()
{
  v0 = sub_BD88(&unk_93F5A0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - v2;
  v4 = sub_762380();
  sub_161DC(v4, static MetadataRibbonTagViewLayout.Metrics.standard);
  sub_BE38(v4, static MetadataRibbonTagViewLayout.Metrics.standard);
  sub_BD88(&qword_93FBE0);
  sub_7593B0();
  sub_762360();
  return (*(v1 + 8))(v3, v0);
}

uint64_t static MetadataRibbonTagViewLayout.Metrics.standard.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_93DDE0 != -1)
  {
    swift_once();
  }

  v2 = sub_762380();
  v3 = sub_BE38(v2, static MetadataRibbonTagViewLayout.Metrics.standard);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t type metadata accessor for MetadataRibbonTagView()
{
  result = qword_95D2A8;
  if (!qword_95D2A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_5D80A8()
{
  sub_762380();
  if (v0 <= 0x3F)
  {
    sub_DBB44();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

double sub_5D819C(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v31 = a1;
  v2 = sub_762380();
  v34 = *(v2 - 8);
  __chkstk_darwin(v2);
  v33 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_762390();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v32 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_766D70();
  v29 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_767030();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  __chkstk_darwin(v15);
  v17 = &v27 - v16;
  if (qword_93DDE0 != -1)
  {
    swift_once();
  }

  v18 = sub_BE38(v2, static MetadataRibbonTagViewLayout.Metrics.standard);
  sub_767020();
  sub_766B40();
  v28 = v2;
  if (qword_93C740 != -1)
  {
    swift_once();
  }

  v19 = sub_760500();
  v20 = sub_BE38(v19, qword_99BB00);
  v39[3] = v19;
  v39[4] = sub_DC39C();
  v21 = sub_B1B4(v39);
  (*(*(v19 - 8) + 16))(v21, v20, v19);
  sub_766F80();
  v22 = *(v9 + 8);
  v22(v11, v8);
  sub_BEB8(v39);
  sub_762370();
  sub_767010();
  v22(v14, v8);
  sub_75D7B0();
  (*(v9 + 16))(v14, v17, v8);
  sub_766D50();
  sub_766D90();
  sub_766D40();
  (*(v29 + 8))(v7, v30);
  sub_134D8(v39, v38);
  (*(v34 + 16))(v33, v18, v28);
  v23 = v32;
  sub_762330();
  sub_762340();
  v25 = v24;
  (*(v35 + 8))(v23, v36);
  sub_BEB8(v39);
  v22(v17, v8);
  return v25;
}

void sub_5D8690()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonTagView_metrics;
  if (qword_93DDE0 != -1)
  {
    swift_once();
  }

  v2 = sub_762380();
  v3 = sub_BE38(v2, static MetadataRibbonTagViewLayout.Metrics.standard);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  v4 = v0 + OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonTagView_id;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  v5 = OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonTagView_itemType;
  v6 = sub_75FC90();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = v0 + OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonTagView_labelMaxWidth;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v0 + OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonTagView_truncationLegibilityThreshold;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonTagView_allowsTruncation) = 2;
  sub_76A840();
  __break(1u);
}

id sub_5D89A8()
{
  v2.receiver = v0;
  v2.super_class = _s18PaletteContentViewCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_5D8A14()
{
  result = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.17 controlPoint2:{0.0, 0.83, 0.83}];
  qword_95D2F0 = result;
  return result;
}

uint64_t sub_5D8A60()
{
  v0 = sub_7599A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_BD88(&qword_95D3A0);
  sub_161DC(v4, qword_95D2F8);
  sub_BE38(v4, qword_95D2F8);
  v6[0] = 0x3FF0000000000000;
  v6[1] = 0;
  *v3 = xmmword_7A8580;
  (*(v1 + 104))(v3, enum case for TimingCurve.controlPoints(_:), v0);
  return sub_759CC0();
}

uint64_t sub_5D8BCC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_766CA0();
  sub_161DC(v3, a2);
  sub_BE38(v3, a2);
  v4 = sub_7664A0();
  v9[3] = v4;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_B1B4(v9);
  if (qword_93DBE8 != -1)
  {
    swift_once();
  }

  v6 = sub_7666D0();
  v7 = sub_BE38(v6, qword_99FBB0);
  (*(*(v6 - 8) + 16))(v5, v7, v6);
  (*(*(v4 - 8) + 104))(v5, enum case for FontSource.useCase(_:), v4);
  return sub_766CB0();
}

char *sub_5D8D18(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_heroCarouselItem] = 0;
  v9 = &v4[OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_pagingProgress];
  *v9 = 0;
  *(v9 + 4) = 514;
  v9[10] = 0;
  v10 = OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_backgroundView;
  type metadata accessor for HeroCarouselItemBackgroundView();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_gradientView;
  type metadata accessor for HeroGradientView();
  *&v4[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView____lazy_storage___moduleGradientView] = 0;
  v12 = &v4[OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_overlayView];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_overlayBottomInset] = 0;
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
  [v17 addSubview:*&v17[OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_backgroundView]];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_gradientView]];
  v18 = sub_5D8F5C();
  [v17 addSubview:v18];

  v19 = *&v17[OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_overlayView];
  if (v19)
  {
    v20 = v19;
    [v17 addSubview:v20];
  }

  return v17;
}

char *sub_5D8F5C()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView____lazy_storage___moduleGradientView;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView____lazy_storage___moduleGradientView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView____lazy_storage___moduleGradientView];
  }

  else
  {
    v4 = [v0 traitCollection];
    v5 = [v4 userInterfaceIdiom];

    v6 = objc_allocWithZone(type metadata accessor for ModuleOverlayGradientBlurView());
    v7 = v0;
    v8 = sub_29ACA8(v5 == &dword_0 + 1);
    v9 = *&v0[v1];
    *&v7[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void sub_5D9010()
{
  v1 = sub_76A920();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin(v1).n128_u64[0];
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 traitCollection];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == &dword_0 + 1)
  {
    if (qword_93DE00 != -1)
    {
      swift_once();
    }

    v8 = sub_766CA0();
    sub_BE38(v8, qword_95D328);
    sub_766470();
    sub_766700();
    (*(v2 + 8))(v5, v1);
  }

  else
  {
    if (qword_93DDF8 != -1)
    {
      swift_once();
    }

    v9 = sub_766CA0();
    sub_BE38(v9, qword_95D310);
    sub_766470();
    sub_766700();
    (*(v2 + 8))(v5, v1);
    sub_5D9228();
  }
}

double sub_5D9228()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_overlayView);
  v2 = 0.0;
  if (v1)
  {
    type metadata accessor for CarouselItemSingleModuleOverlay();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      v5 = v1;
      sub_7033F8();
      v7 = v6;
      [v4 frame];
      sub_284F8C(v8, v9);
LABEL_6:
      v17 = v10;

      return v7 + v17 + *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_overlayBottomInset);
    }

    type metadata accessor for CarouselItemCollectionModuleOverlay();
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = v11;
      v13 = v1;
      sub_7033F8();
      v7 = v14;
      [v12 frame];
      sub_6EA434(v15, v16);
      goto LABEL_6;
    }
  }

  return v2;
}

void sub_5D9414()
{
  v1 = v0;
  v2 = sub_7602A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HeroCarouselItemView();
  v47.receiver = v0;
  v47.super_class = v6;
  objc_msgSendSuper2(&v47, "layoutSubviews");
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_gradientView];
  [v1 bounds];
  [v7 setFrame:?];
  v8 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_backgroundView];
  [v1 bounds];
  [v8 setBounds:{0.0, 0.0}];
  [v1 bounds];
  MidX = CGRectGetMidX(v48);
  [v1 bounds];
  [v8 setCenter:{MidX, CGRectGetMidY(v49)}];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_overlayView;
  v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_overlayView];
  if (v11)
  {
    v12 = v11;
    v13 = sub_5D9AF4();
    [v12 setBounds:{0.0, 0.0, v13, v14}];

    v15 = *&v1[v10];
    if (v15)
    {
      v16 = v15;
      [v16 setCenter:sub_5D9DF4()];
    }
  }

  if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_heroCarouselItem])
  {

    v17 = sub_75BC00();

    if (v17)
    {
      sub_7602C0();

      v18 = sub_760290();
      (*(v3 + 8))(v5, v2);
      if (v18)
      {
        [v1 bounds];
        CGRectGetHeight(v50);
        sub_5D9010();
        v19 = sub_5D8F5C();
        [v1 bounds];
        sub_769D10();
        [v19 setFrame:?];

        v20 = sub_5D9228();
        sub_5D9010();
        v22 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView____lazy_storage___moduleGradientView];
        v23 = OBJC_IVAR____TtC18ASMessagesProvider29ModuleOverlayGradientBlurView_effectVisibilityThreshold;
        *&v22[OBJC_IVAR____TtC18ASMessagesProvider29ModuleOverlayGradientBlurView_effectVisibilityThreshold] = v20 / v21;
        if ((v22[OBJC_IVAR____TtC18ASMessagesProvider29ModuleOverlayGradientBlurView_style] & 1) == 0)
        {
          v46 = _swiftEmptyArrayStorage;
          v24 = v22;
          sub_143C5C(0, 5, 0);
          v25 = v46;
          v26 = *&v22[v23];
          v27 = 0.0;
          v29 = *(v46 + 2);
          v28 = *(v46 + 3);
          v30 = v28 >> 1;
          v31 = v29 + 1;
          if (v28 >> 1 <= v29)
          {
            *&v45 = 0.0;
            sub_143C5C((v28 > 1), v29 + 1, 1);
            v27 = *&v45;
            v25 = v46;
            v28 = *(v46 + 3);
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
            sub_143C5C((v28 > 1), v33, 1);
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
            sub_143C5C((v35 > 1), v36 + 1, 1);
            v34 = *&v45;
            v25 = v46;
            v35 = *(v46 + 3);
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
            sub_143C5C((v35 > 1), v40, 1);
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
            sub_143C5C((v43 > 1), v44 + 1, 1);
            v42 = *&v45;
            v25 = v46;
          }

          *(v25 + 16) = v44 + 1;
          *(v25 + 8 * v44 + 32) = v42 * v41;
          sub_4AC060(v25);
        }
      }
    }
  }
}

id sub_5D9948(id a1)
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

  v5 = sub_769240();
  v7 = v6;
  if (v5 == sub_769240() && v7 == v8)
  {
  }

  v10 = sub_76A950();

  if ((v10 & 1) == 0)
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

double sub_5D9AF4()
{
  v1 = v0;
  v2 = sub_7656A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v23 - v7;
  v9 = sub_7656C0();
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
  sub_40DC7C(0.0);
  sub_765670();
  (*(v3 + 8))(v8, v2);
  sub_765620();
  (*(v10 + 8))(v13, v9);
  sub_769D10();
  v20 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_overlayView];
  if (v20)
  {
    [v20 sizeThatFits:{v18, v19}];
    return v21;
  }

  return v17;
}

double sub_5D9DF4()
{
  v1 = v0;
  v2 = sub_7603D0();
  v53 = *(v2 - 8);
  v54 = v2;
  __chkstk_darwin(v2);
  v49 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_7603E0();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v46 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&qword_95D3A8);
  __chkstk_darwin(v6 - 8);
  v50 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v46 - v9;
  v11 = sub_7656A0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = sub_7656C0();
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
  sub_40DC7C(0.0);
  sub_765670();
  (*(v12 + 8))(v17, v11);
  sub_765620();
  (*(v19 + 8))(v22, v18);
  sub_769D10();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_overlayView];
  if (v33)
  {
    [v33 bounds];
    v55 = v34 * 0.5;
  }

  if (!*&v1[OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_heroCarouselItem] || (, v35 = sub_75BC00(), , !v35))
  {
    (*(v53 + 56))(v10, 1, 1, v54);
    sub_10A2C(v10, &qword_95D3A8);
    goto LABEL_9;
  }

  v36 = v46;
  sub_7603F0();

  v37 = v49;
  sub_760390();
  (*(v47 + 8))(v36, v48);
  v38 = [v1 traitCollection];
  sub_7603C0();

  v40 = v53;
  v39 = v54;
  v41 = *(v53 + 8);
  v41(v37, v54);
  (*(v40 + 56))(v10, 0, 1, v39);
  v42 = v50;
  sub_5DBB44(v10, v50);
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

id sub_5DA464()
{
  v1 = v0 + OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_pagingProgress;
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_pagingProgress + 8) && *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_pagingProgress + 8) != 1)
  {

    return [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_backgroundView) setTransform:{&v13, 0x3FF0000000000000, 0, 0, 0x3FF0000000000000, 0, 0}];
  }

  v2 = sub_76A950();

  if (v2)
  {
    return [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_backgroundView) setTransform:{&v13, 0x3FF0000000000000, 0, 0, 0x3FF0000000000000, 0, 0}];
  }

  if (*(v1 + 8) && *(v1 + 8) == 1)
  {
  }

  else
  {
    v4 = sub_76A950();

    if ((v4 & 1) == 0)
    {
      if (*(v1 + 9))
      {
        v11 = sub_76A950();

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
    v5 = sub_76A950();

    if (v5)
    {
      goto LABEL_16;
    }

    v10 = *v1;
LABEL_22:
    v7 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_backgroundView);
    [v7 center];
    v9 = v10 * (v12 * 0.3);
    goto LABEL_23;
  }

LABEL_16:
  v6 = 1.0 - *v1;
LABEL_17:
  v7 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_backgroundView);
  [v7 center];
  v9 = v8 * -0.3 * v6;
LABEL_23:
  CGAffineTransformMakeTranslation(&v13, v9, 0.0);
  return [v7 setTransform:{&v13, *&v13.a, *&v13.c, *&v13.tx}];
}

void sub_5DA768()
{
  v1 = v0 + OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_pagingProgress;
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_pagingProgress + 8) && *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_pagingProgress + 8) != 1)
  {

LABEL_9:
    v6 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_overlayView);
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

  v2 = sub_76A950();

  if (v2)
  {
    goto LABEL_9;
  }

  v3 = OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_overlayView;
  v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_overlayView);
  if (v4)
  {
    if (*(v1 + 8) && *(v1 + 8) == 1)
    {
      v5 = v4;

      goto LABEL_12;
    }

    v7 = sub_76A950();
    v8 = v4;

    if (v7)
    {
LABEL_12:
      if (*(v1 + 9))
      {
        v13 = sub_76A950();

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
      v9 = sub_76A950();

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
        v22 = sub_76A950();
        v23 = v21;

        if ((v22 & 1) == 0)
        {
          if (qword_93DDF0 != -1)
          {
            swift_once();
          }

          v24 = sub_BD88(&qword_95D3A0);
          sub_BE38(v24, qword_95D2F8);
          sub_759CA0();
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

      if (qword_93DDF0 != -1)
      {
        swift_once();
      }

      v27 = sub_BD88(&qword_95D3A0);
      sub_BE38(v27, qword_95D2F8);
      sub_759CA0();
      a = v28.a;
      goto LABEL_37;
    }
  }
}

void sub_5DAC88(int a1, double a2)
{
  v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_overlayView];
  v6 = BYTE1(a1);
  if (v5)
  {
    if (BYTE1(a1))
    {
      v7 = sub_76A950();
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

  if (qword_93DDE8 != -1)
  {
    swift_once();
  }

  v10 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_95D2F0 timingParameters:0.33];
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = a2;
  *(v11 + 32) = a1;
  *(v11 + 34) = BYTE2(a1) & 1;
  v16[4] = sub_5DBB08;
  v16[5] = v11;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_23F0CC;
  v16[3] = &unk_899580;
  v12 = _Block_copy(v16);
  v13 = v2;

  [v10 addAnimations:v12];
  _Block_release(v12);
  if (v6)
  {
    v14 = sub_76A950();

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

void sub_5DAF44(uint64_t a1, __int16 a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_overlayView);
  if (v2)
  {
    if (HIBYTE(a2))
    {
      v3 = sub_76A950();
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

void sub_5DB058(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_7603E0();
  v57 = *(v6 - 8);
  v58 = v6;
  __chkstk_darwin(v6);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7603D0();
  v60 = *(v9 - 8);
  v61 = v9;
  __chkstk_darwin(v9);
  v59 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v57 - v12;
  __chkstk_darwin(v14);
  v62 = &v57 - v15;
  v16 = sub_7602A0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_heroCarouselItem;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_heroCarouselItem] = a1;

  v63 = a2;
  sub_103950(a1, a2);
  if (*&v2[v20] && (, v21 = sub_75BC00(), , v21) && (sub_7602C0(), , v22 = sub_760290(), (*(v17 + 8))(v19, v16), (v22 & 1) != 0))
  {
    v23 = sub_5D8F5C();
    [v23 setHidden:0];

    if (sub_75BC00())
    {
      sub_7603F0();

      sub_760390();
      (*(v57 + 8))(v8, v58);
      v25 = v60;
      v24 = v61;
      v26 = v62;
      (*(v60 + 32))(v62, v13, v61);
      v27 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView____lazy_storage___moduleGradientView];
      v28 = v59;
      (*(v25 + 16))(v59, v26, v24);
      v29 = OBJC_IVAR____TtC18ASMessagesProvider29ModuleOverlayGradientBlurView_alignment;
      swift_beginAccess();
      v30 = *(v25 + 24);
      v31 = v27;
      v30(&v27[v29], v28, v24);
      swift_endAccess();
      sub_29B414();

      v32 = *(v25 + 8);
      v32(v28, v24);
      v32(v62, v24);
    }
  }

  else
  {
    v33 = sub_5D8F5C();
    [v33 setHidden:1];
  }

  v34 = v63;
  v35 = sub_5DB838(a1, v63);
  v37 = v35;
  v38 = v36;
  v39 = &v3[OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_overlayView];
  v40 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_overlayView];
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

  [*&v3[OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_overlayView] removeFromSuperview];
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
  if (sub_75BC00() && (v44 = sub_7602B0(), , v44))
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

      v49(sub_5DBAC8, v48, ObjectType, v46);

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

uint64_t sub_5DB620(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_BD88(&unk_93F630);
  sub_768860();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10A2C(v6, &unk_93F980);
  }

  sub_32A6C0(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

id sub_5DB764()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeroCarouselItemView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_5DB838(uint64_t a1, uint64_t a2)
{
  v3 = sub_7602A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75BC00();
  if (v7)
  {
    v8 = v7;
    sub_7602C0();
    v9 = (*(v4 + 88))(v6, v3);
    if (v9 == enum case for HeroCarouselItemOverlay.OverlayType.materialText(_:))
    {
      type metadata accessor for CarouselItemMaterialTextOverlay();
      v10 = &off_897788;
    }

    else if (v9 == enum case for HeroCarouselItemOverlay.OverlayType.text(_:))
    {
      type metadata accessor for CarouselItemTextOverlay();
      v10 = &off_899DC8;
    }

    else if (v9 == enum case for HeroCarouselItemOverlay.OverlayType.lockup(_:))
    {
      type metadata accessor for CarouselItemLockupOverlay();
      v10 = &off_88A0D8;
    }

    else if (v9 == enum case for HeroCarouselItemOverlay.OverlayType.collectionLockup(_:))
    {
      type metadata accessor for CarouselItemCollectionLockupOverlay(0);
      v10 = &off_895DA8;
    }

    else if (v9 == enum case for HeroCarouselItemOverlay.OverlayType.singleModule(_:))
    {
      type metadata accessor for CarouselItemSingleModuleOverlay();
      v10 = &off_88CD30;
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
      v10 = &off_894108;
    }

    v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    ObjectType = swift_getObjectType();
    (v10[4])(v8, a2, ObjectType, v10);
LABEL_16:

    return v11;
  }

  return 0;
}

uint64_t sub_5DBA88()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_5DBAD0()
{

  return _swift_deallocObject(v0, 35, 7);
}

uint64_t sub_5DBB2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_5DBB44(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_95D3A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_5DBBB4()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_heroCarouselItem) = 0;
  v1 = v0 + OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_pagingProgress;
  *v1 = 0;
  *(v1 + 8) = 514;
  *(v1 + 10) = 0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_backgroundView;
  type metadata accessor for HeroCarouselItemBackgroundView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_gradientView;
  type metadata accessor for HeroGradientView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView____lazy_storage___moduleGradientView) = 0;
  v4 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_overlayView);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_overlayBottomInset) = 0;
  sub_76A840();
  __break(1u);
}

id sub_5DBCB4(uint64_t a1, char a2)
{
  v3 = v2;
  sub_765420();
  if (v6)
  {
    v7 = OBJC_IVAR____TtC18ASMessagesProvider32ProductRatingsCollectionViewCell_productNoRatingsView;
    v8 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider32ProductRatingsCollectionViewCell_productNoRatingsView];
    if (v8)
    {
      v9 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider32ProductRatingsCollectionViewCell_productNoRatingsView];
    }

    else
    {
      v12 = [objc_allocWithZone(type metadata accessor for ProductNoRatingsView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v13 = [v2 contentView];
      [v13 addSubview:v12];

      v14 = *&v2[v7];
      *&v2[v7] = v12;
      v9 = v12;

      v8 = 0;
    }

    v15 = *&v9[OBJC_IVAR____TtC18ASMessagesProvider20ProductNoRatingsView_statusLabel];
    v16 = v8;
    v17 = sub_769210();

    [v15 setText:v17];

    [v9 setNeedsLayout];
  }

  else
  {
    v10 = OBJC_IVAR____TtC18ASMessagesProvider32ProductRatingsCollectionViewCell_productRatingView;
    v11 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider32ProductRatingsCollectionViewCell_productRatingView];
    if (v11)
    {
      v9 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider32ProductRatingsCollectionViewCell_productRatingView];
    }

    else
    {
      v18 = [objc_allocWithZone(type metadata accessor for ProductRatingsView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v19 = [v3 contentView];
      [v19 addSubview:v18];

      v20 = *&v3[v10];
      *&v3[v10] = v18;
      v9 = v18;

      v11 = 0;
    }

    v21 = v11;
    sub_6A9728(a1, a2 & 1);
  }

  return [v3 setNeedsLayout];
}

id sub_5DC094()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v2 = [v0 contentView];
  sub_2630C();
  sub_75D650();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32ProductRatingsCollectionViewCell_productRatingView];
  if (v11)
  {
    [v11 setFrame:{v4, v6, v8, v10}];
  }

  result = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32ProductRatingsCollectionViewCell_productNoRatingsView];
  if (result)
  {
    return [result setFrame:{v4, v6, v8, v10}];
  }

  return result;
}

void sub_5DC1C0()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider32ProductRatingsCollectionViewCell_productNoRatingsView];
  if (v1)
  {
    [*(v1 + OBJC_IVAR____TtC18ASMessagesProvider20ProductNoRatingsView_statusLabel) measurementsWithFitting:v0 in:?];
  }

  else
  {
    v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider32ProductRatingsCollectionViewCell_productRatingView];
    if (v2)
    {
      v3 = v2;
      v4 = [v0 traitCollection];
      sub_766CE0();
    }
  }
}

uint64_t type metadata accessor for ProductRatingsCollectionViewCell()
{
  result = qword_95D3F8;
  if (!qword_95D3F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_5DC394()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_5DC434()
{
  result = qword_941138;
  if (!qword_941138)
  {
    type metadata accessor for VideoCardCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_941138);
  }

  return result;
}

double sub_5DC48C()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DA20();
  sub_765630();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  if (qword_93E0E0 != -1)
  {
    swift_once();
  }

  sub_75DA40();
  type metadata accessor for VideoCardView();
  swift_getObjectType();
  sub_6B2178(v5);
  v7 = v6;
  swift_unknownObjectRelease();
  return v7;
}

double sub_5DC5F8()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75DAB0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75C720();
  sub_75DA20();
  sub_765630();
  v9 = v8;
  (*(v1 + 8))(v3, v0);
  if (qword_93E0E0 != -1)
  {
    swift_once();
  }

  sub_75DA40();
  type metadata accessor for VideoCardView();
  swift_getObjectType();
  sub_6B2178(v9);
  v11 = v10;
  swift_unknownObjectRelease();
  (*(v5 + 8))(v7, v4);
  return v11;
}

void sub_5DC8D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a1;
  v40 = a3;
  v4 = sub_759950();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v36 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75CCC0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = sub_BD88(&qword_94EC40);
  __chkstk_darwin(v13 - 8);
  v15 = &v36 - v14;
  v41 = sub_75A580();
  sub_764C80();
  sub_768900();
  sub_5DCF00(&qword_951430, &type metadata accessor for Action);
  sub_768820();

  v16 = sub_BD88(&unk_950960);
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  v17 = OBJC_IVAR____TtC18ASMessagesProvider31RoundedButtonCollectionViewCell_action;
  swift_beginAccess();
  v18 = v15;
  v19 = v3;
  sub_278AC(v18, &v3[v17]);
  swift_endAccess();
  v3[OBJC_IVAR____TtC18ASMessagesProvider31RoundedButtonCollectionViewCell_hasDivider] = sub_75A540() & 1;
  sub_5BAAA8();
  sub_75A560();
  (*(v7 + 16))(v9, v12, v6);
  if ((*(v7 + 88))(v9, v6) != enum case for RoundedButtonType.share(_:))
  {
    v30 = *(v7 + 8);
    v30(v9, v6);
    v30(v12, v6);
    goto LABEL_7;
  }

  v21 = v36;
  v20 = v37;
  v22 = v38;
  (*(v37 + 104))(v36, enum case for SystemImage.squareAndArrowUp(_:), v38);
  v23 = sub_759930();
  (*(v20 + 8))(v21, v22);
  v24 = [v23 imageWithRenderingMode:2];

  (*(v7 + 8))(v12, v6);
  if (!v24)
  {
LABEL_7:
    v29 = *&v19[OBJC_IVAR____TtC18ASMessagesProvider31RoundedButtonCollectionViewCell_button];
    [v29 setImage:0 forState:0];
    goto LABEL_8;
  }

  sub_BE70(0, &qword_93F900);
  if (qword_93DA20 != -1)
  {
    swift_once();
  }

  v25 = sub_7666D0();
  sub_BE38(v25, qword_99F658);
  v26 = [v19 traitCollection];
  v27 = sub_769E10();

  v28 = [objc_opt_self() configurationWithFont:v27];
  v29 = *&v19[OBJC_IVAR____TtC18ASMessagesProvider31RoundedButtonCollectionViewCell_button];
  [v29 setPreferredSymbolConfiguration:v28 forImageInState:0];
  [v29 setContentVerticalAlignment:0];
  [v29 setImage:v24 forState:0];

LABEL_8:
  sub_75A570();
  v31 = sub_769210();

  [v29 setTitle:v31 forState:0];

  v32 = sub_75A590();
  if (!v32)
  {
    sub_BE70(0, &qword_93E540);
    v32 = sub_76A040();
  }

  v33 = v32;
  [v29 setTitleColor:v33 forState:0];
  [v29 setTintColor:v33];

  v34 = sub_75A550();
  if (!v34)
  {
    sub_BE70(0, &qword_93E540);
    v34 = sub_76A080();
  }

  v35 = v34;
  [v29 setBackgroundColor:v34];

  [v19 setNeedsLayout];
}

uint64_t sub_5DCF00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PrefetchMarkerCollectionViewCell()
{
  result = qword_95D478;
  if (!qword_95D478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_5DD168()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_5DD22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_5DD3D4(&qword_941468);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_5DD2B0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider32PrefetchMarkerCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_1799C(v1 + v3, a1);
}

uint64_t sub_5DD308(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider32PrefetchMarkerCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1792C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_5DD3D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PrefetchMarkerCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_5DD418@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v57 = a7;
  v58 = a8;
  v55 = a6;
  v52 = a5;
  v50 = a2;
  v48[1] = a1;
  v10 = sub_BD88(&unk_951310);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v56 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v51 = v48 - v14;
  __chkstk_darwin(v15);
  v49 = v48 - v16;
  __chkstk_darwin(v17);
  v19 = v48 - v18;
  __chkstk_darwin(v20);
  v22 = v48 - v21;
  v23 = sub_765F20();
  __chkstk_darwin(v23 - 8);
  v54 = v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_765EE0();
  v26 = __chkstk_darwin(v25);
  v53 = v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v26);
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_97CFC(a4, v22);
  sub_97CFC(a3, v19);
  v30 = *(v11 + 80);
  v31 = (v30 + 16) & ~v30;
  v32 = (v12 + v30 + v31) & ~v30;
  v33 = (v12 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  sub_5DEC80(v22, v35 + v31);
  sub_5DEC80(v19, v35 + v32);
  *(v35 + v33) = v29;
  v36 = v50;
  *(v35 + v34) = v50;
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = v49;
  sub_97CFC(v52, v49);
  v39 = (v30 + 32) & ~v30;
  v40 = swift_allocObject();
  *(v40 + 16) = v37;
  *(v40 + 24) = v36;
  sub_5DEC80(v38, v40 + v39);
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v51;
  sub_97CFC(v55, v51);
  v43 = swift_allocObject();
  *(v43 + 16) = v41;
  *(v43 + 24) = v36;
  sub_5DEC80(v42, v43 + v39);
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = v56;
  sub_97CFC(v57, v56);
  v46 = swift_allocObject();
  *(v46 + 16) = v44;
  *(v46 + 24) = v36;
  sub_5DEC80(v45, v46 + v39);
  swift_retain_n();
  sub_765F10();
  return sub_765EA0();
}

uint64_t sub_5DD914(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = sub_BD88(&qword_9440C8);
  v35 = *(v3 - 8);
  __chkstk_darwin(v3);
  v34 = v29 - v4;
  v5 = sub_BD88(&unk_951310);
  __chkstk_darwin(v5 - 8);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v29 - v9;
  __chkstk_darwin(v11);
  v13 = v29 - v12;
  __chkstk_darwin(v14);
  v16 = v29 - v15;
  __chkstk_darwin(v17);
  v19 = v29 - v18;
  v20 = sub_765EE0();
  v32 = *(v20 - 8);
  v33 = v20;
  __chkstk_darwin(v20);
  v22 = v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_761C30();
  sub_5DFBA4(&qword_944078, &type metadata accessor for GameCenterActivityFeedCard);
  result = sub_75C750();
  if (v36[0])
  {
    sub_761C20();
    sub_761BE0();
    v30 = v16;
    sub_761C10();
    sub_761C00();
    sub_761BF0();
    v24 = sub_761BD0();
    v29[2] = v29;
    __chkstk_darwin(v24);
    v29[1] = v29;
    v29[-8] = v22;
    v29[-7] = v2;
    v29[-6] = v31;
    v29[-5] = v19;
    v29[-4] = v16;
    v29[-3] = v13;
    v29[-2] = v10;
    v29[-1] = v7;
    __chkstk_darwin(v25);
    v29[-4] = sub_D3794;
    v29[-3] = v26;
    v29[-2] = v27;
    v29[-1] = v2;
    sub_BD88(&qword_9440D0);
    v31 = v2;
    sub_D37B4();
    v28 = v34;
    sub_767F90();
    sub_767FF0();
    v36[3] = v3;
    v36[4] = sub_16194(&unk_951370, &qword_9440C8);
    sub_B1B4(v36);
    sub_767F80();
    (*(v35 + 8))(v28, v3);
    sub_769AE0();

    sub_10A2C(v7, &unk_951310);
    sub_10A2C(v10, &unk_951310);
    sub_10A2C(v13, &unk_951310);
    sub_10A2C(v30, &unk_951310);
    sub_10A2C(v19, &unk_951310);
    return (*(v32 + 8))(v22, v33);
  }

  return result;
}

uint64_t sub_5DDDB0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a2;
  v28 = a7;
  v11 = sub_7687B0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&unk_951310);
  __chkstk_darwin(v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v26 - v19;
  if (a3)
  {
    v21 = a4;
  }

  else
  {
    v21 = a5;
  }

  sub_97CFC(v21, &v26 - v19);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    sub_97CFC(v20, v17);
    v24 = *(v12 + 48);
    if (v24(v17, 1, v11) == 1)
    {
      sub_768790();
      if (v24(v17, 1, v11) != 1)
      {
        sub_10A2C(v17, &unk_951310);
      }
    }

    else
    {
      (*(v12 + 32))(v14, v17, v11);
    }

    sub_5DF174(a1, v27, v28, v14);

    (*(v12 + 8))(v14, v11);
  }

  return sub_10A2C(v20, &unk_951310);
}

void *sub_5DE004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v29[1] = a1;
  v30 = a8;
  v10 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v10 - 8);
  v12 = v29 - v11;
  v13 = sub_BD88(&unk_951310);
  __chkstk_darwin(v13 - 8);
  v15 = v29 - v14;
  v16 = sub_7687B0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v29 - v21;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29[0] = a5;

    sub_97CFC(a9, v15);
    v24 = *(v17 + 48);
    if (v24(v15, 1, v16) == 1)
    {
      sub_768790();
      if (v24(v15, 1, v16) != 1)
      {
        sub_10A2C(v15, &unk_951310);
      }
    }

    else
    {
      (*(v17 + 32))(v22, v15, v16);
    }

    (*(v17 + 16))(v19, v22, v16);
    sub_762730();
    swift_allocObject();

    v25 = sub_762700();
    v26 = sub_BD88(&unk_93F630);
    v27 = v30;
    sub_768860();
    v28 = *(v26 - 8);
    if ((*(v28 + 48))(v12, 1, v26) == 1)
    {
      (*(v17 + 8))(v22, v16);

      return sub_10A2C(v12, &unk_93F980);
    }

    else
    {
      sub_32AF54(v25, 1, v27, v12);

      (*(v17 + 8))(v22, v16);
      return (*(v28 + 8))(v12, v26);
    }
  }

  return result;
}

void *sub_5DE3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28[1] = a4;
  v29 = a7;
  v9 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v9 - 8);
  v11 = v28 - v10;
  v12 = sub_BD88(&unk_951310);
  __chkstk_darwin(v12 - 8);
  v14 = v28 - v13;
  v15 = sub_7687B0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v28 - v20;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    sub_97CFC(a8, v14);
    v23 = *(v16 + 48);
    if (v23(v14, 1, v15) == 1)
    {
      sub_768790();
      if (v23(v14, 1, v15) != 1)
      {
        sub_10A2C(v14, &unk_951310);
      }
    }

    else
    {
      (*(v16 + 32))(v21, v14, v15);
    }

    (*(v16 + 16))(v18, v21, v15);
    sub_7626C0();
    swift_allocObject();

    v24 = sub_7626A0();
    v25 = sub_BD88(&unk_93F630);
    v26 = v29;
    sub_768860();
    v27 = *(v25 - 8);
    if ((*(v27 + 48))(v11, 1, v25) == 1)
    {
      (*(v16 + 8))(v21, v15);

      return sub_10A2C(v11, &unk_93F980);
    }

    else
    {
      sub_32AF88(v24, 1, v26, v11);

      (*(v16 + 8))(v21, v15);
      return (*(v27 + 8))(v11, v25);
    }
  }

  return result;
}

uint64_t sub_5DE774(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_BD88(&unk_951310);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  v13 = sub_7687B0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    sub_97CFC(a6, v12);
    v19 = *(v14 + 48);
    if (v19(v12, 1, v13) == 1)
    {
      sub_768790();
      if (v19(v12, 1, v13) != 1)
      {
        sub_10A2C(v12, &unk_951310);
      }
    }

    else
    {
      (*(v14 + 32))(v16, v12, v13);
    }

    sub_5DF3A4(a1, a2, a5, v16);

    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t type metadata accessor for GameCenterActivityFeedCollectionViewCell()
{
  result = qword_95D4B0;
  if (!qword_95D4B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5DEAB8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_5DEAF0()
{
  v1 = *(sub_BD88(&unk_951310) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = (v4 + v2 + v3) & ~v2;
  v6 = sub_7687B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  if (!v8(v0 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v5, v6);
  }

  return _swift_deallocObject(v0, ((((v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_5DEC80(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_951310);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_5DECF0(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(sub_BD88(&unk_951310) - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  v11 = (v10 + v8 + v9) & ~v8;
  v12 = (v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v3 + v12);
  v14 = *(v3 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_5DDDB0(a1, a2, a3, v3 + v9, v3 + v11, v13, v14);
}

void *sub_5DEE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(sub_BD88(&unk_951310) - 8);
  v12 = *(v5 + 16);
  v13 = *(v5 + 24);
  v14 = v5 + ((*(v11 + 80) + 32) & ~*(v11 + 80));

  return sub_5DE3C0(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_5DEF40()
{
  v1 = *(sub_BD88(&unk_951310) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_7687B0();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_5DF068(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(sub_BD88(&unk_951310) - 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_5DE774(a1, a2, a3, v8, v9, v10);
}

double sub_5DF100(void *a1, double a2)
{
  v3 = [a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  sub_765E90();
  return a2;
}

uint64_t sub_5DF174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_7687B0();
  v10 = __chkstk_darwin(v9);
  (*(v12 + 16))(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v10);
  sub_762C30();
  swift_allocObject();

  v13 = sub_762C10();
  v14 = sub_BD88(&unk_93F630);
  sub_768860();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {

    return sub_10A2C(v8, &unk_93F980);
  }

  else
  {
    sub_32AF20(v13, 1, a3, v8);

    return (*(v15 + 8))(v8, v14);
  }
}

uint64_t sub_5DF3A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v49 = a4;
  v52 = a3;
  v54._countAndFlagsBits = a1;
  v54._object = a2;
  v4 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v4 - 8);
  v53 = &v39 - v5;
  v50 = sub_758B40();
  v47 = *(v50 - 8);
  __chkstk_darwin(v50);
  v51 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75F340();
  v45 = *(v7 - 8);
  v46 = v7;
  __chkstk_darwin(v7);
  v48 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_760280();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v42 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_7687B0();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_944FF0);
  __chkstk_darwin(v12 - 8);
  v14 = &v39 - v13;
  v15 = sub_765490();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v19 - 8);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v39 - v23;
  v25 = sub_7570A0();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v55 = &v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v58 = 0;
  *(&v58 + 1) = 0xE000000000000000;
  sub_76A730(29);

  *&v58 = 0xD00000000000001BLL;
  *(&v58 + 1) = 0x80000000007CA510;
  sub_769370(v54);
  sub_757090();

  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    v28 = &unk_93FD30;
    v29 = v24;
    return sub_10A2C(v29, v28);
  }

  v30 = v55;
  (*(v26 + 32))(v55, v24, v25);
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v31 = *(v16 + 104);
  v39 = v18;
  v31(v18, enum case for FlowPage.product(_:), v15);
  (*(v26 + 16))(v21, v30, v25);
  (*(v26 + 56))(v21, 0, 1, v25);
  v32 = sub_759E30();
  (*(*(v32 - 8) + 56))(v14, 1, 1, v32);
  v56 = 0u;
  v57 = 0u;
  (*(v40 + 16))(v11, v49, v41);
  (*(v43 + 104))(v42, enum case for FlowPresentationContext.infer(_:), v44);
  (*(v45 + 104))(v48, enum case for FlowAnimationBehavior.infer(_:), v46);
  (*(v47 + 104))(v51, enum case for FlowOrigin.inapp(_:), v50);
  sub_768CE0();
  sub_758B20();
  swift_allocObject();
  v33 = sub_758AD0();
  v34 = sub_BD88(&unk_93F630);
  v35 = v52;
  v36 = v53;
  sub_768860();
  v37 = *(v34 - 8);
  if ((*(v37 + 48))(v36, 1, v34) == 1)
  {
    (*(v26 + 8))(v55, v25);

    v28 = &unk_93F980;
    v29 = v36;
    return sub_10A2C(v29, v28);
  }

  sub_32AC14(v33, 1, v35, v36);

  (*(v26 + 8))(v55, v25);
  return (*(v37 + 8))(v36, v34);
}

uint64_t sub_5DFBA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_5DFBF4(void *a1, uint64_t a2)
{
  v4 = sub_768CD0();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_768670();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_768940();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&qword_945018);
  __chkstk_darwin(v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_75A3A0();
  v40 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_7572A0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75FEC0();
  sub_757290();
  sub_757270();
  (*(v16 + 8))(v18, v15);
  sub_75FEB0();
  sub_768950();
  v19 = [a1 viewControllers];
  if (v19)
  {
    sub_BE70(0, &qword_9434E0);
    v20 = sub_769460();

    v19 = sub_6FF814(a2, v20);
    v22 = v21;
  }

  else
  {
    v22 = 1;
  }

  v23 = [a1 tabBar];
  v24 = [v23 items];

  if (!v24)
  {
    return 1;
  }

  sub_BE70(0, &unk_95D570);
  v25 = sub_769460();

  result = sub_769490();
  if (result & 1) == 0 || (v22)
  {

    return 1;
  }

  if ((v25 & 0xC000000000000001) != 0)
  {
    v28 = sub_76A770();
    v27 = v40;
LABEL_13:

    [v28 tag];

    sub_75A380();
    if ((*(v27 + 48))(v11, 1, v12) == 1)
    {
      sub_10A2C(v11, &qword_945018);
    }

    else
    {
      (*(v27 + 32))(v14, v11, v12);
      sub_75C480();
      sub_75A370();
      [a1 selectedIndex];
      sub_75C450();

      sub_768900();
      v29 = v34;
      sub_768ED0();
      v30 = v33;
      sub_759D10();
      v31 = v36;
      sub_768CB0();
      sub_768930();

      (*(v38 + 8))(v31, v39);
      (*(v35 + 8))(v30, v37);
      (*(v32 + 8))(v8, v29);
      (*(v27 + 8))(v14, v12);
    }

    return 1;
  }

  v27 = v40;
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v19 < *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8)))
  {
    v28 = *(v25 + 8 * v19 + 32);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_5E02A0(void *a1, void *a2)
{
  v4 = sub_BD88(&unk_955F90);
  v100 = *(v4 - 8);
  v101 = v4;
  __chkstk_darwin(v4);
  v99 = &v89 - v5;
  v6 = sub_BD88(&unk_944FF0);
  __chkstk_darwin(v6 - 8);
  v98 = &v89 - v7;
  v8 = sub_7687B0();
  __chkstk_darwin(v8 - 8);
  v96 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&qword_945010);
  __chkstk_darwin(v10 - 8);
  v94 = &v89 - v11;
  v91 = sub_759F30();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v93 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v13 - 8);
  v92 = &v89 - v14;
  v97 = sub_BD88(&unk_93F630);
  v95 = *(v97 - 8);
  __chkstk_darwin(v97);
  v103 = &v89 - v15;
  v110 = sub_758800();
  v108 = *(v110 - 8);
  __chkstk_darwin(v110);
  v105 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_BD88(&qword_95D558);
  __chkstk_darwin(v17);
  v104 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v89 - v20;
  v22 = sub_BD88(&unk_95D560);
  __chkstk_darwin(v22 - 8);
  v106 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v102 = &v89 - v25;
  __chkstk_darwin(v26);
  v28 = &v89 - v27;
  __chkstk_darwin(v29);
  v31 = &v89 - v30;
  __chkstk_darwin(v32);
  v109 = &v89 - v33;
  __chkstk_darwin(v34);
  v112 = &v89 - v35;
  v36 = sub_BD88(&qword_945018);
  __chkstk_darwin(v36 - 8);
  v38 = &v89 - v37;
  v39 = sub_75A3A0();
  v113 = *(v39 - 8);
  v114 = v39;
  __chkstk_darwin(v39);
  v41 = &v89 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v111 = &v89 - v43;
  type metadata accessor for StoreNavigationController();
  if (swift_dynamicCastClass())
  {
    v44 = a2;
    sub_3BE98();
  }

  v45 = [a1 tabBar];
  v46 = [v45 items];

  if (v46)
  {
    sub_BE70(0, &unk_95D570);
    v47 = sub_769460();

    if ((sub_769490() & 1) == 0 || (v48 = [a1 selectedIndex], v48 == sub_756C80()))
    {

      return;
    }

    v49 = [a1 selectedIndex];
    if ((v47 & 0xC000000000000001) == 0)
    {
      if ((v49 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v49 < *(&dword_10 + (v47 & 0xFFFFFFFFFFFFFF8)))
      {
        v50 = *(v47 + 8 * v49 + 32);
        goto LABEL_13;
      }

      __break(1u);
      return;
    }

    v50 = sub_76A770();
LABEL_13:
    v51 = v50;

    [v51 tag];

    sub_75A380();
    v53 = v113;
    v52 = v114;
    if ((*(v113 + 48))(v38, 1, v114) == 1)
    {
      sub_10A2C(v38, &qword_945018);
      return;
    }

    v54 = v111;
    (*(v53 + 32))(v111, v38, v52);
    v89 = objc_opt_self();
    v55 = v52;
    v56 = [v89 standardUserDefaults];
    v57 = v112;
    sub_38EB7C(v112);

    v58 = v54;
    v59 = v109;
    (*(v53 + 16))(v41, v58, v55);
    sub_7587D0();
    v60 = *(v17 + 48);
    sub_38FAC4(v57, v21);
    sub_38FAC4(v59, &v21[v60]);
    v61 = v108;
    v62 = *(v108 + 48);
    v63 = v110;
    if (v62(v21, 1, v110) == 1)
    {
      if (v62(&v21[v60], 1, v63) == 1)
      {
        sub_10A2C(v21, &unk_95D560);
        v64 = v107;
        v65 = v111;
LABEL_22:
        (*(v61 + 104))(v28, enum case for StoreTab.Identifier.search(_:), v63);
        (*(v61 + 56))(v28, 0, 1, v63);
        v68 = *(v17 + 48);
        v69 = v104;
        sub_38FAC4(v59, v104);
        sub_38FAC4(v28, v69 + v68);
        if (v62(v69, 1, v63) == 1)
        {
          sub_10A2C(v28, &unk_95D560);
          if (v62(v69 + v68, 1, v63) == 1)
          {
            sub_10A2C(v69, &unk_95D560);
LABEL_29:
            v111 = *(v64 + OBJC_IVAR____TtC18ASMessagesProvider17TabChangeDelegate_objectGraph);
            v74 = v97;
            sub_768880();
            v75 = sub_7570A0();
            (*(*(v75 - 8) + 56))(v92, 1, 1, v75);
            (*(v90 + 104))(v93, enum case for SearchOrigin.tabBar(_:), v91);
            v76 = sub_759F20();
            (*(*(v76 - 8) + 56))(v94, 1, 1, v76);
            sub_768790();
            v77 = sub_759E30();
            (*(*(v77 - 8) + 56))(v98, 1, 1, v77);
            v78 = sub_759F10();
            swift_allocObject();
            v59 = v109;
            v79 = sub_759ED0();
            v115[3] = v78;
            v115[4] = sub_5E1394(&qword_940AD8, &type metadata accessor for SearchAction);
            v115[0] = v79;
            v81 = v99;
            v80 = v100;
            v82 = v101;
            (*(v100 + 104))(v99, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v101);

            v83 = v103;
            sub_768980();

            (*(v80 + 8))(v81, v82);
            (*(v95 + 8))(v83, v74);
            sub_BEB8(v115);
            goto LABEL_30;
          }

          goto LABEL_27;
        }

        v70 = v102;
        sub_38FAC4(v69, v102);
        if (v62(v69 + v68, 1, v63) == 1)
        {
          sub_10A2C(v28, &unk_95D560);
          (*(v108 + 8))(v70, v63);
LABEL_27:
          sub_10A2C(v69, &qword_95D558);
          goto LABEL_30;
        }

        v71 = v108;
        v72 = v105;
        (*(v108 + 32))(v105, v69 + v68, v63);
        sub_5E1394(&qword_95D580, &type metadata accessor for StoreTab.Identifier);
        LODWORD(v111) = sub_7691C0();
        v73 = *(v71 + 8);
        v73(v72, v63);
        sub_10A2C(v28, &unk_95D560);
        v73(v70, v63);
        sub_10A2C(v69, &unk_95D560);
        if (v111)
        {
          goto LABEL_29;
        }

LABEL_30:
        sub_75B430();
        sub_75B410();
        sub_75A370();
        sub_75B380();

        v84 = [v89 standardUserDefaults];
        v85 = v106;
        sub_38FAC4(v59, v106);
        sub_38ECB4(v85);

        sub_758960();
        sub_7688F0();
        v86 = v115[0];
        if (v115[0])
        {
          sub_758940();
        }

        sub_760FC0();
        sub_7688F0();
        v87 = v115[0];
        v88 = v113;
        if (v115[0])
        {
          sub_760FB0();
        }

        sub_10A2C(v59, &unk_95D560);
        sub_10A2C(v112, &unk_95D560);
        (*(v88 + 8))(v65, v114);
        return;
      }
    }

    else
    {
      sub_38FAC4(v21, v31);
      if (v62(&v21[v60], 1, v63) != 1)
      {
        (*(v61 + 32))(v105, &v21[v60], v63);
        sub_5E1394(&qword_95D580, &type metadata accessor for StoreTab.Identifier);
        v66 = sub_7691C0();
        v67 = *(v61 + 8);
        v67(v105, v110);
        v67(v31, v110);
        v59 = v109;
        v63 = v110;
        sub_10A2C(v21, &unk_95D560);
        v64 = v107;
        v65 = v111;
        if ((v66 & 1) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_22;
      }

      (*(v61 + 8))(v31, v63);
    }

    sub_10A2C(v21, &qword_95D558);
    v65 = v111;
    goto LABEL_30;
  }
}

uint64_t sub_5E1394(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_5E13DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC18ASMessagesProvider25SearchHintsViewController_flowLayout;
  v7 = [objc_allocWithZone(UICollectionViewFlowLayout) init];
  [v7 setSectionInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v7 setMinimumInteritemSpacing:0.0];
  [v7 setMinimumLineSpacing:0.0];
  [v7 setScrollDirection:0];
  *(v3 + v6) = v7;
  *(v3 + OBJC_IVAR____TtC18ASMessagesProvider25SearchHintsViewController_searchHintsCollectionViewDataSource) = 0;
  *(v3 + OBJC_IVAR____TtC18ASMessagesProvider25SearchHintsViewController_searchHintsCollectionViewDelegate) = 0;
  *(v3 + OBJC_IVAR____TtC18ASMessagesProvider25SearchHintsViewController_presenter) = a1;
  sub_75F520();

  sub_7688F0();
  *(v3 + OBJC_IVAR____TtC18ASMessagesProvider25SearchHintsViewController_impressionsCalculator) = v12;
  v8 = *(v3 + v6);

  v9 = sub_7212CC(v8, a2);

  sub_5E23E8(&qword_95D5E8);
  v10 = v9;
  sub_75ED60();

  return v10;
}

id sub_5E157C()
{
  v1 = v0;
  v2 = sub_768C60();
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin(v2);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchHintsViewController();
  v52.receiver = v0;
  v52.super_class = v5;
  objc_msgSendSuper2(&v52, "viewDidLoad");
  v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider25SearchHintsViewController_presenter];
  v7 = type metadata accessor for SearchHintsCollectionViewDataSource();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC18ASMessagesProvider35SearchHintsCollectionViewDataSource_presenter] = v6;
  v51.receiver = v8;
  v51.super_class = v7;

  v9 = objc_msgSendSuper2(&v51, "init");
  v10 = OBJC_IVAR____TtC18ASMessagesProvider25SearchHintsViewController_searchHintsCollectionViewDataSource;
  v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider25SearchHintsViewController_searchHintsCollectionViewDataSource];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider25SearchHintsViewController_searchHintsCollectionViewDataSource] = v9;

  v12 = [v1 snapshotPageTraitEnvironment];
  v13 = type metadata accessor for SearchHintsCollectionViewDelegate();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC18ASMessagesProvider33SearchHintsCollectionViewDelegate_impressionsCalculator] = 0;
  *&v14[OBJC_IVAR____TtC18ASMessagesProvider33SearchHintsCollectionViewDelegate_presenter] = v6;

  v15 = [v12 snapshotPageTraitEnvironment];
  *&v14[OBJC_IVAR____TtC18ASMessagesProvider33SearchHintsCollectionViewDelegate_pageTraits] = v15;
  v50.receiver = v14;
  v50.super_class = v13;
  v16 = objc_msgSendSuper2(&v50, "init");
  swift_unknownObjectRelease();
  v17 = OBJC_IVAR____TtC18ASMessagesProvider25SearchHintsViewController_searchHintsCollectionViewDelegate;
  v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider25SearchHintsViewController_searchHintsCollectionViewDelegate];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider25SearchHintsViewController_searchHintsCollectionViewDelegate] = v16;
  v19 = v16;

  *&v19[OBJC_IVAR____TtC18ASMessagesProvider33SearchHintsCollectionViewDelegate_impressionsCalculator] = *&v1[OBJC_IVAR____TtC18ASMessagesProvider25SearchHintsViewController_impressionsCalculator];

  v20 = *&v1[v17];
  v21 = v20;
  sub_71EE2C(v20);
  v22 = *&v1[v10];
  v23 = v22;
  sub_71EE40(v22);
  v24 = [v1 collectionView];
  if (v24)
  {
    v25 = v24;
    [v24 setKeyboardDismissMode:1];
  }

  v26 = [v1 collectionView];
  if (v26)
  {
    v27 = v26;
    sub_396E8();
    v28 = sub_76A000();
    [v27 setBackgroundColor:v28];
  }

  v29 = [v1 collectionView];
  if (v29)
  {
    v30 = v29;
    [v29 setAlwaysBounceVertical:1];
  }

  v31 = [v1 collectionView];
  if (v31)
  {
    v32 = v31;
    [v31 setAllowsSelection:1];
  }

  v33 = [v1 collectionView];
  if (v33)
  {
    v34 = v33;
    [v33 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  }

  v35 = [v1 collectionView];
  if (v35)
  {
    v36 = v35;
    type metadata accessor for SearchHintCollectionViewCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_769BD0();
    v38 = sub_769210();

    [v36 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v38];
  }

  result = [v1 collectionView];
  if (result)
  {
    v40 = result;
    memset(v49, 0, sizeof(v49));
    sub_768C20();
    sub_10A2C(v49, &unk_93FBD0);
    sub_769E70();

    result = (*(v47 + 8))(v4, v48);
  }

  v41 = *&v1[v17];
  if (v41)
  {
    v42 = v41;
    v43 = [v1 snapshotPageTraitEnvironment];
    v44 = [v1 collectionView];
    v45 = [v43 snapshotPageTraitEnvironment];
    *&v42[OBJC_IVAR____TtC18ASMessagesProvider33SearchHintsCollectionViewDelegate_pageTraits] = v45;
    swift_unknownObjectRelease();
    if (v44)
    {
      v46 = [v44 collectionViewLayout];
      [v46 invalidateLayout];
    }

    [v44 reloadData];

    swift_unknownObjectRelease();
    return sub_75A160();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_5E1AC8(void *a1, double a2, double a3)
{
  v4 = v3;
  v23.receiver = v3;
  v23.super_class = type metadata accessor for SearchHintsViewController();
  objc_msgSendSuper2(&v23, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v8 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider25SearchHintsViewController_searchHintsCollectionViewDelegate];
  if (v8)
  {
    v9 = v8;
    v10 = [v4 traitCollection];
    v11 = type metadata accessor for SnapshotPageTraitEnvironment();
    v12 = objc_allocWithZone(v11);
    v13 = &v12[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_pageContainerSize];
    *v13 = a2;
    v13[1] = a3;
    *&v12[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_traitCollection] = v10;
    v22.receiver = v12;
    v22.super_class = v11;
    v14 = objc_msgSendSuper2(&v22, "init");
    v15 = [v4 collectionView];
    v16 = [v14 snapshotPageTraitEnvironment];
    *&v9[OBJC_IVAR____TtC18ASMessagesProvider33SearchHintsCollectionViewDelegate_pageTraits] = v16;
    swift_unknownObjectRelease();
    if (v15)
    {
      v17 = [v15 collectionViewLayout];
      [v17 invalidateLayout];
    }

    v18 = swift_allocObject();
    *(v18 + 16) = v15;
    v21[4] = sub_5E2460;
    v21[5] = v18;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1107296256;
    v21[2] = sub_6C6800;
    v21[3] = &unk_899720;
    v19 = _Block_copy(v21);
    v20 = v15;

    [a1 animateAlongsideTransition:v19 completion:0];
    _Block_release(v19);
  }

  else
  {
    __break(1u);
  }
}

void sub_5E1D74(uint64_t a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for SearchHintsViewController();
  objc_msgSendSuper2(&v10, "traitCollectionDidChange:", a1);
  v3 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider25SearchHintsViewController_searchHintsCollectionViewDelegate];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 snapshotPageTraitEnvironment];
    v6 = [v1 collectionView];
    v7 = [v5 snapshotPageTraitEnvironment];
    *&v4[OBJC_IVAR____TtC18ASMessagesProvider33SearchHintsCollectionViewDelegate_pageTraits] = v7;
    swift_unknownObjectRelease();
    if (v6)
    {
      v8 = [v6 collectionViewLayout];
      [v8 invalidateLayout];
    }

    [v6 reloadData];

    swift_unknownObjectRelease();
    v9 = [v1 collectionView];
    [v9 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void sub_5E1F28()
{
  if (*&v0[OBJC_IVAR____TtC18ASMessagesProvider25SearchHintsViewController_impressionsCalculator])
  {
    sub_75F4E0();
  }

  sub_BD88(&qword_942490);
  sub_7688F0();
  if (v2)
  {
    swift_getObjectType();
    sub_768B40();
    swift_unknownObjectRelease();
  }

  v1 = [v0 collectionView];
  [v1 reloadData];
}

uint64_t sub_5E1FEC()
{
}

id sub_5E205C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchHintsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

BOOL sub_5E2130()
{
  v1 = [v0 parentViewController];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t sub_5E2178()
{
  sub_BD88(&qword_942490);
  sub_7688F0();
  return v1;
}

uint64_t sub_5E21D4@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider25SearchHintsViewController_presenter);
  a1[3] = sub_75ED70();
  a1[4] = &protocol witness table for SearchHintsPresenter;
  *a1 = v3;
}

uint64_t sub_5E2230(uint64_t a1)
{
  v3 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph);
  v7 = sub_BD88(&unk_93F630);
  sub_768860();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_10A2C(v5, &unk_93F980);
  }

  sub_32A6C0(a1, 1, v6, v5);

  return (*(v8 + 8))(v5, v7);
}

uint64_t sub_5E23E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SearchHintsViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_5E2428()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_5E2468(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_5E2494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_7570A0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider23URLActivityItemProvider_shareSheetData] = a1;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider23URLActivityItemProvider_artworkLoader] = a2;
  v12 = qword_93DE08;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_95D5F0;

  sub_72253C(a3, v13);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider23URLActivityItemProvider_excludedActivityTypes] = v14;
  sub_75AE70();
  sub_757040(v15);
  v17 = v16;
  (*(v9 + 8))(v11, v8);
  v18 = type metadata accessor for URLActivityItemProvider();
  v21.receiver = v4;
  v21.super_class = v18;
  v19 = objc_msgSendSuper2(&v21, "initWithPlaceholderItem:", v17);

  return v19;
}

void sub_5E2864(uint64_t *a1@<X8>)
{
  v3 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v3 - 8);
  v5 = v18 - v4;
  v6 = sub_7570A0();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v1 activityType];
  if (!v11)
  {
    a1[3] = v6;
    sub_B1B4(a1);
    sub_75AE70();
    return;
  }

  v12 = v11;
  sub_BD88(&unk_95D700);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77B6D0;
  *(inited + 32) = UIActivityTypeAirDrop;
  v14 = UIActivityTypeAirDrop;
  sub_75AEA0();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {

    sub_10A2C(v5, &unk_93FD30);
  }

  else
  {
    v18[0] = *(v7 + 32);
    v15 = (v18[0])(v10, v5, v6);
    v19 = v12;
    __chkstk_darwin(v15);
    v18[-2] = &v19;
    v16 = sub_4F26D0(sub_5E4058, &v18[-4], inited);

    if ((v16 & 1) == 0)
    {
      a1[3] = v6;
      v17 = sub_B1B4(a1);
      (v18[0])(v17, v10, v6);
      goto LABEL_9;
    }

    (*(v7 + 8))(v10, v6);
  }

  a1[3] = v6;
  sub_B1B4(a1);
  sub_75AE70();
LABEL_9:
}

id sub_5E2B8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for URLActivityItemProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_5E2D24()
{
  v0 = sub_769240();
  v2 = v1;
  if (v0 == sub_769240() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_76A950();
  }

  return v5 & 1;
}

unint64_t sub_5E2DB4()
{
  v1 = sub_7652D0();
  v120 = *(v1 - 1);
  v121 = v1;
  __chkstk_darwin(v1);
  v119 = &v112 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_764CF0();
  v116 = *(v3 - 8);
  v117 = v3;
  __chkstk_darwin(v3);
  v115 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&qword_947B58);
  __chkstk_darwin(v5 - 8);
  v118 = &v112 - v6;
  v123 = sub_75AE80();
  v7 = *(v123 - 1);
  __chkstk_darwin(v123);
  v9 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v10 - 8);
  v12 = &v112 - v11;
  v13 = sub_7570A0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v114 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v112 - v17;
  v124 = [objc_allocWithZone(LPLinkMetadata) init];
  v122 = v0;
  sub_75AEA0();
  v19 = *(v14 + 48);
  if (v19(v12, 1, v13) == 1)
  {
    sub_75AE70();
    v20 = v19(v12, 1, v13);
    v22 = v13;
    v23 = v14;
    if (v20 != 1)
    {
      sub_10A2C(v12, &unk_93FD30);
    }
  }

  else
  {
    (*(v14 + 32))(v18, v12, v13);
    v22 = v13;
    v23 = v14;
  }

  sub_757040(v21);
  v25 = v24;
  v28 = *(v23 + 8);
  v26 = (v23 + 8);
  v27 = v28;
  v28(v18, v22);
  v29 = v124;
  [v124 setURL:v25];

  sub_75AE90();
  v30 = v123;
  v31 = (*(v7 + 88))(v9, v123);
  if (v31 == enum case for ShareSheetData.Metadata.article(_:))
  {
    (*(v7 + 96))(v9, v30);
    if (sub_761710())
    {
      v32 = sub_7651A0();
      if (v32)
      {
        v33 = v32;
        v34 = _sSo7UIImageC18ASMessagesProviderE16singlePointImage5colorABSgSo7UIColorC_tFZ_0(v32);
        v35 = v118;
        if (v34)
        {
          v36 = v34;
          v37 = [objc_allocWithZone(LPImage) initWithPlatformImage:v34];

          v33 = v36;
        }

        else
        {
          v37 = 0;
        }
      }

      else
      {
        v37 = 0;
        v35 = v118;
      }

      sub_765220();
      v81 = sub_765240();
      (*(*(v81 - 8) + 56))(v35, 0, 1, v81);
      sub_765310();
      sub_10A2C(v35, &qword_947B58);
      v82 = objc_allocWithZone(sub_75DED0());
      v83 = sub_75DEC0();
      v84 = [objc_allocWithZone(LPImage) initWithItemProvider:v83 properties:0 placeholderImage:v37];
      [v29 setImage:v84];
    }

    sub_761700();
    v85 = sub_769210();

    [v29 setTitle:v85];

    v86 = [objc_allocWithZone(LPAppStoreStoryMetadata) init];
    sub_761720();
    if (v87)
    {
LABEL_51:
      v88 = sub_769210();

LABEL_59:
      [v86 setSubtitle:v88];

      [v29 setSpecialization:v86];

      return v29;
    }

LABEL_58:
    v88 = 0;
    goto LABEL_59;
  }

  if (v31 != enum case for ShareSheetData.Metadata.product(_:))
  {
    if (v31 != enum case for ShareSheetData.Metadata.appEvent(_:))
    {
      (*(v7 + 8))(v9, v30);
      return v29;
    }

    (*(v7 + 96))(v9, v30);
    if (sub_757680())
    {
      v41 = sub_7651A0();
      if (v41)
      {
        v42 = v41;
        v43 = _sSo7UIImageC18ASMessagesProviderE16singlePointImage5colorABSgSo7UIColorC_tFZ_0(v41);
        if (v43)
        {
          v44 = v43;
          v45 = [objc_allocWithZone(LPImage) initWithPlatformImage:v43];

          v42 = v44;
        }

        else
        {
          v45 = 0;
        }
      }

      else
      {
        v45 = 0;
      }

      sub_765320();
      v89 = objc_allocWithZone(sub_75DED0());
      v90 = sub_75DEC0();
      v91 = [objc_allocWithZone(LPImage) initWithItemProvider:v90 properties:0 placeholderImage:v45];
      [v29 setImage:v91];
    }

    sub_757670();
    v92 = sub_769210();

    [v29 setTitle:v92];

    v86 = [objc_allocWithZone(LPAppStoreStoryMetadata) init];
    sub_757690();
    if (v93)
    {
      goto LABEL_51;
    }

    goto LABEL_58;
  }

  (*(v7 + 96))(v9, v30);
  v38 = [objc_allocWithZone(LPiTunesMediaSoftwareMetadata) init];
  sub_761770();
  if (v39)
  {
    v40 = sub_769210();
  }

  else
  {
    v40 = 0;
  }

  v47 = v116;
  v46 = v117;
  [v38 setStoreFrontIdentifier:v40];

  v48 = v38;
  v49 = v115;
  sub_7617A0();
  sub_764CA0();
  (*(v47 + 8))(v49, v46);
  v50 = sub_769210();

  [v48 setStoreIdentifier:v50];

  sub_761790();
  v51 = sub_769210();

  [v48 setName:v51];

  sub_7617C0();
  if (v52)
  {
    v53 = sub_769210();
  }

  else
  {
    v53 = 0;
  }

  [v48 setSubtitle:v53];

  sub_7617D0();
  v112 = v27;
  if (v54)
  {
    v55 = sub_769210();
  }

  else
  {
    v55 = 0;
  }

  [v48 setGenre:{v55, v112}];

  sub_761780();
  v56 = sub_7651A0();

  v57 = &_s11AppStoreKit39MediumAdLockupWithScreenshotsBackgroundC9JetEngine14ComponentModelAAMc_ptr;
  v118 = v26;
  v113 = v22;
  v123 = v48;
  if (v56)
  {
    v58 = _sSo7UIImageC18ASMessagesProviderE16singlePointImage5colorABSgSo7UIColorC_tFZ_0(v56);
    if (v58)
    {
      v59 = [objc_allocWithZone(LPImageProperties) init];
      sub_761780();
      v60 = v119;
      sub_7652E0();

      v61 = sub_7652C0();
      v62 = v60;
      v57 = &_s11AppStoreKit39MediumAdLockupWithScreenshotsBackgroundC9JetEngine14ComponentModelAAMc_ptr;
      (v120[1].super.isa)(v62, v121);
      [v59 setType:v61];
      v63 = [objc_allocWithZone(LPImage) initWithPlatformImage:v58 properties:v59];

      v58 = v63;
      v56 = v59;
    }
  }

  else
  {
    v58 = 0;
  }

  sub_761780();
  sub_765330();

  v64 = sub_75DED0();
  v65 = objc_allocWithZone(v64);
  v66 = sub_75DEC0();
  v67 = [objc_allocWithZone(v57[396]) init];
  sub_761780();
  v68 = v119;
  sub_7652E0();

  v69 = sub_7652C0();
  (v120[1].super.isa)(v68, v121);
  [v67 setType:v69];
  v70 = objc_allocWithZone(LPImage);
  v121 = v67;
  v122 = v66;
  v71 = [v70 initWithItemProvider:v66 properties:v67 placeholderImage:v58];
  v72 = v123;
  [v123 setIcon:v71];

  result = sub_761760();
  if (!result)
  {
    isa = 0;
    v29 = v124;
    goto LABEL_66;
  }

  v74 = result & 0xFFFFFFFFFFFFFF8;
  v29 = v124;
  if (!(result >> 62))
  {
    if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_35;
    }

LABEL_61:

    isa = 0;
    goto LABEL_66;
  }

  v94 = result;
  v95 = sub_76A860();
  result = v94;
  if (!v95)
  {
    goto LABEL_61;
  }

LABEL_35:
  if ((result & 0xC000000000000001) != 0)
  {
    sub_76A770();
  }

  else
  {
    if (!*(v74 + 16))
    {
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }
  }

  v120 = v58;

  v75 = sub_7596A0();

  if (!(v75 >> 62))
  {
    v76 = *(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8));
    if (v76)
    {
      goto LABEL_40;
    }

LABEL_64:

LABEL_65:
    sub_5E400C();
    isa = sub_769450().super.isa;

    v58 = v120;
LABEL_66:
    [v72 setScreenshots:isa];

    [v72 setIsMessagesOnlyApp:sub_761730() & 1];
    if (sub_761750())
    {

      sub_765330();
      v96 = objc_allocWithZone(v64);
      v97 = sub_75DEC0();
      v98 = v58;
      v99 = [objc_allocWithZone(LPImage) initWithItemProvider:v97 properties:0 placeholderImage:0];
      [v72 setMessagesAppIcon:v99];

      v58 = v98;
    }

    result = sub_7617B0();
    if (!result)
    {
      goto LABEL_77;
    }

    v100 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
      v109 = result;
      v110 = sub_76A860();
      result = v109;
      v101 = v113;
      if (v110)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v101 = v113;
      if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_71:
        if ((result & 0xC000000000000001) != 0)
        {
          v102 = v58;
          sub_76A770();
          goto LABEL_74;
        }

        if (*(v100 + 16))
        {
          v102 = v58;

LABEL_74:

          v103 = v114;
          sub_764BD0();
          v104 = objc_allocWithZone(LPVideo);
          sub_757040(v105);
          v107 = v106;
          v108 = [v104 initWithStreamingURL:v106 hasAudio:0];

          v112(v103, v101);
          [v72 setPreviewVideo:v108];

          v58 = v102;
LABEL_77:
          v111 = v72;
          [v29 setSpecialization:v111];

          return v29;
        }

        goto LABEL_81;
      }
    }

    goto LABEL_77;
  }

  v76 = sub_76A860();
  if (!v76)
  {
    goto LABEL_64;
  }

LABEL_40:
  v125 = _swiftEmptyArrayStorage;
  result = sub_76A7C0();
  if ((v76 & 0x8000000000000000) == 0)
  {
    v77 = 0;
    do
    {
      if ((v75 & 0xC000000000000001) != 0)
      {
        sub_76A770();
      }

      else
      {
      }

      ++v77;

      sub_765330();
      v78 = objc_allocWithZone(v64);
      v79 = sub_75DEC0();
      [objc_allocWithZone(LPImage) initWithItemProvider:v79 properties:0 placeholderImage:0];

      sub_76A7A0();
      sub_76A7D0();
      sub_76A7E0();
      sub_76A7B0();
    }

    while (v76 != v77);

    v29 = v124;
    v72 = v123;
    goto LABEL_65;
  }

LABEL_82:
  __break(1u);
  return result;
}

uint64_t sub_5E3E50()
{
  v0 = sub_75AE80();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75AE90();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for ShareSheetData.Metadata.article(_:))
  {
    (*(v1 + 96))(v3, v0);
    v5 = sub_761700();
  }

  else if (v4 == enum case for ShareSheetData.Metadata.product(_:))
  {
    (*(v1 + 96))(v3, v0);
    v5 = sub_761790();
  }

  else
  {
    if (v4 != enum case for ShareSheetData.Metadata.appEvent(_:))
    {
      (*(v1 + 8))(v3, v0);
      return 0;
    }

    (*(v1 + 96))(v3, v0);
    v5 = sub_757670();
  }

  v6 = v5;

  return v6;
}

unint64_t sub_5E400C()
{
  result = qword_95D6F8;
  if (!qword_95D6F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_95D6F8);
  }

  return result;
}

void sub_5E4104(void *a1@<X0>, __int128 *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  if (a2[2])
  {

    swift_unknownObjectRelease();
    v12 = 0;
    v8 = 0;
LABEL_3:
    v10 = 0;
LABEL_10:
    v9 = 0;
LABEL_11:
    v7 = 0;
LABEL_12:
    v14 = 0uLL;
    v15 = 0uLL;
    goto LABEL_13;
  }

  if (!a3)
  {

    swift_unknownObjectRelease();
    v12 = 0;
    v8 = 0;
    goto LABEL_10;
  }

  if (!a4)
  {

    swift_unknownObjectRelease();
    v12 = 0;
    v8 = 0;
    v10 = 0;
    goto LABEL_11;
  }

  if (!a5)
  {

    swift_unknownObjectRelease();
    v12 = 0;
    goto LABEL_3;
  }

  if (!a6)
  {

    v12 = 0;
    v8 = 0;
    v10 = 0;
    v9 = 0;
    goto LABEL_12;
  }

  v14 = *a2;
  v15 = a2[1];
  v12 = a1;
LABEL_13:
  *a7 = v12;
  *(a7 + 8) = v8;
  *(a7 + 16) = v14;
  *(a7 + 32) = v15;
  *(a7 + 48) = v10;
  *(a7 + 56) = v9;
  *(a7 + 64) = v7;
}

__n128 sub_5E4298@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + qword_95D738 + 32);
  result = *(v1 + qword_95D738);
  v4 = *(v1 + qword_95D738 + 16);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 sub_5E42D0@<Q0>(uint64_t a1@<X8>)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = *(v1 + qword_95D738 + 32);
  v5 = *(v1 + qword_95D738 + 16);
  v12[0] = *(v1 + qword_95D738);
  v12[1] = v5;
  v13 = v4;
  v6 = swift_unknownObjectWeakLoadStrong();
  v7 = swift_unknownObjectWeakLoadStrong();
  v8 = swift_unknownObjectWeakLoadStrong();
  v9 = *(v1 + qword_95D748);
  swift_unknownObjectRetain();
  sub_5E4104(Strong, v12, v6, v7, v8, v9, v14);
  v10 = v14[3];
  *(a1 + 32) = v14[2];
  *(a1 + 48) = v10;
  *(a1 + 64) = v15;
  result = v14[1];
  *a1 = v14[0];
  *(a1 + 16) = result;
  return result;
}

id sub_5E43C8(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a1;
  v12 = sub_5E50B8(v8);

  return v12;
}

id sub_5E4454()
{
  sub_5E5160();
  v0 = swift_unknownObjectRetain();

  return v0;
}

id sub_5E448C()
{
  LinkPresentationProvider.deinit();
  v0 = swift_unknownObjectRetain();

  return v0;
}

uint64_t sub_5E44EC(uint64_t a1)
{
  *(v1 + qword_95D748) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (*(v1 + qword_95D758))
  {
    sub_5E42D0(v5);
    type metadata accessor for FullScreenTransitionContext();
  }

  else
  {
    *&v2 = sub_5E42D0(v5).n128_u64[0];
    if (v5[0])
    {
      [v5[8] completeTransition:{0, v2}];
    }

    type metadata accessor for FullScreenTransitionContext();
  }

  v3 = sub_76A480();
  return (*(*(v3 - 8) + 8))(v5, v3);
}

void sub_5E4624(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  sub_5E44EC(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_5E46C4(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + qword_95D760;
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  return result;
}

void sub_5E46E0(void *a1)
{
  v3 = swift_isaMask & *v1;
  v4 = [a1 view];
  [a1 translationInView:v4];
  v6 = v5;
  v8 = v7;

  if ([a1 state] == &dword_0 + 1)
  {
    v9 = (v1 + qword_95D760);
    *v9 = v6;
    v9[1] = v8;
    *(v9 + 16) = 0;
    *(v1 + qword_95D758) = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      [Strong dismissViewControllerAnimated:1 completion:0];
    }
  }

  v12 = (v1 + qword_95D760);
  if ((*(v1 + qword_95D760 + 16) & 1) == 0 && *(v1 + qword_95D748))
  {
    v13 = *v12;
    v58 = v12[1];
    v14 = [swift_unknownObjectRetain() containerView];
    [v14 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v67.origin.x = v16;
    v67.origin.y = v18;
    v67.size.width = v20;
    v67.size.height = v22;
    MidX = CGRectGetMidX(v67);
    v68.origin.x = v16;
    v68.origin.y = v18;
    v68.size.width = v20;
    v68.size.height = v22;
    MidY = CGRectGetMidY(v68);
    v25 = v8 - v58;
    v26 = v6 - v13 + MidX;
    v27 = v25 + MidY;
    v28 = [a1 state];
    if (v28 != &dword_0 + 3)
    {
      if (v28 == &dword_0 + 2)
      {
        hypot(MidX - v26, MidY - v27);
        v29 = swift_unknownObjectUnownedLoadStrong();
        [v29 setCenter:{v26, v27}];

        sub_BD88(&qword_941C10);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_77B6D0;
        aBlock = sub_7695F0();
        v60 = v31;
        v66._countAndFlagsBits = 0x656C706D6F632025;
        v66._object = 0xEA00000000006574;
        sub_769370(v66);
        v32 = aBlock;
        v33 = v60;
        *(v30 + 56) = &type metadata for String;
        *(v30 + 32) = v32;
        *(v30 + 40) = v33;
        sub_76AA10();
      }

      type metadata accessor for FullScreenTransitionContext();
      v34 = sub_76A480();
      (*(*(v34 - 8) + 8))(v65, v34);
      swift_unknownObjectRelease();
      return;
    }

    v35 = [a1 view];
    [a1 velocityInView:v35];
    v37 = v36;
    v39 = v38;

    v40 = hypot(v37, v39) / 500.0;
    v41 = fabs(v37);
    v42 = fabs(v39);
    v43 = v41 * v40;
    v44 = v42 * v40;
    if (v43 > v44)
    {
      v44 = v43;
    }

    if (v44 > 50.0)
    {
      v44 = 50.0;
    }

    if (v37 == 0.0 && v39 == 0.0)
    {
      v45 = 0.0;
      if (v42 >= v41)
      {
LABEL_17:
        v46 = v44;
        v44 = v44 * v45;
LABEL_26:
        if (v44 > v46)
        {
          v49 = v44;
        }

        else
        {
          v49 = v46;
        }

        v50 = v49 / 50.0 * 0.2;
        v51 = v26 + v44;
        v52 = v27 + v46;
        v53 = objc_opt_self();
        v54 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v55 = swift_allocObject();
        *(v55 + 16) = *(v3 + 80);
        *(v55 + 24) = *(v3 + 88);
        *(v55 + 32) = v54;
        *(v55 + 40) = v51;
        *(v55 + 48) = v52;
        v63 = sub_5E5090;
        v64 = v55;
        aBlock = _NSConcreteStackBlock;
        v60 = 1107296256;
        v61 = sub_23F0CC;
        v62 = &unk_8998E0;
        v56 = _Block_copy(&aBlock);

        [v53 animateWithDuration:0x20000 delay:v56 options:0 animations:v50 completion:0.0];
        swift_unknownObjectRelease();
        _Block_release(v56);
        type metadata accessor for FullScreenTransitionContext();
        v57 = sub_76A480();
        (*(*(v57 - 8) + 8))(v65, v57);
        return;
      }
    }

    else
    {
      if (v41 > v42)
      {
        v47 = v41;
      }

      else
      {
        v47 = v42;
      }

      v48 = v42 < v41;
      if (v42 < v41)
      {
        v41 = v42;
      }

      v45 = v41 / v47;
      if (!v48)
      {
        goto LABEL_17;
      }
    }

    v46 = v44 * v45;
    goto LABEL_26;
  }
}

void sub_5E4C50(double a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectUnownedLoadStrong();

    [v6 setCenter:{a1, a2}];
  }
}

void sub_5E4CE0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_5E46E0(v4);
}

id sub_5E4D88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenTransitionManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_5E4DF8(uint64_t a1)
{
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectUnownedDestroy();

  return swift_unknownObjectRelease();
}

unint64_t sub_5E4EB0()
{
  result = qword_95D848[0];
  if (!qword_95D848[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_95D848);
  }

  return result;
}

void sub_5E4F04(SEL *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  v5 = [Strong view];

  if (!v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (!*(v1 + qword_95D740))
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v5 *a1];
}

void sub_5E4FBC()
{
  sub_5E4F04(&selRef_removeGestureRecognizer_);
  swift_unknownObjectWeakAssign();
  sub_5E4F04(&selRef_addGestureRecognizer_);
}

uint64_t sub_5E5020()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_5E5058()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_5E50A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_5E50B8(void *a1)
{
  if (!swift_dynamicCastUnknownClass())
  {
    return 0;
  }

  swift_unknownObjectWeakAssign();
  v3 = a1;
  sub_5E4FBC();

  *(v1 + qword_95D728) = 1;
  swift_unknownObjectRetain();
  return v1;
}

uint64_t sub_5E5160()
{
  result = v0;
  *(v0 + qword_95D728) = 0;
  return result;
}

uint64_t sub_5E51B4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_5E51F0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_5E5238(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_5E52E0()
{
  *&v72 = sub_BD88(&qword_95C4F8);
  v67 = *(v72 - 8);
  __chkstk_darwin(v72);
  v66 = &v63 - v0;
  v1 = sub_766CA0();
  v71 = *(v1 - 8);
  __chkstk_darwin(v1);
  v83 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v81 = &v63 - v4;
  v82 = sub_766D70();
  v70 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_766AF0();
  v78 = *(v6 - 8);
  v79 = v6;
  __chkstk_darwin(v6);
  v65 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v69 = &v63 - v9;
  v77 = sub_767030();
  v84 = *(v77 - 8);
  __chkstk_darwin(v77);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v63 - v13;
  __chkstk_darwin(v15);
  v17 = &v63 - v16;
  __chkstk_darwin(v18);
  v68 = &v63 - v19;
  v20 = sub_7666D0();
  v75 = *(v20 - 8);
  v76 = v20;
  __chkstk_darwin(v20);
  v74 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_7656C0();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75B640();
  sub_5E5EB8(&qword_95D8F0, &type metadata accessor for ProductPageLink);
  result = sub_75C750();
  v27 = v85[0];
  if (v85[0])
  {
    v64 = v1;
    swift_getKeyPath();
    sub_75C7B0();

    v28 = v85[0];
    v73 = v27;
    sub_75B620();
    if (v29)
    {
      v30 = sub_759920();

      v31 = v30;
      [v31 size];
      _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();
      sub_769D60();
    }

    if (qword_93DD30 != -1)
    {
      swift_once();
    }

    v32 = sub_BD88(&qword_940AD0);
    sub_BE38(v32, qword_99FF80);
    sub_7592A0();
    swift_getKeyPath();
    sub_75C7B0();

    sub_765630();
    (*(v23 + 8))(v25, v22);
    if (sub_7699E0())
    {
      v33 = v76;
      v34 = v77;
      v35 = v84;
      v36 = v75;
      v37 = v74;
      if (qword_93D768 != -1)
      {
        swift_once();
      }

      v38 = qword_99EE30;
    }

    else
    {
      v33 = v76;
      v34 = v77;
      v35 = v84;
      v36 = v75;
      v37 = v74;
      if (qword_93D760 != -1)
      {
        swift_once();
      }

      v38 = qword_99EE18;
    }

    v39 = sub_BE38(v33, v38);
    (*(v36 + 16))(v37, v39, v33);
    sub_767020();
    sub_766FF0();
    v42 = *(v35 + 8);
    v40 = v35 + 8;
    v41 = v42;
    v42(v11, v34);
    if (qword_93DD38 != -1)
    {
      swift_once();
    }

    v43 = sub_BD88(&unk_94B6E0);
    sub_BE38(v43, qword_99FF98);
    sub_7592A0();
    sub_767010();
    v41(v14, v34);
    v44 = v41;
    v63 = v41;
    v45 = v68;
    sub_767000();
    v44(v17, v34);
    v46 = v69;
    sub_766AE0();
    sub_766FA0();
    v84 = v40;
    sub_B170(v85, v85[3]);
    sub_766B50();
    sub_766AC0();
    sub_BEB8(v85);
    sub_766FE0();
    sub_766A70();
    sub_766FC0();
    sub_766A50();
    sub_766FD0();
    sub_766A60();
    sub_766FB0();
    sub_766A40();
    sub_75B630();
    (*(v78 + 16))(v65, v46, v79);
    sub_766D50();
    sub_766D80();
    v47 = v66;
    sub_5A70C8(v66);
    v48 = v72;
    sub_7592A0();
    v49 = *(v67 + 8);
    v49(v47, v48);
    sub_5A70BC(v47);
    sub_7592A0();
    v49(v47, v48);
    sub_7671D0();
    sub_BD88(&unk_93F5C0);
    v50 = swift_allocObject();
    v72 = xmmword_77D9F0;
    *(v50 + 16) = xmmword_77D9F0;
    *(v50 + 32) = v28;
    v51 = v28;
    v52 = sub_7671E0();
    sub_7665A0();

    v53 = swift_allocObject();
    *(v53 + 16) = v72;
    *(v53 + 32) = v51;
    v54 = v51;
    v55 = sub_7671E0();
    v56 = v81;
    v57 = v64;
    sub_7666E0();

    v58 = swift_allocObject();
    *(v58 + 16) = v72;
    *(v58 + 32) = v54;
    v59 = v54;
    v60 = sub_7671E0();
    v61 = v83;
    sub_7666E0();

    v62 = *(v71 + 8);
    v62(v61, v57);
    v62(v56, v57);
    (*(v70 + 8))(v80, v82);
    (*(v78 + 8))(v46, v79);
    v63(v45, v77);
    return (*(v75 + 8))(v74, v76);
  }

  return result;
}

uint64_t sub_5E5EB8(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_5E5F08(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) == 1)
  {
    if (v2 == 0.0)
    {
      if (v3 == 0.0)
      {
        v6 = *(a2 + 8);
      }

      else
      {
        LOBYTE(v6) = 0;
      }

      if (v6)
      {
        return 1;
      }
    }

    else if (*&v2 == 1)
    {
      if (*&v3 == 1)
      {
        v4 = *(a2 + 8);
      }

      else
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else
    {
      if (*&v3 > 1uLL)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        return 1;
      }
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
    return v2 == v3;
  }

  return 0;
}

void sub_5E5F88()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider19InstallProgressView_state);
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider19InstallProgressView_state + 8) == 1)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v2 = [objc_allocWithZone(type metadata accessor for InstallProgressLayer()) init];
        sub_5E61A4(v2);
        v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider19InstallProgressView_progressLayer);
        if (!v3)
        {
          return;
        }

        v4 = v3;
        v5 = sub_769210();
        v6 = [v4 animationForKey:v5];

        if (v6)
        {

          v7 = sub_769210();
          [v4 removeAnimationForKey:v7];
        }

        v8 = sub_622900();
        v14 = sub_769210();
        [v4 addAnimation:v8 forKey:v14];
      }

      else
      {
        v13 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider19InstallProgressView_progressLayer);
        if (!v13)
        {
          return;
        }

        v14 = v13;
        sub_6216C4();
      }

      v12 = v14;
    }

    else
    {
      v11 = OBJC_IVAR____TtC18ASMessagesProvider19InstallProgressView_progressLayer;
      v12 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider19InstallProgressView_progressLayer);
      if (v12)
      {
        [v12 removeFromSuperlayer];
        v12 = *(v0 + v11);
      }

      *(v0 + v11) = 0;
    }
  }

  else
  {
    v9 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider19InstallProgressView_progressLayer);
    v10 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider19InstallProgressView_state);

    [v9 setProgress:v10];
  }
}

void sub_5E61A4(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider19InstallProgressView_progressLayer;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider19InstallProgressView_progressLayer];
  if (v4)
  {
    [v4 removeFromSuperlayer];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    v7 = objc_opt_self();
    v8 = v6;
    v9 = [v7 mainScreen];
    [v9 scale];
    v11 = v10;

    [v8 setContentsScale:v11];
    v12 = [v1 layer];
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    [v8 setFrame:{v14, v16, v18, v20}];
    v21 = [v1 layer];
    [v21 addSublayer:v8];
  }
}

id sub_5E6338(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18ASMessagesProvider19InstallProgressView_state];
  *v9 = 0;
  v9[8] = 1;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider19InstallProgressView_progressLayer] = 0;
  v10 = &v4[OBJC_IVAR____TtC18ASMessagesProvider19InstallProgressView_completionHandler];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider19InstallProgressView_progress] = 0;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for InstallProgressView();
  v11 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 clearColor];
  [v13 setBackgroundColor:v14];

  return v13;
}

void sub_5E65E8(double a1)
{
  v3 = sub_768380();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7683C0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7683E0();
  __chkstk_darwin(v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v39 - v17;
  v19 = &v1[OBJC_IVAR____TtC18ASMessagesProvider19InstallProgressView_state];
  v20 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider19InstallProgressView_state];
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider19InstallProgressView_state + 8] == 1 && v20 > 1)
  {
    return;
  }

  if (a1 == 0.0)
  {
    v22 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider19InstallProgressView_progress];
    if (v22 == 1.0)
    {
      v23 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider19InstallProgressView_completionHandler];
      if (v23)
      {

        v23(v24);

        sub_F704(v23);
      }

      return;
    }

    if (v22 > 0.0)
    {
      v25 = objc_opt_self();
      [v25 begin];
      v26 = swift_allocObject();
      *(v26 + 16) = v1;
      v49 = sub_5E6F44;
      v50 = v26;
      aBlock = _NSConcreteStackBlock;
      v46 = 1107296256;
      v47 = sub_23F0CC;
      v48 = &unk_899A68;
      v27 = _Block_copy(&aBlock);
      v28 = v1;

      [v25 setCompletionBlock:v27];
      _Block_release(v27);
      *v19 = 1;
      v19[8] = 1;
      sub_5E5F88();
      [v25 commit];
      return;
    }
  }

  if (v20 == 1)
  {
    v29 = v1[OBJC_IVAR____TtC18ASMessagesProvider19InstallProgressView_state + 8];
  }

  else
  {
    v29 = 0;
  }

  if ((v29 & 1) == 0)
  {
    v43 = v8;
    v44 = v4;
    v30 = OBJC_IVAR____TtC18ASMessagesProvider19InstallProgressView_progress;
    *v19 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider19InstallProgressView_progress];
    v19[8] = 0;
    v31 = v15;
    v32 = v16;
    sub_5E5F88();
    v33 = v31;
    v34 = v44;
    if (*&v1[v30] >= 1.0)
    {
      v35 = v33;
      v42 = v33;
      sub_12EA98();
      v39 = v1;
      v41 = sub_769970();
      sub_7683D0();
      sub_768450();
      v40 = *(v32 + 8);
      v40(v13, v35);
      v36 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v49 = sub_5E6EEC;
      v50 = v36;
      aBlock = _NSConcreteStackBlock;
      v46 = 1107296256;
      v47 = sub_23F0CC;
      v48 = &unk_899A18;
      v37 = _Block_copy(&aBlock);

      sub_7683A0();
      aBlock = _swiftEmptyArrayStorage;
      sub_4C81C();
      sub_BD88(&qword_940350);
      sub_4C874();
      sub_76A5A0();
      v38 = v41;
      sub_769930();
      _Block_release(v37);

      (*(v34 + 8))(v6, v3);
      (*(v43 + 8))(v10, v7);
      v40(v18, v42);
    }
  }
}

id sub_5E6B4C()
{
  v0 = objc_opt_self();
  [v0 begin];
  v1 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  aBlock[4] = sub_5E6F7C;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_899A90;
  v3 = _Block_copy(aBlock);

  [v0 setCompletionBlock:v3];
  _Block_release(v3);
  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = v4 + OBJC_IVAR____TtC18ASMessagesProvider19InstallProgressView_state;
    *v6 = 2;
    *(v6 + 8) = 1;
    sub_5E5F88();
  }

  return [v0 commit];
}

void sub_5E6CC0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider19InstallProgressView_completionHandler);
    v2 = Strong;
    sub_F714(v1);

    if (v1)
    {
      v1();
      sub_F704(v1);
    }
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = v3 + OBJC_IVAR____TtC18ASMessagesProvider19InstallProgressView_state;
    *v5 = 0;
    *(v5 + 8) = 1;
    sub_5E5F88();
  }
}

id sub_5E6D90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InstallProgressView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t storeEnumTagSinglePayload for InstallProgressView.ProgressState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_5E6E68(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_5E6E84(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_5E6EB4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_5E6EF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_5E6F0C()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_5E6F44()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC18ASMessagesProvider19InstallProgressView_state;
  *v1 = 0;
  *(v1 + 8) = 0;
  sub_5E5F88();
}

uint64_t sub_5E6F94@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_7664A0();
  v40 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __chkstk_darwin(v7);
  v9 = (v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_7666D0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93D468 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v10, qword_99E548);
  v42 = v11;
  v16 = *(v11 + 16);
  v15 = v11 + 16;
  v17 = v16;
  v16(v13, v14, v10);
  v43 = v9;
  sub_5E7754(v9);
  v18 = sub_7699D0();
  sub_396E8();
  if (v18)
  {
    v19 = sub_769FD0();
  }

  else
  {
    v19 = sub_769FF0();
  }

  v41 = v19;
  v17(a2 + v7[6], v13, v10);
  v38 = v17;
  sub_5EDD90(a1);
  v17(v6, v13, v10);
  v37 = enum case for FontSource.useCase(_:);
  v20 = v40;
  v36 = *(v40 + 104);
  v36(v6);
  v46 = v4;
  v47 = &protocol witness table for FontSource;
  v21 = sub_B1B4(v45);
  v44 = v10;
  v35[1] = v15;
  v22 = *(v20 + 16);
  v22(v21, v6, v4);
  sub_766CB0();
  v39 = v13;
  v23 = *(v20 + 8);
  v23(v6, v4);
  v38(v6, v13, v44);
  (v36)(v6, v37, v4);
  v46 = v4;
  v47 = &protocol witness table for FontSource;
  v24 = sub_B1B4(v45);
  v22(v24, v6, v4);
  sub_766CB0();
  v23(v6, v4);
  v25 = v7[9];
  v26 = (a2 + v7[12]);
  v27 = sub_766CA0();
  v26[3] = v27;
  v26[4] = &protocol witness table for StaticDimension;
  v28 = sub_B1B4(v26);
  v29 = *(*(v27 - 8) + 16);
  v30 = v43;
  v29(v28, v43 + v25, v27);
  v31 = v7[10];
  v32 = (a2 + v7[13]);
  v32[3] = v27;
  v32[4] = &protocol witness table for StaticDimension;
  v33 = sub_B1B4(v32);
  v29(v33, (v30 + v31), v27);
  sub_C1DBC(v30);
  result = (*(v42 + 8))(v39, v44);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = v41;
  *(a2 + v7[7]) = 0;
  *(a2 + v7[8]) = 1098907648;
  *(a2 + v7[11]) = 0;
  return result;
}

uint64_t sub_5E7420@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_7664A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v29 = a1;
  }

  else
  {
    sub_396E8();
    v29 = sub_76A0F0();
  }

  v8 = qword_93D440;
  v9 = a1;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = sub_7666D0();
  v11 = sub_BE38(v10, qword_99E4D0);
  v28 = v11;
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v13 = v12[6];
  v14 = *(v10 - 8);
  v15 = *(v14 + 16);
  v27 = v15;
  v24[1] = v14 + 16;
  v15(a2 + v13, v11, v10);
  v15(v7, v11, v10);
  v26 = enum case for FontSource.useCase(_:);
  v25 = v5[13];
  v25(v7);
  v31 = v4;
  v32 = &protocol witness table for FontSource;
  v16 = sub_B1B4(v30);
  v17 = v5[2];
  v17(v16, v7, v4);
  sub_766CB0();
  v18 = v5[1];
  v18(v7, v4);
  v27(v7, v28, v10);
  (v25)(v7, v26, v4);
  v31 = v4;
  v32 = &protocol witness table for FontSource;
  v19 = sub_B1B4(v30);
  v17(v19, v7, v4);
  sub_766CB0();
  v18(v7, v4);
  v20 = (a2 + v12[12]);
  v21 = sub_766970();
  v20[3] = v21;
  v20[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v20);
  sub_766960();
  v22 = (a2 + v12[13]);
  v22[3] = v21;
  v22[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v22);
  result = sub_766960();
  a2[1] = 0;
  a2[2] = 0;
  *a2 = v29;
  *(a2 + v12[7]) = 0;
  *(a2 + v12[8]) = 1077936128;
  *(a2 + v12[11]) = 1098907648;
  return result;
}

uint64_t sub_5E7754@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_7664A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_396E8();
  v25 = sub_769FF0();
  if (qword_93D460 != -1)
  {
    swift_once();
  }

  v6 = sub_7666D0();
  v7 = sub_BE38(v6, qword_99E530);
  v24 = v7;
  v8 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v9 = v8[6];
  v10 = *(v6 - 8);
  v11 = *(v10 + 16);
  v23 = v11;
  v20[1] = v10 + 16;
  v11(a1 + v9, v7, v6);
  v11(v5, v7, v6);
  v22 = enum case for FontSource.useCase(_:);
  v21 = v3[13];
  v21(v5);
  v27 = v2;
  v28 = &protocol witness table for FontSource;
  v12 = sub_B1B4(v26);
  v13 = v3[2];
  v13(v12, v5, v2);
  sub_766CB0();
  v14 = v3[1];
  v14(v5, v2);
  v23(v5, v24, v6);
  (v21)(v5, v22, v2);
  v27 = v2;
  v28 = &protocol witness table for FontSource;
  v15 = sub_B1B4(v26);
  v13(v15, v5, v2);
  sub_766CB0();
  v14(v5, v2);
  v16 = (a1 + v8[12]);
  v17 = sub_766970();
  v16[3] = v17;
  v16[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v16);
  sub_766960();
  v18 = (a1 + v8[13]);
  v18[3] = v17;
  v18[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v18);
  result = sub_766960();
  a1[1] = 0;
  a1[2] = 0;
  *a1 = v25;
  *(a1 + v8[7]) = 0;
  *(a1 + v8[8]) = 1098907648;
  *(a1 + v8[11]) = 0;
  return result;
}

uint64_t sub_5E7A64()
{
  v0 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_161DC(v0, qword_9A0148);
  v1 = sub_BE38(v0, qword_9A0148);
  return sub_5E7420(0, v1);
}

uint64_t sub_5E7AB8()
{
  v0 = sub_7664A0();
  v37 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_766CA0();
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v39 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v42 = &v29 - v6;
  v7 = sub_7666D0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_161DC(v11, qword_9A0160);
  v38 = v11;
  v12 = sub_BE38(v11, qword_9A0160);
  sub_396E8();
  v36 = sub_769FD0();
  v13 = sub_769240();
  v34 = v14;
  v35 = v13;
  if (qword_93D440 != -1)
  {
    swift_once();
  }

  v15 = sub_BE38(v7, qword_99E4D0);
  v43 = v7;
  v16 = *(v8 + 16);
  v33 = v10;
  v16(v10, v15, v7);
  v16(v2, v15, v7);
  v31 = enum case for FontSource.useCase(_:);
  v17 = v37;
  v30 = *(v37 + 104);
  v30(v2);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v18 = sub_B1B4(&v47);
  v32 = v8;
  v29 = *(v17 + 16);
  v29(v18, v2, v0);
  sub_766CB0();
  v19 = *(v17 + 8);
  v19(v2, v0);
  v16(v2, v15, v43);
  (v30)(v2, v31, v0);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v20 = sub_B1B4(&v47);
  v29(v20, v2, v0);
  v21 = v39;
  sub_766CB0();
  v19(v2, v0);
  v22 = sub_766970();
  v48 = v22;
  v49 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v47);
  sub_766960();
  v45 = v22;
  v46 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v44);
  sub_766960();
  v23 = v35;
  *v12 = v36;
  *(v12 + 1) = v23;
  v24 = v33;
  *(v12 + 2) = v34;
  v25 = v38;
  (*(v32 + 32))(&v12[v38[6]], v24, v43);
  *&v12[v25[7]] = 0;
  *&v12[v25[8]] = 1077936128;
  v26 = v41;
  v27 = *(v40 + 32);
  v27(&v12[v25[9]], v42, v41);
  v27(&v12[v25[10]], v21, v26);
  *&v12[v25[11]] = 1098907648;
  sub_34698(&v47, &v12[v25[12]]);
  return sub_34698(&v44, &v12[v25[13]]);
}

uint64_t sub_5E7FA0()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = sub_7666D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_161DC(v12, qword_9A0178);
  v32 = v12;
  v13 = sub_BE38(v12, qword_9A0178);
  sub_396E8();
  v31 = sub_769FD0();
  if (qword_93D448 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v8, qword_99E4E8);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_B1B4(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  sub_766CB0();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_B1B4(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  sub_766CB0();
  v17(v3, v0);
  v20 = sub_766970();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v41);
  sub_766960();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v38);
  sub_766960();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 0;
  sub_34698(&v41, &v13[v21[12]]);
  return sub_34698(&v38, &v13[v21[13]]);
}

uint64_t sub_5E844C()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = sub_7666D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_161DC(v12, qword_9A0190);
  v32 = v12;
  v13 = sub_BE38(v12, qword_9A0190);
  sub_396E8();
  v31 = sub_769FF0();
  if (qword_93D450 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v8, qword_99E500);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_B1B4(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  sub_766CB0();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_B1B4(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  sub_766CB0();
  v17(v3, v0);
  v20 = sub_766970();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v41);
  sub_766960();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v38);
  sub_766960();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 0;
  sub_34698(&v41, &v13[v21[12]]);
  return sub_34698(&v38, &v13[v21[13]]);
}

uint64_t sub_5E88FC()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v28 = &v23 - v7;
  v8 = sub_7666D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v27 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_161DC(v11, qword_9A01A8);
  v12 = sub_BE38(v11, qword_9A01A8);
  sub_396E8();
  v23 = sub_769FF0();
  if (qword_93D458 != -1)
  {
    swift_once();
  }

  v13 = sub_BE38(v8, qword_99E518);
  v14 = *(v9 + 16);
  v14(v27, v13, v8);
  v14(v3, v13, v8);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v15 = sub_B1B4(&v32);
  (*(v1 + 16))(v15, v3, v0);
  sub_766CB0();
  (*(v1 + 8))(v3, v0);
  if (qword_93DCE0 != -1)
  {
    swift_once();
  }

  v16 = v26;
  v17 = sub_BE38(v26, qword_99FDE8);
  v19 = v24;
  v18 = v25;
  (*(v25 + 16))(v24, v17, v16);
  v20 = sub_766970();
  v33 = v20;
  v34 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v32);
  sub_766960();
  v30 = v20;
  v31 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v29);
  sub_766960();
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = v23;
  (*(v9 + 32))(&v12[v11[6]], v27, v8);
  *&v12[v11[7]] = 0;
  *&v12[v11[8]] = 1090519040;
  v21 = *(v18 + 32);
  v21(&v12[v11[9]], v28, v16);
  v21(&v12[v11[10]], v19, v16);
  *&v12[v11[11]] = 0;
  sub_34698(&v32, &v12[v11[12]]);
  return sub_34698(&v29, &v12[v11[13]]);
}

uint64_t sub_5E8D54()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v28 = &v23 - v7;
  v8 = sub_7666D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v27 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_161DC(v11, qword_9A01C0);
  v12 = sub_BE38(v11, qword_9A01C0);
  sub_396E8();
  v23 = sub_769FD0();
  if (qword_93D470 != -1)
  {
    swift_once();
  }

  v13 = sub_BE38(v8, qword_99E560);
  v14 = *(v9 + 16);
  v14(v27, v13, v8);
  v14(v3, v13, v8);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v15 = sub_B1B4(&v32);
  (*(v1 + 16))(v15, v3, v0);
  sub_766CB0();
  (*(v1 + 8))(v3, v0);
  if (qword_93DD20 != -1)
  {
    swift_once();
  }

  v16 = v26;
  v17 = sub_BE38(v26, qword_99FEA8);
  v19 = v24;
  v18 = v25;
  (*(v25 + 16))(v24, v17, v16);
  v20 = sub_766970();
  v33 = v20;
  v34 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v32);
  sub_766960();
  v30 = v20;
  v31 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v29);
  sub_766960();
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = v23;
  (*(v9 + 32))(&v12[v11[6]], v27, v8);
  *&v12[v11[7]] = 0;
  *&v12[v11[8]] = 1090519040;
  v21 = *(v18 + 32);
  v21(&v12[v11[9]], v28, v16);
  v21(&v12[v11[10]], v19, v16);
  *&v12[v11[11]] = 1102053376;
  sub_34698(&v32, &v12[v11[12]]);
  return sub_34698(&v29, &v12[v11[13]]);
}

uint64_t sub_5E91B0()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v28 = &v23 - v7;
  v8 = sub_7666D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v27 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_161DC(v11, qword_9A01D8);
  v12 = sub_BE38(v11, qword_9A01D8);
  sub_396E8();
  v23 = sub_769FD0();
  if (qword_93D470 != -1)
  {
    swift_once();
  }

  v13 = sub_BE38(v8, qword_99E560);
  v14 = *(v9 + 16);
  v14(v27, v13, v8);
  v14(v3, v13, v8);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v15 = sub_B1B4(&v32);
  (*(v1 + 16))(v15, v3, v0);
  sub_766CB0();
  (*(v1 + 8))(v3, v0);
  if (qword_93DD20 != -1)
  {
    swift_once();
  }

  v16 = v26;
  v17 = sub_BE38(v26, qword_99FEA8);
  v19 = v24;
  v18 = v25;
  (*(v25 + 16))(v24, v17, v16);
  v20 = sub_766970();
  v33 = v20;
  v34 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v32);
  sub_766960();
  v30 = v20;
  v31 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v29);
  sub_766960();
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = v23;
  (*(v9 + 32))(&v12[v11[6]], v27, v8);
  *&v12[v11[7]] = 0;
  *&v12[v11[8]] = 1090519040;
  v21 = *(v18 + 32);
  v21(&v12[v11[9]], v28, v16);
  v21(&v12[v11[10]], v19, v16);
  *&v12[v11[11]] = 1102053376;
  sub_34698(&v32, &v12[v11[12]]);
  return sub_34698(&v29, &v12[v11[13]]);
}

uint64_t sub_5E960C()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = sub_7666D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_161DC(v12, qword_9A01F0);
  v32 = v12;
  v13 = sub_BE38(v12, qword_9A01F0);
  sub_396E8();
  v31 = sub_769FD0();
  if (qword_93D470 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v8, qword_99E560);
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v27 = enum case for FontSource.useCase(_:);
  v36 = v8;
  v28 = v1[13];
  v28(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_B1B4(&v41);
  v29 = v9;
  v17 = v1[2];
  v17(v16, v3, v0);
  sub_766CB0();
  v26 = v1[1];
  v26(v3, v0);
  v15(v3, v14, v36);
  (v28)(v3, v27, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_B1B4(&v41);
  v17(v18, v3, v0);
  v19 = v33;
  sub_766CB0();
  v26(v3, v0);
  v20 = sub_766970();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v41);
  sub_766960();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v38);
  sub_766960();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 1102053376;
  sub_34698(&v41, &v13[v21[12]]);
  return sub_34698(&v38, &v13[v21[13]]);
}

uint64_t sub_5E9ADC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_7664A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_766CA0();
  v40 = *(v7 - 8);
  v41 = v7;
  __chkstk_darwin(v7);
  v39 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = sub_7666D0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v42 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_161DC(v15, a2);
  v16 = sub_BE38(v15, a2);
  sub_396E8();
  v38 = sub_769FD0();
  if (qword_93D470 != -1)
  {
    swift_once();
  }

  v17 = sub_BE38(v12, qword_99E560);
  v37 = v13;
  v18 = *(v13 + 16);
  v18(v42, v17, v12);
  v18(v6, v17, v12);
  v19 = v4[13];
  v34 = enum case for FontSource.useCase(_:);
  v33 = v19;
  v19(v6);
  v47 = v3;
  v48 = &protocol witness table for FontSource;
  v20 = sub_B1B4(&v46);
  v36 = v12;
  v32 = v4[2];
  v32(v20, v6, v3);
  v35 = v11;
  sub_766CB0();
  v31 = v4[1];
  v31(v6, v3);
  if (qword_93D450 != -1)
  {
    swift_once();
  }

  v21 = v36;
  v22 = sub_BE38(v36, qword_99E500);
  v18(v6, v22, v21);
  v33(v6, v34, v3);
  v47 = v3;
  v48 = &protocol witness table for FontSource;
  v23 = sub_B1B4(&v46);
  v32(v23, v6, v3);
  v24 = v39;
  sub_766CB0();
  v31(v6, v3);
  v25 = sub_766970();
  v47 = v25;
  v48 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v46);
  sub_766960();
  v44 = v25;
  v45 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v43);
  sub_766960();
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  v26 = v37;
  *v16 = v38;
  (*(v26 + 32))(&v16[v15[6]], v42, v21);
  *&v16[v15[7]] = 0;
  *&v16[v15[8]] = 1090519040;
  v27 = v41;
  v28 = *(v40 + 32);
  v28(&v16[v15[9]], v35, v41);
  v28(&v16[v15[10]], v24, v27);
  *&v16[v15[11]] = 1102053376;
  sub_34698(&v46, &v16[v15[12]]);
  return sub_34698(&v43, &v16[v15[13]]);
}

uint64_t sub_5E9FE0()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v28 = &v23 - v7;
  v8 = sub_7666D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v27 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_161DC(v11, qword_9A0238);
  v12 = sub_BE38(v11, qword_9A0238);
  sub_396E8();
  v23 = sub_769FD0();
  if (qword_93D470 != -1)
  {
    swift_once();
  }

  v13 = sub_BE38(v8, qword_99E560);
  v14 = *(v9 + 16);
  v14(v27, v13, v8);
  v14(v3, v13, v8);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v15 = sub_B1B4(&v32);
  (*(v1 + 16))(v15, v3, v0);
  sub_766CB0();
  (*(v1 + 8))(v3, v0);
  if (qword_93DCE0 != -1)
  {
    swift_once();
  }

  v16 = v26;
  v17 = sub_BE38(v26, qword_99FDE8);
  v19 = v24;
  v18 = v25;
  (*(v25 + 16))(v24, v17, v16);
  v20 = sub_766970();
  v33 = v20;
  v34 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v32);
  sub_766960();
  v30 = v20;
  v31 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v29);
  sub_766960();
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = v23;
  (*(v9 + 32))(&v12[v11[6]], v27, v8);
  *&v12[v11[7]] = 0;
  *&v12[v11[8]] = 1090519040;
  v21 = *(v18 + 32);
  v21(&v12[v11[9]], v28, v16);
  v21(&v12[v11[10]], v19, v16);
  *&v12[v11[11]] = 1102053376;
  sub_34698(&v32, &v12[v11[12]]);
  return sub_34698(&v29, &v12[v11[13]]);
}

uint64_t sub_5EA440()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v28 = &v23 - v7;
  v8 = sub_7666D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v27 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_161DC(v11, qword_9A0250);
  v12 = sub_BE38(v11, qword_9A0250);
  sub_396E8();
  v23 = sub_769FD0();
  if (qword_93D470 != -1)
  {
    swift_once();
  }

  v13 = sub_BE38(v8, qword_99E560);
  v14 = *(v9 + 16);
  v14(v27, v13, v8);
  v14(v3, v13, v8);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v15 = sub_B1B4(&v32);
  (*(v1 + 16))(v15, v3, v0);
  sub_766CB0();
  (*(v1 + 8))(v3, v0);
  if (qword_93DCE0 != -1)
  {
    swift_once();
  }

  v16 = v26;
  v17 = sub_BE38(v26, qword_99FDE8);
  v19 = v24;
  v18 = v25;
  (*(v25 + 16))(v24, v17, v16);
  v20 = sub_766970();
  v33 = v20;
  v34 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v32);
  sub_766960();
  v30 = v20;
  v31 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v29);
  sub_766960();
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = v23;
  (*(v9 + 32))(&v12[v11[6]], v27, v8);
  *&v12[v11[7]] = 0;
  *&v12[v11[8]] = 1090519040;
  v21 = *(v18 + 32);
  v21(&v12[v11[9]], v28, v16);
  v21(&v12[v11[10]], v19, v16);
  *&v12[v11[11]] = 1102053376;
  sub_34698(&v32, &v12[v11[12]]);
  return sub_34698(&v29, &v12[v11[13]]);
}

uint64_t sub_5EA89C()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = sub_7666D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_161DC(v12, qword_9A0268);
  v32 = v12;
  v13 = sub_BE38(v12, qword_9A0268);
  sub_396E8();
  v31 = sub_769FD0();
  if (qword_93D470 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v8, qword_99E560);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_B1B4(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  sub_766CB0();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_B1B4(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  sub_766CB0();
  v17(v3, v0);
  v20 = sub_766970();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v41);
  sub_766960();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v38);
  sub_766960();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 1102053376;
  sub_34698(&v41, &v13[v21[12]]);
  return sub_34698(&v38, &v13[v21[13]]);
}

uint64_t sub_5EAD4C()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v28 = &v23 - v7;
  v8 = sub_7666D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v27 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_161DC(v11, qword_9A0280);
  v12 = sub_BE38(v11, qword_9A0280);
  sub_396E8();
  v23 = sub_769FD0();
  if (qword_93D470 != -1)
  {
    swift_once();
  }

  v13 = sub_BE38(v8, qword_99E560);
  v14 = *(v9 + 16);
  v14(v27, v13, v8);
  v14(v3, v13, v8);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v15 = sub_B1B4(&v32);
  (*(v1 + 16))(v15, v3, v0);
  sub_766CB0();
  (*(v1 + 8))(v3, v0);
  if (qword_93DCE0 != -1)
  {
    swift_once();
  }

  v16 = v26;
  v17 = sub_BE38(v26, qword_99FDE8);
  v19 = v24;
  v18 = v25;
  (*(v25 + 16))(v24, v17, v16);
  v20 = sub_766970();
  v33 = v20;
  v34 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v32);
  sub_766960();
  v30 = v20;
  v31 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v29);
  sub_766960();
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = v23;
  (*(v9 + 32))(&v12[v11[6]], v27, v8);
  *&v12[v11[7]] = 0;
  *&v12[v11[8]] = 1090519040;
  v21 = *(v18 + 32);
  v21(&v12[v11[9]], v28, v16);
  v21(&v12[v11[10]], v19, v16);
  *&v12[v11[11]] = 1102053376;
  sub_34698(&v32, &v12[v11[12]]);
  return sub_34698(&v29, &v12[v11[13]]);
}

uint64_t sub_5EB1A8()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = sub_7666D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_161DC(v12, qword_9A0298);
  v32 = v12;
  v13 = sub_BE38(v12, qword_9A0298);
  sub_396E8();
  v31 = sub_769FD0();
  if (qword_93D470 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v8, qword_99E560);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_B1B4(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  sub_766CB0();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_B1B4(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  sub_766CB0();
  v17(v3, v0);
  v20 = sub_766970();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v41);
  sub_766960();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v38);
  sub_766960();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 1102053376;
  sub_34698(&v41, &v13[v21[12]]);
  return sub_34698(&v38, &v13[v21[13]]);
}

uint64_t sub_5EB654()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = sub_7666D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_161DC(v12, qword_9A02B0);
  v32 = v12;
  v13 = sub_BE38(v12, qword_9A02B0);
  sub_396E8();
  v31 = sub_769FD0();
  if (qword_93D478 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v8, qword_99E578);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_B1B4(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  sub_766CB0();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_B1B4(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  sub_766CB0();
  v17(v3, v0);
  v20 = sub_766970();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v41);
  sub_766960();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v38);
  sub_766960();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 0;
  sub_34698(&v41, &v13[v21[12]]);
  return sub_34698(&v38, &v13[v21[13]]);
}

uint64_t sub_5EBB10()
{
  v0 = sub_7664A0();
  v42 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_766CA0();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v44 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v47 = &v33 - v6;
  v7 = sub_7666D0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_161DC(v11, qword_9A02E0);
  v43 = v11;
  v37 = sub_BE38(v11, qword_9A02E0);
  if (qword_93C390 != -1)
  {
    swift_once();
  }

  v12 = qword_99AFA0;
  v13 = sub_769240();
  v40 = v14;
  v41 = v13;
  v15 = qword_93D488;
  v39 = v12;
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_BE38(v7, qword_99E5A8);
  v36 = v8;
  v17 = *(v8 + 16);
  v38 = v10;
  v17(v10, v16, v7);
  v18 = v2;
  v17(v2, v16, v7);
  v35 = enum case for FontSource.useCase(_:);
  v19 = v42;
  v34 = *(v42 + 104);
  v34(v18);
  v52 = v0;
  v53 = &protocol witness table for FontSource;
  v20 = sub_B1B4(&v51);
  v33 = *(v19 + 16);
  v33(v20, v18, v0);
  sub_766CB0();
  v21 = *(v19 + 8);
  v21(v18, v0);
  v17(v18, v16, v7);
  (v34)(v18, v35, v0);
  v52 = v0;
  v53 = &protocol witness table for FontSource;
  v22 = sub_B1B4(&v51);
  v33(v22, v18, v0);
  v23 = v44;
  sub_766CB0();
  v21(v18, v0);
  v24 = sub_766970();
  v52 = v24;
  v53 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v51);
  sub_766960();
  v49 = v24;
  v50 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v48);
  sub_766960();
  v25 = v38;
  v26 = v37;
  v27 = v40;
  v28 = v41;
  *v37 = v39;
  *(v26 + 1) = v28;
  *(v26 + 2) = v27;
  v29 = v43;
  (*(v36 + 32))(&v26[v43[6]], v25, v7);
  *&v26[v29[7]] = 0;
  *&v26[v29[8]] = 1090519040;
  v30 = v46;
  v31 = *(v45 + 32);
  v31(&v26[v29[9]], v47, v46);
  v31(&v26[v29[10]], v23, v30);
  *&v26[v29[11]] = 0;
  sub_34698(&v51, &v26[v29[12]]);
  return sub_34698(&v48, &v26[v29[13]]);
}

uint64_t sub_5EC038(uint64_t a1, uint64_t *a2)
{
  v3 = sub_7664A0();
  v46 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_766CA0();
  v49 = *(v6 - 8);
  v50 = v6;
  __chkstk_darwin(v6);
  v48 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v51 = &v37 - v9;
  v10 = sub_7666D0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_161DC(v14, a2);
  v47 = v14;
  v15 = sub_BE38(v14, a2);
  if (qword_93C390 != -1)
  {
    swift_once();
  }

  v16 = qword_99AFA0;
  v17 = sub_769240();
  v44 = v18;
  v45 = v17;
  v19 = qword_93D480;
  v43 = v16;
  if (v19 != -1)
  {
    swift_once();
  }

  v20 = sub_BE38(v10, qword_99E590);
  v41 = v11;
  v21 = *(v11 + 16);
  v42 = v13;
  v21(v13, v20, v10);
  v22 = v5;
  v21(v5, v20, v10);
  v40 = enum case for FontSource.useCase(_:);
  v23 = v46;
  v38 = v10;
  v39 = *(v46 + 104);
  v39(v22);
  v56 = v3;
  v57 = &protocol witness table for FontSource;
  v24 = sub_B1B4(&v55);
  v37 = *(v23 + 16);
  v37(v24, v22, v3);
  sub_766CB0();
  v25 = *(v23 + 8);
  v25(v22, v3);
  v26 = v20;
  v27 = v38;
  v21(v22, v26, v38);
  (v39)(v22, v40, v3);
  v56 = v3;
  v57 = &protocol witness table for FontSource;
  v28 = sub_B1B4(&v55);
  v37(v28, v22, v3);
  v29 = v48;
  sub_766CB0();
  v25(v22, v3);
  v30 = sub_766970();
  v56 = v30;
  v57 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v55);
  sub_766960();
  v53 = v30;
  v54 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v52);
  sub_766960();
  v31 = v44;
  v32 = v45;
  *v15 = v43;
  *(v15 + 1) = v32;
  *(v15 + 2) = v31;
  v33 = v47;
  (*(v41 + 32))(&v15[v47[6]], v42, v27);
  *&v15[v33[7]] = 0;
  *&v15[v33[8]] = 1090519040;
  v34 = v50;
  v35 = *(v49 + 32);
  v35(&v15[v33[9]], v51, v50);
  v35(&v15[v33[10]], v29, v34);
  *&v15[v33[11]] = 0;
  sub_34698(&v55, &v15[v33[12]]);
  return sub_34698(&v52, &v15[v33[13]]);
}

uint64_t sub_5EC56C()
{
  v0 = sub_7664A0();
  v44 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_766CA0();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v46 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v49 = &v35 - v6;
  v7 = sub_7666D0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_161DC(v11, qword_9A0310);
  v45 = v11;
  v12 = sub_BE38(v11, qword_9A0310);
  if (qword_93C390 != -1)
  {
    swift_once();
  }

  v13 = qword_99AFA0;
  v14 = sub_769240();
  v42 = v15;
  v43 = v14;
  v16 = qword_93D488;
  v41 = v13;
  if (v16 != -1)
  {
    swift_once();
  }

  v17 = sub_BE38(v7, qword_99E5A8);
  v39 = v8;
  v40 = v10;
  v18 = *(v8 + 16);
  v18(v10, v17, v7);
  v19 = v2;
  v18(v2, v17, v7);
  v38 = enum case for FontSource.useCase(_:);
  v20 = v44;
  v36 = v7;
  v37 = *(v44 + 104);
  v37(v19);
  v54 = v0;
  v55 = &protocol witness table for FontSource;
  v21 = sub_B1B4(&v53);
  v35 = *(v20 + 16);
  v35(v21, v19, v0);
  sub_766CB0();
  v22 = *(v20 + 8);
  v22(v19, v0);
  v23 = v17;
  v24 = v36;
  v18(v19, v23, v36);
  (v37)(v19, v38, v0);
  v54 = v0;
  v55 = &protocol witness table for FontSource;
  v25 = sub_B1B4(&v53);
  v35(v25, v19, v0);
  v26 = v46;
  sub_766CB0();
  v22(v19, v0);
  v27 = sub_766970();
  v54 = v27;
  v55 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v53);
  sub_766960();
  v51 = v27;
  v52 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v50);
  sub_766960();
  v28 = v40;
  v29 = v42;
  v30 = v43;
  *v12 = v41;
  *(v12 + 1) = v30;
  *(v12 + 2) = v29;
  v31 = v45;
  (*(v39 + 32))(&v12[v45[6]], v28, v24);
  *&v12[v31[7]] = 0;
  *&v12[v31[8]] = 1090519040;
  v32 = v48;
  v33 = *(v47 + 32);
  v33(&v12[v31[9]], v49, v48);
  v33(&v12[v31[10]], v26, v32);
  *&v12[v31[11]] = 0;
  sub_34698(&v53, &v12[v31[12]]);
  return sub_34698(&v50, &v12[v31[13]]);
}

uint64_t sub_5ECA80()
{
  v0 = sub_7664A0();
  v42 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_766CA0();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v44 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v47 = &v33 - v6;
  v7 = sub_7666D0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_161DC(v11, qword_9A0328);
  v43 = v11;
  v37 = sub_BE38(v11, qword_9A0328);
  if (qword_93C398 != -1)
  {
    swift_once();
  }

  v12 = qword_99AFA8;
  v13 = sub_769240();
  v40 = v14;
  v41 = v13;
  v15 = qword_93D490;
  v39 = v12;
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_BE38(v7, qword_99E5C0);
  v17 = *(v8 + 16);
  v38 = v10;
  v17(v10, v16, v7);
  v18 = v2;
  v17(v2, v16, v7);
  v35 = enum case for FontSource.useCase(_:);
  v19 = v42;
  v34 = *(v42 + 104);
  v34(v18);
  v52 = v0;
  v53 = &protocol witness table for FontSource;
  v20 = sub_B1B4(&v51);
  v36 = v8;
  v33 = *(v19 + 16);
  v33(v20, v18, v0);
  sub_766CB0();
  v21 = *(v19 + 8);
  v21(v18, v0);
  v17(v18, v16, v7);
  (v34)(v18, v35, v0);
  v52 = v0;
  v53 = &protocol witness table for FontSource;
  v22 = sub_B1B4(&v51);
  v33(v22, v18, v0);
  v23 = v44;
  sub_766CB0();
  v21(v18, v0);
  v24 = sub_766970();
  v52 = v24;
  v53 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v51);
  sub_766960();
  v49 = v24;
  v50 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v48);
  sub_766960();
  v25 = v38;
  v26 = v37;
  v27 = v40;
  v28 = v41;
  *v37 = v39;
  *(v26 + 1) = v28;
  *(v26 + 2) = v27;
  v29 = v43;
  (*(v36 + 32))(&v26[v43[6]], v25, v7);
  *&v26[v29[7]] = 0;
  *&v26[v29[8]] = 1090519040;
  v30 = v46;
  v31 = *(v45 + 32);
  v31(&v26[v29[9]], v47, v46);
  v31(&v26[v29[10]], v23, v30);
  *&v26[v29[11]] = 0;
  sub_34698(&v51, &v26[v29[12]]);
  return sub_34698(&v48, &v26[v29[13]]);
}

uint64_t sub_5ECF94()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = sub_7666D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_161DC(v12, qword_9A0340);
  v32 = v12;
  v13 = sub_BE38(v12, qword_9A0340);
  sub_396E8();
  v31 = sub_769FD0();
  if (qword_93D498 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v8, qword_99E5D8);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_B1B4(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  sub_766CB0();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_B1B4(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  sub_766CB0();
  v17(v3, v0);
  v20 = sub_766970();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v41);
  sub_766960();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v38);
  sub_766960();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 0;
  sub_34698(&v41, &v13[v21[12]]);
  return sub_34698(&v38, &v13[v21[13]]);
}

uint64_t sub_5ED43C()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = sub_7666D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_161DC(v12, qword_9A0358);
  v32 = v12;
  v13 = sub_BE38(v12, qword_9A0358);
  sub_396E8();
  v31 = sub_769FD0();
  if (qword_93D4A0 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v8, qword_99E5F0);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_B1B4(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  sub_766CB0();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_B1B4(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  sub_766CB0();
  v17(v3, v0);
  v20 = sub_766970();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v41);
  sub_766960();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v38);
  sub_766960();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 0;
  sub_34698(&v41, &v13[v21[12]]);
  return sub_34698(&v38, &v13[v21[13]]);
}

uint64_t sub_5ED8E8()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = sub_7666D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_161DC(v12, qword_9A0370);
  v32 = v12;
  v13 = sub_BE38(v12, qword_9A0370);
  sub_396E8();
  v31 = sub_769FD0();
  if (qword_93D4A8 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v8, qword_99E608);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_B1B4(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  sub_766CB0();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_B1B4(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  sub_766CB0();
  v17(v3, v0);
  v20 = sub_766970();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v41);
  sub_766960();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v38);
  sub_766960();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 0;
  sub_34698(&v41, &v13[v21[12]]);
  return sub_34698(&v38, &v13[v21[13]]);
}

double sub_5EDD90(void *a1)
{
  [a1 displayScale];
  v3 = v2;
  v4 = 1.0 / v2;
  if (v2 < 3.0)
  {
    v5 = 46.0;
  }

  else
  {
    v5 = 46.0 - v4;
  }

  v6 = [a1 preferredContentSizeCategory];
  v7 = sub_769240();
  v9 = v8;
  if (v7 == sub_769240() && v9 == v10)
  {

LABEL_11:
    v13 = 4.0;
    if (v3 > 2.0)
    {
      v13 = 5.0;
    }

    return v13 + v5;
  }

  v12 = sub_76A950();

  if (v12)
  {

    goto LABEL_11;
  }

  v15 = sub_769240();
  v17 = v16;
  if (v15 == sub_769240() && v17 == v18)
  {

    return v5 + 3.0;
  }

  v20 = sub_76A950();

  if (v20)
  {

    return v5 + 3.0;
  }

  v21 = sub_769240();
  v23 = v22;
  if (v21 == sub_769240() && v23 == v24)
  {

    goto LABEL_28;
  }

  v25 = sub_76A950();

  if (v25)
  {

LABEL_28:
    v13 = 2.0;
    if (v3 <= 2.0)
    {
      v13 = 1.0;
    }

    return v13 + v5;
  }

  v26 = sub_769240();
  v28 = v27;
  if (v26 == sub_769240() && v28 == v29)
  {
    goto LABEL_33;
  }

  v30 = sub_76A950();

  if (v30)
  {
    goto LABEL_36;
  }

  v31 = sub_769240();
  v33 = v32;
  if (v31 == sub_769240() && v33 == v34)
  {
  }

  else
  {
    v35 = sub_76A950();

    if ((v35 & 1) == 0)
    {
      v37 = sub_769240();
      v39 = v38;
      if (v37 == sub_769240() && v39 == v40)
      {
      }

      else
      {
        v41 = sub_76A950();

        if ((v41 & 1) == 0)
        {
          v42 = sub_769240();
          v44 = v43;
          if (v42 == sub_769240() && v44 == v45)
          {
          }

          else
          {
            v46 = sub_76A950();

            if ((v46 & 1) == 0)
            {
              v47 = sub_769240();
              v49 = v48;
              if (v47 == sub_769240() && v49 == v50)
              {
                goto LABEL_33;
              }

              v51 = sub_76A950();

              if (v51)
              {
                goto LABEL_36;
              }

              v52 = sub_769240();
              v54 = v53;
              if (v52 == sub_769240() && v54 == v55)
              {
                goto LABEL_33;
              }

              v56 = sub_76A950();

              if (v56)
              {
                goto LABEL_36;
              }

              v57 = sub_769240();
              v59 = v58;
              if (v57 == sub_769240() && v59 == v60)
              {
LABEL_33:

LABEL_34:

                return v5;
              }

              v61 = sub_76A950();

              if ((v61 & 1) == 0)
              {
                sub_769240();
                sub_769240();

                goto LABEL_34;
              }

LABEL_36:

              return v5;
            }
          }

          return v5 + -5.0;
        }
      }

      v13 = v4 + -5.0;
      return v13 + v5;
    }
  }

  v36 = 2.0;
  if (v3 <= 2.0)
  {
    v36 = 3.0;
  }

  return v5 - v36;
}

id sub_5EE52C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchHintsCollectionViewDataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_5EE5E0()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_762D10();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75D8F0();
  sub_5EEA00(&qword_95D0B0, &type metadata accessor for PreorderDisclaimer);
  sub_75C750();
  if (!v20[0])
  {
    return 0.0;
  }

  v18 = v0;
  v19 = v5;
  v8 = sub_75D8E0();
  v17[1] = v9;
  v17[2] = v8;
  sub_26F08();
  if (qword_93D788 != -1)
  {
    swift_once();
  }

  v10 = sub_7666D0();
  sub_BE38(v10, qword_99EE90);
  swift_getKeyPath();
  sub_75C7B0();

  v11 = v20[0];
  sub_769E10();

  v12 = sub_7653B0();
  v20[3] = v12;
  v20[4] = sub_5EEA00(&qword_93F9B0, &type metadata accessor for Feature);
  v13 = sub_B1B4(v20);
  (*(*(v12 - 8) + 104))(v13, enum case for Feature.measurement_with_labelplaceholder(_:), v12);
  sub_765C30();
  sub_BEB8(v20);
  sub_762D00();
  swift_getKeyPath();
  sub_75C7B0();

  sub_765630();
  (*(v1 + 8))(v3, v18);
  swift_getKeyPath();
  sub_75C7B0();

  sub_5EEA00(&unk_94E600, &type metadata accessor for LabelPlaceholderCompatibility);
  sub_7665A0();
  v15 = v14;
  swift_unknownObjectRelease();

  (*(v19 + 8))(v7, v4);
  return v15;
}

uint64_t sub_5EEA00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_5EEA48()
{
  sub_BD88(&qword_942490);
  sub_7688F0();
  sub_75B430();
  sub_75B410();
  sub_75B3C0();

  sub_75B410();
  sub_75B420();

  sub_75B410();
  sub_75B400();

  v0 = sub_762E40();
  sub_7688F0();
  if (v3[0])
  {
    v1 = &protocol witness table for SearchGhostHintMetricsTracker;
  }

  else
  {
    v0 = 0;
    v1 = 0;
    v3[1] = 0;
    v3[2] = 0;
  }

  v3[3] = v0;
  v3[4] = v1;
  sub_75B410();
  sub_75B3B0();

  sub_BD88(&qword_942498);
  sub_7688F0();
  sub_768CC0();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_10A2C(v4, &qword_9424A0);
  return sub_10A2C(v3, &qword_9424A8);
}

void sub_5EEC60()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SearchResultsContextCardView.Style(319);
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

id sub_5EED50(uint64_t a1, void *a2)
{
  v4 = sub_76A3F0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_759CE0();
  v6 = sub_759CF0();
  v7 = sub_5F0FC8(v6, sub_5F0FC0);

  sub_4EAAA8(v5, v7);

  if (a2)
  {
    sub_BE70(0, &qword_960F00);
    v8 = [v2 traitCollection];
    sub_5EF9A8(a2);

    v9 = a2;
    v10 = sub_76A400();
  }

  else
  {
    v10 = 0;
  }

  v11 = *&v2[qword_95D988];
  *&v2[qword_95D988] = v10;
  v12 = v10;
  sub_5F01B8(v11);

  return [v2 setNeedsLayout];
}

uint64_t sub_5EEEFC()
{
  v36 = type metadata accessor for SearchResultsContextCardView.Style.Message(0);
  __chkstk_darwin(v36);
  v33 = &v30 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_7666D0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_765080();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v37 = &v30 - v10;
  v11 = type metadata accessor for SearchResultsContextCardView.Style.Metrics(0);
  __chkstk_darwin(v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SearchResultsContextCardView.Style(0);
  sub_161DC(v14, qword_9A0388);
  v15 = sub_BE38(v14, qword_9A0388);
  if (qword_93DED8 != -1)
  {
    swift_once();
  }

  v16 = sub_BE38(v11, qword_9A03A0);
  v34 = v13;
  sub_5F2200(v16, v13, type metadata accessor for SearchResultsContextCardView.Style.Metrics);
  v31 = objc_opt_self();
  v32 = [v31 secondarySystemGroupedBackgroundColor];
  if (qword_93C568 != -1)
  {
    swift_once();
  }

  v17 = v5;
  v18 = sub_BE38(v5, qword_99B598);
  v35 = v6;
  v19 = *(v6 + 16);
  v19(v37, v18, v17);
  if (qword_93C570 != -1)
  {
    swift_once();
  }

  v20 = sub_BE38(v17, qword_99B5B0);
  v30 = v8;
  v19(v8, v20, v17);
  v21 = v17;
  if (qword_93D978 != -1)
  {
    swift_once();
  }

  v22 = sub_BE38(v1, qword_99F460);
  v23 = v2;
  v24 = *(v2 + 16);
  v24(v4, v22, v1);
  v25 = v33;
  v24(v33, v22, v1);
  v26 = [v31 labelColor];
  v27 = v36;
  *(v25 + *(v36 + 20)) = v26;
  *(v25 + *(v27 + 24)) = 0;
  *(v25 + *(v27 + 28)) = 0;
  sub_5F20F4(v34, v15, type metadata accessor for SearchResultsContextCardView.Style.Metrics);
  *(v15 + v14[5]) = v32;
  v28 = *(v35 + 32);
  v28(v15 + v14[6], v37, v21);
  v28(v15 + v14[7], v30, v21);
  (*(v23 + 32))(v15 + v14[8], v4, v1);
  return sub_5F20F4(v25, v15 + v14[9], type metadata accessor for SearchResultsContextCardView.Style.Message);
}

uint64_t sub_5EF3D4()
{
  v0 = sub_763020();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_7593D0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SearchResultsContextCardView.Style.Metrics(0);
  sub_161DC(v8, qword_9A03A0);
  v9 = sub_BE38(v8, qword_9A03A0);
  (*(v5 + 104))(v7, enum case for CornerStyle.continuous(_:), v4);
  sub_763010();
  *v9 = 0x4038000000000000;
  (*(v5 + 32))(&v9[v8[5]], v7, v4);
  *&v9[v8[6]] = 0x4014000000000000;
  return (*(v1 + 32))(&v9[v8[7]], v3, v0);
}

id sub_5EF5AC()
{
  v1 = v0;
  v2 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v2 - 8);
  v4 = &v32 - v3;
  v5 = sub_7666D0();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v6 + 16);
  v10(v9, v1, v5, v7);
  v11 = type metadata accessor for SearchResultsContextCardView.Style.Message(0);
  v12 = *(v11 + 20);
  v32 = *(v1 + *(v11 + 24));
  v13 = *(v1 + v12);
  v14 = type metadata accessor for DynamicTypeLinkedTextView();
  v15 = objc_allocWithZone(v14);
  *&v15[qword_957FC0] = _swiftEmptyArrayStorage;
  *&v15[qword_957FC8] = 0;
  v37.receiver = v15;
  v37.super_class = v14;
  v16 = v13;
  v17 = objc_msgSendSuper2(&v37, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v33 = v9;
  v18 = v9;
  v19 = v5;
  (v10)(v4, v18, v5);
  v20 = v6;
  (*(v6 + 56))(v4, 0, 1, v19);
  v21 = v17;
  sub_75DFD0();
  sub_75E000();

  sub_75DFF0();
  v36.receiver = v21;
  v36.super_class = v14;
  v22 = v16;
  v23 = objc_msgSendSuper2(&v36, "textColor");
  v35.receiver = v21;
  v35.super_class = v14;
  objc_msgSendSuper2(&v35, "setTextColor:", v22);
  v34.receiver = v21;
  v34.super_class = v14;
  v24 = objc_msgSendSuper2(&v34, "textColor");
  if (v24)
  {
    v25 = v24;
    if (v23)
    {
      sub_BE70(0, &qword_93E540);
      v26 = v23;
      v27 = sub_76A1C0();

      if (v27)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  else
  {
    v26 = v22;
    if (!v23)
    {
      goto LABEL_10;
    }
  }

  sub_4E9E24();
  v26 = v23;
LABEL_9:

LABEL_10:
  v28 = v21;
  [v28 setSelectable:1];
  v29 = v28;
  [v29 setEditable:0];
  [v29 setScrollEnabled:0];
  [v29 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v29 setContentInsetAdjustmentBehavior:2];
  v30 = [objc_opt_self() clearColor];
  [v29 setBackgroundColor:v30];

  [v29 setDelegate:v29];
  [v29 _setInteractiveTextSelectionDisabled:1];

  (*(v20 + 8))(v33, v19);
  return v29;
}

void sub_5EF9A8(void *a1)
{
  v2 = sub_BD88(&unk_95A870);
  __chkstk_darwin(v2 - 8);
  v4 = &v21[-v3];
  sub_BE70(0, &qword_93F900);
  type metadata accessor for SearchResultsContextCardView.Style(0);
  v5 = sub_769E10();
  sub_76A3A0();
  v6 = sub_76A2B0();
  *(v7 + 8) = 0;
  v6(v21, 0);
  v8 = sub_76A2B0();
  *(v9 + 24) = 0;
  v8(v21, 0);
  v10 = [a1 title];
  sub_769240();

  sub_76A3C0();
  *(swift_allocObject() + 16) = v5;
  v11 = v5;
  sub_767BA0();
  v12 = sub_767B90();
  (*(*(v12 - 8) + 56))(v4, 0, 1, v12);
  sub_76A340();
  v13 = [a1 image];
  if (v13)
  {
    v14 = v13;
    sub_76A390();
    if ([v14 isSymbolImage])
    {
      v15 = [objc_opt_self() configurationWithFont:v11 scale:1];
      sub_76A220();
    }

    v16 = [a1 title];
    v17 = sub_769240();
    v19 = v18;

    v20 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v20 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      sub_76A2D0();
      type metadata accessor for SearchResultsContextCardView.Style.Metrics(0);
      sub_76A290();
    }
  }
}

char *sub_5EFC8C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_BD88(&qword_94BAC0);
  __chkstk_darwin(v4 - 8);
  v42 = v37 - v5;
  v6 = sub_7593D0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_9A03B8;
  v11 = sub_75C840();
  (*(*(v11 - 8) + 56))(&v2[v10], 1, 1, v11);
  *&v2[qword_95D988] = 0;
  v12 = a1;
  sub_5F2200(a1, &v2[qword_95D978], type metadata accessor for SearchResultsContextCardView.Style);
  sub_75CD70();
  v13 = type metadata accessor for SearchResultsContextCardView.Style.Metrics(0);
  v14 = *(v7 + 16);
  v15 = a1 + *(v13 + 20);
  v16 = *(v13 + 20);
  v41 = v16;
  v39 = v6;
  v14(v9, v15, v6);
  v38 = v14;
  v40 = v7 + 16;
  v17 = sub_75CD60();
  v18 = type metadata accessor for SearchResultsContextCardView.Style(0);
  v19 = *(v18 + 20);
  v20 = v18;
  v37[0] = v18;
  [v17 setBackgroundColor:*(v12 + v19)];
  *&v2[qword_95D9A0] = v17;
  v37[1] = sub_758E80();
  v14(v9, v12 + v16, v6);
  v21 = sub_758E50();
  v22 = *(v20 + 24);
  v23 = sub_765080();
  v24 = *(v23 - 8);
  v25 = *(v24 + 16);
  v26 = v12 + v22;
  v27 = v12;
  v28 = v42;
  v25(v42, v26, v23);
  v29 = *(v24 + 56);
  v29(v28, 0, 1, v23);
  sub_758E60();
  *&v2[qword_95D990] = v21;
  v38(v9, v27 + v41, v39);
  v30 = sub_758E50();
  v25(v28, v27 + *(v37[0] + 28), v23);
  v29(v28, 0, 1, v23);
  sub_758E60();
  *&v2[qword_95D998] = v30;
  *&v2[qword_95D980] = sub_5EF5AC();
  v44.receiver = v2;
  v44.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v44, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v35 = v31;
  [v35 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v35 addSubview:*&v35[qword_95D990]];
  [v35 addSubview:*&v35[qword_95D998]];
  [v35 addSubview:*&v35[qword_95D9A0]];
  [v35 addSubview:*&v35[qword_95D980]];

  sub_5F215C(v27);
  return v35;
}

void sub_5F0100(uint64_t a1)
{
  v2 = qword_9A03B8;
  v3 = sub_75C840();
  (*(*(v3 - 8) + 56))(a1 + v2, 1, 1, v3);
  *(a1 + qword_95D988) = 0;
  sub_76A840();
  __break(1u);
}

void sub_5F01B8(void *a1)
{
  v2 = qword_95D988;
  v3 = *&v1[qword_95D988];
  if (a1)
  {
    if (v3 == a1)
    {
      return;
    }

    [a1 removeFromSuperview];
    v3 = *&v1[v2];
    if (!v3)
    {
      return;
    }
  }

  else if (!v3)
  {
    return;
  }

  v4 = v3;
  [v1 addSubview:v4];
  [v1 setNeedsLayout];
}

uint64_t sub_5F025C@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_763020();
  __chkstk_darwin(v3 - 8);
  type metadata accessor for DynamicTypeLinkedTextView();
  sub_7665D0();
  v4 = *(v1 + qword_95D988);
  if (v4)
  {
    sub_BE70(0, &qword_960F00);
  }

  v5 = v4;
  sub_763010();
  a1[3] = sub_763040();
  a1[4] = sub_5F21B8(&unk_95DBE0, &type metadata accessor for SearchResultsContextCardLayout);
  sub_B1B4(a1);
  return sub_763030();
}

id sub_5F03B4()
{
  sub_766CF0();
  v1 = sub_766D00();
  v1();
  v2 = *&v0[qword_95D990];
  [v0 bounds];
  [v2 setFrame:?];
  v3 = *&v0[qword_95D998];
  [v0 bounds];
  [v3 setFrame:?];
  v4 = *&v0[qword_95D9A0];
  [v0 bounds];

  return [v4 setFrame:?];
}

void sub_5F04B0()
{
  sub_3A63C(v0 + qword_9A03B8);
  sub_5F215C(v0 + qword_95D978);

  v1 = *(v0 + qword_95D9A0);
}

void sub_5F0540(uint64_t a1)
{
  sub_3A63C(a1 + qword_9A03B8);
  sub_5F215C(a1 + qword_95D978);

  v2 = *(a1 + qword_95D9A0);
}

uint64_t sub_5F0618(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for SearchResultsContextCardView.Style.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_765080();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_7666D0();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_11;
  }

  v17 = type metadata accessor for SearchResultsContextCardView.Style.Message(0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[9];

  return v18(v19, a2, v17);
}

uint64_t sub_5F0828(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for SearchResultsContextCardView.Style.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = sub_765080();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_7666D0();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  v17 = type metadata accessor for SearchResultsContextCardView.Style.Message(0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_5F09E4()
{
  result = type metadata accessor for SearchResultsContextCardView.Style.Metrics(319);
  if (v1 <= 0x3F)
  {
    result = sub_BE70(319, &qword_93E540);
    if (v2 <= 0x3F)
    {
      result = sub_765080();
      if (v3 <= 0x3F)
      {
        result = sub_7666D0();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for SearchResultsContextCardView.Style.Message(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_5F0AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_7666D0();
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

uint64_t sub_5F0BA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_7666D0();
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

void sub_5F0C5C()
{
  sub_7666D0();
  if (v0 <= 0x3F)
  {
    sub_BE70(319, &qword_93E540);
    if (v1 <= 0x3F)
    {
      type metadata accessor for NSLineBreakMode(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_5F0D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_7593D0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = sub_763020();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_5F0E2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_7593D0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = sub_763020();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 28);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_5F0F2C()
{
  result = sub_7593D0();
  if (v1 <= 0x3F)
  {
    result = sub_763020();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_5F0FC8(uint64_t a1, void (*a2)(_OWORD *__return_ptr, uint64_t, uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v31 = _swiftEmptyArrayStorage;
  sub_143A58(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  v28 = a1 + 64;
  result = sub_76A5B0();
  v6 = result;
  v7 = 0;
  v29 = *(a1 + 36);
  v26 = v2;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v28 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v29 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v10 = (*(a1 + 48) + 16 * v6);
    v12 = *v10;
    v11 = v10[1];
    v13 = *(*(a1 + 56) + 8 * v6);

    a2(v30, v12, v11, v13);

    v31 = v3;
    v15 = v3[2];
    v14 = v3[3];
    if (v15 >= v14 >> 1)
    {
      result = sub_143A58((v14 > 1), v15 + 1, 1);
      v3 = v31;
    }

    v3[2] = v15 + 1;
    v16 = &v3[6 * v15];
    v17 = v30[0];
    v18 = v30[2];
    v16[3] = v30[1];
    v16[4] = v18;
    v16[2] = v17;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_24;
    }

    v19 = *(v28 + 8 * v9);
    if ((v19 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (v29 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v20 = v19 & (-2 << (v6 & 0x3F));
    if (v20)
    {
      v8 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v9 << 6;
      v22 = v9 + 1;
      v23 = (a1 + 72 + 8 * v9);
      while (v22 < (v8 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_1F38B4(v6, v29, 0);
          v8 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_1F38B4(v6, v29, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v26)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_5F1250()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_5F1290(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v107 = a3;
  v115 = sub_BD88(&qword_95DBC8);
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v112 = &v91 - v6;
  v7 = sub_763020();
  __chkstk_darwin(v7 - 8);
  v111 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_76A3F0();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v92 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_766AF0();
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v99 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v100 = &v91 - v12;
  __chkstk_darwin(v13);
  v101 = &v91 - v14;
  __chkstk_darwin(v15);
  v102 = &v91 - v16;
  __chkstk_darwin(v17);
  v103 = &v91 - v18;
  __chkstk_darwin(v19);
  v104 = &v91 - v20;
  v110 = sub_763040();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v108 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_BE70(0, &qword_93F900);
  v23 = *(type metadata accessor for SearchResultsContextCardView.Style(0) + 36);
  v95 = a4;
  v24 = a4 + v23;
  v113 = a1;
  v25 = sub_769E10();
  v118 = type metadata accessor for DynamicTypeLinkedTextView();
  v26 = *(v24 + *(type metadata accessor for SearchResultsContextCardView.Style.Message(0) + 24));
  v27 = [objc_opt_self() labelColor];
  v28 = sub_759CE0();
  v29 = sub_759CF0();
  v119 = sub_5F0FC8(v29, sub_5F0FC0);

  v30 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v30 setAlignment:4];
  [v30 setLineBreakMode:v26];
  sub_BD88(&qword_940F40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77E280;
  *(inited + 32) = NSParagraphStyleAttributeName;
  v32 = sub_BE70(0, &unk_959BA0);
  *(inited + 40) = v30;
  *(inited + 64) = v32;
  *(inited + 72) = NSFontAttributeName;
  *(inited + 104) = v22;
  *(inited + 80) = v25;
  v33 = NSParagraphStyleAttributeName;
  v34 = v30;
  v35 = NSFontAttributeName;
  v36 = v25;
  v37 = sub_10D028(inited);
  swift_setDeallocating();
  sub_BD88(qword_940F50);
  swift_arrayDestroy();
  v130 = sub_BE70(0, &qword_93E540);
  *&aBlock = v27;
  sub_13310(&aBlock, &v124);
  v97 = v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v133 = v37;
  sub_4592E8(&v124, NSForegroundColorAttributeName, isUniquelyReferenced_nonNull_native);
  v134 = v133;

  sub_BE70(0, &qword_958080);
  v117 = v36;
  v98 = v28;
  v39 = sub_758EC0();
  v40 = v134;

  v41.super.isa = v39;
  v42._rawValue = v40;
  isa = sub_769A80(v41, v42).super.isa;
  v44 = v34;
  v45 = isa;
  v46 = [(objc_class *)v45 fullRange];
  [(objc_class *)v45 addAttribute:v33 value:v44 range:v46, v47];
  v96 = v44;

  v116 = swift_allocObject();
  *(v116 + 16) = 0;
  *&v124 = 0;
  v48 = *(v119 + 16);
  v121 = NSLinkAttributeName;
  if (v48)
  {
    v120 = NSUnderlineStyleAttributeName;
    v49 = v119 + 72;
    do
    {
      v50 = *(v49 - 24);
      v122 = *(v49 - 8);

      v123 = v50;

      v51 = v45;
      v52 = sub_4EB3B4(&v124, v45);
      v53 = sub_769210();
      v54 = [v52 rangeOfString:v53 options:4];
      v56 = v55;

      v45 = v51;
      if (v54 != sub_756C80())
      {
        v57 = sub_769210();
        [(objc_class *)v51 addAttribute:v121 value:v57 range:v54, v56];

        if (UIAccessibilityButtonShapesEnabled())
        {
          v58 = sub_769670().super.super.isa;
          [(objc_class *)v51 addAttribute:v120 value:v58 range:v54, v56];
        }
      }

      v49 += 48;

      --v48;
    }

    while (v48);
  }

  v59 = [(objc_class *)v45 fullRange];
  v61 = v60;
  v62 = v45;
  v63 = swift_allocObject();
  v64 = v119;
  v63[2] = v118;
  v63[3] = v64;
  v65 = v117;
  v63[4] = v116;
  v63[5] = v65;
  v63[6] = &v134;
  v63[7] = v62;
  v66 = swift_allocObject();
  *(v66 + 16) = sub_4EBBFC;
  *(v66 + 24) = v63;
  v131 = sub_12944C;
  v132 = v66;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v129 = sub_2157DC;
  v130 = &unk_899B58;
  v67 = _Block_copy(&aBlock);
  v68 = v65;

  [(objc_class *)v62 enumerateAttribute:v121 inRange:v59 options:v61 usingBlock:0, v67];
  _Block_release(v67);
  LOBYTE(v65) = swift_isEscapingClosureAtFileLocation();

  if (v65)
  {
    __break(1u);
  }

  else
  {
    v70 = [objc_allocWithZone(NSAttributedString) initWithAttributedString:v62];

    v71 = v124;

    v130 = sub_766D70();
    v131 = &protocol witness table for LabelPlaceholder;
    sub_B1B4(&aBlock);
    v72 = v68;
    v73 = v70;
    v74 = v99;
    sub_766AE0();
    v75 = v100;
    sub_766AD0();
    v76 = *(v105 + 8);
    v77 = v106;
    v76(v74, v106);
    v78 = v101;
    sub_766A30();
    v76(v75, v77);
    v79 = v102;
    sub_766A90();
    v76(v78, v77);
    v80 = v103;
    sub_766A80();
    v76(v79, v77);
    sub_766AA0();
    v76(v80, v77);
    sub_766D50();
    v81 = v73;
    sub_766DA0();

    if (v107)
    {
      v82 = v107;
      v83 = v92;
      sub_5EF9A8(v82);
      v84 = type metadata accessor for ButtonPlaceholder();
      v85 = swift_allocObject();
      *(v85 + OBJC_IVAR____TtC18ASMessagesProvider17ButtonPlaceholder____lazy_storage___button) = 0;
      (*(v93 + 32))(v85 + OBJC_IVAR____TtC18ASMessagesProvider17ButtonPlaceholder_configuration, v83, v94);

      v86 = sub_5F21B8(&qword_95DBD8, type metadata accessor for ButtonPlaceholder);
    }

    else
    {
      v85 = 0;
      v84 = 0;
      v86 = 0;
      v125 = 0;
      *(&v124 + 1) = 0;
    }

    *&v124 = v85;
    v126 = v84;
    v127 = v86;
    sub_763010();
    v87 = v108;
    sub_763030();
    sub_5F21B8(&qword_95DBD0, &type metadata accessor for SearchResultsContextCardLayout);
    v88 = v112;
    v89 = v110;
    sub_766730();
    swift_getOpaqueTypeConformance2();
    v90 = v115;
    sub_7673F0();

    (*(v114 + 8))(v88, v90);
    return (*(v109 + 8))(v87, v89);
  }

  return result;
}

uint64_t sub_5F207C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_5F20DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_5F20F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_5F215C(uint64_t a1)
{
  v2 = type metadata accessor for SearchResultsContextCardView.Style(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5F21B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_5F2200(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_5F226C()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_766CA0();
  sub_161DC(v4, qword_9A03D0);
  sub_BE38(v4, qword_9A03D0);
  *v3 = UIFontTextStyleBody;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_B1B4(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleBody;
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_5F2940(void *a1, uint64_t a2, void *a3, uint64_t a4, char a5, char a6)
{
  v10 = sub_757640();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  v14 = a3;
  v15 = a1;
  sub_5F3E30(v14, v13, a5, a6);

  return (*(v11 + 8))(v13, v10);
}

id sub_5F2B80()
{
  v1 = v0;
  v2 = sub_BD88(&qword_945010);
  __chkstk_darwin(v2 - 8);
  v4 = &v65 - v3;
  v5 = sub_759EC0();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    return 0;
  }

  v74 = v5;
  v9 = objc_opt_self();
  if (qword_93E048 != -1)
  {
    swift_once();
  }

  v10 = qword_9A0690;
  v11 = [*(v1 + OBJC_IVAR____TtC18ASMessagesProvider33SearchHintsCollectionViewDelegate_pageTraits) traitCollection];
  v12 = [v9 preferredFontForTextStyle:v10 compatibleWithTraitCollection:v11];

  sub_759EE0();
  v13 = sub_759F20();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v4, 1, v13) == 1)
  {
    sub_10A2C(v4, &qword_945010);
    v15 = sub_764C60();
    if (v16)
    {
      v17 = v15;

      v74 = v17;
    }
  }

  else
  {
    v74 = sub_5F3390(v74, v7);
    (*(v14 + 8))(v4, v13);
  }

  v72 = sub_BD88(&qword_940F40);
  inited = swift_initStackObject();
  v71 = xmmword_77E280;
  *(inited + 16) = xmmword_77E280;
  *(inited + 32) = NSForegroundColorAttributeName;
  v20 = qword_93D198;
  v70 = NSForegroundColorAttributeName;
  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_99DD18;
  v22 = sub_BE70(0, &qword_93E540);
  *(inited + 40) = v21;
  v69 = v22;
  *(inited + 64) = v22;
  *(inited + 72) = NSFontAttributeName;
  v23 = sub_BE70(0, &qword_93F900);
  *(inited + 104) = v23;
  *(inited + 80) = v12;
  v24 = v21;
  v68 = NSFontAttributeName;
  v73 = v12;
  sub_10D028(inited);
  swift_setDeallocating();
  sub_BD88(qword_940F50);
  swift_arrayDestroy();
  v25 = objc_allocWithZone(NSMutableAttributedString);
  v26 = sub_769210();

  type metadata accessor for Key(0);
  sub_206144();
  isa = sub_7690E0().super.isa;

  v28 = [v25 initWithString:v26 attributes:isa];

  v29 = sub_759E70();
  if (v30)
  {
    v66 = v29;
    v67 = v30;
    v31 = v28;
    v32 = v73;
    v33 = swift_initStackObject();
    *(v33 + 16) = v71;
    v34 = v70;
    *(v33 + 32) = v70;
    v35 = qword_93D190;
    v36 = v34;
    if (v35 != -1)
    {
      swift_once();
    }

    v37 = qword_99DD10;
    *(v33 + 40) = qword_99DD10;
    v38 = v68;
    *(v33 + 64) = v69;
    *(v33 + 72) = v38;
    *(v33 + 104) = v23;
    *(v33 + 80) = v32;
    v39 = v38;
    v40 = v32;
    v41 = v37;
    sub_10D028(v33);
    swift_setDeallocating();
    swift_arrayDestroy();
    v74 = sub_7690E0().super.isa;

    v65 = v31;
    v42 = [v31 string];
    v43 = sub_769240();
    v45 = v44;

    v79 = v43;
    v80 = v45;
    v77 = 9994466;
    v78 = 0xA300000000000000;
    v75 = 39;
    v76 = 0xE100000000000000;
    sub_12EC40();
    v46 = sub_76A4F0();
    v48 = v47;

    v79 = v46;
    v80 = v48;
    v77 = 96;
    v78 = 0xE100000000000000;
    v75 = 39;
    v76 = 0xE100000000000000;
    v49 = sub_76A4F0();
    v51 = v50;

    v79 = v49;
    v80 = v51;
    v77 = 10060002;
    v78 = 0xA300000000000000;
    v75 = 39;
    v76 = 0xE100000000000000;
    sub_76A4F0();

    v52 = sub_769210();

    v79 = v66;
    v80 = v67;
    v76 = 0xE100000000000000;
    v77 = 9994466;
    v78 = 0xA300000000000000;
    v75 = 39;
    v53 = sub_76A4F0();
    v55 = v54;

    v79 = v53;
    v80 = v55;
    v77 = 96;
    v78 = 0xE100000000000000;
    v75 = 39;
    v76 = 0xE100000000000000;
    v56 = sub_76A4F0();
    v58 = v57;

    v79 = v56;
    v80 = v58;
    v76 = 0xE100000000000000;
    v77 = 10060002;
    v28 = v65;
    v78 = 0xA300000000000000;
    v75 = 39;
    sub_76A4F0();

    v59 = sub_769210();

    v60 = [v52 rangeOfString:v59 options:1];
    v62 = v61;

    v63 = v74;
    [v28 addAttributes:v74 range:{v60, v62}];
  }

  v64 = [objc_allocWithZone(NSAttributedString) initWithAttributedString:v28];

  return v64;
}

uint64_t sub_5F3390(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = 0xD000000000000020;
  v7 = sub_759F20();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v3, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == enum case for SearchEntity.developers(_:))
  {
    v13 = "Search.ResultsTitle.InStories";
LABEL_9:
    sub_BD88(&unk_9562A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_77B6D0;
    *(inited + 32) = 0x745F686372616573;
    *(inited + 40) = 0xEB000000006D7265;
    *(inited + 48) = a1;
    *(inited + 56) = a2;

    v15 = sub_10DD04(inited);
    swift_setDeallocating();
    sub_10A2C(inited + 32, &qword_95DC30);
    v20._object = (v13 | 0x8000000000000000);
    v20._countAndFlagsBits = v6;
    v16._rawValue = v15;
    v17 = sub_75B740(v20, v16);

    return v17;
  }

  if (v12 == enum case for SearchEntity.stories(_:))
  {
    v13 = "Search.ResultsTitle.InArcade";
    v6 = 0xD00000000000001DLL;
    goto LABEL_9;
  }

  if (v12 == enum case for SearchEntity.arcade(_:))
  {
    v13 = "Search.ResultsTitle.InWatch";
    v6 = 0xD00000000000001CLL;
    goto LABEL_9;
  }

  if (v12 == enum case for SearchEntity.watch(_:))
  {
    v13 = "must be handled.";
    v6 = 0xD00000000000001BLL;
    goto LABEL_9;
  }

  result = sub_76A840();
  __break(1u);
  return result;
}

id sub_5F367C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchHintsCollectionViewDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_5F3730()
{
  result = sub_764C70();
  if (result)
  {
    sub_7651B0();
    v2 = v1;

    if (v2)
    {
      v3 = qword_93D1B0;

      if (v3 != -1)
      {
        swift_once();
      }

      v4 = [objc_opt_self() configurationWithTextStyle:qword_99DD30];
      v5 = sub_759920();

      if (qword_93D1A8 != -1)
      {
        swift_once();
      }

      v6 = [v5 imageWithTintColor:qword_99DD28];
      swift_bridgeObjectRelease_n();

      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_5F3874(void *a1)
{
  v2 = v1;
  v4 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_768AB0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchHintCollectionViewCell();
  result = swift_dynamicCastClass();
  if (result)
  {
    v12 = result;
    v13 = a1;
    sub_7575C0();
    sub_75ED50();
    v14 = sub_5F2B80();
    if (v14)
    {
      v15 = v14;
      v31 = v13;
      v16 = OBJC_IVAR____TtC18ASMessagesProvider28SearchHintCollectionViewCell_hintView;
      v17 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider33SearchHintsCollectionViewDelegate_pageTraits);
      v18 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider28SearchHintCollectionViewCell_hintView];
      v32 = v8;
      v19 = v18;
      [v17 pageMarginInsets];
      [v19 setLayoutMargins:?];

      v20 = *&v12[v16];
      *(v20 + OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_showSeparator) = 1;
      [*(v20 + OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_separatorView) setHidden:0];
      v21 = *&v12[v16];
      v22 = v15;
      v23 = v21;
      v24 = sub_5F3730();
      [*&v23[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_titleLabel] setAttributedText:v22];
      v25 = *&v23[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_iconImage];
      *&v23[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_iconImage] = v24;
      v26 = v24;

      sub_66E8E4(v27, v28, v29);
      [v23 setNeedsLayout];

      v30 = v32;

      sub_764C20();

      if ((*(v30 + 48))(v6, 1, v7) == 1)
      {

        return sub_10A2C(v6, &unk_93FF30);
      }

      else
      {
        (*(v30 + 32))(v10, v6, v7);
        if (*(v2 + OBJC_IVAR____TtC18ASMessagesProvider33SearchHintsCollectionViewDelegate_impressionsCalculator))
        {

          [v12 frame];
          sub_75F4B0();
        }

        else
        {
        }

        return (*(v30 + 8))(v10, v7);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_5F3C20()
{
  v1 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_768AB0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7575C0();
  result = sub_75ED30();
  if (v8 < result)
  {
    sub_7575C0();
    sub_75ED50();
    sub_764C20();
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      return sub_10A2C(v3, &unk_93FF30);
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider33SearchHintsCollectionViewDelegate_impressionsCalculator))
      {

        sub_75F4D0();
      }

      return (*(v5 + 8))(v7, v4);
    }
  }

  return result;
}

void sub_5F3E30(void *a1, uint64_t a2, char a3, char a4)
{
  v7 = sub_757640();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__OFSUB__(sub_7575C0(), 1))
  {
    __break(1u);
  }

  else
  {
    sub_7575D0();
    sub_7575B0();
    isa = sub_757550().super.isa;
    (*(v8 + 8))(v10, v7);
    v12 = [a1 cellForItemAtIndexPath:isa];

    if (v12)
    {
      type metadata accessor for SearchHintCollectionViewCell();
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        v14 = *(v13 + OBJC_IVAR____TtC18ASMessagesProvider28SearchHintCollectionViewCell_hintView);
        *(v14 + OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_showSeparator) = a3;
        [*(v14 + OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_separatorView) setHidden:a4 & 1];
      }
    }
  }
}

double sub_5F3FB8(void *a1)
{
  sub_7575C0();
  sub_75ED50();
  v3 = sub_5F2B80();

  if (!v3)
  {
    return 0.0;
  }

  [a1 frame];
  v5 = v4;
  v6 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider33SearchHintsCollectionViewDelegate_pageTraits);
  swift_unknownObjectRetain();
  sub_66F938(v3, v6);
  sub_7670D0();
  sub_7665A0();

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_5F40C8()
{
  v0 = sub_768FD0();
  sub_161DC(v0, qword_9A03E8);
  sub_BE38(v0, qword_9A03E8);
  return sub_768FC0();
}

uint64_t sub_5F4210(uint64_t a1, uint64_t *a2)
{
  v3 = sub_768FD0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_768FF0();
  sub_161DC(v7, a2);
  sub_BE38(v7, a2);
  if (qword_93DEE8 != -1)
  {
    swift_once();
  }

  v8 = sub_BE38(v3, qword_9A03E8);
  (*(v4 + 16))(v6, v8, v3);
  return sub_768FE0();
}

uint64_t sub_5F4360(uint64_t a1)
{
  v47 = a1;
  v36 = sub_766220();
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v37 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_75E5F0();
  v3 = *(v46 - 8);
  __chkstk_darwin(v46);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DF10 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v6 = sub_768FF0();
    v48 = sub_BE38(v6, qword_9A0460);
    v7 = sub_BD88(&qword_93FD00);
    v8 = *(sub_7685F0() - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v42 = v7;
    v43 = 4 * v9;
    *(swift_allocObject() + 16) = xmmword_782440;
    v38 = v10;
    v45 = v1;
    sub_7685D0();
    v41 = "advertHostingPageExited";
    sub_768540();
    sub_768540();
    v40 = 2 * v9;
    v11 = sub_75E5D0();
    *(&v51[0] + 1) = &type metadata for String;
    *&v50 = v11;
    *(&v50 + 1) = v12;
    v39 = 3 * v9;
    sub_7685C0();
    sub_10A2C(&v50, &unk_93FBD0);
    v44 = v6;
    sub_768E80();

    v13 = sub_75E5E0();
    v14 = v46;
    (*(v3 + 104))(v5, enum case for SearchAdOpportunity.LifecycleEventType.pageEnter(_:), v46);
    if (!*(v13 + 16) || (v15 = sub_6647E8(v5), (v16 & 1) == 0))
    {

      (*(v3 + 8))(v5, v14);
      v52 = 0;
LABEL_19:
      v50 = 0u;
      v51[0] = 0u;
LABEL_20:
      sub_10A2C(&v50, &unk_93FBD0);
LABEL_21:
      *(swift_allocObject() + 16) = xmmword_784250;
      sub_7685D0();
      sub_768540();
      sub_768540();
      sub_768540();
      v31 = sub_75E5D0();
      *(&v51[0] + 1) = &type metadata for String;
      *&v50 = v31;
      *(&v50 + 1) = v32;
      sub_7685C0();
      sub_10A2C(&v50, &unk_93FBD0);
      sub_768EA0();
    }

    v17 = v14;
    v18 = *(*(v13 + 56) + 8 * v15);
    v19 = *(v3 + 8);

    v19(v5, v17);

    v52 = v18;
    if (!v18)
    {
      goto LABEL_19;
    }

    v1 = &v52;
    sub_2062D4(0x6E65644965676170, 0xEE00726569666974, &v50);
    if (!*(&v51[0] + 1))
    {
      goto LABEL_20;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_21;
    }

    sub_766210();
    v20 = v52;
    if (!v52)
    {
      break;
    }

    v21 = 1 << *(v52 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v3 = v22 & *(v52 + 64);
    v23 = (v21 + 63) >> 6;
    v5 = &v50;

    v24 = 0;
    while (v3)
    {
      v25 = v24;
LABEL_16:
      v26 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v27 = v26 | (v25 << 6);
      v28 = (*(v20 + 48) + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      sub_132B4(*(v20 + 56) + 32 * v27, v51);
      *&v50 = v29;
      *(&v50 + 1) = v30;
      sub_132B4(v51, &v49);
      swift_bridgeObjectRetain_n();
      v1 = v37;
      sub_766230();
      sub_10A2C(&v50, &qword_95DCD8);
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v23)
      {

        goto LABEL_24;
      }

      v3 = *(v20 + 64 + 8 * v25);
      ++v24;
      if (v3)
      {
        v24 = v25;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

LABEL_24:
  v34 = v37;
  sub_765F60();
  (*(v35 + 8))(v34, v36);
}

uint64_t sub_5F49F4(uint64_t a1)
{
  v47 = a1;
  v36 = sub_766190();
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v37 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_75E5F0();
  v3 = *(v46 - 8);
  __chkstk_darwin(v46);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DF10 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v6 = sub_768FF0();
    v48 = sub_BE38(v6, qword_9A0460);
    v7 = sub_BD88(&qword_93FD00);
    v8 = *(sub_7685F0() - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v42 = v7;
    v43 = 4 * v9;
    *(swift_allocObject() + 16) = xmmword_782440;
    v38 = v10;
    v45 = v1;
    sub_7685D0();
    v41 = "duplicatePosition";
    sub_768540();
    sub_768540();
    v40 = 2 * v9;
    v11 = sub_75E5D0();
    *(&v51[0] + 1) = &type metadata for String;
    *&v50 = v11;
    *(&v50 + 1) = v12;
    v39 = 3 * v9;
    sub_7685C0();
    sub_10A2C(&v50, &unk_93FBD0);
    v44 = v6;
    sub_768E80();

    v13 = sub_75E5E0();
    v14 = v46;
    (*(v3 + 104))(v5, enum case for SearchAdOpportunity.LifecycleEventType.pageExit(_:), v46);
    if (!*(v13 + 16) || (v15 = sub_6647E8(v5), (v16 & 1) == 0))
    {

      (*(v3 + 8))(v5, v14);
      v52 = 0;
LABEL_19:
      v50 = 0u;
      v51[0] = 0u;
LABEL_20:
      sub_10A2C(&v50, &unk_93FBD0);
LABEL_21:
      *(swift_allocObject() + 16) = xmmword_784250;
      sub_7685D0();
      sub_768540();
      sub_768540();
      sub_768540();
      v31 = sub_75E5D0();
      *(&v51[0] + 1) = &type metadata for String;
      *&v50 = v31;
      *(&v50 + 1) = v32;
      sub_7685C0();
      sub_10A2C(&v50, &unk_93FBD0);
      sub_768EA0();
    }

    v17 = v14;
    v18 = *(*(v13 + 56) + 8 * v15);
    v19 = *(v3 + 8);

    v19(v5, v17);

    v52 = v18;
    if (!v18)
    {
      goto LABEL_19;
    }

    v1 = &v52;
    sub_2062D4(0x6E65644965676170, 0xEE00726569666974, &v50);
    if (!*(&v51[0] + 1))
    {
      goto LABEL_20;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_21;
    }

    sub_766180();
    v20 = v52;
    if (!v52)
    {
      break;
    }

    v21 = 1 << *(v52 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v3 = v22 & *(v52 + 64);
    v23 = (v21 + 63) >> 6;
    v5 = &v50;

    v24 = 0;
    while (v3)
    {
      v25 = v24;
LABEL_16:
      v26 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v27 = v26 | (v25 << 6);
      v28 = (*(v20 + 48) + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      sub_132B4(*(v20 + 56) + 32 * v27, v51);
      *&v50 = v29;
      *(&v50 + 1) = v30;
      sub_132B4(v51, &v49);
      swift_bridgeObjectRetain_n();
      v1 = v37;
      sub_7661A0();
      sub_10A2C(&v50, &qword_95DCD8);
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v23)
      {

        goto LABEL_24;
      }

      v3 = *(v20 + 64 + 8 * v25);
      ++v24;
      if (v3)
      {
        v24 = v25;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

LABEL_24:
  v34 = v37;
  sub_765F50();
  (*(v35 + 8))(v34, v36);
}

uint64_t sub_5F5088(uint64_t a1)
{
  v49 = a1;
  v38 = sub_7660D0();
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v39 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_75E5F0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DF10 != -1)
  {
    swift_once();
  }

  v7 = sub_768FF0();
  v48 = sub_BE38(v7, qword_9A0460);
  v8 = sub_BD88(&qword_93FD00);
  v9 = *(sub_7685F0() - 8);
  v10 = *(v9 + 72);
  v11 = *(v9 + 80);
  v12 = (v11 + 32) & ~v11;
  v44 = v8;
  v45 = 4 * v10;
  v42 = v11;
  *(swift_allocObject() + 16) = xmmword_782440;
  v43 = v12;
  v47 = v1;
  sub_7685D0();
  sub_768540();
  sub_768540();
  v41 = 2 * v10;
  v13 = sub_75E5D0();
  *(&v52[0] + 1) = &type metadata for String;
  *&v51 = v13;
  *(&v51 + 1) = v14;
  v40 = 3 * v10;
  sub_7685C0();
  sub_10A2C(&v51, &unk_93FBD0);
  v46 = v7;
  sub_768E80();

  v15 = sub_75E5E0();
  (*(v4 + 104))(v6, enum case for SearchAdOpportunity.LifecycleEventType.placed(_:), v3);
  if (!*(v15 + 16) || (v16 = sub_6647E8(v6), (v17 & 1) == 0))
  {

    (*(v4 + 8))(v6, v3);
    v53 = 0;
    goto LABEL_18;
  }

  v18 = *(*(v15 + 56) + 8 * v16);
  v19 = *(v4 + 8);

  v19(v6, v3);

  v53 = v18;
  if (!v18)
  {
LABEL_18:
    v51 = 0u;
    v52[0] = 0u;
    goto LABEL_19;
  }

  sub_2062D4(0x6E6174736E496461, 0xEC00000064496563, &v51);
  if (!*(&v52[0] + 1))
  {
LABEL_19:
    sub_10A2C(&v51, &unk_93FBD0);
    goto LABEL_20;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    *(swift_allocObject() + 16) = xmmword_784250;
    sub_7685D0();
    sub_768540();
    sub_768540();
    sub_768540();
    v20 = sub_75E5D0();
    *(&v52[0] + 1) = &type metadata for String;
    *&v51 = v20;
    *(&v51 + 1) = v21;
    sub_7685C0();
    sub_10A2C(&v51, &unk_93FBD0);
    sub_768EA0();
  }

  if (!v53)
  {

    v51 = 0u;
    v52[0] = 0u;
    goto LABEL_19;
  }

  sub_2062D4(0x6E65644965676170, 0xEE00726569666974, &v51);
  if (!*(&v52[0] + 1))
  {

    goto LABEL_19;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_20;
  }

  if (!v53)
  {

    v51 = 0u;
    v52[0] = 0u;
    goto LABEL_19;
  }

  sub_2062D4(0x6C706D6554644169, 0xEF65707954657461, &v51);
  if (!*(&v52[0] + 1))
  {

    goto LABEL_19;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_20;
  }

  if (v53)
  {
    sub_2062D4(0xD000000000000010, 0x80000000007ED760, &v51);
    if (*(&v52[0] + 1))
    {
      swift_dynamicCast();
      goto LABEL_30;
    }
  }

  else
  {
    v51 = 0u;
    v52[0] = 0u;
  }

  sub_10A2C(&v51, &unk_93FBD0);
LABEL_30:
  if (v53)
  {
    sub_2062D4(0xD000000000000011, 0x80000000007ED780, &v51);
    if (*(&v52[0] + 1))
    {
      swift_dynamicCast();
      goto LABEL_35;
    }
  }

  else
  {
    v51 = 0u;
    v52[0] = 0u;
  }

  sub_10A2C(&v51, &unk_93FBD0);
LABEL_35:
  sub_7660C0();
  v23 = v53;
  if (!v53)
  {
LABEL_47:
    v35 = v39;
    sub_765F70();
    (*(v37 + 8))(v35, v38);
  }

  v24 = 1 << *(v53 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v53 + 64);
  v27 = (v24 + 63) >> 6;

  for (i = 0; v26; result = sub_10A2C(&v51, &qword_95DCD8))
  {
    v29 = i;
LABEL_44:
    v30 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v31 = v30 | (v29 << 6);
    v32 = (*(v23 + 48) + 16 * v31);
    v33 = *v32;
    v34 = v32[1];
    sub_132B4(*(v23 + 56) + 32 * v31, v52);
    *&v51 = v33;
    *(&v51 + 1) = v34;
    sub_132B4(v52, &v50);
    swift_bridgeObjectRetain_n();
    sub_7660E0();
  }

  while (1)
  {
    v29 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v29 >= v27)
    {

      goto LABEL_47;
    }

    v26 = *(v23 + 64 + 8 * v29);
    ++i;
    if (v26)
    {
      i = v29;
      goto LABEL_44;
    }
  }

  __break(1u);
  return result;
}